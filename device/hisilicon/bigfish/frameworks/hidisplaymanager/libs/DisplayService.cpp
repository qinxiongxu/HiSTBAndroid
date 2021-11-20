#include <binder/IServiceManager.h>
#include <binder/IPCThreadState.h>
#include <binder/PermissionCache.h>
#include <private/android_filesystem_config.h>
#include <utils/String16.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <linux/types.h>
#include <sys/ioctl.h>
#include <cutils/properties.h>
#include <hidisplay.h>
#include <hardware.h>
#include <utils/Log.h>
#include <cutils/properties.h>
#include <hardware/hardware.h>
#include <hardware/gralloc.h>
#include <hardware/fb.h>
#include <hardware/lights.h>

#include <binder/Parcel.h>
#include "DisplayService.h"
#include "fb.h"
#include "hifb.h"
#include "displaydef.h"

#define BUFFER_SIZE_FRAMEBUFFER_NAME 64
#define BUFFER_SIZE_ENV_VALUE 8
#define FRAMEBUFFER_NO 2

#define CAP_CHAR_SIZE (DISP_ENC_FMT_BUTT+1)
namespace android
{
    const String16 sDump("android.permission.DUMP");

    DisplayService::DisplayService()
        : mModule(NULL),mDevice(NULL)
    {

        int err = hw_get_module(DISPLAY_HARDWARE_MODULE_ID, &mModule);
        if(err == 0)
        {
            display_open(mModule, (hw_device_t **)&mDevice);
        }
        else
        {
            ALOGE("open display module failed !\n");
        }
        if(mDevice == NULL)
            ALOGE("mDevice is NULL %s(%d)!\n", __func__, __LINE__);

    }

    DisplayService::~DisplayService()
    {
    }

    void DisplayService::instantiate()
    {
        defaultServiceManager()->addService(String16("HiDisplay"), new DisplayService());
    }

    int DisplayService::setFmt(int value)
    {
        int ret = 0;
        if(mDevice == 0)
        {
            return -1;
        }
        ret = mDevice->set_format((display_format_e)value);
        return  ret;
    }

