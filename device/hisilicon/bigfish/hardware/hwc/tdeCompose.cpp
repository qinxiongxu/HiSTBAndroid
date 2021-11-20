/*
 *                      CopyRight (C) iSoftStone Corp, Ltd.
 *
 *       Filename:  tdeCompose.c
 *    Description:   source file
 *
 *        Version:  1.0
 *        Created:  03/14/2015 05:20:07 PM
 *         Author:      [zhoutongwei@huawei.com]
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
#include"tdeCompose.h"
#include <cutils/properties.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <linux/sw_sync.h>

struct sync_merge_data {
 __s32 fd2;
 char name[32];
 __s32 fence;
};
#define SYNC_IOC_MAGIC '>'
#define SYNC_IOC_WAIT _IOW(SYNC_IOC_MAGIC, 0, __s32)
#define SYNC_IOC_MERGE _IOWR(SYNC_IOC_MAGIC, 1, struct sync_merge_data)
int sync_wait(int fd, int timeout)
{
    __s32 to = timeout;

    return ioctl(fd, SYNC_IOC_WAIT, &to);
}

int sync_merge(const char *name, int fd1, int fd2)
{
    struct sync_merge_data data;
    int err;

    data.fd2 = fd2;
    strlcpy(data.name, name, sizeof(data.name));

    err = ioctl(fd1, SYNC_IOC_MERGE, &data);
    if (err < 0)
        return err;

    return data.fence;
}

int sync_merge_fence(const char *name, int fd1, int fd2) {

    int mergeId = -1;
    // Merge the two fences.  In the case where one of the fences is not a
    // valid fence (e.g. NO_FENCE) we merge the one valid fence with itself so
    // that a new fence with the given name is created.
    if (fd1 > 0 && fd2 > 0) {
        mergeId = sync_merge(name, fd1, fd2);
    } else if (fd1 > 0) {
        mergeId = fd1;
    } else if (fd2 > 0) {
        mergeId = fd2;
    } else {
        return -1;
    }
    if (mergeId == -1) {
        ALOGE("HISI_HWC merge: sync_merge(\"%s\", %d, %d)", name, fd1, fd2);
        return mergeId;
    }
    return mergeId;
}


HIFB_COLOR_FMT_E tde2FbFmt(int format)
{
    switch(format) {
        case TDE2_COLOR_FMT_ABGR8888:
            return HIFB_FMT_ABGR8888;
        case TDE2_COLOR_FMT_ARGB8888:
            return HIFB_FMT_ARGB8888;
        case  TDE2_COLOR_FMT_RGB565:
            return HIFB_FMT_RGB565;
        default:
            ALOGE("getFbFormat fail!format[%d]\n",format);
            return (HIFB_COLOR_FMT_E)-1;
    }
}

TDE2_COLOR_FMT_E fb2TdeFmt(int format)
{
    switch(format) {
        case HIFB_FMT_ABGR8888:
            return TDE2_COLOR_FMT_ABGR8888;
        case HIFB_FMT_ARGB8888:
            return TDE2_COLOR_FMT_ARGB8888;
        case HIFB_FMT_RGB565:
            return TDE2_COLOR_FMT_RGB565;
        default:
            ALOGE("fb2TdeFmt fail!format[%d]\n",format);
            return (TDE2_COLOR_FMT_E)-1;
    }
}

static HIFB_COLOR_FMT_E  fbFormat = HIFB_FMT_ARGB8888;
void setFbFormat(HIFB_COLOR_FMT_E  format)
{
    fbFormat = format;
}

HIFB_COLOR_FMT_E  getFbFormat( )
{
    return fbFormat;
}

bool haveScale(hwc_layer_1_t*  layer)
{
    hwc_rect_t crop = layer->sourceCrop;
    hwc_rect_t display = layer->displayFrame;
    if((crop.right - crop.left) == (display.right - display.left) && (crop.bottom - crop.top) == (display.bottom - display.top)) {
        return false;
    }
    return true;
}

bool is32Bit(hwc_layer_1_t*  layer)
{
    struct private_handle_t* hnd = (struct private_handle_t*)layer->handle;
    if((hnd->format == HAL_PIXEL_FORMAT_RGBA_8888)||(hnd->format == HAL_PIXEL_FORMAT_BGRA_8888))
        return true;
    return false;
}

TDE2_COLOR_FMT_E getTdeFormat(int format)
{
    switch(format) {
        case HAL_PIXEL_FORMAT_RGBA_8888:
            return TDE2_COLOR_FMT_ABGR8888;
        case HAL_PIXEL_FORMAT_BGRA_8888:
            return TDE2_COLOR_FMT_ARGB8888;
        case HAL_PIXEL_FORMAT_RGB_565:
            return TDE2_COLOR_FMT_RGB565;
        case HAL_PIXEL_FORMAT_YCrCb_420_SP:
            return TDE2_COLOR_FMT_JPG_YCbCr420MBP;
#if PLATFORM_SDK_VERSION < 18
        case HAL_PIXEL_FORMAT_RGBA_5551:
        case HAL_PIXEL_FORMAT_RGBA_4444:
#endif
        default:
            printf("getBpp fail format is %d\n",format);
            return TDE2_COLOR_FMT_ABGR8888;
    }
}

bool supportByHardware(hwc_display_contents_1_t* list) {

    for (int i=0; i< list->numHwLayers; i++){
        hwc_layer_1_t* layer = &list->hwLayers[i];
        int layerType = getLayerType(layer);
        switch (layerType){
            case SKIP_LAYER:
                return false;
            case DIM_LAYER:
                return false;
            default:
                ;
        }
    }
    return true;
}

int getLayerType(hwc_layer_1_t*  layer)
{
    private_handle_t *hnd = (private_handle_t*)layer->handle;

    //transform flag
    if(layer->flags & HWC_SKIP_LAYER)
    {
        return SKIP_LAYER;
    }

    if(layer->flags & HWC_DIM_LAYER)
    {
        return DIM_LAYER;
    }

    if(layer->flags & HWC_VIDEO_LAYER)
    {
        return VIDEO_LAYER;
    }

    if(layer->compositionType == HWC_OVERLAY && hnd)
    {
        return VIDEO_LAYER;
    }

    if(layer->compositionType == HWC_FRAMEBUFFER && hnd != NULL)
    {
        return UI_LAYER;
    }

    return -1;
}

bool tde_fill_rect(TDE_HANDLE s32Handle, HI_U32 color, hwc_layer_1_t* layer, hwc_rect_t* pRect)
{
    HI_S32 s32Ret;
    TDE2_RECT_S dstRect;
    TDE2_COLOR_FMT_E dst_fmt;
    TDE2_SURFACE_S dstSurface;
    struct private_handle_t* pDstHandle = (struct private_handle_t *) (layer->handle);

    memset(&dstRect, 0, sizeof(TDE2_RECT_S));
    memset(&dst_fmt, 0, sizeof(TDE2_COLOR_FMT_E));
    memset(&dstSurface, 0, sizeof(TDE2_SURFACE_S));
    dst_fmt = fb2TdeFmt(getFbFormat());

    if(pRect)
    {
        dstRect.s32Xpos = pRect->left;
        dstRect.s32Ypos = pRect->top;
        dstRect.u32Width = pRect->right - pRect->left;
        dstRect.u32Height = pRect->bottom - pRect->top;
    } else {
        dstRect.s32Xpos = 0;
        dstRect.s32Ypos = 0;
        dstRect.u32Width = pDstHandle->width;
        dstRect.u32Height = pDstHandle->height;
    }

    if(!pDstHandle)
        return false;
    dstSurface.u32Width = pDstHandle->width;
    dstSurface.u32Height = pDstHandle->height;
    dstSurface.u32Stride = pDstHandle->stride * getBpp(pDstHandle->format);
    dstSurface.u32PhyAddr = pDstHandle->ion_phy_addr + layer->sourceCrop.left * getBpp(pDstHandle->format)\
                + layer->sourceCrop.top * dstSurface.u32Stride;
    dstSurface.enColorFmt = dst_fmt;
    dstSurface.bAlphaMax255 = HI_TRUE;
    //ALOGE("dstRect x[%d] y[%d] w[%d] h[%d]",dstRect.s32Xpos,dstRect.s32Ypos,dstRect.u32Width,dstRect.u32Height);
    //ALOGE("dstSurface w[%d] h[%d]",dstSurface.u32Width,dstSurface.u32Height);

    //fill  now
    s32Ret = HI_TDE2_QuickFill(s32Handle, &dstSurface, &dstRect, color);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HISI_HWC QuickFill Failed s32Ret: 0x%x!\n", s32Ret);
        HI_TDE2_CancelJob(s32Handle);
        return false;
    }

    return true;

}

bool tde_blit(TDE_HANDLE s32Handle, hwc_layer_1_t*  srcLayer, hwc_layer_1_t*  dstLayer)
{
    //init TDE ARGS
    HI_S32 s32Ret;
    TDE2_RECT_S srcRect;
    TDE2_RECT_S dstRect;
    TDE2_COLOR_FMT_E srcFmt;
    TDE2_COLOR_FMT_E dstFmt;
    TDE2_SURFACE_S srcSurface;
    TDE2_SURFACE_S dstSurface;
    TDE2_OPT_S stOpt;
    memset(&stOpt, 0, sizeof(TDE2_OPT_S));
    memset(&srcSurface, 0, sizeof(TDE2_SURFACE_S));
    memset(&dstSurface, 0, sizeof(TDE2_SURFACE_S));

    struct private_handle_t* srcHnd = (struct private_handle_t*)srcLayer->handle;
    if(srcHnd == NULL )
    {
        ALOGE("hnd is NULL %s %d",__func__,__LINE__);
        return false;
    }
    //init src
    hwc_rect_t srcCropRect  = srcLayer->sourceCrop;
    srcRect.s32Xpos = srcCropRect.left;
    srcRect.s32Ypos = srcCropRect.top;
    srcRect.u32Width = srcCropRect.right - srcCropRect.left;
    srcRect.u32Height = srcCropRect.bottom - srcCropRect.top;
    srcSurface.u32Width = srcHnd->width;
    srcSurface.u32Height = srcHnd->height;
    srcSurface.u32Stride = srcHnd->stride * getBpp(srcHnd->format);
    srcSurface.u32PhyAddr = srcHnd->ion_phy_addr;
    srcFmt = getTdeFormat(srcHnd->format);
    srcSurface.enColorFmt = srcFmt;
    srcSurface.bAlphaMax255 = HI_TRUE;

    if(srcFmt == TDE2_COLOR_FMT_JPG_YCbCr420MBP)
    {
        srcSurface.u32Stride = srcHnd->stride * 1;
        srcSurface.u32CbCrPhyAddr = srcSurface.u32PhyAddr+srcSurface.u32Stride*srcSurface.u32Height;
        srcSurface.u32CbCrStride  = srcSurface.u32Stride;
    }

    //init dst
    hwc_rect_t dstDisplayRect = srcLayer->displayFrame;
    struct private_handle_t* dstHnd = (struct private_handle_t*)dstLayer->handle;
    dstRect.s32Xpos = dstDisplayRect.left;
    dstRect.s32Ypos = dstDisplayRect.top;
    dstRect.u32Width = dstDisplayRect.right - dstDisplayRect.left;
    dstRect.u32Height = dstDisplayRect.bottom - dstDisplayRect.top;
    dstSurface.u32Width = dstHnd->width;
    dstSurface.u32Height = dstHnd->height;
    dstSurface.u32Stride = dstHnd->stride * getBpp(dstHnd->format);
    dstSurface.u32PhyAddr = dstHnd->ion_phy_addr + dstLayer->sourceCrop.left * getBpp(dstHnd->format)\
        + dstLayer->sourceCrop.top * dstSurface.u32Stride;
    dstSurface.enColorFmt = fb2TdeFmt(getFbFormat());
    dstSurface.bAlphaMax255 = HI_TRUE;

    //init opt
    stOpt.enClipMode = TDE2_CLIPMODE_NONE;
    stOpt.enDeflickerMode = TDE2_DEFLICKER_MODE_NONE;
    stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
    stOpt.bResize = HI_TRUE;
    stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
    if(srcLayer->opaque)
    {
        stOpt.enAluCmd = TDE2_ALUCMD_NONE;
        stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_GLOBALALPHA;
        stOpt.stBlendOpt.bPixelAlphaEnable = HI_FALSE;
    } else {
        stOpt.stBlendOpt.bPixelAlphaEnable = HI_TRUE;
    }

    stOpt.stBlendOpt.bGlobalAlphaEnable = HI_TRUE;
    stOpt.u8GlobalAlpha = srcLayer->planeAlpha;
    if(srcLayer->blending == HWC_BLENDING_PREMULT)
    {
        stOpt.stBlendOpt.bSrc1AlphaPremulti = HI_FALSE;
        stOpt.stBlendOpt.bSrc2AlphaPremulti = HI_FALSE;
        stOpt.stBlendOpt.eBlendCmd = TDE2_BLENDCMD_SRCOVER;
    } else {
        //HWC_BLENDING_COVERAGE
        stOpt.stBlendOpt.eBlendCmd = TDE2_BLENDCMD_NONE;
    }

    s32Ret = HI_TDE2_Bitblit(s32Handle,
            &dstSurface, &dstRect,
            &srcSurface, &srcRect,
            &dstSurface, &dstRect,
            &stOpt);

    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("Failed to HI_TDE2_Bitblit tde error code:0x%x!\n", s32Ret);
        HI_TDE2_CancelJob(s32Handle);
        return false;
    }

    return 0;
}

bool isFullScreen(hwc_layer_1_t*  backLayer, hwc_layer_1_t*  fbLayer)
{
    hwc_rect_t displayRect = backLayer->displayFrame;
    struct private_handle_t* fbLayerHnd = (struct private_handle_t*)fbLayer->handle;

    HI_U32 u32Width = displayRect.right - displayRect.left;
    HI_U32 u32Height = displayRect.bottom - displayRect.top;
    if(u32Width == fbLayerHnd->width && u32Height == fbLayerHnd->height)
    {
        return true;
    }
    return false;
}


/*copyBlend Mode*/
//HWC_BLENDING_NONE     = 0x0100,
//HWC_BLENDING_PREMULT  = 0x0105,
//HWC_BLENDING_COVERAGE = 0x0405
bool isCopyBlendMode(hwc_layer_1_t* srcLayer, int index)
{
    if(index==0 && srcLayer->opaque==false)
    {
        if(srcLayer->blending == HWC_BLENDING_NONE)
        {
            return true;
        }
        if(srcLayer->blending == HWC_BLENDING_PREMULT && srcLayer->planeAlpha==255)
        {
            return true;
        }
    }
    return false;
}

