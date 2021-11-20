/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <fcntl.h>
#include <errno.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <cutils/log.h>
#include <cutils/atomic.h>
#include <utils/Errors.h>
#include <linux/fb.h>

#include <hardware/gralloc.h>
#include <hardware/hwcomposer.h>
#include <hardware/hwcomposer_defs.h>
#include <EGL/egl.h>
#include "gralloc_priv.h"
#include "HwcDebug.h"
#include "hifb.h"
#include "overlay.h"
#include "hi_tde_type.h"
#include "hi_tde_api.h"
#include "tdeCompose.h"
#include <cutils/properties.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <utils/Timers.h>


/*****************************************************************************/
#define OVERLAY 1
#define OV_TAG "Overlay"
static bool mTdeCompose = false;

struct hwc_context_t {
    hwc_composer_device_1_t device;
    /* our private state goes below here */
    framebuffer_device_t*  fb_device;
};

static int hwc_device_open(const struct hw_module_t* module, const char* name,
        struct hw_device_t** device);

static struct hw_module_methods_t hwc_module_methods = {
    open: hwc_device_open
};

hwc_module_t HAL_MODULE_INFO_SYM = {
    common: {
        tag: HARDWARE_MODULE_TAG,
        version_major: 1,
        version_minor: 2,
        id: HWC_HARDWARE_MODULE_ID,
        name: "Sample hwcomposer module",
        author: "The Android Open Source Project",
        methods: &hwc_module_methods,
        dso: NULL,
        reserved: {0},
            }
};

int getBpp(int format)
{
    switch(format) {
        case HAL_PIXEL_FORMAT_RGBA_8888:
        case HAL_PIXEL_FORMAT_RGBX_8888:
        case HAL_PIXEL_FORMAT_BGRA_8888:
            return 4;
        case HAL_PIXEL_FORMAT_RGB_888:
            return 3;
        case HAL_PIXEL_FORMAT_RGB_565:
#if PLATFORM_SDK_VERSION < 18
        case HAL_PIXEL_FORMAT_RGBA_5551:
        case HAL_PIXEL_FORMAT_RGBA_4444:
#endif
            return 2;
        default:
            printf("getBpp fail format is %d\n",format);
            return -1;
    }
}

static struct overlay_device_t *mOdev = NULL;
int loadOverLayModule()
{

    mOdev = overlay_singleton();
    return 0;
}

static int bVisible(hwc_region_t* region)
{
    int i;
    int visible = 0;
    for (i = 0; i < region->numRects; i++) {
        visible |= region->rects[i].bottom || region->rects[i].left || region->rects[i].right || region->rects[i].top;
    }
    return visible;
}

static void dump_layer(hwc_layer_1_t const* l, int i) {
    struct private_handle_t* pHandle = (struct private_handle_t *) (l->handle);
#ifdef HWC_DEBUG
    int scale = (((l->displayFrame.right - l->displayFrame.left) == (l->sourceCrop.right - l->sourceCrop.left)) &&
            (((l->displayFrame.bottom - l->displayFrame.top) == (l->sourceCrop.bottom - l->sourceCrop.top)))) ? \
        0 : 1;

    ALOGD("\ttype=%d, flags=%08x, handle=%p, scale=%d, tr=%02x, blend=%04x, alpha=%d, fence=%d, release fence:%d, {%d,%d,%d,%d}, {%d,%d,%d,%d}",
            l->compositionType, l->flags, l->handle, scale, l->transform, l->blending, l->planeAlpha,
            l->acquireFenceFd, l->releaseFenceFd,
            l->sourceCrop.left,
            l->sourceCrop.top,
            l->sourceCrop.right,
            l->sourceCrop.bottom,
            l->displayFrame.left,
            l->displayFrame.top,
            l->displayFrame.right,
            l->displayFrame.bottom);
    if (pHandle){
        int bpp = getBpp(pHandle->format);
        //#define	DUMP_LAYE_IMAGE
#ifdef DUMP_LAYE_IMAGE
#define TEST_DIR   "/data/hwctest/"
        char outputimgpatch[256];

        snprintf(outputimgpatch, sizeof(outputimgpatch), "%s/layer%d_%x_[%d,%d,%d,%d].bmp",
                TEST_DIR, i, pHandle->ion_phy_addr,
                l->sourceCrop.left,l->sourceCrop.top,l->sourceCrop.right,l->sourceCrop.bottom);
        if (0 == access(outputimgpatch, 0))return;
        _WriteBitmap(outputimgpatch, (void*)pHandle->base,  pHandle->width, pHandle->height, pHandle->stride*bpp, format2dumpformat(pHandle->format));
#endif
        ALOGD("Handle:base=0x%x,ion_phy_addr=0x%x,offset=%d,fmt=%d,stride=%d,w=%d,h=%d,usage:%#x\n",
                pHandle->base,pHandle->ion_phy_addr,pHandle->offset,pHandle->format,
                pHandle->stride*bpp,pHandle->width, pHandle->height, pHandle->usage);
    }
#endif
}

