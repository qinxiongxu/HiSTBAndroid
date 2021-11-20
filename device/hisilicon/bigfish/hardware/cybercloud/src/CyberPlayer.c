#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>
#include <stdbool.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"

#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_mpi.h"
#include "hi_adp_boardcfg.h"

#ifdef HI_FRONTEND_SUPPORT
#include "hi_adp_tuner.h"
#endif

#include <jni.h>
#include <utils/Log.h>
#include "CyberPlayer.h"

#define MAX_INSTANCE (2)
#define CYPTERPLAYER_VERSION "2016052600"

#define MAX_LOG_LEN (512)

static HI_VOID CYBERPLAYER_ADAPTER_LOG(HI_CHAR *pFuncName, HI_U32 u32LineNum, HI_CHAR *pHintStr, const HI_CHAR *format, ...)
{
    HI_CHAR LogStr[MAX_LOG_LEN] = {0};
    va_list args;
    HI_S32 LogLen;

    va_start(args, format);
    LogLen = vsnprintf(LogStr, MAX_LOG_LEN, format, args);
    va_end(args);
    LogStr[MAX_LOG_LEN - 1] = '\0';

    ALOGE("%s-%s[%d]:%s", pHintStr, pFuncName, u32LineNum, LogStr);

    return;
}

#define CYBER_PLAYER_LOGE(fmt...) \
    do \
    {\
            CYBERPLAYER_ADAPTER_LOG((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, "ERROR", fmt); \
    } while (0)

#define CYBER_PLAYER_LOGI(fmt...) \
    do \
    {\
            CYBERPLAYER_ADAPTER_LOG((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, "INFO", fmt); \
} while (0)


static pthread_mutex_t   g_CyberPlayerMutex = PTHREAD_MUTEX_INITIALIZER;

#define PLAYER_LOCK() \
    do \
{ \
    (HI_VOID)pthread_mutex_lock(&g_CyberPlayerMutex); \
} while (0)

#define PLAYER_UNLOCK() \
    do \
{ \
    (HI_VOID)pthread_mutex_unlock(&g_CyberPlayerMutex); \
} while (0)


/****************************Global structure declaration*************************************/
typedef struct cyber_player
{
    HI_HANDLE hAvplay;
    HI_HANDLE hWin;
    HI_HANDLE hTrack;
    HI_HANDLE hTsBuf;
    HI_S32 DMX_ID;
    HI_S32 Tuner_ID;
    CyberCloud_DateType dataType;
    HI_BOOL bUsed;
}CYBER_PLAYER_S;


/****************************Global variables*************************************/

static CYBER_PLAYER_S g_stPlayer[MAX_INSTANCE]={0};
static int g_PlayerNum = 0;

/**********************************************************************/

static int findAvailablePlayer()
{
    int i = 0;
    for(i=0;i<MAX_INSTANCE;i++)
    {
        if(g_stPlayer[i].bUsed == HI_FALSE)
        {
            break;
        }
    }

    if(i != MAX_INSTANCE)
    {
        return i;
    }
    else
    {
        return -1;
    }
}

static HI_S32 HIADP_Disp_Init_Cyber(HI_UNF_ENC_FMT_E enFormat)
{
    HI_S32                      Ret;
    HI_UNF_DISP_BG_COLOR_S      BgColor;
    HI_UNF_DISP_INTF_S          stIntf[2];
    HI_UNF_DISP_OFFSET_S        offset;
    HI_UNF_ENC_FMT_E            SdFmt = HI_UNF_ENC_FMT_PAL;

    Ret = HI_UNF_DISP_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_Init failed, Ret=%#x.\n", Ret);
        return Ret;
    }


    /* set display1 interface */
    stIntf[0].enIntfType                = HI_UNF_DISP_INTF_TYPE_YPBPR;
    stIntf[0].unIntf.stYPbPr.u8DacY     = DAC_YPBPR_Y;
    stIntf[0].unIntf.stYPbPr.u8DacPb    = DAC_YPBPR_PB;
    stIntf[0].unIntf.stYPbPr.u8DacPr    = DAC_YPBPR_PR;
    stIntf[1].enIntfType                = HI_UNF_DISP_INTF_TYPE_HDMI;
    stIntf[1].unIntf.enHdmi             = HI_UNF_HDMI_ID_0;
    Ret = HI_UNF_DISP_AttachIntf(HI_UNF_DISPLAY1, &stIntf[0], 2);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_AttachIntf failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    /* set display0 interface */
    stIntf[0].enIntfType            = HI_UNF_DISP_INTF_TYPE_CVBS;
    stIntf[0].unIntf.stCVBS.u8Dac   = //DAC_CVBS;
    Ret = HI_UNF_DISP_AttachIntf(HI_UNF_DISPLAY0, &stIntf[0], 1);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_AttachIntf failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Attach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_Attach failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_DeInit();
        return Ret;
    }
    /* set display1 format*/
    Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISPLAY1, enFormat);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_SetFormat failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    switch (enFormat)
    {
        case HI_UNF_ENC_FMT_3840X2160_60 :
        case HI_UNF_ENC_FMT_3840X2160_30 :
        case HI_UNF_ENC_FMT_3840X2160_24 :
        case HI_UNF_ENC_FMT_1080P_60 :
        case HI_UNF_ENC_FMT_1080P_30 :
        case HI_UNF_ENC_FMT_1080i_60 :
        case HI_UNF_ENC_FMT_720P_60 :
        case HI_UNF_ENC_FMT_480P_60 :
        case HI_UNF_ENC_FMT_NTSC :
            SdFmt = HI_UNF_ENC_FMT_NTSC;
            break;

        case HI_UNF_ENC_FMT_3840X2160_50 :
        case HI_UNF_ENC_FMT_3840X2160_25 :
        case HI_UNF_ENC_FMT_1080P_50 :
        case HI_UNF_ENC_FMT_1080P_25 :
        case HI_UNF_ENC_FMT_1080i_50 :
        case HI_UNF_ENC_FMT_720P_50 :
        case HI_UNF_ENC_FMT_576P_50 :
        case HI_UNF_ENC_FMT_PAL :
            SdFmt = HI_UNF_ENC_FMT_PAL;
            break;

        default:
            break;
    }

    Ret = HI_UNF_DISP_SetFormat(HI_UNF_DISPLAY0, SdFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_common_printf("call HI_UNF_DISP_SetFormat failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

#ifndef ANDROID
    Ret = HI_UNF_DISP_SetVirtualScreen(HI_UNF_DISPLAY1, 1280, 720);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_SetVirtualScreen failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    offset.u32Left      = 0;
    offset.u32Top       = 0;
    offset.u32Right     = 0;
    offset.u32Bottom    = 0;
    /*set display1 screen offset*/
    Ret = HI_UNF_DISP_SetScreenOffset(HI_UNF_DISPLAY1, &offset);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_SetBgColor failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    /*set display0 screen offset*/
    Ret = HI_UNF_DISP_SetScreenOffset(HI_UNF_DISPLAY0, &offset);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_SetBgColor failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }
#endif

    BgColor.u8Red   = 0;
    BgColor.u8Green = 0;
    BgColor.u8Blue  = 0;
    Ret = HI_UNF_DISP_SetBgColor(HI_UNF_DISPLAY1, &BgColor);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_SetBgColor failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_Open DISPLAY1 failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY0);
    if (Ret != HI_SUCCESS)
    {
        sample_common_printf("call HI_UNF_DISP_Open DISPLAY0 failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HIADP_HDMI_Init(HI_UNF_HDMI_ID_0, enFormat);
    if (HI_SUCCESS != Ret)
    {
        sample_common_printf("call HIADP_HDMI_Init failed, Ret=%#x.\n", Ret);
        HI_UNF_DISP_Close(HI_UNF_DISPLAY0);
        HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
        HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    return HI_SUCCESS;
}

int board_res_init(HI_UNF_ENC_FMT_E enFormat)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;

    (HI_VOID)HI_SYS_Init();

    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Init failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_Init failed, Ret\n", Ret);
    }

    Ret = HIADP_MCE_Exit();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call SndInit failed, Ret:%#x\n", Ret);
    }

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call SndInit failed, Ret:%#x\n", Ret);
    }

