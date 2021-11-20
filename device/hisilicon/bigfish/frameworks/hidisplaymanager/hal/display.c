#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#include <cutils/log.h>
#include <cutils/properties.h>

#include <pthread.h>
#include <hardware.h>

#include <hifb.h>
#include <hi_unf_mce.h>
#include <hi_unf_disp.h>
#include <hi_adp_hdmi.h>
#include <hi_type.h>
#include <hi_unf_pdm.h>
#include <hidisplay.h>

#define TURN_ON_SD0

#ifdef TURN_ON_SD0
#define HI_UNF_DISP_SD0 (HI_UNF_DISPLAY0)
#endif
#define HI_UNF_DISP_HD0 (HI_UNF_DISPLAY1)

#define DISPLAY_DEBUG 1

#define LOG_TAG "DisplaySetting"

#define ENV_VALUE_BUFFER_LEN 8
#define BUFLEN  PROP_VALUE_MAX
#define PROPERTY_LEN PROP_VALUE_MAX

//fb
#define DEVICE_FB  "/dev/graphics/fb0"

//ui fmt
static display_format_e mFormat = DISPLAY_FMT_1080i_50;

//vitual screen
#define OUTFMT_720 0
#define OUTFMT_1080 1
#define VIRSCREEN_W 1280
#define VIRSCREEN_H 720
#define VIRSCREEN_W_1080 1920
#define VIRSCREEN_H_1080 1080
#define PAL_W 720
#define PAL_H 576
#define NTSC_W 720
#define NTSC_H 480

//offset
#define OFFSET_STRIDE 4
#define MAX_OFFSET_HD 200
#define MIN_OFFSET_HD 0
#define MAX_OFFSET_SD_W 100
#define MAX_OFFSET_SD_H 72

//3d
#define LEFT_EYE  0
#define RIGHT_EYE 1
static HI_BOOL eye_priority = LEFT_EYE;
static HI_UNF_DISP_3D_E mStereoMode = HI_UNF_DISP_3D_NONE;

//port
int hdmi_interface = 0;
int cvbs_dac_port = 2;
int hdmi_enable = 1; // 0->disabled , 1->enabled
int cvbs_enable = 1; // 0->disabled , 1->enabled

//hdmi adapt
int displayType = 0; // 0 is hdmi not connected, 1 is tv, 2 is pc
extern HI_UNF_HDMI_STATUS_S stHdmiStatus;
extern HI_UNF_EDID_BASE_INFO_S stSinkCap;

HI_U32 TVHMax = 0;
HI_U32 TVWMax = 0;
typedef enum  baseparam_option_e{
    FORMAT =        1<<0,
    BRIGHTNESS =    1<<1,
    CONTRAST =      1<<2,
    SATURATION =    1<<3,
    HUEPLUS =       1<<4,
    GAMMAENABLE =   1<<5,
    STBGCOLOR =     1<<6,
    STINTF =        1<<7,
    STDISPTIMING =  1<<8,
    STASPECTRATIO = 1<<9,
    RANGE =        1<<10,
} baseparam_option_e;

typedef struct DisplayParam{
    int enDisp;
    int flag;
    HI_UNF_PDM_DISP_PARAM_S baseParam;
}DisplayParam_S;

struct DisplayParam displayParam[HI_UNF_DISPLAY_BUTT];
int set_stereo_outmode(int mode, int videofps);
void param_to_string(HI_UNF_PDM_DISP_PARAM_S *baseParam, char* string);
int set_virtual_screen(int outFmt);
extern int setOptimalFormat(int able);
extern int getOptimalFormat();
extern HI_U32 set_HDMI_Suspend_Time(int iTime);
extern HI_U32 get_HDMI_Suspend_Time();
extern HI_U32 set_HDMI_Suspend_Enable(int iEnable);
extern HI_U32 get_HDMI_Suspend_Enable();
extern void setTVproperty();

static int baseparam_disp_set(void *data, baseparam_option_e flag, int enDisp)
{
    int ret = -1;

    /* Save baseparam Data to struct displayParam. */
    displayParam[enDisp].flag |= flag;
    switch(flag)
    {
        case  FORMAT :
            displayParam[enDisp].baseParam.enFormat = *(HI_UNF_ENC_FMT_E*)data;
            break;
        case  BRIGHTNESS:
            displayParam[enDisp].baseParam.u32Brightness = *(HI_U32*)data;
            break;
        case  CONTRAST:
            displayParam[enDisp].baseParam.u32Contrast = *(HI_U32*)data;
            break;
        case  SATURATION:
            displayParam[enDisp].baseParam.u32Saturation = *(HI_U32*)data;
            break;
        case  HUEPLUS:
            displayParam[enDisp].baseParam.u32HuePlus = *(HI_U32*)data;
            break;
        case  GAMMAENABLE :
            displayParam[enDisp].baseParam.bGammaEnable = *(HI_BOOL*)data;
            break;
        case  STBGCOLOR:
            displayParam[enDisp].baseParam.stBgColor = *(HI_UNF_DISP_BG_COLOR_S*)data;
            break;
        case  STINTF:
            memcpy(displayParam[enDisp].baseParam.stIntf, (HI_UNF_DISP_INTF_S*)data, sizeof(displayParam[enDisp].baseParam.stIntf));
            break;
        case  STDISPTIMING:
            displayParam[enDisp].baseParam.stDispTiming = *(HI_UNF_DISP_TIMING_S*)data;
            break;

        case  STASPECTRATIO:
            displayParam[enDisp].baseParam.stAspectRatio = *(HI_UNF_DISP_ASPECT_RATIO_S*)data;
            break;
        case RANGE:
            displayParam[enDisp].baseParam.stDispOffset.u32Left = *(HI_U32*)data;
            displayParam[enDisp].baseParam.stDispOffset.u32Top = *(((HI_U32*)data)+1);
            displayParam[enDisp].baseParam.stDispOffset.u32Right = *(((HI_U32*)data)+2);
            displayParam[enDisp].baseParam.stDispOffset.u32Bottom =  *(((HI_U32*)data)+3);
        default:
            break;
    }
    return HI_SUCCESS;
}
static int baseparam_set(void *data, baseparam_option_e flag)
{
    int ret = -1;
    ret = baseparam_disp_set(data, flag, HI_UNF_DISP_HD0);
#ifdef TURN_ON_SD0
    ret = baseparam_disp_set(data, flag, HI_UNF_DISP_SD0);
#endif
    return ret;
}

int baseparam_disp_save(int enDisp)
{
    /* Nothing Changed */
    if(0 == displayParam[enDisp].flag)
    {
        return HI_SUCCESS;
    }
    int ret = -1;
    /*read old conf in base param partition*/
    HI_UNF_PDM_DISP_PARAM_S baseParam;
    memset(&baseParam,0,sizeof(HI_UNF_PDM_DISP_PARAM_S));
    ret = HI_UNF_PDM_GetBaseParam(enDisp, &baseParam);
    if(ret != HI_SUCCESS)
    {
        ALOGE("GetBaseParam Err--- %p", (void*)ret);
        return ret;
    }

    char buffer[PROPERTY_LEN];
    /*check all the settings*/
    int i=1;
    for(i=1;i<=(int)RANGE;i*=2)
    {
        if((displayParam[enDisp].flag & i) == 0)/*a setting is not changed*/
        {
            continue;
        }

        switch(i)/*a settings is change, read the changed setting*/
        {
            case  FORMAT :
                baseParam.enFormat = displayParam[enDisp].baseParam.enFormat;
                break;
            case  BRIGHTNESS:
                baseParam.u32Brightness = displayParam[enDisp].baseParam.u32Brightness;
                break;
            case  CONTRAST:
                baseParam.u32Contrast = displayParam[enDisp].baseParam.u32Contrast;
                break;
            case  SATURATION:
                baseParam.u32Saturation = displayParam[enDisp].baseParam.u32Saturation;
                break;
            case  HUEPLUS:
                baseParam.u32HuePlus = displayParam[enDisp].baseParam.u32HuePlus;
                break;
            case  GAMMAENABLE :
                baseParam.bGammaEnable = displayParam[enDisp].baseParam.bGammaEnable;
                break;
            case  STBGCOLOR:
                baseParam.stBgColor = displayParam[enDisp].baseParam.stBgColor;
                break;
            case  STINTF:
                memcpy(baseParam.stIntf, (HI_UNF_DISP_INTF_S*)&displayParam[enDisp].baseParam.stIntf, sizeof(baseParam.stIntf));
                break;
            case  STDISPTIMING:
                baseParam.stDispTiming = displayParam[enDisp].baseParam.stDispTiming;
                break;
            case  STASPECTRATIO:
                baseParam.stAspectRatio = displayParam[enDisp].baseParam.stAspectRatio;
                break;
            case RANGE:
                baseParam.stDispOffset.u32Left   = displayParam[enDisp].baseParam.stDispOffset.u32Left;
                baseParam.stDispOffset.u32Top    = displayParam[enDisp].baseParam.stDispOffset.u32Top;
                baseParam.stDispOffset.u32Right  = displayParam[enDisp].baseParam.stDispOffset.u32Right;
                baseParam.stDispOffset.u32Bottom = displayParam[enDisp].baseParam.stDispOffset.u32Bottom;
            default:
                break;
        }
    }

    /*so here, all the base param which is modified by usr is changed*/
    ret = HI_UNF_PDM_UpdateBaseParam(enDisp, &baseParam);
    if(ret != HI_SUCCESS)
    {
        ALOGE("UpdateBaseParam %d Err--- %p", enDisp, (void*)ret);
    }
    else
    {
        /*all changes are saved. so we clear the change flag here*/
        displayParam[enDisp].flag  = 0;
        //sync customize property
        if(enDisp == HI_UNF_DISP_HD0) {
            param_to_string(&baseParam, buffer);
            property_set("persist.sys.display.customize", buffer);
        }
    }
    return ret;
}

