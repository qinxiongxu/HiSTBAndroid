/******************************************************************************
  Copyright (C), 2012-2013, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : Tsplayer.cpp
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2012/02/13
Description   :
History       :
1.Date        : 2012/02/13
Author        : p00187885
Modification  : Created file
******************************************************************************/

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
#include <dlfcn.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#ifdef ANDROID
#define LOG_TAG "libTsPlayer"
#include <cutils/log.h>
#include <cutils/properties.h>
#endif

#include "hi_unf_common.h"
#include "hi_unf_ecs.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_so.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_subt.h"
#include "hi_mpi_demux.h"

#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DTSHD.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.COOK.decode.h"
//#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "HA.AUDIO.AMRWB.codec.h"
//#include "HA.AUDIO.FFMPEG_DECODE.decode.h"
#include "HA.AUDIO.DOLBYPLUS.decode.h"
#include "HA.AUDIO.DOLBYTRUEHD.decode.h"
#include "HA.AUDIO.TRUEHDPASSTHROUGH.decode.h"
#include "HA.AUDIO.BLURAYLPCM.decode.h"
#include "HA.AUDIO.AC3PASSTHROUGH.decode.h"
#include "HA.AUDIO.DTSPASSTHROUGH.decode.h"

#include "TsPlayer.h"
#include <sys/stat.h>

#include "hi_video_codec.h"

#define TSPLAY_VERSION    2

#ifndef FBIOPUT_OSD_SRCCOLORKEY
#define FBIOPUT_OSD_SRCCOLORKEY    0x46fb
#endif

#ifndef FBIOPUT_OSD_SRCKEY_ENABLE
#define FBIOPUT_OSD_SRCKEY_ENABLE  0x46fa
#endif


#ifndef FBIOPUT_OSD_SET_GBL_ALPHA
#define FBIOPUT_OSD_SET_GBL_ALPHA  0x4500
#endif

#define HI_SUBT_MAX_PTS_OFFSET 0x100000 /* the max value of pts offset */

#define DMX_ID                     0
#define PORT_ID                    HI_UNF_DMX_PORT_RAM_0
#define TS_BUF_SIZE                0x200000
#define VID_BUF_SIZE               (9*1024*1024)
#define INVALID_TS_PID             0x1fff
#define VO_DIVID_DISPLAY_PERCENT   80

#define SUBTITLE_TEST

typedef HI_S32 (*SUBT_DATA_CALLBACK_FN)(HI_U32 u32UserData, HI_U8 *pu8Data, HI_U32 u32DataLength);

typedef struct tagSUBT_DATA_INSTALL_PARAM_S
{
    HI_U32 u32DmxID;
    HI_U16 u16SubtPID;
    HI_U32 u32UserData;
    HI_UNF_SUBT_DATA_TYPE_E enDataType;
    SUBT_DATA_CALLBACK_FN pfnCallback;
}SUBT_DATA_INSTALL_PARAM_S;


typedef struct tagSUBT_DATA_S
{
    HI_BOOL bEnable;
    SUBT_DATA_INSTALL_PARAM_S stInstallParam;
    HI_HANDLE hChannelID;
    HI_HANDLE hFilterID;
}SUBT_DATA_S;


/** invalid pts*/
#define HI_FORMAT_NO_PTS                       (-1)

#define LIB_TSPLAYER_RELEASE_TAG ("Build Time:["__DATE__", "__TIME__"]")

#define PLAYER_CHK_PRINTF(val, ret, printstr) /*lint -save -e506 -e774*/ \
    do \
{ \
    if ((val)) \
    { \
        ALOGE("### [TsPlayer]: [%s:%d], %s, ret 0x%x \n", __FILE__, __LINE__, printstr, (HI_S32)ret); \
    } \
} while (0) /*lint -restore */

#define PLAYER_MEMSET(ptr, val, size) \
    do \
{ \
    if (NULL != (ptr)) \
    { \
        memset((ptr), (val), (size)); \
    } \
} while (0)

#define PLAYER_MEMMOVE(ptrdst, ptrsrc, size) \
    do \
{ \
    if (NULL != (ptrdst) && NULL != (ptrsrc)) \
    { \
        memmove((ptrdst), (ptrsrc), (size)); \
    } \
} while (0)

#define PLAYER_MEMCPY(ptrdst, ptrsrc, size) \
    do \
{ \
    if (NULL != (ptrdst) && NULL != (ptrsrc)) \
    { \
        memcpy((ptrdst), (ptrsrc), (size)); \
    } \
} while (0)

#define PLAYER_FREE(ptr) \
    do \
{ \
    if ((ptr)) \
    { \
        free((ptr)); \
        (ptr) = NULL; \
    } \
} while (0)

#define PLAYER_LOCK(mutex) \
    do \
{ \
    ALOGE("### [TsPlayer]: [%s:%d] lock\n", __FILE__, __LINE__);\
    (HI_VOID)pthread_mutex_lock((mutex)); \
} while (0)

#define PLAYER_UNLOCK(mutex) \
    do \
{ \
    ALOGE("### [TsPlayer]: [%s:%d] unlock\n", __FILE__, __LINE__);\
    (HI_VOID)pthread_mutex_unlock((mutex)); \
} while (0)

#define PLAYER_SLEEP(ms) \
    do \
{ \
    usleep((ms) * 1000); \
} while (0)

#define MAX_LOG_LEN           (512)

DTSHD_DECODE_OPENCONFIG_S           DtsDecConfig;
DOLBYPLUS_DECODE_OPENCONFIG_S       DolbyDecConfig;
HA_BLURAYLPCM_DECODE_OPENCONFIG_S   BlyRayDecConfig;
TRUEHD_DECODE_OPENCONFIG_S          TrueHdDecConfig;

HI_VOID IPTV_ADAPTER_PLAYER_LOG(HI_CHAR *pFuncName, HI_U32 u32LineNum, const HI_CHAR *format, ...);