#if 0
    Ret = HI_UNF_DISP_Init();
    Ret |= HI_UNF_DISP_GetFormat(HI_UNF_DISPLAY1, &enFormatTmp);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DISP_GetFormat failed, Ret:%#x\n", Ret);
        enFormat = HI_UNF_ENC_FMT_720P_50;
    }
    else
    {
        enFormat = enFormatTmp;
        CYBER_PLAYER_LOGI("enFormat:%#x\n", enFormat);
    }
#endif

    Ret = HIADP_Disp_Init_Cyber(enFormat);
    if (HI_SUCCESS != Ret) {
        CYBER_PLAYER_LOGE("call HIADP_Disp_Init_Cyber failed.\n");
    }

    Ret = HI_UNF_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("Use VO Mode HI_UNF_VO_DEV_MODE_NORMAL, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int board_res_deinit()
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;

    Ret = HI_UNF_AVPLAY_DeInit();
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_DeInit failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_DMX_DeInit();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_DeInit failed, Ret\n", Ret);
    }

    Ret = HIADP_Snd_DeInit();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call SndInit failed, Ret:%#x\n", Ret);
    }

    Ret = HIADP_Disp_DeInit();
    if (HI_SUCCESS != Ret) {
        CYBER_PLAYER_LOGE("call HIADP_Disp_DeInit failed.\n");
    }

    Ret = HI_UNF_VO_DeInit();
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("Use VO Mode HI_UNF_VO_DEV_MODE_NORMAL, Ret:%#x\n", Ret);
    }

    (HI_VOID)HI_SYS_DeInit();

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;

}
void format2HisiFormat(C_SDK_DISP_FORMAT format, HI_UNF_ENC_FMT_E *penFormat)
{
    switch (format)
    {
	    case SDK_FMT_1080P_60:
	        *penFormat = HI_UNF_ENC_FMT_1080P_60;
	        break;
	    case SDK_FMT_1080P_50:
	        *penFormat = HI_UNF_ENC_FMT_1080P_50;
	        break;
	    case SDK_FMT_1080P_30:
	        *penFormat = HI_UNF_ENC_FMT_1080P_30;
	        break;
	    case SDK_FMT_1080P_25:
	        *penFormat = HI_UNF_ENC_FMT_1080P_25;
	        break;
	    case SDK_FMT_1080P_24:
	        *penFormat = HI_UNF_ENC_FMT_1080P_24;
	        break;
	    case SDK_FMT_1080i_60:
	        *penFormat = HI_UNF_ENC_FMT_1080i_60;
	        break;
	    case SDK_FMT_1080i_50:
	        *penFormat = HI_UNF_ENC_FMT_1080i_50;
	        break;
	    case SDK_FMT_720P_50:
	        *penFormat = HI_UNF_ENC_FMT_720P_50;
	        break;
	    case SDK_FMT_576P_50:
	        *penFormat = HI_UNF_ENC_FMT_576P_50;
	        break;
	    case SDK_FMT_480P_60:
	        *penFormat = HI_UNF_ENC_FMT_480P_60;
	        break;
        default:
            *penFormat = HI_UNF_ENC_FMT_720P_50;
            break;
    }

}
CyberCloud_AVHandle CyberAVInit(CyberCloud_DateType type, C_SDK_DISP_FORMAT format)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_S32 s32CurrentPlayer = -1;
    HI_UNF_SYNC_ATTR_S SyncAttr;
    HI_UNF_AVPLAY_ATTR_S AvplayAttr;
    HI_HANDLE hAvplay;
    HI_HANDLE hWin;
    HI_HANDLE hTrack;
    HI_UNF_AUDIOTRACK_ATTR_S stTrackAttr;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowDelayAttr;
    HI_UNF_ENC_FMT_E enHisiFormat;
    PLAYER_LOCK();

    s32CurrentPlayer = findAvailablePlayer();

    if(-1 == s32CurrentPlayer)
    {
        CYBER_PLAYER_LOGE("Only support %d Player\n", MAX_INSTANCE);
        PLAYER_UNLOCK();
        return NULL;
    }

    g_stPlayer[s32CurrentPlayer].DMX_ID = s32CurrentPlayer;
    g_stPlayer[s32CurrentPlayer].Tuner_ID = 1;

    if(0 == g_PlayerNum )
    {
        format2HisiFormat(format, &enHisiFormat);
        board_res_init(enHisiFormat);
    }

    Ret = HIADP_VO_CreatWin(HI_NULL, &hWin);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("Call HIADP_VO_CreatWin fail!");
        PLAYER_UNLOCK();
        return NULL;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HIADP_AVPlay_RegADecLib failed.\n");
    }

    if(CyberCloud_TS == type)
    {
        Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr,HI_UNF_AVPLAY_STREAM_TYPE_TS);
    }
    else
    {
        Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr,HI_UNF_AVPLAY_STREAM_TYPE_ES);
    }

    AvplayAttr.u32DemuxId = g_stPlayer[s32CurrentPlayer].DMX_ID;
    AvplayAttr.stStreamAttr.u32VidBufSize = (5 * 1024 * 1024);
    AvplayAttr.stStreamAttr.u32AudBufSize = (384 * 1024);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Create %d failed, Ret:%#x\n", type, Ret);
        goto VO_DEINIT;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ChnOpen for Video failed, Ret:%#x\n", Ret);
        goto AVPLAY_DESTROY;
    }

    Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ChnOpen for Audio failed, Ret:%#x\n", Ret);
        goto VCHN_CLOSE;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, hAvplay);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_VO_AttachWindow failed:%#x.\n", Ret);
        goto WIN_DETACH;
    }

    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_VO_SetWindowEnable failed, Ret:%#x\n", Ret);
        goto WIN_DETACH;
    }

    Ret  = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_MASTER, &stTrackAttr);
    Ret |= HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &hTrack);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("HI_UNF_SND_CreateTrack with MASTER, Ret:%#x\n", Ret);
        Ret  = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
        Ret |= HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &hTrack);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("HI_UNF_SND_CreateTrack with Slave, Ret:%#x\n", Ret);
            goto WIN_DETACH;
        }
    }

    Ret |= HI_UNF_SND_Attach(hTrack, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_SND_Attach failed, Ret:%#x\n", Ret);
        goto WIN_DETACH;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);

    HI_UNF_AVPLAY_OVERFLOW_E overflow = HI_UNF_AVPLAY_OVERFLOW_DISCARD;
    Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_OVERFLOW, &overflow);
    stLowDelayAttr.bEnable = HI_TRUE;
    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowDelayAttr);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr failed, Ret:%#x\n", Ret);
        goto SND_DETACH;
    }

    g_stPlayer[s32CurrentPlayer].hAvplay = hAvplay;
    g_stPlayer[s32CurrentPlayer].hTrack = hTrack;
    g_stPlayer[s32CurrentPlayer].hWin  = hWin;
    g_stPlayer[s32CurrentPlayer].bUsed = HI_TRUE;

    g_PlayerNum++;
    PLAYER_UNLOCK();

    CYBER_PLAYER_LOGI("Exit\n");
    return (CyberCloud_AVHandle)&(g_stPlayer[s32CurrentPlayer]);


SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, hAvplay);

ACHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

VCHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);

AVPLAY_DESTROY:
    HI_UNF_AVPLAY_Destroy(hAvplay);

VO_DEINIT:
    HI_UNF_VO_DestroyWindow(hWin);

ERR_EXIT:

    PLAYER_UNLOCK();

    CYBER_PLAYER_LOGI("Exit\n");
    return NULL;
}


int CyberAVUnInit(CyberCloud_AVHandle handle)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_HANDLE hAvplay;
    HI_HANDLE hWin;
    HI_HANDLE hTrack;
    HI_HANDLE hTsBuf;
    CYBER_PLAYER_S *pstPlayer = NULL;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return -1;
    }

    PLAYER_LOCK();
    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        PLAYER_UNLOCK();
        return -1;
    }

    hAvplay = pstPlayer->hAvplay;
    hWin = pstPlayer->hWin;
    hTrack = pstPlayer->hTrack;
    hTsBuf = pstPlayer->hTsBuf;

    Ret = HI_UNF_SND_Detach(hTrack, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_SND_Detach failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_VO_SetWindowEnable failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_VO_DetachWindow(hWin, hAvplay);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_VO_DetachWindow failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ChnClose AUD failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ChnClose VID failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_AVPLAY_Destroy(hAvplay);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Destroy failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_VO_DestroyWindow(hWin);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_VO_DestroyWindow failed, Ret:%#x\n", Ret);
    }

    if(CyberCloud_TS == pstPlayer->dataType &&
        pstPlayer->hTsBuf != HI_INVALID_HANDLE)
    {
        Ret = HI_UNF_DMX_DestroyTSBuffer(hTsBuf);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_DMX_DestroyTSBuffer failed, Ret:%#x\n", Ret);
        }
    }

    if(1 == g_PlayerNum )
    {
        board_res_deinit();
    }

    pstPlayer->hAvplay = HI_INVALID_HANDLE;
    pstPlayer->hTrack = HI_INVALID_HANDLE;
    pstPlayer->hWin  = HI_INVALID_HANDLE;
    pstPlayer->hTsBuf = HI_INVALID_HANDLE;
    pstPlayer->bUsed = HI_FALSE;
    g_PlayerNum--;

    PLAYER_UNLOCK();

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberSetScreen(CyberCloud_AVHandle handle, int x, int y, int width, int height)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_WINDOW_ATTR_S stWinAttr;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    CYBER_PLAYER_LOGI("Window Param:x, y, width, height: %d, %d, %d, %d\n", x, y, width, height);

    Ret = HI_UNF_VO_GetWindowAttr(pstPlayer->hWin, &stWinAttr);
    stWinAttr.stOutputRect.s32X = x;
    stWinAttr.stOutputRect.s32Y = y;
    stWinAttr.stOutputRect.s32Height = height;
    stWinAttr.stOutputRect.s32Width = width;
    Ret |= HI_UNF_VO_SetWindowAttr(pstPlayer->hWin, &stWinAttr);
    if( HI_SUCCESS != Ret )
    {
        CYBER_PLAYER_LOGE("HI_UNF_VO_SetWindowAttr failed, Ret:%#x\n", Ret);
        return Ret;
    }

    return Ret;
}