    int DisplayService::getFmt(void)
    {
        int value = -1;
        if(mDevice == 0)
        {
            return -1;
        }
        mDevice->get_format((display_format_e* )&value);
        return  value;
    }
    int DisplayService::setBrightness(int brightness)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_brightness(brightness);
        return  ret;
    }
    int DisplayService::getBrightness()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        mDevice->get_brightness(&ret);
        return  ret;
    }
    int DisplayService::setContrast(int contrast)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_contrast(contrast);
        return  ret;
    }
    int DisplayService::getContrast()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        mDevice->get_contrast(&ret);
        return  ret;
    }
    int DisplayService::setSaturation(int saturation)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_saturation(saturation);
        return  ret;
    }
    int DisplayService::getSaturation()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        mDevice->get_saturation(&ret);
        return  ret;
    }
    int DisplayService::setHue(int hue)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_hue(hue);
        return  ret;
    }
    int DisplayService::getHue()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        mDevice->get_hue(&ret);
        return  ret;
    }
    int DisplayService::setOutRange(int left,int top,int width,int height)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_graphic_out_range(left,top,width,height);
        return  ret;
    }
    Rect DisplayService::getOutRange()
    {
        Rect rect(0,0,0,0);
        if(mDevice == 0)
        {
            return rect;
        }
        mDevice->get_graphic_out_range(&rect.left,&rect.top,&rect.right,&rect.bottom);
        return  rect;
    }
    int DisplayService::setMacroVision(int mode)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_macro_vision((display_macrovision_mode_e)mode);
        return  ret;
    }
    int DisplayService::getMacroVision()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        mDevice->get_macro_vision((display_macrovision_mode_e *)&ret);
        return  ret;
    }
    int DisplayService::setHdcp(bool mode)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_hdcp((int)mode);
        return  ret;
    }
    int DisplayService::getHdcp()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_hdcp();
        return  ret;
    }
    int DisplayService::setStereoOutMode(int mode, int videofps)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_stereo_outmode(mode, videofps);
        return  ret;
    }
    int DisplayService::getStereoOutMode()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_stereo_outmode();
        return  ret;
    }
    int DisplayService::setRightEyeFirst(int Outpriority)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_righteye_first(Outpriority);
        return ret;
    }
    int DisplayService::getRightEyeFirst()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_righteye_first();
        return ret;
    }

    int DisplayService::getDisplayCapability(Parcel *pl)
    {
        int ret = -1;
        int caps[CAP_CHAR_SIZE] = {-1};

        struct capability_s{
            int32_t is_support_3d;
            int32_t video_fmt_supproted[DISP_ENC_FMT_BUTT];
        } capabliltys;


        if(mDevice == 0 || pl == NULL)
        {
            return ret;
        }

        ret = mDevice->get_hdmi_capability(caps);
        int count = 0;
        capabliltys.is_support_3d = caps[0];
        count += 1;

        for(int i = count; i < DISP_ENC_FMT_BUTT; i++)
        {
            capabliltys.video_fmt_supproted[i] = caps[i];
        }
        /* write flag 0 as no exception; */
        pl->writeInt32(0);
        /* write flag 1 as read caps success; 0 as read caps  failed; */
        if(ret == -1)
        {
            pl->writeInt32(0);
        } else {
            pl->writeInt32(1);
        }

        pl->writeInt32(capabliltys.is_support_3d);
        for(uint i = count; i < DISP_ENC_FMT_BUTT;++i)
        {
            pl->writeInt32(capabliltys.video_fmt_supproted[i]);
        }
        return ret;
    }
    int DisplayService::getManufactureInfo(Parcel * pl)
    {
        int ret = -1;
        char frsname[128] = "0";
        char sinkname [128] = "0";
        int productcode = 0;
        int serinumber = 0;
        int week = 0;
        int year = 0;
	int TVHight =0;
	int TVWidth =0;
        ret = mDevice->get_manufacture_info(frsname, sinkname, &productcode, &serinumber,&week, &year, &TVHight, &TVWidth);

        pl->writeInt32(0);
        if(ret == -1)
        {
            pl->writeInt32(0);
            ALOGE("getManufactureInfo failure! \n");
        } else {
            pl->writeInt32(1);
        }

        String16 fn(frsname);
        String16 sk(sinkname);
        pl->writeString16(fn);
        pl->writeString16(sk);
        pl->writeInt32(productcode);
        pl->writeInt32(serinumber);
        pl->writeInt32(week);
        pl->writeInt32(year);
	pl->writeInt32(TVWidth);
	pl->writeInt32(TVHight);
        return ret;
    }
    int DisplayService::setAspectRatio(int ratio)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_aspect_ratio(ratio);
        return  ret;
    }
    int DisplayService::getAspectRatio()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_aspect_ratio();
        return  ret;
    }
    int DisplayService::setAspectCvrs(int cvrs)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_aspect_cvrs(cvrs);
        return  ret;
    }
    int DisplayService::getAspectCvrs()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_aspect_cvrs();
        return  ret;
    }

    int DisplayService::setOptimalFormatEnable(int able)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_optimal_format_enable(able);
        return  ret;
    }
    int DisplayService::getOptimalFormatEnable()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_optimal_format_enable();
        return  ret;
    }

    int DisplayService::getDisplayDeviceType()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_display_device_type();
        return  ret;
    }

    int DisplayService::setVirtScreen(int outFmt)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_virtual_screen(outFmt);
        return  ret;
    }
    int DisplayService::getVirtScreen()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_virtual_screen();
        return  ret;
    }

    Rect DisplayService::getVirtScreenSize()
    {
        Rect rect(0, 0, 0, 0);
        if(mDevice == 0)
        {
            return rect;
        }
        mDevice->get_virtual_screen_size(&rect.right, &rect.bottom);
        return  rect;
    }

    int DisplayService::reset()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->reset();
        return  ret;
    }

    int DisplayService::setHDMISuspendTime(int iTime)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_hdmi_suspend_time(iTime);
        return  ret;
    }

    int DisplayService::getHDMISuspendTime()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_hdmi_suspend_time();
        return  ret;
    }

    int DisplayService::setHDMISuspendEnable(int iEnable)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_hdmi_suspend_enable(iEnable);
        return  ret;
    }

    int DisplayService::getHDMISuspendEnable()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_hdmi_suspend_enable();
        return  ret;
    }

    int DisplayService::reload()
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->reload();
        return  ret;
    }

    int DisplayService::setOutputEnable(int port, int enable)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->set_output_enable(port, enable);
        return  ret;
    }

    int DisplayService::getOutputEnable(int port)
    {
        int ret = -1;
        if(mDevice == 0)
        {
            return ret;
        }
        ret = mDevice->get_output_enable(port);
        return  ret;
    }

    void DisplayService::binderDied(const wp<IBinder>& who) {
        /* What if client is force close, reset statue of display to 2D mode. */
        ALOGE("DisplayService::binderDied !\n");
        setStereoOutMode(0, 0);
    }

    status_t DisplayService::dump(int fd, const Vector<String16>& args)
    {
        String8  result;
        IPCThreadState* ipc = IPCThreadState::self();
        const int pid = ipc->getCallingPid();
        const int uid = ipc->getCallingUid();
        if ((uid != AID_SHELL) &&
             !PermissionCache::checkPermission(sDump, pid, uid)) {
             result.appendFormat("Permission Denial: "
                            "can't dump Hidisplay from pid=%d, uid=%d\n", pid, uid);
        } else {
            const int BUFF = 4096;
            char output[BUFF] = {0};
            char *tmp = output;
            int length = 0;
            sprintf(output,
                "---  Format  ---Brightness--- Contrast ---Saturation---   Hue   --- DispMode ---EyePriority---\n"
                "---%10d---%10d---%10d---%10d---%10d---%10d---%10d---\n",
                getFmt(), getBrightness(), getContrast(), getSaturation(), getHue(),
                getStereoOutMode(),getRightEyeFirst()
            );
            result.append(output);
            length = strlen(output);
            Rect rect = getOutRange();
            sprintf(output,
               "Screen Out Range : [%d,%d,%d,%d]\n"
               "| MacroVersion : %3d | HDCP %3d |\n ",
               rect.left, rect.top, rect.right, rect.bottom,
               getMacroVision(), getHdcp()
            );
            result.append(output);

            int caps[CAP_CHAR_SIZE] = {-1};
            mDevice->get_hdmi_capability(caps);

            const char *FmtCharTable[CAP_CHAR_SIZE] = {
            "Is support 3d                      ",
            "HI_UNF_ENC_FMT_1080P_60            ",
            "HI_UNF_ENC_FMT_1080P_50            ",
            "HI_UNF_ENC_FMT_1080P_30            ",
            "HI_UNF_ENC_FMT_1080P_25            ",
            "HI_UNF_ENC_FMT_1080P_24            ",
            "HI_UNF_ENC_FMT_1080i_60            ",
            "HI_UNF_ENC_FMT_1080i_50            ",
            "HI_UNF_ENC_FMT_720P_60             ",
            "HI_UNF_ENC_FMT_720P_50             ",
            "HI_UNF_ENC_FMT_576P_50             ",
            "HI_UNF_ENC_FMT_480P_60             ",
            "HI_UNF_ENC_FMT_PAL                 ",
            "HI_UNF_ENC_FMT_PAL_N               ",
            "HI_UNF_ENC_FMT_PAL_Nc              ",
            "HI_UNF_ENC_FMT_NTSC                ",
            "HI_UNF_ENC_FMT_NTSC_J              ",
            "HI_UNF_ENC_FMT_NTSC_PAL_M          ",
            "HI_UNF_ENC_FMT_SECAM_SIN           ",
            "HI_UNF_ENC_FMT_SECAM_COS           ",
            "HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING",
            "HI_UNF_ENC_FMT_720P_60_FRAME_PACKING",
            "HI_UNF_ENC_FMT_720P_50_FRAME_PACKING",
            "HI_UNF_ENC_FMT_861D_640X480_60     ",
            "HI_UNF_ENC_FMT_VESA_800X600_60     ",
            "HI_UNF_ENC_FMT_VESA_1024X768_60    ",
            "HI_UNF_ENC_FMT_VESA_1280X720_60    ",
            "HI_UNF_ENC_FMT_VESA_1280X800_60    ",
            "HI_UNF_ENC_FMT_VESA_1280X1024_60   ",
            "HI_UNF_ENC_FMT_VESA_1360X768_60    ",
            "HI_UNF_ENC_FMT_VESA_1366X768_60    ",
            "HI_UNF_ENC_FMT_VESA_1400X1050_60   ",
            "HI_UNF_ENC_FMT_VESA_1440X900_60    ",
            "HI_UNF_ENC_FMT_VESA_1440X900_60_RB ",
            "HI_UNF_ENC_FMT_VESA_1600X900_60_RB ",
            "HI_UNF_ENC_FMT_VESA_1600X1200_60   ",
            "HI_UNF_ENC_FMT_VESA_1680X1050_60   ",
            "HI_UNF_ENC_FMT_VESA_1680X1050_60_RB ",
            "HI_UNF_ENC_FMT_VESA_1920X1080_60   ",
            "HI_UNF_ENC_FMT_VESA_1920X1200_60   ",
            "HI_UNF_ENC_FMT_VESA_1920X1440_60   ",
            "HI_UNF_ENC_FMT_VESA_2048X1152_60   ",
            "HI_UNF_ENC_FMT_VESA_2560X1440_60_RB ",
            "HI_UNF_ENC_FMT_VESA_2560X1600_60_RB ",
            "HI_UNF_ENC_FMT_3840X2160_24      ",
            "HI_UNF_ENC_FMT_3840X2160_25      ",
            "HI_UNF_ENC_FMT_3840X2160_30      ",
            "HI_UNF_ENC_FMT_3840X2160_50      ",
            "HI_UNF_ENC_FMT_3840X2160_60      ",
            "HI_UNF_ENC_FMT_4096X2160_24      ",
            "HI_UNF_ENC_FMT_4096X2160_25      ",
            "HI_UNF_ENC_FMT_4096X2160_30      ",
            "HI_UNF_ENC_FMT_4096X2160_50      ",
            "HI_UNF_ENC_FMT_4096X2160_60      ",
            "HI_UNF_ENC_FMT_3840X2160_23_976   ",
            "HI_UNF_ENC_FMT_3840X2160_29_97     ",
            "HI_UNF_ENC_FMT_720P_59_94          ",
            "HI_UNF_ENC_FMT_1080P_59_94        ",
            "HI_UNF_ENC_FMT_1080P_29_97        ",
            "HI_UNF_ENC_FMT_1080P_23_976      ",
            "HI_UNF_ENC_FMT_1080i_59_94         ",
            };

            int cnt = (DISP_ENC_FMT_4096X2160_60 - DISP_ENC_FMT_3840X2160_24 + 1)
                    + (DISP_ENC_FMT_1080i_59_94 - DISP_ENC_FMT_3840X2160_23_976 + 1);
            for(int i= 0; i<CAP_CHAR_SIZE ; i++)
            {
                if (i > DISP_ENC_FMT_VESA_2560X1600_60_RB + 1 + cnt)
                {
                    break;
                }
                result.appendFormat( "|   %s  \t= %d   |\n", FmtCharTable[i],  caps[i]);
            }
        }
        write(fd, result.string(), result.size());
        return NO_ERROR;

    }

    int DisplayService::saveParam()
    {
        int ret = mDevice->param_save();
        return ret;
    }

    int DisplayService::attachIntf()
    {
        int ret = mDevice->attach_intf();
        return ret;
    }

    int DisplayService::detachIntf()
    {
        int ret = mDevice->detach_intf();
        return ret;
    }
};