int baseparam_save(void)
{
    int ret = -1;
    ret = baseparam_disp_save(HI_UNF_DISP_HD0);

#ifdef TURN_ON_SD0
    ret = baseparam_disp_save(HI_UNF_DISP_SD0);
#endif

    return ret;
}

int attach_intf(void)
{
    HI_UNF_DISP_INTF_S stIntf_disp0[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_UNF_DISP_INTF_S stIntf_disp1[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_U32 u32ValidCnt_disp0, u32ValidCnt_disp1;
    HI_UNF_PDM_DISP_PARAM_S stParam_disp0, stParam_disp1;
    HI_UNF_DISP_INTF_S *pstParamIntf0, *pstParamIntf1;
    HI_S32 s32Ret;
    HI_U32 u32Cnt;

    memset(stIntf_disp1, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
    memset(stIntf_disp0, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
    for (u32Cnt = 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        stIntf_disp1[u32Cnt].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
        stIntf_disp0[u32Cnt].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
    }
    s32Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stParam_disp1);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    pstParamIntf1 = stParam_disp1.stIntf;
    for (u32Cnt = 0, u32ValidCnt_disp1= 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        if (pstParamIntf1[u32Cnt].enIntfType != HI_UNF_DISP_INTF_TYPE_BUTT
            && pstParamIntf1[u32Cnt].enIntfType == u32Cnt)
        {
            memcpy(&(stIntf_disp1[u32ValidCnt_disp1]),
                   &(pstParamIntf1[u32Cnt]),
                   sizeof(HI_UNF_DISP_INTF_S));
            u32ValidCnt_disp1++;
        }
    }
    s32Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP0, &stParam_disp0);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    pstParamIntf0 = stParam_disp0.stIntf;
    for (u32Cnt = 0, u32ValidCnt_disp0 = 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        if (pstParamIntf0[u32Cnt].enIntfType != HI_UNF_DISP_INTF_TYPE_BUTT
            && pstParamIntf0[u32Cnt].enIntfType == u32Cnt)
        {
            memcpy(&(stIntf_disp0[u32ValidCnt_disp0]),
                   &(pstParamIntf0[u32Cnt]),
                   sizeof(HI_UNF_DISP_INTF_S));
            u32ValidCnt_disp0++;
        }
    }

    HI_UNF_DISP_AttachIntf(HI_UNF_DISPLAY1, stIntf_disp1, u32ValidCnt_disp1);
    HI_UNF_DISP_AttachIntf(HI_UNF_DISPLAY0, stIntf_disp0, u32ValidCnt_disp0);
    return -1;
}

int detach_intf(void)
{
    HI_UNF_DISP_INTF_S stIntf_disp0[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_UNF_DISP_INTF_S stIntf_disp1[HI_UNF_DISP_INTF_TYPE_BUTT];
    HI_U32 u32ValidCnt_disp0, u32ValidCnt_disp1;
    HI_UNF_PDM_DISP_PARAM_S stParam_disp0, stParam_disp1;
    HI_UNF_DISP_INTF_S *pstParamIntf0, *pstParamIntf1;
    HI_S32 s32Ret;
    HI_U32 u32Cnt;

    memset(stIntf_disp1, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
    memset(stIntf_disp0, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
    for (u32Cnt = 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        stIntf_disp1[u32Cnt].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
        stIntf_disp0[u32Cnt].enIntfType = HI_UNF_DISP_INTF_TYPE_BUTT;
    }
    s32Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stParam_disp1);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    pstParamIntf1 = stParam_disp1.stIntf;
    for (u32Cnt = 0, u32ValidCnt_disp1= 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        if (pstParamIntf1[u32Cnt].enIntfType != HI_UNF_DISP_INTF_TYPE_BUTT
            && pstParamIntf1[u32Cnt].enIntfType == u32Cnt)
        {
            memcpy(&(stIntf_disp1[u32ValidCnt_disp1]),
                   &(pstParamIntf1[u32Cnt]),
                   sizeof(HI_UNF_DISP_INTF_S));
            u32ValidCnt_disp1++;
        }
    }
    s32Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP0, &stParam_disp0);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }
    pstParamIntf0 = stParam_disp0.stIntf;
    for (u32Cnt = 0, u32ValidCnt_disp0 = 0; u32Cnt < HI_UNF_DISP_INTF_TYPE_BUTT; u32Cnt++)
    {
        if (pstParamIntf0[u32Cnt].enIntfType != HI_UNF_DISP_INTF_TYPE_BUTT
            && pstParamIntf0[u32Cnt].enIntfType == u32Cnt)
        {
            memcpy(&(stIntf_disp0[u32ValidCnt_disp0]),
                   &(pstParamIntf0[u32Cnt]),
                   sizeof(HI_UNF_DISP_INTF_S));
            u32ValidCnt_disp0++;
        }
    }

    HI_UNF_DISP_DetachIntf(HI_UNF_DISPLAY1, stIntf_disp1, u32ValidCnt_disp1);
    HI_UNF_DISP_DetachIntf(HI_UNF_DISPLAY0, stIntf_disp0, u32ValidCnt_disp0);
    return -1;
}

static int baseparam_get(void *data, baseparam_option_e flag, int enDisp)
{
    int ret = -1;

    HI_UNF_PDM_DISP_PARAM_S baseParam;
    memset(&baseParam,0,sizeof(HI_UNF_PDM_DISP_PARAM_S));

    ret = HI_UNF_PDM_GetBaseParam(enDisp, &baseParam);
    if(ret != HI_SUCCESS)
    {
        ALOGE("GetBaseParam Err--- %p", (void*)ret);
        return ret;
    }

    switch(flag)
    {
        case  FORMAT:
            memcpy(data, &(baseParam.enFormat), sizeof(HI_UNF_ENC_FMT_E));
            break;
        case  BRIGHTNESS:
            memcpy(data, &(baseParam.u32Brightness), sizeof(HI_U32));
            break;
        case  CONTRAST:
            memcpy(data, &(baseParam.u32Contrast), sizeof(HI_U32));
            break;
        case  SATURATION:
            memcpy(data, &(baseParam.u32Saturation), sizeof(HI_U32));
            break;
        case  HUEPLUS:
            memcpy(data, &(baseParam.u32HuePlus), sizeof(HI_U32));
            break;
        case  GAMMAENABLE:
            memcpy(data, &(baseParam.bGammaEnable), sizeof(HI_BOOL));
            break;
        case  STBGCOLOR:
            memcpy(data, &(baseParam.stBgColor), sizeof(HI_UNF_DISP_BG_COLOR_S));
            break;
        case  STINTF:
            memcpy(data, baseParam.stIntf, sizeof(baseParam.stIntf));
            break;
        case  STDISPTIMING:
            memcpy(data, &(baseParam.stDispTiming), sizeof(HI_UNF_DISP_TIMING_S));
            break;
        case  STASPECTRATIO:
            memcpy(data, &(baseParam.stAspectRatio), sizeof(HI_UNF_DISP_ASPECT_RATIO_S));
            break;
        default:
            break;
   }
   return ret;
}

int open_display_channel()
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_Open(HI_UNF_DISP_HD0);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_Open failed!");
    }

#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_Open(HI_UNF_DISP_SD0);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_Open failed!");
    }
#endif
    return ret;
}

int close_display_channel()
{
    HI_S32 ret = HI_SUCCESS;

#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_Close(HI_UNF_DISP_SD0);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_Close failed!");
    }
#endif

    ret = HI_UNF_DISP_Close(HI_UNF_DISP_HD0);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_Close failed!");
    }
    return ret;
}

int get_brightness(int *brightness)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetBrightness(HI_UNF_DISP_HD0,(HI_U32 *)brightness);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetBrightness failed, ret = %x!", ret);
    }
    return ret;
}

int set_brightness(int brightness)
{
    HI_S32 ret = HI_SUCCESS;

    if((brightness > 100) || (brightness < 0)) {
        ALOGE("set value exceed limits");
        return -1;
    }

    ret = HI_UNF_DISP_SetBrightness(HI_UNF_DISP_HD0, brightness);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetBrightness failed, ret = %x!", ret);
    }
#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_SetBrightness(HI_UNF_DISP_SD0, brightness);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_SetBrightness failed, ret = %x!", ret);
    }
#endif

    if (HI_SUCCESS == ret) {
        baseparam_set(&brightness, BRIGHTNESS);
    }
    return ret;
}

int get_contrast(int *contrast)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetContrast(HI_UNF_DISP_HD0, (HI_U32 *)contrast);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetContrast failed!");
    }

    return ret;
}

int set_contrast(int contrast)
{
    HI_S32 ret = HI_SUCCESS;

    if((contrast > 100) || (contrast < 0)) {
        ALOGE("set value exceed limits");
        return -1;
    }

    ret = HI_UNF_DISP_SetContrast(HI_UNF_DISP_HD0, contrast);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetContrast failed!");
    }
#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_SetContrast(HI_UNF_DISP_SD0, contrast);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_SetContrast failed!");
    }
#endif

    if (HI_SUCCESS == ret) {
        baseparam_set(&contrast, CONTRAST);
    }
    return ret;
}

int get_saturation(int *saturation)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetSaturation(HI_UNF_DISP_HD0, (HI_U32 *)saturation);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetSaturation failed!");
    }

    return ret;
}