int CyberAVSetFrontWindow(CyberCloud_AVHandle handle)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_WINDOW_ATTR_S stWinAttr;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_VO_SetWindowZorder(pstPlayer->hWin,  HI_LAYER_ZORDER_MOVETOP);
    if(HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("HI_UNF_VO_SetWindowAttr failed, Ret:%#x\n", Ret);
        return Ret;
    }

    return Ret;

}


static HI_S32 HIADP_AVPlay_PlayProg_Lowdelay(HI_HANDLE hAvplay, PMT_COMPACT_TBL *pProgTbl, HI_U32 ProgNum,
                                             HI_BOOL bAudPlay)
{
    CYBER_PLAYER_LOGI("Enter\n");

    HI_UNF_AVPLAY_STOP_OPT_S Stop;
    HI_U32 VidPid;
    HI_U32 AudPid;
    HI_U32 PcrPid;
    HI_UNF_VCODEC_TYPE_E enVidType;
    HI_U32 u32AudType;
    HI_S32 Ret;

    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;
    Ret = HI_UNF_AVPLAY_Stop(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &Stop);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Stop failed.\n");
        return Ret;
    }

    ProgNum = ProgNum % pProgTbl->prog_num;
    if (pProgTbl->proginfo[ProgNum].VElementNum > 0)
    {
        VidPid = pProgTbl->proginfo[ProgNum].VElementPid;
        enVidType = pProgTbl->proginfo[ProgNum].VideoType;
    }
    else
    {
        VidPid = INVALID_TSPID;
        enVidType = HI_UNF_VCODEC_TYPE_BUTT;
    }

    if (pProgTbl->proginfo[ProgNum].AElementNum > 0)
    {
        AudPid = pProgTbl->proginfo[ProgNum].AElementPid;
        u32AudType = pProgTbl->proginfo[ProgNum].AudioType;
    }
    else
    {
        AudPid = INVALID_TSPID;
        u32AudType = 0xffffffff;
    }

    PcrPid = pProgTbl->proginfo[ProgNum].PcrPid;
    if (INVALID_TSPID != PcrPid)
    {
        Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_PCR_PID, &PcrPid);
        if (HI_SUCCESS != Ret)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr failed.\n");

            PcrPid = INVALID_TSPID;
            Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_PCR_PID, &PcrPid);
            if (HI_SUCCESS != Ret)
            {
                CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr failed.\n");
                return Ret;
            }
        }
    }

    if (VidPid != INVALID_TSPID)
    {
        Ret  = HIADP_AVPlay_SetVdecAttr(hAvplay, enVidType, HI_UNF_VCODEC_MODE_NORMAL);
        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &VidPid);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("call HIADP_AVPlay_SetVdecAttr failed.\n");
            return Ret;
        }

        HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowdelayAttr;
        Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
        stLowdelayAttr.bEnable = HI_TRUE;
        Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY failed, Ret:%#x\n", Ret);
            return Ret;
        }
        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
            return Ret;
        }

    }

    if ((HI_TRUE == bAudPlay) && (AudPid != INVALID_TSPID))
    {
        Ret = HIADP_AVPlay_SetAdecAttr(hAvplay, u32AudType, HD_DEC_MODE_RAWPCM, 1);

        Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &AudPid);
        if (HI_SUCCESS != Ret)
        {
            CYBER_PLAYER_LOGE("HIADP_AVPlay_SetAdecAttr failed:%#x\n", Ret);
            return Ret;
        }

        Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start to start audio failed, Ret:%#x\n", Ret);
            //return Ret;
        }
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return HI_SUCCESS;
}