bool tde_quick_copy(TDE_HANDLE s32Handle, hwc_layer_1_t*  backLayer, hwc_layer_1_t*  fbLayer)
{
   if(haveScale(backLayer) || !is32Bit(backLayer))
    {
        //clearFb
        HI_U32 color = 0x00000000;
        tde_fill_rect(s32Handle, color, fbLayer);
        backLayer->blending = HWC_BLENDING_NONE;
        return tde_blit(s32Handle, backLayer, fbLayer);
    }

     if(!isFullScreen(backLayer,fbLayer))
     {
         //clearFb
         HI_U32 color = 0x00000000;
         tde_fill_rect(s32Handle, color, fbLayer);
     }

    HI_S32 s32Ret;

    //init TDE ARGS
    TDE2_RECT_S backRect;
    TDE2_RECT_S dstRect;
    TDE2_COLOR_FMT_E backFmt;
    TDE2_COLOR_FMT_E dstFmt;
    TDE2_SURFACE_S backSurface;
    TDE2_SURFACE_S dstSurface;

    hwc_rect_t cropRect  = backLayer->sourceCrop;
    struct private_handle_t* backLayerHnd = (struct private_handle_t*)backLayer->handle;
    backFmt = getTdeFormat(backLayerHnd->format);
    backRect.s32Xpos = cropRect.left;
    backRect.s32Ypos = cropRect.top;
    backRect.u32Width = cropRect.right - cropRect.left;
    backRect.u32Height = cropRect.bottom - cropRect.top;
    backSurface.u32Width = backLayerHnd->width;
    backSurface.u32Height = backLayerHnd->height;
    backSurface.u32Stride = backLayerHnd->stride * getBpp(backLayerHnd->format);
    backSurface.u32PhyAddr = backLayerHnd->ion_phy_addr;
    backSurface.enColorFmt = backFmt;
    backSurface.bAlphaMax255 = HI_TRUE;

    hwc_rect_t displayRect = backLayer->displayFrame;
    struct private_handle_t* fbLayerHnd = (struct private_handle_t*)fbLayer->handle;
    dstFmt = backFmt;
    dstRect.s32Xpos = displayRect.left;
    dstRect.s32Ypos = displayRect.top;
    dstRect.u32Width = displayRect.right - displayRect.left;
    dstRect.u32Height = displayRect.bottom - displayRect.top;
    dstSurface.u32Width = fbLayerHnd->width;
    dstSurface.u32Height = fbLayerHnd->height;
    dstSurface.u32Stride = fbLayerHnd->stride * getBpp(fbLayerHnd->format);
    dstSurface.u32PhyAddr = fbLayerHnd->ion_phy_addr;
    dstSurface.enColorFmt = backFmt;
    dstSurface.bAlphaMax255 = HI_TRUE;
    setFbFormat(tde2FbFmt(backFmt));

    s32Ret = HI_TDE2_QuickCopy(s32Handle,
            &backSurface, &backRect,
            &dstSurface, &dstRect);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("Failed to HI_Quick_Copy tde error code:0x%x!\n", s32Ret);
        HI_TDE2_CancelJob(s32Handle);
    }