int set_saturation(int saturation)
{
    HI_S32 ret = HI_SUCCESS;

    if((saturation > 100) || (saturation < 0)) {
        ALOGE("set value exceed limits");
        return -1;
    }

    ret = HI_UNF_DISP_SetSaturation(HI_UNF_DISP_HD0, saturation);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetSaturation failed!");
    }
#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_SetSaturation(HI_UNF_DISP_SD0, saturation);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_SetContrast failed!");
    }
#endif

    if (HI_SUCCESS == ret) {
        baseparam_set(&saturation, SATURATION);
    }
    return ret;
}

int get_hue(int *hue)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetHuePlus(HI_UNF_DISP_HD0, (HI_U32 *)hue);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetHuePlus failed!");
    }

    return ret;
}

int set_hue(int hue)
{
    HI_S32 ret = HI_SUCCESS;

    if((hue > 100) || (hue < 0)) {
        ALOGE("set value exceed limits");
        return -1;
    }

    ret = HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_HD0, hue);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetHuePlus failed!");
    }
#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_SetHuePlus(HI_UNF_DISP_SD0, hue);
    if (HI_SUCCESS != ret)
    {
        ALOGE("SD HI_UNF_DISP_SetContrast failed!");
    }
#endif

    if (HI_SUCCESS == ret) {
        baseparam_set(&hue, HUEPLUS);
    }
    return ret;
}

int get_format(display_format_e *format)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0,(HI_UNF_ENC_FMT_E *)format);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetFormat failed!");
    }
    return ret;
}

#ifdef TURN_ON_SD0
int outrange_trans(HI_UNF_DISP_OFFSET_S *hd, HI_UNF_DISP_OFFSET_S *sd)
{
    int ret = -1;

    HI_UNF_ENC_FMT_E  fmt_hd;
    HI_UNF_ENC_FMT_E  fmt_sd;
    ret = HI_UNF_DISP_GetFormat(HI_UNF_DISP_HD0, &fmt_hd);
    ret = HI_UNF_DISP_GetFormat(HI_UNF_DISP_SD0, &fmt_sd);

    if(fmt_sd == HI_UNF_ENC_FMT_NTSC || fmt_sd == HI_UNF_ENC_FMT_PAL)
    {
        sd->u32Left      =   hd->u32Left/2;
        sd->u32Top       =   hd->u32Top/2;
        sd->u32Right     =   hd->u32Right/2;
        sd->u32Bottom    =   hd->u32Bottom/2;
    }

    if(fmt_sd == fmt_hd)
    {
        *sd = *hd;
    }

    ALOGI_IF(DISPLAY_DEBUG, "%s[%d], sd[%d,%d,%d,%d], hd[%d,%d,%d,%d]", __func__, __LINE__,
            sd->u32Left, sd->u32Top, sd->u32Right, sd->u32Bottom,
            hd->u32Left, hd->u32Top, hd->u32Right, hd->u32Bottom
         );

    return HI_SUCCESS;
}
#endif

int get_screen_orientation()
{
    char buffer[PROPERTY_LEN];
    memset(buffer, 0, sizeof(buffer));
    property_get("persist.sys.screenorientation", buffer, "landscape");
    int cmpRet = strcmp("landscape", buffer);
    if (cmpRet == 0)
    {
        return 0;  // landscape
    }
    else
    {
        return 1; // portrait
    }
}

int set_graphic_out_range(int l, int t, int r, int b)
{
    ALOGD("set_graphic_out_range: left=%d, top=%d, right=%d, bottom=%d", l, t, r, b);
    if (l > MAX_OFFSET_HD || t > MAX_OFFSET_HD || r > MAX_OFFSET_HD || b > MAX_OFFSET_HD
        || l < MIN_OFFSET_HD || t < MIN_OFFSET_HD || r < MIN_OFFSET_HD || b < MIN_OFFSET_HD)
    {
        ALOGE("Illegal parameters: out max or min range.");
        return -1;
    }

    //sdk interface need OFFSET_STRIDE
    //l -= l%OFFSET_STRIDE;
    //t -= t%OFFSET_STRIDE;
    //r -= r%OFFSET_STRIDE;
    //b -= b%OFFSET_STRIDE;

    int ret = -1;

    HI_UNF_DISP_OFFSET_S offsethd;
    memset(&offsethd, 0 , sizeof(HI_UNF_DISP_OFFSET_S));

    if (get_screen_orientation() == 0)
    {  // landscape
        offsethd.u32Left = l;
        offsethd.u32Top = t;
        offsethd.u32Right = r;
        offsethd.u32Bottom = b;
    }
    else
    {  // portrait
        offsethd.u32Left = b;
        offsethd.u32Top = l;
        offsethd.u32Right = t;
        offsethd.u32Bottom = r;
    }

#ifdef TURN_ON_SD0
    HI_UNF_DISP_OFFSET_S offsetsd;
    /* Transform sd offset from hd offset for PAL/NTSC format. */
    ret = outrange_trans(&offsethd, &offsetsd);
#endif

    ret = HI_UNF_DISP_SetScreenOffset(HI_UNF_DISP_HD0, &offsethd);
    if (HI_SUCCESS != ret)
    {
        ALOGE("set out range failed! err: %d", ret);
        return ret;
    }

#ifdef TURN_ON_SD0
    ret = HI_UNF_DISP_SetScreenOffset(HI_UNF_DISP_SD0, &offsetsd);
    if (HI_SUCCESS != ret)
    {
        ALOGE("set out range failed! err: %d", ret);
        return ret;
    }
#endif

    /* Save the offset in baseParams of "DISPLAY1"/"DISPLAY0" separatelly */
    int pos[4];

    pos[0] = offsethd.u32Left;
    pos[1] = offsethd.u32Top;
    pos[2] = offsethd.u32Right;
    pos[3] = offsethd.u32Bottom;
    baseparam_disp_set(pos, RANGE, HI_UNF_DISP_HD0 );

#ifdef TURN_ON_SD0
    pos[0] = offsetsd.u32Left;
    pos[1] = offsetsd.u32Top;
    pos[2] = offsetsd.u32Right;
    pos[3] = offsetsd.u32Bottom;
    baseparam_disp_set(pos, RANGE, HI_UNF_DISP_SD0 );
#endif

    return HI_SUCCESS;
}

int get_graphic_out_range(int *l, int *t, int *r, int *b)
{
    HI_UNF_DISP_OFFSET_S  offset;
    int ret = HI_SUCCESS;
    ret = HI_UNF_DISP_GetScreenOffset(HI_UNF_DISP_HD0, &offset);
    if(ret != HI_SUCCESS)
    {
        ALOGE("get out range failed! err:%d", ret);
        return ret;
    }

    if (get_screen_orientation() == 0)
    {  // landscape
        *l = offset.u32Left;
        *t = offset.u32Top;
        *r = offset.u32Right;
        *b = offset.u32Bottom;
    }
    else
    {  // portrait
        *l = offset.u32Top;
        *t = offset.u32Right;
        *r = offset.u32Bottom;
        *b = offset.u32Left;
    }
    return HI_SUCCESS;
}

void store_format(display_format_e format, display_format_e format_sd)
{
    ALOGE("Display:store_format format is %d, format_sd is %d", (int)format, (int)format_sd);
    if ((format >= DISPLAY_FMT_BUTT) || (format_sd >= DISPLAY_FMT_BUTT))
    {
        ALOGE("no such format");
        return;
    }

    char buffer[BUFLEN];
    property_get("persist.sys.qb.enable", buffer, "false");
    if(buffer != NULL && (strcmp(buffer,"true")==0))
    {
        int pos[4];
        get_graphic_out_range(&pos[0], &pos[1], &pos[2], &pos[3]);
        set_graphic_out_range(pos[0], pos[1], pos[2], pos[3]);
        baseparam_set(&format, FORMAT);
        mFormat = format;
    }
    else
    {
        if(mFormat != format)
        {
            int pos[4];
            get_graphic_out_range(&pos[0], &pos[1], &pos[2], &pos[3]);
            set_graphic_out_range(pos[0], pos[1], pos[2], pos[3]);

            baseparam_disp_set(&format, FORMAT, HI_UNF_DISP_HD0);
#ifdef TURN_ON_SD0
            baseparam_disp_set(&format_sd, FORMAT, HI_UNF_DISP_SD0);
#endif

            mFormat = format;
        }
    }
}

int set_format(display_format_e format)
{
    /* we do not support format of VGA. */
    HI_S32 ret = HI_SUCCESS;
    int format_sd = HI_UNF_ENC_FMT_PAL;

    ALOGE("Display:set_format format is %d",(int)format);
    if(format >= DISPLAY_FMT_BUTT)
    {
        ALOGE("set format exceed limits");
        return -1;
    }

#ifndef TURN_ON_SD0
    ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, (HI_UNF_ENC_FMT_E)format);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetFormat failed!");
        return ret;
    }