static int hwc_prepare(hwc_composer_device_1_t *dev,
        size_t numDisplays, hwc_display_contents_1_t** displays) {

    int ovNum = 0;
    overlay_layer_t layers[OVERLAY_MAX_CHANNEL];
    if (displays /*&& (displays[0]->flags & HWC_GEOMETRY_CHANGED)*/) {
#ifdef HWC_DEBUG
        ALOGD("================================================");
        ALOGD("Layer Number:%d",displays[0]->numHwLayers);
#endif
        memset(layers, 0, sizeof(layers));

        for (size_t i=0 ; i<displays[0]->numHwLayers - 1; i++) {
            private_handle_t *hnd  = (private_handle_t*)displays[0]->hwLayers[i].handle;

            if (ovNum < OVERLAY_MAX_CHANNEL &&
                    hnd && (hnd->usage & GRALLOC_USAGE_HISI_VDP)) {
                displays[0]->hwLayers[i].compositionType = HWC_OVERLAY;
                displays[0]->hwLayers[i].hints |= HWC_HINT_CLEAR_FB;
                layers[ovNum].handle = hnd;
                layers[ovNum].visible = bVisible(&displays[0]->hwLayers[i].visibleRegionScreen);
                ovNum++;
            } else {
                displays[0]->hwLayers[i].compositionType = HWC_FRAMEBUFFER;
            }
        }

        if (mOdev->prepareOverlayLayers(mOdev, ovNum, layers)) {
            ALOG(LOG_ERROR, OV_TAG, "prepare overlay buffers failed");
        }
#ifdef HWC_DEBUG
        ALOGD("================================================");
#endif
    }
    return 0;
}