int CyberAVTsSetParam(CyberCloud_AVHandle handle, int videoType, int videoPID, int audioType,
                      int audioPID)
{

    CYBER_PLAYER_LOGI("Enter\n");
    CYBER_PLAYER_LOGI("videoType:%d, videoPid:%d, audioType:%d, audioPid:%d\n", videoType, videoPID, audioType, audioPID);

    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_WINDOW_ATTR_S stWinAttr;
    HI_U32 ProgNum;
    PMT_COMPACT_TBL pProgTbl;
    PMT_COMPACT_PROG proginfo;
    PMT_COMPACT_TBL *g_pProgTbl = HI_NULL;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowdelayAttr;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_DMX_AttachTSPort(pstPlayer->DMX_ID, HI_UNF_DMX_PORT_RAM_0 + pstPlayer->DMX_ID);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_AttachTSPort failed. Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_DMX_CreateTSBuffer(HI_UNF_DMX_PORT_RAM_0 + pstPlayer->DMX_ID, 0x200000, &(pstPlayer->hTsBuf));
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_CreateTSBuffer failed, Ret:%#x\n", Ret);
    }

    Ret = HI_UNF_DMX_ResetTSBuffer(pstPlayer->hTsBuf);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_ResetTSBuffer failed.\n");
    }

    switch (audioType)
    {
        case SDK_AudioType_MPEG2:
        case SDK_AudioType_MP3:
            audioType = HA_AUDIO_ID_MP3;
            break;
        case SDK_AudioType_MPEG2_AAC:
            audioType = HA_AUDIO_ID_AAC;
            break;
        default:
            audioType = HA_AUDIO_ID_MP3;
            break;
    }
    Ret = HIADP_AVPlay_SetAdecAttr(pstPlayer->hAvplay, audioType, HD_DEC_MODE_RAWPCM, 1);
    Ret |= HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &audioPID);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("HIADP_AVPlay_SetAdecAttr failed:%#x\n", Ret);
        return Ret;
    }

    switch (videoType)
    {
        case SDK_VideoType_MPEG2:
            videoType = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
        case SDK_VideoType_H264:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
        default:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
    }

    Ret  = HIADP_AVPlay_SetVdecAttr(pstPlayer->hAvplay, videoType, HI_UNF_VCODEC_MODE_NORMAL);
    Ret |= HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &videoPID);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HIADP_AVPlay_SetVdecAttr failed.\n");
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    stLowdelayAttr.bEnable = HI_TRUE;
    Ret = HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY failed, Ret:%#x\n", Ret);
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_Start(pstPlayer->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID|HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");
    //HI_UNF_SND_SetHdmiMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_HDMI0, HI_UNF_SND_HDMI_MODE_LPCM);

    return HI_SUCCESS;

}

