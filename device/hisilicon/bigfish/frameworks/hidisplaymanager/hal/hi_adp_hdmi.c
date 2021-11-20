#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <cutils/log.h>
#include <pthread.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>


#include "hi_unf_hdmi.h"
#include "hi_unf_edid.h"
#include "hi_mpi_edid.h"
#include "hi_unf_disp.h"
#include "hi_unf_pdm.h"
#include "hi_adp.h"
#include "hi_adp_hdmi.h"
#include <hidisplay.h>
#include <cutils/properties.h>
#include "hi_drv_vinput.h"
#include "hi_flash.h"

#define DEBUG_HDMI_INIT 1
#define BUFLEN  PROP_VALUE_MAX
#undef LOG_TAG
#define LOG_TAG "HI_ADP_HDMI"

#define KPC_EV_KEY_PRESS          (0x1)
#define KPC_EV_KEY_RELEASE        (0x0)
#define KEY_POWER                  116
#define Vinput_FILE               "/dev/vinput"

#define NOT_DETECTED_CEC           1
#define DETECTED_BUT_NO_CEC        2
#define DETECTED_AND_WITH_CEC      3

HI_U32 nCecMode = NOT_DETECTED_CEC;
HI_U32 timerType = 0; // 0 is detect cec, 1 is cec suspend
HI_U8 hdmiEDIDBuf[512];
HI_U32 hdmiEDIDBuflen = 512;
HI_U32 hdmiEDIDFlag = 0;
HI_U32 hdmiHotPlugCase = 0;

HI_U32  g_HotPlugDetected = 0;



static int HDMI_TV_MAX_SUPPORT_FMT[] = {

    HI_UNF_ENC_FMT_3840X2160_60,     /**<4K 60 Hz*/
    HI_UNF_ENC_FMT_3840X2160_50,     /**<4K 50 Hz*/
    HI_UNF_ENC_FMT_3840X2160_30,     /**<4K 30 Hz*/
    HI_UNF_ENC_FMT_3840X2160_25,     /**<4K 25 Hz*/
    HI_UNF_ENC_FMT_3840X2160_24,     /**<4K 24 Hz*/
    HI_UNF_ENC_FMT_1080P_60,         /**<1080p 60 Hz*/
    HI_UNF_ENC_FMT_1080P_50,         /**<1080p 50 Hz*/
    HI_UNF_ENC_FMT_1080P_30,         /**<1080p 30 Hz*/
    HI_UNF_ENC_FMT_1080P_25,         /**<1080p 25 Hz*/
    HI_UNF_ENC_FMT_1080P_24,         /**<1080p 24 Hz*/

    HI_UNF_ENC_FMT_1080i_60,         /**<1080i 60 Hz*/
    HI_UNF_ENC_FMT_1080i_50,         /**<1080i 50 Hz*/

    HI_UNF_ENC_FMT_720P_60,          /**<720p 60 Hz*/
    HI_UNF_ENC_FMT_720P_50,          /**<720p 50 Hz */

    HI_UNF_ENC_FMT_576P_50,          /**<576p 50 Hz*/
    HI_UNF_ENC_FMT_480P_60,          /**<480p 60 Hz*/

    HI_UNF_ENC_FMT_PAL,              /* B D G H I PAL */
    HI_UNF_ENC_FMT_PAL_N,            /* (N)PAL        */
    HI_UNF_ENC_FMT_PAL_Nc,           /* (Nc)PAL       */

    HI_UNF_ENC_FMT_NTSC,             /* (M)NTSC       */
    HI_UNF_ENC_FMT_NTSC_J,           /* NTSC-J        */
    HI_UNF_ENC_FMT_NTSC_PAL_M,       /* (M)PAL        */

    HI_UNF_ENC_FMT_SECAM_SIN,        /**< SECAM_SIN*/
    HI_UNF_ENC_FMT_SECAM_COS,        /**< SECAM_COS*/
};

typedef struct hiHDMI_ARGS_S
{
    HI_UNF_HDMI_ID_E  enHdmi;
}HDMI_ARGS_S;

static HDMI_ARGS_S g_stHdmiArgs;
//#define HI_HDCP_SUPPORT
#ifdef HI_HDCP_SUPPORT
HI_U32 g_HDCPFlag         = HI_TRUE;
#else
HI_U32 g_HDCPFlag         = HI_FALSE;
#endif
HI_U32 g_HDMI_Bebug       = HI_FALSE;
HI_U32 g_HDMIUserCallbackFlag = HI_FALSE;
HI_U32 g_enDefaultMode    = HI_UNF_HDMI_DEFAULT_ACTION_HDMI;//HI_UNF_HDMI_DEFAULT_ACTION_NULL;
HI_UNF_HDMI_CALLBACK_FUNC_S g_stCallbackFunc;
HI_UNF_HDMI_CALLBACK_FUNC_S g_stCallbackSleep;

extern int displayType;
extern int cvbs_dac_port;
extern int hdmi_enable;
extern int cvbs_enable;
//extern HI_U32 TVHMax ;
//extern HI_U32 TVWMax ;

User_HDMI_CallBack pfnHdmiUserCallback = NULL;
HI_UNF_HDMI_STATUS_S           stHdmiStatus;
HI_UNF_HDMI_ATTR_S             stHdmiAttr;
HI_UNF_EDID_BASE_INFO_S        stSinkCap;
#ifdef HI_HDCP_SUPPORT
const HI_CHAR * pstencryptedHdcpKey = "/system/etc/EncryptedKey_332bytes.bin";
#define HDCP_KEY_LOCATION           "deviceinfo"
#define DRM_KEY_OFFSET              (128 * 1024)  // DRM KEY from bottom
#define HDCP_KEY_OFFSET_DEFAULT     (4 * 1024)    // HDMI KEY offset base on DRM KEY
#define HDCP_KEY_LEN                (332)
#endif

static HI_CHAR *g_pDispFmtString[HI_UNF_ENC_FMT_BUTT+1] = {
    "1080P_60",
    "1080P_50",
    "1080P_30",
    "1080P_25",
    "1080P_24",
    "1080i_60",
    "1080i_50",

    "720P_60",
    "720P_50",

    "576P_50",
    "480P_60",

    "PAL",
    "PAL_N",
    "PAL_Nc",

    "NTSC",
    "NTSC_J",
    "NTSC_PAL_M",

    "SECAM_SIN",
    "SECAM_COS",

    "1080P_24_FRAME_PACKING",
    "720P_60_FRAME_PACKING",
    "720P_50_FRAME_PACKING",

    "861D_640X480_60",
    "VESA_800X600_60",
    "VESA_1024X768_60",
    "VESA_1280X720_60",
    "VESA_1280X800_60",
    "VESA_1280X1024_60",
    "VESA_1360X768_60",
    "VESA_1366X768_60",
    "VESA_1400X1050_60",
    "VESA_1440X900_60",
    "VESA_1440X900_60_RB",
    "VESA_1600X900_60_RB",
    "VESA_1600X1200_60",
    "VESA_1680X1050_60",
    "VESA_1680X1050_60_RB",
    "VESA_1920X1080_60",
    "VESA_1920X1200_60",
    "VESA_1920X1440_60",
    "VESA_2048X1152_60",
    "VESA_2560X1440_60_RB",
    "VESA_2560X1600_60_RB",

    "3840X2160_24",
    "3840X2160_25",
    "3840X2160_30",
    "3840X2160_50",
    "3840X2160_60",

    "4096X2160_24",
    "4096X2160_25",
    "4096X2160_30",
    "4096X2160_50",
    "4096X2160_60",

    "3840x2160_23.976",
    "3840x2160_29.97",
    "720P_59.94",
    "1080P_59.94",
    "1080P_29.97",
    "1080P_23.976",
    "1080i_59.94",

    "BUTT"
};