#else
    if(format <= DISPLAY_FMT_480P_60) {
        if ((DISPLAY_FMT_1080P_60 == format) || (DISPLAY_FMT_1080i_60 == format)
            || (DISPLAY_FMT_1080P_24 == format) || (DISPLAY_FMT_1080P_30 == format)
            || (DISPLAY_FMT_720P_60 == format) || (DISPLAY_FMT_480P_60 == format)) {
            format_sd = HI_UNF_ENC_FMT_NTSC;
        } else {
            format_sd = HI_UNF_ENC_FMT_PAL;
        }
    } else if( (format >= DISPLAY_FMT_PAL) && (format <= DISPLAY_FMT_PAL_Nc) ) {
        format_sd = HI_UNF_ENC_FMT_PAL;
    } else if( (format >= DISPLAY_FMT_NTSC) && (format <= DISPLAY_FMT_NTSC_PAL_M) ) {
        format_sd = HI_UNF_ENC_FMT_NTSC;
    } else if( (format == DISPLAY_FMT_1080P_24_FRAME_PACKING) || (format == DISPLAY_FMT_720P_60_FRAME_PACKING) ) {
        format_sd = HI_UNF_ENC_FMT_NTSC;
    } else if( (format == DISPLAY_FMT_720P_50_FRAME_PACKING) ) {
        format_sd = HI_UNF_ENC_FMT_PAL;
    } else if( format >= DISPLAY_FMT_3840X2160_24 ) {
        if ((DISPLAY_FMT_3840X2160_25 == format) || (DISPLAY_FMT_3840X2160_50 == format)
            || (DISPLAY_FMT_4096X2160_25 == format) || (DISPLAY_FMT_4096X2160_50 == format)) {
            format_sd = HI_UNF_ENC_FMT_PAL;
        } else {
            format_sd = HI_UNF_ENC_FMT_NTSC;
        }
    } else {
        format_sd = HI_UNF_ENC_FMT_NTSC;
    }

    const HI_U32 channel_num = 2;
    HI_UNF_DISP_ISOGENY_ATTR_S isogeny_attr[channel_num];
    memset(isogeny_attr, 0, sizeof(HI_UNF_DISP_ISOGENY_ATTR_S) * channel_num);
    isogeny_attr[0].enDisp = HI_UNF_DISP_HD0;
    isogeny_attr[0].enFormat = (HI_UNF_ENC_FMT_E)format;
    isogeny_attr[1].enDisp = HI_UNF_DISP_SD0;
    isogeny_attr[1].enFormat = (HI_UNF_ENC_FMT_E)format_sd;

    ret = HI_UNF_DISP_SetIsogenyAttr(isogeny_attr, channel_num);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_SetIsogenyAttr Err--- %p", (void*)ret);
        return ret;
    }
#endif

    store_format((display_format_e)format, (display_format_e)format_sd);
    char tmp[92] = "";
    property_get("ro.product.target",tmp,"");
    if(strcmp(tmp,"unicom")==0||strcmp(tmp,"telecom")==0)
        setTVproperty();
    return HI_SUCCESS;
}

int get_hdmi_capability(int *hdmi_sink_cap)
{
    int ret = -1;
    HI_UNF_EDID_BASE_INFO_S sinkCap;
    ret = HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_0,&sinkCap);
    ALOGE("display:get_hdmi_capability,ret is %d",ret);
    int count = 0;
    hdmi_sink_cap[0] = sinkCap.st3DInfo.bSupport3D;
    count += 1;

    int i = 0;
    for(i = 0; i <= HI_UNF_ENC_FMT_VESA_2560X1600_60_RB; i++)
    {
        if (i >= HI_UNF_ENC_FMT_BUTT)
        {
            break;
        }
        hdmi_sink_cap[i + count] = (int)sinkCap.bSupportFormat[i];
    }

    //HI_UNF_ENC_FMT_3840X2160_24 = 0x100,
    //HI_UNF_ENC_FMT_3840X2160_25,
    //HI_UNF_ENC_FMT_3840X2160_30,
    //HI_UNF_ENC_FMT_3840X2160_50,
    //HI_UNF_ENC_FMT_3840X2160_60,
    //HI_UNF_ENC_FMT_4096X2160_24,
    //HI_UNF_ENC_FMT_4096X2160_25,
    //HI_UNF_ENC_FMT_4096X2160_30,
    //HI_UNF_ENC_FMT_4096X2160_50,
    //HI_UNF_ENC_FMT_4096X2160_60,
    int j = 0;
    for(j = 0; j < (HI_UNF_ENC_FMT_4096X2160_60 - HI_UNF_ENC_FMT_3840X2160_24 + 1); j++)
    {
        if ((HI_UNF_ENC_FMT_3840X2160_24 + j) >= HI_UNF_ENC_FMT_BUTT)
        {
            break;
        }
        hdmi_sink_cap[i + count + j] =
                (int)sinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_24 + j];
    }

    //HI_UNF_ENC_FMT_3840X2160_23_976,
    //HI_UNF_ENC_FMT_3840X2160_29_97,
    //HI_UNF_ENC_FMT_720P_59_94,
    //HI_UNF_ENC_FMT_1080P_59_94,
    //HI_UNF_ENC_FMT_1080P_29_97,
    //HI_UNF_ENC_FMT_1080P_23_976,
    //HI_UNF_ENC_FMT_1080i_59_94,
    int k = 0;
    for(k = 0; k < (HI_UNF_ENC_FMT_1080i_59_94 - HI_UNF_ENC_FMT_3840X2160_23_976 + 1); k++)
    {
        if ((HI_UNF_ENC_FMT_3840X2160_23_976 + k) >= HI_UNF_ENC_FMT_BUTT)
        {
            break;
        }
        hdmi_sink_cap[i + count + j + k] =
                (int)sinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_23_976 + k];
    }

    return ret;
}
int get_manufacture_info(char * frsname, char * sinkname,int *productcode, int *serianumber,
     int *week, int *year, int *TVHight, int *TVWidth)
{
        ALOGE("<<<<<<Manufacture Infomation>>>>>>\n");
        HI_S32 ret = HI_SUCCESS;
        HI_UNF_EDID_BASE_INFO_S gtSinkCap;
        memset(&gtSinkCap, 0, sizeof(HI_UNF_EDID_BASE_INFO_S));

        int Ret = HI_UNF_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_0, &gtSinkCap);
        if(ret != HI_SUCCESS)
        {
                ALOGE("Get Manufacture failure!\n");
                return HI_FAILURE;
        }

        strcpy(frsname, (char *)gtSinkCap.stMfrsInfo.u8MfrsName);
        strcpy(sinkname, (char *)gtSinkCap.stMfrsInfo.u8pSinkName);
        *serianumber = gtSinkCap.stMfrsInfo.u32SerialNumber;
        *productcode = gtSinkCap.stMfrsInfo.u32ProductCode;
        *week = gtSinkCap.stMfrsInfo.u32Week;
        *year = gtSinkCap.stMfrsInfo.u32Year;
        *TVHight = (int) TVHMax;
        *TVWidth = (int) TVWMax;

        ALOGE("Manufacture Name:%s, Sink Name:%s, Product Code:%d, Serial Number:%d,Manufacture Week:%d, \
                                          Manufacture Year:%d,TV Size:W%d,H%d \n",frsname,sinkname,*productcode,*serianumber,*week,*year,*TVWidth,*TVHight);
        return HI_SUCCESS;
}

/*
static inline int setHdmi(HI_UNF_HDMI_ID_E hdmi_id, HI_BOOL b3DEnable, short  u83DFormat)
{
    HI_U32 Ret = HI_SUCCESS;
    HI_UNF_HDMI_ATTR_S attr;

    HI_UNF_HDMI_OPEN_PARA_S stOpenParam;

    stOpenParam.enDefaultMode = HI_UNF_HDMI_DEFAULT_ACTION_HDMI;

    Ret = HI_UNF_HDMI_Open(hdmi_id, &stOpenParam);
    if (Ret != HI_SUCCESS)
    {
        ALOGI("HI_UNF_HDMI_Open failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }

    ALOGI_IF(DISPLAY_DEBUG,"HI_UNF_HDMI_Open ok!!!:\n");

    Ret = HI_UNF_HDMI_GetAttr(hdmi_id, &attr);
    if (HI_SUCCESS != Ret)
    {
        ALOGI("HI_UNF_HDMI_GetAttr failed+==========.\n");
        return Ret;
    }
    HI_UNF_HDMI_SetAVMute(hdmi_id, HI_TRUE);


    attr.b3DEnable = b3DEnable;
    attr.u83DParam = u83DFormat;

    Ret = HI_UNF_HDMI_SetAttr(hdmi_id, &attr);
    if (HI_SUCCESS != Ret)
    {
        ALOGI("HI_UNF_HDMI_SetAttr failed+==========.\n");
        return Ret;
    }

    Ret = HI_UNF_HDMI_Start(hdmi_id);
    if (HI_SUCCESS != Ret)
    {
        ALOGI("HI_UNF_HDMI_Start failed+==========.\n");
        return Ret;
    }

    Ret = HI_UNF_HDMI_GetAttr(hdmi_id, &attr);
    ALOGI_IF(DISPLAY_DEBUG, "AS HI_UNF_HDMI_GetAttr: b3DEnable: %d, u83DParam: %d\n", attr.b3DEnable, attr.u83DParam);

    HI_UNF_HDMI_SetAVMute(hdmi_id, HI_FALSE);
    return Ret;
}
*/
int get_macro_vision(display_macrovision_mode_e *macrovision_mode)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_GetMacrovision(HI_UNF_DISP_HD0, (HI_UNF_DISP_MACROVISION_MODE_E *)macrovision_mode,NULL);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_DISP_GetMacrovision failed!");
    }
    return ret;
}

int set_macro_vision(display_macrovision_mode_e macrovision_mode)
{
    HI_S32 ret = HI_SUCCESS;

    ret = HI_UNF_DISP_SetMacrovision(HI_UNF_DISP_HD0, (HI_UNF_DISP_MACROVISION_MODE_E)macrovision_mode,NULL);
    if (HI_SUCCESS != ret)
    {
        ALOGE("HD HI_UNF_DISP_SetMacrovision failed!");
    }

    return ret;
}