#define PLAYER_LOGE(fmt...) \
do \
{\
    IPTV_ADAPTER_PLAYER_LOG((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)

#define PLAYER_LOGI(fmt...) \
do \
{\
    IPTV_ADAPTER_PLAYER_LOG((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)


HI_VOID IPTV_ADAPTER_PLAYER_LOG(HI_CHAR *pFuncName, HI_U32 u32LineNum, const HI_CHAR *format, ...)
{
    HI_CHAR     LogStr[MAX_LOG_LEN] = {0};
    va_list     args;
    HI_S32      LogLen;

    va_start(args, format);
    LogLen = vsnprintf(LogStr, MAX_LOG_LEN, format, args);
    va_end(args);
    LogStr[MAX_LOG_LEN-1] = '\0';

    ALOGE("%s[%d]:%s", pFuncName, u32LineNum, LogStr);

    return ;
}


#ifdef SUBTITLE
static HI_S32 GetPlayingPts(HI_U32 u32UserData, HI_S64 *ps64CurrentPts);
#endif

CTC_MediaProcessor              *g_pHandle = NULL;
static IPTV_PLAYER_EVT_CB       g_CallBackFunc = NULL;
static HI_VOID                  *g_CallBackHandle = NULL;
static HI_U32                   g_FirstFrm = 0;
static HI_U32                   g_Ratio = 1;
static HI_U32                   g_Cvrs = 1;
static HI_HANDLE                g_hWin = HI_INVALID_HANDLE;
static HI_HANDLE                g_hAvplay = HI_INVALID_HANDLE;
static HI_HANDLE                g_hTrack = HI_INVALID_HANDLE;
static HI_UNF_SND_TRACK_TYPE_E  g_SndTrackType = HI_UNF_SND_TRACK_TYPE_BUTT;
static HI_UNF_WINDOW_ATTR_S     g_WinAttr;
static HI_TSPLAYER_STATE_E      g_eTsplayerState;
static pthread_t                g_hGetStatus;
static volatile HI_BOOL         g_bThreadQuit = HI_FALSE;
static HI_U32                   g_u32Cnt = 0;
static HI_VOID*                 __GetBufStatus(HI_VOID *pArg);
static HI_VOID                  __GetVoAspectCvrs(HI_VOID);
static pthread_mutex_t          g_TsplayerMutex = PTHREAD_MUTEX_INITIALIZER;
static HI_U32                   g_LockFlag = 0;

/* Subtitle Data */
#define SUBT_STREAM_KEYWORD (0xBD)
#define SCTE_STREAM_KEYWORD (0xC6)
#define MAX_CHANNEL_BUF_SIZE (64 * 1024)
#define DATA_RECV_MAX_NUM (32)

static SUBT_DATA_S     s_astSubtDataRecv[DATA_RECV_MAX_NUM];
static pthread_t       s_stSubtDataThreadID;
static pthread_mutex_t s_stSubtDataMutex;
static HI_BOOL         s_bSubtDataThreadReady = HI_FALSE;
static HI_BOOL         s_bInit = HI_FALSE;

static HI_HANDLE       g_hSubt = HI_INVALID_HANDLE;
static HI_HANDLE       g_hSO = HI_INVALID_HANDLE;
static HI_BOOL         bSubDgbFlag = HI_TRUE;

static HI_U32          g_WinHide =0;
/*player mutex */
#define TSPLAYER_LOCK() \
    HI_U32 g_LockFlag = 0; \
do \
{ \
    pthread_mutex_lock(&g_TsplayerMutex); \
    g_LockFlag = 1; \
} while (0) /*lint -restore */

#define TSPLAYER_UNLOCK() \
    do \
{ \
    g_LockFlag = 0; \
    pthread_mutex_unlock(&g_TsplayerMutex); \
} while (0) /*lint -restore */


#define PLAYER_CHK_RETURN(val, ret, printstr, code) /*lint -save -e64*/ \
    do \
{ \
    if ((val)) \
    { \
        if (g_LockFlag == 1) \
        { \
            g_LockFlag = 0; \
            pthread_mutex_unlock(&g_TsplayerMutex); \
        } \
        PLAYER_LOGE("### [TsPlayer]: [%s:%d], %s, return code: 0x%x \n", __FILE__, __LINE__, printstr, (HI_S32)code); \
        return (ret); \
    } \
} while (0) /*lint -restore */

/*****************************************Common Interface************************************/
static HI_VOID* __GetBufStatus(HI_VOID *pArg)
{
    HI_UNF_AVPLAY_STATUS_INFO_S stStatus;
    HI_S32 s32Ret;
    static HI_U32 g_u32LastBuf = 0;        /*indicate the last buffer state, to adjust if it is changing*/
    static HI_U32 u32AlreadyHandled = -1;  /*record the reported event*/

    PLAYER_LOGI("### Get buf status start\n");

    while (!g_bThreadQuit)
    {
        if ((g_eTsplayerState == HI_TSPLAYER_STATE_FAST) || (g_eTsplayerState == HI_TSPLAYER_STATE_PLAY))
        {
            s32Ret = HI_UNF_AVPLAY_GetStatusInfo(g_hAvplay, &stStatus);
            if (HI_SUCCESS == s32Ret)
            {
                if (stStatus.stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize != g_u32LastBuf)
                {
                    g_u32LastBuf = stStatus.stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize;
                    /*If the buffer state is changing, the new data should be coming, reset the flag*/
                    g_u32Cnt = 0;
                    u32AlreadyHandled = -1;
                }
                else
                {
                    g_u32Cnt++;
                    if (g_u32Cnt >= 3)
                    {
                        /*when the buffer state is not changing, it means it isn't new event*/
                        if ((g_u32LastBuf != u32AlreadyHandled) && (g_CallBackFunc != NULL))
                        {
                            g_CallBackFunc(IPTV_PLAYER_EVT_ABEND, g_CallBackHandle);
                            PLAYER_LOGE("### Get buf empty %x\n", g_u32LastBuf);
                            u32AlreadyHandled = g_u32LastBuf;
                        }
                        g_u32Cnt = 0;
                    }
                }
            }
        }

        usleep(100000);
    }

    PLAYER_LOGI("### Get buf status exit\n");

    return NULL;
}

static bool __SetRatio(int nRatio)
{
    HI_S32 s32Ret = 0;
    HI_UNF_WINDOW_ATTR_S    stTmpWinAttr;
    HI_UNF_AVPLAY_STREAM_INFO_S stStreamInfo;
    float s32WinAspectRatio, s32StreamAspectRatio;
    HI_U32 u32VirWinWidth, u32VirWinHeight;

    PLAYER_LOGI("### CTsPlayer::__SetRatio(%d) \n", nRatio);

    if ((g_eTsplayerState >= HI_TSPLAYER_STATE_PLAY) && (g_eTsplayerState < HI_TSPLAYER_STATE_STOP))
    {
        s32Ret = HI_UNF_AVPLAY_GetStreamInfo(g_hAvplay, &stStreamInfo);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_AVPLAY_GetStreamInfo failed" , s32Ret);
        s32Ret = HI_UNF_DISP_GetVirtualScreen(HI_UNF_DISPLAY1, &u32VirWinWidth, &u32VirWinHeight);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_DISP_GetVirtualScreen failed" , s32Ret);
        PLAYER_LOGI("u32VirWinWidth:%d", u32VirWinWidth);
        PLAYER_LOGI("u32VirWinHeight:%d", u32VirWinHeight);
        PLAYER_LOGI("StreamWide:%d", stStreamInfo.stVidStreamInfo.u32Width);
        PLAYER_LOGI("StreamHeight:%d", stStreamInfo.stVidStreamInfo.u32Height);
        s32WinAspectRatio = (float)u32VirWinWidth/u32VirWinHeight;
        s32StreamAspectRatio = (float)stStreamInfo.stVidStreamInfo.u32Width/stStreamInfo.stVidStreamInfo.u32Height;
        PLAYER_LOGI("s32WinAspectRatio = %f, s32StreamAspectRatio = %f", s32WinAspectRatio, s32StreamAspectRatio);
        s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_GetWindowAttr failed" , s32Ret);

        switch (nRatio)
        {
            case 0:
                s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &g_WinAttr);
                PLAYER_LOGI("g_WinAttr.stWinAspectAttr.enAspectCvrs = %d", g_WinAttr.stWinAspectAttr.enAspectCvrs);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                break;
            case 1:
                s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_GetWindowAttr failed" , s32Ret);
                stTmpWinAttr.stWinAspectAttr.enAspectCvrs = (HI_UNF_VO_ASPECT_CVRS_E)g_Cvrs;//HI_UNF_VO_ASPECT_CVRS_IGNORE;
                stTmpWinAttr.stOutputRect.s32X = 0;
                stTmpWinAttr.stOutputRect.s32Y = 0;
                stTmpWinAttr.stOutputRect.s32Width  = 0;
                stTmpWinAttr.stOutputRect.s32Height = 0;
                s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                break;
            case 2:
                    /*TODO:  There is no interface to set the TV ratio, so we choose 16:9 as the TV default value, temporarily don't consider 4:3*/
                s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_GetWindowAttr failed" , s32Ret);
                if (s32StreamAspectRatio >= s32WinAspectRatio)
                {
                    PLAYER_LOGI("case 2 add black side");
                    stTmpWinAttr.stWinAspectAttr.enAspectCvrs = HI_UNF_VO_ASPECT_CVRS_LETTERBOX;
                    stTmpWinAttr.stOutputRect.s32X = 0;
                    stTmpWinAttr.stOutputRect.s32Y = 0;
                    stTmpWinAttr.stOutputRect.s32Width  = 0;
                    stTmpWinAttr.stOutputRect.s32Height = 0;
                    s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
                    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                } else {
                    PLAYER_LOGI("case 2 cut video");
                    stTmpWinAttr.stWinAspectAttr.enAspectCvrs = HI_UNF_VO_ASPECT_CVRS_PAN_SCAN;
                    stTmpWinAttr.stOutputRect.s32X = 0;
                    stTmpWinAttr.stOutputRect.s32Y = 0;
                    stTmpWinAttr.stOutputRect.s32Width  = 0;
                    stTmpWinAttr.stOutputRect.s32Height = 0;
                    s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
                    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                }
                break;
            case 3:
                    /*TODO: There is no interface to set the TV ratio, so we choose 16:9 as the TV default value, temporarily don't consider the 4:3*/
                s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_GetWindowAttr failed" , s32Ret);
                if (s32StreamAspectRatio >= s32WinAspectRatio)
                {
                    PLAYER_LOGI("case 3 cut video");
                    stTmpWinAttr.stWinAspectAttr.enAspectCvrs = HI_UNF_VO_ASPECT_CVRS_PAN_SCAN;
                    stTmpWinAttr.stOutputRect.s32X = 0;
                    stTmpWinAttr.stOutputRect.s32Y = 0;
                    stTmpWinAttr.stOutputRect.s32Width  = 0;
                    stTmpWinAttr.stOutputRect.s32Height = 0;
                    s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
                    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                }
                else
                {
                    PLAYER_LOGI("case 3 add black side");
                    stTmpWinAttr.stWinAspectAttr.enAspectCvrs = HI_UNF_VO_ASPECT_CVRS_LETTERBOX;
                    stTmpWinAttr.stOutputRect.s32X = 0;
                    stTmpWinAttr.stOutputRect.s32Y = 0;
                    stTmpWinAttr.stOutputRect.s32Width  = 0;
                    stTmpWinAttr.stOutputRect.s32Height = 0;
                    s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
                    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
                }
                break;
            case 255:
                PLAYER_LOGI("### Call HI_UNF_VO_FreezeWindow HI_TRUE\n");
                s32Ret = HI_UNF_VO_FreezeWindow(g_hWin, HI_TRUE, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
                PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_FreezeWindow failed" , s32Ret);
                break;
            default:
                PLAYER_LOGI("### CTsPlayer::SetRatio(%d) unkown cmd\n", nRatio);
                break;
        }
    }
    else
    {
        PLAYER_LOGI("### CTsPlayer::__SetRatio(%d) g_eTsplayerState(%d) error\n", nRatio, g_eTsplayerState);
    }

    g_Ratio = nRatio;

    PLAYER_LOGI("### CTsPlayer::SetRatio(%d) quit\n", nRatio);

    return true;
 }


static HI_VOID __GetVoAspectCvrs(HI_VOID)
{
    char buffer[PROP_VALUE_MAX];

    memset(buffer, 0, PROP_VALUE_MAX);
    property_get("persist.sys.video.cvrs", buffer, "1");
    g_Cvrs = atoi(buffer);

    PLAYER_LOGI("### CTsPlayer::__GetVoAspectCvrs(%d)\n", g_Cvrs);

    return;
}

static HI_S32 TsPlayer_EvnetHandler(HI_HANDLE handle, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 para)
{
    if (g_CallBackFunc != NULL)
    {
        if (enEvent == HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME)
        {
            if (g_FirstFrm == 0)
            {
                g_FirstFrm = 1;
                //__SetRatio(g_Ratio);
                g_CallBackFunc(IPTV_PLAYER_EVT_FIRST_PTS, g_CallBackHandle);
                PLAYER_LOGI("### Get First video frm\n");
            }
        }
        else if (enEvent == HI_UNF_AVPLAY_EVENT_IFRAME_ERR)
        {
            g_CallBackFunc(IPTV_PLAYER_EVT_PLAYBACK_ERROR, g_CallBackHandle);
            PLAYER_LOGI("### Get err I frm\n");
        }
        else if (enEvent == HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE)
        {
            HI_UNF_AVPLAY_BUF_STATE_E state = (HI_UNF_AVPLAY_BUF_STATE_E)para;
            if (HI_UNF_AVPLAY_BUF_STATE_EMPTY == state)
            {
                g_CallBackFunc(IPTV_PLAYER_EVT_ABEND, g_CallBackHandle);
                PLAYER_LOGI("### Get buf empty\n");
            }
        }
        else if (enEvent == HI_UNF_AVPLAY_EVENT_EOS)
        {
            g_CallBackFunc(IPTV_PLAYER_EVT_VOD_EOS, g_CallBackHandle);
            PLAYER_LOGI("### Get eos flag\n");
        }
        else
        {
            /*do nothing*/
        }
    }

    return 0;
}

static void    initWinAttr(HI_UNF_WINDOW_ATTR_S* pWinAttr, int VoType)
{
    pWinAttr->enDisp = HI_UNF_DISPLAY1;
    pWinAttr->bVirtual        = HI_FALSE;
    pWinAttr->stWinAspectAttr.enAspectCvrs = (HI_UNF_VO_ASPECT_CVRS_E)g_Cvrs;//HI_UNF_VO_ASPECT_CVRS_IGNORE;
    pWinAttr->stWinAspectAttr.bUserDefAspectRatio = HI_FALSE;
    pWinAttr->stWinAspectAttr.u32UserAspectWidth  = 0;
    pWinAttr->stWinAspectAttr.u32UserAspectHeight = 0;
    pWinAttr->bUseCropRect = HI_FALSE;
    pWinAttr->stInputRect.s32X = 0;
    pWinAttr->stInputRect.s32Y = 0;
    pWinAttr->stInputRect.s32Width = 0;
    pWinAttr->stInputRect.s32Height = 0;

    if (0 == (VoType))
    {
        pWinAttr->stInputRect.s32Width     = 720;
        pWinAttr->stInputRect.s32Height  = 576;
        pWinAttr->stOutputRect.s32Width  = 720;
        pWinAttr->stOutputRect.s32Height = 576;
    }
    else
    {
        pWinAttr->stInputRect.s32Width     = 1920;
        pWinAttr->stInputRect.s32Height  = 1080;
        pWinAttr->stOutputRect.s32Width  = 1920;
        pWinAttr->stOutputRect.s32Height = 1080;
    }

}

HI_S32 RegADecLib()
{
    HI_S32 s32Ret = 0;

    s32Ret  = HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.MP3.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DOLBYPLUS.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DTSHD.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.MP2.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AAC.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DRA.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.TRUEHDPASSTHROUGH.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AMRNB.codec.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AMRWB.codec.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.WMA.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.COOK.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.BLURAYLPCM.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.FFMPEG_ADEC.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.PCM.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.AC3PASSTHROUGH.decode.so");
    s32Ret |= HI_UNF_AVPLAY_RegisterAcodecLib("libHA.AUDIO.DTSPASSTHROUGH.decode.so");

    if (s32Ret != HI_SUCCESS)
    {
        PLAYER_LOGE("\n\n###  !!! some audio codec NOT found. you may NOT able to decode some audio type.\n\n");
    }

    return HI_SUCCESS;
}

static bool vFormat2HiType(vformat_t vformat, int *hiVformart)
{
    HI_S32     s32Ret = 0;

    PLAYER_LOGI("### Input video codec ID : %d \n", vformat);

    if (0 == IS_VFMT_VALID(vformat))
    {
        PLAYER_LOGE("### unsupport input video codec ID: %d !\n", vformat);
        return false;
    }

    if (VFORMAT_MPEG12 == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_MPEG2;
    }
    else if (VFORMAT_MPEG4 == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_MPEG4;
    }
    else if (VFORMAT_H264 == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_H264;
    }
    else if (VFORMAT_MJPEG == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_MJPEG;
    }
/*
    else if (VFORMAT_REAL == vformat)
    {
         *hiVformart = HI_UNF_VCODEC_TYPE_REAL8;
    }
*/
    else if (VFORMAT_REAL == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_REAL9;
    }
    else if (VFORMAT_JPEG == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_JPEG;
    }
    else if (VFORMAT_VC1 == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_VC1;
    }
    else if (VFORMAT_AVS == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_AVS;
    }
    else if (VFORMAT_SW == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_RAW;
    }
    else if (VFORMAT_H265 == vformat)
    {
        *hiVformart = HI_UNF_VCODEC_TYPE_HEVC;
    }
    else
    {
        PLAYER_LOGE("### unsupport input video codec ID: %d !\n", vformat);

        *hiVformart = VFORMAT_UNSUPPORT;
        return false;
    }

    PLAYER_LOGI("### Switch to Hisi codec ID: %d \n", *hiVformart);

    return true;
}

static bool aFormat2HiType(aformat_t afmt, HA_CODEC_ID_E *hiADecType, HI_BOOL *bIsBigEndian)
{
    HI_S32    s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### Input audio codec ID: %d \n", afmt);

    if (0 == IS_AFMT_VALID(afmt))
    {
        PLAYER_LOGE("### unsupport input audio codec ID: %d !\n", afmt);
        return HI_FAILURE;
    }

    switch (afmt)
    {
        case FORMAT_HI_MPEG:
            *hiADecType = HA_AUDIO_ID_MP3;
            break;

        case FORMAT_HI_PCM_S16LE:
        case FORMAT_HI_PCM_U8:
            *hiADecType = HA_AUDIO_ID_PCM;
            break;

        case FORMAT_HI_AAC:
            *hiADecType = HA_AUDIO_ID_AAC;
            break;

        case FORMAT_HI_AC3:
            HI_UNF_AVPLAY_FoundSupportDeoder(FORMAT_AC3, (HI_U32*)hiADecType);
            break;

        case FORMAT_HI_DDPlus:
            HI_UNF_AVPLAY_FoundSupportDeoder(FORMAT_EAC3, (HI_U32*)hiADecType);
            break;

        case FORMAT_HI_ALAW:
        case FORMAT_HI_MULAW:
            HI_UNF_AVPLAY_FoundSupportDeoder(FORMAT_G711, (HI_U32*)hiADecType);
            break;

        case FORMAT_HI_FLAC:
            HI_UNF_AVPLAY_FoundSupportDeoder(FORMAT_FLAC, (HI_U32*)hiADecType);
            break;

        case FORMAT_HI_ADPCM:
        case FORMAT_HI_VORBIS:      //Not support this Format unless using FFMpeg
            *hiADecType = HA_AUDIO_ID_FFMPEG_DECODE;
            break;

        case FORMAT_HI_DTS:
            HI_UNF_AVPLAY_FoundSupportDeoder(FORMAT_DTS, (HI_U32*)hiADecType);
            break;

        case FORMAT_HI_PCM_S16BE:
            *hiADecType = HA_AUDIO_ID_PCM;
            *bIsBigEndian = HI_TRUE;
            break;

        case FORMAT_HI_COOK:
            *hiADecType = HA_AUDIO_ID_COOK;
            break;

        case FORMAT_HI_AMR:
            *hiADecType = HA_AUDIO_ID_AMRNB;
            break;

        case FORMAT_HI_RAAC:
            *hiADecType = HA_AUDIO_ID_AAC;
            break;

        case FORMAT_HI_WMA:
            *hiADecType = HA_AUDIO_ID_WMA9STD;
            break;

        /*
        case FORMAT_HI_WMAPRO:
            *hiADecType = HA_AUDIO_ID_WMA; //Not support WMAPro format
            break;
        */

        case FORMAT_HI_PCM_BLURAY:
            *hiADecType = HA_AUDIO_ID_BLYRAYLPCM;
            break;

        default:
            PLAYER_LOGE("### unsupport input audio codec ID: %d !\n", afmt);
            s32Ret = HI_FAILURE;
            break;

    }

    if (HI_SUCCESS == s32Ret)
    {
        PLAYER_LOGI("### Switch to Hisi audio codec ID: 0x%x \n", *hiADecType);
    }

    return s32Ret;

}

HI_S32 getAudAttrByType(HI_UNF_ACODEC_ATTR_S *pstAdecAttr, HI_U8  *pu8Extradata, HI_BOOL bIsBigEndian)
{
    WAV_FORMAT_S stWavFormat;
    HI_S32 s32Ret = HI_SUCCESS;

    switch (pstAdecAttr->enType)
    {
        case HA_AUDIO_ID_PCM:
        {
            /* set pcm wav format here base on pcm file */
            stWavFormat.nChannels = 2;
            stWavFormat.nSamplesPerSec = 48000;
            stWavFormat.wBitsPerSample = 16;

            if (HI_TRUE == bIsBigEndian)
            {
                stWavFormat.cbSize = 4;
                stWavFormat.cbExtWord[0] = 1;
            }

            HA_PCM_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam), &stWavFormat);

            PLAYER_LOGI("### (nChannels = 2, wBitsPerSample = 16, nSamplesPerSec = 48000, isBigEndian = %d)", bIsBigEndian);
        }

        break;

        case HA_AUDIO_ID_DOLBY_PLUS:
        {
            DOLBYPLUS_DECODE_OPENCONFIG_S* pstConfig = &DolbyDecConfig;
            HA_DOLBYPLUS_DecGetDefalutOpenConfig(pstConfig);
            HA_DOLBYPLUS_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam), pstConfig);
            break;
        }

        case HA_AUDIO_ID_MP2:
            HA_MP2_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            break;

        case HA_AUDIO_ID_AAC:
            HA_AAC_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            break;

        case HA_AUDIO_ID_MP3:
            HA_MP3_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            break;

        case HA_AUDIO_ID_AMRNB:
            if (NULL != (HI_U32*)pu8Extradata)
            {
                HA_AMRNB_GetDecDefalutOpenParam(&(pstAdecAttr->stDecodeParam),
                                                *((HI_U32*)pu8Extradata));
            }

            break;

        case HA_AUDIO_ID_AMRWB:
            if (NULL != (HI_U32*)pu8Extradata)
            {
                HA_AMRWB_GetDecDefalutOpenParam(&(pstAdecAttr->stDecodeParam),
                                                *((HI_U32*)pu8Extradata));
            }

            break;

        case HA_AUDIO_ID_WMA9STD:
            if (NULL != (HI_U32*)pu8Extradata)
            {
                HA_WMA_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam),
                                              *((HI_U32*)pu8Extradata));
            }

            break;

        case HA_AUDIO_ID_COOK:
            if (NULL != (HI_U32*)pu8Extradata)
            {
                HA_COOK_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam),
                                               *((HI_U32*)pu8Extradata));
            }

            break;

        case HA_AUDIO_ID_DTSHD:
        {
            DTSHD_DECODE_OPENCONFIG_S* pstConfig = &DtsDecConfig;
            HA_DTSHD_DecGetDefalutOpenConfig(pstConfig);
            HA_DTSHD_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam), pstConfig);
            break;
        }

        case HA_AUDIO_ID_BLYRAYLPCM:
        {
            HA_BLURAYLPCM_DECODE_OPENCONFIG_S* pstConfig = &BlyRayDecConfig;
            HA_BLYRAYLPCM_DecGetDefalutOpenConfig(pstConfig);
            HA_BLYRAYLPCM_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam), pstConfig);
            break;
        }

        /*
        case HA_AUDIO_ID_FFMPEG_DECODE:
            stAdecAttr.enFmt = HI_UNF_ADEC_STRAM_FMT_PACKET;
            pstMember->eAudStreamMode = HI_UNF_ADEC_STRAM_FMT_PACKET;

            if (NULL != pu8Extradata && NULL != (HI_U32*)pu8Extradata + 1)
            {
                HA_FFMPEGC_DecGetDefalutOpenParam(&(stAdecAttr.stDecodeParam),
                (HI_U32*)(*((HI_U32*)pu8Extradata + 1)));
            }
            break;
        */
        case HA_AUDIO_ID_AC3PASSTHROUGH:
            HA_AC3PASSTHROUGH_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            pstAdecAttr->stDecodeParam.enDecMode = HD_DEC_MODE_THRU;
            break;

        case HA_AUDIO_ID_DTSPASSTHROUGH:
            HA_DTSPASSTHROUGH_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            pstAdecAttr->stDecodeParam.enDecMode = HD_DEC_MODE_THRU;
            break;

        case HA_AUDIO_ID_DOLBY_TRUEHD:
        {
            TRUEHD_DECODE_OPENCONFIG_S* pstConfig = &TrueHdDecConfig;
            HA_DOLBY_TRUEHD_DecGetDefalutOpenConfig(pstConfig);
            HA_DOLBY_TRUEHD_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam), pstConfig);
        }
            break;

        case HA_AUDIO_ID_TRUEHD:
            HA_TRUEHD_DecGetDefalutOpenParam(&(pstAdecAttr->stDecodeParam));
            pstAdecAttr->stDecodeParam.enDecMode = HD_DEC_MODE_THRU;
            ALOGD(" TrueHD decoder(HBR Pass-through only).\n");
            break;

        default:
            s32Ret = HI_FAILURE;
            break;
    }

    return s32Ret;
}