static int hwc_set(hwc_composer_device_1_t *dev,
        size_t numDisplays, hwc_display_contents_1_t** displays)
{
    /* 增加TDE打印控制 */
    bool mTdeDebug   = false;
    char tdeDebug[PROPERTY_VALUE_MAX];
    //add by hisi
    property_get("persist.sys.tde.debug", tdeDebug, "false");
    if (0 == strcmp(tdeDebug, "true")) {
        mTdeDebug = true;
    } else {
        mTdeDebug = false;
    }

    struct hwc_context_t* ctx = (struct hwc_context_t*)dev;
    private_module_t *m = (private_module_t*)ctx->fb_device->common.module;
    HIFB_HWC_LAYERINFO_S LayerInfos;
    int tdeAcquireFenceID = -1;
    hwc_display_contents_1_t* list = displays[0];

    char async_compose[PROPERTY_VALUE_MAX] = {0};
    int merged_fd = -1;
    property_get("service.graphic.async.compose", async_compose, "false");
    int64_t enterTime = 0;
    if (mTdeDebug) {
        enterTime = systemTime(SYSTEM_TIME_MONOTONIC) / 1000ll;
    }

#ifdef OVERLAY
    for (int i=0; i< list->numHwLayers; i++){
        private_handle_t *hnd = (private_handle_t*)list->hwLayers[i].handle;
        if(list->hwLayers[i].compositionType == HWC_OVERLAY && hnd)
        {
            overlay_rect_t sourceCrop;
            sourceCrop.left = list->hwLayers[i].sourceCrop.left;
            sourceCrop.right= list->hwLayers[i].sourceCrop.right;
            sourceCrop.top = list->hwLayers[i].sourceCrop.top;
            sourceCrop.bottom = list->hwLayers[i].sourceCrop.bottom;
            mOdev->setCrop(mOdev, (buffer_handle_t)hnd, sourceCrop);

            overlay_rect_t displayFrame;
            displayFrame.left = list->hwLayers[i].displayFrame.left;
            displayFrame.right= list->hwLayers[i].displayFrame.right;
            displayFrame.top = list->hwLayers[i].displayFrame.top;
            displayFrame.bottom = list->hwLayers[i].displayFrame.bottom;
            mOdev->setPosition(mOdev, (buffer_handle_t)hnd, displayFrame);

            int fence_fd = -1;
            mOdev->queueBuffer(mOdev, (buffer_handle_t)hnd, &fence_fd);
            if (fence_fd != -1) {
                list->hwLayers[i].releaseFenceFd = fence_fd;
            }
        }
    }
#endif

    if (displays && m){

        hwc_layer_1_t* TargetFramebuffer = /*(displays[0]->numHwLayers == 2) ? \
                                             &displays[0]->hwLayers[0] : \*/
            &displays[0]->hwLayers[displays[0]->numHwLayers - 1];
        struct private_handle_t* pHandle = (struct private_handle_t *) (TargetFramebuffer->handle);
        if (pHandle && TargetFramebuffer){
            LayerInfos.bPreMul = (TargetFramebuffer->blending == HWC_BLENDING_PREMULT) ? HI_TRUE : HI_FALSE;
            LayerInfos.u32Alpha = TargetFramebuffer->planeAlpha;
            int bpp = getBpp(pHandle->format);
            LayerInfos.u32Stride = pHandle->stride * bpp;
            LayerInfos.u32LayerAddr = pHandle->ion_phy_addr + TargetFramebuffer->sourceCrop.left * bpp \
                                      + TargetFramebuffer->sourceCrop.top * LayerInfos.u32Stride;
            static int lastFbAddr = 0;
            if(lastFbAddr == LayerInfos.u32LayerAddr)   {
                //ALOGE("not use tdeCompose update!");
            }else {
                if(mTdeCompose && supportByHardware(list)) {
                    //ALOGE("TDE finishi the compose!");
                    tdeAcquireFenceID = tde_compose(dev,numDisplays,displays);
                    //tde_compose(dev,numDisplays,displays);
                } else {
                    setFbFormat(HIFB_FMT_ARGB8888);
                    //ALOGE("GPUfinishi the compose!");
                }
            }
            lastFbAddr = LayerInfos.u32LayerAddr;
            //ALOGD("LAYER ADDR:%p,stride:%d,bpp:%d,",LayerInfos.u32LayerAddr,pHandle->stride,bpp);
            LayerInfos.eFmt = getFbFormat();
            LayerInfos.stInRect.x = TargetFramebuffer->displayFrame.left;
            LayerInfos.stInRect.y = TargetFramebuffer->displayFrame.top;
            LayerInfos.stInRect.w = pHandle->width;
            LayerInfos.stInRect.h = pHandle->height;

            if (0 == strcmp(async_compose, "true")) {
                /* merge fb acquirefence and tdefence */
                merged_fd = sync_merge_fence("HISI_HWC", TargetFramebuffer->acquireFenceFd, tdeAcquireFenceID);
            } else {
                merged_fd = TargetFramebuffer->acquireFenceFd;
                TargetFramebuffer->acquireFenceFd = -1;
            }

            LayerInfos.s32AcquireFenceFd = merged_fd;

            if (ioctl(m->framebuffer->fd, FBIO_HWC_REFRESH, &LayerInfos) != 0)
            {
                ALOGE("fail to play UI");
            }

            if (merged_fd != -1)
            {
                close(merged_fd);
                merged_fd = -1;
            }

            if (-1 != TargetFramebuffer->acquireFenceFd)
            {
                close(TargetFramebuffer->acquireFenceFd);
                TargetFramebuffer->acquireFenceFd = -1;
            }

            if (-1 != tdeAcquireFenceID)
            {
                close(tdeAcquireFenceID);
                tdeAcquireFenceID = -1;
            }

            TargetFramebuffer->acquireFenceFd = -1;

            if (LayerInfos.s32ReleaseFenceFd != -1){
                TargetFramebuffer->releaseFenceFd = dup(LayerInfos.s32ReleaseFenceFd);
                close(LayerInfos.s32ReleaseFenceFd);
            }
        }
    }
    if (mTdeDebug) {
        int64_t exitTime = systemTime(SYSTEM_TIME_MONOTONIC) / 1000ll;
        ALOGE("HISI_HWC num = %d ion_phy_addr=0x%x async=%s",list->numHwLayers, LayerInfos.u32LayerAddr, async_compose);
        ALOGI("HISI_HWC time escape:%lld", exitTime - enterTime);
    }

    return 0;
}

static int hwc_blank(struct hwc_composer_device_1* dev, int disp, int blank)
{
	return 0;
}

static int hwc_event_control(struct hwc_composer_device_1* dev, int disp, int event, int enabled)
{
	return 0;
}