extern int get_format(display_format_e *format);
extern int set_format(display_format_e format);
extern int baseparam_save(void);
int getOptimalFormat();
int isCapabilityChanged(int getCapResult,HI_UNF_EDID_BASE_INFO_S *pstSinkAttr);
void capToString(char* buffer,HI_UNF_EDID_BASE_INFO_S cap);
void setTVproperty()
{
    char tmpdpi[64]="";
	char tmpsize[64]="";
	display_format_e fmt;
	char tvdpi1[][64] ={"1920*1080",
                       "1920*1080",
                       "1920*1080",
                       "1920*1080",
                       "1920*1080",

                       "1920*1080",
                       "1920*1080",

                       "1280*720",
                       "1280*720",

                       "720*576",
                       "720*480",

                       "720*576",
                       "720*576",
                       "720*576",

                       "720*480",
                       "720*480",
                       "720*480",

	                   "",
			           "",
			           "1920*1080",
			           "1280*720",
			           "1280*720",

	                   "640*480",
	                   "800*600",
	                   "1024*768",
	                   "1280*720",
	                   "1280*800",
	                   "1280*1024",
	                   "1360*768",
	                   "1366*768",
	                   "1400*1050",
	                   "1440*900",
	                   "1440*900",
	                   "1600*900",
	                   "1600*1200",
	                   "1680*1050",
	                   "1680*1050",
	                   "1920*1080",
	                   "1920*1200",
	                   "1920*1440",
	                   "2048*1152",
	                   "2560*1440",
	                   "2560*1600",

                       };
	char tvdpi2[][64]={"3840*2160",
			          "3840*2160",
			          "3840*2160",
			          "3840*2160",
			          "3840*2160",

			          "4096*2160",
			          "4096*2160",
			          "4096*2160",
			          "4096*2160",
			          "4096*2160",

			          "3840*2160",
			          "3840*2160",
			          "1280*720",
			          "1920*1080",
			          "1920*1080",
			          "1920*1080",
			          "1920*1080",
			          "",
			           };
	int ret = get_format(&fmt);
	if(ret == HI_SUCCESS)
	{
            if(fmt >= DISPLAY_FMT_3840X2160_24 && fmt < DISPLAY_FMT_BUTT)
                strcpy(tmpdpi,tvdpi2[fmt-DISPLAY_FMT_3840X2160_24]);
            else if(fmt >=DISPLAY_FMT_1080P_60 && fmt <= DISPLAY_FMT_VESA_2560X1600_60_RB)
                strcpy(tmpdpi,tvdpi1[fmt]);
            else
                ALOGE("the format not surport!\n");
	}
	else
	{
            fmt = DISPLAY_FMT_BUTT;
            ALOGE("get formate failed!\n");
	}

//    sprintf(tmpsize,"%d",(int)(sqrt(TVHMax*TVHMax +TVWMax*TVWMax)/2.54 +0.5));
	property_set("persist.sys.tv.name",stSinkCap.stMfrsInfo.u8MfrsName);
	property_set("persist.sys.tv.type",stSinkCap.stMfrsInfo.u8pSinkName);
//	property_set("persist.sys.tv.size",tmpsize);
	property_set("persist.sys.tv.dpi",tmpdpi);
	return ;
}

#if 0
int getTVSize(HI_U32 *TVHight, HI_U32 *TVWidth)
{
    ALOGE("***********getTVSize!************\n");
    HI_U8 u8EdidData[514];
    HI_U32 edidlen = 0;
    EDID_INFO_S stEdidInfo;
    int ret = -1;
    memset(u8EdidData,0x0,sizeof(u8EdidData));
    memset(&stEdidInfo,0x0,sizeof(EDID_INFO_S));

    ret = HI_UNF_HDMI_ReadEDID(u8EdidData, &edidlen);
    if(ret != HI_SUCCESS)
    {
        ALOGE("read edid data error!");
        return -1;
    }
    ret = HI_MPI_EDID_EdidParse(u8EdidData, edidlen, &stEdidInfo);
    if(ret != HI_SUCCESS)
    {
        ALOGE("parse edid data error!");
        return -1;
    }
    *TVHight = stEdidInfo.stDevDispInfo.u32ImgeHMax;
    *TVWidth = stEdidInfo.stDevDispInfo.u32ImgeWMax;
    HI_MPI_EDID_EdidRelease(&stEdidInfo);
    ALOGE("the width of TV is %d, the hight of TV is %d\n",*TVWidth,*TVHight);
    return 0;
}
#endif
HI_UNF_ENC_FMT_E stringToUnfFmt(HI_CHAR *pszFmt)
{
    HI_S32 i;
    HI_UNF_ENC_FMT_E fmtReturn = HI_UNF_ENC_FMT_BUTT;

    if (NULL == pszFmt)
    {
        return HI_UNF_ENC_FMT_BUTT;
    }

    for (i = 0; i < HI_UNF_ENC_FMT_BUTT; i++)
    {
        if (strcasestr(pszFmt, g_pDispFmtString[i]))
        {
            fmtReturn = i;
            break;
        }
    }

    if (i >= HI_UNF_ENC_FMT_BUTT)
    {
        i = HI_UNF_ENC_FMT_720P_50;
        fmtReturn = i;
        printf("\n!!! Can NOT match format, set format to is '%s'/%d.\n\n", g_pDispFmtString[i], i);
    }
    else
    {
        printf("\n!!! The format is '%s'/%d.\n\n", g_pDispFmtString[i], i);
    }
    return fmtReturn;
}

static HI_VOID HDMI_PrintAttr(HI_UNF_HDMI_ATTR_S *pstHDMIAttr)
{
    if (HI_TRUE != g_HDMI_Bebug)
    {
        return;
    }

    ALOGE("=====HI_UNF_HDMI_SetAttr=====\n"
           "bEnableHdmi:%d\n"
           "bEnableVideo:%d\n"
           "enVidOutMode:%d\n"
           "enDeepColorMode:%d\n"
           "bxvYCCMode:%d\n\n"
           "bEnableAudio:%d\n"
           "bEnableAviInfoFrame:%d\n"
           "bEnableAudInfoFrame:%d\n"
           "bEnableSpdInfoFrame:%d\n"
           "bEnableMpegInfoFrame:%d\n\n"
           "==============================\n",
           pstHDMIAttr->bEnableHdmi,
           pstHDMIAttr->bEnableVideo,
           pstHDMIAttr->enVidOutMode,pstHDMIAttr->enDeepColorMode,pstHDMIAttr->bxvYCCMode,
           pstHDMIAttr->bEnableAudio,
           pstHDMIAttr->bEnableAudInfoFrame,pstHDMIAttr->bEnableAudInfoFrame,
           pstHDMIAttr->bEnableSpdInfoFrame,pstHDMIAttr->bEnableMpegInfoFrame);
    return;
}