#ifdef SUBTITLE
static HI_S32 GetPlayingPts(HI_U32 u32UserData, HI_S64 *ps64CurrentPts)
{

    HI_S32 s32Ret= HI_SUCCESS;
    HI_BOOL bExtSub = HI_FALSE;
    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    TS_PROGRAM_INFO_S *pstPrg = NULL;
    HI_HANDLE hAvPlay = NULL;
    TS_STREAMID_S *pstStreamID;
    TS_FILE_INFO_S *pstFileInfo;
    TS_SO_CALLBACK_INFO_S *pstSoCallbackInfo = NULL;

    PLAYER_CHK_RETURN((0 == u32UserData), HI_FAILURE, "invalid avplay handle", HI_FAILURE);
    PLAYER_CHK_RETURN((NULL == ps64CurrentPts), HI_FAILURE, "invalid param", HI_FAILURE);

    pstSoCallbackInfo = (TS_SO_CALLBACK_INFO_S*)u32UserData;
    hAvPlay = pstSoCallbackInfo->hAvplay;
    pstStreamID = pstSoCallbackInfo->pStreamID;
    pstFileInfo = pstSoCallbackInfo->pstFileInfo;

    if (pstStreamID->u32ProgramId < pstFileInfo->u32ProgramNum)
    {
        pstPrg = &(pstFileInfo->astProgramInfo[pstStreamID->u32ProgramId]);
    }

    if (NULL != pstPrg && pstStreamID->u32SubTitleId < pstPrg->u32SubTitleNum)
    {
        bExtSub = pstSoCallbackInfo->bExtSubTitle;
    }

    s32Ret = HI_UNF_AVPLAY_GetStatusInfo(hAvPlay, &stStatusInfo);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call HI_UNF_AVPLAY_GetStatusInfo failed" , s32Ret);

    if ((HI_U32)HI_FORMAT_NO_PTS != stStatusInfo.stSyncStatus.u32LocalTime)
    {
        if (HI_TRUE == bExtSub)
        {
            *ps64CurrentPts = ((HI_S64)stStatusInfo.stSyncStatus.u32LocalTime > pstFileInfo->s64StartTime)
                ? ((HI_S64)stStatusInfo.stSyncStatus.u32LocalTime - pstFileInfo->s64StartTime) : (HI_S64)stStatusInfo.stSyncStatus.u32LocalTime;
        }
        else
        {
            *ps64CurrentPts = (HI_S64)stStatusInfo.stSyncStatus.u32LocalTime;
        }
    }
    else
    {
        *ps64CurrentPts = HI_FORMAT_NO_PTS;
    }

    return HI_SUCCESS;

}
#endif

