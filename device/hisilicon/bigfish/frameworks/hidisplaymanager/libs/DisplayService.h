#ifndef _DISPLAYSERVICE_H_
#define _DISPLAYSERVICE_H_

#include <cutils/memory.h>
#include <utils/Log.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include "IDisplayService.h"
#include "hidisplay.h"

namespace android
{
    class DisplayService: public BnDisplayService
    {
        public:
            DisplayService();
            ~DisplayService();
            static void instantiate();
            virtual int setFmt(int fmt);
            virtual int getFmt();
            virtual int setBrightness(int  brightness);
            virtual int getBrightness();
            virtual int setContrast(int  contrast);
            virtual int getContrast();
            virtual int setSaturation(int  saturation);
            virtual int getSaturation();
            virtual int setHue(int  hue);
            virtual int getHue();
            virtual int setOutRange(int left,int top,int width,int height);
            virtual Rect getOutRange();
            virtual int setMacroVision(int mode);
            virtual int getMacroVision();
            virtual int setHdcp(bool);
            virtual int getHdcp();
            virtual int setStereoOutMode(int mode, int videofps);
            virtual int getStereoOutMode();
            virtual int setRightEyeFirst(int Outpriority);
            virtual int getRightEyeFirst();
            virtual int getDisplayCapability(Parcel *pl);
            virtual int getManufactureInfo(Parcel *pl);
            virtual int setAspectRatio(int ratio);
            virtual int getAspectRatio();
            virtual int setAspectCvrs(int cvrs);
            virtual int getAspectCvrs();
            virtual int setOptimalFormatEnable(int able);
            virtual int getOptimalFormatEnable();
            virtual int getDisplayDeviceType();
            virtual int saveParam();
            virtual int attachIntf();
            virtual int detachIntf();
            virtual int setVirtScreen(int outFmt);
            virtual int getVirtScreen();
            virtual Rect getVirtScreenSize();
            virtual int reset();
            virtual int setHDMISuspendTime(int iTime);
            virtual int getHDMISuspendTime();
            virtual int setHDMISuspendEnable(int iEnable);
            virtual int getHDMISuspendEnable();
            virtual int reload();
            virtual int setOutputEnable(int port, int enable);
            virtual int getOutputEnable(int port);

            virtual void binderDied(const wp<IBinder>& who);
            status_t dump(int fd, const Vector<String16>& args);

        private:
            const hw_module_t * mModule;
            display_device_t * mDevice;
    };
};
#endif /*DISPLAYSERVICE_H*/