int getCurrentMaxSupportFmt(HI_UNF_EDID_BASE_INFO_S *pstSinkCapAttr)
{
    int i;
    int MaxFmtListLen = sizeof(HDMI_TV_MAX_SUPPORT_FMT) / sizeof(HDMI_TV_MAX_SUPPORT_FMT[0]);
    ALOGE("MaxFmtListLen = %d", MaxFmtListLen);

    if (pstSinkCapAttr == NULL)
    {
        ALOGE("<ERROR>: getCurrentMaxSupportFmt Bad Input !");
        return HI_FAILURE;
    }

    for (i = 0; i < MaxFmtListLen; i++)
    {
        int format = HDMI_TV_MAX_SUPPORT_FMT[i];
        if (HI_TRUE == pstSinkCapAttr->bSupportFormat[format])
        {
            ALOGE("Find Max Support Format Success, Value -> [%d]", format);
            return format;
        }
    }

    ALOGE("Can't Find Max Support Format, Use Default Format- > HI_UNF_ENC_FMT_720P_50");
    return HI_UNF_ENC_FMT_720P_50;
}

HI_BOOL isMutexStrategyEnabledForHdmiAndCvbs()
{
    char buf_cvbs_enable[BUFLEN];
    char buf_dmacert_enable[BUFLEN];
    char buf_iptvcert_enable[BUFLEN];
    char buf_dvbcert_enable[BUFLEN];

    memset(buf_cvbs_enable, 0, sizeof(buf_cvbs_enable));
    memset(buf_dmacert_enable, 0, sizeof(buf_dmacert_enable));
    memset(buf_iptvcert_enable, 0, sizeof(buf_iptvcert_enable));
    memset(buf_dvbcert_enable, 0, sizeof(buf_dvbcert_enable));

    property_get("persist.sys.cvbs.and.hdmi", buf_cvbs_enable, "false");
    property_get("ro.dolby.dmacert.enable", buf_dmacert_enable, "false");
    property_get("ro.dolby.iptvcert.enable", buf_iptvcert_enable, "false");
    property_get("ro.dolby.dvbcert.enable", buf_dvbcert_enable, "false");

    if ((!strcmp(buf_cvbs_enable, "false"))
        && (!strcmp(buf_dmacert_enable, "false"))
        && (!strcmp(buf_iptvcert_enable, "false"))
        && (!strcmp(buf_dvbcert_enable, "false")))
    {
        return HI_TRUE;
    }
    return HI_FALSE;
}