static int hwc_get_display_configs(struct hwc_composer_device_1* dev, int disp,
		   uint32_t* configs, size_t* numConfigs)
{
    if (*numConfigs < 1)
    {
        return -1;
    }

    *configs = 0;
    *numConfigs = 1;

    return 0;
}

static int hwc_get_display_attributes(struct hwc_composer_device_1* dev, int disp,
		  uint32_t config, const uint32_t* attributes, int32_t* values)
{
	int i = 0;
	struct hwc_context_t* ctx = (struct hwc_context_t*)dev;

	if (disp > HWC_DISPLAY_PRIMARY)
	{
		return -1;
	}

		if (ctx->fb_device != NULL) {



	    for (i = 0; attributes[i] != HWC_DISPLAY_NO_ATTRIBUTE; i++) {
	        switch(attributes[i]) {
	        case HWC_DISPLAY_VSYNC_PERIOD:
	            values[i] = 1e9 / ctx->fb_device->fps;
		if (values[i] == 0){
		ALOGW("getting VSYNC period from fb HAL: %d", values[i]);
		values[i] = 1e9 / 60.0;
		}
	            break;

	        case HWC_DISPLAY_WIDTH:
	            values[i] = ctx->fb_device->width;
	            break;

	        case HWC_DISPLAY_HEIGHT:
	            values[i] = ctx->fb_device->height;
	            break;

	        case HWC_DISPLAY_DPI_X:
	            values[i] = ctx->fb_device->xdpi * 1000;
	            break;

	        case HWC_DISPLAY_DPI_Y:
	            values[i] = ctx->fb_device->ydpi * 1000;
	            break;

	        default:
	            ALOGE("Unknown display attribute %u", attributes[i]);
	            continue;
	        }
		}
	}
    return 0;
}

static int hwc_device_close(struct hw_device_t *dev)
{
    struct hwc_context_t* ctx = (struct hwc_context_t*)dev;
    if (ctx) {
	    if (ctx->fb_device) {
		   framebuffer_close(ctx->fb_device);
		}
        free(ctx);
    }
    HI_TDE2_Close();
    return 0;
}
static int loadFbHalModule(hwc_context_t* dev)
{
    hw_module_t const* module;
    int err = hw_get_module(GRALLOC_HARDWARE_MODULE_ID, &module);
    if (err != 0) {
        ALOGE("%s module not found", GRALLOC_HARDWARE_MODULE_ID);
        return err;
    }
    return framebuffer_open(module, &dev->fb_device);
}

/*****************************************************************************/

static int hwc_device_open(const struct hw_module_t* module, const char* name,
        struct hw_device_t** device)
{
#define INIT_ZERO(obj) (memset(&(obj),0,sizeof((obj))))
    int status = -EINVAL;
    if (!strcmp(name, HWC_HARDWARE_COMPOSER)) {
        struct hwc_context_t *dev;
        dev = (hwc_context_t*)malloc(sizeof(hwc_context_t));

#if 0
		dev->fd = open("/dev/graphics/fb0", O_RDWR, 0);
		if (dev->fd < 0)
		{
		ALOGE("open fb device fail");
		return -1;
		}
#endif

        /* initialize our state here */
        memset(dev, 0, sizeof(*dev));
		INIT_ZERO(dev->device.common.reserved);
		int fberr =  loadFbHalModule(dev);
		if (dev->fb_device == NULL){
	        ALOGE("ERROR: failed to open framebuffer (%s), aborting",
	                strerror(-fberr));
		abort();
		}
        /* initialize the procs */
        dev->device.common.tag = HARDWARE_DEVICE_TAG;
        dev->device.common.version = HWC_DEVICE_API_VERSION_1_1;
        dev->device.common.module = const_cast<hw_module_t*>(module);
        dev->device.common.close = hwc_device_close;

        dev->device.prepare = hwc_prepare;
        dev->device.set = hwc_set;
		dev->device.blank = hwc_blank;
		dev->device.eventControl = hwc_event_control;
		dev->device.getDisplayConfigs = hwc_get_display_configs;
		dev->device.getDisplayAttributes = hwc_get_display_attributes;


        *device = &dev->device.common;
        status = 0;
        loadOverLayModule();
        HI_TDE2_Open();
    }

    char value[PROPERTY_VALUE_MAX];
    //add by hisi
    property_get("ro.config.tde_compose", value, "true");
    if (0 == strcmp(value, "true")) {
        mTdeCompose = true;
    } else {
        mTdeCompose = false;
    }

    return status;
}