/*****************************Sync Android 2.2 IPTV adapter function*************************************/
HI_S32 CTsPlayer::HIADP_VO_Init(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    HI_S32             Ret;


    Ret = HI_UNF_VO_Init(enDevMode);
    if (Ret != HI_SUCCESS)
    {
        PLAYER_LOGE("call HI_UNF_VO_Init failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 CTsPlayer::HIADP_VO_DeInit()
{
    HI_S32         Ret;

    Ret = HI_UNF_VO_DeInit();
    if (Ret != HI_SUCCESS)
    {
        PLAYER_LOGE("call HI_UNF_VO_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 CTsPlayer::HIADP_AVPlay_SetVdecAttr(HI_HANDLE hAvplay,HI_UNF_VCODEC_TYPE_E enType,HI_UNF_VCODEC_MODE_E enMode)
{
    HI_S32 Ret;
    HI_UNF_VCODEC_ATTR_S        VdecAttr;

    Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if (HI_SUCCESS != Ret)
    {
        PLAYER_LOGE("HI_UNF_AVPLAY_GetAttr failed:%#x\n",Ret);
        return Ret;
    }

    VdecAttr.enType = enType;
    VdecAttr.enMode = enMode;
    VdecAttr.u32ErrCover = 100;
    VdecAttr.u32Priority = 3;

    Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        PLAYER_LOGE("call HI_UNF_AVPLAY_SetAttr failed.\n");
        return Ret;
    }

    return Ret;
}

HI_S32 CTsPlayer::HIADP_IPTV_Disp_Init()
{
    HI_S32                  Ret;
    HI_UNF_DISP_BG_COLOR_S      BgColor;

    Ret = HI_UNF_DISP_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Init failed.\n");
        return Ret;
    }

    BgColor.u8Red = 0;
    BgColor.u8Green = 0;
    BgColor.u8Blue = 0;

    HI_UNF_DISP_SetBgColor(HI_UNF_DISPLAY1, &BgColor);

    Ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Open failed.\n");
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Open SD failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 CTsPlayer::HIADP_IPTV_Disp_DeInit(HI_VOID)
{
    HI_S32                      Ret;

    Ret = HI_UNF_DISP_Close(HI_UNF_DISPLAY0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_DeInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

/*****************************************SOUND Common Interface************************************/
HI_S32 CTsPlayer::HIADP_IPTV_Snd_Init(HI_VOID)
{
    HI_S32                  Ret;
    HI_UNF_SND_ATTR_S stAttr;

    Ret = HI_UNF_SND_Init();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_SND_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_GetDefaultOpenAttr(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_SND_GetOpenAttr failed.");
        return Ret;
    }

    stAttr.u32SlaveOutputBufSize = 1024 * 64; /* in order to increase the reaction of stop/start, the buf cannot too big*/

    Ret = HI_UNF_SND_Open(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_SND_Open failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 CTsPlayer::HIADP_IPTV_Snd_DeInit(HI_VOID)
{
    HI_S32                  Ret;

    Ret = HI_UNF_SND_Close(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_DeInit();
    if (Ret != HI_SUCCESS )
    {
        printf("call HI_UNF_SND_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

/********************************************************************************************/

/*****************************************Device function************************************/
int CTsPlayer::MediaDeviceInit(HI_VOID)
{
    HI_S32         s32Ret = 0;

    PLAYER_LOGI("### Enter device Init \n");

    HI_SYS_Init();

#ifdef SUBTITLE
    s32Ret = HI_UNF_SO_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call So Init failed" , s32Ret);
#endif

    s32Ret = HI_UNF_SO_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call So Init failed" , s32Ret);

    s32Ret = HI_UNF_SUBT_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call SUBT Init failed" , s32Ret);

    s32Ret = HIADP_IPTV_Snd_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call Snd Init failed" , s32Ret);

#if 1
    s32Ret = HIADP_IPTV_Disp_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call Disp Init failed" , s32Ret);
#endif

    s32Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call Vo Init failed" , s32Ret);

    s32Ret = HI_UNF_DMX_Init();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call DMX Init failed");

    s32Ret = HI_UNF_AVPLAY_Init();
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call AVPLAY Init failed" , s32Ret);

    __GetVoAspectCvrs();

    PLAYER_LOGI("### device Init success \n");

    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);

    return HI_SUCCESS;
}

bool CTsPlayer::MediaDeviceDeinit(HI_VOID)
{
    HI_S32         s32Ret = 0;

    PLAYER_LOGI("### MediaDeviceDeinit go here %d \n", __LINE__);
    s32Ret = HI_UNF_AVPLAY_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_UNF_AVPLAY_DeInit fail!");
    PLAYER_LOGI("### MediaDeviceDeinit go here %d \n", __LINE__);

    s32Ret = HI_UNF_DMX_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_UNF_DMX_DeInit fail!");
    PLAYER_LOGI("### MediaDeviceDeinit go here %d \n", __LINE__);

#ifdef SUBTITLE
    s32Ret = HI_UNF_SO_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_UNF_SO_DeInit fail!");
#endif

    s32Ret = HI_UNF_SO_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_UNF_SO_DeInit fail!");

    s32Ret = HI_UNF_SUBT_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_UNF_SUBT_DeInit fail!");

    s32Ret = HIADP_IPTV_Snd_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HIADP_IPTV_Snd_DeInit fail!");

    s32Ret = HIADP_VO_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HIADP_VO_DeInit fail!");
    PLAYER_LOGI("### MediaDeviceDeinit go here %d \n", __LINE__);

#if 1
    s32Ret = HIADP_IPTV_Disp_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HIADP_IPTV_Disp_DeInit fail!");
#endif

    s32Ret = HI_SYS_DeInit();
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "ERR: HI_SYS_DeInit fail!");
    PLAYER_LOGI("### MediaDeviceDeinit go here %d \n", __LINE__);

    return true;
}

#define USING_LOCALTIME 0
HI_S32 GetCurPts(HI_U32 u32UserData, HI_S64 *ps64CurrentPts)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    HI_HANDLE hAvplayer = (HI_HANDLE)u32UserData;
    static HI_U32 u32PrePtsTime = 0;

    s32Ret = HI_UNF_AVPLAY_GetStatusInfo(hAvplayer, &stStatusInfo);
    if (s32Ret != HI_SUCCESS)
    {
        printf("failed to HI_UNF_AVPLAY_GetStatusInfo\n");
    }

#if USING_LOCALTIME
    *ps64CurrentPts = stStatusInfo.stSyncStatus.u32LocalTime;
#else
    *ps64CurrentPts = stStatusInfo.stSyncStatus.u32LastVidPts;
#endif


    if (*ps64CurrentPts < u32PrePtsTime)
    {
        printf("Get PTS:%llu, pre time is %u\n", *ps64CurrentPts, u32PrePtsTime);

        /* reset the output */
#if !SYN_USING_LOCALTIME
        if ((g_hSO != HI_INVALID_HANDLE) && (NULL != g_hSO))
        {
            (HI_VOID)HI_UNF_SO_ResetSubBuf(g_hSO);
        }
#endif
    }

    u32PrePtsTime = *ps64CurrentPts;

    return HI_SUCCESS;
}


HI_S32 SO_OnDraw(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg)
{
    printf(" ---------- Here SO_OnDraw Called ------------\n");
    return 1;
}

HI_S32 SO_OnClear(HI_U32 u32UserData, HI_VOID *pArg)
{
    printf(" ########### Here SO_OnClear Called ########## \n");
    return 1;
}

/* Subtitle Start */

static void SUBT_Data_Thread(HI_VOID *args)
{
    HI_UNF_DMX_DATA_S stSection[5] = { {0} };
    HI_U32 u32SectionNum = 0;
    HI_U8 i = 0;
    SUBT_DATA_S *pstSubtData = NULL;

    while (HI_TRUE == s_bSubtDataThreadReady)
    {
        /* Get section data */
        for (i = 0; i < DATA_RECV_MAX_NUM; i++)
        {
            pthread_mutex_lock(&s_stSubtDataMutex);

            pstSubtData = &s_astSubtDataRecv[i];
            if (HI_FALSE == pstSubtData->bEnable)
            {
                pthread_mutex_unlock(&s_stSubtDataMutex);
                continue;
            }

            if (HI_SUCCESS != HI_UNF_DMX_AcquireBuf(pstSubtData->hChannelID, 1, &u32SectionNum, stSection, 0))
            {
                pthread_mutex_unlock(&s_stSubtDataMutex);
                continue;
            }

            if(u32SectionNum == 0)
            {
                pthread_mutex_unlock(&s_stSubtDataMutex);
                continue;
            }

            if (pstSubtData->stInstallParam.pfnCallback)
            {
                (HI_VOID)pstSubtData->stInstallParam.pfnCallback(pstSubtData->stInstallParam.u32UserData, stSection[0].pu8Data, stSection[0].u32Size);
            }

            (HI_VOID)HI_UNF_DMX_ReleaseBuf(pstSubtData->hChannelID, u32SectionNum, stSection);
            pthread_mutex_unlock(&s_stSubtDataMutex);
        }

        usleep(50*1000);
    }

    printf("Data receive thread exit!!!\n");
    PLAYER_LOGE("Data receive thread exit!!!\n");
}

HI_S32 SUBT_Data_Install(SUBT_DATA_INSTALL_PARAM_S *pstInstallParam, HI_HANDLE *hData)
{
    //HI_UNF_DMX_CHAN_ATTR_S tChAttr = {0};
    //HI_UNF_DMX_FILTER_ATTR_S tFilterAttr = {0};
    HI_UNF_DMX_CHAN_ATTR_S tChAttr;
    HI_UNF_DMX_FILTER_ATTR_S tFilterAttr;
    memset(&tChAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));

    HI_S32 s32Ret = 0;
    HI_U8  i = 0;
    SUBT_DATA_S *pstSubtData = NULL;

    if (HI_FALSE == s_bInit)
    {
        printf("not init...\n");
        PLAYER_LOGE("not init...\n");

        return HI_FAILURE;
    }

    if (NULL == pstInstallParam || NULL == hData)
    {
        printf("parameter is invalid...\n");
        PLAYER_LOGE("parameter is invalid...\n");

        return HI_FAILURE;
    }

    for (i = 0; i < DATA_RECV_MAX_NUM; i++)
    {
        pstSubtData = &s_astSubtDataRecv[i];

        if (HI_FALSE == pstSubtData->bEnable)
        {
            break;
        }
    }
    if (i >= DATA_RECV_MAX_NUM)
    {
        printf("install too much, max is %d !\n", DATA_RECV_MAX_NUM);
        PLAYER_LOGE("install too much, max is %d !\n", DATA_RECV_MAX_NUM);

        return HI_FAILURE;
    }

    s32Ret = HI_UNF_DMX_GetChannelDefaultAttr(&tChAttr);
    if (HI_SUCCESS != s32Ret)
    {
        printf("failed to HI_FILTER_Destroy !\n");
        PLAYER_LOGE("failed to HI_FILTER_Destroy !\n");
        return HI_FAILURE;
    }
     switch(pstInstallParam->enDataType)
    {
        case HI_UNF_SUBT_SCTE:
            tChAttr.u32BufSize = MAX_CHANNEL_BUF_SIZE;
            tChAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_SEC;
            tChAttr.enCRCMode = HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD;
            tChAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
            break;
        case HI_UNF_SUBT_DVB:
        default:
            tChAttr.u32BufSize = MAX_CHANNEL_BUF_SIZE;
            tChAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_PES;
            tChAttr.enCRCMode = HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD;
            tChAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
            break;
    }

    s32Ret = HI_UNF_DMX_CreateChannel(pstInstallParam->u32DmxID, &tChAttr, &pstSubtData->hChannelID);
    if (s32Ret != HI_SUCCESS)
    {
        printf("failed to HI_UNF_DMX_CreateChannel !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_CreateChannel !\n");
        return HI_FAILURE;
    }

    /* set channel PID for recving data */
    s32Ret = HI_UNF_DMX_SetChannelPID(pstSubtData->hChannelID, pstInstallParam->u16SubtPID);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

        printf("failed to HI_UNF_DMX_SetChannelPID !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_SetChannelPID !\n");
        return HI_FAILURE;
    }

    memset(tFilterAttr.au8Match, 0, DMX_FILTER_MAX_DEPTH);
    memset(tFilterAttr.au8Mask, 0, DMX_FILTER_MAX_DEPTH);
    memset(tFilterAttr.au8Negate, 0, DMX_FILTER_MAX_DEPTH);
    tFilterAttr.u32FilterDepth = 1;
    tFilterAttr.au8Match[0] = SUBT_STREAM_KEYWORD; /* Subtitle stream id is 0xbd */
    tFilterAttr.au8Mask[0] = 0xff;

    s32Ret = HI_UNF_DMX_CreateFilter(pstInstallParam->u32DmxID, &tFilterAttr, &pstSubtData->hFilterID);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

        printf("failed to HI_UNF_DMX_CreateFilter !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_CreateFilter !\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_DMX_SetFilterAttr(pstSubtData->hFilterID, &tFilterAttr);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

        (HI_VOID)HI_UNF_DMX_DestroyFilter(pstSubtData->hFilterID);

        printf("failed to HI_UNF_DMX_SetFilterAttr !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_SetFilterAttr !\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_DMX_AttachFilter(pstSubtData->hFilterID, pstSubtData->hChannelID);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

        (HI_VOID)HI_UNF_DMX_DestroyFilter(pstSubtData->hFilterID);

        printf("failed to HI_UNF_DMX_AttachFilter !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_AttachFilter !\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_DMX_OpenChannel(pstSubtData->hChannelID);
    if (s32Ret != HI_SUCCESS)
    {
        (HI_VOID)HI_UNF_DMX_DetachFilter(pstSubtData->hFilterID, pstSubtData->hChannelID);

        (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

        (HI_VOID)HI_UNF_DMX_DestroyFilter(pstSubtData->hFilterID);

        printf("failed to HI_UNF_DMX_OpenChannel !\n");
        PLAYER_LOGE("failed to HI_UNF_DMX_OpenChannel !\n");
        return HI_FAILURE;
    }

    pthread_mutex_lock(&s_stSubtDataMutex);
    pstSubtData->stInstallParam = *pstInstallParam;
    pstSubtData->bEnable = HI_TRUE;
    pthread_mutex_unlock(&s_stSubtDataMutex);

    *hData = (HI_HANDLE)pstSubtData;

    return HI_SUCCESS;
}

HI_S32 SUBT_Data_Uninstall(HI_HANDLE hData)
{
    SUBT_DATA_S *pstSubtData = (SUBT_DATA_S *)hData;

    if (HI_FALSE == s_bInit)
    {
        printf("not init...\n");
        PLAYER_LOGE("not init...\n");

        return HI_FAILURE;
    }

    if ( HI_NULL == pstSubtData )
    {
        return HI_FAILURE;
    }

    (HI_VOID)HI_UNF_DMX_CloseChannel(pstSubtData->hChannelID);
    (HI_VOID)HI_UNF_DMX_DetachFilter(pstSubtData->hFilterID, pstSubtData->hChannelID);
    (HI_VOID)HI_UNF_DMX_DestroyFilter(pstSubtData->hFilterID);
    (HI_VOID)HI_UNF_DMX_DestroyChannel(pstSubtData->hChannelID);

    pthread_mutex_lock(&s_stSubtDataMutex);
    pstSubtData->hChannelID = 0;
    pstSubtData->hFilterID  = 0;
    pstSubtData->bEnable    = HI_FALSE;
    pthread_mutex_unlock(&s_stSubtDataMutex);

    return HI_SUCCESS;
}


HI_S32 SUBT_Data_Init(HI_VOID)
{
    if (HI_FALSE == s_bInit)
    {
        memset(s_astSubtDataRecv, 0, sizeof(s_astSubtDataRecv));

        (HI_VOID)pthread_mutex_init(&s_stSubtDataMutex, NULL);
        s_bSubtDataThreadReady = HI_TRUE;
        pthread_create(&s_stSubtDataThreadID, NULL, (void * (*)(void *))SUBT_Data_Thread, (void*)HI_NULL);
        s_bInit = HI_TRUE;
    }
    return HI_SUCCESS;
}

HI_S32 SUBT_Data_DeInit(HI_VOID)
{
    HI_U8 i = 0;
    SUBT_DATA_S *pstSubtData = NULL;

    if (HI_TRUE == s_bInit)
    {
        for (i = 0; i < DATA_RECV_MAX_NUM; i++)
        {
            pstSubtData = &s_astSubtDataRecv[i];

            if (HI_TRUE == pstSubtData->bEnable)
            {
                (HI_VOID)SUBT_Data_Uninstall((HI_HANDLE)pstSubtData);
            }
        }
        memset(s_astSubtDataRecv, 0, sizeof(s_astSubtDataRecv));


        s_bSubtDataThreadReady = HI_FALSE;
        pthread_join(s_stSubtDataThreadID, NULL);
        pthread_mutex_destroy(&s_stSubtDataMutex);
        s_bInit = HI_FALSE;
    }
    return HI_SUCCESS;
}

HI_S32 FilterDataCallback(HI_U32 u32UserData, HI_U8 *pu8Data, HI_U32 u32DataLength)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SubtPID = u32UserData;


    if (g_hSubt)
    {
        if(bSubDgbFlag)printf("u32SubtPID=0x%x, u32DataLength=%d\n", u32SubtPID, u32DataLength);
        if(bSubDgbFlag)PLAYER_LOGE("u32SubtPID=0x%x, u32DataLength=%d\n", u32SubtPID, u32DataLength);
        if(u32SubtPID)
        {
            s32Ret = HI_UNF_SUBT_InjectData(g_hSubt, u32SubtPID, pu8Data, u32DataLength);
            if (s32Ret != HI_SUCCESS)
            {
                printf("failed to HI_UNF_SUBT_InjectData, u32SubtPID=0x%x\n",u32SubtPID);
                PLAYER_LOGE("failed to HI_UNF_SUBT_InjectData, u32SubtPID=0x%x\n",u32SubtPID);
            }
        }
    }

    return s32Ret;
}


HI_S32 StartSubtitleDataFilter(CTC_SUBT_PARM_S *pstSubParam)
{
    HI_S32 s32Ret = HI_SUCCESS;

    HI_U8  u8Index = pstSubParam->u8SubtChannelSelect;
    HI_HANDLE hSubtData = 0;
    SUBT_DATA_INSTALL_PARAM_S stInstallParam;
    s32Ret = SUBT_Data_DeInit();
    s32Ret |= SUBT_Data_Init();
    if (HI_SUCCESS != s32Ret)
    {
        printf("failed to SUBT_Data_Init\n");
        PLAYER_LOGE("failed to SUBT_Data_Init\n");

        return HI_FAILURE;
    }

    stInstallParam.u32DmxID = 0;
    stInstallParam.pfnCallback = FilterDataCallback;

    if (pstSubParam->eSubtType == HI_UNF_SUBT_DVB)
    {
        stInstallParam.u16SubtPID = pstSubParam->stSubtItem[u8Index].u32SubtPID;
        stInstallParam.u32UserData = pstSubParam->stSubtItem[u8Index].u32SubtPID;
        stInstallParam.enDataType = HI_UNF_SUBT_DVB;
        s32Ret |= SUBT_Data_Install(&stInstallParam, &hSubtData);
    }

    if (HI_SUCCESS != s32Ret)
    {
        printf("failed to SUBT_Data_Install\n");
        PLAYER_LOGE("failed to SUBT_Data_Install\n");

        (HI_VOID)SUBT_Data_DeInit();
        return HI_FAILURE;
    }

    return s32Ret;
}

HI_S32 UNFSubtCallbackSendData(HI_U32 u32UserData, HI_UNF_SUBT_DATA_S *pstData)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_HANDLE hSO = (HI_HANDLE)u32UserData;
    HI_UNF_SO_SUBTITLE_INFO_S stSubtitleOut;
    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;

    if (NULL != pstData)
    {
        /* PTS validity check */
        memset(&stStatusInfo, 0, sizeof(HI_UNF_AVPLAY_STATUS_INFO_S));
        s32Ret = HI_UNF_AVPLAY_GetStatusInfo(g_hAvplay, &stStatusInfo);
        if ((s32Ret == HI_SUCCESS) && ((pstData->u32PTS + pstData->u32Duration) < stStatusInfo.stSyncStatus.u32LastVidPts))
        {
            printf("stStatusInfo.stSyncStatus.u32LastVidPts = %d\n", stStatusInfo.stSyncStatus.u32LastVidPts);
            PLAYER_LOGI("stStatusInfo.stSyncStatus.u32LastVidPts = %d\n", stStatusInfo.stSyncStatus.u32LastVidPts);
            if ((pstData->u32PTS + HI_SUBT_MAX_PTS_OFFSET) < stStatusInfo.stSyncStatus.u32LastVidPts)
            {
                printf("subtitle pts is wrong, try to update subtitle pts=%d -> %d, Duration=%d\n", pstData->u32PTS,
                       stStatusInfo.stSyncStatus.u32LastVidPts, pstData->u32Duration);
                PLAYER_LOGE("subtitle pts is wrong, try to update subtitle pts=%d -> %d, Duration=%d\n", pstData->u32PTS,
                       stStatusInfo.stSyncStatus.u32LastVidPts, pstData->u32Duration);
                pstData->u32PTS = stStatusInfo.stSyncStatus.u32LastVidPts;
            }
            else
            {
                printf("discard a subtitle, pts=%d, Duration=%d, current pts = %d\n", pstData->u32PTS,
                       pstData->u32Duration, stStatusInfo.stSyncStatus.u32LastVidPts);
                PLAYER_LOGE("discard a subtitle, pts=%d, Duration=%d, current pts = %d\n", pstData->u32PTS,
                       pstData->u32Duration, stStatusInfo.stSyncStatus.u32LastVidPts);
                return HI_SUCCESS;
            }
        }

        /* send subtitle data to so */
        memset(&stSubtitleOut, 0, sizeof(stSubtitleOut));

        stSubtitleOut.eType = (HI_UNF_SO_SUBTITLE_TYPE_E)pstData->enDataType;
        if (pstData->enPageState == HI_UNF_SUBT_PAGE_NORMAL_CASE)
        {
            stSubtitleOut.unSubtitleParam.stGfx.enMsgType = HI_UNF_SO_DISP_MSG_NORM;
        }
        else
        {
            stSubtitleOut.unSubtitleParam.stGfx.enMsgType = HI_UNF_SO_DISP_MSG_ERASE;
        }

        stSubtitleOut.unSubtitleParam.stGfx.x = pstData->u32x;
        stSubtitleOut.unSubtitleParam.stGfx.y = pstData->u32y;
        stSubtitleOut.unSubtitleParam.stGfx.w = pstData->u32w;
        stSubtitleOut.unSubtitleParam.stGfx.h = pstData->u32h;

        stSubtitleOut.unSubtitleParam.stGfx.s32BitWidth = pstData->u32BitWidth;
        if(pstData->pvPalette && pstData->u32PaletteItem)
        {
            memcpy(stSubtitleOut.unSubtitleParam.stGfx.stPalette, pstData->pvPalette, pstData->u32PaletteItem);
        }

        stSubtitleOut.unSubtitleParam.stGfx.s64Pts = pstData->u32PTS;
        stSubtitleOut.unSubtitleParam.stGfx.u32Duration = pstData->u32Duration;

        stSubtitleOut.unSubtitleParam.stGfx.u32Len = pstData->u32DataLen;
        stSubtitleOut.unSubtitleParam.stGfx.pu8PixData = pstData->pu8SubtData;
        stSubtitleOut.unSubtitleParam.stGfx.u32CanvasWidth = pstData->u32DisplayWidth;
        stSubtitleOut.unSubtitleParam.stGfx.u32CanvasHeight = pstData->u32DisplayHeight;

        if (hSO)
        {
            s32Ret = HI_UNF_SO_SendData(hSO, &stSubtitleOut, 1000);
            if (s32Ret != HI_SUCCESS)
            {
                printf("failed to HI_UNF_SO_SendData\n");
                PLAYER_LOGE("failed to HI_UNF_SO_SendData\n");
            }
        }
    }

    return HI_SUCCESS;
}

/*
 * Function     : CreateSubtitleDecoder
 * Description  : Init and Create Subtitle Module
 * Create Date  : 2016/03/22
 * Modify       : none
*/
HI_S32 CTsPlayer::CreateSubtitleDecoder(CTC_SUBT_PARM_S *pstSubParam)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U8 u8Index;
    HI_UNF_SUBT_PARAM_S stSubtitleParam;

    if (pstSubParam->eSubtType == HI_UNF_SUBT_DVB)
    {
        if(bSubDgbFlag)printf("DVB subtitle\n");
        if(bSubDgbFlag)PLAYER_LOGI("DVB subtitle\n");
        memset(&stSubtitleParam, 0, sizeof(stSubtitleParam));
        stSubtitleParam.enDataType = HI_UNF_SUBT_DVB;

        stSubtitleParam.pfnCallback = UNFSubtCallbackSendData;
        stSubtitleParam.u32UserData = (HI_U32)g_hSO;
        stSubtitleParam.u8SubtItemNum = pstSubParam->u32SubtNum;
        if(bSubDgbFlag)printf("Subtitle Count = %d\n", pstSubParam->u32SubtNum);
        if(bSubDgbFlag)PLAYER_LOGI("Subtitle Count = %d\n", pstSubParam->u32SubtNum);

        for (u8Index = 0; u8Index < stSubtitleParam.u8SubtItemNum; u8Index++)
        {
            stSubtitleParam.astItems[u8Index].u32SubtPID = pstSubParam->stSubtItem[u8Index].u32SubtPID;
            if(bSubDgbFlag)printf("u32SubtPID[%d] = %d\n", u8Index , pstSubParam->stSubtItem[u8Index].u32SubtPID);
            if(bSubDgbFlag)PLAYER_LOGI("u32SubtPID[%d] = %d\n", u8Index , pstSubParam->stSubtItem[u8Index].u32SubtPID);
            stSubtitleParam.astItems[u8Index].u16PageID = pstSubParam->stSubtItem[u8Index].u16PageID;
            if(bSubDgbFlag)printf("u16PageID[%d] = %d\n", u8Index , pstSubParam->stSubtItem[u8Index].u16PageID);
            if(bSubDgbFlag)PLAYER_LOGI("u16PageID[%d] = %d\n", u8Index , pstSubParam->stSubtItem[u8Index].u16PageID);
            stSubtitleParam.astItems[u8Index].u16AncillaryID = pstSubParam->stSubtItem[u8Index].u16AncillaryID;
            if(bSubDgbFlag)printf("u16AncillaryID[%d] = %d\n", u8Index ,pstSubParam->stSubtItem[u8Index].u16AncillaryID);
            if(bSubDgbFlag)PLAYER_LOGI("u16AncillaryID[%d] = %d\n", u8Index ,pstSubParam->stSubtItem[u8Index].u16AncillaryID);
        }
        s32Ret = HI_UNF_SUBT_Create(&stSubtitleParam, &g_hSubt);
        if (HI_SUCCESS != s32Ret)
        {
            printf("failed to HI_UNF_SUBT_Create\n");
            PLAYER_LOGE("failed to HI_UNF_SUBT_Create\n");
        }
    }
    else
    {
        printf("Not DVB subtitle\n");
        PLAYER_LOGE("Not DVB subtitle\n");
    }

    return s32Ret;
}

int CTsPlayer::EnableSubtitle(CTC_SUBT_PARM_S *pstSubParam)
{
    int Ret = HI_SUCCESS;
    bUseSubtitle = HI_TRUE;
    bSubDgbFlag = HI_TRUE;
    CTC_SUBT_PARM_S *pstSubtitleParam = pstSubParam;

    Ret = SubtitlOutputCreate();
    if (HI_SUCCESS != Ret)
    {
        printf("SubtitlOutputInit & SubtitlOutputCreate Failed !\n");
        PLAYER_LOGE("SubtitlOutputInit & SubtitlOutputCreate Failed !\n");
        return HI_FAILURE;
    }

    /* Create subtitle module instance */
    if (HI_INVALID_HANDLE == g_hSubt)
    {
        Ret = CreateSubtitleDecoder(pstSubtitleParam);
        if (HI_SUCCESS != Ret)
        {
            printf("CreateSubtitleDecoder Failed\n");
            PLAYER_LOGE("CreateSubtitleDecoder Failed\n");
            return HI_FAILURE;
        }
    }

    if (g_hSubt)
    {
        HI_U8  u8SubtNo = pstSubtitleParam->u8SubtChannelSelect;
        printf("subtitle select = %d\n", u8SubtNo);
        PLAYER_LOGE("subtitle select = %d\n", u8SubtNo);
        HI_UNF_SUBT_ITEM_S stSubtItem;

        if (g_hSO)
        {
            HI_UNF_SO_CLEAR_PARAM_S stClearParam;

            memset(&stClearParam, 0, sizeof(HI_UNF_SO_CLEAR_PARAM_S));
            (HI_VOID)SO_OnClear(0, (HI_VOID *)&stClearParam);
            (HI_VOID)HI_UNF_SO_ResetSubBuf(g_hSO);
        }

        /* Default subtitle 0 */
        if(HI_UNF_SUBT_DVB == pstSubtitleParam->eSubtType)
        {
            memset(&stSubtItem, 0, sizeof(stSubtItem));
            stSubtItem.u32SubtPID = pstSubtitleParam->stSubtItem[u8SubtNo].u32SubtPID;
            stSubtItem.u16PageID = pstSubtitleParam->stSubtItem[u8SubtNo].u16PageID;
            stSubtItem.u16AncillaryID = pstSubtitleParam->stSubtItem[u8SubtNo].u16AncillaryID;
            printf("select subtitle[%d,%d,%d]\n",stSubtItem.u32SubtPID,stSubtItem.u16PageID,stSubtItem.u16AncillaryID);
            PLAYER_LOGE("select subtitle[%d,%d,%d]\n",stSubtItem.u32SubtPID,stSubtItem.u16PageID,stSubtItem.u16AncillaryID);
            Ret = HI_UNF_SUBT_SwitchContent(g_hSubt, &stSubtItem);
            if (HI_SUCCESS != Ret)
            {
                printf("failed to HI_UNF_SUBT_SwitchContent\n");
                PLAYER_LOGE("failed to HI_UNF_SUBT_SwitchContent\n");
            }
        }

    }

    Ret = StartSubtitleDataFilter(pstSubtitleParam);
    if (HI_SUCCESS != Ret)
    {
        printf("StartSubtitleDataFilter Failed\n");
        PLAYER_LOGE("StartSubtitleDataFilter Failed\n");
    }

    return Ret;
}

/*
 * Function     : SubtitlOutputInit
 * Description  : Init SO
 * Create Date  : 2016/03/22
 * Modify       : none
*/
HI_S32 CTsPlayer::SubtitlOutputInit()
{
    HI_S32 s32Ret = HI_SUCCESS;
    /* SO Init */
    s32Ret = HI_UNF_SO_Init();
    if (HI_SUCCESS != s32Ret)
    {
        printf("<ERR>: CTCMediaProcessor --- SO_Init Failed\n");
        PLAYER_LOGE("<ERR>: CTCMediaProcessor --- SO_Init Failed\n");
        return HI_FAILURE;
    }
    return s32Ret;
}

/*
 * Function     : SubtitlOutputCreate
 * Description  : SO Create & Regist 'GetPts','Draw' and 'Clear' Callback Function
 * Create Date  : 2016/03/22
 * Modify       : none
*/
HI_S32 CTsPlayer::SubtitlOutputCreate()
{
    HI_S32 s32Ret = HI_SUCCESS;
    /* SO Create */
    PLAYER_MEMSET(&stSoCallbackInfo, 0, sizeof(stSoCallbackInfo));
    s32Ret = HI_UNF_SO_Create(&g_hSO);
    if (HI_SUCCESS != s32Ret)
    {
        printf("<ERR>: CTCMediaProcessor --- SO_Create Failed\n");
        PLAYER_LOGE("<ERR>: CTCMediaProcessor --- SO_Create Failed\n");
        return HI_FAILURE;
    }
    stSoCallbackInfo.bExtSubTitle = bExtSubTitle;
    stSoCallbackInfo.hAvplay = g_hAvplay;
    stSoCallbackInfo.pstFileInfo = &stFileInfo;
    stSoCallbackInfo.pStreamID = &stStreamID;

    s32Ret = HI_UNF_SO_RegGetPtsCb(g_hSO,GetCurPts,(HI_U32)g_hAvplay);
    if (HI_SUCCESS != s32Ret)
    {
        printf("<ERR>: CTCMediaProcessor --- SO_RegGetPtsCb Failed\n");
        PLAYER_LOGE("<ERR>: CTCMediaProcessor --- SO_RegGetPtsCb Failed\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_SO_RegOnDrawCb(g_hSO, SO_OnDraw, SO_OnClear, NULL);
    if (HI_SUCCESS != s32Ret)
    {
        printf("<ERR>: CTCMediaProcessor --- SO_RegOnDrawCb Failed\n");
        PLAYER_LOGE("<ERR>: CTCMediaProcessor --- SO_RegOnDrawCb Failed\n");
        return HI_FAILURE;
    }

    return s32Ret;
}

/*
 * Function     : DeInitSubtitle
 * Description  : DeInit SO & Subtitle Module
 * Date         : 2016/03/22
 * Modify       : none
*/
HI_S32 CTsPlayer::DeInitSubtitle()
{
    HI_S32 s32Ret = HI_SUCCESS;
    s32Ret = HI_UNF_SO_DeInit();
    s32Ret |= HI_UNF_SUBT_DeInit();

    if(HI_SUCCESS != s32Ret)
    {
        printf("Subtitle Deinit Failed !\n");
    }

    return s32Ret;
}

/*
 * Function     : DestroySubutile
 * Description  : Destroy SO & Subtitle Module
 * Date         : 2016/03/22
 * Modify       : none
*/

HI_S32 CTsPlayer::DestroySubutile()
{
    HI_S32 s32Ret = HI_SUCCESS;

    SUBT_Data_DeInit();

    if ((HI_INVALID_HANDLE != g_hSO) && (NULL != g_hSO))
    {
        s32Ret = HI_UNF_SO_Destroy(g_hSO);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_Destroy failed");
        g_hSO = (HI_HANDLE)HI_INVALID_HANDLE;
    }

    if ((HI_INVALID_HANDLE != g_hSubt) && (NULL != g_hSubt))
    {
        s32Ret = HI_UNF_SUBT_Destroy(g_hSubt);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SUBT_Destroy failed");
        g_hSubt = (HI_HANDLE)HI_INVALID_HANDLE;
    }

    return s32Ret;
}


//prepare resources
bool CTsPlayer::MediaDeviceCreate()
{
    HI_S32    s32Ret = 0;
    HI_UNF_AVPLAY_STOP_OPT_S    Stop;

    PLAYER_LOGI("### CTsPlayer::Prepare \n");

    s32Ret = HI_UNF_VO_CreateWindow(&g_WinAttr, &g_hWin);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_CreateWindow failed");

    PLAYER_LOGI("### hDmxId:%#x, PortID:%#x\n", hDmxId, (HI_UNF_DMX_PORT_E)PORT_ID);
    s32Ret = HI_UNF_DMX_AttachTSPort(hDmxId, (HI_UNF_DMX_PORT_E)PORT_ID);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_AttachTSPort failed");

    s32Ret = HI_UNF_DMX_CreateTSBuffer(PORT_ID, TS_BUF_SIZE, &hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_CreateTSBuffer failed");

    s32Ret = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_GetDefaultConfig failed");

    AvplayAttr.u32DemuxId = hDmxId;
    AvplayAttr.stStreamAttr.u32VidBufSize = VID_BUF_SIZE;
    s32Ret = HI_UNF_AVPLAY_Create(&AvplayAttr, &g_hAvplay);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Create failed");

    s32Ret = HI_UNF_AVPLAY_RegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, TsPlayer_EvnetHandler);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_RegisterEvent new frm failed");

    s32Ret = HI_UNF_AVPLAY_RegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_IFRAME_ERR, TsPlayer_EvnetHandler);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_RegisterEvent frm err failed");

    s32Ret = HI_UNF_AVPLAY_RegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, TsPlayer_EvnetHandler);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_RegisterEvent buf state failed");

    s32Ret = HI_UNF_AVPLAY_RegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_EOS, TsPlayer_EvnetHandler);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_RegisterEvent eos failed");

    s32Ret = HI_UNF_AVPLAY_ChnOpen(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_ChnOpen VID failed");

    s32Ret = HI_UNF_AVPLAY_ChnOpen(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_ChnOpen AUD failed");

    s32Ret = HI_UNF_VO_AttachWindow(g_hWin, g_hAvplay);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_AttachWindow failed");

    s32Ret = HI_UNF_VO_SetWindowEnable(g_hWin, HI_TRUE);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowEnable(1) failed");

    s32Ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_ALL, HI_UNF_TRACK_MODE_STEREO);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SND_SetTrackMode failed");

    s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_GetAttr:ID_SYNC failed");

    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.bQuickOutput = HI_TRUE;
    SyncAttr.u32PreSyncTimeoutMs = 1000;
    s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_SetAttr:ID_SYNC failed");

    s32Ret = HI_UNF_DMX_ResetTSBuffer(hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_ResetTSBuffer failed");

#ifdef SUBTITLE
    s32Ret = HI_UNF_SO_Create(&hSo);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_SO_Create failed", s32Ret);

    stSoCallbackInfo.bExtSubTitle = bExtSubTitle;
    stSoCallbackInfo.hAvplay = g_hAvplay;
    stSoCallbackInfo.pstFileInfo = &stFileInfo;
    stSoCallbackInfo.pStreamID = &stStreamID;
    s32Ret = HI_UNF_SO_RegGetPtsCb(hSo, GetPlayingPts, (HI_U32)&stSoCallbackInfo);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "so reg pts func fail" , s32Ret);
#endif

    s32Ret = HI_UNF_SND_GetVolume(HI_UNF_SND_0,HI_UNF_SND_OUTPUTPORT_DAC0, &stGain);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SND_GetVolume failed");

    g_eTsplayerState = HI_TSPLAYER_STATE_INI;
    bIsPrepared = true;

    PLAYER_LOGI("### CTsPlayer::Prepare Quit \n");

    return true;
}

bool CTsPlayer::MediaDeviceDestroy()
{
    HI_S32 s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::Destroy \n");

    /*destroy function*/
    if (HI_INVALID_HANDLE != g_hWin)
    {
        s32Ret = HI_UNF_VO_SetWindowEnable(g_hWin, HI_FALSE);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowEnable(0) failed");

        s32Ret = HI_UNF_VO_DetachWindow(g_hWin, g_hAvplay);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_DetachWindow failed");
    }
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

#ifdef SUBTITLE
    /* subtitle handle destroy */
    if ((HI_HANDLE)NULL != hSo)
    {
        s32Ret = HI_UNF_SO_Destroy(hSo);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_Destroy failed");
        hSo = (HI_HANDLE)NULL;
    }

    if ((HI_HANDLE)NULL != hSubTitle)
    {
        s32Ret = HI_UNF_SUBT_Destroy(hSubTitle);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SUBT_Destroy failed");
        hSubTitle = (HI_HANDLE)NULL;
    }
#endif

    if (bUseSubtitle){
        s32Ret = DestroySubutile();
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_Destroy or HI_UNF_SUBT_Destroy failed");
    }
    bUseSubtitle = HI_FALSE;

    s32Ret = HI_UNF_AVPLAY_ChnClose(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Close AVPLAY video channel failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    if (HI_INVALID_HANDLE != g_hTrack)
    {
        s32Ret = HI_UNF_SND_Detach(g_hTrack, g_hAvplay);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Detach audio track failed");
        PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

        s32Ret = HI_UNF_SND_DestroyTrack(g_hTrack);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Detach Destroy audio track failed");
        PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

        g_hTrack = HI_INVALID_HANDLE;
    }

    s32Ret = HI_UNF_AVPLAY_ChnClose(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Close AVPLAY audio channel failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_UnRegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_UnRegisterEvent new frm failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_UnRegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_IFRAME_ERR);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_UnRegisterEvent frm err failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_UnRegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_UnRegisterEvent buf state failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_UnRegisterEvent(g_hAvplay, HI_UNF_AVPLAY_EVENT_EOS);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_UnRegisterEvent eos failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_Destroy(g_hAvplay);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Destroy failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    if (HI_INVALID_HANDLE != g_hWin)
    {
        s32Ret = HI_UNF_VO_DestroyWindow(g_hWin);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call destroy window failed");
        g_hWin = HI_INVALID_HANDLE;
    }
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_DMX_DetachTSPort(hDmxId);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_DetachTSPort failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    s32Ret = HI_UNF_DMX_DestroyTSBuffer(hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Destroy ts buffer failed");
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    bIsPrepared = false;
    g_eTsplayerState = HI_TSPLAYER_STATE_DEINI;
    PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

    /* destroy end */
    return true;
}

bool CTsPlayer::ReSetWindowAttr()
{
    HI_S32 s32Ret = 0;
    HI_UNF_WINDOW_ATTR_S    stTmpWinAttr;

    PLAYER_LOGI("### CTsPlayer::ReSetWindowAttr(x:%d, y:%d, w:%d, h:%d) \n", g_WinAttr.stOutputRect.s32X, g_WinAttr.stOutputRect.s32Y,
            g_WinAttr.stOutputRect.s32Width, g_WinAttr.stOutputRect.s32Height);

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_GetWindowAttr failed" , s32Ret);

    if ((stTmpWinAttr.stOutputRect.s32X != g_WinAttr.stOutputRect.s32X)
            || (stTmpWinAttr.stOutputRect.s32Y != g_WinAttr.stOutputRect.s32Y)
            || (stTmpWinAttr.stOutputRect.s32Width != g_WinAttr.stOutputRect.s32Width)
            || (stTmpWinAttr.stOutputRect.s32Height != g_WinAttr.stOutputRect.s32Height))
    {
        stTmpWinAttr.stOutputRect.s32X = g_WinAttr.stOutputRect.s32X;
        stTmpWinAttr.stOutputRect.s32Y = g_WinAttr.stOutputRect.s32Y;
        stTmpWinAttr.stOutputRect.s32Width  = g_WinAttr.stOutputRect.s32Width;
        stTmpWinAttr.stOutputRect.s32Height = g_WinAttr.stOutputRect.s32Height;

        s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_VO_SetWindowAttr:enAspectRatio failed" , s32Ret);
    }
    else
    {
        ALOGD("### no need reset window");
    }

    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);
    PLAYER_LOGI("###g_hWin:%#x, g_hAvplay:%#x \n", g_hWin, g_hAvplay);

    return true;
}

HI_S32 CTsPlayer::SetAudStream()
{
    HI_S32                                s32Ret = HI_SUCCESS;
    HA_CODEC_ID_E                         hiADecType;

    HI_UNF_SND_TRACK_TYPE_E               eMixType = HI_UNF_SND_TRACK_TYPE_MASTER;
    HI_UNF_AUDIOTRACK_ATTR_S              stTrackAttr;
    HI_HANDLE                             hTrack = HI_INVALID_HANDLE;
    HI_U8                                 *pu8Extradata;
    AUDIO_PARA_T                          *pSetAudioPara = NULL;
    HI_UNF_AVPLAY_MULTIAUD_ATTR_S         stMultiAudAttr;
    HI_UNF_ACODEC_ATTR_S                  stAdecAttr;
    HI_U32                                AudPid[32] = {0};
    HI_UNF_ACODEC_ATTR_S                  AdecAttr[32];
    HI_U32                                i,j;
    HI_BOOL                               bIsBigEndian = HI_FALSE;

    PLAYER_LOGI("### CTsPlayer \n");

    if (HI_INVALID_HANDLE == g_hTrack)
    {
        s32Ret = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_MASTER, &stTrackAttr);
        s32Ret|= HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &g_hTrack);
        if (HI_SUCCESS == s32Ret)
        {
            g_SndTrackType = HI_UNF_SND_TRACK_TYPE_MASTER;
            PLAYER_LOGI("### Audio Master Track is idle!\n");
            PLAYER_LOGI("### Create Audio Master Track Success\n");
        }
        else
        {
            PLAYER_LOGI("### Audio Master Track is Busy!\n");
            s32Ret = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
            s32Ret|= HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &g_hTrack);
            if (HI_SUCCESS == s32Ret)

            {
                g_SndTrackType = HI_UNF_SND_TRACK_TYPE_SLAVE;
                PLAYER_LOGI("### Create Audio Slave Track Success\n");
            }
        }

        if (HI_SUCCESS == s32Ret)
        {
            s32Ret = HI_UNF_SND_Attach(g_hTrack, g_hAvplay);
            if (HI_SUCCESS == s32Ret)
            {
                PLAYER_LOGI("### Audio Track Attach Success\n");
            }
            else
            {
                HI_UNF_SND_DestroyTrack(g_hTrack);
                g_hTrack = HI_INVALID_HANDLE;
                PLAYER_LOGI("### Audio Track Attach Fail, destroy Track\n");
            }
        }

        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call HI_UNF_SND_Attach failed" , s32Ret);
    }
    else if ((HI_INVALID_HANDLE != g_hTrack)
           &&(HI_UNF_SND_TRACK_TYPE_SLAVE == g_SndTrackType))
    {
        s32Ret = HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_MASTER, &stTrackAttr);
        s32Ret|= HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &hTrack);
        if (HI_SUCCESS == s32Ret)
        {
            s32Ret = HI_UNF_AVPLAY_Stop(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
            s32Ret|= HI_UNF_SND_Detach(g_hTrack, g_hAvplay);
            if (HI_SUCCESS == s32Ret)
            {
                s32Ret = HI_UNF_SND_Attach(hTrack, g_hAvplay);
                if (HI_SUCCESS == s32Ret)
                {
                    g_hTrack = hTrack;
                    g_SndTrackType = HI_UNF_SND_TRACK_TYPE_MASTER;
                    PLAYER_LOGI("### Audio Slave Track is Dettched!\n");
                    PLAYER_LOGI("### Create Audio Master Track Success\n");
                    PLAYER_LOGI("### Audio Track Attach Success\n");
                }
            }

            if (HI_SUCCESS != s32Ret)
            {
                HI_UNF_SND_DestroyTrack(hTrack);
                PLAYER_LOGI("### Audio Track Attach Fail, destroy Track\n");
            }
        }
    }

    PLAYER_LOGI("### u32AudStreamNum:%#x\n", stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32AudStreamNum);
        if(1 == stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32AudStreamNum)
    {
        PLAYER_LOGI("### CTsPlayer \n");
        pSetAudioPara = &(stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[0]);
        pu8Extradata = pSetAudioPara->pExtraData;

        s32Ret = (HI_S32)aFormat2HiType(pSetAudioPara->aFmt, &hiADecType, &bIsBigEndian);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call aFormat2HiType failed" , s32Ret);

        stAdecAttr.stDecodeParam.enDecMode = HD_DEC_MODE_RAWPCM;
        stAdecAttr.enType = hiADecType;

        s32Ret = getAudAttrByType(&stAdecAttr, pu8Extradata, bIsBigEndian);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call getAudAttrByType failed, unsupported audio format" , s32Ret);

        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_ADEC, &stAdecAttr);
        PLAYER_CHK_PRINTF((s32Ret != HI_SUCCESS), s32Ret, "set adec attr fail");
        PLAYER_LOGI("### out [HI_UNF_AVPLAY_SetAttr ADEC] ");

    }
    else
    {
        PLAYER_LOGI("### CTsPlayer \n");
        stMultiAudAttr.u32PidNum = stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32AudStreamNum;

        for(j = 0; j < stMultiAudAttr.u32PidNum; j++)
        {
            AudPid[j] = stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[j].pid;

            pSetAudioPara = &(stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[j]);
        pu8Extradata = pSetAudioPara->pExtraData;

        s32Ret = (HI_S32)aFormat2HiType(pSetAudioPara->aFmt, &hiADecType, &bIsBigEndian);
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call aFormat2HiType failed" , s32Ret);

        AdecAttr[j].stDecodeParam.enDecMode = HD_DEC_MODE_RAWPCM;
            AdecAttr[j].enType = hiADecType;

            getAudAttrByType(&(AdecAttr[j]), pu8Extradata, bIsBigEndian);
        }

        stMultiAudAttr.pu32AudPid = AudPid;
        stMultiAudAttr.pstAcodecAttr = AdecAttr;

        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_MULTIAUD, &stMultiAudAttr);
        PLAYER_CHK_PRINTF((s32Ret != HI_SUCCESS), s32Ret, "set adec attr fail");
        PLAYER_LOGI("### out [HI_UNF_AVPLAY_SetAttr ADEC] ");

    }

    return s32Ret;
}

#ifdef SUBTITLE
HI_S32 CTsPlayer::SetTsSubStream(HI_U32 u32SubtPID, HI_U16 u16PageID, HI_U16 u16AncillaryID)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_SUBT_INIT_PARA_S stInitParam;
    HI_HANDLE phSubt = 0;
    HI_U8  u8SubtUsingIndex = 0;
    HI_U32 u32SubTitleNum = stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32SubTitleNum;
    SUBT_PARA_T *stSubtilePara = &(stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astSubTitle[0]);

    PLAYER_CHK_RETURN((u32SubtPID == INVALID_TS_PID), HI_FAILURE, "u32SubTitleId is invalid", HI_FAILURE);

    //from a internal subtitle to another internal subtitle

    if ((HI_HANDLE)NULL != hSubTitle)
    {
        if (HI_FALSE == bExtSubTitle)
        {
            //from a internal subtitle to another internal subtitle
            s32Ret = HI_UNF_SUBT_Reset(hSubTitle);
            PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), HI_FAILURE, "Call HI_UNF_SUBT_Reset failed");

            s32Ret = HI_UNF_SUBT_SwitchLang(hSubTitle, u32SubtPID, u16PageID, u16AncillaryID);
            PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), HI_FAILURE, "Call HI_UNF_SUBT_SwitchLang failed");

            if (HI_SUCCESS != s32Ret)
            {
                s32Ret = HI_UNF_SUBT_Destroy(hSubTitle);
                PLAYER_CHK_PRINTF(s32Ret != HI_SUCCESS, s32Ret, "extradata is null, destory internal sub module fail");
                hSubTitle = (HI_HANDLE)NULL;
            }
        }
        else
        {
            //from a internal subtitle to a external subtitle
            s32Ret = HI_UNF_SUBT_Destroy(hSubTitle);
            PLAYER_CHK_PRINTF(s32Ret != HI_SUCCESS, s32Ret, "destory internal sub module fail");
            hSubTitle = (HI_HANDLE)NULL;
        }
    }
    //from a external subtitle to a internal subtitle
    else if ((HI_HANDLE)NULL == hSubTitle && HI_FALSE == bExtSubTitle)
    {
        HI_U32 i = 0;

        memset(&stInitParam, 0, sizeof(stInitParam));

        for (i = 0; i < u32SubTitleNum; i++)
        {
            stInitParam.u16AncillaryID[stInitParam.u8SubtNum]  = stSubtilePara[i].u16AncillaryID;
            stInitParam.u16PageID[stInitParam.u8SubtNum]       = stSubtilePara[i].u16PageID;
            stInitParam.u32SubtPID[stInitParam.u8SubtNum]      = stSubtilePara[i].u32SubtPID;
            stInitParam.u8SubtNum++;

            if (stSubtilePara[i].u32SubtPID == u32SubtPID)
            {
                u8SubtUsingIndex = i;
            }
        }

        stInitParam.hSubtitleOutput  = hSo;
        stInitParam.u32DmxID         = hDmxId;
        stInitParam.u8SubtUsingIndex = u8SubtUsingIndex;

        s32Ret = HI_UNF_SUBT_Create(&stInitParam, &phSubt);
        PLAYER_CHK_PRINTF(s32Ret != HI_SUCCESS, s32Ret, "create internal sub module fail");

        hSubTitle = (s32Ret == HI_SUCCESS) ? phSubt : (HI_HANDLE)NULL;
    }

    return s32Ret;
}
#endif