int set_hdcp(int  mode)
{
    HI_UNF_HDMI_ATTR_S stAttr;
    HI_S32 ret = HI_UNF_HDMI_GetAttr(HI_UNF_HDMI_ID_0, &stAttr);

    if(HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_HDMI_GetAttr failed !");
        return ret;
    }

    stAttr.bHDCPEnable = (HI_BOOL)mode;

    ret = HI_UNF_HDMI_SetAttr(HI_UNF_HDMI_ID_0, &stAttr);

    if(HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_HDMI_SetAttr failed !");
        return ret;
    }

    return ret;
}

int get_hdcp()
{
    HI_UNF_HDMI_ATTR_S stAttr;
    HI_S32 ret = HI_UNF_HDMI_GetAttr(HI_UNF_HDMI_ID_0, &stAttr);

    if(HI_SUCCESS != ret)
    {
        ALOGE("HI_UNF_HDMI_GetAttr failed !");
        return ret;
    }
    return stAttr.bHDCPEnable;
}

int set_stereo_outmode(int mode, int videofps)
{
    HI_S32 ret = -1;
    display_format_e currFmt;
    HI_UNF_ENC_FMT_E tmpFmt;
    HI_UNF_DISP_3D_E en3d = HI_UNF_DISP_3D_NONE;
    ALOGE("set_stereo_outmode, mode = %d, videofps = %d ", mode, videofps);

    if(mode > HI_UNF_DISP_3D_TOP_AND_BOTTOM)
    {
        ALOGE("set_stereo_outmode, error mode = %d !", mode);
        return -1;
    }

    ret = get_format(&currFmt);
    if(ret != HI_SUCCESS || currFmt >= DISPLAY_FMT_BUTT)
    {
        ALOGE("get 2d format err %s(%d)", __func__, __LINE__);
        return -1;
    }
    ALOGE("set_stereo_outmode, current format = %d, ", currFmt);

    switch(mode)
    {
        case HI_UNF_DISP_3D_NONE:
            //2d mode
            tmpFmt = (HI_UNF_ENC_FMT_E)currFmt;
            if( currFmt <= DISPLAY_FMT_1080i_50 ) { //1080P
                if(videofps == 23) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_24])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_23_976;
                } else if(videofps == 24) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_24])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_24;
                } else if(videofps == 25) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_25])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_25;
                } else if(videofps == 29) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_30])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_29_97;
                } else if(videofps == 30) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_30])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_30;
                } else if(videofps == 59) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_60])
                        tmpFmt = HI_UNF_ENC_FMT_1080P_59_94;
                } else {
                    tmpFmt = (HI_UNF_ENC_FMT_E)mFormat;
                }
            } else if( (currFmt >= DISPLAY_FMT_3840X2160_24) && (currFmt <= DISPLAY_FMT_3840X2160_29_97)) { //4K
                if(videofps == 23) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_24])
                        tmpFmt = HI_UNF_ENC_FMT_3840X2160_23_976;
                } else if(videofps == 24) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_24])
                        tmpFmt = HI_UNF_ENC_FMT_3840X2160_24;
                } else if(videofps == 25) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_25])
                        tmpFmt = HI_UNF_ENC_FMT_3840X2160_25;
                } else if(videofps == 29) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_30])
                        tmpFmt = HI_UNF_ENC_FMT_3840X2160_29_97;
                } else if(videofps == 30) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_30])
                        tmpFmt = HI_UNF_ENC_FMT_3840X2160_30;
                } else {
                    tmpFmt = (HI_UNF_ENC_FMT_E)mFormat;
                }
            } else if( (currFmt == DISPLAY_FMT_720P_50) || (currFmt == DISPLAY_FMT_720P_60)) { //720P
                if(videofps == 59) {
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_60])
                        tmpFmt = HI_UNF_ENC_FMT_720P_59_94;
                } else {
                    tmpFmt = (HI_UNF_ENC_FMT_E)mFormat;
                }
            } else {
                tmpFmt = (HI_UNF_ENC_FMT_E)mFormat;
            }
            ALOGE("set_stereo_outmode, tmpFmt = %d, current mode = %d", tmpFmt, (int)mStereoMode);
            if (((HI_UNF_ENC_FMT_E)currFmt == tmpFmt) && (mStereoMode == mode))
            {
                return -1;
            }
            ALOGE("Set Disp to 2D mode, fmt = %d !", tmpFmt);
            ret = HI_UNF_DISP_SetFormat(HI_UNF_DISP_HD0, tmpFmt);
            if(ret != HI_SUCCESS) {
                ALOGE("HI_UNF_DISP_SetFormat, err = 0x%x ", ret);
                return -1;
            }
            mFormat = (display_format_e)tmpFmt;
            mStereoMode = mode;
            break;

        case HI_UNF_DISP_3D_FRAME_PACKING:
            en3d = HI_UNF_DISP_3D_FRAME_PACKING;

            //base videofps choose 3d format
            if(videofps == 25) {
                tmpFmt = HI_UNF_ENC_FMT_720P_50_FRAME_PACKING;
            } else if(videofps == 30) {
                tmpFmt = HI_UNF_ENC_FMT_720P_60_FRAME_PACKING;
            } else {
                if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_24])
                    tmpFmt = HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING;
                else
                    tmpFmt = HI_UNF_ENC_FMT_720P_60_FRAME_PACKING;
            }
            break;

        case HI_UNF_DISP_3D_SIDE_BY_SIDE_HALF:
            en3d = HI_UNF_DISP_3D_SIDE_BY_SIDE_HALF;

            //SBS only support 1080i
            if( (currFmt == DISPLAY_FMT_3840X2160_25)
                || (currFmt == DISPLAY_FMT_1080P_50)
                || (currFmt == DISPLAY_FMT_1080i_50)
                || (currFmt == DISPLAY_FMT_720P_50) ) {
                if(videofps == 24)
                    tmpFmt = DISPLAY_FMT_1080i_60;
                else if(videofps == 25)
                    tmpFmt = DISPLAY_FMT_1080i_50;
                else if(videofps == 30)
                    tmpFmt = DISPLAY_FMT_1080i_60;
                else
                    tmpFmt = DISPLAY_FMT_1080i_50;
            } else {
                if(videofps == 24)
                    tmpFmt = DISPLAY_FMT_1080i_60;
                else if(videofps == 25)
                    tmpFmt = DISPLAY_FMT_1080i_50;
                else if(videofps == 30)
                    tmpFmt = DISPLAY_FMT_1080i_60;
                else
                    tmpFmt = DISPLAY_FMT_1080i_60;
            }
            break;

        case HI_UNF_DISP_3D_TOP_AND_BOTTOM:
            en3d = HI_UNF_DISP_3D_TOP_AND_BOTTOM;

            //TAB only support 720P/1080P24Hz
            if( (currFmt == DISPLAY_FMT_3840X2160_25)
                || (currFmt == DISPLAY_FMT_1080P_50)
                || (currFmt == DISPLAY_FMT_1080i_50)
                || (currFmt == DISPLAY_FMT_720P_50) ) {
                if(videofps == 24)
                    tmpFmt = DISPLAY_FMT_1080P_24;
                else if(videofps == 25)
                    tmpFmt = DISPLAY_FMT_720P_50;
                else if(videofps == 30)
                    tmpFmt = DISPLAY_FMT_720P_60;
                else
                    tmpFmt = DISPLAY_FMT_720P_50;
            } else {
                if(videofps == 24)
                    tmpFmt = DISPLAY_FMT_1080P_24;
                else if(videofps == 25)
                    tmpFmt = DISPLAY_FMT_720P_50;
                else if(videofps == 30)
                    tmpFmt = DISPLAY_FMT_720P_60;
                else
                    tmpFmt = DISPLAY_FMT_720P_60;
            }
            break;

        default:
            ALOGE("mode error, mode = %d !", mode);
            break;
    }

    if(en3d > HI_UNF_DISP_3D_NONE) {
        ALOGE("set_stereo_outmode, tmpFmt = %d, current mode = %d", tmpFmt, (int)mStereoMode);
        if (((HI_UNF_ENC_FMT_E)currFmt == tmpFmt) && (mStereoMode == en3d))
        {
            return -1;
        }
        ALOGE("Set Disp to 3D mode, fmt = %d, en3d = %d !", tmpFmt, en3d);
        ret = HI_UNF_DISP_Set3DMode(HI_UNF_DISP_HD0 , en3d, tmpFmt);
        if(ret != HI_SUCCESS) {
            ALOGE("Set 3d Mode err %s(%d)", __func__, __LINE__);
            return -1;
        }
        mStereoMode = en3d;
    }

    return ret;
}

int get_stereo_outmode()
{
    return mStereoMode;
}

int restore_stereo_mode()
{
    ALOGI_IF(DISPLAY_DEBUG, " reset stereo mode enter %s(%d)", __func__, __LINE__);
    int caps [1+HI_UNF_ENC_FMT_BUTT] = {-1};
    int ret = -1;
    ret = get_hdmi_capability(caps);
    if(ret != HI_SUCCESS)
    {
        return ret ;
    }

    int valid_3d = caps[0];

    if(valid_3d == HI_UNF_DISP_3D_FRAME_PACKING)
    {
        ret = set_stereo_outmode(HI_UNF_DISP_3D_FRAME_PACKING, 30);
    } else if(valid_3d == HI_UNF_DISP_3D_NONE){
        ret = set_stereo_outmode(HI_UNF_DISP_3D_NONE, 0);
    }
    return ret;
}

