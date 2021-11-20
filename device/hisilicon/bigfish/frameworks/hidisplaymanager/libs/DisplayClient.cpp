#include <utils/Log.h>
#include <binder/IServiceManager.h>
#include <utils/threads.h>
#include <binder/IMemory.h>
#include <binder/Parcel.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IInterface.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <binder/Parcel.h>
#include "DisplayClient.h"

namespace android
{
    sp<IDisplayService> DisplayClient::mDisplayService;

    const sp<IDisplayService>& DisplayClient::getDisplayService()
    {
        if(mDisplayService.get() == 0)
        {
            sp<IServiceManager> sm = defaultServiceManager();
            sp<IBinder> binder ;
            do
            {
                binder = sm->getService(String16("HiDisplay"));
                if (binder != 0)
                {
                    break;
                }
                usleep(500000);
            } while(true);
            mDisplayService = interface_cast<IDisplayService>(binder);
        }
        return mDisplayService;
    }

    int DisplayClient::SetEncFmt(int fmt)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();
        if(ps != 0)
        {
            ret = ps->setFmt(fmt);
        }
        return ret;
    }

    int DisplayClient::GetEncFmt(void)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getFmt();
        }
        return ret;
    }

    int DisplayClient::SetBrightness(int brightness)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setBrightness(brightness);
        }
        return ret;
    }

    int DisplayClient::GetBrightness(void)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getBrightness();
        }
        return ret;
    }

    int DisplayClient::SetContrast(int contrast)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setContrast(contrast);
        }
        return ret;
    }

    int DisplayClient::GetContrast(void)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getContrast();
        }
        return ret;
    }

    int DisplayClient::SetSaturation(int saturation)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();
        if(ps != 0)
        {
            ret = ps->setSaturation(saturation);
        }
        return ret;
    }

    int DisplayClient::GetSaturation(void)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getSaturation();
        }
        return ret;
    }

    int DisplayClient::SetHuePlus(int hue)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();
        if(ps != 0)
        {
            ret = ps->setHue(hue);
        }
        return ret;
    }

    int DisplayClient::GetHuePlus(void)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getHue();
        }
        return ret;
    }

    int DisplayClient::SetOutRange(int left,int top ,int width,int height)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();
        if(ps != 0)
        {
            ret = ps->setOutRange(left,top,width,height);
        }
        return ret;
    }

    int DisplayClient::GetOutRange(int *left, int *top, int *width, int *height)
    {
        const sp<IDisplayService>& ps = getDisplayService();

        Rect rect;

        if(ps != 0)
        {
            rect = ps->getOutRange();
            *left = rect.left;
            *top  = rect.top;
            *width = rect.right;
            *height = rect.bottom;
            return 0;
        }
        return -1;
    }
    int DisplayClient::SetMacroVision(int mode)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setMacroVision(mode);
        }
        return ret;
    }

    int DisplayClient::GetMacroVision()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getMacroVision();
        }
        return ret;
    }

    int DisplayClient::SetHdcp(bool mode)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setHdcp(mode);
        }
        return ret;
    }

    int DisplayClient::GetHdcp()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getHdcp();
        }
        return ret;
    }
    int DisplayClient::SetStereoOutMode(int mode, int videofps)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setStereoOutMode(mode, videofps);
        }
        return ret;
    }

    int DisplayClient::GetStereoOutMode()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getStereoOutMode();
        }
        return ret;

    }

    int DisplayClient::SetRightEyeFirst(int Outpriority)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setRightEyeFirst(Outpriority);
        }
        return ret;

    }

    int DisplayClient::GetRightEyeFirst()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getRightEyeFirst();
        }
        return ret;
    }


    int DisplayClient::GetDisplayCapability(Parcel *pl)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
             ps->getDisplayCapability(pl);
        }
        ret = pl->readInt32();
        /* What if ret is 0, as no exception; */
        if(ret == 0)
        {
            ret = pl->readInt32();
            /* What if ret is not 1, as read data err */
            if(ret != 1)
            {
                return -1;
            }
        }
        return 0;
    }
    int DisplayClient::GetManufactureInfo(Parcel *pl)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
             ps->getManufactureInfo(pl);
        }
        ret = pl->readInt32();
        /* What if ret is 0, as no exception; */
        if(ret == 0)
        {
            ret = pl->readInt32();
            /* What if ret is not 1, as read data err */
            if(ret != 1)
            {
                return -1;
            }
        }
        return 0;
    }
    int DisplayClient::SetAspectRatio(int ratio)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setAspectRatio(ratio);
        }
        return ret;
    }
    int DisplayClient::GetAspectRatio()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getAspectRatio();
        }
        return ret;
    }

    int DisplayClient::SetAspectCvrs(int cvrs)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setAspectCvrs(cvrs);
        }
        return ret;
    }
    int DisplayClient::GetAspectCvrs()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getAspectCvrs();
        }
        return ret;
    }

    int DisplayClient::SetOptimalFormatEnable(int sign)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setOptimalFormatEnable(sign);
        }
        return ret;
    }

    int DisplayClient::GetOptimalFormatEnable()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getOptimalFormatEnable();
        }
        return ret;
    }

    int DisplayClient::GetDisplayDeviceType()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getDisplayDeviceType();
        }
        return ret;
    }

    int DisplayClient::Reload()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->reload();
        }
        return ret;
    }
    int DisplayClient::SaveParam()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->saveParam();
        }
        return ret;
    }

    int DisplayClient::attachIntf()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->attachIntf();
        }
        return ret;
    }

    int DisplayClient::detachIntf()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->detachIntf();
        }
        return ret;
    }
        int DisplayClient::setVirtScreen(int outFmt)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setVirtScreen(outFmt);
        }
        return ret;
    }

    int DisplayClient::getVirtScreen()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getVirtScreen();
        }
        return ret;
    }

    int DisplayClient::GetVirtScreenSize(int *w, int *h)
    {
        Rect rect(0, 0, 0, 0);
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            rect = ps->getVirtScreenSize();
            *w = rect.right;
            *h = rect.bottom;
        }
        return 0;
    }


    int DisplayClient::Reset()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->reset();
        }
        return ret;
    }

    int DisplayClient::SetHDMISuspendTime(int iTime)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setHDMISuspendTime(iTime);
        }
        return ret;
    }

    int DisplayClient::GetHDMISuspendTime()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getHDMISuspendTime();
        }
        return ret;
    }

    int DisplayClient::SetHDMISuspendEnable(int iEnable)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setHDMISuspendEnable(iEnable);
        }
        return ret;
    }

    int DisplayClient::GetHDMISuspendEnable()
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getHDMISuspendEnable();
        }
        return ret;
    }

    int DisplayClient::SetOutputEnable(int port, int enable)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->setOutputEnable(port, enable);
        }
        return ret;
    }

    int DisplayClient::GetOutputEnable(int port)
    {
        int ret = -1;
        const sp<IDisplayService>& ps = getDisplayService();

        if(ps != 0)
        {
            ret = ps->getOutputEnable(port);
        }
        return ret;
    }
};
//end namespace