/***************************************** CTsPlayer calss API ************************************/

CTsPlayer::CTsPlayer()
{
    HI_S32     s32Ret = 0;
    PLAYER_LOGI("### +++ CTsPlayer::CTsPlayer() +++ \n");

    s32Ret = MediaDeviceInit();

    if (HI_SUCCESS != s32Ret)
    {
        PLAYER_LOGI("### call deviceInit failed.\n");
    }

    g_hWin = HI_INVALID_HANDLE;
    hDmxId = DMX_ID;
    bIsPrepared = HI_FALSE;
    bAudStart = HI_FALSE;
    u32SndPort = 0;
    u32MixHeight = 100;
    g_eTsplayerState = HI_TSPLAYER_STATE_DEINI;
    stFileInfo.u32ProgramNum = 0;
    PLAYER_MEMSET(&stStreamID, 0, sizeof(stStreamID));
    initWinAttr(&g_WinAttr, HI_UNF_DISPLAY1);

    g_hSubt = HI_INVALID_HANDLE;
    g_hSO = HI_INVALID_HANDLE;

#ifdef SUBTITLE
    PLAYER_MEMSET(&stSoCallbackInfo, 0, sizeof(stSoCallbackInfo));
#endif

    g_bThreadQuit = HI_FALSE;
    s32Ret = pthread_create(&g_hGetStatus, HI_NULL, __GetBufStatus, NULL);
    if (HI_SUCCESS != s32Ret)
    {
        PLAYER_LOGI("### +++ CTsPlayer::CTsPlayer(): Create get buf status thread fail! +++\n");
    }

    g_LockFlag = 0;

    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);
    PLAYER_LOGI("###g_hWin:%#x, g_hAvplay:%#x \n", g_hWin, g_hAvplay);
    PLAYER_LOGI("### +++ CTsPlayer::CTsPlayer(): finished! +++\n");
}

