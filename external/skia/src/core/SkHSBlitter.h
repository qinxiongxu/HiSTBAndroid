/*
 * SkHSBlitter.h
 *  hisi TDE Blitter
*/

#ifndef SKHSBLITTER_H_
#define SKHSBLITTER_H_

#include <utils/RefBase.h>
#include <ui/GraphicBuffer.h>

#ifdef SKIA_ACCELERATION_ENABLE
class SkHSBlitter
{
public:
    static class SkHSBlitter* getInstance();
    void setSurfaceAddress(void * va, int phy);
    void* getSurfaceVirtualAddress();
    unsigned int getSurfacePhysicalAddress();
    void blitRect(const SkBitmap *fDevice, unsigned int pAddr, const SkBitmap *fBitmap, SkIRect ir, SkIRect fClip);
    int checkProcessName();

private:
    void* surfaceVirtualAddr;
    unsigned int surfacePhyAddr;
    android::sp<android::GraphicBuffer> gb;
    void *srcBase;
    unsigned int srcPhy;
    SkHSBlitter();
};
#endif

#endif /* SKHSBLITTER_H_ */