int CyberAVPlayTs(CyberCloud_AVHandle handle, void* data, int len)
{
    CYBER_PLAYER_LOGI("Enter, len:%#x\n", len);

    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S StreamBuf;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    //CYBER_PLAYER_LOGI("len:%#x\n", len);

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_ES == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }


    Ret = HI_UNF_DMX_GetTSBuffer(pstPlayer->hTsBuf, len, &StreamBuf, 0);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGI("Get TS Buffer Error, Ret:%#x\n", Ret);
        return Ret;
    }

    memcpy(StreamBuf.pu8Data, data, len);
    Ret = HI_UNF_DMX_PutTSBuffer(pstPlayer->hTsBuf, len);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("Put TS Buffer Error, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");

    //HI_U32 delay ;
    //Ret = HI_MPI_AO_Track_GetDelayMs(hTrack, &delay);
    //   if (HI_SUCCESS == Ret && delay > 200)
    //  {
    //        CYBER_PLAYER_LOGE("%s L%d HI_MPI_AO_Track_GetDelayMs:%d", __FUNCTION__, __LINE__,delay);
    //    }

    //..SndDelay
    //HI_MPI_HIAO_GetDelayMs(hSnd, &SndDelay);
    //.. SndDelay..200 .......reset ao.....AO....
    //if(SndDelay >200)
    //{
    //4.2 undefined this function
    //CYBER_PLAYER_LOGE("snd reset \n");
    //HI_MPI_HIAO_Reset(hSnd);
    //}

    return HI_SUCCESS;
}

int CyberAVStop(CyberCloud_AVHandle handle, int gClearIframe)
{
    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if (gClearIframe)
    {
        Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    }
    else
    {
        Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    }

    Stop.u32TimeoutMs = 0;
    Ret = HI_UNF_AVPLAY_Stop(pstPlayer->hAvplay, (HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD), &Stop);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Stop failed.\n");
    }

    return Ret;
}

#define QAM_16 16
#define QAM_32 32
#define QAM_64 64
#define QAM_128 128
#define QAM_256 256
#define QAM_DEFAULT QAM_64

static HI_S32 TunerLock(const Freq_Param *Ts, HI_S32 DmxId, HI_S32 TunerId)
{

#ifdef HI_FRONTEND_SUPPORT

    HI_S32 Ret;
    CYBER_PLAYER_LOGI("Enter\n");

    if(!Ts)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    CYBER_PLAYER_LOGE("DmxId:%#x, TunerId:%#x, uFrequency:%u, uModulationType:%u, uSymbolRate:%u\n", DmxId, TunerId, Ts->uFrequency, Ts->uModulationType, Ts->uSymbolRate);

    Ret = HIADP_DMX_AttachTSPort(DmxId, TunerId);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_DMX_AttachTSPort failed.\n");
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("call HIADP_Tuner_Init failed.\n");
    }

    HI_U32 Frequency  = (HI_U32) (Ts->uFrequency);
    HI_U32 SymbolRate = (HI_U32) (Ts->uSymbolRate);
    HI_U32 ModulationType = QAM_DEFAULT;
    switch (Ts->uModulationType)
    {
    case SDK_ModType_QAM16:
        ModulationType = QAM_16;
        break;
    case SDK_ModType_QAM32:
        ModulationType = QAM_32;
        break;
    case SDK_ModType_QAM64:
        ModulationType = QAM_64;
        break;
    case SDK_ModType_QAM128:
        ModulationType = QAM_128;
        break;
    case SDK_ModType_QAM256:
        ModulationType = QAM_256;
        break;
    default:
        CYBER_PLAYER_LOGE("Bad ModType_QAM\n");
        break;
    }

    CYBER_PLAYER_LOGI("frequency:%d,symbolrate:%d,modulationtype:%d\n", Frequency, SymbolRate, ModulationType);
    Ret = HIADP_Tuner_Connect(TunerId, Frequency, SymbolRate, ModulationType);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("CALL HIADP_Tuner_Connect FAIL, Ret:%#x\n", Ret);
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;

#else
    CYBER_PLAYER_LOGE("------------No Tuner support----------\n");
    return HI_SUCCESS;
#endif
}