CTsPlayer::~CTsPlayer()
{
    HI_S32     s32Ret = 0;
    PLAYER_LOGI("### +++ CTsPlayer::~CTsPlayer() +++ \n");

    if ((g_eTsplayerState == HI_TSPLAYER_STATE_PLAY) || (g_eTsplayerState == HI_TSPLAYER_STATE_FAST)
            || (g_eTsplayerState == HI_TSPLAYER_STATE_PAUSE) || (g_eTsplayerState == HI_TSPLAYER_STATE_STOP))
    {
        PLAYER_LOGI("### +++ CTsPlayer::~CTsPlayer() +++, no stop, call stop by myself \n");
        Stop();
    }

    MediaDeviceDeinit();

    PLAYER_LOGI("### +++ CTsPlayer::~CTsPlayer() +++, go here %d \n", __LINE__);
    g_bThreadQuit = HI_TRUE;
    pthread_join(g_hGetStatus, HI_NULL);
    PLAYER_LOGI("### +++ CTsPlayer::~CTsPlayer() +++, go here %d \n", __LINE__);

    g_pHandle = NULL;
    PLAYER_LOGI("### +++ CTsPlayer::~CTsPlayer(): finished! +++\n");
    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);
    PLAYER_LOGI("###g_hWin:%#x, g_hAvplay:%#x \n", g_hWin, g_hAvplay);
    return;
}

//Get the Play Mode, Reserved, not support temporarily.
int  CTsPlayer::GetPlayMode()
{
    PLAYER_LOGI("### CTsPlayer::GetPlayMode \n");
    return 1;
}

int CTsPlayer::SetVideoWindow(int x,int y,int width,int height)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_WINDOW_ATTR_S    stTmpWinAttr;
    HI_U32 u32ScreenWidth = 0;
    HI_U32 u32ScreenHeight = 0;
    HI_U32 u32DispWidth = 0;
    HI_U32 u32DispHeight = 0;
    HI_UNF_ENC_FMT_E enEncodingFormat;

    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);

    PLAYER_LOGI("### CTsPlayer::SetVideoWindow(x:%d, y:%d, width:%d, height:%d) \n", x, y, width, height);

    if ((x > 4096)||(x < 0)
            ||(y > 2160)||(y < 0)
            ||(width > 4096)||(width < 0)
            ||(height > 2160)||(height < 0))
    {
        PLAYER_LOGE("### CTsPlayer::SetVideoWindow: input invalid para \n");
        return -1;
    }

    TSPLAYER_LOCK();

    g_WinAttr.stOutputRect.s32X =  x;
    g_WinAttr.stOutputRect.s32Y =  y;
    g_WinAttr.stOutputRect.s32Width  = width;
    g_WinAttr.stOutputRect.s32Height =  height;
    g_WinAttr.stWinAspectAttr.enAspectCvrs = (HI_UNF_VO_ASPECT_CVRS_E)g_Cvrs;//HI_UNF_VO_ASPECT_CVRS_IGNORE;

    PLAYER_LOGI("### CTsPlayer::SetVideoWindow g_WinAttr after process:(x:%d, y:%d, width:%d, height:%d) \n",
        g_WinAttr.stOutputRect.s32X,
        g_WinAttr.stOutputRect.s32Y,
        g_WinAttr.stOutputRect.s32Width,
        g_WinAttr.stOutputRect.s32Height);

    if (g_eTsplayerState != HI_TSPLAYER_STATE_DEINI)
    {
        PLAYER_LOGI("### CTsPlayer::SetVideoWindow(x:%d, y:%d, width:%d, height:%d, cvrs:%d) \n", x, y, width, height, g_Cvrs);
        s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_GetWindowAttr failed");

        stTmpWinAttr.stOutputRect.s32X = x;
        stTmpWinAttr.stOutputRect.s32Y = y;
        stTmpWinAttr.stOutputRect.s32Width  = width;
        stTmpWinAttr.stOutputRect.s32Height = height;
        stTmpWinAttr.stWinAspectAttr.enAspectCvrs = (HI_UNF_VO_ASPECT_CVRS_E)g_Cvrs;//HI_UNF_VO_ASPECT_CVRS_IGNORE;
        s32Ret = HI_UNF_VO_SetWindowAttr(g_hWin, &stTmpWinAttr);

        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowAttr:OutputRect failed");
        PLAYER_LOGI("### CTsPlayer::SetVideoWindow stTmpWinAttr after process (x:%d, y:%d, width:%d, height:%d) \n",
            stTmpWinAttr.stOutputRect.s32X,
            stTmpWinAttr.stOutputRect.s32Y,
            stTmpWinAttr.stOutputRect.s32Width,
            stTmpWinAttr.stOutputRect.s32Height);
    }
    else
    {
        PLAYER_LOGI("### CTsPlayer::SetVideoWindow(x:%d, y:%d, width:%d, height:%d) \n", x, y, width, height);
    }

    TSPLAYER_UNLOCK();

    PLAYER_LOGI("### CTsPlayer::SetVideoWindow exit\n");

    return 0;
}