void HDMI_HotPlug_Proc(HI_VOID *pPrivateData)
{
    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI Hotplug event enter %s(%d)" , __func__, __LINE__);
    HI_S32          ret = HI_SUCCESS;
    HI_S32          getCapRet = HI_SUCCESS;
    HI_S32          get_base_ret = HI_SUCCESS;
    HDMI_ARGS_S     *pArgs  = (HDMI_ARGS_S*)pPrivateData;
    HI_UNF_HDMI_ID_E       hHdmi   =  pArgs->enHdmi;
    display_format_e            format = DISPLAY_FMT_1080i_60;
    display_format_e        enMaxFormat = HI_UNF_ENC_FMT_720P_50;

#ifdef HI_HDCP_SUPPORT
    static HI_U8 u8FirstTimeSetting = HI_TRUE;
#endif

    ALOGE("\n --- Get HDMI event: HOTPLUG. --- \n");

    if(isMutexStrategyEnabledForHdmiAndCvbs())
    {
        char property_buffer[BUFLEN];
        property_get("persist.sys.qb.enable", property_buffer, "false");
        char flag_buffer[BUFLEN];
        property_get("persist.sys.qb.flag", flag_buffer, "true");
        if(property_buffer != NULL && (strcmp(property_buffer,"true")==0)
            && flag_buffer != NULL && (strcmp(flag_buffer,"false")==0))
        {
            ALOGI("\n  Qb:do not closed cvbs\n");
            cvbs_enable = 1;
        }
        else
        {
            /*close cvbs port begin*/
            HI_UNF_DISP_INTF_S stIntf_disp[HI_UNF_DISP_INTF_TYPE_BUTT];
            memset(stIntf_disp, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
            stIntf_disp[0].enIntfType            = HI_UNF_DISP_INTF_TYPE_CVBS;
            stIntf_disp[0].unIntf.stCVBS.u8Dac   = cvbs_dac_port;
            ret = HI_UNF_DISP_DetachIntf(HI_UNF_DISPLAY0, &stIntf_disp[0], 1);
            ALOGE("\n  closed cvbs port %d, ret=%p\n", cvbs_dac_port, (void*)ret);
            if (ret == HI_SUCCESS)
            {
                cvbs_enable = 0;
            }
            /*close cvbs port end*/
        }
    }
    else
    {
        cvbs_enable = 1;
    }

    HI_UNF_HDMI_GetStatus(hHdmi,&stHdmiStatus);
    if (HI_FALSE == stHdmiStatus.bConnected)
    {
        ALOGE("No Connect\n");
        hdmi_enable = 0;
        return;
    }

    //getTVSize(&TVHMax,&TVWMax);

    /*hdmi adapt begin*/
    HI_UNF_HDMI_GetAttr(hHdmi, &stHdmiAttr);
    getCapRet = HI_UNF_HDMI_GetSinkCapability(hHdmi, &stSinkCap);
    ALOGE("\n getCapRet = %d \n", getCapRet);
    int j;
    for(j = 0; j < 10; j++)
    {
        ALOGE("4k[%d] = %d \n", j, stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_24+j]);
    }
    ALOGE("\n optimum format is %d \n",(int)stSinkCap.enNativeFormat);	
    /* stHdmiAttr.bEnableHdmi */
    if(getCapRet == HI_SUCCESS)
    {
        stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_YCBCR444;
        if(HI_TRUE == stSinkCap.bSupportHdmi)
        {
            stHdmiAttr.bEnableHdmi = HI_TRUE;
            displayType = 1;
            if(HI_TRUE != stSinkCap.stColorSpace.bYCbCr444)
            {
                stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            }
        }
        else
        {
            stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            //read real edid ok && sink not support hdmi,then we run in dvi mode
            stHdmiAttr.bEnableHdmi = HI_FALSE;
            displayType = 2;
        }
    }
    else
    {
        //when get capability fail,use default mode
        if(g_enDefaultMode == HI_UNF_HDMI_DEFAULT_ACTION_HDMI) {
            stHdmiAttr.bEnableHdmi = HI_TRUE;
            stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_YCBCR444;
            displayType = 1;
        } else {
            stHdmiAttr.bEnableHdmi = HI_FALSE;
            stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            displayType = 2;
        }
    }
    ALOGE("displayType = %d\n",displayType);

    int fmtRet = get_format(&format);
    ALOGE("\n get current format is %d \n",(int)format);

    char perfer[BUFLEN] = {0};
    property_get("persist.sys.optimalfmt.perfer", perfer, "native");
    ALOGD("persist.sys.optimalfmt.perfer=%s", perfer);

    // 1.HI_UNF_HDMI_GetSinkCapability failed
    if(getCapRet != HI_SUCCESS)
    {
        ALOGE("\n get capability failed \n");
        if(stHdmiAttr.bEnableHdmi == HI_TRUE) //tv case
        {
            ALOGE("---------->is TV<------------\n");
            displayType = 1;
            if ((strcmp("i50hz", perfer) == 0) || (strcmp("p50hz", perfer) == 0))
            {
                stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_50;
            }
            else if ((strcmp("i60hz", perfer) == 0) || (strcmp("p60hz", perfer) == 0))
            {
                stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
            }
            else
            {
                stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
            }
            if((fmtRet == HI_SUCCESS) && (format < DISPLAY_FMT_BUTT)) {
                ALOGE("current format ok" );
                //set_format(format);
            } else {
                ALOGE("current format err, reset to 720P60Hz" );
                set_format((display_format_e)stSinkCap.enNativeFormat);
                baseparam_save();
            }
        }
        else //pc case
        {
            ALOGE("---------->is PC<------------\n");
            displayType = 2;
            if((fmtRet == HI_SUCCESS) && (format < DISPLAY_FMT_BUTT)) {
                ALOGE("current format ok" );
               // set_format(format);
            } else {
                ALOGE("current format err, reset to 1024x768@P60Hz" );
                set_format(HI_UNF_ENC_FMT_VESA_1024X768_60);
                baseparam_save();
            }
        }
    }
    // 2.HI_UNF_HDMI_GetSinkCapability success
    if(getCapRet == HI_SUCCESS)
    {
        if(stHdmiAttr.bEnableHdmi == HI_TRUE) //tv
        {
            if (strcmp("i50hz", perfer) == 0)
            {
                if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_25] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_3840X2160_25;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_50;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_50;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_50;
                }
            }
            else if (strcmp("p50hz", perfer) == 0)
            {
                if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_25] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_3840X2160_25;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_50;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_50;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_50] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_50;
                }
            }
            else if (strcmp("i60hz", perfer) == 0)
            {
                if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_30] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_3840X2160_30;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_60;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_60;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
                }
            }
            else if (strcmp("p60hz", perfer) == 0)
            {
                if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_30] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_3840X2160_30;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_60;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_60;
                }
                else if (stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_60] == 1)
                {
                    stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
                }
            }
            else if (strcmp("max_fmt", perfer) == 0)
            {
                enMaxFormat = getCurrentMaxSupportFmt(&stSinkCap);
                if (enMaxFormat == HI_FAILURE)
                {
                    ALOGE("Get Current Max Support Format Failed, Use Default Format HI_UNF_ENC_FMT_720P_50");
                    enMaxFormat = HI_UNF_ENC_FMT_720P_50;
                }
                stSinkCap.enNativeFormat = enMaxFormat;
            }

            // native format err case
            if(stSinkCap.enNativeFormat > HI_UNF_ENC_FMT_720P_50)
            {
                if( (stSinkCap.enNativeFormat < HI_UNF_ENC_FMT_3840X2160_24)
                    || (stSinkCap.enNativeFormat == HI_UNF_ENC_FMT_BUTT) ) {
                    ALOGE("\n tv: get optimum format failed \n");
                    if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_60] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_60;
                    } else if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080P_50] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080P_50;
                    } else if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_60] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_60;
                    } else if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_1080i_50] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_1080i_50;
                    } else if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_60] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
                    } else if(stSinkCap.bSupportFormat[HI_UNF_ENC_FMT_720P_50] == 1) {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_50;
                    } else {
                        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
                    }
                }
            }
        } else { //pc
            stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_VESA_1024X768_60;
        }
        ALOGE("\n final optimum format = %d \n", stSinkCap.enNativeFormat);

        // 2.1 capability is not changed
        if(0 == isCapabilityChanged(getCapRet,&stSinkCap))
        {
            ALOGE("\n capability is not changed \n");
            // 2.1.1 Optimal format is enabled.
            if(1 == getOptimalFormat())
            {
                ALOGE("\n optimum format enable is enabled \n");
                if (stHdmiAttr.bEnableHdmi == HI_TRUE)//for tv
                {
                    if((fmtRet == HI_SUCCESS)
                        && (format == (display_format_e)stSinkCap.enNativeFormat)) {
                        ALOGE("\n tv: current is optimum format" );
                        // set_format(format);
                    } else {
                        ALOGE("\n tv: set optimum format \n");
                        set_format((display_format_e)stSinkCap.enNativeFormat);
                        baseparam_save();
                    }
                }
                else//for pc
                {
                    if( (fmtRet == HI_SUCCESS)
                        && ((HI_UNF_ENC_FMT_E)format == HI_UNF_ENC_FMT_VESA_1024X768_60) ) {
                        ALOGE("\n pc: current is optimum format" );
                      //  set_format(format);
                    } else {
                        ALOGE("\n pc: set optimum format \n");
                        set_format(HI_UNF_ENC_FMT_VESA_1024X768_60);
                        baseparam_save();
                    }
                }
            }
            else // 2.1.2 Optimal Format is disabled.
            {
                ALOGE("\n optimum format enable is disabled \n");
                if(fmtRet != HI_SUCCESS || format >= DISPLAY_FMT_BUTT)
                {
                    ALOGE("current format err" );
                    if (stHdmiAttr.bEnableHdmi == HI_TRUE)//for tv
                    {
                        ALOGE("\n tv: set optimum format \n");
                        set_format((display_format_e)stSinkCap.enNativeFormat);
                    }
                    else//for pc
                    {
                        ALOGE("\n pc: set optimum format \n");
                        set_format(HI_UNF_ENC_FMT_VESA_1024X768_60);
                    }
                    baseparam_save();
                }
                else
                {
                    ALOGE("current format ok" );
                   // set_format(format);
                }
            }
        }
        else //2.2 capability is changed
        {
            ALOGE("\n capability is changed.\n");
            nCecMode = NOT_DETECTED_CEC;
            // 2.2.1 Optimal Format is enabled or current format not support
            char tmp[BUFLEN] = {0,0,0,0};
            int value = 0;
            property_get("persist.sys.hdcp.auth", tmp, "0");
            value = atoi(tmp);

            if( (1 == getOptimalFormat())
                || ((0 == stSinkCap.bSupportFormat[format]) && (value == 0)) )
            {
                ALOGE("\n Optimal format is enabled or current format not support.\n");
                set_format((display_format_e)stSinkCap.enNativeFormat);
                baseparam_save();
            }
            else// 2.2.2 Optimal Format is disabled.
            {
                ALOGE("\n optimal format is disabled.\n");
                if (stHdmiAttr.bEnableHdmi == HI_TRUE)//for tv
                {
                    if((fmtRet == HI_SUCCESS) && (format < DISPLAY_FMT_BUTT)) {
                        ALOGE("\n tv: current format ok" );
                        //set_format(format);
                    } else {
                        ALOGE("\n tv: set optimum format \n");
                        set_format((display_format_e)stSinkCap.enNativeFormat);
                        baseparam_save();
                    }
                }
                else//for pc
                {
                    if((fmtRet == HI_SUCCESS) && (format < DISPLAY_FMT_BUTT)) {
                        ALOGE("\n pc: current format ok" );
                       // set_format(format);
                    } else {
                        ALOGE("\n pc: set optimum format \n");
                        set_format(HI_UNF_ENC_FMT_VESA_1024X768_60);
                        baseparam_save();
                    }
                }
            }
        } // end of else //2.2 capability is changed
    } // end of if(getCapRet == HI_SUCCESS)
    /* hdmi adapt end*/
	char tmp1[92] = "";
	char tmp2[92] = "";
	property_get("ro.product.target",tmp1,"");
	property_get("ro.product.target",tmp2,"");

	if(strcmp(tmp1,"unicom")==0||
		strcmp(tmp2,"telecom")==0)
        setTVproperty();
    /* hdmi attr*/
    if(HI_TRUE == stHdmiAttr.bEnableHdmi)
    {
        stHdmiAttr.bEnableAudio = HI_TRUE;
        stHdmiAttr.bEnableVideo = HI_TRUE;
        stHdmiAttr.bEnableAudInfoFrame = HI_TRUE;
        stHdmiAttr.bEnableAviInfoFrame = HI_TRUE;
    }
    else
    {
        stHdmiAttr.bEnableAudio = HI_FALSE;
        stHdmiAttr.bEnableVideo = HI_TRUE;
        stHdmiAttr.bEnableAudInfoFrame = HI_FALSE;
        stHdmiAttr.bEnableAviInfoFrame = HI_FALSE;
        stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
    }