int set_righteye_first(int Outpriority)
{
    HI_S32 ret = -1;
    HI_BOOL RFirst = HI_FALSE;
    if((HI_BOOL)Outpriority == LEFT_EYE)
    {
        RFirst = HI_FALSE;
        eye_priority = LEFT_EYE;
    }
    else if((HI_BOOL)Outpriority == RIGHT_EYE)
    {
        RFirst = HI_TRUE;
        eye_priority = RIGHT_EYE;
    }
    else
    {
        ALOGE("Invaild priority.");
        return -1;
    }

    ret = HI_UNF_DISP_SetRightEyeFirst(HI_UNF_DISP_HD0, RFirst);
    if(ret != HI_SUCCESS)
    {
        ALOGE("Set Stereo Priority Err %s(%d)", __func__, __LINE__);
        return -1;
    }
    return ret;
}

int get_righteye_first()
{
    return eye_priority;
}

int set_disp_ratio(int ratio, int enDisp)
{
    int ret = -1;
    HI_UNF_DISP_ASPECT_RATIO_S ratio_in;
    memset(&ratio_in, 0, sizeof(HI_UNF_DISP_ASPECT_RATIO_S));
    ratio_in.enDispAspectRatio = ratio;

#ifdef TURN_ON_SD0_XXXXXXX
    if(enDisp == HI_UNF_DISP_SD0 && ratio > HI_UNF_DISP_ASPECT_RATIO_4TO3)
    {
        ratio_in.enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_AUTO;
    }
#endif

    ret = HI_UNF_DISP_SetAspectRatio(enDisp, &ratio_in);
    if(ret != HI_SUCCESS)
    {
        ALOGE("Set Aspect Ratio failed!");
        return ret;
    }

    ret = baseparam_disp_set(&ratio_in, STASPECTRATIO, enDisp);
    if(ret != HI_SUCCESS)
    {
        ALOGE("Set up aspectratio failed");
    }
    return HI_SUCCESS;

}

int set_aspect_ratio(int ratio)
{

    int ret = -1;
    ret = set_disp_ratio(ratio, HI_UNF_DISP_HD0);

#ifdef TURN_ON_SD0
    ret = set_disp_ratio(ratio, HI_UNF_DISP_SD0);
#endif

    return ret;
}

int get_aspect_ratio()
{
    int ret = -1;
    HI_UNF_DISP_ASPECT_RATIO_S ratio;
    ratio.enDispAspectRatio = HI_UNF_DISP_ASPECT_RATIO_AUTO;

    ret = HI_UNF_DISP_GetAspectRatio(HI_UNF_DISP_HD0, &ratio);
    if(ret != HI_SUCCESS)
    {
        ALOGE("Acquire aspectratio failed");
    }
    return ratio.enDispAspectRatio;
}

int set_aspect_cvrs(int cvrs)
{
    int ret = -1;
    char  buffer[BUFLEN];
    sprintf(buffer,"%d", cvrs);
    ret = property_set("persist.sys.video.cvrs", buffer);

    return ret;
}

int get_aspect_cvrs()
{
    char buffer[BUFLEN];
    int value = -1;

    property_get("persist.sys.video.cvrs", buffer, "0");
    value = atoi(buffer);

    return value;
}

int set_optimal_format_enable(int able)//0 is disable; 1 is enable
{
    ALOGE("display:set_optimal_format_enable able is %d",able);
    int ret = setOptimalFormat(able);
    return ret;
}

int get_optimal_format_enable()//0 is disable; 1 is enable
{
    return getOptimalFormat();
}

void parseStringToIntArray(char* str, int *array)
{
    char* pStr = str;
    int *pArray = array;
    int value = 0;
    char  subStr[PROPERTY_LEN];
    unsigned int i = 0;
    unsigned int j = 0;
    memset(subStr, 0, PROPERTY_LEN);
    ALOGE("@@@@-->length is %d", strlen(str));
    for(i = 0; i < strlen(str); i++)
    {
        if(*pStr != ',')
        {
            subStr[j++] = *(pStr++);
        }
        else
        {
            subStr[j] = '\0';
            value = atoi(subStr);
            *(pArray++) = value;
            memset(subStr, 0, sizeof(subStr));
            pStr++;
            j = 0;
        }
    }
}

int reset()
{
    char buffer[PROPERTY_LEN];
    memset(buffer,0,PROPERTY_LEN);
    int Array[11] = {};
    property_get("persist.sys.display.param", buffer, "");
    ALOGD("reset: persist.sys.display.param = %s", buffer);
    if(buffer[0] == '\0')
    {
        return 0;
    }
    parseStringToIntArray(buffer,Array);
    set_virtual_screen(Array[0]);
    set_format((display_format_e)Array[1]);
    set_brightness(Array[2]);
    set_contrast(Array[3]);
    set_hue(Array[4]);
    set_saturation(Array[5]);
    set_graphic_out_range(Array[6],Array[7],Array[8],Array[9]);
    set_aspect_ratio(Array[10]);
    ALOGD("reset: ready to save base params");
    baseparam_save();
    ALOGD("reset: finish saving base params");
    return 0;
}

int reload()
{
    int ret = HI_FAILURE;
    HI_UNF_PDM_DISP_PARAM_S baseParam;
    int                      u32Brightness;
    int                      u32Contrast;
    int                      u32Saturation;
    int                      u32HuePlus;
    int                      u32DispOffset_l,u32DispOffset_t,u32DispOffset_r,u32DispOffset_b;
    int                      u32VirtScreenWidth;
    int                      u32VirtScreenType;
    HI_UNF_DISP_ASPECT_RATIO_S  stAspectRatio;
    display_format_e Format;

    ret = HI_UNF_PDM_GetBaseParam(HI_UNF_DISP_HD0, &baseParam);
    if(ret != HI_SUCCESS)
    {
        ALOGE("GetBaseParam Err--- %p", (void*)ret);
        return ret;
    }

    Format = (display_format_e)baseParam.enFormat;
    u32Brightness = baseParam.u32Brightness;
    u32Contrast = baseParam.u32Contrast;
    u32Saturation = baseParam.u32Saturation;
    u32HuePlus = baseParam.u32HuePlus;
    stAspectRatio = baseParam.stAspectRatio;
    u32DispOffset_l = baseParam.stDispOffset.u32Left;
    u32DispOffset_t = baseParam.stDispOffset.u32Top;
    u32DispOffset_r = baseParam.stDispOffset.u32Right;
    u32DispOffset_b = baseParam.stDispOffset.u32Bottom;
    u32VirtScreenWidth = baseParam.u32VirtScreenWidth;
    if(u32VirtScreenWidth == VIRSCREEN_W)
    {
        u32VirtScreenType = 0;
    }
    else
    {
        u32VirtScreenType = 1;
    }

    set_virtual_screen(u32VirtScreenType);
    //set_format(Format);
    set_brightness(u32Brightness);
    set_contrast(u32Contrast);
    set_hue(u32HuePlus);
    set_saturation(u32Saturation);
    set_graphic_out_range(u32DispOffset_l,u32DispOffset_t,u32DispOffset_r,u32DispOffset_b);
    set_aspect_ratio((int)stAspectRatio.enDispAspectRatio);
    return HI_SUCCESS;
}

//port: 0->HDMI, 1->CVBS
//enable: 0->disabled (close this port), 1->enabled (open this port)
int set_output_enable(int port, int enable)
{
    HI_S32 ret = HI_SUCCESS;
    ALOGD("set_output_enable, port=%d, enable=%d", port, enable);

    if (port != 0 && port != 1)
    {
        ALOGE("set_output_enable, only support HDMI & CVBS! port=%d", port);
        return -1;
    }
    if (enable != 0 && enable != 1)
    {
        ALOGE("set_output_enable, only support open or close! enable=%d", enable);
        return -1;
    }

    HI_UNF_DISP_INTF_S stIntf_disp;
    memset(&stIntf_disp, 0, sizeof(stIntf_disp));
    if (port == 0) //HDMI
    {
        stIntf_disp.enIntfType = HI_UNF_DISP_INTF_TYPE_HDMI;
        stIntf_disp.unIntf.enHdmi = hdmi_interface;
        if (enable == 0 && hdmi_enable == 1) //close
        {
            ret = HI_UNF_DISP_DetachIntf(HI_UNF_DISP_HD0, &stIntf_disp, 1);
            if (ret == HI_SUCCESS)
            {
                hdmi_enable = 0;
            }
            ALOGW("set_output_enable, close hdmi interface %d, ret=%p", hdmi_interface, (void*)ret);
        }
        else if (enable == 1 && hdmi_enable == 0) //open
        {
            ret = HI_UNF_DISP_AttachIntf(HI_UNF_DISP_HD0, &stIntf_disp, 1);
            if (ret == HI_SUCCESS)
            {
                hdmi_enable = 1;
            }
            ALOGW("set_output_enable, open hdmi interface %d, ret=%p", hdmi_interface, (void*)ret);
        }
        else
        {
            ALOGE("set_output_enable, no need to open/close hdmi interface %d", hdmi_interface);
        }
    }
    else //CVBS
    {
#ifdef TURN_ON_SD0
        stIntf_disp.enIntfType = HI_UNF_DISP_INTF_TYPE_CVBS;
        stIntf_disp.unIntf.stCVBS.u8Dac = cvbs_dac_port;
        if (enable == 0 && cvbs_enable == 1) //close
        {
            ret = HI_UNF_DISP_DetachIntf(HI_UNF_DISP_SD0, &stIntf_disp, 1);
            if (ret == HI_SUCCESS)
            {
                cvbs_enable = 0;
            }
            ALOGW("set_output_enable, close cvbs port %d, ret=%p", cvbs_dac_port, (void*)ret);
        }
        else if (enable == 1 && cvbs_enable == 0) //open
        {
            ret = HI_UNF_DISP_AttachIntf(HI_UNF_DISP_SD0, &stIntf_disp, 1);
            if (ret == HI_SUCCESS)
            {
                cvbs_enable = 1;
            }
            ALOGW("set_output_enable, open cvbs port %d, ret=%p", cvbs_dac_port, (void*)ret);
        }
        else
#endif
        {
            ALOGE("set_output_enable, no need to open/close cvbs port %d", cvbs_dac_port);
        }
    }

    return ret;
}