int CyberAVPlayByProNo(CyberCloud_AVHandle handle, Freq_Param const *pTs, int uProgNo)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S StreamBuf;
    static PMT_COMPACT_TBL *pPmtTbl = HI_NULL;

    if(!handle || !pTs)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    CYBER_PLAYER_LOGI("uFrequency:%u, uModulationType:%u, uSymbolRate:%u, uProgNo:%u\n", pTs->uFrequency, pTs->uModulationType, pTs->uSymbolRate, uProgNo);

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_ES == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

    Ret = TunerLock(pTs, pstPlayer->DMX_ID, pstPlayer->Tuner_ID);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("HIADP_Tuner_Connect failed!, Ret:%#x\n",  Ret);
        return Ret;
    }

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(pstPlayer->DMX_ID, &pPmtTbl);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("Call HIADP_Search_GetAllPmt failed, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("prog_num:%u, APid:%#x, AudioType:%#x, VPid:%#x, VType:%#x\n", pPmtTbl->prog_num, pPmtTbl->proginfo[0].AElementPid,
                                                        pPmtTbl->proginfo[0].AudioType, pPmtTbl->proginfo[0].VElementPid,
                                                        pPmtTbl->proginfo[0].VideoType);
    Ret = HIADP_AVPlay_PlayProg_Lowdelay(pstPlayer->hAvplay, pPmtTbl, uProgNo, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("HIADP_AVPlay_PlayProg failed!\n", Ret);
    }

    HIADP_Search_FreeAllPmt(pPmtTbl);
    HIADP_Search_DeInit();

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberAVPlayByPid(CyberCloud_AVHandle handle, Freq_Param const *pTs, Pid_Param* pidParam)
{
    CYBER_PLAYER_LOGI("Enter\n");

    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S StreamBuf;
    HI_U32 index;
    static PMT_COMPACT_TBL *pPmtTbl = HI_NULL;
    int videoType;
    int videoPID;
    int audioType;
    int audioPID;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowdelayAttr;

    if(!handle || !pTs || !pidParam)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    CYBER_PLAYER_LOGI("uAudioPid:%#x, uAudioType:%#x, uPcrPid:%#x, uVideoPid:%#x, uVideoType:%#x\n",
        pidParam->uAudioPid, pidParam->uAudioType, pidParam->uPcrPid, pidParam->uVideoPid, pidParam->uVideoType);
    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_ES == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

#ifdef HI_FRONTEND_SUPPORT
    Ret = TunerLock(pTs,pstPlayer->DMX_ID, pstPlayer->Tuner_ID);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("HIADP_Tuner_Connect failed!, Ret:%#x\n",  Ret);
        return Ret;
    }
#else
    CYBER_PLAYER_LOGE("------------No Tuner support----------\n");