#ifdef HI_HDCP_SUPPORT
    if (u8FirstTimeSetting == HI_TRUE)
    {
        u8FirstTimeSetting = HI_FALSE;
        if (g_HDCPFlag == HI_TRUE)
        {
            stHdmiAttr.bHDCPEnable = HI_TRUE;//Enable HDCP
        }
        else
        {
            stHdmiAttr.bHDCPEnable= HI_FALSE;
        }
    }
    else
    {
        //HDCP Enable use default setting!!
    }
#endif

    g_HotPlugDetected = 1;

    ret = HI_UNF_HDMI_SetAttr(hHdmi, &stHdmiAttr);

    /* HI_UNF_HDMI_SetAttr must before HI_UNF_HDMI_Start! */
    ret = HI_UNF_HDMI_Start(hHdmi);

    HDMI_PrintAttr(&stHdmiAttr);

    hdmi_enable = 1;

    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI Hotplug event done %s(%d)" , __func__, __LINE__);
    return;

}

HI_VOID HDMI_UnPlug_Proc(HI_VOID *pPrivateData)
{
    ALOGE("\n ----------HDMI UnPlug-----------\n");
    HDMI_ARGS_S     *pArgs  = (HDMI_ARGS_S*)pPrivateData;
    HI_UNF_HDMI_ID_E       hHdmi   =  pArgs->enHdmi;
    HI_S32 ret = HI_SUCCESS;

    stHdmiStatus.bConnected = HI_FALSE;
    displayType = 0;

    if(isMutexStrategyEnabledForHdmiAndCvbs())
    {
        /*open cvbs port begin*/
        HI_UNF_DISP_INTF_S stIntf_disp[HI_UNF_DISP_INTF_TYPE_BUTT];
        memset(stIntf_disp, 0, sizeof(HI_UNF_DISP_INTF_S) * HI_UNF_DISP_INTF_TYPE_BUTT);
        stIntf_disp[0].enIntfType            = HI_UNF_DISP_INTF_TYPE_CVBS;
        stIntf_disp[0].unIntf.stCVBS.u8Dac   = cvbs_dac_port;
        ret = HI_UNF_DISP_AttachIntf(HI_UNF_DISPLAY0, &stIntf_disp[0], 1);
        ALOGE("\n  open cvbs port %d, ret=%p\n", cvbs_dac_port, (void*)ret);
        if (ret == HI_SUCCESS)
        {
            cvbs_enable = 1;
        }
        /*open cvbs port end*/
    }

    HI_UNF_HDMI_Stop(hHdmi);
    hdmi_enable = 0;
    return;
}

int setOptimalFormat(int able)
{
    ALOGE("Hi_adp_hdmi:setOptimalFormat able is %d",able);
    int ret = 0;
    char buffer[BUFLEN] = {0};
    if(1 == able)
    {
        if (stHdmiAttr.bEnableHdmi == HI_TRUE)//for tv
        {
            ALOGE("\n tv: set format to optimum format \n");
            set_format((display_format_e)stSinkCap.enNativeFormat);
        }
        else//for pc
        {
            ALOGE("\n pc: set format to optimum format \n");
            set_format(HI_UNF_ENC_FMT_VESA_1024X768_60);
        }
        baseparam_save();
    }
    sprintf(buffer,"%d", able);
    property_set("persist.sys.optimalfmt.enable", buffer);
    return 0;
}

int getOptimalFormat()//0 is disable; 1 is enable
{
    char buffer[BUFLEN] = {0};
    int value = 0;

    char property_buffer[BUFLEN] = {0};
    char product_format[BUFLEN] = {0};
    property_get("persist.sys.qb.enable", property_buffer, "false");
    if(property_buffer != NULL && (strcmp(property_buffer,"true")==0) && (hdmiHotPlugCase == 1))
    {
        property_get("persist.sys.optimalfmt.enable", product_format, "0");
        if (strcmp("0", product_format) == 0)
        {
            return 0;
        }
        if(hdmiEDIDFlag == 1)
            value = 1;
        else
            value = 0;
    }
    else
    {
        property_get("persist.sys.optimalfmt.enable", buffer, "1");
        value = atoi(buffer);
        ALOGE("getOptimalFormat, enable = %d", value);
        return value;
    }
    return value;
}

