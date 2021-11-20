#ifndef _IDISPLAYSERVICE_H_
#define _IDISPLAYSERVICE_H_

#include <stdint.h>
#include <sys/types.h>
#include <utils/Errors.h>
#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <ui/Rect.h>

namespace android {

    class IDisplayService : public IInterface
    {
        public:
            DECLARE_META_INTERFACE(DisplayService);
            virtual int setFmt(int fmt) = 0;
            virtual int getFmt() = 0;
            virtual int setBrightness(int  brightness) = 0;
            virtual int getBrightness() = 0;
            virtual int setContrast(int  contrast) = 0;
            virtual int getContrast() = 0;
            virtual int setSaturation(int  saturation) = 0;
            virtual int getSaturation() = 0;
            virtual int setHue(int  hue) = 0;
            virtual int getHue() = 0;
            virtual int setOutRange(int left,int top,int width,int height) = 0;
            virtual Rect getOutRange() = 0;
            virtual int setMacroVision(int mode) = 0;
            virtual int getMacroVision() = 0;
            virtual int setHdcp(bool) = 0;
            virtual int getHdcp() = 0;
            virtual int setStereoOutMode(int mode, int videofps) = 0;
            virtual int getStereoOutMode() = 0;
            virtual int setRightEyeFirst(int Outpriority) = 0;
            virtual int getRightEyeFirst() = 0;
            virtual int getDisplayCapability(Parcel *pl) = 0;
            virtual int getManufactureInfo(Parcel *pl)  = 0;
            virtual int setAspectRatio(int ratio) = 0;
            virtual int getAspectRatio() = 0;
            virtual int setAspectCvrs(int cvrs) = 0;
            virtual int getAspectCvrs() = 0;
            virtual int setOptimalFormatEnable(int able) = 0;
            virtual int getOptimalFormatEnable() = 0;
            virtual int getDisplayDeviceType() = 0;
            virtual int saveParam() = 0;
            virtual int attachIntf() = 0;
            virtual int detachIntf() = 0;
            virtual int setVirtScreen(int outFmt) = 0;
            virtual int getVirtScreen() = 0;
            virtual Rect getVirtScreenSize() = 0;
            virtual int reset() = 0;
            virtual int setHDMISuspendTime(int iTime) = 0;
            virtual int getHDMISuspendTime() = 0;
            virtual int setHDMISuspendEnable(int iEnable) = 0;
            virtual int getHDMISuspendEnable() = 0;
            virtual int reload() = 0;
            virtual int setOutputEnable(int port, int enable) = 0;
            virtual int getOutputEnable(int port) = 0;

    };

    class BnDisplayService : public BnInterface<IDisplayService>
    {
        public:
            virtual status_t onTransact( uint32_t code,
                    const Parcel& data,
                    Parcel* reply,
                    uint32_t flags = 0);

    };

};
#endif
