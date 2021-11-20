#ifndef _DISPLAYCLIENT_H_
#define _DISPLAYCLIENT_H_

#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <binder/IPCThreadState.h>
#include <binder/IServiceManager.h>
#include <binder/ProcessState.h>
#include <binder/IMemory.h>
#include <binder/Parcel.h>
#include "IDisplayService.h"

namespace android
{
    class DisplayClient: public RefBase
    {
        public:
            int SetEncFmt(int fmt);
            int GetEncFmt();
            int SetBrightness(int Brightness);
            int GetBrightness();
            int SetContrast(int Contrast);
            int GetContrast();
            int SetSaturation(int saturation);
            int GetSaturation();
            int SetHuePlus(int HuePlus);
            int GetHuePlus();
            int SetOutRange(int left,int top ,int width, int height);
            int GetOutRange(int *left, int *top, int *width, int *height);
            int GetHdmiCapability(int *);
            int SetMacroVision(int mode);
            int GetMacroVision();
            int SetHdcp(bool mode);
            int GetHdcp();
            int SetStereoOutMode(int mode, int videofps);
            int GetStereoOutMode();
            int SetRightEyeFirst(int Outpriority);
            int GetRightEyeFirst();
            int GetDisplayCapability(Parcel *pl);
            int GetManufactureInfo(Parcel *pl);
            int SaveParam();
            int SetAspectRatio(int ratio);
            int GetAspectRatio();
            int SetAspectCvrs(int cvrs);
            int GetAspectCvrs();
            int SetOptimalFormatEnable(int sign);
            int GetOptimalFormatEnable();
            int GetDisplayDeviceType();
            int attachIntf();
            int detachIntf();
            int setVirtScreen(int outFmt);
            int getVirtScreen();
            int GetVirtScreenSize(int *w, int *h);
            int Reset();
            int SetHDMISuspendTime(int iTime);
            int GetHDMISuspendTime();
            int SetHDMISuspendEnable(int iEnable);
            int GetHDMISuspendEnable();
            int Reload();
            int SetOutputEnable(int port, int enable);
            int GetOutputEnable(int port);

        private:
            const sp<IDisplayService> & getDisplayService();
            static sp<IDisplayService> mDisplayService;
    };
};
#endif