int isCapabilityChanged(int getCapResult,HI_UNF_EDID_BASE_INFO_S *pstSinkAttr)
{
    char  oldbuffer[BUFLEN] = {0,0,0};
    char  buffer[BUFLEN];
    int ret = 0;
    int index = 0;


    HI_UNF_PDM_HDMI_PARAM_S stHdmiParam;
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 i;

    char property_buffer[BUFLEN];
    property_get("persist.sys.qb.enable", property_buffer, "false");
    if(property_buffer != NULL && (strcmp(property_buffer,"true")==0))
    {

        if(getCapResult == HI_SUCCESS)
        {
            stHdmiParam.pu8EDID = &(hdmiEDIDBuf);
            stHdmiParam.pu32EDIDLen = &hdmiEDIDBuflen;
            memset(hdmiEDIDBuf, 0x0, sizeof(hdmiEDIDBuf));
            hdmiEDIDBuflen = 512;
            s32Ret = HI_UNF_PDM_GetBaseParam(HI_UNF_PDM_BASEPARAM_HDMI, &stHdmiParam);
            ALOGE("HDMI EDID before update length:0x%x, %d, %d\n", s32Ret, *(stHdmiParam.pu32EDIDLen), hdmiEDIDBuflen);
            ALOGE("HDMI EDID before update length:0x%x, %s, %s\n", s32Ret, stHdmiParam.pu8EDID, hdmiEDIDBuf);
            capToString(buffer,*pstSinkAttr);
            int cmpRet = strcmp(hdmiEDIDBuf,buffer);
            if(cmpRet != 0)
            {
                stHdmiParam.pu8EDID = &(buffer);
                int bufferLen = sizeof(buffer);
                stHdmiParam.pu32EDIDLen = &bufferLen;
                ALOGE("HDMI EDID after update length:%s, %d\n", stHdmiParam.pu8EDID, *(stHdmiParam.pu32EDIDLen));
                s32Ret = HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_HDMI, &stHdmiParam);
                if(ret != HI_SUCCESS)
                {
                    ALOGE("UpdateBaseParam HDMI Err--- %p", (void*)ret);
                }
                ret = 1;
                hdmiEDIDFlag = 1;
            }
            else
                hdmiEDIDFlag = 0;
        }
        else
        {
            stHdmiParam.pu8EDID = &(hdmiEDIDBuf);
            stHdmiParam.pu32EDIDLen = &hdmiEDIDBuflen;
            memset(hdmiEDIDBuf, 0x0, sizeof(hdmiEDIDBuf));
            hdmiEDIDBuflen = 0;
            s32Ret = HI_UNF_PDM_UpdateBaseParam(HI_UNF_PDM_BASEPARAM_HDMI, &stHdmiParam);
            if(ret != HI_SUCCESS)
            {
                ALOGE("UpdateBaseParam HDMI Err--- %p", (void*)ret);
            }
            ret = 1;
            hdmiEDIDFlag = 1;
        }

    } else {

        if(getCapResult == HI_SUCCESS) {
            property_get("persist.sys.hdmi.cap", oldbuffer,"");
            capToString(buffer,*pstSinkAttr);

            int cmpRet = strcmp(oldbuffer,buffer);
            if(cmpRet != 0)
            {
                property_set("persist.sys.hdmi.cap", buffer);
                ret = 1;
            }
        } else {
            property_set("persist.sys.hdmi.cap", "0");
            ret = 1;
        }
    }
    return ret;

}

void capToString(char* buffer,HI_UNF_EDID_BASE_INFO_S cap)
{
    int index = 0;
    for(index = 0; index <= HI_UNF_ENC_FMT_VESA_2560X1600_60_RB; index++)
    {
        if (index >= HI_UNF_ENC_FMT_BUTT)
        {
            break;
        }
        *(buffer+index) = '0'+(int)cap.bSupportFormat[index];
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
        *(buffer+index) = '0'+(int)cap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_24 + j];
        index++;
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
        *(buffer+index) = '0'+(int)cap.bSupportFormat[HI_UNF_ENC_FMT_3840X2160_23_976 + k];
        index++;
    }
    *(buffer+index) = '\0';
}

HI_U32 set_HDMI_Suspend_Time(int iTime)
{
    ALOGE("iTime is %d",iTime);
    HI_U32 ret = -1;
    char  buffer[BUFLEN];
    sprintf(buffer,"%d", iTime);
    ret = property_set("persist.hdmi.suspend.time", buffer);
    return ret;
}

HI_U32 get_HDMI_Suspend_Time()
{
    char buffer[BUFLEN];
    HI_U32 value = -1;

    property_get("persist.hdmi.suspend.time", buffer, "10");
    value = atoi(buffer);
    ALOGE("get_hdmi_suspend_time: value is :%d",value);
    return value;
}

HI_U32 set_HDMI_Suspend_Enable(int iEnable)
{
    ALOGE("set_hdmi_suspend_enable: iEnable is :%d",iEnable);
    HI_U32 ret = -1;
    char  buffer[BUFLEN];
    sprintf(buffer,"%d", iEnable);
    ret = property_set("persist.hdmi.suspend.enable", buffer);
    return ret;
}

HI_U32 get_HDMI_Suspend_Enable()
{
    char buffer[BUFLEN];
    HI_U32 value = -1;

    property_get("persist.hdmi.suspend.enable", buffer, "0");
    value = atoi(buffer);
    ALOGE("get_hdmi_suspend_enable: value is :%d",value);
    return value;
}

int HDMI_Suspend_ReportKeyEvent(int iKeyValue,int iStatus)
{
    int s_fdVinput = -1;
    int mousedata[4];
    s_fdVinput = open(Vinput_FILE, O_RDONLY);
    if(s_fdVinput < 0)
    {
        ALOGE("can't open Vinput,%s\n", Vinput_FILE);
        return -1;
    }
    mousedata[0]=iKeyValue;
    mousedata[1]=iStatus;
    mousedata[2]=0;
    mousedata[3]=0;
    ioctl(s_fdVinput, IOCTK_KBD_STATUS, (void *)mousedata);

    return 0;
}

void HDMI_Suspend_Timeout(int sig)
{
    ALOGE("HDMI_Suspend_Timeout: timerType = %d", timerType);
    HI_UNF_HDMI_CEC_STATUS_S cecStatus;

    if(timerType == 0) //detect cec
    {
        HI_UNF_HDMI_CECStatus(g_stHdmiArgs.enHdmi,&cecStatus);
        if(cecStatus.bEnable == HI_TRUE)
        {
            nCecMode = DETECTED_AND_WITH_CEC;
        } else {
            nCecMode = DETECTED_BUT_NO_CEC;
        }
        ALOGE("HDMI_Suspend_Timeout: nCecMode = %d", nCecMode);
    } else { //hdmi cec suspend
        HDMI_Suspend_ReportKeyEvent(KEY_POWER, KPC_EV_KEY_PRESS);
        HDMI_Suspend_ReportKeyEvent(KEY_POWER, KPC_EV_KEY_RELEASE);
        ALOGE("HDMI_Suspend_Timeout: send power key to suspend");
    }
}

HI_VOID HDMI_Suspend_Callback(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    HI_UNF_HDMI_STATUS_S stHdmiStatus;
    //1.1 if hdmi suspend is disable, do nothing
    if(0 == get_HDMI_Suspend_Enable())
    {
        ALOGE("hdmi cec suspend disable");
        return;
    }

    ALOGE("HDMI_Suspend_Callback: nCecMode = %d\n", nCecMode);
    //if display support cec,it will goes connect/disconnect event,
    //or it will go hotplug/unplug event.
    switch ( event )
    {
        case HI_UNF_HDMI_EVENT_HOTPLUG:
            ALOGE("HDMI_Suspend_Callback: hdmi hotplug");
            if(nCecMode != DETECTED_AND_WITH_CEC) {
                /*
                alarm(0);
                alarm(15);
                timerType = 0;
                */
            }
            usleep(200*1000); //sleep 200ms, and then detect hdmi status again
            HI_UNF_HDMI_GetStatus(g_stHdmiArgs.enHdmi, &stHdmiStatus);
            if ((HI_TRUE == stHdmiStatus.bConnected) && (HI_TRUE == stHdmiStatus.bSinkPowerOn)) {
                ALOGE("HDMI_Suspend_Callback: HDMI <HOTPLUG>, so cancel suspend timer");
                alarm(0);
            }
            break;
        case HI_UNF_HDMI_EVENT_NO_PLUG:
            ALOGE("HDMI_Suspend_Callback: hdmi unplug");
            if (g_HotPlugDetected) {
                ALOGE("HDMI_Suspend_Callback: try to suspend");
                alarm(0);
                alarm(get_HDMI_Suspend_Time()*60);
                timerType = 1;
            }
            else
                ALOGE("HDMI_Suspend_Callback: no HOTPLUG yet, so do not suspend");
            break;
        case HI_UNF_HDMI_EVENT_RSEN_CONNECT:
            ALOGE("HDMI_Suspend_Callback: hdmi connected");
            HI_UNF_HDMI_CEC_STATUS_S cecStatus;
            HI_UNF_HDMI_CECStatus(g_stHdmiArgs.enHdmi,&cecStatus);
            if(cecStatus.bEnable == HI_TRUE) {
                nCecMode = DETECTED_AND_WITH_CEC;
            } else {
                nCecMode = DETECTED_BUT_NO_CEC;
            }
            ALOGD("HDMI_Suspend_Callback: hdmi connected, nCecMode = %d", nCecMode);
            usleep(200*1000); //sleep 200ms, and then detect hdmi status again
            HI_UNF_HDMI_GetStatus(g_stHdmiArgs.enHdmi, &stHdmiStatus);
            if ((HI_TRUE == stHdmiStatus.bConnected) && (HI_TRUE == stHdmiStatus.bSinkPowerOn)) {
                ALOGE("HDMI_Suspend_Callback: HDMI <RSEN_CONNECT>, so cancel suspend timer");
                alarm(0);
            }
            break;
        case HI_UNF_HDMI_EVENT_RSEN_DISCONNECT:
            ALOGE("HDMI_Suspend_Callback: hdmi disconnected");
            alarm(0);
            alarm(get_HDMI_Suspend_Time()*60);
            timerType = 1;
            break;
        default:
            break;
        }

    return;
}