#endif
    switch (pidParam->uAudioType)
    {
        case SDK_AudioType_MPEG2:
        case SDK_AudioType_MP3:
            audioType = HA_AUDIO_ID_MP3;
            break;
        case SDK_AudioType_MPEG2_AAC:
            audioType = HA_AUDIO_ID_AAC;
            break;
        default:
            audioType = HA_AUDIO_ID_MP3;
            break;
    }

    Ret = HIADP_AVPlay_SetAdecAttr(pstPlayer->hAvplay, audioType, HD_DEC_MODE_RAWPCM, 1);
    Ret |= HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &(pidParam->uAudioPid));
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("HIADP_AVPlay_SetAdecAttr failed:%#x\n", Ret);
        return Ret;
    }


    if (0x1fff != pidParam->uPcrPid)
    {
        Ret = HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay,HI_UNF_AVPLAY_ATTR_ID_PCR_PID,&(pidParam->uPcrPid));
        if (HI_SUCCESS != Ret)
        {
            CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ATTR_ID_PCR_PID failed, Ret:%#x\n", Ret);

            pidParam->uPcrPid = 0x1fff;
            Ret = HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay,HI_UNF_AVPLAY_ATTR_ID_PCR_PID,&(pidParam->uPcrPid));
            if (HI_SUCCESS != Ret)
            {
                CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_ATTR_ID_PCR_PID failed, Ret:%#x\n", Ret);
            }
        }
    }


    switch (pidParam->uVideoType)
    {
        case SDK_VideoType_MPEG2:
            videoType = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
        case SDK_VideoType_H264:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
        default:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
    }

    Ret  = HIADP_AVPlay_SetVdecAttr(pstPlayer->hAvplay, videoType, HI_UNF_VCODEC_MODE_NORMAL);
    Ret |= HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &(pidParam->uVideoPid));
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HIADP_AVPlay_SetVdecAttr failed.\n");
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    stLowdelayAttr.bEnable = HI_TRUE;
    Ret = HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY failed, Ret:%#x\n", Ret);
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_Start(pstPlayer->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberAVEsSetVideoParam(CyberCloud_AVHandle handle, int videoType)
{
    CYBER_PLAYER_LOGI("Enter\n");

    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S StreamBuf;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowdelayAttr;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_TS == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

    switch (videoType)
    {
        case SDK_VideoType_MPEG2:
            videoType = HI_UNF_VCODEC_TYPE_MPEG2;
            break;
        case SDK_VideoType_H264:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
        default:
            videoType = HI_UNF_VCODEC_TYPE_H264;
            break;
    }

    Ret  = HIADP_AVPlay_SetVdecAttr(pstPlayer->hAvplay, videoType, HI_UNF_VCODEC_MODE_NORMAL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HIADP_AVPlay_SetVdecAttr failed.\n");
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    stLowdelayAttr.bEnable = HI_TRUE;
    Ret = HI_UNF_AVPLAY_SetAttr(pstPlayer->hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowdelayAttr);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY failed, Ret:%#x\n", Ret);
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_Start(pstPlayer->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberAVPlayEsVideo(CyberCloud_AVHandle handle, void* data, int len)
{
    //CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S  StreamBuf;

    if(!handle || !data)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_TS == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_AVPLAY_GetBuf(pstPlayer->hAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID, len, &StreamBuf, 0);
    if (Ret != HI_SUCCESS)
    {
        //CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_GetBuf failed, Ret:%#x\n", Ret);
        return Ret;
    }

    memcpy(StreamBuf.pu8Data, data , sizeof(HI_U8) * len);

    Ret = HI_UNF_AVPLAY_PutBuf(pstPlayer->hAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID, len, 0);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_PutBuf failed, Ret:%#x\n", Ret);
        return Ret;
    }

    //CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberAVEsSetAudioParam(CyberCloud_AVHandle handle, int audioType, int sampleRateInHz,
                                           int channelConfig,
                                           int audioFormat)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    HI_HANDLE hWin;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_U32 index;

    if(!handle)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_ES == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

    switch (audioType)
    {
        case SDK_AudioType_MPEG2:
        case SDK_AudioType_MP3:
            audioType = HA_AUDIO_ID_MP3;
            break;
        case SDK_AudioType_MPEG2_AAC:
            audioType = HA_AUDIO_ID_AAC;
            break;
        default:
            audioType = HA_AUDIO_ID_MP3;
            break;
    }

    Ret = HIADP_AVPlay_SetAdecAttr(pstPlayer->hAvplay, audioType, HD_DEC_MODE_RAWPCM, 1);
    if (HI_SUCCESS != Ret)
    {
        CYBER_PLAYER_LOGE("HIADP_AVPlay_SetAdecAttr failed:%#x\n", Ret);
        return Ret;
    }

    Ret = HI_UNF_AVPLAY_Start(pstPlayer->hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    CYBER_PLAYER_LOGI("Exit\n");
    return Ret;

}

int CyberAVPlayEsAudio(CyberCloud_AVHandle handle, void* data, int len)
{
    //CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_STREAM_BUF_S  StreamBuf;

    if(!handle || !data)
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    if(CyberCloud_TS == pstPlayer->dataType)
    {
        CYBER_PLAYER_LOGE("Error, Player is init as Ts!!!\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_AVPLAY_GetBuf(pstPlayer->hAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD, len, &StreamBuf, 0);
    if (Ret != HI_SUCCESS)
    {
        //CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    memcpy(StreamBuf.pu8Data, data , sizeof(HI_U8) * len);

    Ret = HI_UNF_AVPLAY_PutBuf(pstPlayer->hAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD, len, 0);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return Ret;
    }

    //CYBER_PLAYER_LOGI("Exit\n");
    return Ret;
}

int CyberAVGetStatus(CyberCloud_AVHandle handle, int uDecoderType)
{
    CYBER_PLAYER_LOGI("Enter\n");
    HI_S32 Ret;
    CYBER_PLAYER_S *pstPlayer = NULL;
    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    if(!handle )
    {
        CYBER_PLAYER_LOGE("NULL pointer is forbiden\n");
        return HI_FAILURE;
    }

    pstPlayer = (CYBER_PLAYER_S *)handle;

    if(HI_FALSE == pstPlayer->bUsed )
    {
        CYBER_PLAYER_LOGE("Player is not init, can't be operated\n");
        return HI_FAILURE;
    }

    Ret = HI_UNF_AVPLAY_GetStatusInfo(pstPlayer->hAvplay, &stStatusInfo);
    if (Ret != HI_SUCCESS)
    {
        CYBER_PLAYER_LOGE("call HI_UNF_AVPLAY_Start failed, Ret:%#x\n", Ret);
        return HI_FAILURE;
    }

    if(stStatusInfo.enRunStatus == HI_UNF_AVPLAY_STATUS_PLAY)
    {
        CYBER_PLAYER_LOGI("HI_UNF_AVPLAY_STATUS_PLAY\n");
        return HI_SUCCESS;
    }
    else
    {
        CYBER_PLAYER_LOGI("NOT HI_UNF_AVPLAY_STATUS_PLAY\n");
        return HI_FAILURE;
    }
}
