

#include "gralloc_hisilicon_adp.h"
#include "framebuffer_device.h"

#if GRALLOC_ARM_DMA_BUF_MODULE
#include <linux/ion.h>
#include <ion/ion.h>
#endif

#define GRALLOC_IGNORE(x) (void)x

#ifdef OVERLAY
static struct overlay_device_t *mOdev = NULL;
#endif

// numbers of buffers for page flipping
#define NUM_BUFFERS NUM_FB_BUFFERS

int pri_hisi_ion_get_heapid(alloc_device_t *dev, size_t size, int usage, buffer_handle_t *pHandle)
{
	GRALLOC_IGNORE(dev);
	GRALLOC_IGNORE(size);
	GRALLOC_IGNORE(pHandle);

#ifdef GRALLOC_USE_CMA
	return ION_HEAP(ION_HIS_ID_DDR);
#else
	return (usage & GRALLOC_USAGE_PHYSICAL_MEM) ? ION_HEAP(ION_HIS_ID_DDR): ION_HEAP_SYSTEM_MASK;
#endif

}

int pri_hisi_device_layerbuffer_alloc(alloc_device_t *dev, size_t size, int usage, buffer_handle_t *pHandle, \
								private_module_t *m, ion_user_handle_t ion_hnd, private_handle_t *hnd)
{
	GRALLOC_IGNORE(dev);
	GRALLOC_IGNORE(size);
	GRALLOC_IGNORE(pHandle);

	unsigned long ion_phy_addr = (unsigned long)(-1);
	size_t len;

	/*(1)ion_hnd physical address*/
#ifdef GRALLOC_USE_CMA
	ion_phys(m->ion_client, ion_hnd, &ion_phy_addr, &len);
#else
	if(usage & GRALLOC_USAGE_PHYSICAL_MEM)
	{
		ion_phys(m->ion_client, ion_hnd, &ion_phy_addr, &len);
	}
#endif

	hnd->ion_phy_addr = ion_phy_addr;

	/*(2)ion_metadata_hnd physical address*/
#if GRALLOC_HISI_METADATA_BUF
    ion_user_handle_t ion_metadata_hnd = ION_INVALID_HANDLE;
    unsigned long ion_metadata_phy_addr = (unsigned long)(-1);
    size_t ion_metadata_size = 0;
    int ion_metadata_fd = -1;
	int ret = 0;

    if (usage & GRALLOC_USAGE_HISI_VDP)
    {
        ret = ion_alloc(m->ion_client, GRALLOC_HISI_METADATA_BUF_SIZE, 0, ION_HEAP(ION_HIS_ID_DDR), 0, &ion_metadata_hnd );
        if (ret != 0)
        {
            AERR("Failed to alloc metadata buffer from ion_client:%d", m->ion_client);
            return -1;
        }

        ret = ion_share(m->ion_client, ion_metadata_hnd, &ion_metadata_fd);
        if (ret != 0)
        {
            AERR("Failed to share metadata buffer from ion_client:%d", m->ion_client);
            ion_free(m->ion_client, ion_metadata_hnd);
            return -1;
        }
        ion_phys(m->ion_client, ion_metadata_hnd, &ion_metadata_phy_addr, &ion_metadata_size);
	}
	else
	{
        ion_metadata_fd = dup(0);//caution:makesure to be a valid file descriptor
    }

    hnd->metadata_fd = ion_metadata_fd;
    hnd->ion_metadata_hnd = ion_metadata_hnd;
    hnd->ion_metadata_phy_addr = ion_metadata_phy_addr;
    hnd->ion_metadata_size = ion_metadata_size;

#endif

	return 0;
}

int pri_hisi_device_framebuffer_alloc(alloc_device_t *dev, size_t size, int usage, buffer_handle_t *pHandle, \
										private_handle_t *hnd, void *vaddr, private_module_t *m)
{
	GRALLOC_IGNORE(dev);
	GRALLOC_IGNORE(size);
	GRALLOC_IGNORE(usage);
	GRALLOC_IGNORE(pHandle);

	hnd->ion_phy_addr =(unsigned long) vaddr - (unsigned long)(m->framebuffer->base) + (unsigned long)m->finfo.smem_start;

	return 0;
}