static HI_U32 HDCPFailCount = 0;
HI_VOID HDMI_HdcpFail_Proc(HI_VOID *pPrivateData)
{
    //HI_UNF_HDMI_ATTR_S             stHdmiAttr;
    ALOGE("\n --- Get HDMI event: HDCP_FAIL. --- \n");

    HDCPFailCount ++ ;
    if(HDCPFailCount >= 50)
    {
        HDCPFailCount = 0;
        ALOGE("\nWarrning:Customer need to deal with HDCP Fail!!!!!!\n");
    }
#if 0
    HI_UNF_HDMI_GetAttr(0, &stHdmiAttr);

    stHdmiAttr.bHDCPEnable = HI_FALSE;

    HI_UNF_HDMI_SetAttr(0, &stHdmiAttr);
#endif
    return;
}

HI_VOID HDMI_HdcpSuccess_Proc(HI_VOID *pPrivateData)
{
    ALOGE("\n --- Get HDMI event: HDCP_SUCCESS. --- \n");
    return;
}

HI_VOID HDMI_Event_Proc(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    switch ( event )
    {
        case HI_UNF_HDMI_EVENT_HOTPLUG:
            hdmiHotPlugCase = 1;
            HDMI_HotPlug_Proc(pPrivateData);
            hdmiHotPlugCase = 0;
            break;
        case HI_UNF_HDMI_EVENT_NO_PLUG:
            HDMI_UnPlug_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_EDID_FAIL:
            break;
        case HI_UNF_HDMI_EVENT_HDCP_FAIL:
            HDMI_HdcpFail_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_HDCP_SUCCESS:
            HDMI_HdcpSuccess_Proc(pPrivateData);
            break;
        case HI_UNF_HDMI_EVENT_RSEN_CONNECT:
            //printf("HI_UNF_HDMI_EVENT_RSEN_CONNECT**********\n");
            break;
        case HI_UNF_HDMI_EVENT_RSEN_DISCONNECT:
            //printf("HI_UNF_HDMI_EVENT_RSEN_DISCONNECT**********\n");
            break;
        default:
            break;
    }
    /* Private Usage */
    if ((g_HDMIUserCallbackFlag == HI_TRUE) && (pfnHdmiUserCallback != NULL))
    {
        pfnHdmiUserCallback(event, NULL);
    }

    return;
}

#ifdef HI_HDCP_SUPPORT
HI_S32 HIADP_HDMI_SetHDCPKey(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_UNF_HDMI_LOAD_KEY_S stLoadKey;
    FILE *pBinFile;
    HI_U32 u32Len;
    HI_U32 u32Ret;

    pBinFile = fopen(pstencryptedHdcpKey, "rb");
    if(HI_NULL == pBinFile)
    {
        ALOGE("can't find key file\n");
        return HI_FAILURE;
    }
    fseek(pBinFile, 0, SEEK_END);
    u32Len = ftell(pBinFile);
    fseek(pBinFile, 0, SEEK_SET);

    stLoadKey.u32KeyLength = u32Len; //332
    stLoadKey.pu8InputEncryptedKey  = (HI_U8*)malloc(u32Len);
    if(HI_NULL == stLoadKey.pu8InputEncryptedKey)
    {
        ALOGE("malloc erro!\n");
        fclose(pBinFile);
        return HI_FAILURE;
    }
    if (u32Len != fread(stLoadKey.pu8InputEncryptedKey, 1, u32Len, pBinFile))
    {
        ALOGE("read file %d!\n", __LINE__);
        fclose(pBinFile);
        free(stLoadKey.pu8InputEncryptedKey);
        return HI_FAILURE;
    }

    u32Ret = HI_UNF_HDMI_LoadHDCPKey(enHDMIId,&stLoadKey);
    free(stLoadKey.pu8InputEncryptedKey);
    fclose(pBinFile);

    return u32Ret;
}

/**
 * Function: getFlashDataByName
 * Brif    : get 'deviceinfo' data from ----> <Flash Bottom>
 * Param   : mtdname ---- flash name e.g "deviceinfo"
 *           offset  ---- offset in flash from bottom
 *           pBuffer ---- Data out Buffer
 *           offlen  ---- read size
 */
HI_S32 getFlashDataByName(const char *mtdname, unsigned long offset, unsigned long offlen, char *pBuffer)
{
    HI_U32 u32Ret;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_OpenByName failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    PartitionSize = (unsigned int)info.PartSize;
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    //totalsize = ((offlen - 1) / uBlkSize + 1) * uBlkSize; // Block alignment
    totalsize = ((offset - 1) / uBlkSize + 1) * uBlkSize; // Block alignment
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size read overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    ALOGE("totalsize=%u,pagesize=%u,offset=%lu,offlen=%lu", totalsize, uBlkSize, offset, offlen);
    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    // Read data from bottom of deviceinfo, bottom 128K data is DRM Key
    // We get HDMI1.4 HDCP Key 4K data over 128K from bottom of deviceinfo
    u32Ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == u32Ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", u32Ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }
    HI_Flash_Close(handle);

    memcpy(pBuffer, pbuf + offset % uBlkSize, offlen);
    memset(pbuf, 0, totalsize);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}

/*
 * HDMI1.4 HDCP Key
 * Localtion: deviceInfo
 * OffSet:68K,size:2K
 * Key Real size :  332B
*/