//port: 0->HDMI, 1->CVBS
//Return: 0->disabled, 1->enabled
int get_output_enable(int port)
{
    ALOGD("get_output_enable, port=%d", port);

    if (port != 0 && port != 1)
    {
        ALOGE("get_output_enable, only support HDMI & CVBS! port=%d", port);
        return -1;
    }

    if (port == 0) //HDMI
    {
        ALOGD("get_output_enable, enable of hdmi interface %d: %d", hdmi_interface, hdmi_enable);
        return hdmi_enable;
    }
    else //CVBS
    {
        ALOGD("get_output_enable, enable of cvbs port %d: %d", cvbs_dac_port, cvbs_enable);
        return cvbs_enable;
    }
}

int get_display_device_type()   // 0 is hdmi not connected, 1 is tv, 2 is pc
{
    ALOGE("get_display_device_type, device type = %d",displayType);
    return displayType;
}

int get_virtual_screen()
{
    HI_S32 Ret;
    HI_UNF_PDM_DISP_PARAM_S         stDispParam_disp1;

    Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stDispParam_disp1);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_GetBaseParam, Ret = %#x\n", Ret);
        return -1;
    }

    if (stDispParam_disp1.u32VirtScreenWidth == VIRSCREEN_W
        && stDispParam_disp1.u32VirtScreenHeight == VIRSCREEN_H)
    {
        return OUTFMT_720;
    } else if(stDispParam_disp1.u32VirtScreenWidth == VIRSCREEN_W_1080
        && stDispParam_disp1.u32VirtScreenHeight == VIRSCREEN_H_1080)
    {
        return OUTFMT_1080;
    } else {
        return -1;
    }
}

int get_virtual_screen_size(int *w, int *h)
{
    HI_S32 Ret;
    HI_UNF_PDM_DISP_PARAM_S         stDispParam_disp1;

    Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stDispParam_disp1);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_GetBaseParam, Ret = %#x\n", Ret);
        return -1;
    }

    *w = stDispParam_disp1.u32VirtScreenWidth;
    *h = stDispParam_disp1.u32VirtScreenHeight;

    return Ret;
}

int set_virtual_screen(int outFmt)
{
    HI_S32 Ret;
    HI_UNF_PDM_DISP_PARAM_S         stDispParam_disp0, stDispParam_disp1;

    Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP0, &stDispParam_disp0);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_GetBaseParam, Ret = %#x\n", Ret);
        return -1;
    }
    Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stDispParam_disp1);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_GetBaseParam, Ret = %#x\n", Ret);
        return -1;
    }

    if (outFmt == OUTFMT_720)
    {
        stDispParam_disp0.u32VirtScreenWidth = VIRSCREEN_W;
        stDispParam_disp0.u32VirtScreenHeight = VIRSCREEN_H;
        stDispParam_disp1.u32VirtScreenWidth = VIRSCREEN_W;
        stDispParam_disp1.u32VirtScreenHeight = VIRSCREEN_H;
    } else {
        stDispParam_disp0.u32VirtScreenWidth = VIRSCREEN_W_1080;
        stDispParam_disp0.u32VirtScreenHeight = VIRSCREEN_H_1080;
        stDispParam_disp1.u32VirtScreenWidth = VIRSCREEN_W_1080;
        stDispParam_disp1.u32VirtScreenHeight = VIRSCREEN_H_1080;
    }

    Ret = HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_DISP0, &stDispParam_disp0);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_UpdateBaseParam, Ret = %#x\n", Ret);
        return -1;
    }
    Ret = HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &stDispParam_disp1);
    if(HI_SUCCESS != Ret)
    {
        ALOGE("ERR: HI_UNF_PDM_UpdateBaseParam, Ret = %#x\n", Ret);
        return -1;
    }
    else
    {
        //sync customize property
        char buffer[PROPERTY_LEN];
        param_to_string(&stDispParam_disp1, buffer);
        property_set("persist.sys.display.customize", buffer);
    }

    return 0;
}

int set_hdmi_suspend_time(int iTime)
{
    ALOGE("--->set_hdmi_suspend_time: iTime is :%d",iTime);
    int ret = 0;
    ret = set_HDMI_Suspend_Time(iTime);
    return ret;
}

int get_hdmi_suspend_time()
{
    return get_HDMI_Suspend_Time();
}

int set_hdmi_suspend_enable(int iEnable)
{
    ALOGE("--->set_hdmi_suspend_enable: iEnable is :%d",iEnable);
    int ret = 0;
    ret = set_HDMI_Suspend_Enable(iEnable);
    return ret;
}

int get_hdmi_suspend_enable()
{
    return get_HDMI_Suspend_Enable();
}

void parseIntToString(char* str,int nValue)
{
    char temp[20] = {0,0,0,0};
    sprintf(temp, "%d", nValue);
    strcat(str,temp);
    strcat(str,",");
}

void param_to_string(HI_UNF_PDM_DISP_PARAM_S *baseParam, char* string)
{
    if(string == NULL) return;

    int                      u32Brightness;
    int                      u32Contrast;
    int                      u32Saturation;
    int                      u32HuePlus;
    int                      u32DispOffset_l,u32DispOffset_t,u32DispOffset_r,u32DispOffset_b;
    int                      u32VirtScreenWidth;
    int                      u32VirtScreenType;
    HI_UNF_DISP_ASPECT_RATIO_S  stAspectRatio;

    //1.1 Get the default value of factory param.
    u32Brightness = baseParam->u32Brightness;
    u32Contrast = baseParam->u32Contrast;
    u32Saturation = baseParam->u32Saturation;
    u32HuePlus = baseParam->u32HuePlus;
    stAspectRatio = baseParam->stAspectRatio;
    u32DispOffset_l = baseParam->stDispOffset.u32Left;
    u32DispOffset_t = baseParam->stDispOffset.u32Top;
    u32DispOffset_r = baseParam->stDispOffset.u32Right;
    u32DispOffset_b = baseParam->stDispOffset.u32Bottom;
    u32VirtScreenWidth = baseParam->u32VirtScreenWidth;
    if(u32VirtScreenWidth == VIRSCREEN_W) {
        u32VirtScreenType = 0;
    } else {
        u32VirtScreenType = 1;
    }

    //1.2 Parse param to string.
    memset(string, 0, PROPERTY_LEN);
    parseIntToString(string,u32VirtScreenType);
    parseIntToString(string,(int)mFormat);
    parseIntToString(string,u32Brightness);
    parseIntToString(string,u32Contrast);
    parseIntToString(string,u32HuePlus);
    parseIntToString(string,u32Saturation);
    parseIntToString(string,u32DispOffset_l);
    parseIntToString(string,u32DispOffset_t);
    parseIntToString(string,u32DispOffset_r);
    parseIntToString(string,u32DispOffset_b);
    parseIntToString(string,(int)stAspectRatio.enDispAspectRatio);
    return;
}

int called_by_displaysetting()
{
    FILE* file;
    int ret = -1;
    char cmdline[BUFLEN] = {0};
    char buffer[BUFLEN] = {0};

    int pid = getpid();
    snprintf(cmdline, sizeof(cmdline), "/proc/%d/cmdline", pid);

    file = fopen(cmdline, "r");
    if (file == NULL)
    {
        ALOGE("open file %s error.", cmdline);
        return ret;
    }

    if (fgets(buffer, sizeof(buffer), file) != NULL)
    {
        if (strstr(buffer, "displaysetting") != NULL) //Whether process name is /system/bin/displaysetting.
        {
            ALOGD("process name: %s", buffer);
            ret = 1;
        }
        else
        {
            ret = 0;
        }
    }

    fclose(file);
    return ret;
}

void checkScreenDPIConflict(int screenWidth, int screenHeight)
{
    char property[PROPERTY_VALUE_MAX];
    if (property_get("persist.sys.screen_density", property, NULL) <= 0) {
        property_get("ro.sf.lcd_density", property, NULL);
        if(1280 == screenWidth && 720 == screenHeight) {
            if (strcmp(property, "160") != 0) {
                property_set("persist.sys.screen_density", "160");
            }
        } else if (1920 == screenWidth && 1080 == screenHeight) {
            if (strcmp(property, "240") != 0 && strcmp(property, "320") != 0) {
                property_set("persist.sys.screen_density", "240");
            }
        }
    } else {
        //enable programmer to test different baseparam images even include conflict
        //between virtural width height and ro.sf.lcd_density,
        //but make sure it is ok for (720P UI -> ro.sf.lcd_density == 160 or
        //1080P UI -> ro.sf.lcd_density == 240/320) when releasing project images
        if (1280 == screenWidth && 720 == screenHeight && strcmp(property, "160") != 0) {
            property_set("persist.sys.screen_density", "160");
        } else if (1920 == screenWidth && 1080 == screenHeight && strcmp(property, "160") == 0) {
            property_get("ro.sf.lcd_density", property, NULL);
            if (strcmp(property, "240") != 0 && strcmp(property, "320") != 0) {
                property_set("persist.sys.screen_density", "240");
            } else {
                property_set("persist.sys.screen_density", property);
            }
        }
    }
}