#if 0
    property_get("persist.test.tde", property, "0");
    debug = atoi(property);
    if(debug ==1)
    {
        static int count = 1;
        void * dstAddr = fbLayerHnd->base;
        void * srcAddr = backLayerHnd->base;
        int dstLength = dstSurface.u32Height*dstSurface.u32Stride;
        int srcLength = backSurface.u32Height*backSurface.u32Stride;
        char dstString[256];
        char srcString[256];
        sprintf(dstString,"/sdcard/tde_dst%d.data",count);
        sprintf(srcString,"/sdcard/tde_src%d.data",count);
        int srcFd = open(srcString, O_RDWR|O_CREAT, 0600);
        int dstFd = open(dstString, O_RDWR|O_CREAT, 0600);
        if(-1 != srcFd && srcAddr != NULL)
        {
            write(srcFd,srcAddr, srcLength );
            ALOGE("HWCDebug write the  file!");
            close(srcFd);
        }

        if(-1 != dstFd && dstAddr != NULL)
        {
            write(dstFd, dstAddr, dstLength);
            ALOGE("HWCDebug write the  file!");
            close(dstFd);
        }
        count++;
    }
#endif

    return true;

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


int tde_compose(hwc_composer_device_1_t *dev,
        size_t numDisplays, hwc_display_contents_1_t** displays)
{
    struct hwc_context_t* ctx = (struct hwc_context_t*)dev;
    hwc_display_contents_1_t* list = displays[0];
    hwc_layer_1_t* pFBTarget = &list->hwLayers[list->numHwLayers-1];
    TDE_HANDLE s32Handle = 0;
    sync_wait(pFBTarget->acquireFenceFd, 1000);

    s32Handle = HI_TDE_BeginJob();
    if (HI_ERR_TDE_INVALID_HANDLE == s32Handle)
    {
        ALOGE("HISI_HWC Fail to create Job.ERROR::%d\n",s32Handle);
        return -1;
    }


    if(0 == list->numHwLayers-1)
    {
        HI_U32 color = 0x00000000;
        tde_fill_rect(s32Handle, color, pFBTarget, &pFBTarget->displayFrame);
    }

    for (int i=0; i< list->numHwLayers-1; i++){
        private_handle_t *hnd = (private_handle_t*)list->hwLayers[i].handle;
        hwc_layer_1_t* layer = &list->hwLayers[i];
        int layerType = getLayerType(layer);
        switch (layerType){
            case VIDEO_LAYER:
                {
                    //video is visib
                    HI_U32 color = 0x00000000;
                    if(bVisible(&layer->visibleRegionScreen))
                        tde_fill_rect(s32Handle, color, pFBTarget, &layer->displayFrame);
                    break;
                }
            case DIM_LAYER:
                {
                    //not support
                    // HI_U32 color = 0x00000000;
                    //tde_fill_rect(color, layer);
                    break;
                }
            case UI_LAYER:
                if (isCopyBlendMode(layer, i)) {
                    tde_quick_copy(s32Handle, layer, pFBTarget);
                } else {
                    tde_blit(s32Handle, layer, pFBTarget);
                }
                break;
            default:
                break;
        }
    }

    char async_compose[PROPERTY_VALUE_MAX] = {0};
    property_get("service.graphic.async.compose", async_compose, "false");

    if (0 == strcmp(async_compose, "true")) {
        int tdeAcquireFenceID = HI_TDE2_EndJobEx(s32Handle, HI_FALSE, HI_FALSE, 200);
        if (tdeAcquireFenceID < 0)
        {
            ALOGE("HISI_HWC Fail to generate fenceID 0x%x\n",tdeAcquireFenceID);
        }
        else
        {
            for (int i=0; i< list->numHwLayers-1; i++){
                private_handle_t *hnd = (private_handle_t*)list->hwLayers[i].handle;
                hwc_layer_1_t* layer = &list->hwLayers[i];

                layer->releaseFenceFd = dup(tdeAcquireFenceID);
            }
        }

        return tdeAcquireFenceID;
    } else {
        int s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 200);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("Fail to HI_TDE2_EndJob. tde error code 0x%x\n",s32Ret);
        }
        HI_TDE2_WaitAllDone();
        return -1;
    }

    return 0;
}
/********************************** END **********************************************/