HI_S32 HIADP_HDMI_SetHDCPKey_DeviceInfo(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_U32 u32Ret;

    HI_UNF_HDMI_LOAD_KEY_S stLoadKey;
    const char *device_name = HDCP_KEY_LOCATION;
    unsigned long offset;
    unsigned long data_len = HDCP_KEY_LEN;
    char *pBuf = NULL;
    char offset_buf[PROP_VALUE_MAX];

    /* Attention: This offset property is from 'deviceinfo' bottom offset
       if User config this, it must make sure this value more than 128K + 4K
       Because the bottom 128K is DRM KEY, the 4K use to store HDMI HDCP KEY */
    property_get("persist.sys.hdmi.hdcp.offset", offset_buf, "0");
    offset = atoi(offset_buf);
    if (offset == 0)
    {
        ALOGE("HIADP_HDMI_SetHDCPKey_DeviceInfo, use default offset!");
        offset = HDCP_KEY_OFFSET_DEFAULT + DRM_KEY_OFFSET; // default 4k+128k from bottom
    }
    else if (offset < (HDCP_KEY_OFFSET_DEFAULT + DRM_KEY_OFFSET))
    {
        ALOGE("HIADP_HDMI_SetHDCPKey_DeviceInfo, use customer property hdmi hdcp offset, But Length is too short!!");
        return HI_FAILURE;
    }

    pBuf = (char *)malloc(data_len);
    if (!pBuf)
    {
        ALOGE("HIADP_HDMI_SetHDCPKey_DeviceInfo, malloc failed");
        return HI_FAILURE;
    }
    memset(pBuf, 0, data_len);

    ALOGE("device_name = %s", device_name);
    ALOGE("offset = %ld", offset);
    ALOGE("data_len = %ld", data_len);

    u32Ret = getFlashDataByName(device_name, offset, data_len, pBuf);

    if (HI_SUCCESS == u32Ret)
    {
        ALOGE("getFlashDataByName, Success!");
        stLoadKey.u32KeyLength = data_len;
        stLoadKey.pu8InputEncryptedKey  = (char *)malloc(data_len);
        if(HI_NULL == stLoadKey.pu8InputEncryptedKey)
        {
            ALOGE("malloc stLoadKey.pu8InputEncryptedKey erro!\n");
            return HI_FAILURE;
        }
        stLoadKey.pu8InputEncryptedKey = pBuf;
        u32Ret = HI_UNF_HDMI_LoadHDCPKey(enHDMIId,&stLoadKey);
        if (HI_SUCCESS == u32Ret)
        {
            ALOGE("HI_UNF_HDMI_LoadHDCPKey  Success!\n");
        }
        else
        {
            ALOGE("HI_UNF_HDMI_LoadHDCPKey  Failed !\n");
        }
    }
    else
    {
        ALOGE("getFlashDataByName  Failed !\n");
    }
    free(pBuf);
    pBuf = NULL;
    return u32Ret;
}
#endif

HI_S32 HIADP_HDMI_Init(HI_UNF_HDMI_ID_E enHDMIId, HI_UNF_ENC_FMT_E enWantFmt)
{
    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI init enter %s(%d)" , __func__, __LINE__);
    HI_S32 Ret = HI_FAILURE;
    HI_UNF_HDMI_OPEN_PARA_S stOpenParam;
    display_format_e            format = DISPLAY_FMT_1080i_60;
    HI_UNF_HDMI_DELAY_S  stDelay;

    signal(SIGALRM, HDMI_Suspend_Timeout);

    g_stHdmiArgs.enHdmi       = enHDMIId;

    Ret = HI_UNF_HDMI_Init();
    if (HI_SUCCESS != Ret)
    {
        ALOGE("HI_UNF_HDMI_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }
#ifdef HI_HDCP_SUPPORT
    //Ret = HIADP_HDMI_SetHDCPKey(enHDMIId);
    Ret = HIADP_HDMI_SetHDCPKey_DeviceInfo(enHDMIId);
    if (HI_SUCCESS != Ret)
    {
        ALOGE("Set hdcp erro:%#x\n",Ret);
        //return HI_FAILURE;
    }
#endif

    HI_UNF_HDMI_GetDelay(0,&stDelay);
    stDelay.bForceFmtDelay = HI_TRUE;
    stDelay.bForceMuteDelay = HI_TRUE;
    stDelay.u32FmtDelay = 500;
    stDelay.u32MuteDelay = 120;
    HI_UNF_HDMI_SetDelay(0,&stDelay);

    g_stCallbackFunc.pfnHdmiEventCallback = HDMI_Event_Proc;
    g_stCallbackFunc.pPrivateData = &g_stHdmiArgs;
    Ret = HI_UNF_HDMI_RegCallbackFunc(enHDMIId, &g_stCallbackFunc);
    if (Ret != HI_SUCCESS)
    {
        ALOGE("hdmi reg failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }

    g_stCallbackSleep.pfnHdmiEventCallback = HDMI_Suspend_Callback;
    g_stCallbackSleep.pPrivateData = &g_stHdmiArgs;

    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI regist callback func %s(%d)" , __func__, __LINE__);
    Ret = HI_UNF_HDMI_RegCallbackFunc(enHDMIId, &g_stCallbackSleep);
    if (Ret != HI_SUCCESS)
    {
        ALOGE("hdmi reg sleep failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }

    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI regist callback func %s(%d)" , __func__, __LINE__);


    stOpenParam.enDefaultMode = g_enDefaultMode;//HI_UNF_HDMI_FORCE_NULL;
    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI open  %s(%d)" , __func__, __LINE__);
    Ret = HI_UNF_HDMI_Open(enHDMIId, &stOpenParam);
    if (Ret != HI_SUCCESS)
    {
        ALOGE("HI_UNF_HDMI_Open failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }
    ALOGE("HI_UNF_HDMI_CEC_Enable after Open \n");
    HI_UNF_HDMI_CEC_Enable(enHDMIId);

    stHdmiStatus.bConnected = HI_FALSE;
    HI_UNF_HDMI_GetStatus(enHDMIId,&stHdmiStatus);
    ALOGE("HI_UNF_HDMI_GetStatus, stHdmiStatus.bConnected = %d\n",stHdmiStatus.bConnected);
    // for YPbPr,if source is YPbPr,bConnected will be false.
    if (HI_FALSE == stHdmiStatus.bConnected)
    {
        ALOGE("HDMI no connected \n");
        displayType = 0;
        stSinkCap.enNativeFormat = HI_UNF_ENC_FMT_720P_60;
        int fmtRet = HI_SUCCESS;
        fmtRet = get_format(&format);
        ALOGE("\n get_format, ret = %d, format = %d \n", fmtRet, (int)format);
        if(fmtRet != HI_SUCCESS) {
            ALOGE("get format err");
            set_format((display_format_e)stSinkCap.enNativeFormat);
            baseparam_save();
        }
        hdmi_enable = 0;
        cvbs_enable = 1;
    }
    ALOGI_IF(DEBUG_HDMI_INIT, "HDMI init exit %s(%d)" , __func__, __LINE__);
    return HI_SUCCESS;
}

HI_S32 HIADP_HDMI_DeInit(HI_UNF_HDMI_ID_E enHDMIId)
{

    HI_UNF_HDMI_Stop(enHDMIId);

    HI_UNF_HDMI_Close(enHDMIId);

    HI_UNF_HDMI_UnRegCallbackFunc(enHDMIId, &g_stCallbackFunc);

    HI_UNF_HDMI_DeInit();

    return HI_SUCCESS;
}