int disp_init()
{
    int ret = HI_FAILURE;
    int base_ret = HI_FAILURE;
    int base_sd_ret = HI_FAILURE;
    char base[PROPERTY_LEN];
    char customize[PROPERTY_LEN];
    char property[PROPERTY_LEN];
    char mem[PROPERTY_LEN];
    HI_UNF_PDM_DISP_PARAM_S baseParam;
    HI_UNF_PDM_DISP_PARAM_S baseParam_sd;

    if (called_by_displaysetting() != 1)
    {
        ALOGD("not called by /system/bin/displaysetting");
        HI_SYS_Init();
        ret = HI_UNF_DISP_Init();
        if (ret != HI_SUCCESS)
        {
            ALOGE("HI_UNF_DISP_Init failed: %p\n", (void*)ret);
            return ret;
        }
        ret = HI_UNF_HDMI_Init();
        if (ret != HI_SUCCESS)
        {
            ALOGE("HI_UNF_HDMI_Init failed: %p\n", (void*)ret);
            return ret;
        }
        return ret;
    }

    HI_SYS_Init();

    ret = HI_UNF_DISP_Init();
    if (ret != HI_SUCCESS) {
        ALOGE("call HI_UNF_DISP_Init failed.\n");
        return ret;
    }

    ret = open_display_channel();
    if (ret != HI_SUCCESS)
    {
        ALOGE("call open_display_channel failed.\n");
        return ret;
    }

    base_ret = HI_UNF_PDM_GetBaseParam(HI_UNF_DISP_HD0, &baseParam);
    if(base_ret == HI_SUCCESS) {
        mFormat = (display_format_e)baseParam.enFormat;
        hdmi_interface = baseParam.stIntf[HI_UNF_DISP_INTF_TYPE_HDMI].unIntf.enHdmi;
        ALOGE("------>hd, hdmi_interface is %d", hdmi_interface);
    } else {
        ALOGE("hd, GetBaseParam Err--- %p", (void*)base_ret);
    }

    base_sd_ret = HI_UNF_PDM_GetBaseParam(HI_UNF_DISP_SD0, &baseParam_sd);
    if(base_sd_ret == HI_SUCCESS) {
        cvbs_dac_port = baseParam_sd.stIntf[HI_UNF_DISP_INTF_TYPE_CVBS].unIntf.stCVBS.u8Dac;
        ALOGE("------>sd, cvbs_dac_port is %d", cvbs_dac_port);
    } else {
        ALOGE("sd, GetBaseParam Err--- %p", (void*)base_sd_ret);
    }
    ALOGE("sd, GetBaseParam VirtScreenWidth:%d", baseParam.u32VirtScreenWidth);

    property_get("ro.config.low_ram", property, "");
    property_get("ro.product.mem.size", mem, "unknown");
    if ( (strcmp(property, "true") == 0) && ((strcmp(mem, "512m") == 0) || (strcmp(mem, "768m") == 0))
        && (1280 != baseParam.u32VirtScreenWidth) && (720 != baseParam.u32VirtScreenHeight) ) {
        baseParam.u32VirtScreenWidth = 1280;
        baseParam.u32VirtScreenHeight = 720;
        HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_DISP1, &baseParam);
        HI_UNF_DISP_SetVirtualScreen(HI_UNF_DISP_HD0, baseParam.u32VirtScreenWidth, baseParam.u32VirtScreenHeight);
        HI_UNF_DISP_SetVirtualScreen(HI_UNF_DISP_SD0, baseParam.u32VirtScreenWidth, baseParam.u32VirtScreenHeight);
    }
    checkScreenDPIConflict(baseParam.u32VirtScreenWidth, baseParam.u32VirtScreenHeight);

    ret = HIADP_HDMI_Init(HI_UNF_HDMI_ID_0, mFormat);
    if (ret != HI_SUCCESS) {
        ALOGE("call HIADP_HDMI_Init failed.\n");
        return ret;
    }
    memset(&displayParam, 0, sizeof(displayParam));
    displayParam[HI_UNF_DISP_HD0].enDisp = HI_UNF_DISP_HD0;
#ifdef TURN_ON_SD0
    displayParam[HI_UNF_DISP_SD0].enDisp = HI_UNF_DISP_SD0;
#endif

    //store factory set
    //persist.sys.display.param == factory base
    //persist.sys.display.customize == customize base
    if(base_ret == HI_SUCCESS) {
        memset(customize,0,PROPERTY_LEN);
        property_get("persist.sys.display.customize", customize, "xxx");
        param_to_string(&baseParam, base);
        if(strcmp(base,customize)) {
            property_set("persist.sys.display.param", base);
            property_set("persist.sys.display.customize", base);
        }
    }
    return ret;
}

int disp_deinit()
{
    close_display_channel();
    HI_UNF_DISP_DeInit();
    HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_0);
    HI_SYS_DeInit();

    return 0;
}

/** State information for each device instance */

static int open_display(const struct hw_module_t* module, const char* name,
        struct hw_device_t** device);

/** Common hardware methods */
static struct hw_module_methods_t display_module_methods = {
    open:  open_display
};

/** The DISPLAY Module*/
struct display_module_t HAL_MODULE_INFO_SYM = {
common: {
     tag: HARDWARE_MODULE_TAG,
     version_major: 1,
     version_minor: 0,
     id: DISPLAY_HARDWARE_MODULE_ID,
     name: "DISPLAY Module",
     author: "Hisilicon Co., Ltd",
     methods: &display_module_methods
        }
};

static display_device_t *module_display = NULL;

/** Close the copybit device */
static int close_display(hw_device_t *dev)
{
    disp_deinit();

    if (dev && dev == (hw_device_t*)module_display)
    {
        free(dev);
        module_display = NULL;
    }
    return 0;
}

/** Open a new instance of a copybit device using name */
static int open_display(const struct hw_module_t* module, const char* name,
        hw_device_t ** device)
{
    ALOGI_IF(DISPLAY_DEBUG,"open_display enter");

    int ret = HI_SUCCESS;

    display_context_t *ctx;

    if (module_display != NULL)
    {
        *device = (hw_device_t *)module_display;
        return HI_SUCCESS;
    }
    ctx = (display_context_t *)malloc(sizeof(display_context_t));
    memset(ctx, 0, sizeof(*ctx));
    ctx->device.common.tag = HARDWARE_DEVICE_TAG;
    ctx->device.common.version = 1;
    ctx->device.common.module = (hw_module_t*)(module);
    ctx->device.common.close = close_display;

    ctx->device.get_brightness = get_brightness;
    ctx->device.set_brightness = set_brightness;
    ctx->device.get_contrast = get_contrast;
    ctx->device.set_contrast= set_contrast;
    ctx->device.get_saturation = get_saturation;
    ctx->device.set_saturation = set_saturation;
    ctx->device.get_hue = get_hue;
    ctx->device.set_hue = set_hue;
    ctx->device.set_format = set_format;
    ctx->device.get_format = get_format;
    ctx->device.set_graphic_out_range = set_graphic_out_range;
    ctx->device.get_graphic_out_range = get_graphic_out_range;

    ctx->device.get_hdmi_capability = get_hdmi_capability;
    ctx->device.get_manufacture_info = get_manufacture_info;

    ctx->device.open_display_channel = open_display_channel;
    ctx->device.close_display_channel = close_display_channel;
    ctx->device.get_macro_vision = get_macro_vision;
    ctx->device.set_macro_vision = set_macro_vision;
    ctx->device.set_hdcp = set_hdcp;
    ctx->device.get_hdcp = get_hdcp;

    ctx->device.set_stereo_outmode = set_stereo_outmode;
    ctx->device.get_stereo_outmode = get_stereo_outmode;
    ctx->device.set_righteye_first = set_righteye_first;
    ctx->device.get_righteye_first = get_righteye_first;
    ctx->device.restore_stereo_mode = restore_stereo_mode;
    ctx->device.set_aspect_ratio = set_aspect_ratio;
    ctx->device.get_aspect_ratio = get_aspect_ratio;
    ctx->device.set_aspect_cvrs  = set_aspect_cvrs;
    ctx->device.get_aspect_cvrs  = get_aspect_cvrs;
    ctx->device.set_optimal_format_enable  = set_optimal_format_enable;
    ctx->device.get_optimal_format_enable  = get_optimal_format_enable;
    ctx->device.get_display_device_type  = get_display_device_type;
    ctx->device.param_save= baseparam_save;
    ctx->device.attach_intf= attach_intf;
    ctx->device.detach_intf= detach_intf;
    ctx->device.set_virtual_screen = set_virtual_screen;
    ctx->device.get_virtual_screen = get_virtual_screen;
    ctx->device.get_virtual_screen_size = get_virtual_screen_size;
    ctx->device.reset = reset;
    ctx->device.set_hdmi_suspend_time = set_hdmi_suspend_time;
    ctx->device.get_hdmi_suspend_time = get_hdmi_suspend_time;
    ctx->device.set_hdmi_suspend_enable = set_hdmi_suspend_enable;
    ctx->device.get_hdmi_suspend_enable = get_hdmi_suspend_enable;
    ctx->device.reload = reload;
    ctx->device.set_output_enable = set_output_enable;
    ctx->device.get_output_enable = get_output_enable;

    *device = &ctx->device.common;
    module_display = (display_device_t *)&ctx->device.common;;

    ret = disp_init();

    return ret;
}
