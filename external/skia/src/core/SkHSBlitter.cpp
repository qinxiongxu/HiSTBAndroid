#ifdef SKIA_ACCELERATION_ENABLE
/*
 * SkHSBlitter.cpp
*/
#include "hi_tde_api.h"
#include "SkXfermode.h"
#include "SkBitmapProcShader.h"

#include "cutils/log.h"
#include "SkColor.h"

#include <sys/mman.h>
#include <linux/ion.h>
#include <ion/ion.h>

#include <ui/GraphicBuffer.h>
#include "gralloc_priv.h"
#include "cutils/properties.h"
#include <sys/system_properties.h>

#include "SkHSBlitter.h"

static inline TDE2_COLOR_FMT_E ConfigToFmt(const SkBitmap& bmp)
{
    TDE2_COLOR_FMT_E dst_fmt = TDE2_COLOR_FMT_BUTT;

    SkBitmap::Config config = bmp.getConfig();

    switch (config) {
    case SkBitmap::kRGB_565_Config:
        dst_fmt = TDE2_COLOR_FMT_RGB565;
        break;
    case SkBitmap::kARGB_8888_Config:
        dst_fmt = TDE2_COLOR_FMT_ABGR8888;
        break;
    case SkBitmap::kIndex8_Config:
        dst_fmt = TDE2_COLOR_FMT_CLUT8;
        break;
    default:
        SkASSERT(0);
        SkDebugf("should not reach here fomart:%d",config);
    }

    return dst_fmt;
}
class SkHSBlitter* SkHSBlitter::getInstance()
{
    static SkHSBlitter *instance = NULL;
    if (instance == NULL)
    {
        instance = new SkHSBlitter();
    }
    return instance;
}
void SkHSBlitter::setSurfaceAddress(void * va, int phy)
{
    surfaceVirtualAddr = va;
    surfacePhyAddr = phy;
}
void* SkHSBlitter::getSurfaceVirtualAddress()
{
    return surfaceVirtualAddr;
}
unsigned int SkHSBlitter::getSurfacePhysicalAddress()
{
    return surfacePhyAddr;
}
static bool blitRect(SkBitmap fDevice, unsigned int dstPhy, SkBitmap fBitmap, unsigned int srcPhy, SkIRect ir, SkIRect fClip)
{
    TDE2_RECT_S dstRect;
    TDE2_RECT_S srcRect;
    TDE2_COLOR_FMT_E dst_fmt;
    TDE2_COLOR_FMT_E src_fmt;
    TDE2_SURFACE_S srcSurface;
    TDE2_SURFACE_S dstSurface;
    HI_S32 s32Ret;
    TDE_HANDLE s32Handle;
    static int tdeflg = 0;

    TDE2_OPT_S stOpt;
    memset(&stOpt, 0, sizeof(TDE2_OPT_S));

    memset(&dstRect, 0, sizeof(TDE2_RECT_S));
    memset(&srcRect, 0, sizeof(TDE2_RECT_S));
    memset(&dst_fmt, 0, sizeof(TDE2_COLOR_FMT_E));
    memset(&src_fmt, 0, sizeof(TDE2_COLOR_FMT_E));
    memset(&srcSurface, 0, sizeof(TDE2_SURFACE_S));
    memset(&dstSurface, 0, sizeof(TDE2_SURFACE_S));

    SkIRect Rs = SkIRect::MakeXYWH(0, 0, fDevice.width(), fDevice.height());
    SkIRect R0 = ir;
    SkIRect R1 = ir;
    R1.intersect(Rs);
    R1.intersect(fClip);
    SkIRect Rr = SkIRect::MakeXYWH(R1.left()-R0.left(), R1.top()-R0.top(),
	                                       R1.width(), R1.height());
    SkMatrix m;
    SkRect SR0 = SkRect::MakeXYWH(0,0,ir.width(),ir.height());
    SkRect SR1 = SkRect::Make(Rr);
    m.setRectToRect(SR0, SR1, SkMatrix::kFill_ScaleToFit);
    SkRect RBitmap = SkRect::MakeXYWH(0,0,fBitmap.width(), fBitmap.height());
    SkRect RResult;
    m.mapRect(&RResult, RBitmap);

    srcRect.s32Xpos = SkScalarRound(RResult.left());
    srcRect.s32Ypos = SkScalarRound(RResult.top());
    srcRect.u32Width = SkScalarRound(RResult.width());
    srcRect.u32Height = SkScalarRound(RResult.height());

    dstRect.s32Xpos = SkScalarRound(R1.left());
    dstRect.s32Ypos = SkScalarRound(R1.top());
    dstRect.u32Width = SkScalarRound(R1.width());
    dstRect.u32Height = SkScalarRound(R1.height());

    dst_fmt = ConfigToFmt(fDevice);
    src_fmt = ConfigToFmt(fBitmap);

    dstSurface.u32Height = fDevice.height();
    dstSurface.u32Width = fDevice.width();
    dstSurface.u32Stride = fDevice.rowBytes();
    dstSurface.u32PhyAddr = dstPhy;
    dstSurface.enColorFmt = dst_fmt;
    dstSurface.bAlphaMax255 = HI_TRUE;

    srcSurface.u32Height = fBitmap.height();
    srcSurface.u32Width = fBitmap.width();
    srcSurface.u32Stride = fBitmap.rowBytes();
    srcSurface.u32PhyAddr = srcPhy;
    srcSurface.enColorFmt = src_fmt;
    srcSurface.bAlphaMax255 = HI_TRUE;

    stOpt.u8GlobalAlpha = 255;
    stOpt.enDeflickerMode = TDE2_DEFLICKER_MODE_NONE;
    stOpt.enOutAlphaFrom = TDE2_OUTALPHA_FROM_NORM;
    stOpt.bResize = HI_TRUE;
    stOpt.enAluCmd = TDE2_ALUCMD_BLEND;
    stOpt.stBlendOpt.bGlobalAlphaEnable = HI_TRUE;
    stOpt.stBlendOpt.bPixelAlphaEnable = fBitmap.isOpaque()? HI_FALSE : HI_TRUE;

    stOpt.stBlendOpt.eBlendCmd = TDE2_BLENDCMD_SRCOVER;
    stOpt.enClipMode = TDE2_CLIPMODE_NONE;

    stOpt.stClipRect.s32Xpos = SkScalarRound(R1.left());
    stOpt.stClipRect.s32Ypos = SkScalarRound(R1.top());
    stOpt.stClipRect.u32Width = SkScalarRound(R1.width());
    stOpt.stClipRect.u32Height = SkScalarRound(R1.height());

    s32Handle = HI_TDE_BeginJob();
    if (HI_ERR_TDE_INVALID_HANDLE == s32Handle)
    {
        SkDebugf(" Fail to create Job.ERROR::%d\n",s32Handle);
        goto nativeError;
    }

    s32Ret = HI_TDE2_Bitblit(s32Handle,
                      &dstSurface, &dstRect,
                      &srcSurface, &srcRect,
                      &dstSurface, &dstRect,
                      &stOpt);

    if (HI_SUCCESS != s32Ret)
    {
        SkDebugf("Failed to HI_TDE2_Bitblit tde error code:0x%x!\n", s32Ret);
        HI_TDE2_CancelJob(s32Handle);
        goto nativeError;
    }

    s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 200);
    if (HI_SUCCESS != s32Ret)
    {
        SkDebugf(" Fail to HI_TDE2_EndJob. tde error code 0x%x\n",s32Ret);
        goto nativeError;
    }

    s32Ret = HI_TDE2_WaitForDone(s32Handle);
    if (HI_SUCCESS != s32Ret)
    {
        SkDebugf("Failed to Wait For Done. tde error code:0x%x\n", s32Ret);
        goto nativeError;
    }
    return true;