int CTsPlayer::VideoShow(void)
{
    HI_S32 s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::VideoShow , g_eTsplayerState == %d\n", g_eTsplayerState);

    TSPLAYER_LOCK();
    PLAYER_CHK_RETURN((false == bIsPrepared), 0, "HW resource is not prepared !!!" , false);

    if ((g_hWin == HI_INVALID_HANDLE) && (g_eTsplayerState == HI_TSPLAYER_STATE_STOP))
    {
        PLAYER_LOGI("### Call HI_UNF_VO_CreateWindow \n");

        s32Ret = HI_UNF_VO_CreateWindow(&g_WinAttr, &g_hWin);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_CreateWindow failed");

        s32Ret = HI_UNF_VO_AttachWindow(g_hWin, g_hAvplay);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_AttachWindow failed");

        s32Ret = HI_UNF_VO_SetWindowEnable(g_hWin, HI_TRUE);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowEnable(1) failed");

    }
    else if ((g_hWin != HI_INVALID_HANDLE) && g_eTsplayerState == HI_TSPLAYER_STATE_PLAY)
    {
        PLAYER_LOGI("### Call HI_UNF_VO_FreezeWindow  HI_FALSE\n");
        s32Ret = HI_UNF_VO_FreezeWindow(g_hWin, HI_FALSE, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
    }
    else
    {
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), -1, "Call VideoShow() failed, g_hWin=0!!" , s32Ret);
    }

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::VideoShow \n");

    return 0;
}

int CTsPlayer::VideoHide(void)
{
    HI_S32 s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::VideoHide , g_eTsplayerState == %d\n", g_eTsplayerState);

    TSPLAYER_LOCK();
    PLAYER_CHK_RETURN((false == bIsPrepared), 0, "HW resource is not prepared !!!" , false);

    if ((g_hWin != HI_INVALID_HANDLE) && (g_eTsplayerState == HI_TSPLAYER_STATE_STOP))
    {
        PLAYER_LOGI("### Call HI_UNF_VO_DestroyWindow \n");

        s32Ret = HI_UNF_VO_SetWindowEnable(g_hWin, HI_FALSE);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowEnable(0) failed");

        s32Ret = HI_UNF_VO_DetachWindow(g_hWin, g_hAvplay);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_DetachWindow failed");

        s32Ret = HI_UNF_VO_DestroyWindow(g_hWin);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_DestroyWindow failed");
        g_hWin = HI_INVALID_HANDLE;
    } else if ((g_hWin != HI_INVALID_HANDLE) && (g_eTsplayerState == HI_TSPLAYER_STATE_PLAY))
    {
        PLAYER_LOGI("### Call HI_UNF_VO_FreezeWindow HI_TRUE\n");
        s32Ret = HI_UNF_VO_FreezeWindow(g_hWin, HI_TRUE, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
    }
    else
    {
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), -1, "Call VO HI_UNF_VO_SetAlpha(0) failed" , s32Ret);
    }

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::VideoHide quit\n");

    return 0;
}

void CTsPlayer::InitVideo(VIDEO_PARA_T* pVideoPara)
{
    PLAYER_LOGI("### CTsPlayer::InitVideo \n");

    PLAYER_MEMCPY(&stFileInfo.astProgramInfo[stFileInfo.u32ProgramNum].stVidStream,pVideoPara,sizeof(VIDEO_PARA_T));

    PLAYER_LOGI("### CTsPlayer::InitVideo quit\n");

    return;
}

void CTsPlayer::InitAudio(AUDIO_PARA_T* pAudioPara)
{
    HI_U32 audioIndex = 0;

    PLAYER_LOGI("### CTsPlayer::InitAudio \n");

    if (NULL == pAudioPara)
    {
        PLAYER_LOGE("### para is Invalid !!! \n");
        return;
    }

    AUDIO_PARA_T* p = pAudioPara;

    PLAYER_LOGI("### pid:%#x\n", p->pid);
    while((p->pid != 0) && (p->pid < 0x1fff) && (audioIndex < PADPT_AUDIO_MAX_DMX_CHN))
    {
        //p indicates the paramater of each Track
        PLAYER_LOGI("### AudioPara[%d] PID :%d \n", audioIndex, p->pid);
        PLAYER_MEMCPY(&stFileInfo.astProgramInfo[stFileInfo.u32ProgramNum].astAudStream[audioIndex], p, sizeof(AUDIO_PARA_T));
        p++;
        audioIndex++;
    }

    stFileInfo.astProgramInfo[stFileInfo.u32ProgramNum].u32AudStreamNum = audioIndex;
    PLAYER_LOGI("### u32AudStreamNum :%d \n", audioIndex);

    return;
}

bool CTsPlayer::StartPlay()
{
    HI_S32     s32Ret = 0;
    HI_S32  s32TmpHiFormart = 0;
    HI_U32     u32ADecType = 0;
    HI_UNF_VCODEC_TYPE_E    eVdecType = HI_UNF_VCODEC_TYPE_BUTT;
    bUseSubtitle = HI_FALSE;

    PLAYER_LOGI("### CTsPlayer::StartPlay \n");
    TSPLAYER_LOCK();

    if (HI_TSPLAYER_STATE_PLAY == g_eTsplayerState)
    {
        TSPLAYER_UNLOCK();
        PLAYER_LOGI("### CTsPlayer::StartPlay already start, return\n");
        return true;
    }

    if (false == bIsPrepared)
    {
        PLAYER_LOGI("### Enter HIADP_AVPlay_RegADecLib\n");
        s32Ret = RegADecLib();
        PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "Call RegADecLib failed" , s32Ret);

        MediaDeviceCreate();
    }
    else if( HI_INVALID_HANDLE != g_hWin)
    {
        ReSetWindowAttr();
    }

    if (HI_INVALID_HANDLE == g_hWin)
    {
        PLAYER_LOGI("### Call HI_UNF_VO_CreateWindow \n");

        s32Ret = HI_UNF_VO_CreateWindow(&g_WinAttr, &g_hWin);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_CreateWindow failed");

        s32Ret = HI_UNF_VO_AttachWindow(g_hWin, g_hAvplay);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_AttachWindow failed");

        s32Ret = HI_UNF_VO_SetWindowEnable(g_hWin, HI_TRUE);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_SetWindowEnable(1) failed");
    }
    PLAYER_LOGI("u32ProgramId:%#x\n", stStreamID.u32ProgramId);
    PLAYER_LOGI("u32VStreamId:%#x\n", stStreamID.u32VStreamId);
    PLAYER_LOGI("Vpid:%#x\n", stFileInfo.astProgramInfo[stStreamID.u32ProgramId].stVidStream.pid);
    if (INVALID_TS_PID != stFileInfo.astProgramInfo[stStreamID.u32ProgramId].stVidStream.pid)
    {
        HI_U32 u32Vpid = stFileInfo.astProgramInfo[stStreamID.u32ProgramId].stVidStream.pid;
        s32Ret = vFormat2HiType(stFileInfo.astProgramInfo[stStreamID.u32ProgramId].stVidStream.vFmt, &s32TmpHiFormart);
        PLAYER_CHK_PRINTF((true != s32Ret), s32Ret, "Call vFormat2HiType failed");

        eVdecType = (HI_UNF_VCODEC_TYPE_E) s32TmpHiFormart;

        s32Ret = HIADP_AVPlay_SetVdecAttr(g_hAvplay, eVdecType, HI_UNF_VCODEC_MODE_NORMAL);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HIADP_AVPlay_SetVdecAttr failed");

        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VID_PID, &u32Vpid);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call AVPlay SetVdecAttr ID_VID_PID failed");

        s32Ret = HI_UNF_AVPLAY_Start(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Start failed");

    }

    PLAYER_LOGI("u32ProgramId:%#x\n", stStreamID.u32ProgramId);
    PLAYER_LOGI("u32AStreamId:%#x\n", stStreamID.u32AStreamId);
    PLAYER_LOGI("Apid:%#x\n", stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[stStreamID.u32AStreamId].pid);
    if (INVALID_TS_PID != stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[stStreamID.u32AStreamId].pid)
    {
        HI_U32 u32Apid = stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astAudStream[stStreamID.u32AStreamId].pid;

        s32Ret = SetAudStream();
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call SetAudStream failed");

        PLAYER_LOGI("########pid:0x%x\n", u32Apid);
        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &u32Apid);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_ATTR_ID_AUD_PID failed");


        s32Ret = HI_UNF_AVPLAY_Start(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "call HI_UNF_AVPLAY_Start audio failed");

        bAudStart = (HI_SUCCESS == s32Ret) ? HI_TRUE : HI_FALSE;
    }

#ifdef SUBTITLE
    /* if any subtitle exists , play it */
    if (0 < stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32SubTitleNum)
    {
        s32Ret = SetTsSubStream(stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astSubTitle[stStreamID.u32SubTitleId].u16PageID,
                stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astSubTitle[stStreamID.u32SubTitleId].u16PageID,
                stFileInfo.astProgramInfo[stStreamID.u32ProgramId].astSubTitle[stStreamID.u32SubTitleId].u16AncillaryID);

        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call _SVR_PADPT_SetTsSubStream failed");
    }
#endif

    g_eTsplayerState = HI_TSPLAYER_STATE_PLAY;
    g_FirstFrm = 0;
    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::StartPlay quit successfully\n");
    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);
    PLAYER_LOGI("###g_hWin:%#x, g_hAvplay:%#x \n", g_hWin, g_hAvplay);

    return true;
}

int CTsPlayer::WriteData(unsigned char* pBuffer, unsigned int nSize)
{
    HI_S32 s32Ret = 0;
    HI_UNF_STREAM_BUF_S stStreamBuf;

    PLAYER_CHK_RETURN((false == bIsPrepared), 0, "HW resource is not prepared !!!" , 0);

    s32Ret = HI_UNF_DMX_GetTSBuffer(hTsBuf, nSize, &stStreamBuf, 0);

    if (s32Ret != HI_SUCCESS || (stStreamBuf.u32Size < nSize))
    {
        return -1;
    }

    memcpy(stStreamBuf.pu8Data, pBuffer, nSize);
    s32Ret = HI_UNF_DMX_PutTSBuffer(hTsBuf, nSize);

    if (s32Ret != HI_SUCCESS)
    {
        PLAYER_LOGE("### call HI_UNF_DMX_PutTSBuffer failed, error code:0x%x \n", s32Ret);
        return -1;
    }

    g_u32Cnt = 0;

    return nSize;
}

bool CTsPlayer::Pause()
{
    HI_S32 s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::Pause \n");
    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    s32Ret = HI_UNF_AVPLAY_Pause(g_hAvplay, NULL);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "call HI_UNF_AVPLAY_Pause failed" , s32Ret);

    g_eTsplayerState = HI_TSPLAYER_STATE_PAUSE;

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::Pause quit\n");

    return true;
}

bool CTsPlayer::Resume()
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_VCODEC_ATTR_S stVdecAdvAttr;

    PLAYER_LOGI("### CTsPlayer::Resume \n");

    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    s32Ret = HI_UNF_AVPLAY_Resume(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Resume failed");

    s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Get vdec adv attr  failed");
    if (HI_SUCCESS == s32Ret)
    {
        stVdecAdvAttr.bOrderOutput = HI_FALSE;
        stVdecAdvAttr.u32ErrCover = 100;
        stVdecAdvAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Set vdec adv attr  failed");
    }

    g_eTsplayerState = HI_TSPLAYER_STATE_PLAY;

    PLAYER_LOGI("### CTsPlayer::Resume quit\n");

    TSPLAYER_UNLOCK();

    return true;
}