int pri_hisi_device_free(alloc_device_t *dev, buffer_handle_t handle, private_handle_t const *hnd)
{
	GRALLOC_IGNORE(dev);
	GRALLOC_IGNORE(handle);
	GRALLOC_IGNORE(hnd);

#ifdef OVERLAY
	if (hnd->usage & GRALLOC_USAGE_HISI_VDP)
	{
	    ALOGD("gralloc free video buffer:%#lx", hnd->ion_phy_addr);
	    if (mOdev->checkBuffer(mOdev, handle) > 0) {
	        ALOGD("overlay take care of buffer %#lx, do not free at here", hnd->ion_phy_addr);
	        return -1;
	    }
	}
#endif

#if GRALLOC_HISI_METADATA_BUF
	private_module_t *m = reinterpret_cast<private_module_t *>(dev->common.module);

	if(hnd->flags & private_handle_t::PRIV_FLAGS_USES_ION)
	{
	    if (hnd->ion_metadata_hnd != ION_INVALID_HANDLE)
	    {
	        if (0 != ion_free(m->ion_client, hnd->ion_metadata_hnd))
	        {
	            AERR("Failed to free metadata buffer( ion_client: %d ion_hnd: %p )", m->ion_client, hnd->ion_metadata_hnd);
	        }
	    }
	    close(hnd->metadata_fd);
	}
#endif

	return 0;
}

int pri_hisi_device_open(hw_module_t const *module, const char *name, hw_device_t **device, alloc_device_t *dev)
{
	GRALLOC_IGNORE(module);
	GRALLOC_IGNORE(name);
	GRALLOC_IGNORE(device);
	GRALLOC_IGNORE(dev);

#ifdef OVERLAY
	mOdev = overlay_singleton();
	overlay_set_alloc_dev(dev);
#endif

	return 0;
}

int pri_hisi_device_close(struct hw_device_t *device)
{
	GRALLOC_IGNORE(device);

	return 0;
}

int pri_hisi_init_framebuffer(struct private_module_t *module, struct fb_var_screeninfo *info)
{
	GRALLOC_IGNORE(module);

	char property[PROPERTY_VALUE_MAX];
    char mem[PROPERTY_VALUE_MAX];
	/*low mem configuration 720P 2 FB buffers*/
	property_get("ro.config.low_ram", property, "");
    property_get("ro.product.mem.size", mem, "unknown");
    if ((strcmp(property, "true") == 0) && ((strcmp(mem, "512m") == 0) || (strcmp(mem, "768m") == 0)))
    {
        if (info->xres != RESOLUTION_FB_720P_WIDTH && info->yres != RESOLUTION_FB_720P_HEIGHT)
        {
			info->xres = RESOLUTION_FB_720P_WIDTH;
			info->yres = RESOLUTION_FB_720P_HEIGHT;
        }
        info->yres_virtual = info->yres * (NUM_BUFFERS - 1);
    }

	return 0;
}

int pri_hisi_set_framebuffer_dpi(struct private_module_t *module, struct fb_var_screeninfo *info)
{
	GRALLOC_IGNORE(module);

    char default_dpi[PROPERTY_VALUE_MAX];

	if(property_get("persist.sys.screen_density", default_dpi, NULL) <= 0)
	{
		property_get("ro.sf.lcd_density", default_dpi, "240");
	}

	int value_dpi = atoi(default_dpi);
    if(value_dpi)
    {
        info->width  = ((info->xres * 25.4f) / value_dpi + 0.5f);
        info->height = ((info->yres * 25.4f) / value_dpi + 0.5f);
    }
    else
    {
        info->width  = ((info->xres * 25.4f) / 240.0f + 0.5f);
        info->height = ((info->yres * 25.4f) / 240.0f + 0.5f);
    }

	return 0;
}

int pri_hisi_framebuffer_device_open(hw_module_t const *module, const char *name, hw_device_t **device)
{
	GRALLOC_IGNORE(name);
	GRALLOC_IGNORE(device);

	return 0;
}