nativeError:

    return false;

}
void SkHSBlitter::blitRect(const SkBitmap *fDevice, unsigned int pAddr, const SkBitmap *fBitmap, SkIRect ir, SkIRect fClip)
{
    int err = 0;

    //alloc physical address
    int usage = android::GraphicBuffer::USAGE_HW_TEXTURE |
	                android::GraphicBuffer::USAGE_SW_WRITE_RARELY;

    if (gb.get() == NULL)
    {
        gb = new android::GraphicBuffer(1920,1280,HAL_PIXEL_FORMAT_RGBA_8888,usage);
        err = gb->lock(GRALLOC_USAGE_SW_WRITE_OFTEN, &srcBase);
        srcPhy = ((private_handle_t*)gb->handle)->ion_phy_addr;
        err = gb->unlock();
    }

    fBitmap->lockPixels();
	if (fBitmap->rowBytes()*fBitmap->height() < gb->getWidth()*gb->getHeight()*4)
	{
    	memcpy((void*)srcBase, (void*)fBitmap->getAddr32(0,0), fBitmap->rowBytes()*fBitmap->height());
	}
	else
	{
		gb->reallocate(fBitmap->width(), fBitmap->height(), HAL_PIXEL_FORMAT_RGBA_8888, usage);
				
		err = gb->lock(GRALLOC_USAGE_SW_WRITE_OFTEN, &srcBase);
		srcPhy = ((private_handle_t*)gb->handle)->ion_phy_addr;
		err = gb->unlock();
		memcpy((void*)srcBase, (void*)fBitmap->getAddr32(0,0), fBitmap->rowBytes()*fBitmap->height());
	}
    fBitmap->unlockPixels();
    ::blitRect(*fDevice, pAddr, *fBitmap, srcPhy, ir, fClip);
}
static char* getProcessName()
{
    static char name[1024];

    int pid = getpid();
    sprintf(name, "/proc/%d/cmdline", pid);
    FILE *f = fopen(name, "rb");
    if (NULL == f)
    {
        return NULL;
    }
    int len = fread(name, 1, 1024, f);
    fclose(f);
    name[len] = 0;
    return name;
}
int SkHSBlitter::checkProcessName()
{
    static int state = -1;//-1 unknown, 0 no, 1 yes

    if (-1 == state)
    {
        char *name = getProcessName();
        char procs[PROP_VALUE_MAX];
        property_get("persist.sys.hwskia.procs", procs, "");
        if (NULL == name)
        {
            state = -1;
        }
        else if (strstr(procs, name) != NULL)
        {
            HI_TDE2_Open();
            state = 1;
        }
        else if (0 == strcmp(name,"zygote"))
        {
    	    state = -1;
        }
        else
        {
    	    state = 0;
        }
    }

    return state;
}
SkHSBlitter::SkHSBlitter()
{
    surfaceVirtualAddr = NULL;
    surfacePhyAddr = 0;

    gb = NULL;
    srcBase = NULL;
    srcPhy = 0;
}

#endif