bool CTsPlayer::Seek()
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_VCODEC_ATTR_S stVdecAdvAttr;

    PLAYER_LOGI("### CTsPlayer::Seek \n");
    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    PLAYER_CHK_RETURN((g_eTsplayerState == HI_TSPLAYER_STATE_STOP), true, "not need seek when stop !!!" , false);

    s32Ret = HI_UNF_AVPLAY_Reset(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Reset failed");

    s32Ret = HI_UNF_DMX_ResetTSBuffer(hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_ResetTSBuffer failed");

#ifdef SUBTITLE
    if ((HI_HANDLE)NULL != hSubTitle)
    {
        s32Ret = HI_UNF_SUBT_Reset(hSubTitle);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SUBT_Reset failed");
    }

    if ((HI_HANDLE)NULL != hSo)
    {
        s32Ret = HI_UNF_SO_ResetSubBuf(hSo);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_ResetSubBuf failed");
    }
#endif


    s32Ret = HI_UNF_AVPLAY_Resume(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Resume failed");

    s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Get vdec adv attr  failed");
    if (HI_SUCCESS == s32Ret)
    {
        stVdecAdvAttr.bOrderOutput = HI_FALSE;
        stVdecAdvAttr.u32ErrCover = 100;
        stVdecAdvAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Set vdec adv attr  failed");
    }

    g_eTsplayerState = HI_TSPLAYER_STATE_PLAY;

    TSPLAYER_UNLOCK();

    PLAYER_LOGI("### CTsPlayer::Seek quit\n");

    return true;
}

bool CTsPlayer::Fast()
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_VCODEC_MODE_E eMode = HI_UNF_VCODEC_MODE_I;
    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    HI_UNF_VCODEC_ATTR_S stVdecAdvAttr;

    PLAYER_LOGI("### CTsPlayer::Fast \n");
    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    s32Ret = HI_UNF_AVPLAY_GetStatusInfo(g_hAvplay, &stStatusInfo);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_AVPLAY_GetStatusInfo failed" , s32Ret);

    if (HI_UNF_AVPLAY_STATUS_TPLAY == stStatusInfo.enRunStatus)
    {
        TSPLAYER_UNLOCK();
        PLAYER_LOGI("### CTsPlayer::Fast already fast, return\n");
        return true;
    }

	HI_CODEC_VIDEO_CMD_S	stVdecCmd ={0};
	HI_BOOL bProgressive;

	bProgressive = HI_TRUE;

	stVdecCmd.u32CmdID = HI_UNF_AVPLAY_SET_PROGRESSIVE_CMD;
	stVdecCmd.pPara = (HI_VOID *)&bProgressive;

	/*针对vod点播快进场景，服务器下发的全隔行I帧流时，强制逐行，减小底层通路上的视频帧缓存*/
	s32Ret = HI_UNF_AVPLAY_Invoke(g_hAvplay, HI_UNF_AVPLAY_INVOKE_VCODEC, &stVdecCmd);
	if (s32Ret != HI_SUCCESS)
	{
	   PLAYER_LOGI("%s->%d, fail!\n",__func__,__LINE__);
	}

	PLAYER_LOGI("### CTsPlayer::Fast invoke HI_UNF_AVPLAY_SET_PROGRESSIVE_CMD .\n");


    s32Ret = HI_UNF_DMX_ResetTSBuffer(hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_ResetTSBuffer failed");

    s32Ret = HI_UNF_AVPLAY_Reset(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Reset failed");

    s32Ret = HI_UNF_AVPLAY_Tplay(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Tplay failed");


    s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_AVPLAY_GetAttr VID failed" , s32Ret);

    //stVdecAdvAttr.bOrderOutput = HI_FALSE;
    stVdecAdvAttr.enMode = eMode;
    //stVdecAdvAttr.u32ErrCover = 20;
    s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_AVPLAY_SetAttr VID failed" , s32Ret);

#ifdef SUBTITLE
    if ((HI_HANDLE)NULL != hSubTitle)
    {
        s32Ret = HI_UNF_SUBT_Reset(hSubTitle);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SUBT_Reset failed");
    }

    if ((HI_HANDLE)NULL != hSo)
    {
        s32Ret = HI_UNF_SO_ResetSubBuf(hSo);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_ResetSubBuf failed");
    }
#endif

    g_eTsplayerState = HI_TSPLAYER_STATE_FAST;
    TSPLAYER_UNLOCK();

    PLAYER_LOGI("### CTsPlayer::Fast quit\n");

    return true;
}

bool CTsPlayer::StopFast()
{
    bool bRet = false;
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_VCODEC_ATTR_S stVdecAdvAttr;

    PLAYER_LOGI("### CTsPlayer::StopFast \n");
    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((g_eTsplayerState == HI_TSPLAYER_STATE_STOP), true, "not need stopfast when stop !!!" , false);

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    s32Ret = HI_UNF_AVPLAY_Resume(g_hAvplay, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Resume failed");

    s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Get vdec adv attr  failed");
    if (HI_SUCCESS == s32Ret)
    {
        stVdecAdvAttr.bOrderOutput = HI_FALSE;
        stVdecAdvAttr.u32ErrCover = 100;
        stVdecAdvAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Set vdec adv attr  failed");
    }

    g_eTsplayerState = HI_TSPLAYER_STATE_PLAY;

//    PLAYER_CHK_RETURN((true != bRet), false, "Call Resume failed", bRet);

#ifdef SUBTITLE
    if ((HI_HANDLE)NULL != hSubTitle)
    {
        s32Ret = HI_UNF_SUBT_Reset(hSubTitle);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SUBT_Reset failed");
    }

    if ((HI_HANDLE)NULL != hSo)
    {
        s32Ret = HI_UNF_SO_ResetSubBuf(hSo);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SO_ResetSubBuf failed");
    }
#endif

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::StopFast quit\n");

    return true;
}

bool CTsPlayer::Stop()
{
    PLAYER_LOGI("### CTsPlayer::Stop \n");

    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    leaveChannel();
    MediaDeviceDestroy();

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::Stop quit \n");

    return true;
}

int CTsPlayer::GetVolume()
{
    HI_S32 s32Ret = 0;

    PLAYER_LOGI("### CTsPlayer::GetVolume \n");

    s32Ret = HI_UNF_SND_GetVolume(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_DAC0, &stGain);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_SND_GetVolume failed");

    PLAYER_LOGI("### CTsPlayer::GetVolume quit\n");

    return stGain.s32Gain;
}

bool CTsPlayer::SetRatio(int nRatio)
{
    PLAYER_LOGI("### CTsPlayer::SetRatio(%d) \n", nRatio);
    g_Ratio = nRatio;

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!" , false);

    if (nRatio == 255)
    {
        g_WinHide =1;
        return (HI_SUCCESS == VideoHide());
    }
    else
    {
	if(g_WinHide ==1)
        {
            g_WinHide=0;
            VideoShow();
        }
        return __SetRatio(nRatio);
    }
}

//SetVolume [0-100]
bool CTsPlayer::SetVolume(int volume)
{
    HI_S32 s32Ret = 0;
    HI_UNF_SND_GAIN_ATTR_S stGain;
    stGain.s32Gain = volume;
    stGain.bLinearMode = HI_TRUE;

    PLAYER_LOGI("### CTsPlayer::SetVolume(%d) \n",volume);

    s32Ret = HI_UNF_SND_SetVolume(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_ALL,  &stGain);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_SND_SetVolume failed" , s32Ret);

    PLAYER_LOGI("### CTsPlayer::SetVolume(%d) quit\n",volume);

    return true;
}

//Get sound channel, 1:left chan, 2:right chan, 3:dual chan
int CTsPlayer::GetAudioBalance()
{
    HI_S32 s32Ret = 0;
    HI_UNF_TRACK_MODE_E AudioBalance = HI_UNF_TRACK_MODE_BUTT ;

    PLAYER_LOGI("### CTsPlayer::GetAudioBalance \n");

    s32Ret = HI_UNF_SND_GetTrackMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_DAC0, &AudioBalance);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_SND_GetTrackMode failed" , s32Ret);

    switch(AudioBalance)
    {
        case HI_UNF_TRACK_MODE_STEREO :
            s32Ret = 3;
            break;
        case HI_UNF_TRACK_MODE_DOUBLE_LEFT :
            s32Ret = 1;
            break;
        case HI_UNF_TRACK_MODE_DOUBLE_RIGHT:
            s32Ret = 2;
            break;
        default:
            s32Ret = false;
            break;
    }

    PLAYER_LOGI("### CTsPlayer::GetAudioBalance quit\n");

    return s32Ret;
}

//Set sound channel, nAudioBlance 1:left chan, 2:right chan, 3:dual chan
bool CTsPlayer::SetAudioBalance(int nAudioBalance)
{
    HI_S32 s32Ret = 0;

    PLAYER_LOGI("### CTsPlayer::SetAudioBalance: %d \n", nAudioBalance);

    switch(nAudioBalance)
    {
        case 1:
            s32Ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_ALL, HI_UNF_TRACK_MODE_DOUBLE_LEFT);
            break;
        case 2:
            s32Ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_ALL, HI_UNF_TRACK_MODE_DOUBLE_RIGHT);
            break;
        case 3:
            s32Ret = HI_UNF_SND_SetTrackMode(HI_UNF_SND_0, HI_UNF_SND_OUTPUTPORT_ALL, HI_UNF_TRACK_MODE_STEREO);
            break;
        default:
            s32Ret = HI_FALSE;
            break;
    }

    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), false, "Call HI_UNF_SND_SetTrackMode failed" , s32Ret);

    PLAYER_LOGI("### CTsPlayer::SetAudioBalance: %d quit\n", nAudioBalance);

    return true;
}

//get video resolution ratio,
void CTsPlayer::GetVideoPixels(int& width, int& height)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_DISP_E  enDisp = HI_UNF_DISPLAY1;

    PLAYER_LOGI("### CTsPlayer::GetVideoPixels \n");

    s32Ret = HI_UNF_DISP_GetVirtualScreen(enDisp, &u32DispWidth, &u32DispHeight);

    PLAYER_LOGI("### HI_UNF_DISP_GetVirtualScreen, Ret:0x%x, w: %d ,h: %d \n", s32Ret, u32DispWidth, u32DispHeight);

    width = u32DispWidth;
    height = u32DispHeight;

    PLAYER_LOGI("### GetVideoPixels, w: %d ,h: %d \n", width, height);
}

//TODO: this function definination blur, temporarily not implemented.
bool CTsPlayer::IsSoftFit()
{
    PLAYER_LOGI("### CTsPlayer::IsSoftFit : true \n");
    return true;
}

//TODO: this function definination blur, temporarily not implemented.
void CTsPlayer::SetEPGSize(int w, int h)
{
    PLAYER_LOGI("### CTsPlayer::SetEPGSize: w:%d, h:%d \n", w, h);
    return;
}

void CTsPlayer::SwitchAudioTrack(int pid)
{
    HI_S32 s32Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::SwitchAudioTrack(%d) \n", pid);
    TSPLAYER_LOCK();

    s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_AUD_PID, &pid);
    if (HI_SUCCESS != s32Ret)
    {
        printf("HI_UNF_AVPLAY_SetAttr failed 0x%x\n", s32Ret);
    }

    TSPLAYER_UNLOCK();

    return;
}

void CTsPlayer::SwitchSubtitle(int pid)
{
#ifdef SUBTITLE
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S16 s16PageId = INVALID_TS_PID, s16AccilaryId = INVALID_TS_PID;

    PLAYER_LOGI("### CTsPlayer::SwitchSubtitle(%d) \n", pid);

    s32Ret = SetTsSubStream(pid, s16PageId, s16AccilaryId);

    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call _SVR_PADPT_SetTsSubStream failed");
#endif
    return;
}


void CTsPlayer::SetProperty(int nType, int nSub, int nValue)
{
    PLAYER_LOGI("### CTsPlayer::SetProperty(type:%d, sub:%d, value: %d) \n", nType, nSub, nValue);
}

long CTsPlayer::GetCurrentPlayTime()
{
#ifdef SUBTITLE
    HI_S64 s64Pts;
    TS_SO_CALLBACK_INFO_S       stSoCallbackInfo;
#endif

    TSPLAYER_LOCK();

    HI_UNF_AVPLAY_STATUS_INFO_S stStatusInfo;
    HI_S32 s32Ret = HI_SUCCESS;
    PLAYER_LOGI("### CTsPlayer::GetCurrentPlayTime \n");

#ifdef SUBTITLE
    stSoCallbackInfo.bExtSubTitle = bExtSubTitle;
    stSoCallbackInfo.hAvplay = g_hAvplay;
    stSoCallbackInfo.pstFileInfo = &stFileInfo;
    stSoCallbackInfo.pStreamID = &stStreamID;
    s32Ret = GetPlayingPts((HI_U32)(&stSoCallbackInfo), &s64Pts);
#endif

    s32Ret = HI_UNF_AVPLAY_GetStatusInfo(g_hAvplay, &stStatusInfo);
    PLAYER_CHK_RETURN((HI_SUCCESS != s32Ret), HI_FAILURE, "call HI_UNF_AVPLAY_GetStatusInfo failed" , s32Ret);

    TSPLAYER_UNLOCK();
    PLAYER_LOGI("### CTsPlayer::u32LastVidPts:%u\n", stStatusInfo.stSyncStatus.u32LastVidPts);
    return (long)stStatusInfo.stSyncStatus.u32LastVidPts;
}

void CTsPlayer::leaveChannel()
{
    //reset unhandled data, pause playing, then stop.
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_AVPLAY_STOP_OPT_S stStop;
    HI_UNF_WINDOW_ATTR_S stTmpWinAttr;

    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);

    PLAYER_LOGI("### CTsPlayer::leave channel\n");

    if (false == bIsPrepared)
    {
        PLAYER_LOGE("HW resource is not prepared !!!\n");
        return;
    }
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    if (g_eTsplayerState == HI_TSPLAYER_STATE_STOP)
    {
        PLAYER_LOGE("### CTsPlayer::leave channel do not need call\n");
        return;
    }

    if ((g_eTsplayerState == HI_TSPLAYER_STATE_FAST) || (g_eTsplayerState == HI_TSPLAYER_STATE_PLAY) || (g_eTsplayerState == HI_TSPLAYER_STATE_PAUSE))
    {
        HI_UNF_VCODEC_ATTR_S stVdecAdvAttr;
        s32Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
        if (HI_SUCCESS != s32Ret)
        {
            PLAYER_LOGE("Get vdec adv attr  failed\n");
            return;
        }

        stVdecAdvAttr.bOrderOutput = HI_FALSE;
        stVdecAdvAttr.u32ErrCover = 100;
        stVdecAdvAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
        s32Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, (HI_VOID*)&stVdecAdvAttr);
        if (HI_SUCCESS != s32Ret)
        {
            PLAYER_LOGE("Set vdec adv attr  failed\n");
            return;
        }
    }
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    s32Ret = HI_UNF_VO_GetWindowAttr(g_hWin, &stTmpWinAttr);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_VO_GetWindowAttr failed");
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    stStop.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    stStop.u32TimeoutMs = 0;

    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_Stop(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stStop);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Stop VID failed");
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    s32Ret = HI_UNF_AVPLAY_Stop(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, NULL);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_Stop AUD failed");
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    if (HI_INVALID_HANDLE != g_hTrack)
    {
        HI_UNF_SND_Detach(g_hTrack, g_hAvplay);
        PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

        s32Ret = HI_UNF_SND_DestroyTrack(g_hTrack);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Detach Destroy audio track failed");
        PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

        g_hTrack = HI_INVALID_HANDLE;
    }

    /* Close multiple aud demux channel for MultiAudio, then creat one aud demux channel again*/
    if (stFileInfo.astProgramInfo[stStreamID.u32ProgramId].u32AudStreamNum > 1)
    {
        s32Ret = HI_UNF_AVPLAY_ChnClose(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Close AVPLAY audio channel failed");
        PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);

        s32Ret = HI_UNF_AVPLAY_ChnOpen(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
        PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_AVPLAY_ChnOpen AUD failed");
        PLAYER_LOGI("### CTsPlayer::MediaDeviceDestroy go here %d\n", __LINE__);
    }

    s32Ret = HI_UNF_DMX_ResetTSBuffer(hTsBuf);
    PLAYER_CHK_PRINTF((HI_SUCCESS != s32Ret), s32Ret, "Call HI_UNF_DMX_ResetTSBuffer failed");
    PLAYER_LOGI("### CTsPlayer::leave channel go here %d\n", __LINE__);

    bAudStart = HI_FALSE;
    g_eTsplayerState = HI_TSPLAYER_STATE_STOP;

    PLAYER_LOGI("### CTsPlayer::leave channel quit\n");
    PLAYER_LOGI("###g_eTsplayerState:%d \n", g_eTsplayerState);
    PLAYER_LOGI("###g_hWin:%#x, g_hAvplay:%#x \n", g_hWin, g_hAvplay);

    return;
}

bool CTsPlayer::SetEos()
{
    HI_S32    Ret = HI_SUCCESS;

    PLAYER_LOGI("### CTsPlayer::SetEos\n");

    TSPLAYER_LOCK();

    PLAYER_CHK_RETURN((false == bIsPrepared), false, "HW resource is not prepared !!!", false);

    Ret = HI_UNF_AVPLAY_FlushStream(g_hAvplay, HI_NULL);
    PLAYER_CHK_RETURN((HI_SUCCESS != Ret), false, "Call HI_UNF_AVPLAY_FlushStream failed", Ret);

    TSPLAYER_UNLOCK();

    PLAYER_LOGI("### CTsPlayer::SetEos quit\n");

    return true;
}

void CTsPlayer::playerback_register_evt_cb(IPTV_PLAYER_EVT_CB pfunc, void *hander)
{
    PLAYER_LOGI("### CTsPlayer::playerback_register_evt_cb \n");
    g_CallBackFunc   = pfunc;
    g_CallBackHandle = hander;

    return;
}

CTC_MediaProcessor* GetMediaProcessor()
{
    PLAYER_LOGI("\n\n### +++++++++ GetMediaProcessor LibTsPlayer.so version: [%d], Release %s +++++++++ \n", TSPLAY_VERSION, LIB_TSPLAYER_RELEASE_TAG);
    TSPLAYER_LOCK();

    if (NULL == g_pHandle)
    {
        g_pHandle = new CTsPlayer();
    }

    TSPLAYER_UNLOCK();
    return g_pHandle;
}

int GetMediaProcessorVersion()
{
    PLAYER_LOGI("\n\n### +++++++++ GetMediaProcessorVersion LibTsPlayer.so version: [%d], Release %s +++++++++ \n", TSPLAY_VERSION, LIB_TSPLAYER_RELEASE_TAG);
    return TSPLAY_VERSION;
}
void CTsPlayer::SetSurface(Surface* pSurface)
{
    PLAYER_LOGI("### SetSurface() \n");
}
