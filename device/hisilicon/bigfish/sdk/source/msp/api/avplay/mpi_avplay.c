/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_avplay.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/21
  Description   :
  History       :
  1.Date        : 2009/12/21
    Author      : w58735
    Modification: Created file

 *******************************************************************************/

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <pthread.h>
#include <stdlib.h>
#include <memory.h>
#include <sys/mman.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/types.h>

#include "hi_common.h"
#include "hi_unf_pmoc.h"
#include "hi_mpi_stat.h"
#include "hi_mpi_adec.h"
#include "hi_mpi_vdec.h"
#include "hi_mpi_demux.h"
#include "hi_mpi_sync.h"
#include "hi_mpi_win.h"
#include "hi_mpi_ao.h"
#include "hi_mpi_avplay.h"
#include "hi_error_mpi.h"
#include "hi_mpi_mem.h"
#include "hi_module.h"
#include "hi_drv_struct.h"
#include "avplay_frc.h"
#include <sys/syscall.h>

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

#define HI_FATAL_AVPLAY(fmt...)     HI_FATAL_PRINT(HI_ID_AVPLAY, fmt)
#define HI_ERR_AVPLAY(fmt...)       HI_ERR_PRINT(HI_ID_AVPLAY, fmt)
#define HI_WARN_AVPLAY(fmt...)      HI_WARN_PRINT(HI_ID_AVPLAY, fmt)
#define HI_INFO_AVPLAY(fmt...)      HI_INFO_PRINT(HI_ID_AVPLAY, fmt)

#define AVPLAY_AUD_SPEED_ADJUST_SUPPORT

#define GET_AVPLAY_HANDLE(id)   ((HI_ID_AVPLAY << 16) | (id))
#define GET_AVPLAY_ID(handle)   ((handle) & 0xFF)
#define GET_SYNC_ID(handle)     ((handle) & 0xFF)

#define DEMUX_INVALID_PID       0x1FFF

static HI_U32           g_AvplayInit = 0;
static pthread_mutex_t  g_AvplayMutex = PTHREAD_MUTEX_INITIALIZER;

//#define  AVPLAY_VID_THREAD

#define  AVPLAY_MAX_NUM                 16
#define  AVPLAY_MAX_WIN                 6
#define  AVPLAY_MAX_DMX_AUD_CHAN_NUM    32
#define  AVPLAY_MAX_TRACK               6

#define  AVPLAY_MAX_PORT_NUM            3    //The max num of port
#define  AVPLAY_MAX_SLAVE_FRMCHAN       2    //The max num of slave port
#define  AVPLAY_MAX_VIR_FRMCHAN         2    //The max num of virtual port

#define    AVPLAY_DFT_VID_SIZE       (5*1024*1024)
#define    AVPLAY_MIN_VID_SIZE       (512*1024)
#define    AVPLAY_MAX_VID_SIZE       (64*1024*1024)

#define    AVPLAY_TS_DFT_AUD_SIZE    (384*1024)
#define    AVPLAY_ES_DFT_AUD_SIZE    (256*1024)
#define    AVPLAY_MIN_AUD_SIZE       (192*1024)
#define    AVPLAY_MAX_AUD_SIZE       (4*1024*1024)

#define    AVPLAY_ADEC_FRAME_NUM     (8)

#define    AVPLAY_SYS_SLEEP_TIME     (10)

#define    APPLAY_EOS_BUF_MIN_LEN    (1024)
#define    AVPLAY_EOS_TIMEOUT        (1000)
#define    APPLAY_EOS_STREAM_THRESHOLD (2)


/* video buffer dither waterline */
/* CNcomment: 视频缓冲管理抖动水线的百分比，0-99 */
#define    AVPLAY_ES_VID_FULL_PERCENT    85
#define    AVPLAY_ES_VID_HIGH_PERCENT    70
#define    AVPLAY_ES_VID_LOW_PERCENT     30
#define    AVPLAY_ES_VID_EMPTY_PERCENT   10

/* audio buffer dither waterline */
/* CNcomment: 音频缓冲管理抖动水线的百分比，0-99 */
#define    AVPLAY_ES_AUD_FULL_PERCENT    98
#define    AVPLAY_ES_AUD_HIGH_PERCENT    85
#define    AVPLAY_ES_AUD_LOW_PERCENT     5
#define    AVPLAY_ES_AUD_EMPTY_PERCENT   2

/* max delay time of adec in buffer */
#define    AVPLAY_ADEC_MAX_DELAY        1200

#define    AVPLAY_THREAD_TIMEOUT        30

#define    AVPLAY_VDEC_SEEKPTS_THRESHOLD 5000


typedef    HI_S32 (*AVPLAY_EVT_CB_FN)(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E EvtMsg, HI_U32 EvtPara);

typedef enum hiAVPLAY_PROC_ID_E
{
    AVPLAY_PROC_ADEC_AO,
    AVPLAY_PROC_DMX_ADEC,
    AVPLAY_PROC_VDEC_VO,
    AVPLAY_PROC_BUTT
}AVPLAY_PROC_ID_E;

typedef struct tagAVPLAY_VID_PORT_AND_WIN_S
{
    HI_HANDLE   hWindow;
    HI_HANDLE   hPort;
}AVPLAY_VID_PORT_AND_WIN_S;

typedef struct hiAVPLAY_VIDFRM_STAT_S
{
    HI_U32      SendNum;
    HI_U32      PlayNum;
    HI_U32      RepeatNum;
    HI_U32      DiscardNum;
}AVPLAY_VIDFRM_STAT_S;

typedef struct hiAVPLAY_DEBUG_INFO_S
{
    HI_U32                     AcquireAudEsNum;
    HI_U32                     AcquiredAudEsNum;
    HI_U32                     SendAudEsNum;
    HI_U32                     SendedAudEsNum;

    HI_U32                     AcquireAudFrameNum;
    HI_U32                     AcquiredAudFrameNum;
    HI_U32                     SendAudFrameNum;
    HI_U32                     SendedAudFrameNum;

    HI_U32                     AcquireVidFrameNum;
    HI_U32                     AcquiredVidFrameNum;
    AVPLAY_VIDFRM_STAT_S       MasterVidStat;
    AVPLAY_VIDFRM_STAT_S       SlaveVidStat[AVPLAY_MAX_SLAVE_FRMCHAN];
    AVPLAY_VIDFRM_STAT_S       VirVidStat[AVPLAY_MAX_VIR_FRMCHAN];

    HI_U32                     VidOverflowNum;
    HI_U32                     AudOverflowNum;

    HI_U32                     ThreadBeginTime;
    HI_U32                     ThreadEndTime;
    HI_U32                     ThreadScheTimeOutCnt;
    HI_U32                     ThreadExeTimeOutCnt;
    HI_U32                     CpuFreqScheTimeCnt;

}AVPLAY_DEBUG_INFO_S;

typedef enum
{
    THREAD_PRIO_REALTIME,    /*Realtime thread, only 1 permitted*/
    THREAD_PRIO_HIGH,
    THREAD_PRIO_MID,
    THREAD_PRIO_LOW,
    THREAD_PRIO_BUTT
} THREAD_PRIO_E;

typedef struct
{
    HI_UNF_AVPLAY_ATTR_S            AvplayAttr;
    HI_UNF_VCODEC_ATTR_S            VdecAttr;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S  LowDelayAttr;

#ifdef HI_TVP_SUPPORT
    HI_UNF_AVPLAY_TVP_ATTR_S        TVPAttr;
#endif

    HI_U32                          AdecType;

    HI_HANDLE                       hAvplay;
    HI_HANDLE                       hVdec;
    HI_HANDLE                       hAdec;
    HI_HANDLE                       hSync;
    HI_HANDLE                       hDmxPcr;
    HI_HANDLE                       hDmxVid;
    HI_HANDLE                       hDmxAud[AVPLAY_MAX_DMX_AUD_CHAN_NUM];

    HI_U32                          DmxPcrPid;
    HI_U32                          DmxVidPid;
    HI_U32                          DmxAudPid[AVPLAY_MAX_DMX_AUD_CHAN_NUM];

    /*multi audio demux channel*/
    HI_U32                          CurDmxAudChn;
    HI_U32                          DmxAudChnNum;
    HI_UNF_ACODEC_ATTR_S            *pstAcodecAttr;

    HI_HANDLE                       hSharedOrgWin;  /*Original window of homologous*/

    /*multi video frame channel*/
    AVPLAY_VID_PORT_AND_WIN_S       MasterFrmChn;
    AVPLAY_VID_PORT_AND_WIN_S       SlaveFrmChn[AVPLAY_MAX_SLAVE_FRMCHAN];
    AVPLAY_VID_PORT_AND_WIN_S       VirFrmChn[AVPLAY_MAX_VIR_FRMCHAN];

    /*multi audio track channel*/
    HI_HANDLE                       hSyncTrack;
    HI_HANDLE                       hTrack[AVPLAY_MAX_TRACK];
    HI_U32                          TrackNum;

    /*frc parameters*/
    HI_BOOL                         bFrcEnable;
    AVPLAY_FRC_CFG_S                FrcParamCfg;        /* config frc param */ /*CNcomment: 配置的frc参数 */
    AVPLAY_ALG_FRC_S                FrcCalAlg;          /* frc used rate info */ /*CNcomment: frc正在使用的帧率信息 */
    AVPLAY_FRC_CTRL_S               FrcCtrlInfo;        /* frc control */ /*CNcomment: frc控制信息 */
    HI_U32                          FrcNeedPlayCnt;     /* this frame need to play time*/ /*CNcomment:该帧需要播几次 */
    HI_U32                          FrcCurPlayCnt;      /* this frame had played time*/   /*CNcomment:该帧实际播到第几次*/

    /*flush stream control*/
    HI_BOOL                         bSetEosFlag;
    HI_BOOL                         bSetAudEos;

    /*ddp test*/
    HI_BOOL                         AudDDPMode;
    HI_U32                          LastAudPts;

    AVPLAY_EVT_CB_FN                EvtCbFunc[HI_UNF_AVPLAY_EVENT_BUTT];

    /*play control parameters*/
    HI_BOOL                         bSendedFrmToVirWin;          /*whether this frame has send to virtual window*/
    HI_BOOL                         VidEnable;
    HI_BOOL                         AudEnable;
    HI_BOOL                         bVidPreEnable;
    HI_BOOL                         bAudPreEnable;
    HI_BOOL                         VidPreBufThreshhold;
    HI_BOOL                         AudPreBufThreshhold;
    HI_U32                          VidPreSysTime;
    HI_U32                          AudPreSysTime;
    HI_UNF_AVPLAY_STATUS_E          LstStatus;                   /* last avplay status */
    HI_UNF_AVPLAY_STATUS_E          CurStatus;                   /* current avplay status */
    HI_UNF_AVPLAY_OVERFLOW_E        OverflowProc;
    HI_BOOL                         AvplayProcContinue;          /*flag for thread continue*/
    HI_BOOL                         AvplayVidProcContinue;       /*flag for video thread continue*/

    HI_BOOL                         AvplayProcDataFlag[AVPLAY_PROC_BUTT];

    HI_UNF_STREAM_BUF_S             AvplayAudEsBuf;      /*adec buffer in es mode*/
    HI_UNF_ES_BUF_S                 AvplayDmxEsBuf;      /*audio denux buffer in ts mode*/
    HI_UNF_AO_FRAMEINFO_S           AvplayAudFrm;        /*audio frames get form adec*/
    SYNC_AUD_INFO_S                 AudInfo;
    SYNC_AUD_OPT_S                  AudOpt;

    VDEC_ES_BUF_S                   AvplayVidEsBuf;      /*vdec buffer in es mode*/
    HI_DRV_VIDEO_FRAME_PACKAGE_S    CurFrmPack;
    HI_DRV_VIDEO_FRAME_PACKAGE_S    LstFrmPack;
    SYNC_VID_INFO_S                 VidInfo;
    SYNC_VID_OPT_S                  VidOpt;

    HI_DRV_VDEC_FRAME_S             stIFrame;

    HI_BOOL                         bStepMode;
    HI_BOOL                         bStepPlay;

    AVPLAY_DEBUG_INFO_S             DebugInfo;

    HI_U32                          PreAudEsBuf;         /*audio es buffer size when EOS happens*/
    HI_U32                          PreVidEsBuf;         /*video es buffer size when EOS happens*/
    HI_U32                          PreSystime;          /*system time when EOS happens*/
    HI_U32                          PreVidEsBufWPtr;     /*position of the video es buffer write pointer*/
    HI_U32                          PreAudEsBufWPtr;     /*position of the audio es buffer write pointer*/
    HI_U32                          PreTscnt;            /*ts count when EOS happens*/
    HI_BOOL                         CurBufferEmptyState; /*current buffer state is empty or not*/

    HI_UNF_AVPLAY_BUF_STATE_E       PreVidBufState;     /*the status of video es buffer when CheckBuf*/
    HI_UNF_AVPLAY_BUF_STATE_E       PreAudBufState;     /*the status of audio es buffer when CheckBuf*/
    HI_BOOL                         VidDiscard;

    HI_U32                          EosStartTime;        /*EOS start time*/
    HI_U32                          EosDurationTime;     /*EOS duration time*/

    HI_U32                          u32ResumeCount;     /*Resume times*/
    HI_BOOL                         bSetResumeCnt;      /*is set resume count*/

    HI_U32                          AdecDelayMs;            /*How many mseconds in ADEC buffer*/
    ADEC_SzNameINFO_S               AdecNameInfo;

    HI_U32                          u32DispOptimizeFlag;    /*this is for pvr smooth tplay*/

    HI_U32                          ThreadID;
    HI_BOOL                         AvplayThreadRun;
    THREAD_PRIO_E                   AvplayThreadPrio;    /*the priority level of avplay thread*/

    pthread_t                       AvplayDataThdInst;  /* run handle of avplay thread */
    pthread_t                       AvplayVidDataThdInst;  /* run handle of avplay thread */
    pthread_t                       AvplayStatThdInst;    /* run handle of avplay thread */
    pthread_attr_t                  AvplayThreadAttr;   /*attribute of avplay thread*/
    pthread_mutex_t                 AvplayThreadMutex;     /*mutex for data safety use*/

#ifdef AVPLAY_VID_THREAD
    pthread_mutex_t                 AvplayVidThreadMutex;     /*mutex for data safety use*/
#endif

    HI_U32                          u32AoUnloadTime;
    HI_U32                          u32WinUnloadTime;
    HI_U32                          u32ThreadScheTimeOutCnt;

    HI_PROC_ENTRY_S                 Proc;
} AVPLAY_S;

typedef struct
{
    AVPLAY_S           *Avplay;
    pthread_mutex_t     Mutex;
} AVPLAY_INFO_S;

static AVPLAY_INFO_S    g_Avplay[AVPLAY_MAX_NUM] = {{HI_NULL, PTHREAD_MUTEX_INITIALIZER}};

#define HI_AVPLAY_LOCK()        (HI_VOID)pthread_mutex_lock(&g_AvplayMutex)
#define HI_AVPLAY_UNLOCK()      (HI_VOID)pthread_mutex_unlock(&g_AvplayMutex)

#define AVPLAY_INST_LOCK(id)    (HI_VOID)pthread_mutex_lock(&g_Avplay[id].Mutex)
#define AVPLAY_INST_UNLOCK(id)  (HI_VOID)pthread_mutex_unlock(&g_Avplay[id].Mutex)

#define AVPLAY_INST_LOCK_CHECK(handle, id) \
    do \
    { \
        if (id >= AVPLAY_MAX_NUM) \
        { \
            HI_ERR_AVPLAY("avplay %u error\n", id); \
            return HI_ERR_AVPLAY_INVALID_PARA; \
        } \
        HI_AVPLAY_LOCK(); \
        if (0 == g_AvplayInit) \
        {\
            HI_AVPLAY_UNLOCK(); \
            HI_ERR_AVPLAY("AVPLAY is not init\n"); \
            return HI_ERR_AVPLAY_DEV_NO_INIT; \
        } \
        HI_AVPLAY_UNLOCK(); \
        AVPLAY_INST_LOCK(id); \
        pAvplay = g_Avplay[id].Avplay; \
        if (HI_NULL == pAvplay) \
        { \
            AVPLAY_INST_UNLOCK(id); \
            HI_ERR_AVPLAY("avplay is null\n"); \
            return HI_ERR_AVPLAY_INVALID_PARA; \
        } \
        if (pAvplay->hAvplay != handle) \
        { \
            AVPLAY_INST_UNLOCK(id); \
            HI_ERR_AVPLAY("avplay handle 0x%x, 0x%x error\n", handle, pAvplay->hAvplay); \
            return HI_ERR_AVPLAY_INVALID_PARA; \
        } \
    } while (0)

static const HI_U8 s_szAVPLAYVersion[] __attribute__((used)) = "SDK_VERSION:["\
                            MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
                            __DATE__", "__TIME__"]";

static HI_VOID AVPLAY_DRV2UNF_VidFrm(HI_DRV_VIDEO_FRAME_S *pstDRVFrm, HI_UNF_VIDEO_FRAME_INFO_S *pstUNFFrm);

//static HI_U32 u32ThreadMutexCount = 0, u32AvplayMutexCount = 0;
void AVPLAY_ThreadMutex_Lock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount ++;
    //HI_INFO_AVPLAY("lock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    pthread_mutex_lock(ss);
}

void AVPLAY_ThreadMutex_UnLock(pthread_mutex_t *ss)
{
    //u32ThreadMutexCount --;
    //HI_INFO_AVPLAY("unlock u32ThreadMutexCount:%d\n", u32ThreadMutexCount);
    pthread_mutex_unlock(ss);
}

void AVPLAY_Mutex_Lock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount ++;
    //HI_INFO_AVPLAY("lock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    pthread_mutex_lock(ss);
}

void AVPLAY_Mutex_UnLock(pthread_mutex_t *ss)
{
    //u32AvplayMutexCount --;
    //HI_INFO_AVPLAY("unlock u32AvplayMutexCount:%d\n", u32AvplayMutexCount);
    pthread_mutex_unlock(ss);
}

extern HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay);
extern HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay);

HI_U32 AVPLAY_GetSysTime(HI_VOID)
{
    HI_U32      Ticks;
    struct tms  buf;

    /* a non-NULL value is required here */
    Ticks = (HI_U32)times(&buf);

    return Ticks * 10;
}

HI_U32 AVPLAY_GetVirtualWinChnNum(const AVPLAY_S *pAvplay)
{
    HI_U32  i;
    HI_U32  VirChnNum = 0;

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
        {
            VirChnNum++;
        }
    }

    return VirChnNum;
}

HI_U32 AVPLAY_GetSlaveWinChnNum(const AVPLAY_S *pAvplay)
{
    HI_U32  i;
    HI_U32  SlaveChnNum = 0;

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
        {
            SlaveChnNum++;
        }
    }

    return SlaveChnNum;
}

HI_VOID AVPLAY_Notify(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_EVENT_E EvtMsg, HI_U32 EvtPara)
{
    if (pAvplay->EvtCbFunc[EvtMsg])
    {
        (HI_VOID)(pAvplay->EvtCbFunc[EvtMsg](pAvplay->hAvplay, EvtMsg, EvtPara));
    }

    return;
}

HI_BOOL AVPLAY_IsBufEmpty(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S            AdecBuf = {0};
    VDEC_STATUSINFO_S           VdecBuf = {0};
    HI_U32                      AudEsBuf = 0;
    HI_U32                      VidEsBuf = 0;
    HI_U32                      VidEsBufWptr = 0;
    HI_U32                      AudEsBufWptr = 0;

    HI_BOOL                     bEmpty = HI_TRUE;
    HI_U32                      Systime = 0;
    HI_U32                      u32TsCnt = 0;
    HI_DRV_WIN_PLAY_INFO_S      WinPlayInfo = {0};
    HI_MPI_DMX_BUF_STATUS_S     VidPesBuf = {0};
    HI_S32                      Ret;

    WinPlayInfo.u32DelayTime = 0;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            AudEsBuf = AdecBuf.u32BufferUsed;
            AudEsBufWptr = AdecBuf.u32BufWritePos;
        }

        if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
        {
            (HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
        }
    }

    if (pAvplay->VidEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            (HI_VOID)HI_MPI_DMX_GetChannelTsCount(pAvplay->hDmxVid, &u32TsCnt);
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidPesBuf);
            if (HI_SUCCESS == Ret)
            {
                VidEsBuf = VidPesBuf.u32UsedSize;
            }
        }
        else
        {
            Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if (HI_SUCCESS == Ret)
            {
                VidEsBuf = VdecBuf.u32BufferUsed;
            }
        }

        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
        }
    }

    if ((WinPlayInfo.u32FrameNumInBufQn != 0) || (bEmpty != HI_TRUE))
    {
        pAvplay->CurBufferEmptyState = HI_FALSE;
        return HI_FALSE;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
          if ((AudEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(u32TsCnt == pAvplay->PreTscnt )
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
             )
          {
              pAvplay->PreAudEsBuf = AudEsBuf;
              pAvplay->PreTscnt = u32TsCnt;
              pAvplay->CurBufferEmptyState = HI_TRUE;
              pAvplay->PreSystime = 0;
              return HI_TRUE;
          }
          else
          {
              if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(VidEsBuf == pAvplay->PreVidEsBuf)
                &&(u32TsCnt == pAvplay->PreTscnt)
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
                 )
              {
                  Systime = AVPLAY_GetSysTime();

                  if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                     )
                  {
                      pAvplay->PreAudEsBuf = AudEsBuf;
                      pAvplay->PreVidEsBuf = VidEsBuf;
                      pAvplay->CurBufferEmptyState = HI_TRUE;
                      pAvplay->PreSystime = 0;
                      return HI_TRUE;
                  }
              }
              else
              {
                  pAvplay->PreAudEsBuf = AudEsBuf;
                  pAvplay->PreVidEsBuf = VidEsBuf;
                  pAvplay->PreTscnt = u32TsCnt;
                  pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
                  pAvplay->PreSystime = AVPLAY_GetSysTime();
              }
          }
    }
    else
    {
        if ((AudEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBuf < APPLAY_EOS_BUF_MIN_LEN)
            &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
            &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr))
        {
            pAvplay->PreAudEsBuf = AudEsBuf;
            pAvplay->PreVidEsBuf = VidEsBuf;
            pAvplay->CurBufferEmptyState = HI_TRUE;
            pAvplay->PreSystime = 0;
            return HI_TRUE;
        }
        else
        {
            if ((AudEsBuf == pAvplay->PreAudEsBuf)
                &&(VidEsBuf == pAvplay->PreVidEsBuf)
                &&(VidEsBufWptr == pAvplay->PreVidEsBufWPtr)
                &&(AudEsBufWptr == pAvplay->PreAudEsBufWPtr)
             )
            {
                Systime = AVPLAY_GetSysTime();

                if (((Systime > pAvplay->PreSystime) && ((Systime-pAvplay->PreSystime) > AVPLAY_EOS_TIMEOUT))
                    ||((Systime < pAvplay->PreSystime) && (((SYS_TIME_MAX-pAvplay->PreSystime)+Systime) > AVPLAY_EOS_TIMEOUT))
                    )
                {
                    pAvplay->PreAudEsBuf = AudEsBuf;
                    pAvplay->PreVidEsBuf = VidEsBuf;
                    pAvplay->CurBufferEmptyState = HI_TRUE;
                    pAvplay->PreSystime = 0;
                    return HI_TRUE;
                }
            }
            else
            {
                pAvplay->PreAudEsBuf = AudEsBuf;
                pAvplay->PreVidEsBuf = VidEsBuf;
                pAvplay->PreVidEsBufWPtr = VidEsBufWptr;
                pAvplay->PreAudEsBufWPtr = AudEsBufWptr;
                pAvplay->PreSystime = AVPLAY_GetSysTime();
            }
        }
    }

    pAvplay->CurBufferEmptyState = HI_FALSE;

    return HI_FALSE;
}

HI_UNF_AVPLAY_BUF_STATE_E AVPLAY_CaclBufState(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, HI_U32 UsedBufPercent)
{
    HI_UNF_AVPLAY_BUF_STATE_E          CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
    VDEC_FRMSTATUSINFO_S               VdecFrmBuf = {0};
    HI_U32                             u32FrmTime = 0;
    HI_DRV_WIN_PLAY_INFO_S             WinInfo;
    HI_S32                             Ret = HI_SUCCESS;
    HI_U32                             u32StrmTime = 0;

    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));

    if (HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn)
    {
        if (UsedBufPercent >= AVPLAY_ES_AUD_FULL_PERCENT)
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_FULL;
        }
        else if ((UsedBufPercent >= AVPLAY_ES_AUD_HIGH_PERCENT) && (UsedBufPercent < AVPLAY_ES_AUD_FULL_PERCENT))
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_HIGH;
        }
        else if (UsedBufPercent < AVPLAY_ES_AUD_LOW_PERCENT)
        {
           u32FrmTime = pAvplay->AudInfo.FrameNum * pAvplay->AudInfo.FrameTime;

           if (UsedBufPercent < AVPLAY_ES_AUD_EMPTY_PERCENT)
           {
               if (pAvplay->AudInfo.BufTime + u32FrmTime <= 150)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
               }
               else
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
               }
           }
           else
           {
               if (pAvplay->AudInfo.BufTime + u32FrmTime <= 150)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
               }
               else if (pAvplay->AudInfo.BufTime + u32FrmTime <= 240)
               {
                   CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
               }
           }
        }
    }
    else
    {
        if (UsedBufPercent >= AVPLAY_ES_VID_FULL_PERCENT)
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_FULL;
        }
        else if ((UsedBufPercent >= AVPLAY_ES_VID_HIGH_PERCENT) && (UsedBufPercent < AVPLAY_ES_VID_FULL_PERCENT))
        {
            CurBufState = HI_UNF_AVPLAY_BUF_STATE_HIGH;
        }
        else if (UsedBufPercent < AVPLAY_ES_VID_LOW_PERCENT)
        {
            if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
            {
                return HI_UNF_AVPLAY_BUF_STATE_LOW;
            }

            Ret = HI_MPI_VDEC_GetChanFrmStatusInfo(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &VdecFrmBuf);
            Ret |= HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinInfo);
            if (Ret != HI_SUCCESS)
            {
                return HI_UNF_AVPLAY_BUF_STATE_LOW;
            }

            /*InBps is too small*/
            if(VdecFrmBuf.u32StrmInBps < 100)
            {
                u32StrmTime = 0;
            }
            else
            {
                u32StrmTime = (VdecFrmBuf.u32StrmSize * 1000)/(VdecFrmBuf.u32StrmInBps);
            }

            if (WinInfo.u32FrameNumInBufQn <= 1)
            {
                CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
            }
            else if (WinInfo.u32FrameNumInBufQn + VdecFrmBuf.u32DecodedFrmNum <= 5)
            {
                if (u32StrmTime <= 80)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
            }
            else if (WinInfo.u32FrameNumInBufQn + VdecFrmBuf.u32DecodedFrmNum <= 10)
            {
                if (u32StrmTime <= 40)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else if (u32StrmTime <= 80)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
                }
            }
            else
            {
                if (u32StrmTime <= 40)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else if (u32StrmTime <= 80)
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_NORMAL;
                }
            }

#if 0
            Ret = HI_MPI_VDEC_GetChanFrmStatusInfo(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &VdecFrmBuf);
            if (HI_SUCCESS == Ret)
            {
                if (HI_TRUE == pAvplay->VidInfo.bProgressive)
                {
                    u32FrmTime = (VdecFrmBuf.u32DecodedFrmNum + VdecFrmBuf.u32OutBufFrmNum) * pAvplay->VidInfo.FrameTime;
                }
                else
                {
                    u32FrmTime = (2*VdecFrmBuf.u32DecodedFrmNum + VdecFrmBuf.u32OutBufFrmNum) * (pAvplay->VidInfo.FrameTime/2);
                }

                /*InBps is too small*/
                if(VdecFrmBuf.u32StrmInBps < 100)
                {
                    u32StrmTime = 0;
                }
                else
                {
                    u32StrmTime = (VdecFrmBuf.u32StrmSize * 1000)/(VdecFrmBuf.u32StrmInBps);
                }
            }

            if (UsedBufPercent < AVPLAY_ES_VID_EMPTY_PERCENT)
            {
                if((pAvplay->VidInfo.DelayTime < 40) || (pAvplay->VidInfo.DelayTime + u32FrmTime <= 160)
                    || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 240))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
            }
            else
            {
                if((pAvplay->VidInfo.DelayTime < 40) || (pAvplay->VidInfo.DelayTime + u32FrmTime <= 160)
                     || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 240))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
                }
                else if ((pAvplay->VidInfo.DelayTime < 60 || (pAvplay->VidInfo.DelayTime + u32FrmTime) <= 200)
                         || (pAvplay->VidInfo.DelayTime + u32FrmTime + u32StrmTime < 300))
                {
                    CurBufState = HI_UNF_AVPLAY_BUF_STATE_LOW;
                }
            }
#endif
        }
    }

    return CurBufState;
}

HI_VOID AVPLAY_ProcAdecToAo(AVPLAY_S *pAvplay)
{
    HI_S32                  Ret = HI_SUCCESS;
    ADEC_EXTFRAMEINFO_S     AdecExtInfo = {0};
    HI_U32                  AoBufTime = 0;
    ADEC_STATUSINFO_S       AdecStatusinfo;
    HI_U32                  i;
    HI_UNF_AUDIOTRACK_ATTR_S   stTrackInfo;

    if (!pAvplay->AudEnable)
    {
        return;
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return;
    }

    memset(&AdecStatusinfo, 0x0, sizeof(ADEC_STATUSINFO_S));
    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        pAvplay->DebugInfo.AcquireAudFrameNum++;

        Ret = HI_MPI_ADEC_ReceiveFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm, &AdecExtInfo);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AudInfo.SrcPts = AdecExtInfo.u32OrgPtsMs;
            pAvplay->AudInfo.Pts = pAvplay->AvplayAudFrm.u32PtsMs;
            pAvplay->AudInfo.FrameTime = AdecExtInfo.u32FrameDurationMs;

            pAvplay->DebugInfo.AcquiredAudFrameNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_AUD_FRAME, (HI_U32)(&pAvplay->AvplayAudFrm));
            AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
        }
        else
        {
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
        }
        else
        {
            if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
            {
                (HI_VOID)HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &AoBufTime);

                (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STATUSINFO, &AdecStatusinfo);

                pAvplay->AudInfo.BufTime = AoBufTime;
                pAvplay->AudInfo.FrameNum = AdecStatusinfo.u32UsedBufNum;

                Ret = HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
                if (HI_SUCCESS == Ret)
                {
                    if (SYNC_PROC_DISCARD == pAvplay->AudOpt.SyncProc)
                    {
                        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                        pAvplay->AvplayProcContinue = HI_TRUE;
                        (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                        return;
                    }
                    else if (SYNC_PROC_REPEAT == pAvplay->AudOpt.SyncProc)
                    {
                        return;
                    }

                    if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
                    {
                        Ret = HI_MPI_AO_Track_GetAttr(pAvplay->hSyncTrack, &stTrackInfo);
                        if ((HI_SUCCESS == Ret) && (HI_UNF_SND_TRACK_TYPE_MASTER == stTrackInfo.enTrackType)
                            && (HI_FALSE == pAvplay->AudDDPMode))  /*do not use speed adjust when ddp test*/
                        {
#ifdef AVPLAY_AUD_SPEED_ADJUST_SUPPORT
                            if (SYNC_AUD_SPEED_ADJUST_NORMAL == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_UP == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, 0, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_DOWN == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -10, HI_MPI_AO_SND_SPEEDADJUST_SRC);
                            }
                            else if (SYNC_AUD_SPEED_ADJUST_MUTE_REPEAT == pAvplay->AudOpt.SpeedAdjust)
                            {
                                (HI_VOID)HI_MPI_AO_Track_SetSpeedAdjust(pAvplay->hSyncTrack, -100, HI_MPI_AO_SND_SPEEDADJUST_MUTE);
                            }
#endif
                        }
                    }
                }
            }

            pAvplay->DebugInfo.SendAudFrameNum++;

            if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
            {
                /*send frame to main track*/
                Ret = HI_MPI_AO_Track_SendData(pAvplay->hSyncTrack, &pAvplay->AvplayAudFrm);
                if (HI_SUCCESS == Ret)
                {
                    /*send frame to other track*/
                    for(i=0; i<pAvplay->TrackNum; i++)
                    {
                        if (pAvplay->hSyncTrack != pAvplay->hTrack[i])
                        {
                            (HI_VOID)HI_MPI_AO_Track_SendData(pAvplay->hTrack[i], &pAvplay->AvplayAudFrm);
                        }
                    }
                }
            }
            else
            {
                for(i=0; i<pAvplay->TrackNum; i++)
                {
                    Ret = HI_MPI_AO_Track_SendData(pAvplay->hTrack[i], &pAvplay->AvplayAudFrm);
                    if (HI_SUCCESS != Ret)
                    {
                        HI_WARN_AVPLAY("track num %d send data failed\n", i);
                    }
                }
            }

            if (HI_SUCCESS == Ret)
            {
                pAvplay->DebugInfo.SendedAudFrameNum++;
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;

                (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
            }
            else
            {
                if (HI_ERR_AO_OUT_BUF_FULL != Ret
                    && HI_ERR_AO_SENDMUTE != Ret
                    && HI_ERR_AO_PAUSE_STATE != Ret) /* Error drop this frame */
                {
                    HI_ERR_AVPLAY("Send AudFrame to AO failed:%#x, drop a frame.\n", Ret);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                    pAvplay->AvplayProcContinue = HI_TRUE;
                    (HI_VOID)HI_MPI_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                }
            }
        }
    }

    return;
}

HI_S32 AVPLAY_GetWindowByPort(const AVPLAY_S *pAvplay, HI_HANDLE hPort, HI_HANDLE *phWindow)
{
    HI_U32          i;

    if (pAvplay->MasterFrmChn.hPort == hPort)
    {
        *phWindow = pAvplay->MasterFrmChn.hWindow;
        return HI_SUCCESS;
    }

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (pAvplay->SlaveFrmChn[i].hPort == hPort)
        {
            *phWindow = pAvplay->SlaveFrmChn[i].hWindow;
            return HI_SUCCESS;
        }
    }

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (pAvplay->VirFrmChn[i].hPort == hPort)
        {
            *phWindow = pAvplay->VirFrmChn[i].hWindow;
            return HI_SUCCESS;
        }
    }

    *phWindow = HI_INVALID_HANDLE;

    return HI_FAILURE;
}

HI_VOID AVPLAY_ProcFrmToVirWin(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    pAvplay->bSendedFrmToVirWin = HI_TRUE;

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

            for (j = 0; j < AVPLAY_MAX_VIR_FRMCHAN; j++)
            {
                if (hWindow == pAvplay->VirFrmChn[j].hWindow)
                {
                    pAvplay->DebugInfo.VirVidStat[j].SendNum++;

                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS != Ret)
                    {
                        (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                        pAvplay->DebugInfo.VirVidStat[j].DiscardNum++;
                    }
                    else
                    {
                        pAvplay->DebugInfo.VirVidStat[j].PlayNum++;
                    }
                }
            }
        }
    }
    else
    {
        for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

            for (j = 0; j < AVPLAY_MAX_VIR_FRMCHAN; j++)
            {
                if (hWindow == pAvplay->VirFrmChn[j].hWindow)
                {
                    pAvplay->DebugInfo.VirVidStat[j].SendNum++;

                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS == Ret)
                    {
#ifdef AVPLAY_VID_THREAD
                        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
                        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
                        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                        pAvplay->DebugInfo.VirVidStat[j].PlayNum++;
                    }
                    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
                    {
                       (HI_VOID)HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
#ifdef AVPLAY_VID_THREAD
                       pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
                       pAvplay->AvplayProcContinue = HI_TRUE;
#endif
                       pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                       pAvplay->DebugInfo.VirVidStat[j].DiscardNum++;
                    }
                    else
                    {
                        pAvplay->bSendedFrmToVirWin = HI_FALSE;
                    }
                }
            }
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVidFrc(AVPLAY_S *pAvplay)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_DRV_WIN_PLAY_INFO_S              WinInfo;
    HI_DRV_VIDEO_PRIVATE_S              *pstVideoPriv = HI_NULL;
    HI_UNF_AVPLAY_FRMRATE_PARAM_S       stFrameRate;

    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));

    pAvplay->FrcNeedPlayCnt = 1;
    pAvplay->FrcCurPlayCnt = 0;
    pAvplay->FrcCtrlInfo.s32FrmState = 0;

    /* do not do frc in low delay mode */
    if (pAvplay->LowDelayAttr.bEnable)
    {
        return;
    }

    /* find the master chan */
    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pstVideoPriv = (HI_DRV_VIDEO_PRIVATE_S*)(pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32Priv);

    (HI_VOID)HI_MPI_WIN_GetPlayInfo(hWindow, &WinInfo);

    memset(&stFrameRate, 0, sizeof(HI_UNF_AVPLAY_FRMRATE_PARAM_S));
    HI_MPI_VDEC_GetChanFrmRate(pAvplay->hVdec, &stFrameRate);

    if (stFrameRate.enFrmRateType == HI_UNF_AVPLAY_FRMRATE_TYPE_USER)
    {
        if ((HI_DRV_FIELD_TOP == pstVideoPriv->eOriginField)
            || (HI_DRV_FIELD_BOTTOM == pstVideoPriv->eOriginField))
        {
            pAvplay->FrcParamCfg.u32InRate = (stFrameRate.stSetFrmRate.u32fpsInteger * 100
                                         + stFrameRate.stSetFrmRate.u32fpsDecimal / 10) * 2;
        }
        else
        {
            pAvplay->FrcParamCfg.u32InRate = stFrameRate.stSetFrmRate.u32fpsInteger * 100
                                         + stFrameRate.stSetFrmRate.u32fpsDecimal / 10;
        }
    }
    else
    {
        pAvplay->FrcParamCfg.u32InRate = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate/10;
    }

    pAvplay->FrcParamCfg.u32OutRate = WinInfo.u32DispRate;

    if (HI_TRUE == pAvplay->bFrcEnable)
    {
        /*do frc for every new frame*/
        (HI_VOID)AVPLAY_FrcCalculate(&pAvplay->FrcCalAlg, &pAvplay->FrcParamCfg, &pAvplay->FrcCtrlInfo);

        /* sometimes(such as pvr smooth tplay), vdec set u32PlayTime, means this frame must repeat */
        pAvplay->FrcNeedPlayCnt = (1 + pAvplay->FrcCtrlInfo.s32FrmState) * (1 + pstVideoPriv->u32PlayTime);
    }

    return;
}

HI_VOID AVPLAY_ProcVidSync(AVPLAY_S *pAvplay)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_DRV_WIN_PLAY_INFO_S              WinInfo;
    HI_DRV_VIDEO_PRIVATE_S              *pstFrmPriv = HI_NULL;

    memset(&WinInfo, 0x0, sizeof(HI_DRV_WIN_PLAY_INFO_S));

    pAvplay->VidOpt.SyncProc = SYNC_PROC_PLAY;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = HI_DRV_VIDEO_TB_PLAY;
    }

    /* do not do sync in low delay mode */
    if (pAvplay->LowDelayAttr.bEnable)
    {
        return;
    }

    /* find the master chan */
    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->VidInfo.SrcPts = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32SrcPts;
    pAvplay->VidInfo.Pts = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32Pts;

    if (0 != pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate)
    {
        pAvplay->VidInfo.FrameTime = 1000000/pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameRate;
    }
    else
    {
        pAvplay->VidInfo.FrameTime = 40;
    }

    pstFrmPriv = (HI_DRV_VIDEO_PRIVATE_S *)(pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32Priv);
    pstFrmPriv->u32PlayTime = 1;

    /* obtain original stream info, judge whether Progressive*/
    if (HI_DRV_FIELD_ALL == pstFrmPriv->eOriginField)
    {
        pAvplay->VidInfo.bProgressive = HI_TRUE;
    }
    else
    {
        pAvplay->VidInfo.bProgressive = HI_FALSE;
    }

    pAvplay->VidInfo.DispTime = pAvplay->FrcNeedPlayCnt;

    /* need to obtain real-time delaytime */
    (HI_VOID)HI_MPI_WIN_GetPlayInfo(hWindow, &WinInfo);
    pAvplay->VidInfo.DelayTime = WinInfo.u32DelayTime;
    pAvplay->VidInfo.DispRate = WinInfo.u32DispRate;

    (HI_VOID)HI_MPI_SYNC_VidJudge(pAvplay->hSync, &pAvplay->VidInfo, &pAvplay->VidOpt);

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = pAvplay->VidOpt.enTBAdjust;

        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
        {
            pAvplay->CurFrmPack.stFrame[i].stFrameVideo.enTBAdjust = HI_DRV_VIDEO_TB_PLAY;
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVidPlay(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_LD_Event_S                       LdEvent;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;

    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS == Ret)
    {
        /* record low delay event */
        LdEvent.evt_id = EVENT_AVPLAY_FRM_OUT;
        LdEvent.frame = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.u32FrameIndex;
        LdEvent.handle = pAvplay->CurFrmPack.stFrame[i].stFrameVideo.hTunnelSrc;
        (HI_VOID)HI_SYS_GetTimeStampMs(&(LdEvent.time));

        (HI_VOID)HI_MPI_STAT_NotifyLowDelayEvent(&LdEvent);

        /* record program switch event */
        if (pAvplay->CurFrmPack.stFrame[i].stFrameVideo.bIsFirstIFrame)
        {
            HI_MPI_STAT_Event(STAT_EVENT_VOGETFRM, 0);
        }

        HI_INFO_AVPLAY("Play: queue frame to master win success!\n");

        memcpy(&pAvplay->LstFrmPack, &pAvplay->CurFrmPack, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));
#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->FrcCurPlayCnt++;
        pAvplay->DebugInfo.MasterVidStat.PlayNum++;
    }
    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
    {
        HI_ERR_AVPLAY("Play: queue frame to master win failed, Ret=%#x!\n", Ret);

        if (0 == pAvplay->FrcCurPlayCnt)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
        }

#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;

        pAvplay->DebugInfo.MasterVidStat.DiscardNum++;
    }
    else
    {
        /* master window is full, do not send to slave window */
        HI_INFO_AVPLAY("Play: queue frame to master win, master win full!\n");
        return;
    }

    for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j = 0; j < AVPLAY_MAX_SLAVE_FRMCHAN; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;

                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_WARN_AVPLAY("Master queue ok, slave queue failed, Ret=%#x!\n", Ret);

                    /*FrcCurPlayCnt maybe has add to 1, because master window send success!*/
                    if (0 == pAvplay->FrcCurPlayCnt || 1 == pAvplay->FrcCurPlayCnt)
                    {
                        Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                        if (HI_SUCCESS != Ret)
                        {
                            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                        }
                    }

                    pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
                }
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].PlayNum++;
                }
            }
        }
    }

    return;
}


HI_VOID AVPLAY_ProcVidQuickOutput(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;

    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS == Ret)
    {
#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
	/* fix frame lost of vpss when seeking in buffer */
	memcpy(&pAvplay->LstFrmPack, &pAvplay->CurFrmPack, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));
        pAvplay->DebugInfo.MasterVidStat.PlayNum++;
        pAvplay->FrcCurPlayCnt++;
    }
    else if (HI_ERR_VO_BUFQUE_FULL != Ret)
    {
        HI_ERR_AVPLAY("Queue frame to master win failed, Ret=%#x!\n", Ret);

        if (0 == pAvplay->FrcCurPlayCnt)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
        }

#ifdef AVPLAY_VID_THREAD
        pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
        pAvplay->AvplayProcContinue = HI_TRUE;
#endif
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        pAvplay->DebugInfo.MasterVidStat.DiscardNum++;
    }
    else
    {
        /* master window is full, do not send to slave window */
        return;
    }

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<AVPLAY_MAX_SLAVE_FRMCHAN; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;

                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("Master queue ok, slave queue failed, Ret=%#x!\n", Ret);

                    if (0 == pAvplay->FrcCurPlayCnt)
                    {
                        Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                        if (HI_SUCCESS != Ret)
                        {
                            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                        }
                    }

                    pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
                }
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].PlayNum++;
                }
            }
        }
    }

    return;
}



HI_VOID AVPLAY_ProcVidRepeat(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    if (0 == pAvplay->LstFrmPack.u32FrmNum)
    {
        return;
    }

    if (pAvplay->CurFrmPack.stFrame[i].hport != pAvplay->LstFrmPack.stFrame[i].hport)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;

    Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->LstFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS != Ret)
    {
        HI_INFO_AVPLAY("Repeat, queue last frame to master win failed, Ret=%#x!\n", Ret);
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.RepeatNum++;

    HI_INFO_AVPLAY("Repeat: Queue frame to master win success!\n");

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<AVPLAY_MAX_SLAVE_FRMCHAN; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                if (pAvplay->CurFrmPack.stFrame[i].hport != pAvplay->LstFrmPack.stFrame[i].hport)
                {
                    continue;
                }

                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;

                Ret = HI_MPI_WIN_QueueFrame(hWindow, &pAvplay->LstFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    HI_INFO_AVPLAY("Sync repeat, queue last frame to slave win failed, Ret=%#x!\n", Ret);
                }
                else
                {
                    pAvplay->DebugInfo.SlaveVidStat[j].RepeatNum++;
                }
            }
        }
    }

    return;

}

HI_VOID AVPLAY_ProcVidDiscard(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        if (hWindow == pAvplay->MasterFrmChn.hWindow)
        {
            break;
        }
    }

    if (i == pAvplay->CurFrmPack.u32FrmNum)
    {
        return;
    }

    pAvplay->DebugInfo.MasterVidStat.SendNum++;

    Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
    if (HI_SUCCESS != Ret)
    {
        HI_INFO_AVPLAY("Discard, queue useless frame to master win failed, Ret=%#x!\n", Ret);

        if (HI_ERR_VO_BUFQUE_FULL != Ret)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
        }
        else
        {
            return;
        }
    }


    HI_INFO_AVPLAY("Discard, queue useless frame to master win success!\n");

#ifdef AVPLAY_VID_THREAD
    pAvplay->AvplayVidProcContinue = HI_TRUE;
#else
    pAvplay->AvplayProcContinue = HI_TRUE;
#endif
    pAvplay->FrcCurPlayCnt = pAvplay->FrcNeedPlayCnt;
    pAvplay->DebugInfo.MasterVidStat.DiscardNum++;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j=0; j<AVPLAY_MAX_SLAVE_FRMCHAN; j++)
        {
            if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
            {
                pAvplay->DebugInfo.SlaveVidStat[j].SendNum++;

                Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                }

                pAvplay->DebugInfo.SlaveVidStat[j].DiscardNum++;
            }
        }
    }

    return;
}

HI_VOID AVPLAY_ProcVdecToVo(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_LD_Event_S                       LdEvent;

    if (!pAvplay->VidEnable)
    {
        return;
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        pAvplay->DebugInfo.AcquireVidFrameNum++;

        Ret = HI_MPI_VDEC_ReceiveFrame(pAvplay->hVdec, &pAvplay->CurFrmPack);
        if (HI_SUCCESS != Ret)
        {
            return;
        }

        if (pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME])
        {
            HI_UNF_VIDEO_FRAME_INFO_S           VdecUnfFrm;

            AVPLAY_DRV2UNF_VidFrm(&(pAvplay->CurFrmPack.stFrame[0].stFrameVideo), &VdecUnfFrm);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_VID_FRAME, (HI_U32)(&VdecUnfFrm));
        }

        /* record low delay event */
        LdEvent.evt_id = EVENT_AVPLAY_FRM_IN;
        LdEvent.frame = pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32FrameIndex;
        LdEvent.handle = pAvplay->CurFrmPack.stFrame[0].stFrameVideo.hTunnelSrc;
        (HI_VOID)HI_SYS_GetTimeStampMs(&(LdEvent.time));

        (HI_VOID)HI_MPI_STAT_NotifyLowDelayEvent(&LdEvent);

        /* record program switch event */
        if (pAvplay->CurFrmPack.stFrame[0].stFrameVideo.bIsFirstIFrame)
        {
            HI_MPI_STAT_Event(STAT_EVENT_AVPLAYGETFRM, 0);
        }

        HI_INFO_AVPLAY("=====Receive a new frame, sys=%u, id=%u, pts=%u=====\n",
            AVPLAY_GetSysTime(), pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32FrameIndex,
            pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32Pts);

        pAvplay->bSendedFrmToVirWin = HI_FALSE;

        pAvplay->DebugInfo.AcquiredVidFrameNum++;

        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_TRUE;

        AVPLAY_ProcVidFrc(pAvplay);
    }

    if (!pAvplay->bSendedFrmToVirWin)
    {
        AVPLAY_ProcFrmToVirWin(pAvplay);
    }

    if (pAvplay->bStepMode)
    {
        if (pAvplay->bStepPlay)
        {
            AVPLAY_ProcVidPlay(pAvplay);
            pAvplay->bStepPlay = HI_FALSE;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }

        return;
    }

    if (0 == pAvplay->FrcCurPlayCnt)
    {
        AVPLAY_ProcVidSync(pAvplay);
    }

    /*if ((HI_UNF_VCODEC_TYPE_HEVC == pAvplay->VdecAttr.enType) ||
        ((pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32Width >= 3840) && (pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32Height >= 2160)))
    {
        pAvplay->VidOpt.SyncProc = SYNC_PROC_PLAY;
    }*/

    HI_INFO_AVPLAY("sys:%u, frm:%d, need:%u, cur:%u, sync:%u, delay:%u\n",
        AVPLAY_GetSysTime(),pAvplay->CurFrmPack.stFrame[0].stFrameVideo.u32FrameIndex, pAvplay->FrcNeedPlayCnt,
        pAvplay->FrcCurPlayCnt, pAvplay->VidOpt.SyncProc, pAvplay->VidInfo.DelayTime);

    if ((pAvplay->FrcCurPlayCnt < pAvplay->FrcNeedPlayCnt)
        || (0 == pAvplay->FrcNeedPlayCnt)
        )
    {
        if (SYNC_PROC_PLAY == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidPlay(pAvplay);
        }
        else if (SYNC_PROC_REPEAT == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidRepeat(pAvplay);
        }
        else if (SYNC_PROC_DISCARD == pAvplay->VidOpt.SyncProc)
        {
            AVPLAY_ProcVidDiscard(pAvplay);
        }
        if (SYNC_PROC_QUICKOUTPUT == pAvplay->VidOpt.SyncProc)
        {
            // TODO: remove this to presync to control
            AVPLAY_ProcVidQuickOutput(pAvplay);
        }
    }

    if (pAvplay->FrcCurPlayCnt >= pAvplay->FrcNeedPlayCnt)
    {
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }

    return;
}


HI_VOID AVPLAY_ProcDmxToAdec(AVPLAY_S *pAvplay)
{
    HI_UNF_STREAM_BUF_S             AdecEsBuf = {0};
    HI_S32                          Ret;
    HI_U32                          i;
    HI_UNF_ES_BUF_S                 AudDmxEsBuf = {0};

    /* AVPLAY_Start: pAvplay->AudEnable = HI_TRUE */
    if (!pAvplay->AudEnable)
    {
        return;
    }

    Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &pAvplay->AdecDelayMs);
    if (HI_SUCCESS == Ret && pAvplay->AdecDelayMs > AVPLAY_ADEC_MAX_DELAY)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        for (i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            if (i == pAvplay->CurDmxAudChn)
            {
                pAvplay->DebugInfo.AcquireAudEsNum++;
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &(pAvplay->AvplayDmxEsBuf));
                if (HI_SUCCESS == Ret)
                {
                    pAvplay->DebugInfo.AcquiredAudEsNum++;
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_TRUE;
                }
                else
                {
                    /*if is eos and there is no data in demux channel, set eos to adec and ao*/
                    if (HI_ERR_DMX_EMPTY_BUFFER == Ret
                        && pAvplay->bSetEosFlag && !pAvplay->bSetAudEos)
                    {
                        Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
                        if (HI_SUCCESS != Ret)
                        {
                            HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                            return;
                        }

                        if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
                        {
                            Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
                            if (HI_SUCCESS != Ret)
                            {
                                HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_SetEosFlag, Ret = %#x! \n", Ret);
                                return;
                            }
                        }

                        pAvplay->bSetAudEos = HI_TRUE;
                    }
                }
            }
            else
            {
                Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                if (HI_SUCCESS == Ret)
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[i], &AudDmxEsBuf);
                }
            }
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        AdecEsBuf.pu8Data = pAvplay->AvplayDmxEsBuf.pu8Buf;
        AdecEsBuf.u32Size = pAvplay->AvplayDmxEsBuf.u32BufLen;

        pAvplay->DebugInfo.SendAudEsNum++;

        /* for DDP test only, when ts stream revers(this pts < last pts),
            reset audChn, and buffer 600ms audio stream  */
        if (pAvplay->AudDDPMode)
        {
            static HI_U32 s_u32LastPtsTime = 0;

            HI_U32 thisPts = pAvplay->AvplayDmxEsBuf.u32PtsMs;
            HI_U32 thisPtsTime = AVPLAY_GetSysTime();
            HI_S32 ptsDiff = 0;

            if ((thisPts < pAvplay->LastAudPts) && (pAvplay->LastAudPts != HI_INVALID_PTS)
                && (thisPts != HI_INVALID_PTS)
                )
            {
                HI_ERR_AVPLAY("PTS:%u -> %u, PtsLess.\n ", pAvplay->LastAudPts, thisPts);
                (HI_VOID)AVPLAY_ResetAudChn(pAvplay);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                usleep(1200*1000);
                HI_ERR_AVPLAY("Rest OK.\n");
            }
            else
            {
                if ( thisPtsTime >  s_u32LastPtsTime)
                {
                    ptsDiff = (HI_S32)(thisPtsTime - s_u32LastPtsTime);
                }
                else
                {
                    ptsDiff = 0;
                }
                if ( ptsDiff > 1000 )
                {
                    HI_ERR_AVPLAY("PtsTime:%u -> %u, Diff:%d.\n ", s_u32LastPtsTime, thisPtsTime, ptsDiff);
                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);
                    usleep(1200*1000);
                    HI_ERR_AVPLAY("Rest OK.\n");
                    s_u32LastPtsTime = HI_INVALID_PTS;
                    pAvplay->LastAudPts = HI_INVALID_PTS;

                }
            }

            if (thisPts != HI_INVALID_PTS)
            {
                pAvplay->LastAudPts = thisPts;
                s_u32LastPtsTime = thisPtsTime;
            }
        }

        Ret = HI_MPI_ADEC_SendStream(pAvplay->hAdec, &AdecEsBuf, pAvplay->AvplayDmxEsBuf.u32PtsMs);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->DebugInfo.SendedAudEsNum++;
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_GET_AUD_ES, (HI_U32)(&pAvplay->AvplayDmxEsBuf));
            AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
            (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        }
        else
        {
            if ((Ret != HI_ERR_ADEC_IN_BUF_FULL) && (Ret != HI_ERR_ADEC_IN_PTSBUF_FULL)) /* drop this pkg */
            {
                HI_ERR_AVPLAY("Send AudEs buf to ADEC fail:%#x, drop a pkg.\n", Ret);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
            }
        }
    }
    return;
}


HI_VOID AVPLAY_Eos(AVPLAY_S *pAvplay)
{
    pAvplay->PreAudEsBuf = 0;
    pAvplay->PreVidEsBuf = 0;
    pAvplay->PreSystime = 0;
    pAvplay->PreVidEsBufWPtr= 0;
    pAvplay->PreAudEsBufWPtr= 0;
    pAvplay->CurBufferEmptyState = HI_TRUE;
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_EOS;

    return;
}

HI_VOID AVPLAY_ProcEos(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S        AdecBuf;
    ADEC_STATUSINFO_S       AdecStatus = {0};
    VDEC_STATUSINFO_S       VdecStatus= {0};
    HI_BOOL                 bEmpty = HI_TRUE;
    HI_BOOL                 bVidEos = HI_TRUE;
    HI_BOOL                 bAudEos = HI_TRUE;
    HI_DRV_WIN_PLAY_INFO_S  WinPlayInfo = {0};

    if (pAvplay->CurStatus == HI_UNF_AVPLAY_STATUS_EOS)
    {
        return;
    }

    memset(&AdecBuf, 0x0, sizeof(ADEC_BUFSTATUS_S));

    if (pAvplay->AudEnable)
    {
        bAudEos = HI_FALSE;

        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STATUSINFO, &AdecStatus);

        if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
        {
            (HI_VOID)HI_MPI_AO_Track_IsBufEmpty(pAvplay->hSyncTrack, &bEmpty);
        }

        if (AdecBuf.bEndOfFrame && (AdecStatus.u32UsedBufNum == 0))
        {
            if (HI_TRUE == bEmpty)
            {
                bAudEos = HI_TRUE;
            }
        }
    }

    if (pAvplay->VidEnable)
    {
        bVidEos = HI_FALSE;

        (HI_VOID)HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec,  &VdecStatus);

        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
        }

        if (VdecStatus.bEndOfStream && VdecStatus.bAllPortCompleteFrm)
        {
            if (0 == WinPlayInfo.u32FrameNumInBufQn)
            {
                bVidEos = HI_TRUE;
            }
        }
    }

    if (bVidEos && bAudEos)
    {
        AVPLAY_Eos(pAvplay);
        AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_EOS, HI_NULL);
    }

#if 0
    HI_ERR_AVPLAY("bVidEos %d, bAudEos %d, AdecEnd %d, AoEmpty %d, Vdec %d, VoFrmNum:%d\n",
        bVidEos, bAudEos, AdecBuf.bEndOfFrame, bEmpty, VdecStatus.bEndOfStream, WinPlayInfo.u32FrameNumInBufQn);
#endif

    return;
}

static HI_VOID AVPLAY_CalPreBufThreshhold(AVPLAY_S *pAvplay)
{
    HI_U32                                          VidBufPercent = 0;
    HI_U32                                          AudBufPercent = 0;
    HI_MPI_DMX_BUF_STATUS_S                         VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S                         AudChnBuf = {0};
    HI_U32                                          u32SysTime = 0;
    HI_S32                                          Ret;

    if (0 == pAvplay->AudPreBufThreshhold)
    {
        HI_SYS_GetTimeStampMs(&u32SysTime);
        if (-1 == pAvplay->AudPreSysTime)
        {
            pAvplay->AudPreSysTime = u32SysTime;
        }
        else
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
            if ( HI_SUCCESS == Ret )
            {
                if ( AudChnBuf.u32BufSize == 0 )
                {
                    AudBufPercent = 0;
                    HI_ERR_AVPLAY("AudChnBuf.u32BufSize == 0\n");
                }
                else
                {
                    AudBufPercent = AudChnBuf.u32UsedSize * 100 / AudChnBuf.u32BufSize;
                }
            }
            else
            {
                AudBufPercent = 0;
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if (((u32SysTime - pAvplay->AudPreSysTime > 1000) && (AudBufPercent > 0))
                || (AudBufPercent >= 60))
            {
                pAvplay->AudPreBufThreshhold = AudBufPercent;
                HI_INFO_AVPLAY("Audio Es buffer shreshhold is :%d\n", pAvplay->AudPreBufThreshhold);
            }
        }
    }

    if (0 == pAvplay->VidPreBufThreshhold)
    {
        HI_SYS_GetTimeStampMs(&u32SysTime);
        if (-1 == pAvplay->VidPreSysTime)
        {
            pAvplay->VidPreSysTime = u32SysTime;
        }
        else
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if ( HI_SUCCESS == Ret )
            {
                if ( VidChnBuf.u32BufSize == 0 )
                {
                    VidBufPercent = 0;
                    HI_ERR_AVPLAY("VidChnBuf.u32BufSize == 0\n");
                }
                else
                {
                    VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;
                }
            }
            else
            {
                VidBufPercent = 0;
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if (((u32SysTime - pAvplay->VidPreSysTime > 1000) && (VidBufPercent > 0))
                || (VidBufPercent >= 60))
            {
                pAvplay->VidPreBufThreshhold = VidBufPercent;
                HI_INFO_AVPLAY("Video Es buffer shreshhold is :%d\n", pAvplay->VidPreBufThreshhold);
            }
        }
    }
}

HI_VOID AVPLAY_ProcDmxBuf(AVPLAY_S *pAvplay)
{
    HI_S32 Ret;
    HI_MPI_DMX_BUF_STATUS_S            VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            AudChnBuf = {0};
    HI_U32                                          VidBufPercent = 0;
    HI_U32                                          AudBufPercent = 0;
    HI_UNF_ES_BUF_S                           AudDmxEsBuf;
    HI_UNF_ES_BUF_S                           VidDmxEsBuf;

    if (HI_UNF_AVPLAY_STATUS_PREPLAY != pAvplay->CurStatus)
    {
        return;
    }

    if ( !pAvplay->AudEnable && pAvplay->bAudPreEnable )
    {
        AVPLAY_CalPreBufThreshhold(pAvplay);
        if (pAvplay->AudPreBufThreshhold != 0)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
            if ( HI_SUCCESS != Ret )
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if ( AudChnBuf.u32BufSize == 0 )
            {
                HI_ERR_AVPLAY("AudChnBuf.u32BufSize == 0\n");
            }
            else
            {
                AudBufPercent = AudChnBuf.u32UsedSize * 100 / AudChnBuf.u32BufSize;

                if ( AudBufPercent > pAvplay->AudPreBufThreshhold )
                {
                    Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudDmxEsBuf);
                    if ( HI_SUCCESS != Ret  )
                    {
                        HI_ERR_AVPLAY("HI_MPI_DMX_AcquireEs failed:%#x\n",Ret);
                    }
                    else
                    {
                        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudDmxEsBuf);
                        pAvplay->AvplayProcContinue = HI_TRUE;
                    }
                }
            }
        }
    }

    if ( !pAvplay->VidEnable && pAvplay->bVidPreEnable)
    {
        AVPLAY_CalPreBufThreshhold(pAvplay);
        if (pAvplay->VidPreBufThreshhold != 0)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if ( HI_SUCCESS != Ret )
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed:%#x\n",Ret);
            }

            if ( VidChnBuf.u32BufSize == 0 )
            {
                HI_ERR_AVPLAY("VidChnBuf.u32BufSize == 0\n");
            }
            else
            {
                VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;

                if ( VidBufPercent > pAvplay->VidPreBufThreshhold )
                {
                    Ret = HI_MPI_DMX_AcquireEs(pAvplay->hDmxVid, &VidDmxEsBuf);
                    if ( HI_SUCCESS != Ret  )
                    {
                        HI_ERR_AVPLAY("HI_MPI_DMX_AcquireEs failed:%#x\n",Ret);
                    }
                    else
                    {
                        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxVid, &VidDmxEsBuf);
                        pAvplay->AvplayProcContinue = HI_TRUE;
                    }
                }
            }
        }
    }

    return;
}

HI_VOID AVPLAY_ProcCheckBuf(AVPLAY_S *pAvplay)
{
    ADEC_BUFSTATUS_S                   AdecBuf = {0};
    VDEC_STATUSINFO_S                  VdecBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            VidChnBuf = {0};
    HI_MPI_DMX_BUF_STATUS_S            AudChnBuf = {0};

    HI_UNF_AVPLAY_BUF_STATE_E          CurVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_UNF_AVPLAY_BUF_STATE_E          CurAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    HI_U32                             VidBufPercent = 0;
    HI_U32                             AudBufPercent = 0;

    HI_UNF_DMX_PORT_MODE_E             PortMode = HI_UNF_DMX_PORT_MODE_BUTT;

    HI_BOOL                            RealModeFlag = HI_FALSE;
    HI_BOOL                            ResetProc = HI_FALSE;

    SYNC_BUF_STATUS_S                  SyncBufStatus = {0};
    SYNC_BUF_STATE_E                   SyncAudBufState = SYNC_BUF_STATE_NORMAL;
    SYNC_BUF_STATE_E                   SyncVidBufState = SYNC_BUF_STATE_NORMAL;

    HI_S32                             Ret;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            if(HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &AudChnBuf);
                if (HI_SUCCESS == Ret)
                {
                    if ((AudChnBuf.u32BufSize + AdecBuf.u32BufferSize) > 0)
                    {
                        AudBufPercent = (AudChnBuf.u32UsedSize + AdecBuf.u32BufferUsed) * 100 / (AudChnBuf.u32BufSize + AdecBuf.u32BufferSize);
                    }
                    else
                    {
                        AudBufPercent = 0;
                    }

                    CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
                    SyncAudBufState = (SYNC_BUF_STATE_E)CurAudBufState;
                }
            }
            else
            {
                if (AdecBuf.u32BufferSize > 0)
                {
                    AudBufPercent = AdecBuf.u32BufferUsed * 100 / AdecBuf.u32BufferSize;
                }
                else
                {
                    AudBufPercent = 0;
                }

                CurAudBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, AudBufPercent);
                SyncAudBufState = (SYNC_BUF_STATE_E)CurAudBufState;
            }
        }

        if (CurAudBufState != pAvplay->PreAudBufState)
        {
            if (!pAvplay->VidEnable)
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurAudBufState);
            }

            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_AUD_BUF_STATE, CurAudBufState);
            pAvplay->PreAudBufState = CurAudBufState;
        }
    }

    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
        if(HI_SUCCESS == Ret)
        {
            if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
                if (HI_SUCCESS == Ret)
                {
                    if (VidChnBuf.u32BufSize > 0)
                    {
                        VidBufPercent = VidChnBuf.u32UsedSize * 100 / VidChnBuf.u32BufSize;
                    }
                    else
                    {
                        VidBufPercent = 0;
                    }

                    CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);
                    SyncVidBufState = (SYNC_BUF_STATE_E)CurVidBufState;

                }
            }
            else
            {
                if (VdecBuf.u32BufferSize > 0)
                {
                    VidBufPercent = VdecBuf.u32BufferUsed * 100 / VdecBuf.u32BufferSize;
                }
                else
                {
                    VidBufPercent = 0;
                }

                CurVidBufState = AVPLAY_CaclBufState(pAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, VidBufPercent);
                SyncVidBufState = (SYNC_BUF_STATE_E)CurVidBufState;
            }
        }

        if (CurVidBufState != pAvplay->PreVidBufState)
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_RNG_BUF_STATE, CurVidBufState);

            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_BUF_STATE, CurVidBufState);
            pAvplay->PreVidBufState = CurVidBufState;
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        (HI_VOID)HI_MPI_DMX_GetPortMode(pAvplay->AvplayAttr.u32DemuxId, &PortMode);

        if (HI_UNF_DMX_PORT_MODE_RAM == PortMode)
        {
            RealModeFlag = HI_FALSE;
        }
        else
        {
            RealModeFlag = HI_TRUE;
        }
    }

    /*  real mode */
    if (RealModeFlag)
    {
        if (HI_UNF_AVPLAY_BUF_STATE_FULL == CurAudBufState)
        {
            ResetProc = HI_TRUE;
            pAvplay->DebugInfo.AudOverflowNum++;
            HI_ERR_AVPLAY("Aud Dmx Buf overflow, reset.\n");
        }

        if (pAvplay->VidDiscard)
        {
            if (VidBufPercent <= 60)
            {
                pAvplay->VidDiscard = HI_FALSE;
            }
        }
        else
        {
            if (HI_UNF_AVPLAY_BUF_STATE_FULL == CurVidBufState)
            {
                if (HI_UNF_AVPLAY_OVERFLOW_RESET == pAvplay->OverflowProc)
                {
                    ResetProc = HI_TRUE;
                    pAvplay->DebugInfo.VidOverflowNum++;
                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, reset.\n");
                }
                else
                {
                    pAvplay->VidDiscard = HI_TRUE;
                    pAvplay->DebugInfo.VidOverflowNum++;

                    (HI_VOID)AVPLAY_ResetAudChn(pAvplay);

                    HI_ERR_AVPLAY("Vid Dmx Buf overflow, discard.\n");
                }
            }
        }

        if (ResetProc)
        {
            (HI_VOID)AVPLAY_Reset(pAvplay);
            pAvplay->VidDiscard = HI_FALSE;
        }
        else
        {
            SyncBufStatus.AudBufPercent = AudBufPercent;
            SyncBufStatus.AudBufState = SyncAudBufState;
            SyncBufStatus.VidBufPercent = VidBufPercent;
            SyncBufStatus.VidBufState = SyncVidBufState;
            SyncBufStatus.bOverflowDiscFrm = pAvplay->VidDiscard;
            (HI_VOID)HI_MPI_SYNC_SetBufState(pAvplay->hSync,SyncBufStatus);
        }
    }
    else
    {
        if (SyncAudBufState == SYNC_BUF_STATE_LOW || SyncAudBufState == SYNC_BUF_STATE_EMPTY)
        {
            SyncBufStatus.AudBufState = SyncAudBufState;
        }
        else
        {
            SyncBufStatus.AudBufState = SYNC_BUF_STATE_NORMAL;
        }

        SyncBufStatus.AudBufPercent = AudBufPercent;

        if (SyncVidBufState == SYNC_BUF_STATE_LOW || SyncVidBufState == SYNC_BUF_STATE_EMPTY)
        {
            SyncBufStatus.VidBufState = SyncVidBufState;
        }
        else
        {
            SyncBufStatus.VidBufState = SYNC_BUF_STATE_NORMAL;
        }

        SyncBufStatus.VidBufPercent = VidBufPercent;

        SyncBufStatus.bOverflowDiscFrm = pAvplay->VidDiscard;

        (HI_VOID)HI_MPI_SYNC_SetBufState(pAvplay->hSync,SyncBufStatus);
    }

    return;
}

static HI_VOID AVPLAY_DRV2UNF_VidFrm(HI_DRV_VIDEO_FRAME_S *pstDRVFrm, HI_UNF_VIDEO_FRAME_INFO_S *pstUNFFrm)
{
    pstUNFFrm->u32FrameIndex = pstDRVFrm->u32FrameIndex;
    pstUNFFrm->stVideoFrameAddr[0].u32YAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_Y;
    pstUNFFrm->stVideoFrameAddr[0].u32CAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_C;
    pstUNFFrm->stVideoFrameAddr[0].u32CrAddr = pstDRVFrm->stBufAddr[0].u32PhyAddr_Cr;
    pstUNFFrm->stVideoFrameAddr[0].u32YStride = pstDRVFrm->stBufAddr[0].u32Stride_Y;
    pstUNFFrm->stVideoFrameAddr[0].u32CStride = pstDRVFrm->stBufAddr[0].u32Stride_C;
    pstUNFFrm->stVideoFrameAddr[0].u32CrStride = pstDRVFrm->stBufAddr[0].u32Stride_Cr;
    pstUNFFrm->stVideoFrameAddr[1].u32YAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_Y;
    pstUNFFrm->stVideoFrameAddr[1].u32CAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_C;
    pstUNFFrm->stVideoFrameAddr[1].u32CrAddr = pstDRVFrm->stBufAddr[1].u32PhyAddr_Cr;
    pstUNFFrm->stVideoFrameAddr[1].u32YStride = pstDRVFrm->stBufAddr[1].u32Stride_Y;
    pstUNFFrm->stVideoFrameAddr[1].u32CStride = pstDRVFrm->stBufAddr[1].u32Stride_C;
    pstUNFFrm->stVideoFrameAddr[1].u32CrStride = pstDRVFrm->stBufAddr[1].u32Stride_Cr;
    pstUNFFrm->u32Width = pstDRVFrm->u32Width;
    pstUNFFrm->u32Height = pstDRVFrm->u32Height;
    pstUNFFrm->u32SrcPts = pstDRVFrm->u32SrcPts;
    pstUNFFrm->u32Pts = pstDRVFrm->u32Pts;
    pstUNFFrm->u32AspectWidth = pstDRVFrm->u32AspectWidth;
    pstUNFFrm->u32AspectHeight = pstDRVFrm->u32AspectHeight;
    pstUNFFrm->stFrameRate.u32fpsInteger = pstDRVFrm->u32FrameRate/1000;
    pstUNFFrm->stFrameRate.u32fpsDecimal = pstDRVFrm->u32FrameRate % 1000;
    pstUNFFrm->bProgressive = pstDRVFrm->bProgressive;

    switch (pstDRVFrm->ePixFormat)
    {
        case HI_DRV_PIX_FMT_NV61_2X1:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422;
            break;
        case HI_DRV_PIX_FMT_NV21:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
            break;
        case HI_DRV_PIX_FMT_NV80:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_400;
            break;
        case HI_DRV_PIX_FMT_NV12_411:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_411;
            break;
        case HI_DRV_PIX_FMT_NV61:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2;
            break;
        case HI_DRV_PIX_FMT_NV42:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_444;
            break;
        case HI_DRV_PIX_FMT_UYVY:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_UYVY;
            break;
        case HI_DRV_PIX_FMT_YUYV:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YUYV;
            break;
        case HI_DRV_PIX_FMT_YVYU:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PACKAGE_YVYU;
            break;

        case HI_DRV_PIX_FMT_YUV400:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_400;
            break;
        case HI_DRV_PIX_FMT_YUV411:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_411;
            break;
        case HI_DRV_PIX_FMT_YUV420p:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_420;
            break;
        case HI_DRV_PIX_FMT_YUV422_1X2:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_1X2;
            break;
        case HI_DRV_PIX_FMT_YUV422_2X1:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_422_2X1;
            break;
        case HI_DRV_PIX_FMT_YUV_444:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_444;
            break;
        case HI_DRV_PIX_FMT_YUV410p:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_410;
            break;
        default:
            pstUNFFrm->enVideoFormat = HI_UNF_FORMAT_YUV_BUTT;
            break;
    }

    switch (pstDRVFrm->enFieldMode)
    {
        case HI_DRV_FIELD_TOP:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_TOP;
            break;
        }
        case HI_DRV_FIELD_BOTTOM:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_BOTTOM;
            break;
        }
        case HI_DRV_FIELD_ALL:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
            break;
        }
        default:
        {
            pstUNFFrm->enFieldMode = HI_UNF_VIDEO_FIELD_BUTT;
            break;
        }
    }

    pstUNFFrm->bTopFieldFirst = pstDRVFrm->bTopFieldFirst;

    switch (pstDRVFrm->eFrmType)
    {
        case HI_DRV_FT_NOT_STEREO:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
            break;
        }
        case HI_DRV_FT_SBS:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE;
            break;
        }
        case HI_DRV_FT_TAB:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_TOP_AND_BOTTOM;
            break;
        }
        case HI_DRV_FT_FPK:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_TIME_INTERLACED;
            break;
        }
        default:
        {
            pstUNFFrm->enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_BUTT;
            break;
        }
    }

    pstUNFFrm->u32Circumrotate = pstDRVFrm->u32Circumrotate;
    pstUNFFrm->bVerticalMirror = pstDRVFrm->bToFlip_V;
    pstUNFFrm->bHorizontalMirror = pstDRVFrm->bToFlip_H;
    pstUNFFrm->u32DisplayWidth = (HI_U32)pstDRVFrm->stDispRect.s32Width;
    pstUNFFrm->u32DisplayHeight = (HI_U32)pstDRVFrm->stDispRect.s32Height;
    pstUNFFrm->u32DisplayCenterX = (HI_U32)pstDRVFrm->stDispRect.s32X;
    pstUNFFrm->u32DisplayCenterY = (HI_U32)pstDRVFrm->stDispRect.s32Y;
    pstUNFFrm->u32ErrorLevel = pstDRVFrm->u32ErrorLevel;

    return;
}

HI_VOID AVPLAY_ProcVidEvent(AVPLAY_S *pAvplay)
{
    VDEC_EVENT_S                        VdecEvent;
    HI_UNF_VIDEO_USERDATA_S             VdecUsrData;
    HI_S32                              Ret;

    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_CheckNewEvent(pAvplay->hVdec, &VdecEvent);
        if (HI_SUCCESS == Ret)
        {
            if (VdecEvent.bNewUserData && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NEW_USER_DATA])
            {
                Ret = HI_MPI_VDEC_ChanRecvUsrData(pAvplay->hVdec, &VdecUsrData);
                if (HI_SUCCESS == Ret)
                {
                    AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NEW_USER_DATA, (HI_U32)(&VdecUsrData));
                }
                else
                {
                    HI_ERR_AVPLAY("call HI_MPI_VDEC_ReadNewFrame failed.\n");
                }
            }

            if (VdecEvent.bNormChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_NORM_SWITCH])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_NORM_SWITCH, (HI_U32)(&(VdecEvent.stNormChangeParam)));
            }

            if (VdecEvent.bFramePackingChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_FRAMEPACKING_CHANGE, (HI_U32)(VdecEvent.enFramePackingType));
            }

            if (VdecEvent.bIFrameErr && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_IFRAME_ERR])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_IFRAME_ERR, HI_NULL);
            }

            if (VdecEvent.u32UnSupportStream && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_VID_UNSUPPORT])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_UNSUPPORT, HI_NULL);
            }

            if (0 != VdecEvent.u32ErrRatio && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_VID_ERR_RATIO])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_ERR_RATIO, (HI_U32)(VdecEvent.u32ErrRatio));
            }

            if (VdecEvent.stProbeStreamInfo.bProbeCodecTypeChangeFlag)
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_VID_ERR_TYPE, (HI_U32)(VdecEvent.stProbeStreamInfo.enCodecType));
            }

            if (VdecEvent.bFirstValidPts)
            {
                (HI_VOID)HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_FIRST_PTS, (HI_VOID *)VdecEvent.u32FirstValidPts);
            }

            if (VdecEvent.bSecondValidPts)
            {
                (HI_VOID)HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_SECOND_PTS, (HI_VOID *)VdecEvent.u32SecondValidPts);
            }
        }
        else
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_CheckNewEvent failed.\n");
        }
    }

    return;
}

HI_VOID AVPLAY_ProcAudEvent(AVPLAY_S *pAvplay)
{
    ADEC_EVENT_S                        AdecEvent;
    HI_S32                              Ret;

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_ADEC_CheckNewEvent(pAvplay->hAdec, &AdecEvent);
        if (HI_SUCCESS == Ret)
        {
            if (AdecEvent.bFrameInfoChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_AUD_INFO_CHANGE])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_AUD_INFO_CHANGE, (HI_U32)(&(AdecEvent.stStreamInfo)));
            }

            if (AdecEvent.bUnSupportFormat && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_AUD_UNSUPPORT])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_AUD_UNSUPPORT, 0);
            }

            if (AdecEvent.bStreamCorrupt && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_AUD_FRAME_ERR])
            {
                AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_AUD_FRAME_ERR, 0);
            }
        }
        else
        {
            HI_INFO_AVPLAY("call HI_MPI_ADEC_CheckNewEvent failed.\n");
        }
    }

    return;
}

HI_VOID AVPLAY_ProcSyncEvent(AVPLAY_S *pAvplay)
{
    HI_S32              Ret;
    SYNC_EVENT_S        SyncEvent;

    Ret = HI_MPI_SYNC_CheckNewEvent(pAvplay->hSync, &SyncEvent);
    if (HI_SUCCESS == Ret)
    {
        if (SyncEvent.bVidPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.VidPtsJumpParam)));
        }

        if (SyncEvent.bAudPtsJump &&  pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_PTS_JUMP, (HI_U32)(&(SyncEvent.AudPtsJumpParam)));
        }

        if (SyncEvent.bStatChange && pAvplay->EvtCbFunc[HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE])
        {
            AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_SYNC_STAT_CHANGE, (HI_U32)(&(SyncEvent.StatParam)));
        }
    }
    else
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_CheckNewEvent failed.\n");
    }

    return;
}

HI_VOID AVPLAY_ProcCheckStandBy(AVPLAY_S *pAvplay)
{
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_U32 u32ResumeCount = 0;
        (HI_VOID)HI_MPI_DMX_GetResumeCount(&u32ResumeCount);

        if (HI_FALSE == pAvplay->bSetResumeCnt)
        {
            pAvplay->u32ResumeCount = u32ResumeCount;
            pAvplay->bSetResumeCnt  = HI_TRUE;
            return ;
        }

        /*ts mode, we need reset avplay when system standby*/
        if (pAvplay->u32ResumeCount != u32ResumeCount)
        {
            pAvplay->u32ResumeCount = u32ResumeCount;
            (HI_VOID)AVPLAY_Reset(pAvplay);
            HI_WARN_AVPLAY("System standby, now reset the AVPLAY!\n");
        }
    }

    return;
}

#ifdef HI_MSP_BUILDIN
extern HI_S32 HI_MPI_PMOC_BoostCpuFreq(HI_VOID);
#endif

HI_VOID AVPLAY_ProcUnloadTime(AVPLAY_S *pAvplay)
{
    HI_U32              u32AoUnloadTime = 0;
    HI_U32              u32WinUnloadTime = 0;
    HI_U32              u32ThreadScheTimeOutCnt = 0;
    HI_S32              Ret = HI_SUCCESS;

    u32ThreadScheTimeOutCnt = pAvplay->DebugInfo.ThreadScheTimeOutCnt;

    if (pAvplay->MasterFrmChn.hWindow != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_WIN_GetUnloadTimes(pAvplay->MasterFrmChn.hWindow, &u32WinUnloadTime);
    }

    Ret |= HI_MPI_AO_SND_GetXrunCount(HI_UNF_SND_0, &u32AoUnloadTime);
    if (Ret == HI_SUCCESS)
    {
        if (((pAvplay->u32AoUnloadTime != u32AoUnloadTime) || (pAvplay->u32WinUnloadTime != u32WinUnloadTime)
            || (pAvplay->u32ThreadScheTimeOutCnt != u32ThreadScheTimeOutCnt)))
        {

            if ((pAvplay->PreVidBufState == HI_UNF_AVPLAY_BUF_STATE_EMPTY) && (pAvplay->PreAudBufState == HI_UNF_AVPLAY_BUF_STATE_EMPTY))
            {
                return;
            }

        #ifdef HI_MSP_BUILDIN
            Ret = HI_MPI_PMOC_BoostCpuFreq();
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_PMOC_BoostCpuFreq failed 0x%x\n", Ret);
                return;
            }
        #endif

            pAvplay->DebugInfo.CpuFreqScheTimeCnt++;
            pAvplay->u32AoUnloadTime = u32AoUnloadTime;
            pAvplay->u32WinUnloadTime = u32WinUnloadTime;
            pAvplay->u32ThreadScheTimeOutCnt = u32ThreadScheTimeOutCnt;
        }
     }

     return;
}

HI_VOID *AVPLAY_StatThread(HI_VOID *Arg)
{
    AVPLAY_S *pAvplay = (AVPLAY_S*)Arg;

    while (pAvplay->AvplayThreadRun)
    {
        if (pAvplay->bSetEosFlag)
        {
            AVPLAY_ProcEos(pAvplay);
        }

        AVPLAY_ProcVidEvent(pAvplay);

        AVPLAY_ProcAudEvent(pAvplay);

        AVPLAY_ProcSyncEvent(pAvplay);

        AVPLAY_ProcUnloadTime(pAvplay);

        usleep(AVPLAY_SYS_SLEEP_TIME * 1000);
    }

    return HI_NULL;
}

HI_VOID *AVPLAY_DataThread(HI_VOID *Arg)
{
    AVPLAY_S                        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    pAvplay->ThreadID = syscall(__NR_gettid);

    while (pAvplay->AvplayThreadRun)
    {
        HI_SYS_GetTimeStampMs(&pAvplay->DebugInfo.ThreadBeginTime);

        if ((pAvplay->DebugInfo.ThreadBeginTime - pAvplay->DebugInfo.ThreadEndTime > AVPLAY_THREAD_TIMEOUT)
            && (0 != pAvplay->DebugInfo.ThreadEndTime)
            )
        {
            pAvplay->DebugInfo.ThreadScheTimeOutCnt++;
        }

        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);

        pAvplay->AvplayProcContinue = HI_FALSE;

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            AVPLAY_ProcDmxToAdec(pAvplay);
        }

        AVPLAY_ProcAdecToAo(pAvplay);

#ifndef AVPLAY_VID_THREAD
        AVPLAY_ProcVdecToVo(pAvplay);
#endif

        AVPLAY_ProcDmxBuf(pAvplay);

        AVPLAY_ProcCheckBuf(pAvplay);

        AVPLAY_ProcCheckStandBy(pAvplay);

        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);

        HI_SYS_GetTimeStampMs(&pAvplay->DebugInfo.ThreadEndTime);

        if (pAvplay->DebugInfo.ThreadEndTime - pAvplay->DebugInfo.ThreadBeginTime > AVPLAY_THREAD_TIMEOUT)
        {
            pAvplay->DebugInfo.ThreadExeTimeOutCnt++;
        }

        if (pAvplay->AvplayProcContinue)
        {
            continue;
        }

        (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return    HI_NULL ;
}

#ifdef AVPLAY_VID_THREAD
HI_VOID *AVPLAY_VidDataThread(HI_VOID *Arg)
{
    AVPLAY_S                        *pAvplay;

    pAvplay = (AVPLAY_S *)Arg;

    while (pAvplay->AvplayThreadRun)
    {
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);

        pAvplay->AvplayVidProcContinue = HI_FALSE;

        AVPLAY_ProcVdecToVo(pAvplay);

        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);

        if (pAvplay->AvplayVidProcContinue)
        {
            continue;
        }

        (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
    }

    return HI_NULL ;
}
#endif

HI_VOID AVPLAY_ResetProcFlag(AVPLAY_S *pAvplay)
{
    HI_U32 i;

    pAvplay->AvplayProcContinue = HI_FALSE;
    pAvplay->AvplayVidProcContinue = HI_FALSE;

    for (i=0; i<AVPLAY_PROC_BUTT; i++)
    {
        pAvplay->AvplayProcDataFlag[i] = HI_FALSE;
    }

    pAvplay->bSendedFrmToVirWin = HI_FALSE;

    pAvplay->PreVidBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->PreAudBufState = HI_UNF_AVPLAY_BUF_STATE_EMPTY;
    pAvplay->VidDiscard = HI_FALSE;

    pAvplay->bSetEosFlag = HI_FALSE;
    pAvplay->bSetAudEos = HI_FALSE;

    pAvplay->AdecDelayMs = 0;

    pAvplay->u32DispOptimizeFlag = 0;

    if (HI_TRUE == pAvplay->CurBufferEmptyState)
    {
       pAvplay->PreTscnt =0;
       pAvplay->PreAudEsBuf = 0;
       pAvplay->PreAudEsBufWPtr = 0;
       pAvplay->PreVidEsBuf = 0;
       pAvplay->PreVidEsBufWPtr = 0;
       pAvplay->CurBufferEmptyState = HI_FALSE;
    }
    else
    {
       pAvplay->PreTscnt = 0xFFFFFFFF;
       pAvplay->PreAudEsBuf = 0xFFFFFFFF;
       pAvplay->PreAudEsBufWPtr = 0xFFFFFFFF;
       pAvplay->PreVidEsBuf = 0xFFFFFFFF;
       pAvplay->PreVidEsBufWPtr = 0xFFFFFFFF;
    }

    memset(&pAvplay->DebugInfo, 0, sizeof(AVPLAY_DEBUG_INFO_S));
    memset(&pAvplay->LstFrmPack, 0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));

    pAvplay->stIFrame.hport = HI_INVALID_HANDLE;
    memset(&pAvplay->stIFrame.stFrameVideo, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));

    return;
}

HI_S32 AVPLAY_CreateThread(AVPLAY_S *pAvplay)
{
    struct sched_param   SchedParam;
    HI_S32                 Ret = 0;

    (HI_VOID)pthread_attr_init(&pAvplay->AvplayThreadAttr);

    if (THREAD_PRIO_REALTIME == pAvplay->AvplayThreadPrio)
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_FIFO);
        (HI_VOID)pthread_attr_getschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
        SchedParam.sched_priority = 4;
        (HI_VOID)pthread_attr_setschedparam(&pAvplay->AvplayThreadAttr, &SchedParam);
    }
    else
    {
        (HI_VOID)pthread_attr_setschedpolicy(&pAvplay->AvplayThreadAttr, SCHED_OTHER);
    }

    /* create avplay data process thread */
    Ret = pthread_create(&pAvplay->AvplayDataThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_DataThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

#ifdef AVPLAY_VID_THREAD
    /* create avplay data process thread */
    Ret = pthread_create(&pAvplay->AvplayVidDataThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_VidDataThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
        (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }
#endif

    /* create avplay status check thread */
    Ret = pthread_create(&pAvplay->AvplayStatThdInst, &pAvplay->AvplayThreadAttr, AVPLAY_StatThread, pAvplay);
    if (HI_SUCCESS != Ret)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
#ifdef AVPLAY_VID_THREAD
        (HI_VOID)pthread_join(pAvplay->AvplayVidDataThdInst, HI_NULL);
#endif
        (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);
        pthread_attr_destroy(&pAvplay->AvplayThreadAttr);
        return HI_FAILURE;
    }

    return    HI_SUCCESS ;
}

HI_S32 AVPLAY_MallocVdec(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32  Ret;

    Ret = HI_MPI_VDEC_AllocChan(&pAvplay->hVdec, (HI_UNF_AVPLAY_OPEN_OPT_S*)pPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_AllocChan failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 AVPLAY_FreeVdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_VDEC_FreeChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_freeChan failed 0x%x\n", Ret);
        return Ret;
    }

    pAvplay->hVdec = HI_INVALID_HANDLE;

    return Ret;
}

HI_S32 AVPLAY_MallocAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Open(&pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_ADEC_Open failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 AVPLAY_FreeAdec(AVPLAY_S *pAvplay)
{
    HI_S32           Ret;

    Ret = HI_MPI_ADEC_Close(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_ADEC_Close failed 0x%x\n", Ret);
        return Ret;
    }

    pAvplay->hAdec = HI_INVALID_HANDLE;

    return Ret;
}

HI_S32 AVPLAY_MallocDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32                      Ret = 0;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;

    memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_VID;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_CreateChannel failed 0x%x\n", Ret);
        }
    }
    else if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId)
    {
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxAud[0]);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_CreateChannel failed 0x%x\n", Ret);
            return HI_FAILURE;
        }

        pAvplay->DmxAudChnNum = 1;
    }

    return Ret;
}

HI_S32 AVPLAY_FreeDmxChn(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_BUFID_E BufId)
{
    HI_S32              Ret = 0;
    HI_U32              i;

    if ((HI_UNF_AVPLAY_BUF_ID_ES_VID == BufId) && (pAvplay->hDmxVid != HI_INVALID_HANDLE))
    {
        Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_DestroyChannel failed 0x%x\n", Ret);
            return Ret;
        }

        pAvplay->hDmxVid = HI_INVALID_HANDLE;
    }
    else if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == BufId)
    {
        for (i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            if (pAvplay->hDmxAud[i] != HI_INVALID_HANDLE)
            {
                Ret = HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_DestroyChannel failed 0x%x\n", Ret);
                    return Ret;
                }

                pAvplay->hDmxAud[i] = HI_INVALID_HANDLE;
            }
        }

        pAvplay->DmxAudChnNum = 0;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocVidChn(AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32             Ret = 0;
#ifdef HI_TVP_SUPPORT
    VDEC_BUFFER_ATTR_S stVdecBufAttr = {0};
#endif

    Ret = AVPLAY_MallocVdec(pAvplay, pPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc vdec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }

#ifdef HI_TVP_SUPPORT
        stVdecBufAttr.u32BufSize = 0;
        stVdecBufAttr.bTvp = pAvplay->TVPAttr.bEnable;
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->hDmxVid, &stVdecBufAttr);
#else
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
#endif
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
#ifdef HI_TVP_SUPPORT
        /* set vdec to trust video path mode */
        Ret = HI_MPI_VDEC_SetTVP(pAvplay->hVdec, &(pAvplay->TVPAttr));
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_SetTVP ERR, Ret=%#x\n", Ret);
            return Ret;
        }

        stVdecBufAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
        stVdecBufAttr.bTvp = pAvplay->TVPAttr.bEnable;
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, HI_INVALID_HANDLE, &stVdecBufAttr);
#else
        Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
#endif
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
            (HI_VOID)AVPLAY_FreeVdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeVidChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
            return Ret;
        }
    }

    Ret = AVPLAY_FreeVdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_MallocAudChn(AVPLAY_S *pAvplay)
{
    HI_S32             Ret = 0;

    Ret = AVPLAY_MallocAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay malloc adec failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
            (HI_VOID)AVPLAY_FreeAdec(pAvplay);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_FreeAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
            return Ret;
        }
    }

    Ret = AVPLAY_FreeAdec(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Avplay free vdec failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetStreamMode(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    HI_S32    Ret;
#ifdef HI_TVP_SUPPORT
    VDEC_BUFFER_ATTR_S stVdecBufAttr = {0};
#endif

    if (pAvplayAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pAvplayAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pAvplayAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pAvplayAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is enable, can not set stream mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_ChanBufferDeInit(pAvplay->hVdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferDeInit failed.\n");
            return Ret;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx vid chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay free dmx aud chn failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay free pcr chn failed.\n");
            return Ret;
        }

        pAvplay->hDmxPcr = HI_INVALID_HANDLE;
    }

    /* record stream attributes */
    memcpy(&pAvplay->AvplayAttr, pAvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc vid dmx chn failed.\n");
                return Ret;
            }

#ifdef HI_TVP_SUPPORT
            stVdecBufAttr.u32BufSize = 0;
            stVdecBufAttr.bTvp = pAvplay->TVPAttr.bEnable;
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->hDmxVid, &stVdecBufAttr);
#else
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
#endif
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                (HI_VOID)AVPLAY_FreeDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_VID);
                return Ret;
            }
        }
        else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
#ifdef HI_TVP_SUPPORT
            stVdecBufAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
            stVdecBufAttr.bTvp = pAvplay->TVPAttr.bEnable;
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, HI_INVALID_HANDLE, &stVdecBufAttr);
#else
            Ret = HI_MPI_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
#endif
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanBufferInit failed.\n");
                return Ret;
            }
        }
    }

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = AVPLAY_MallocDmxChn(pAvplay, HI_UNF_AVPLAY_BUF_ID_ES_AUD);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Avplay malloc aud dmx chn failed.\n");
                return Ret;
            }
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("Avplay malloc pcr chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetStreamMode(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_S *pAvplayAttr)
{
    memcpy(pAvplayAttr, &pAvplay->AvplayAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetAdecAttr(AVPLAY_S *pAvplay, const HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#if 0
    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
#endif
    AdecAttr.bEnable = HI_FALSE;
    AdecAttr.bEosState = HI_FALSE;
    AdecAttr.u32CodecID = (HI_U32)pAdecAttr->enType;
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize * 2 / 3;
    }
    else
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize;
    }
    AdecAttr.u32OutBufNum = AVPLAY_ADEC_FRAME_NUM;
    AdecAttr.sOpenPram = pAdecAttr->stDecodeParam;

    Ret = HI_MPI_ADEC_SetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_SetAllAttr failed.\n");
        return Ret;
    }

    pAvplay->AdecType = (HI_U32)pAdecAttr->enType;

    return Ret;
}

HI_S32 AVPLAY_GetAdecAttr(const AVPLAY_S *pAvplay, HI_UNF_ACODEC_ATTR_S *pAdecAttr)
{
    ADEC_ATTR_S  AdecAttr;
    HI_S32       Ret;

    memset(&AdecAttr, 0x0, sizeof(ADEC_ATTR_S));

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set adec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAllAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_ADEC_GetAllAttr failed.\n");
    }

    pAdecAttr->enType = (HA_CODEC_ID_E)AdecAttr.u32CodecID;
    pAdecAttr->stDecodeParam = AdecAttr.sOpenPram;

    return Ret;
}

HI_S32 AVPLAY_SetVdecAttr(AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_UNF_VCODEC_ATTR_S  VdecAttr;
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
        return Ret;
    }

    if (pAvplay->VidEnable)
    {
        if (VdecAttr.enType != pVdecAttr->enType)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_UNF_VCODEC_TYPE_VC1 == VdecAttr.enType
         && (VdecAttr.unExtAttr.stVC1Attr.bAdvancedProfile != pVdecAttr->unExtAttr.stVC1Attr.bAdvancedProfile
            || VdecAttr.unExtAttr.stVC1Attr.u32CodecVersion != pVdecAttr->unExtAttr.stVC1Attr.u32CodecVersion))
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vdec type.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    }

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec,pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanAttr failed.\n");
    }

    memcpy(&pAvplay->VdecAttr, pVdecAttr, sizeof(HI_UNF_VCODEC_ATTR_S));

    return Ret;
}

HI_S32 AVPLAY_GetVdecAttr(const AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanAttr failed.\n");
    }

    return Ret;
}

HI_S32 AVPLAY_SetPid(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, const HI_U32 Pid)
{
    HI_S32       Ret;
    HI_U32       i;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->DmxAudChnNum == 1)
        {
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[0], Pid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_SetChannelPID failed 0x%x\n", Ret);
            }

            pAvplay->DmxAudPid[0] = Pid;

            pAvplay->CurDmxAudChn = 0;
        }
        /*multi audio*/
        else
        {
            AVPLAY_Mutex_Lock(&pAvplay->AvplayThreadMutex);

            for (i = 0; i < pAvplay->DmxAudChnNum; i++)
            {
                if (pAvplay->DmxAudPid[i] == Pid)
                {
                    break;
                }
            }

            if (i < pAvplay->DmxAudChnNum)
            {
                /* if the es buf has not been released */
                if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
                {
                    (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                }

                pAvplay->CurDmxAudChn = i;
            }

            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;

            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);

            (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);

            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
                }
            }

            if (HI_NULL != pAvplay->pstAcodecAttr)
            {
                (HI_VOID)AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)(pAvplay->pstAcodecAttr + pAvplay->CurDmxAudChn));
            }

            (HI_VOID)HI_MPI_ADEC_Start(pAvplay->hAdec);

            (HI_VOID)HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);

            AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);

            Ret = HI_SUCCESS;
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is running, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not set vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxVid, Pid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_SetChannelPID failed 0x%x\n", Ret);
        }

        pAvplay->DmxVidPid = Pid;
    }
    else
    {
        if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
        {
            HI_ERR_AVPLAY("AVPLAY is not stopped, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not set pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, Pid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
        }

        pAvplay->DmxPcrPid = Pid;
    }

    return Ret;
}

HI_S32 AVPLAY_GetPid(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_U32 *pPid)
{
    HI_S32       Ret;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts mode.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not get aud pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_GetChannelPID failed 0x%x\n", Ret);
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not get vid pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_GetChannelPID(pAvplay->hDmxVid, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_GetChannelPID failed 0x%x\n", Ret);
        }
    }
    else
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            HI_ERR_AVPLAY("pcr chn is close, can not get pcr pid.\n");
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_DMX_PcrPidGet(pAvplay->hDmxPcr, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidGet failed 0x%x\n", Ret);
        }
    }

    return Ret;
}

HI_S32 AVPLAY_SetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32 Ret;

    Ret = HI_MPI_SYNC_SetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_SetAttr failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 AVPLAY_GetSyncAttr(AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    HI_S32 Ret;

    Ret = HI_MPI_SYNC_GetAttr(pAvplay->hSync, pSyncAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_GetAttr failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 AVPLAY_SetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    if (*pOverflowProc >= HI_UNF_AVPLAY_OVERFLOW_BUTT)
    {
        HI_ERR_AVPLAY("para OverflowProc is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->OverflowProc = *pOverflowProc;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetOverflowProc(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_OVERFLOW_E *pOverflowProc)
{
    *pOverflowProc = pAvplay->OverflowProc;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetLowDelay(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *pstAttr)
{
    HI_S32                  Ret;
    HI_U32                  i;
    HI_UNF_SYNC_ATTR_S      stSyncAttr;
    HI_CODEC_VIDEO_CMD_S    stVdecCmd;
    HI_BOOL                 bProgressive;
    HI_U32                  VirChnNum;
    HI_U32                  SlaveChnNum;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chan is closed!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chan is running!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    VirChnNum = AVPLAY_GetVirtualWinChnNum(pAvplay);
    SlaveChnNum = AVPLAY_GetSlaveWinChnNum(pAvplay);

    if ((HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        && (0 == SlaveChnNum) && (0 == VirChnNum) )
    {
        HI_ERR_AVPLAY("there is now window attached, can not set low delay!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* set window to quickoutput mode */
    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_WIN_SetQuickOutput(pAvplay->MasterFrmChn.hWindow, pstAttr->bEnable);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_WIN_SetQuickOutput ERR, Ret=%#x\n", Ret);
            return Ret;
        }
    }

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
        {
            Ret = HI_MPI_WIN_SetQuickOutput(pAvplay->SlaveFrmChn[i].hWindow, pstAttr->bEnable);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("HI_MPI_WIN_SetQuickOutput ERR, Ret=%#x\n", Ret);
            }
        }
    }

    /* set vdec to lowdelay mode */
    Ret = HI_MPI_VDEC_SetLowDelay(pAvplay->hVdec, pstAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_SetLowDelay ERR, Ret=%#x\n", Ret);
        return Ret;
    }

    memset(&stSyncAttr, 0, sizeof(stSyncAttr));
    if (pstAttr->bEnable)
    {
        /* set sync to none */
        Ret = HI_MPI_SYNC_GetAttr(pAvplay->hSync, &stSyncAttr);
        stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
        Ret |= HI_MPI_SYNC_SetAttr(pAvplay->hSync, &stSyncAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_SYNC_SetAttr ERR, Ret=%#x\n", Ret);
            return Ret;
        }

        bProgressive = HI_TRUE;
        stVdecCmd.u32CmdID = HI_UNF_AVPLAY_SET_PROGRESSIVE_CMD;
        stVdecCmd.pPara = (HI_VOID *)&bProgressive;
        Ret = HI_MPI_VDEC_Invoke(pAvplay->hVdec, &stVdecCmd);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_Invoke ERR, Ret=%#x\n", Ret);
            return Ret;
        }
    }
    else
    {
        /* set sync to audio */
        Ret = HI_MPI_SYNC_GetAttr(pAvplay->hSync, &stSyncAttr);
        stSyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
        Ret |= HI_MPI_SYNC_SetAttr(pAvplay->hSync, &stSyncAttr);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_SYNC_SetAttr ERR, Ret=%#x\n", Ret);
            return Ret;
        }

        bProgressive = HI_FALSE;
        stVdecCmd.u32CmdID = HI_UNF_AVPLAY_SET_PROGRESSIVE_CMD;
        stVdecCmd.pPara = (HI_VOID *)&bProgressive;
        Ret = HI_MPI_VDEC_Invoke(pAvplay->hVdec, &stVdecCmd);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_VDEC_Invoke ERR, Ret=%#x\n", Ret);
            return Ret;
        }
    }

    pAvplay->LowDelayAttr = *pstAttr;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetLowDelay(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *pstAttr)
{
    *pstAttr = pAvplay->LowDelayAttr;

    return HI_SUCCESS;
}


HI_S32 AVPLAY_RelSpecialFrame(AVPLAY_S *pAvplay, HI_HANDLE hWin)
{
    HI_U32                              i;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;
    HI_S32                              Ret;

    for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);
        if (hWindow == hWin)
        {
            Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
            if (HI_SUCCESS != Ret)
            {
                (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_RelAllVirChnFrame(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
    {
        (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

        for (j = 0; j < AVPLAY_MAX_VIR_FRMCHAN; j++)
        {
            if (hWindow == pAvplay->VirFrmChn[j].hWindow)
            {
                Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                if (HI_SUCCESS != Ret)
                {
                    (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                }
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_RelAllChnFrame(AVPLAY_S *pAvplay)
{
    HI_S32                              Ret;
    HI_U32                              i, j;
    HI_HANDLE                           hWindow = HI_INVALID_HANDLE;

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        AVPLAY_RelAllVirChnFrame(pAvplay);
    }
    else
    {
        for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

             /* may be CurFrmPack has not master frame */
             if (hWindow == pAvplay->MasterFrmChn.hWindow)
             {
                 Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                 if (HI_SUCCESS != Ret)
                 {
                    (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                 }
                 break;
             }
        }

        for (i=0; i<pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, pAvplay->CurFrmPack.stFrame[i].hport, &hWindow);

            for (j = 0; j < AVPLAY_MAX_SLAVE_FRMCHAN; j++)
            {
                if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
                {
                     Ret = HI_MPI_WIN_QueueUselessFrame(hWindow, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                     if (HI_SUCCESS != Ret)
                     {
                        (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &pAvplay->CurFrmPack.stFrame[i].stFrameVideo);
                     }
                }
            }
        }

        memset(&pAvplay->LstFrmPack, 0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartVidChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_Start failed 0x%x\n", Ret);
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel failed 0x%x\n", Ret);
            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
            return Ret;
        }
    }

    Ret = HI_MPI_VDEC_ChanStart(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_ChanStart failed 0x%x\n", Ret);

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            (HI_VOID)HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
        }

        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);

        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_ResetWindow(const AVPLAY_S *pAvplay, HI_DRV_WIN_SWITCH_E SwitchType)
{
    HI_U32                  i;
    HI_DRV_WIN_INFO_S       stWinInfo;

    memset(&stWinInfo, 0, sizeof(HI_DRV_WIN_INFO_S));

    if (HI_INVALID_HANDLE != pAvplay->hSharedOrgWin)
    {
        (HI_VOID)HI_MPI_WIN_GetInfo(pAvplay->hSharedOrgWin, &stWinInfo);

        (HI_VOID)HI_MPI_WIN_Reset(pAvplay->hSharedOrgWin, SwitchType);
    }
    else
    {
        stWinInfo.hPrim = HI_INVALID_HANDLE;
        stWinInfo.hSec = HI_INVALID_HANDLE;
    }

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        if (pAvplay->MasterFrmChn.hWindow != stWinInfo.hPrim)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->MasterFrmChn.hWindow, SwitchType);
        }
    }

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
        {
            if (pAvplay->SlaveFrmChn[i].hWindow != stWinInfo.hSec)
            {
                (HI_VOID)HI_MPI_WIN_Reset(pAvplay->SlaveFrmChn[i].hWindow, SwitchType);
            }
        }
    }

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
        {
            (HI_VOID)HI_MPI_WIN_Reset(pAvplay->VirFrmChn[i].hWindow, SwitchType);
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopVidChn(const AVPLAY_S *pAvplay, HI_UNF_AVPLAY_STOP_MODE_E enMode)
{
    HI_S32                  Ret;
    HI_DRV_WIN_SWITCH_E     SwitchType = HI_DRV_WIN_SWITCH_BUTT;

    Ret = HI_MPI_VDEC_ChanStop(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_ChanStop failed 0x%x\n", Ret);
        return Ret;
    }

    Ret = HI_MPI_VDEC_ResetChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_ResetChan failed 0x%x\n", Ret);
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed 0x%x\n", Ret);
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STOP_MODE_STILL == enMode)
    {
        SwitchType = HI_DRV_WIN_SWITCH_LAST;
    }
    else
    {
        SwitchType = HI_DRV_WIN_SWITCH_BLACK;
    }

    Ret = AVPLAY_ResetWindow(pAvplay, SwitchType);

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_Stop failed 0x%x\n", Ret);
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StartAudChn(AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i, j;

    Ret = HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_Start Aud failed 0x%x\n", Ret);
        return Ret;
    }

    Ret = HI_MPI_ADEC_Start(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_ADEC_Start failed 0x%x\n", Ret);
        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;
    }

    /* get the string of adec type */
    (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_HaSzNameInfo, &(pAvplay->AdecNameInfo));

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
            Ret |= HI_MPI_AO_Track_Start(pAvplay->hTrack[i]);
            if(HI_SUCCESS != Ret)
            {
                break;
            }
        }
    }

    if (i < pAvplay->TrackNum)
    {
        for (j = 0; j < i; j++)
        {
            (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[j]);
        }

        HI_ERR_AVPLAY("call HI_MPI_AO_Track_Start failed.\n");

        (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);

        (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for (i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxAud[i]);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel failed 0x%x\n", Ret);
                break;
            }
        }

        if (i < pAvplay->DmxAudChnNum)
        {
            for (j = 0; j < i; j++)
            {
                (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
            }

            for (i = 0; i < pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
                }
            }

            (HI_VOID)HI_MPI_ADEC_Stop(pAvplay->hAdec);

            (HI_VOID)HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_StopAudChn(const AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
    HI_U32         i;

    Ret = HI_MPI_ADEC_Stop(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_ADEC_Stop failed 0x%x\n", Ret);
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        for (i = 0; i < pAvplay->DmxAudChnNum; i++)
        {
            Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[i]);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed 0x%x\n", Ret);
                return Ret;
            }
        }
    }

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
        {
            Ret = HI_MPI_AO_Track_Stop(pAvplay->hTrack[i]);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_AO_Track_Stop failed 0x%x\n", Ret);
                return Ret;
            }

           //(HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
        }
    }

    Ret = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_Stop failed 0x%x\n", Ret);
        return Ret;
    }

    return HI_SUCCESS;
}

HI_VOID AVPLAY_PrePlay(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_PREPLAY)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PREPLAY;
    }

    return;
}

HI_VOID AVPLAY_Play(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_PLAY)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PLAY;
    }

    return;
}

HI_VOID AVPLAY_Stop(AVPLAY_S *pAvplay)
{
    if (pAvplay->CurStatus != HI_UNF_AVPLAY_STATUS_STOP)
    {
        pAvplay->LstStatus = pAvplay->CurStatus;
        pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
    }

    /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
    if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        /*Release vpss frame*/
        (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }

    AVPLAY_ResetProcFlag(pAvplay);
    return;
}

HI_VOID AVPLAY_Pause(AVPLAY_S *pAvplay)
{
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_PAUSE;

    return;
}

HI_VOID AVPLAY_Tplay(AVPLAY_S *pAvplay)
{
    pAvplay->LstStatus = pAvplay->CurStatus;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_TPLAY;

    return;
}

HI_S32 AVPLAY_ResetAudChn(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_Seek(AVPLAY_S *pAvplay, HI_U32 u32SeekPts)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 i = 0;
    HI_UNF_SYNC_STATUS_S SyncStatus;
    HI_U32 u32FindObjectPts = u32SeekPts;  //u32FindObjectPts  as  input param and output param

    HI_INFO_AVPLAY("seekpts is %d\n", u32SeekPts);

    if (pAvplay->AudEnable)
    {
        Ret = HI_MPI_SYNC_GetStatus(pAvplay->hSync, &SyncStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_GetStatus failed.\n");
            return HI_FAILURE;
        }
        else
        {
            if (u32SeekPts < SyncStatus.u32LastAudPts)
            {
                HI_INFO_AVPLAY("find pts in ao buf ok quit\n");
                return HI_SUCCESS;
            }
        }
    }

    //1. pause vid, aud only 800ms, don't need pause
    Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed, Ret=0x%x.\n", Ret);
        return HI_FAILURE;
    }

    //2. discard stream
    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_ChanDropStream(pAvplay->hVdec, &u32FindObjectPts, AVPLAY_VDEC_SEEKPTS_THRESHOLD);
        if (Ret != HI_SUCCESS)
        {
            HI_INFO_AVPLAY("call HI_MPI_VDEC_ChanDropStream NO FIND SEEKPTS. \n");
            HI_INFO_AVPLAY("return vid pts is %d\n", u32FindObjectPts);
            return HI_FAILURE;
        }
        else
        {
            HI_INFO_AVPLAY("call HI_MPI_VDEC_ChanDropStream FIND SEEKPTS OK.\n");
            HI_INFO_AVPLAY("return vid pts is %d\n", u32FindObjectPts);

            (HI_VOID)AVPLAY_ResetWindow(pAvplay, HI_DRV_WIN_SWITCH_LAST);

            HI_INFO_AVPLAY("reset window\n");

            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
            {
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
            }
        }
    }

    if (pAvplay->AudEnable)
    {
        u32SeekPts = (u32FindObjectPts > u32SeekPts) ? u32FindObjectPts : u32SeekPts;
        Ret = HI_MPI_ADEC_DropStream(pAvplay->hAdec, u32SeekPts);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("no find aud pts quit\n");
            return HI_FAILURE;
        }
        else
        {
            HI_INFO_AVPLAY("find aud pts ok\n");
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    (HI_VOID)HI_MPI_AO_Track_Flush(pAvplay->hTrack[i]);
                }
            }
            HI_INFO_AVPLAY("reset ao\n");

            HI_INFO_AVPLAY("set AVPLAY_PROC_ADEC_AO false\n");

            if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
            {
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            }
        }
    }

    if ((pAvplay->AudEnable) && (pAvplay->VidEnable))
    {
        Ret  = HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
        Ret |= HI_MPI_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
        Ret |= HI_MPI_SYNC_Seek(pAvplay->hSync, u32SeekPts);
        Ret |= HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
        Ret |= HI_MPI_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    }

    Ret |= HI_MPI_SYNC_Play(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed, Ret=0x%x.\n", Ret);
    }

    return Ret;
}

HI_S32 AVPLAY_Reset(AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StopVidChn(pAvplay, HI_UNF_AVPLAY_STOP_MODE_STILL);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop vid chn failed.\n");
            return Ret;
        }

        /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
        if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
        {
            /*Release vpss frame*/
            (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        }
    }

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StopAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("stop aud chn failed.\n");
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, DEMUX_INVALID_PID);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
            return Ret;
        }
    }

    if (pAvplay->VidEnable)
    {
        Ret = AVPLAY_StartVidChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start vid chn failed.\n");
            return Ret;
        }
    }

    if (pAvplay->AudEnable)
    {
        Ret = AVPLAY_StartAudChn(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("start aud chn failed.\n");
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        Ret = HI_MPI_SYNC_Tplay(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        /*Current status change to Last status while call Reset after EOS, scene: free TS->scramble TS->free TS*/
        pAvplay->CurStatus = pAvplay->LstStatus;

        if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->LstStatus)
        {
            Ret = HI_MPI_SYNC_Tplay(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
            }
        }
        else
        {
            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play failed.\n");
            }
        }
    }
    else
    {
        Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed.\n");
        }
    }

    AVPLAY_ResetProcFlag(pAvplay);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    HI_S32                      Ret;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;
    HI_U32                      i, j;

    if(HI_NULL == pAttr || HI_NULL == pAttr->pu32AudPid || HI_NULL == pAttr->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("multi aud attr is null!\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if(pAttr->u32PidNum > AVPLAY_MAX_DMX_AUD_CHAN_NUM)
    {
        HI_ERR_AVPLAY("pidnum is too large\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is running, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close, can not set aud pid.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
    DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
    DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
    DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize / 3;

    /* destroy the old resource */
    for (i = 1; i < pAvplay->DmxAudChnNum; i++)
    {
        (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[i]);
    }

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }

    /* create new resource */
    for (i = 1; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &(pAvplay->hDmxAud[i]));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_CreateChannel failed 0x%x\n", Ret);
            break;
        }
    }

    if(i != pAttr->u32PidNum)
    {
        for(j = 1; j < i; j++)
        {
            (HI_VOID)HI_MPI_DMX_DestroyChannel(pAvplay->hDmxAud[j]);
        }

        return HI_FAILURE;
    }

    for(i = 0; i < pAttr->u32PidNum; i++)
    {
        Ret = HI_MPI_DMX_SetChannelPID(pAvplay->hDmxAud[i], *(pAttr->pu32AudPid + i));
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_SetChannelPID failed 0x%x\n", Ret);
            return Ret;
        }
        else
        {
            pAvplay->DmxAudPid[i] = *(pAttr->pu32AudPid + i);
        }
    }

    pAvplay->DmxAudChnNum = pAttr->u32PidNum;

    pAvplay->pstAcodecAttr = (HI_UNF_ACODEC_ATTR_S *)HI_MALLOC(HI_ID_AVPLAY, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);
    if (HI_NULL == pAvplay->pstAcodecAttr)
    {
        HI_ERR_AVPLAY("malloc pstAcodecAttr error.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memcpy(pAvplay->pstAcodecAttr, pAttr->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S)*pAttr->u32PidNum);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetMultiAud(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_MULTIAUD_ATTR_S *pAttr)
{
    if (!pAttr || !pAttr->pu32AudPid || !pAttr->pstAcodecAttr || (pAttr->u32PidNum <= 1))
    {
        HI_ERR_AVPLAY("ERR: invalid para\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    /* only get the real pid num */
    if (pAttr->u32PidNum > pAvplay->DmxAudChnNum)
    {
        pAttr->u32PidNum = pAvplay->DmxAudChnNum;
    }

    memcpy(pAttr->pu32AudPid, pAvplay->DmxAudPid, sizeof(HI_U32) * pAttr->u32PidNum);

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        memcpy(pAttr->pstAcodecAttr, pAvplay->pstAcodecAttr, sizeof(HI_UNF_ACODEC_ATTR_S) * pAttr->u32PidNum);
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetEosFlag(AVPLAY_S *pAvplay)
{
    HI_S32          Ret;

    if (!pAvplay->AudEnable && !pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("ERR: vid and aud both disable, can not set eos!\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->AudEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxAud[pAvplay->CurDmxAudChn]);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_ADEC_SetEosFlag(pAvplay->hAdec);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_ADEC_SetEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if (HI_INVALID_HANDLE != pAvplay->hSyncTrack)
            {
                Ret = HI_MPI_AO_Track_SetEosFlag(pAvplay->hSyncTrack, HI_TRUE);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_SetEosFlag, Ret = %#x! \n", Ret);
                    return HI_ERR_AVPLAY_INVALID_OPT;
                }
            }
        }
    }

    if (pAvplay->VidEnable)
    {
        Ret = HI_MPI_VDEC_SetEosFlag(pAvplay->hVdec);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_SetEosFlag, Ret = %#x! \n", Ret);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_SetChannelEosFlag(pAvplay->hDmxVid);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: HI_MPI_DMX_SetChannelEosFlag, Ret = %#x! \n", Ret);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }
        }
    }

    pAvplay->bSetEosFlag = HI_TRUE;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetPortAttr(AVPLAY_S *pAvplay, HI_HANDLE hPort, VDEC_PORT_TYPE_E enType)
{
    HI_S32                      Ret;

    Ret = HI_MPI_VDEC_SetPortType(pAvplay->hVdec, hPort, enType);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_SetPortType, Ret=%#x.\n", Ret);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_EnablePort(pAvplay->hVdec, hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_EnablePort, Ret=%#x.\n", Ret);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    return HI_SUCCESS;
}


HI_S32 AVPLAY_CreatePort(AVPLAY_S *pAvplay, HI_HANDLE hWin, VDEC_PORT_ABILITY_E enAbility, HI_HANDLE *phPort)
{
    HI_S32                      Ret;
    VDEC_PORT_PARAM_S           stPortPara;
    HI_DRV_WIN_SRC_INFO_S       stSrcInfo;

    memset(&stSrcInfo, 0x0, sizeof(HI_DRV_WIN_SRC_INFO_S));

    Ret = HI_MPI_VDEC_CreatePort(pAvplay->hVdec, phPort, enAbility);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_CreatePort.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetPortParam(pAvplay->hVdec, *phPort, &stPortPara);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_GetPortParam.\n");
        (HI_VOID)HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, *phPort);
        *phPort = HI_INVALID_HANDLE;
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    stSrcInfo.hSrc = *phPort;
    stSrcInfo.pfAcqFrame = (PFN_GET_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfRlsFrame = (PFN_PUT_FRAME_CALLBACK)stPortPara.pfVORlsFrame;
    stSrcInfo.pfSendWinInfo = (PFN_GET_WIN_INFO_CALLBACK)stPortPara.pfVOSendWinInfo;

    Ret = HI_MPI_WIN_SetSource(hWin, &stSrcInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_SetSource.\n");
        (HI_VOID)HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, *phPort);
        *phPort = HI_INVALID_HANDLE;
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_DestroyPort(AVPLAY_S *pAvplay, HI_HANDLE hWin, HI_HANDLE hPort)
{
    HI_S32                      Ret = HI_SUCCESS;
    HI_DRV_WIN_SRC_INFO_S       stSrcInfo;

    memset(&stSrcInfo, 0x0, sizeof(HI_DRV_WIN_SRC_INFO_S));

    stSrcInfo.hSrc = HI_INVALID_HANDLE;
    stSrcInfo.pfAcqFrame = (PFN_GET_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfRlsFrame = (PFN_PUT_FRAME_CALLBACK)HI_NULL;
    stSrcInfo.pfSendWinInfo = (PFN_GET_WIN_INFO_CALLBACK)HI_NULL;

    Ret = HI_MPI_WIN_SetSource(hWin, &stSrcInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_SetSource.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, hPort);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VDEC_DestroyPort.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    return Ret;
}

HI_S32 AVPLAY_AttachWindow(AVPLAY_S *pAvplay, HI_HANDLE hWin)
{
    HI_DRV_WIN_INFO_S           stWinInfo;
    HI_U32                      i;
    HI_U32                      Index;
    HI_S32                      Ret;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    /*free frame which avplay hold*/
    if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->CurFrmPack.stFrame[i].hport)
            {
                (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &(pAvplay->CurFrmPack.stFrame[i].stFrameVideo));
            }
        }

        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }

    Ret = HI_MPI_WIN_GetInfo(hWin, &stWinInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_WIN_GetPrivnfo.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    /* homologous window*/
    if (HI_DRV_WIN_ACTIVE_MAIN_AND_SLAVE == stWinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow == stWinInfo.hPrim)
        {
            HI_ERR_AVPLAY("this window is already attached.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_SUCCESS;
        }

        /* if attach homologous window, homologous window must be master window*/
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("avplay can only attach one master handle.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_CreatePort(pAvplay, stWinInfo.hPrim, VDEC_PORT_HD, &(pAvplay->MasterFrmChn.hPort));
        if(HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return Ret;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return Ret;
        }

#if !defined(CHIP_TYPE_hi3716mv410) && !defined(CHIP_TYPE_hi3716mv420)

        Index = AVPLAY_MAX_SLAVE_FRMCHAN;

        for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
        {
            if (AVPLAY_MAX_SLAVE_FRMCHAN == Index)
            {
                if (HI_INVALID_HANDLE == pAvplay->SlaveFrmChn[i].hWindow)
                {
                    Index = i;
                }
            }

            if (pAvplay->SlaveFrmChn[i].hWindow == hWin)
            {
                HI_ERR_AVPLAY("this window is already attached!\n");
            #ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
            #else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
            #endif
                return HI_SUCCESS;
            }
        }

        if (Index >= AVPLAY_MAX_SLAVE_FRMCHAN)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
            HI_ERR_AVPLAY("avplay has attached max slave window.\n");
        #ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
        #else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
        #endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_CreatePort(pAvplay, stWinInfo.hSec, VDEC_PORT_SD, &(pAvplay->SlaveFrmChn[Index].hPort));
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return Ret;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->SlaveFrmChn[Index].hPort,VDEC_PORT_TYPE_SLAVE);
        if(HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hPrim, pAvplay->MasterFrmChn.hPort);
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, stWinInfo.hSec, pAvplay->SlaveFrmChn[Index].hPort);
            pAvplay->SlaveFrmChn[Index].hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return Ret;
        }

        pAvplay->SlaveFrmChn[Index].hWindow = stWinInfo.hSec;

#endif
        pAvplay->MasterFrmChn.hWindow = stWinInfo.hPrim;
        pAvplay->hSharedOrgWin = hWin;
    }
    /*  analogous master window*/
    else if (HI_DRV_WIN_ACTIVE_SINGLE == stWinInfo.eType)
    {
        if (hWin == pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("this window is alreay attached!\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_SUCCESS;
        }

        if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        {
            Ret = AVPLAY_CreatePort(pAvplay, hWin, VDEC_PORT_HD, &(pAvplay->MasterFrmChn.hPort));
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return Ret;
            }

            Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
            if(HI_SUCCESS != Ret)
            {
                (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWin, pAvplay->MasterFrmChn.hPort);
                pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return Ret;
            }

            pAvplay->MasterFrmChn.hWindow = hWin;
        }
        else
        {
            //another master window, save it as slave window , for example: ktv scene
            Index = AVPLAY_MAX_SLAVE_FRMCHAN;

            for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
            {
                if (AVPLAY_MAX_SLAVE_FRMCHAN == Index)
                {
                    if (HI_INVALID_HANDLE == pAvplay->SlaveFrmChn[i].hWindow)
                    {
                        Index = i;
                    }
                }

                if (pAvplay->SlaveFrmChn[i].hWindow == hWin)
                {
                    HI_ERR_AVPLAY("this window is already attached!\n");
                #ifdef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
                #else
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                #endif
                    return HI_SUCCESS;
                }
            }

            if (Index >= AVPLAY_MAX_SLAVE_FRMCHAN)
            {
                HI_ERR_AVPLAY("avplay has attached max slave window.\n");
            #ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
            #else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
            #endif
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            Ret = AVPLAY_CreatePort(pAvplay, hWin, VDEC_PORT_SD, &(pAvplay->SlaveFrmChn[Index].hPort));
            if(HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return Ret;
            }

            Ret = AVPLAY_SetPortAttr(pAvplay,pAvplay->SlaveFrmChn[Index].hPort,VDEC_PORT_TYPE_SLAVE);
            if(HI_SUCCESS != Ret)
            {
                (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWin, pAvplay->SlaveFrmChn[Index].hPort);
                pAvplay->SlaveFrmChn[Index].hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return Ret;
            }

            pAvplay->SlaveFrmChn[Index].hWindow = hWin;
        }
    }
    /*  analogous virtual window*/
    else
    {
        HI_U32 Index = AVPLAY_MAX_VIR_FRMCHAN;

        for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
        {
            if (AVPLAY_MAX_VIR_FRMCHAN == Index)
            {
                if (HI_INVALID_HANDLE == pAvplay->VirFrmChn[i].hWindow)
                {
                    Index = i;
                }
            }

            if (pAvplay->VirFrmChn[i].hWindow == hWin)
            {
                HI_ERR_AVPLAY("this window is already attached!\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return HI_SUCCESS;
            }
        }

        if (Index >= AVPLAY_MAX_VIR_FRMCHAN)
        {
            HI_ERR_AVPLAY("the avplay has attached max window!\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_CreatePort(pAvplay, hWin, VDEC_PORT_STR, &pAvplay->VirFrmChn[Index].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_SetPortAttr(pAvplay, pAvplay->VirFrmChn[Index].hPort, VDEC_PORT_TYPE_VIRTUAL);
        if (HI_SUCCESS != Ret)
        {
            (HI_VOID)AVPLAY_DestroyPort(pAvplay, hWin, pAvplay->VirFrmChn[Index].hPort);
            pAvplay->VirFrmChn[Index].hPort = HI_INVALID_HANDLE;

#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return Ret;
        }

        pAvplay->VirFrmChn[Index].hWindow = hWin;
    }

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif

    return HI_SUCCESS;
}

HI_S32 AVPLAY_DetachWindow(AVPLAY_S *pAvplay, HI_HANDLE hWin)
{
    HI_DRV_WIN_INFO_S       WinInfo;
    HI_U32                  i;
    HI_S32                  Ret;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    /*free frame which avplay hold*/
    if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        for (i = 0; i < pAvplay->CurFrmPack.u32FrmNum; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->CurFrmPack.stFrame[i].hport)
            {
                (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->CurFrmPack.stFrame[i].hport, &(pAvplay->CurFrmPack.stFrame[i].stFrameVideo));
            }
        }

        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
    }

    Ret = HI_MPI_WIN_GetInfo(hWin, &WinInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_VO_GetWindowInfo.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* homologous window*/ /* CNcomment: 同源窗口 */
    if (HI_DRV_WIN_ACTIVE_MAIN_AND_SLAVE == WinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow != WinInfo.hPrim)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

#if !defined(CHIP_TYPE_hi3716mv410) && !defined(CHIP_TYPE_hi3716mv420)
        for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
        {
            if (pAvplay->SlaveFrmChn[i].hWindow == WinInfo.hSec)
            {
                break;
            }
        }

        if (i >= AVPLAY_MAX_SLAVE_FRMCHAN)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_DestroyPort(pAvplay, pAvplay->MasterFrmChn.hWindow, pAvplay->MasterFrmChn.hPort);
        Ret |= AVPLAY_DestroyPort(pAvplay, pAvplay->SlaveFrmChn[i].hWindow, pAvplay->SlaveFrmChn[i].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;
        pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

        pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
        pAvplay->SlaveFrmChn[i].hPort = HI_INVALID_HANDLE;

        //look up another master window
        for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
        {
            if (HI_INVALID_HANDLE == pAvplay->SlaveFrmChn[i].hWindow)
            {
                continue;
            }

            Ret = HI_MPI_WIN_GetInfo(pAvplay->SlaveFrmChn[i].hWindow, &WinInfo);
            if ((HI_SUCCESS == Ret) && (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType))
            {
                pAvplay->MasterFrmChn.hWindow   = pAvplay->SlaveFrmChn[i].hWindow;
                pAvplay->MasterFrmChn.hPort     = pAvplay->SlaveFrmChn[i].hPort;

                Ret = AVPLAY_SetPortAttr(pAvplay, pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("ERR: set main port failed.\n");
                }

                pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
                pAvplay->SlaveFrmChn[i].hPort   = HI_INVALID_HANDLE;

                break;
            }
        }
#else
        Ret = AVPLAY_DestroyPort(pAvplay, pAvplay->MasterFrmChn.hWindow, pAvplay->MasterFrmChn.hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;
        pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
#endif
        pAvplay->hSharedOrgWin = HI_INVALID_HANDLE;
    }
    /*  analogous master window*/ /* CNcomment: 非同源 主窗口及从窗口 */
    else if (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType)
    {
        if (pAvplay->MasterFrmChn.hWindow == hWin)
        {
            Ret = AVPLAY_DestroyPort(pAvplay, pAvplay->MasterFrmChn.hWindow, pAvplay->MasterFrmChn.hPort);
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            pAvplay->MasterFrmChn.hWindow = HI_INVALID_HANDLE;
            pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;

            //look up another master window
            for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
            {
                if (HI_INVALID_HANDLE == pAvplay->SlaveFrmChn[i].hWindow)
                {
                    continue;
                }

                Ret = HI_MPI_WIN_GetInfo(pAvplay->SlaveFrmChn[i].hWindow, &WinInfo);
                if ((HI_SUCCESS == Ret) && (HI_DRV_WIN_ACTIVE_SINGLE == WinInfo.eType))
                {
                    pAvplay->MasterFrmChn.hWindow   = pAvplay->SlaveFrmChn[i].hWindow;
                    pAvplay->MasterFrmChn.hPort     = pAvplay->SlaveFrmChn[i].hPort;

                    Ret = AVPLAY_SetPortAttr(pAvplay, pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
                    if (HI_SUCCESS != Ret)
                    {
                        HI_ERR_AVPLAY("ERR: set main port failed.\n");
                    }

                    pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
                    pAvplay->SlaveFrmChn[i].hPort   = HI_INVALID_HANDLE;

                    break;
                }
            }
        }
        else
        {
            //look up another master window
            for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
            {
                if (pAvplay->SlaveFrmChn[i].hWindow == hWin)
                {
                    break;
                }
            }

            if (i >= AVPLAY_MAX_SLAVE_FRMCHAN)
            {
                HI_ERR_AVPLAY("ERR: this is not a attached master window.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            /*FATAL: after AVPLAY_DettachWinRelFrame, but AVPLAY_DestroyPort Failed*/
            Ret = AVPLAY_DestroyPort(pAvplay, hWin, pAvplay->SlaveFrmChn[i].hPort);
            if (HI_SUCCESS != Ret)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
            pAvplay->SlaveFrmChn[i].hPort = HI_INVALID_HANDLE;
        }
    }
    /* analogous virtual window*/ /* CNcomment 非同源 虚拟窗口*/
    else
    {
        for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
        {
            if (pAvplay->VirFrmChn[i].hWindow == hWin)
            {
                break;
            }
        }

        if (i >= AVPLAY_MAX_VIR_FRMCHAN)
        {
            HI_ERR_AVPLAY("ERR: this is not a attached master window.\n");
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = AVPLAY_DestroyPort(pAvplay, hWin, pAvplay->VirFrmChn[i].hPort);
        if (HI_SUCCESS != Ret)
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->VirFrmChn[i].hWindow   = HI_INVALID_HANDLE;
        pAvplay->VirFrmChn[i].hPort     = HI_INVALID_HANDLE;
    }

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif

    return HI_SUCCESS;
}

#ifdef HI_TVP_SUPPORT
HI_S32 AVPLAY_SetTVP(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_TVP_ATTR_S *pstAttr)
{
    HI_S32                  Ret;
    HI_HANDLE               hWindow;
    HI_UNF_VCODEC_ATTR_S    stVcodecAttr = {0};

    if (pAvplay->TVPAttr.bEnable == pstAttr->bEnable)
    {
        return HI_SUCCESS;
    }

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        pAvplay->TVPAttr = *pstAttr;
        return HI_SUCCESS;
    }

    if (pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("vid chn is enable, can not set trusted video path.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_ES != pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("do not support ts mode\n");
        return HI_FAILURE;
    }

    Ret = AVPLAY_GetVdecAttr(pAvplay, &stVcodecAttr);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    hWindow = pAvplay->MasterFrmChn.hWindow;

    HI_MPI_WIN_SetEnable(hWindow, HI_FALSE);

    Ret = AVPLAY_DetachWindow(pAvplay, hWindow);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    Ret = AVPLAY_FreeVidChn(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    pAvplay->TVPAttr.bEnable = pstAttr->bEnable;

    Ret = AVPLAY_MallocVidChn(pAvplay, HI_NULL);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    Ret = AVPLAY_SetVdecAttr(pAvplay, &stVcodecAttr);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    Ret = AVPLAY_AttachWindow(pAvplay, hWindow);
    if (Ret != HI_SUCCESS)
    {
        return Ret;
    }

    Ret = HI_MPI_WIN_SetEnable(hWindow, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_WIN_SetEnable failed 0x%x\n", Ret);
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetTVP(AVPLAY_S *pAvplay, HI_UNF_AVPLAY_TVP_ATTR_S *pstAttr)
{
    *pstAttr = pAvplay->TVPAttr;

    return HI_SUCCESS;
}
#endif

static HI_S32 AVPLAY_ProcRead(HI_PROC_SHOW_BUFFER_S *ProcBuf, HI_VOID *Data)
{
    AVPLAY_S           *pAvplay;
    HI_CHAR            *StreamType;
    HI_CHAR            *CurStatus;
    HI_CHAR            *Overflow;
    HI_CHAR            *VidType;
    HI_CHAR            *DecMode;
    HI_U32              Id = (HI_U32)Data;
    HI_U32              i;
    HI_CHAR             szFrcInRate[16]   = {0};
    HI_CHAR             szFrcOutRate[16]  = {0};
    HI_CHAR             szTplaySpeed[16]  = {0};
    HI_CHAR             szSyncID[16]      = {0};
    HI_CHAR             szDemuxID[16]     = {0};

    AVPLAY_INST_LOCK(Id);

    pAvplay = g_Avplay[Id].Avplay;
    if (HI_NULL == pAvplay)
    {
        AVPLAY_INST_UNLOCK(Id);

        return -1;
    }

    snprintf(szFrcInRate, sizeof(szFrcInRate), "%d.%d",
        pAvplay->FrcParamCfg.u32InRate/100, pAvplay->FrcParamCfg.u32InRate%100);

    snprintf(szFrcOutRate, sizeof(szFrcOutRate), "%d.%d",
        pAvplay->FrcParamCfg.u32OutRate/100, pAvplay->FrcParamCfg.u32OutRate%100);

    snprintf(szTplaySpeed, sizeof(szTplaySpeed), "%d.%d",
        pAvplay->FrcParamCfg.u32PlayRate/256, pAvplay->FrcParamCfg.u32PlayRate % 256 * 100 / 256);

    snprintf(szSyncID, sizeof(szSyncID), "sync%02d", pAvplay->hSync & 0xff);

    if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        snprintf(szDemuxID, sizeof(szDemuxID), "INVALID");
    }
    else
    {
        snprintf(szDemuxID, sizeof(szDemuxID), "%d", pAvplay->AvplayAttr.u32DemuxId);
    }

    switch (pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        case HI_UNF_AVPLAY_STREAM_TYPE_TS :
            StreamType = "TS";
            break;
        case HI_UNF_AVPLAY_STREAM_TYPE_ES :
            StreamType = "ES";
            break;
        default :
            StreamType = "UNKNOWN";
            break;
    }

    switch (pAvplay->CurStatus)
    {
        case HI_UNF_AVPLAY_STATUS_STOP :
            CurStatus = "STOP";
            break;
        case HI_UNF_AVPLAY_STATUS_PREPLAY :
            CurStatus = "PREPLAY";
            break;
        case HI_UNF_AVPLAY_STATUS_PLAY :
            CurStatus = "PLAY";
            break;
        case HI_UNF_AVPLAY_STATUS_TPLAY :
            CurStatus = "TPLAY";
            break;
        case HI_UNF_AVPLAY_STATUS_PAUSE :
            CurStatus = "PAUSE";
            break;
        case HI_UNF_AVPLAY_STATUS_EOS :
            CurStatus = "EOS";
            break;
        case HI_UNF_AVPLAY_STATUS_SEEK :
            CurStatus = "SEEK";
            break;
        default:
            CurStatus = "UNKNOWN";
            break;
    }

    switch (pAvplay->OverflowProc)
    {
        case HI_UNF_AVPLAY_OVERFLOW_RESET :
            Overflow = "RESET";
            break;
        case HI_UNF_AVPLAY_OVERFLOW_DISCARD :
            Overflow = "DISCARD";
            break;
        default:
            Overflow = "UNKNOWN";
            break;
    }

    switch (pAvplay->VdecAttr.enType)
    {
        case HI_UNF_VCODEC_TYPE_MPEG2 :
            VidType = "MPEG2";
            break;
        case HI_UNF_VCODEC_TYPE_MPEG4 :
            VidType = "MPEG4";
            break;
        case HI_UNF_VCODEC_TYPE_AVS :
            VidType = "AVS";
            break;
        case HI_UNF_VCODEC_TYPE_H263 :
            VidType = "H263";
            break;
        case HI_UNF_VCODEC_TYPE_H264 :
            VidType = "H264";
            break;
        case HI_UNF_VCODEC_TYPE_REAL8 :
            VidType = "REAL8";
            break;
        case HI_UNF_VCODEC_TYPE_REAL9 :
            VidType = "REAL9";
            break;
        case HI_UNF_VCODEC_TYPE_VC1 :
            VidType = "VC1";
            break;
        case HI_UNF_VCODEC_TYPE_VP6 :
            VidType = "VP6";
            break;
        case HI_UNF_VCODEC_TYPE_VP6F :
            VidType = "VP6F";
            break;
        case HI_UNF_VCODEC_TYPE_VP6A :
            VidType = "VP6A";
            break;
        case HI_UNF_VCODEC_TYPE_MJPEG :
            VidType = "MJPEG";
            break;
        case HI_UNF_VCODEC_TYPE_SORENSON :
            VidType = "SORENSON";
            break;
        case HI_UNF_VCODEC_TYPE_DIVX3 :
            VidType = "DIVX3";
            break;
        case HI_UNF_VCODEC_TYPE_RAW :
            VidType = "RAW";
            break;
        case HI_UNF_VCODEC_TYPE_JPEG :
            VidType = "JPEG";
            break;
        case HI_UNF_VCODEC_TYPE_VP8 :
            VidType = "VP8";
            break;
        case HI_UNF_VCODEC_TYPE_MSMPEG4V1 :
            VidType = "MSMPEG4V1";
            break;
        case HI_UNF_VCODEC_TYPE_MSMPEG4V2 :
            VidType = "MSMPEG4V2";
            break;
        case HI_UNF_VCODEC_TYPE_MSVIDEO1 :
            VidType = "MSVIDEO1";
            break;
        case HI_UNF_VCODEC_TYPE_WMV1 :
            VidType = "WMV1";
            break;
        case HI_UNF_VCODEC_TYPE_WMV2 :
            VidType = "WMV2";
            break;
        case HI_UNF_VCODEC_TYPE_RV10 :
            VidType = "RV10";
            break;
        case HI_UNF_VCODEC_TYPE_RV20 :
            VidType = "RV20";
            break;
        case HI_UNF_VCODEC_TYPE_SVQ1 :
            VidType = "SVQ1";
            break;
        case HI_UNF_VCODEC_TYPE_SVQ3 :
            VidType = "SVQ3";
            break;
        case HI_UNF_VCODEC_TYPE_H261 :
            VidType = "H261";
            break;
        case HI_UNF_VCODEC_TYPE_VP3 :
            VidType = "VP3";
            break;
        case HI_UNF_VCODEC_TYPE_VP5 :
            VidType = "VP5";
            break;
        case HI_UNF_VCODEC_TYPE_CINEPAK :
            VidType = "CINEPAK";
            break;
        case HI_UNF_VCODEC_TYPE_INDEO2 :
            VidType = "INDEO2";
            break;
        case HI_UNF_VCODEC_TYPE_INDEO3 :
            VidType = "INDEO3";
            break;
        case HI_UNF_VCODEC_TYPE_INDEO4 :
            VidType = "INDEO4";
            break;
        case HI_UNF_VCODEC_TYPE_INDEO5 :
            VidType = "INDEO5";
            break;
        case HI_UNF_VCODEC_TYPE_MJPEGB :
            VidType = "MJPEGB";
            break;
        case HI_UNF_VCODEC_TYPE_MVC :
            VidType = "MVC";
            break;
        case HI_UNF_VCODEC_TYPE_HEVC :
            VidType = "HEVC";
            break;
        case HI_UNF_VCODEC_TYPE_DV :
            VidType = "DV";
            break;
        default :
            VidType = "UNKNOWN";
            break;
    }

    switch (pAvplay->VdecAttr.enMode)
    {
        case HI_UNF_VCODEC_MODE_NORMAL :
            DecMode = "NORMAL";
            break;
        case HI_UNF_VCODEC_MODE_IP :
            DecMode = "IP";
            break;
        case HI_UNF_VCODEC_MODE_I :
            DecMode = "I";
            break;
        case HI_UNF_VCODEC_MODE_DROP_INVALID_B :
            DecMode = "DROP_INVALID_B";
            break;
        default :
            DecMode = "UNKNOWN";
            break;
    }

    HI_PROC_Printf(ProcBuf, "----------------------Hisilicon AVPLAY%d Out Info-------------------\n",
        GET_SYNC_ID(pAvplay->hSync));

    HI_PROC_Printf(ProcBuf,
                    "Stream Type           :%-10s   |DmxId                 :%s\n"
                    "CurStatus             :%-10s   |OverflowProc          :%s\n"
                    "Sync ID               :%-10s   |ThreadID              :%d\n"
                    "ThreadScheTimeOutCnt  :%-10u   |ThreadExeTimeOutCnt   :%u\n"
                    "CpuFreqScheTimeCnt    :%-10u\n",
                    StreamType, szDemuxID, CurStatus, Overflow,
                    szSyncID, pAvplay->ThreadID,
                    pAvplay->DebugInfo.ThreadScheTimeOutCnt,
                    pAvplay->DebugInfo.ThreadExeTimeOutCnt,
                    pAvplay->DebugInfo.CpuFreqScheTimeCnt
                    );

    HI_PROC_Printf(ProcBuf,
                    "------------------------------VID CHANNEL--------------------------\n"
                    "Vid Enable            :%-10s   |Vdec Type             :%s\n"
                    "VidOverflowNum        :%-10d   |Vdec Mode             :%s\n"
                    "VidPid                :0x%-10x |FrcEnable             :%s\n"
                    "FrcInRate             :%-10s   |FrcOutRate            :%s\n"
                    "TplaySpeed            :%-10s   |LowDelayEnable        :%s\n"
                    "TvpEnable             :%-10s   |Vdec ID               :vdec%02d\n",
                    (pAvplay->VidEnable) ? "TRUE" : "FALSE",
                    VidType,
                    pAvplay->DebugInfo.VidOverflowNum,
                    DecMode,
                    pAvplay->DmxVidPid,
                    (pAvplay->bFrcEnable) ? "TRUE" : "FALSE",
                    szFrcInRate,
                    szFrcOutRate,
                    szTplaySpeed,
                    (pAvplay->LowDelayAttr.bEnable) ? "TRUE" : "FALSE",
                #ifdef HI_TVP_SUPPORT
                    (pAvplay->TVPAttr.bEnable) ? "TRUE" : "FALSE",
                #else
                    "FALSE",
                #endif
                    pAvplay->hVdec & 0xff
                    );

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        HI_PROC_Printf(ProcBuf, "FrameChanID           :vpss_port%04x->win%04x(master)\n",
                        pAvplay->MasterFrmChn.hPort & 0xffff,
                        pAvplay->MasterFrmChn.hWindow & 0xffff);

    }

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
        {
            HI_PROC_Printf(ProcBuf, "FrameChanID           :vpss_port%04x->win%04x(slave%02d)\n",
                            pAvplay->SlaveFrmChn[i].hPort & 0xffff,
                            pAvplay->SlaveFrmChn[i].hWindow & 0xffff,
                            i);
        }
    }

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
        {
            HI_PROC_Printf(ProcBuf, "FrameChanID           :vpss_port%04x->win%04x(virtual%02d)\n",
                pAvplay->VirFrmChn[i].hPort & 0xffff,
                pAvplay->VirFrmChn[i].hWindow & 0xffff, i);
        }
    }

    HI_PROC_Printf(ProcBuf,
                    "AcquireFrame(Try/OK)  :%u/%u\n",
                    pAvplay->DebugInfo.AcquireVidFrameNum,
                    pAvplay->DebugInfo.AcquiredVidFrameNum
                    );

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        HI_PROC_Printf(ProcBuf,
                        "SendFrame(Try/OK)     :%u/%u(master)\n",
                        pAvplay->DebugInfo.MasterVidStat.SendNum,
                        pAvplay->DebugInfo.MasterVidStat.PlayNum +
                        pAvplay->DebugInfo.MasterVidStat.RepeatNum +
                        pAvplay->DebugInfo.MasterVidStat.DiscardNum
                        );
    }

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
        {
            HI_PROC_Printf(ProcBuf,
                            "SendFrame(Try/OK)     :%u/%u(slave%02d)\n",
                            pAvplay->DebugInfo.SlaveVidStat[i].SendNum,
                            pAvplay->DebugInfo.SlaveVidStat[i].PlayNum +
                            pAvplay->DebugInfo.SlaveVidStat[i].RepeatNum +
                            pAvplay->DebugInfo.SlaveVidStat[i].DiscardNum,
                            i
                            );
        }
    }

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
        {
            HI_PROC_Printf(ProcBuf,
                            "SendFrame(Try/OK)     :%u/%u(virtual%02d)\n",
                            pAvplay->DebugInfo.VirVidStat[i].SendNum,
                            pAvplay->DebugInfo.VirVidStat[i].PlayNum +
                            pAvplay->DebugInfo.VirVidStat[i].RepeatNum +
                            pAvplay->DebugInfo.VirVidStat[i].DiscardNum,
                            i
                            );
        }
    }

    HI_PROC_Printf(ProcBuf,
                  "------------------------------AUD CHANNEL--------------------------\n"
                  "Aud Enable            :%-10s   |Adec Type             :%s\n"
                  "AudOverflowNum        :%-10d   |AdecDelayMs           :%u\n"
                  "DmxAudChnNum          :%-10d\n",
                  (pAvplay->AudEnable) ? "TRUE" : "FALSE",
                  pAvplay->AdecNameInfo.szHaCodecName,
                  pAvplay->DebugInfo.AudOverflowNum,
                  pAvplay->AdecDelayMs,
                  pAvplay->DmxAudChnNum
                  );

    HI_PROC_Printf(ProcBuf, "DmxAudPid             :");

    for (i = 0; i < pAvplay->DmxAudChnNum; i++)
    {
        HI_PROC_Printf(ProcBuf, "%#x", pAvplay->DmxAudPid[i]);

        if ((pAvplay->DmxAudChnNum > 1) && (i == pAvplay->CurDmxAudChn))
        {
            HI_PROC_Printf(ProcBuf, "(play)");
        }

        if (i < pAvplay->DmxAudChnNum - 1)
        {
            HI_PROC_Printf(ProcBuf, ",");
        }
    }

    HI_PROC_Printf(ProcBuf, "\n");

    HI_PROC_Printf(ProcBuf, "Adec ID               :adec%02d\n", pAvplay->hAdec & 0xff);

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        HI_PROC_Printf(ProcBuf, "Track ID              :track%02d", pAvplay->hTrack[i] & 0xff);

        if (pAvplay->hSyncTrack == pAvplay->hTrack[i])
        {
            HI_PROC_Printf(ProcBuf, "(master)");
        }

        HI_PROC_Printf(ProcBuf, "\n");
    }

    HI_PROC_Printf(ProcBuf,
                    "AcquireStream(Try/OK) :%u/%u\n"
                    "SendStream(Try/OK)    :%u/%u\n"
                    "AcquireFrame(Try/OK)  :%u/%u\n",
                    pAvplay->DebugInfo.AcquireAudEsNum,
                    pAvplay->DebugInfo.AcquiredAudEsNum,
                    pAvplay->DebugInfo.SendAudEsNum,
                    pAvplay->DebugInfo.SendedAudEsNum,
                    pAvplay->DebugInfo.AcquireAudFrameNum,
                    pAvplay->DebugInfo.AcquiredAudFrameNum
                    );

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        HI_PROC_Printf(ProcBuf,
                        "SendFrame(Try/OK)     :%u/%u",
                        pAvplay->DebugInfo.SendAudFrameNum,
                        pAvplay->DebugInfo.SendedAudFrameNum
                        );

        if (pAvplay->hSyncTrack == pAvplay->hTrack[i])
        {
            HI_PROC_Printf(ProcBuf, "(master)");
        }

        HI_PROC_Printf(ProcBuf, "\n");
    }

    HI_PROC_Printf(ProcBuf, "\n");

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

static HI_S32 AVPLAY_ProcWrite(HI_PROC_SHOW_BUFFER_S *ProcBuf, HI_U32 Argc, HI_U8 *Argv[], HI_VOID *Data)
{
    HI_U32      Id      = (HI_U32)Data;
    AVPLAY_S   *pAvplay = HI_NULL;
    HI_CHAR    *String  = (HI_CHAR*)Argv[0];
    HI_CHAR    *Help    = "echo FrcEnable=true|false > /proc/msp/avplayxx, enable or disable frc";
    HI_U32      len;

    if (Argc < 1)
    {
        HI_PROC_Printf(ProcBuf, "%s\n", Help);

        return HI_FAILURE;
    }

    len = strlen("FrcEnable");

    if (0 == strncmp(String, "FrcEnable", len))
    {
        AVPLAY_INST_LOCK(Id);

        pAvplay = g_Avplay[Id].Avplay;
        if (HI_NULL == pAvplay)
        {
            AVPLAY_INST_UNLOCK(Id);

            return -1;
        }

        String += len + 1;

        if (0 == strncmp(String, "true", strlen("true")))
        {
            pAvplay->bFrcEnable = HI_TRUE;
        }
        else if (0 == strncmp(String, "false", strlen("false")))
        {
            pAvplay->bFrcEnable = HI_FALSE;
        }

        AVPLAY_INST_UNLOCK(Id);
    }
    else
    {
        HI_PROC_Printf(ProcBuf, "%s\n", Help);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Init(HI_VOID)
{
    HI_S32 Ret;

    HI_AVPLAY_LOCK();

    if (0 == g_AvplayInit)
    {
        Ret = HI_MODULE_Register(HI_ID_AVPLAY, "HI_AVPLAY");
        if (HI_SUCCESS != Ret)
        {
            HI_AVPLAY_UNLOCK();

            HI_ERR_AVPLAY("HI_MODULE_Register failed 0x%x\n", Ret);

            return Ret;
        }

        Ret = HI_MPI_ADEC_Init(HI_NULL);
        if (HI_SUCCESS != Ret)
        {
            HI_MODULE_UnRegister(HI_ID_AVPLAY);
            HI_AVPLAY_UNLOCK();

            HI_ERR_AVPLAY("HI_MPI_ADEC_Init failed 0x%x\n", Ret);

            return Ret;
        }

        Ret = HI_MPI_VDEC_Init();
        if (HI_SUCCESS != Ret)
        {
            HI_MPI_ADEC_deInit();
            HI_MODULE_UnRegister(HI_ID_AVPLAY);
            HI_AVPLAY_UNLOCK();

            HI_ERR_AVPLAY("HI_MPI_VDEC_Init failed 0x%x\n", Ret);

            return Ret;
        }

        Ret = HI_MPI_SYNC_Init();
        if (HI_SUCCESS != Ret)
        {
            HI_MPI_VDEC_DeInit();
            HI_MPI_ADEC_deInit();
            HI_MODULE_UnRegister(HI_ID_AVPLAY);
            HI_AVPLAY_UNLOCK();

            HI_FATAL_AVPLAY("HI_MPI_SYNC_Init failed 0x%x\n", Ret);

            return Ret;
        }

    #ifdef HI_MSP_BUILDIN
        Ret = HI_UNF_PMOC_Init();
        if (HI_SUCCESS != Ret)
        {
            HI_MPI_SYNC_DeInit();
            HI_MPI_VDEC_DeInit();
            HI_MPI_ADEC_deInit();
            HI_MODULE_UnRegister(HI_ID_AVPLAY);
            HI_AVPLAY_UNLOCK();

            HI_FATAL_AVPLAY("HI_UNF_PMOC_Init failed 0x%x\n", Ret);

            return Ret;
        }
    #endif

        g_AvplayInit = 1;
    }

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DeInit(HI_VOID)
{
    HI_S32  Ret;
    HI_U32  i;
    HI_U32  AvplayNum = 0;

    for (i = 0; i < AVPLAY_MAX_NUM; i++)
    {
        AVPLAY_INST_LOCK(i);
        if (g_Avplay[i].Avplay)
        {
            AvplayNum++;
        }
        AVPLAY_INST_UNLOCK(i);
    }

    if (AvplayNum)
    {
        HI_ERR_AVPLAY("there are %d AVPLAY not been destroied\n", AvplayNum);

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    HI_AVPLAY_LOCK();

    g_AvplayInit = 0;

#ifdef HI_MSP_BUILDIN
    Ret = HI_UNF_PMOC_DeInit();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_UNF_PMOC_DeInit failed 0x%x\n", Ret);
    }
#endif

    Ret = HI_MPI_SYNC_DeInit();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_SYNC_DeInit failed 0x%x\n", Ret);
    }

    Ret = HI_MPI_VDEC_DeInit();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_DeInit failed 0x%x\n", Ret);
    }

    Ret = HI_MPI_ADEC_deInit();
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_ADEC_deInit failed 0x%x\n", Ret);
    }

    Ret = HI_MODULE_UnRegister(HI_ID_AVPLAY);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MODULE_UnRegister failed 0x%x\n", Ret);
    }

    HI_AVPLAY_UNLOCK();

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDefaultConfig(HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_E enCfg)
{
    HI_S32              ret;
    HI_SYS_VERSION_S    SysVersion;
    HI_CHIP_TYPE_E      ChipType    = HI_CHIP_TYPE_HI3716C;
    HI_CHIP_VERSION_E   ChipVersion = HI_CHIP_VERSION_V200;

    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if ((HI_UNF_AVPLAY_STREAM_TYPE_TS != enCfg) && (HI_UNF_AVPLAY_STREAM_TYPE_ES != enCfg))
    {
        HI_ERR_AVPLAY("para enCfg is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pstAvAttr->u32DemuxId = 0;
    pstAvAttr->stStreamAttr.enStreamType = enCfg;

    memset(&SysVersion, 0, sizeof(HI_SYS_VERSION_S));
    ret = HI_SYS_GetVersion(&SysVersion);
    if (HI_SUCCESS == ret)
    {
        ChipType    = SysVersion.enChipTypeHardWare;
        ChipVersion = SysVersion.enChipVersion;
    }

    if (   ((HI_CHIP_TYPE_HI3796C == ChipType) && (HI_CHIP_VERSION_V100 == ChipVersion))
        || ((HI_CHIP_TYPE_HI3798C == ChipType) && (HI_CHIP_VERSION_V100 == ChipVersion))
        || ((HI_CHIP_TYPE_HI3798C == ChipType) && (HI_CHIP_VERSION_V200 == ChipVersion))
        || ((HI_CHIP_TYPE_HI3798M == ChipType) && (HI_CHIP_VERSION_V100 == ChipVersion))
        || ((HI_CHIP_TYPE_HI3796M == ChipType) && (HI_CHIP_VERSION_V100 == ChipVersion))
        || ((HI_CHIP_TYPE_HI3798C_A == ChipType) && (HI_CHIP_VERSION_V200 == ChipVersion)) )
    {
        pstAvAttr->stStreamAttr.u32VidBufSize = 16 * 1024 * 1024;
        pstAvAttr->stStreamAttr.u32AudBufSize = 768 * 1024;
    }
    else
    {
        pstAvAttr->stStreamAttr.u32VidBufSize = 6 * 1024 * 1024;
        pstAvAttr->stStreamAttr.u32AudBufSize = 384 * 1024;
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay)
{
    HI_S32                  Ret;
    HI_U32                  Id;
    AVPLAY_S               *pAvplay = HI_NULL;
    HI_UNF_SYNC_ATTR_S      SyncAttr;
    HI_CHAR                 ProcName[32];
    HI_U32                  i;

    if (!pstAvAttr)
    {
        HI_ERR_AVPLAY("para pstAvAttr is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phAvplay)
    {
        HI_ERR_AVPLAY("para phAvplay is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (pstAvAttr->stStreamAttr.enStreamType >= HI_UNF_AVPLAY_STREAM_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.enStreamType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32VidBufSize > AVPLAY_MAX_VID_SIZE)
      ||(pstAvAttr->stStreamAttr.u32VidBufSize < AVPLAY_MIN_VID_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32VidBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if ((pstAvAttr->stStreamAttr.u32AudBufSize > AVPLAY_MAX_AUD_SIZE)
      ||(pstAvAttr->stStreamAttr.u32AudBufSize < AVPLAY_MIN_AUD_SIZE)
       )
    {
        HI_ERR_AVPLAY("para pstAvAttr->stStreamAttr.u32AudBufSize is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    HI_AVPLAY_LOCK();
    if (0 == g_AvplayInit)
    {
        HI_ERR_AVPLAY("AVPLAY is not init\n");
        HI_AVPLAY_UNLOCK();
        return HI_ERR_AVPLAY_DEV_NO_INIT;
    }
    HI_AVPLAY_UNLOCK();

    for (Id = 0; Id < AVPLAY_MAX_NUM; Id++)
    {
        AVPLAY_INST_LOCK(Id);
        if (HI_NULL == g_Avplay[Id].Avplay)
        {
            g_Avplay[Id].Avplay = (AVPLAY_S*)HI_MALLOC(HI_ID_AVPLAY, sizeof(AVPLAY_S));
            if (HI_NULL == g_Avplay[Id].Avplay)
            {
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("avplay malloc failed\n");

                return HI_ERR_AVPLAY_CREATE_ERR;
            }

            memset(g_Avplay[Id].Avplay, 0, sizeof(AVPLAY_S));

            AVPLAY_INST_UNLOCK(Id);

            break;
        }
        AVPLAY_INST_UNLOCK(Id);
    }

    if (Id >= AVPLAY_MAX_NUM)
    {
        HI_ERR_AVPLAY("no free avplay\n");

        return HI_ERR_AVPLAY_CREATE_ERR;
    }

    AVPLAY_INST_LOCK(Id);

    pAvplay = g_Avplay[Id].Avplay;

    pAvplay->hAvplay = GET_AVPLAY_HANDLE(Id);

    memcpy(&pAvplay->AvplayAttr, pstAvAttr, sizeof(HI_UNF_AVPLAY_ATTR_S));

    pAvplay->VdecAttr.enType        = HI_UNF_VCODEC_TYPE_BUTT;
    pAvplay->VdecAttr.enMode        = HI_UNF_VCODEC_MODE_NORMAL;
    pAvplay->VdecAttr.u32ErrCover   = 0;
    pAvplay->VdecAttr.u32Priority   = 0;

    pAvplay->LowDelayAttr.bEnable   = HI_FALSE;

#ifdef HI_TVP_SUPPORT
    pAvplay->TVPAttr.bEnable = HI_FALSE;
#endif

    pAvplay->AdecType   = 0xffffffff;

    pAvplay->hVdec = HI_INVALID_HANDLE;
    pAvplay->hAdec = HI_INVALID_HANDLE;

    pAvplay->hDmxPcr    = HI_INVALID_HANDLE;
    pAvplay->DmxPcrPid  = DEMUX_INVALID_PID;

    pAvplay->hDmxVid    = HI_INVALID_HANDLE;
    pAvplay->DmxVidPid  = DEMUX_INVALID_PID;

    for (i = 0; i < AVPLAY_MAX_DMX_AUD_CHAN_NUM; i++)
    {
        pAvplay->hDmxAud[i]     = HI_INVALID_HANDLE;
        pAvplay->DmxAudPid[i]   = DEMUX_INVALID_PID;
    }

    pAvplay->bStepMode = HI_FALSE;
    pAvplay->bStepPlay = HI_FALSE;

    pAvplay->hSharedOrgWin = HI_INVALID_HANDLE;

    pAvplay->MasterFrmChn.hPort     = HI_INVALID_HANDLE;
    pAvplay->MasterFrmChn.hWindow   = HI_INVALID_HANDLE;

    for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
    {
        pAvplay->SlaveFrmChn[i].hPort   = HI_INVALID_HANDLE;
        pAvplay->SlaveFrmChn[i].hWindow = HI_INVALID_HANDLE;
    }

    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        pAvplay->VirFrmChn[i].hPort     = HI_INVALID_HANDLE;
        pAvplay->VirFrmChn[i].hWindow   = HI_INVALID_HANDLE;
    }

    (HI_VOID)pthread_mutex_init(&pAvplay->AvplayThreadMutex, HI_NULL);

#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_mutex_init(&pAvplay->AvplayVidThreadMutex, HI_NULL);
#endif

    AVPLAY_FrcCreate(&pAvplay->FrcCalAlg, &pAvplay->FrcParamCfg, &pAvplay->FrcCtrlInfo);

    pAvplay->bFrcEnable = HI_TRUE;

    for (i = 0; i < AVPLAY_MAX_TRACK; i++)
    {
        pAvplay->hTrack[i] = HI_INVALID_HANDLE;
    }

    pAvplay->TrackNum   = 0;
    pAvplay->hSyncTrack = HI_INVALID_HANDLE;

    pAvplay->AudDDPMode = HI_FALSE; /* for DDP test only */
    pAvplay->LastAudPts = 0;        /* for DDP test only */

    pAvplay->VidEnable = HI_FALSE;
    pAvplay->AudEnable = HI_FALSE;

    pAvplay->bVidPreEnable = HI_FALSE;
    pAvplay->bAudPreEnable = HI_FALSE;

    pAvplay->LstStatus = HI_UNF_AVPLAY_STATUS_STOP;
    pAvplay->CurStatus = HI_UNF_AVPLAY_STATUS_STOP;
    pAvplay->OverflowProc = HI_UNF_AVPLAY_OVERFLOW_RESET;

    /* initialize related parameters of the avplay thread */
    pAvplay->AvplayThreadRun = HI_TRUE;
    pAvplay->AvplayThreadPrio = THREAD_PRIO_MID;

    pAvplay->CurBufferEmptyState = HI_FALSE;

    /*  initialize standby count */
    pAvplay->u32ResumeCount = 0;
    pAvplay->bSetResumeCnt = HI_FALSE;

    AVPLAY_ResetProcFlag(pAvplay);

    /* initialize events callback function*/
    for (i = 0; i < HI_UNF_AVPLAY_EVENT_BUTT; i++)
    {
        pAvplay->EvtCbFunc[i] = HI_NULL;
    }

    HI_MPI_SYNC_GetDefaultAttr(&SyncAttr);

    Ret = HI_MPI_SYNC_Create(&SyncAttr, &pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create sync failed 0x%x\n", Ret);
        goto MUTEX_DESTROY;
    }

    Ret = AVPLAY_CreateThread(pAvplay);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("AVPLAY create thread failed 0x%x\n", Ret);
        goto SYNC_DESTROY;
    }

    snprintf(ProcName, sizeof(ProcName), "avplay%02d", GET_SYNC_ID(pAvplay->hSync));

    pAvplay->Proc.pszEntryName = ProcName;
    pAvplay->Proc.pszDirectory = "msp";
    pAvplay->Proc.pfnShowProc  = AVPLAY_ProcRead;
    pAvplay->Proc.pfnCmdProc   = AVPLAY_ProcWrite;
    pAvplay->Proc.pPrivData    = (HI_VOID*)Id;

    Ret = HI_PROC_AddEntry(HI_ID_AVPLAY, &pAvplay->Proc);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_PROC_AddEntry failed 0x%x\n", Ret);

        pAvplay->Proc.pfnShowProc   = HI_NULL;
        pAvplay->Proc.pfnCmdProc    = HI_NULL;
    }

    *phAvplay = pAvplay->hAvplay;

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;

SYNC_DESTROY:
    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);

MUTEX_DESTROY:
    (HI_VOID)pthread_mutex_destroy(&pAvplay->AvplayThreadMutex);

#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_mutex_destroy(&pAvplay->AvplayVidThreadMutex);
#endif

    HI_FREE(HI_ID_AVPLAY, g_Avplay[Id].Avplay);
    g_Avplay[Id].Avplay = HI_NULL;

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Destroy(HI_HANDLE hAvplay)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      VirChnNum;
    HI_U32      SlaveChnNum;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->Proc.pfnShowProc || pAvplay->Proc.pfnCmdProc)
    {
        HI_CHAR ProcName[32];

        snprintf(ProcName, sizeof(ProcName), "avplay%02d", GET_SYNC_ID(pAvplay->hSync));

        pAvplay->Proc.pszEntryName = ProcName;

        Ret = HI_PROC_RemoveEntry(HI_ID_AVPLAY, &pAvplay->Proc);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_PROC_RemoveEntry failed 0x%x\n", Ret);
        }
    }

    if ((pAvplay->hVdec != HI_INVALID_HANDLE) || (pAvplay->hAdec != HI_INVALID_HANDLE))
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("vid or aud chn is not closed\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    VirChnNum = AVPLAY_GetVirtualWinChnNum(pAvplay);
    SlaveChnNum = AVPLAY_GetSlaveWinChnNum(pAvplay);

    if ((HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow) || (0 != SlaveChnNum) || (0 != VirChnNum))
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("win is not detach\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (0 != pAvplay->TrackNum)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("snd is not detach\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    // stop thread
    pAvplay->AvplayThreadRun = HI_FALSE;
    (HI_VOID)pthread_join(pAvplay->AvplayDataThdInst, HI_NULL);

#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_join(pAvplay->AvplayVidDataThdInst, HI_NULL);
#endif

    (HI_VOID)pthread_join(pAvplay->AvplayStatThdInst, HI_NULL);
    pthread_attr_destroy(&pAvplay->AvplayThreadAttr);

    (HI_VOID)HI_MPI_SYNC_Destroy(pAvplay->hSync);

    AVPLAY_FrcDestroy(&pAvplay->FrcCalAlg);
    pAvplay->bFrcEnable = HI_FALSE;

    (HI_VOID)pthread_mutex_destroy(&pAvplay->AvplayThreadMutex);

#ifdef AVPLAY_VID_THREAD
    (HI_VOID)pthread_mutex_destroy(&pAvplay->AvplayVidThreadMutex);
#endif

    if (HI_NULL != pAvplay->pstAcodecAttr)
    {
        HI_FREE(HI_ID_AVPLAY, (HI_VOID*)(pAvplay->pstAcodecAttr));
        pAvplay->pstAcodecAttr = HI_NULL;
    }

    HI_FREE(HI_ID_AVPLAY, g_Avplay[Id].Avplay);
    g_Avplay[Id].Avplay = HI_NULL;

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            Ret = AVPLAY_MallocVidChn(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay malloc vid chn failed 0x%x\n", Ret);

                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            Ret = AVPLAY_MallocAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }

                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay malloc aud chn failed 0x%x\n", Ret);

                return Ret;
            }
        }
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hDmxPcr)
        {
            Ret = HI_MPI_DMX_CreatePcrChannel(pAvplay->AvplayAttr.u32DemuxId, &pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
                {
                    (HI_VOID)AVPLAY_FreeVidChn(pAvplay);
                }

                if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
                {
                    (HI_VOID)AVPLAY_FreeAudChn(pAvplay);
                }

                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay malloc pcr chn failed 0x%x\n", Ret);

                return Ret;
            }

            (HI_VOID)HI_MPI_DMX_PcrSyncAttach(pAvplay->hDmxPcr, pAvplay->hSync);
        }
    }

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      VirChnNum;
    HI_U32      SlaveChnNum;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (pAvplay->VidEnable)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("vid chn is enable, can not colsed\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        VirChnNum = AVPLAY_GetVirtualWinChnNum(pAvplay);
        SlaveChnNum = AVPLAY_GetSlaveWinChnNum(pAvplay);

        if ((HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow) || (0 != SlaveChnNum) || (0 != VirChnNum))
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("window is attach to vdec, can not colsed\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->hVdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay free vid chn failed 0x%x\n", Ret);

                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (pAvplay->AudEnable)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("aud chn is enable, can not colsed\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->TrackNum)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("track is attach to adec, can not colsed\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        if (pAvplay->hAdec != HI_INVALID_HANDLE)
        {
            Ret = AVPLAY_FreeAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay free aud chn failed 0x%x\n", Ret);

                return Ret;
            }
        }
    }

    if ((HI_INVALID_HANDLE == pAvplay->hVdec) && (HI_INVALID_HANDLE == pAvplay->hAdec))
    {
        if (pAvplay->hDmxPcr != HI_INVALID_HANDLE)
        {
            (HI_VOID)HI_MPI_DMX_PcrSyncDetach(pAvplay->hDmxPcr);

            Ret = HI_MPI_DMX_DestroyPcrChannel(pAvplay->hDmxPcr);
            if (Ret != HI_SUCCESS)
            {
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("Avplay free pcr chn failed 0x%x\n", Ret);

                return Ret;
            }

            pAvplay->hDmxPcr = HI_INVALID_HANDLE;
        }
    }

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetFrmPackingType(AVPLAY_S *pAvplay, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *pFrmPackingType)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set frm packing type.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* input param check */
    if (*pFrmPackingType >= HI_UNF_FRAME_PACKING_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("FrmPackingType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    Ret = HI_MPI_VDEC_SetChanFrmPackType(pAvplay->hVdec, pFrmPackingType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanFrmPackType failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetFrmPackingType(AVPLAY_S *pAvplay, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *pFrmPackingType)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not get frm packing type.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanFrmPackType(pAvplay->hVdec, pFrmPackingType);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanFrmPackType failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetVdecFrmRateParam(AVPLAY_S *pAvplay,  HI_UNF_AVPLAY_FRMRATE_PARAM_S *pFrmRate)
{
    HI_S32 Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* input param check */
    if (pFrmRate->enFrmRateType >= HI_UNF_AVPLAY_FRMRATE_TYPE_BUTT)
    {
        HI_ERR_AVPLAY("enFrmRateType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    /* input param check */
    if ((HI_UNF_AVPLAY_FRMRATE_TYPE_USER == pFrmRate->enFrmRateType)
        || (HI_UNF_AVPLAY_FRMRATE_TYPE_USER_PTS == pFrmRate->enFrmRateType)
        )
    {
        if ((pFrmRate->stSetFrmRate.u32fpsInteger == 0)
            && (pFrmRate->stSetFrmRate.u32fpsDecimal == 0)
            )
        {
            HI_ERR_AVPLAY("stSetFrmRate is invalid.\n");
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
    }

    Ret = HI_MPI_VDEC_SetChanFrmRate(pAvplay->hVdec, pFrmRate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_SetChanFrmRate failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 AVPLAY_GetVdecFrmRateParam(AVPLAY_S *pAvplay,  HI_UNF_AVPLAY_FRMRATE_PARAM_S *pFrmRate)
{
    HI_S32  Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close, can not set vdec frm rate.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }
    Ret = HI_MPI_VDEC_GetChanFrmRate(pAvplay->hVdec, pFrmRate);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanFrmRate failed.\n");
        return Ret;
    }
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID 0x%x is invalid\n", enAttrID);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_SetStreamMode(pAvplay, (HI_UNF_AVPLAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            if (pAvplay->AudEnable)
            {
                HI_ERR_AVPLAY("aud chn is running, can not set adec attr.\n");
                Ret = HI_ERR_AVPLAY_INVALID_OPT;
                break;
            }

            Ret = AVPLAY_SetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_SetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vdec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, *((HI_U32*)pPara));
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, *((HI_U32*)pPara));
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_SetPid(pAvplay, enAttrID, *((HI_U32*)pPara));
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_SetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_SetOverflowProc(pAvplay, (HI_UNF_AVPLAY_OVERFLOW_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set overflow proc failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_SetMultiAud(pAvplay, (HI_UNF_AVPLAY_MULTIAUD_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("set multi aud failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
            Ret = AVPLAY_SetVdecFrmRateParam(pAvplay, (HI_UNF_AVPLAY_FRMRATE_PARAM_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set frm rate failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_FRMPACK_TYPE:
            Ret = AVPLAY_SetFrmPackingType(pAvplay, (HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set frm packing type failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY:
            Ret = AVPLAY_SetLowDelay(pAvplay, (HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set Low Delay failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_TVP:
        #ifdef HI_TVP_SUPPORT
            Ret = AVPLAY_SetTVP(pAvplay, (HI_UNF_AVPLAY_TVP_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Set Trusted Video Path failed.\n");
            }
        #else
            Ret = HI_ERR_AVPLAY_NOT_SUPPORT;
        #endif
            break;

        default:
            Ret = HI_SUCCESS;
            break;
    }

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enAttrID >= HI_UNF_AVPLAY_ATTR_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enAttrID 0x%x is invalid\n", enAttrID);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            Ret = AVPLAY_GetStreamMode(pAvplay, (HI_UNF_AVPLAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get stream mode failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            Ret = AVPLAY_GetAdecAttr(pAvplay, (HI_UNF_ACODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = AVPLAY_GetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vdec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            Ret = AVPLAY_GetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get pcr pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = AVPLAY_GetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            Ret = AVPLAY_GetOverflowProc(pAvplay, (HI_UNF_AVPLAY_OVERFLOW_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("get overflow proc failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            Ret = AVPLAY_GetMultiAud(pAvplay, (HI_UNF_AVPLAY_MULTIAUD_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get multi audio failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_FRMRATE_PARAM:
            Ret = AVPLAY_GetVdecFrmRateParam(pAvplay, (HI_UNF_AVPLAY_FRMRATE_PARAM_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get frm rate failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_FRMPACK_TYPE:
            Ret = AVPLAY_GetFrmPackingType(pAvplay, (HI_UNF_VIDEO_FRAME_PACKING_TYPE_E *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get frm packing type  failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY:
            Ret = AVPLAY_GetLowDelay(pAvplay, (HI_UNF_AVPLAY_LOW_DELAY_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get Low Delay failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_TVP:
        #ifdef HI_TVP_SUPPORT
            Ret = AVPLAY_GetTVP(pAvplay, (HI_UNF_AVPLAY_TVP_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("Get Trusted Video Path failed.\n");
            }
        #else
            Ret = HI_ERR_AVPLAY_NOT_SUPPORT;
        #endif
            break;

        default:
            Ret = HI_SUCCESS;
            break;
    }

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_DecodeIFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstIframe,
                                              HI_UNF_VIDEO_FRAME_INFO_S *pstCapPicture)
{
    HI_S32                          Ret;
    HI_U32                          Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                       *pAvplay;
    HI_UNF_VIDEO_FRAME_INFO_S       stVidFrameInfo;
    HI_DRV_VIDEO_FRAME_S            stDrvFrm;
    HI_U32                          i, j;
    HI_HANDLE                       hWindow = HI_INVALID_HANDLE;
    HI_DRV_VIDEO_FRAME_PACKAGE_S    stFrmPack;
    HI_BOOL                         bCapture = HI_FALSE;
    HI_DRV_VPSS_PORT_CFG_S          stOldCfg, stNewCfg;

    if (HI_NULL == pstIframe)
    {
        HI_ERR_AVPLAY("para pstIframe is null\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    memset(&stFrmPack, 0x0, sizeof(HI_DRV_VIDEO_FRAME_PACKAGE_S));

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("hVdec is invalid\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_TRUE == pAvplay->VidEnable)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("vid chn is opened\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (pAvplay->stIFrame.hport != HI_INVALID_HANDLE)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("please release I frame first\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* if there is no window exist, we need create vpss source */
    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        if (HI_NULL == pstCapPicture)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("there is no window\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_CreatePort(pAvplay->hVdec, &pAvplay->MasterFrmChn.hPort, VDEC_PORT_HD);
        if (HI_SUCCESS != Ret)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("HI_MPI_VDEC_CreatePort ERR, Ret=%#x\n", Ret);

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_SetPortType(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, VDEC_PORT_TYPE_MASTER);
        Ret |= HI_MPI_VDEC_EnablePort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);
        if (HI_SUCCESS != Ret)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("HI_MPI_VDEC_EnablePort ERR, Ret=%#x\n", Ret);

            HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);

            return HI_ERR_AVPLAY_INVALID_OPT;
        }
    }

    if (HI_NULL != pstCapPicture)
    {
        bCapture = HI_TRUE;
    }

    Ret = HI_MPI_VDEC_GetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("HI_MPI_VDEC_GetPortAttr ERR, Ret=%#x\n", Ret);

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    stNewCfg = stOldCfg;
    // need capture frame, config vpss to do not zoom
    if (HI_TRUE == bCapture)
    {
        stNewCfg.s32OutputWidth = 0;
        stNewCfg.s32OutputHeight = 0;
    }

    /*set vpss attr, do not do zoom*/
    Ret = HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stNewCfg);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("HI_MPI_VDEC_SetPortAttr ERR, Ret=%#x\n", Ret);

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    memset(&stVidFrameInfo, 0x0, sizeof(HI_UNF_VIDEO_FRAME_INFO_S));

    Ret = HI_MPI_VDEC_ChanIFrameDecode(pAvplay->hVdec, (HI_UNF_AVPLAY_I_FRAME_S *)pstIframe, &stDrvFrm, bCapture);
    if (Ret != HI_SUCCESS)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("HI_MPI_VDEC_ChanIFrameDecode failed 0x%x\n", Ret);

        (HI_VOID)HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);

        return Ret;
    }

    /*wait for vpss process complete*/
    for (i = 0; i < 20; i++)
    {
        Ret = HI_MPI_VDEC_ReceiveFrame(pAvplay->hVdec, &stFrmPack);
        if (Ret == HI_SUCCESS)
        {
            break;
        }

        usleep(10 * 1000);
    }

    if (i >= 20)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("HI_MPI_VDEC_ReceiveFrame failed 0x%x\n", Ret);

        return Ret;
    }

    /*resume vpss attr*/
    Ret = HI_MPI_VDEC_SetPortAttr(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort, &stOldCfg);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("HI_MPI_VDEC_SetPortAttr failed 0x%x\n", Ret);

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* display on vo */
    if (HI_FALSE == bCapture)
    {
        for (i = 0; i < stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, stFrmPack.stFrame[i].hport, &hWindow);

            if (hWindow == pAvplay->MasterFrmChn.hWindow)
            {
                break;
            }
        }

        if (i == stFrmPack.u32FrmNum)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("I Frame Dec: No master window\n");

            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_WIN_QueueFrame(hWindow, &stFrmPack.stFrame[i].stFrameVideo);
        if (HI_SUCCESS != Ret)
        {
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("I Frame Dec: Queue frame to master win err, Ret=%#x\n", Ret);

            return Ret;
        }

        for (i = 0; i < stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)AVPLAY_GetWindowByPort(pAvplay, stFrmPack.stFrame[i].hport, &hWindow);

            for (j = 0; j < AVPLAY_MAX_SLAVE_FRMCHAN; j++)
            {
                if (hWindow == pAvplay->SlaveFrmChn[j].hWindow)
                {
                    Ret = HI_MPI_WIN_QueueFrame(hWindow, &stFrmPack.stFrame[i].stFrameVideo);
                    if (HI_SUCCESS != Ret)
                    {
                        AVPLAY_INST_UNLOCK(Id);

                        HI_ERR_AVPLAY("I Frame Dec: Queue frame to slave win err, Ret=%#x\n", Ret);

                        return Ret;
                    }
                }
            }
        }
    }
    else
    {
        /*use frame of port0, release others*/
        memcpy(&pAvplay->stIFrame, &stFrmPack.stFrame[0], sizeof(HI_DRV_VDEC_FRAME_S));

        for (i = 1; i < stFrmPack.u32FrmNum; i++)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(stFrmPack.stFrame[i].hport, &stFrmPack.stFrame[i].stFrameVideo);
        }

        AVPLAY_DRV2UNF_VidFrm(&(pAvplay->stIFrame.stFrameVideo), pstCapPicture);
    }

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_ReleaseIFrame(HI_HANDLE hAvplay, HI_UNF_VIDEO_FRAME_INFO_S *pstCapPicture)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (HI_NULL == pstCapPicture)
    {
        HI_ERR_AVPLAY("para pstCapPicture is null\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        AVPLAY_INST_UNLOCK(Id);

        HI_ERR_AVPLAY("hVdec is invalid\n");

        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AVPLAY_Mutex_Lock(&pAvplay->AvplayThreadMutex);

    /* destroy vpss source */
    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_VDEC_DisablePort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);
        Ret |= HI_MPI_VDEC_DestroyPort(pAvplay->hVdec, pAvplay->MasterFrmChn.hPort);
        if (HI_SUCCESS != Ret)
        {
            AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
            AVPLAY_INST_UNLOCK(Id);

            HI_ERR_AVPLAY("HI_MPI_VDEC_DestroyPort ERR, Ret=%#x\n", Ret);

            return Ret;
        }

        pAvplay->MasterFrmChn.hPort = HI_INVALID_HANDLE;
    }
    else
    {
        if (pAvplay->stIFrame.hport != HI_INVALID_HANDLE)
        {
            (HI_VOID)HI_MPI_VDEC_ReleaseFrame(pAvplay->stIFrame.hport, &pAvplay->stIFrame.stFrameVideo);

            memset(&pAvplay->stIFrame.stFrameVideo, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));
        }
    }

    pAvplay->stIFrame.hport = HI_INVALID_HANDLE;

    AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SetDecodeMode(HI_HANDLE hAvplay, HI_UNF_VCODEC_MODE_E enDecodeMode)
{
    HI_S32                  Ret;
    HI_U32                  Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S               *pAvplay;
    HI_UNF_VCODEC_ATTR_S    VdecAttr;

    if (enDecodeMode >= HI_UNF_VCODEC_MODE_BUTT)
    {
        HI_ERR_AVPLAY("para enDecodeMode 0x%x is invalid\n", enDecodeMode);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        AVPLAY_INST_UNLOCK(Id);
        HI_ERR_AVPLAY("vid chn is close, can not set vdec attr\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        AVPLAY_INST_UNLOCK(Id);
        HI_ERR_AVPLAY("HI_MPI_VDEC_GetChanAttr failed 0x%x\n", Ret);
        return Ret;
    }

    VdecAttr.enMode = enDecodeMode;

    Ret = HI_MPI_VDEC_SetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_SetChanAttr failed 0x%x\n", Ret);
    }

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_RegisterEvent(HI_HANDLE      hAvplay,
                                   HI_UNF_AVPLAY_EVENT_E     enEvent,
                                   HI_UNF_AVPLAY_EVENT_CB_FN pfnEventCB)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent 0x%x is invalid\n", enEvent);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pfnEventCB)
    {
        HI_ERR_AVPLAY("para pfnEventCB is null\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->EvtCbFunc[enEvent])
    {
        AVPLAY_INST_UNLOCK(Id);
        HI_ERR_AVPLAY("this event has been registered.\n");
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->EvtCbFunc[enEvent] = pfnEventCB;

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_UnRegisterEvent(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enEvent >= HI_UNF_AVPLAY_EVENT_BUTT)
    {
        HI_ERR_AVPLAY("para enEvent 0x%x is invalid\n", enEvent);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    pAvplay->EvtCbFunc[enEvent] = HI_NULL;

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RegisterAcodecLib(const HI_CHAR *pFileName)
{
    HI_S32    Ret;

    if (!pFileName)
    {
        HI_ERR_AVPLAY("para pFileName is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    Ret = HI_MPI_ADEC_RegisterDeoderLib(pFileName, strlen(pFileName));
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("HI_MPI_ADEC_RegisterDeoderLib failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_RegisterVcodecLib(const HI_CHAR *pFileName)
{
    HI_S32    Ret;

    if (!pFileName)
    {
        HI_ERR_AVPLAY("para pFileName is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    Ret = HI_MPI_VDEC_RegisterVcodecLib(pFileName);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("HI_MPI_VDEC_RegisterVcodecLib failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_FoundSupportDeoder(const HA_FORMAT_E enFormat,HI_U32 * penDstCodecID)
{
    HI_S32    Ret;

    Ret = HI_MPI_ADEC_FoundSupportDeoder(enFormat,penDstCodecID);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("HI_MPI_ADEC_FoundSupportDeoder failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_ConfigAcodec( const HI_U32 enDstCodecID, HI_VOID *pstConfigStructure)
{
    HI_S32 Ret;

    Ret = HI_MPI_ADEC_SetConfigDeoder(enDstCodecID, pstConfigStructure);
    if (Ret != HI_SUCCESS)
    {
        HI_INFO_AVPLAY("HI_MPI_ADEC_SetConfigDeoder failed 0x%x\n", Ret);
    }

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_PreStart(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS != pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        AVPLAY_INST_UNLOCK(Id);
        HI_ERR_AVPLAY("HI_MPI_AVPLAY_PreStart is not supported in es mode\n");
        return HI_ERR_AVPLAY_NOT_SUPPORT;
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif
        if (!pAvplay->VidEnable && !pAvplay->bVidPreEnable)
        {
            Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxVid);
            if (Ret != HI_SUCCESS)
            {
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);

                HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel 0x%x failed 0x%x\n", pAvplay->hDmxVid, Ret);

                return Ret;
            }

            pAvplay->VidPreBufThreshhold = 0;
            pAvplay->VidPreSysTime = -1;
            pAvplay->bVidPreEnable = HI_TRUE;
            AVPLAY_PrePlay(pAvplay);
        }
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif
        if (!pAvplay->AudEnable && !pAvplay->bAudPreEnable)
        {
            HI_U32 i;

            for (i = 0; i < pAvplay->DmxAudChnNum; i++)
            {
                Ret = HI_MPI_DMX_OpenChannel(pAvplay->hDmxAud[i]);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_OpenChannel 0x%x failed 0x%x\n", i, Ret);
                    break;
                }
            }

            if (i <  pAvplay->DmxAudChnNum)
            {
                HI_U32 j;

                for (j = 0; j < i; j++)
                {
                    (HI_VOID)HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[j]);
                }
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            pAvplay->AudPreBufThreshhold = 0;
            pAvplay->AudPreSysTime = -1;
            pAvplay->bAudPreEnable = HI_TRUE;
            AVPLAY_PrePlay(pAvplay);
        }
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
#ifndef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
            return Ret;
        }
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32      Ret;
    HI_U32      VirChnNum;
    HI_U32      SlaveChnNum;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif
        if (!pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hVdec)
            {
                HI_ERR_AVPLAY("vid chn is close, can not start.\n");

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            VirChnNum = AVPLAY_GetVirtualWinChnNum(pAvplay);
            SlaveChnNum = AVPLAY_GetSlaveWinChnNum(pAvplay);

            if ((HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
                && (0 == SlaveChnNum) && (0 == VirChnNum)
                )
            {
                HI_ERR_AVPLAY("window is not attached, can not start.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            Ret = AVPLAY_StartVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start vid chn failed.\n");
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Vid failed.\n");
            }

            pAvplay->VidEnable = HI_TRUE;
            pAvplay->bVidPreEnable = HI_FALSE;
            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTART, 0);
        }
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif
        if (!pAvplay->AudEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hAdec)
            {
                HI_ERR_AVPLAY("aud chn is close, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            if (0 == pAvplay->TrackNum)
            {
                HI_ERR_AVPLAY("track is not attached, can not start.\n");
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return HI_ERR_AVPLAY_INVALID_OPT;
            }

            Ret = AVPLAY_StartAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("start aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            Ret = HI_MPI_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_SYNC_Play Aud failed.\n");
            }

            pAvplay->AudEnable = HI_TRUE;
            pAvplay->bAudPreEnable = HI_FALSE;
            AVPLAY_Play(pAvplay);

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTART, 0);
        }
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, pAvplay->DmxPcrPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
#ifndef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_PreStop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn,const HI_UNF_AVPLAY_PRESTOP_OPT_S *pPreStopOpt)
{
    HI_ERR_AVPLAY("HI_MPI_AVPLAY_PreStop is not supported\n");
    return HI_ERR_AVPLAY_NOT_SUPPORT;
}

HI_S32 HI_MPI_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop)
{
    HI_S32                      Ret;
    HI_U32                      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                   *pAvplay;
    HI_UNF_AVPLAY_STOP_OPT_S    StopOpt;
    HI_U32                      SysTime;
    HI_BOOL                     Block;
    HI_BOOL                     bStopNotify = HI_FALSE;
    HI_U32                      i;

    switch ((HI_U32)enChn)
    {
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD :
        case HI_UNF_AVPLAY_MEDIA_CHAN_VID :
        case HI_UNF_AVPLAY_MEDIA_CHAN_AUD | HI_UNF_AVPLAY_MEDIA_CHAN_VID :
            break;

        default :
            HI_ERR_AVPLAY("para enChn 0x%x is invalid\n", enChn);
            return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (pStop)
    {
        if (pStop->enMode >= HI_UNF_AVPLAY_STOP_MODE_BUTT)
        {
            HI_ERR_AVPLAY("para pStop->enMode is invalid.\n");
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        StopOpt.u32TimeoutMs = pStop->u32TimeoutMs;
        StopOpt.enMode = pStop->enMode;
    }
    else
    {
        StopOpt.u32TimeoutMs = 0;
        StopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    /*The relevant channel is already stopped*/
    if ( ((HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn) && (!pAvplay->AudEnable)  && (!pAvplay->bAudPreEnable) )
       || ((HI_UNF_AVPLAY_MEDIA_CHAN_VID == enChn) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable))
       || ((((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD | (HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID) == enChn)
           && (!pAvplay->AudEnable)  && (!pAvplay->bAudPreEnable) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)))
    {
        HI_INFO_AVPLAY("The chn is already stoped\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    /*Non Block invoke*/
    if (0 == StopOpt.u32TimeoutMs)
    {
        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif
            if (pAvplay->VidEnable)
            {
                Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop vid chn failed.\n");
#ifdef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                    AVPLAY_INST_UNLOCK(Id);
                    return Ret;
                }

                if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
                {
                    /* resume the frc and window ratio */
                    pAvplay->bFrcEnable = HI_TRUE;
                    pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
                }

                pAvplay->VidEnable = HI_FALSE;
                pAvplay->bVidPreEnable = HI_FALSE;

                /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
                if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
                {
                    /*Release vpss frame*/
                    (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
                    pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
                }

                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
            }
            else if ( pAvplay->bVidPreEnable )
            {
                Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxVid);
                if(HI_SUCCESS != Ret)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed:%#x.\n",Ret);
#ifdef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                    AVPLAY_INST_UNLOCK(Id);
                    return Ret;
                }

                pAvplay->bVidPreEnable = HI_FALSE;
            }
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        }

        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
        {
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif
            if (pAvplay->AudEnable)
            {
                Ret = AVPLAY_StopAudChn(pAvplay);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("stop aud chn failed.\n");
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                    AVPLAY_INST_UNLOCK(Id);
                    return Ret;
                }
/*
                for (i=0; i<pAvplay->TrackNum; i++)
                {
                    if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                    {
                        Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                    }
                }
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("call HI_MPI_AO_Track_Resume failed, Ret=0x%x.\n", Ret);
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                    AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                    return Ret;
                }
*/

                pAvplay->AudEnable = HI_FALSE;
                pAvplay->bAudPreEnable = HI_FALSE;

                /* may be only stop audchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;

                (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
            }
            else if (pAvplay->bAudPreEnable)
            {
                for (i = 0; i < pAvplay->DmxAudChnNum; i++)
                {
                    Ret = HI_MPI_DMX_CloseChannel(pAvplay->hDmxAud[i]);
                    if (Ret != HI_SUCCESS)
                    {
                        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                        AVPLAY_INST_UNLOCK(Id);

                        HI_ERR_AVPLAY("HI_MPI_DMX_CloseChannel failed 0x%x\n", Ret);

                        return Ret;
                    }
                }

                pAvplay->bAudPreEnable = HI_FALSE;
            }
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            if ((!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)
                &&(!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) )
            {
                Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, DEMUX_INVALID_PID);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
#ifndef AVPLAY_VID_THREAD
                    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                    AVPLAY_INST_UNLOCK(Id);
                    return Ret;
                }
            }
        }

        if ((!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable)
            &&(!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) )
        {
            AVPLAY_Stop(pAvplay);
            bStopNotify = HI_TRUE;
        }
    }
    else
    {
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif
        if ((pAvplay->VidEnable && pAvplay->AudEnable)
          &&(enChn <= HI_UNF_AVPLAY_MEDIA_CHAN_VID)
           )
        {
            HI_ERR_AVPLAY("must control vid and aud chn together.\n");
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        if (( (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID)) && (!pAvplay->VidEnable) && (!pAvplay->bVidPreEnable) )
            || ( (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD)) && (!pAvplay->AudEnable) && (!pAvplay->bAudPreEnable) ))
        {
            HI_ERR_AVPLAY("not support this mode.\n");
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_PARA;
        }

        if (StopOpt.u32TimeoutMs != SYS_TIME_MAX)
        {
            Block = HI_FALSE;
        }
        else
        {
            Block = HI_TRUE;
        }

        Ret = AVPLAY_SetEosFlag(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);

        pAvplay->EosStartTime = AVPLAY_GetSysTime();
        while (1)
        {
            if(HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
            {
                break;
            }

            if (!Block)
            {
                SysTime = AVPLAY_GetSysTime();

                if (SysTime > pAvplay->EosStartTime)
                {
                    pAvplay->EosDurationTime = SysTime - pAvplay->EosStartTime;
                }
                else
                {
                    pAvplay->EosDurationTime = (0xFFFFFFFFU - pAvplay->EosStartTime) + 1 + SysTime;
                }

                if (pAvplay->EosDurationTime >= StopOpt.u32TimeoutMs)
                {
                    HI_ERR_AVPLAY("eos proc timeout.\n");
                    break;
                }
            }

            (HI_VOID)usleep(AVPLAY_SYS_SLEEP_TIME*1000);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

        if (pAvplay->VidEnable)
        {
            Ret = AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop vid chn failed.\n");

#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                /* resume the frc and window ratio */
                pAvplay->bFrcEnable = HI_TRUE;
                pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
            }

            pAvplay->VidEnable = HI_FALSE;
            pAvplay->bVidPreEnable = HI_FALSE;

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_VSTOP, 0);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif
        if (pAvplay->AudEnable)
        {
            Ret = AVPLAY_StopAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("stop aud chn failed.\n");
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }
/*
            for (i=0; i<pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret |= HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                }
            }

            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_AO_Track_Resume failed, Ret=0x%x.\n", Ret);
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_Mutex_UnLock(pAvplay->pAvplayMutex);
                return Ret;
            }
*/
            pAvplay->AudEnable = HI_FALSE;
            pAvplay->bAudPreEnable = HI_FALSE;

            (HI_VOID)HI_MPI_STAT_Event(STAT_EVENT_ASTOP, 0);
        }

#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_PcrPidSet(pAvplay->hDmxPcr, DEMUX_INVALID_PID);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_PcrPidSet failed 0x%x\n", Ret);
#ifndef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }
        }

        AVPLAY_Stop(pAvplay);
        bStopNotify = HI_TRUE;
    }

#ifndef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif

    AVPLAY_INST_UNLOCK(Id);

    if (HI_TRUE == bStopNotify)
    {
        AVPLAY_Notify(pAvplay, HI_UNF_AVPLAY_EVENT_STOP, HI_NULL);
    }

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Pause(HI_HANDLE hAvplay)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      i;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif

    if ((!pAvplay->VidEnable) && (!pAvplay->AudEnable))
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_SYNC_Pause(pAvplay->hSync);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_Pause failed, Ret=0x%x.\n", Ret);
    }

    AVPLAY_Pause(pAvplay);

    if (pAvplay->VidEnable)
    {
        if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
        {
            (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_TRUE);
        }

        for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_TRUE);

            }
        }

        for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_TRUE);
            }
        }
    }

    if (pAvplay->AudEnable)
    {
        for (i = 0; i < pAvplay->TrackNum; i++)
        {
            if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
            {
                Ret |= HI_MPI_AO_Track_Pause(pAvplay->hTrack[i]);
            }
        }

        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_SetPause failed, Ret=0x%x.\n", Ret);
        }
    }

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      i;
    HI_U32      AvplayRatio;
    HI_BOOL     bSetEosFlag;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif

    if (!pAvplay->VidEnable && !pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /* disable frc if opt is null */
    if (HI_NULL == pstTplayOpt)
    {
        pAvplay->bFrcEnable = HI_FALSE;
        AvplayRatio = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
    }
    else
    {
        pAvplay->bFrcEnable = HI_TRUE;

        AvplayRatio = (pstTplayOpt->u32SpeedInteger*1000 + pstTplayOpt->u32SpeedDecimal) * AVPLAY_ALG_FRC_BASE_PLAY_RATIO / 1000;

        if ((pstTplayOpt->u32SpeedInteger > 64)
            || (pstTplayOpt->u32SpeedDecimal > 999)
            || (AvplayRatio > AVPLAY_ALG_FRC_MAX_PLAY_RATIO)
            || (AvplayRatio < AVPLAY_ALG_FRC_MIN_PLAY_RATIO)
            )
        {
            HI_ERR_AVPLAY("Set tplay speed invalid!\n");
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_PARA;
        }
    }

    if (HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
    {
        pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;

        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

    if (((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
       )
    {
        bSetEosFlag = pAvplay->bSetEosFlag;

        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("avplay reset err, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        if (bSetEosFlag)
        {
            Ret = AVPLAY_SetEosFlag(pAvplay);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x.\n", Ret);
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            pAvplay->bSetEosFlag = HI_TRUE;
        }
    }

    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_FALSE);
            }

            for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
                {
                    (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_FALSE);

                }
            }

            for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
                {
                    (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_FALSE);
                }
            }
        }

        /* pause->tplay, resume hiao */
        if (pAvplay->AudEnable)
        {
            for (i = 0; i < pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret = HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                    if (Ret != HI_SUCCESS)
                    {
                        HI_ERR_AVPLAY("HI_MPI_AO_Track_Resume failed 0x%x\n", Ret);
                    }
                }
            }
        }

        /* pause->tplay, resume sync */
        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_SYNC_Resume failed 0x%x\n", Ret);
        }
    }

    pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;

    (HI_VOID)HI_MPI_SYNC_Tplay(pAvplay->hSync);
    AVPLAY_Tplay(pAvplay);

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Resume(HI_HANDLE hAvplay)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      i;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif

    pAvplay->bStepMode = HI_FALSE;
    pAvplay->bStepPlay = HI_FALSE;

    if (HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
    {
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

    if ((!pAvplay->VidEnable) && (!pAvplay->AudEnable))
    {
        HI_ERR_AVPLAY("vid and aud chn is stopped.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (((HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->LstStatus) && (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus))
      ||(HI_UNF_AVPLAY_STATUS_TPLAY == pAvplay->CurStatus)
       )
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AVPLAY("AVPLAY_Reset, Ret=%#x.\n", Ret);
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        (HI_VOID)HI_MPI_SYNC_Play(pAvplay->hSync);

       pAvplay->bFrcEnable = HI_TRUE;
       pAvplay->FrcParamCfg.u32PlayRate = AVPLAY_ALG_FRC_BASE_PLAY_RATIO;
    }

    /* resume hiao and sync if curstatus is pause */
    if (HI_UNF_AVPLAY_STATUS_PAUSE == pAvplay->CurStatus)
    {
        if (pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
            {
                (HI_VOID)HI_MPI_WIN_Pause(pAvplay->MasterFrmChn.hWindow, HI_FALSE);
            }

            for (i = 0; i < AVPLAY_MAX_SLAVE_FRMCHAN; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->SlaveFrmChn[i].hWindow)
                {
                    (HI_VOID)HI_MPI_WIN_Pause(pAvplay->SlaveFrmChn[i].hWindow, HI_FALSE);
                }
            }

            for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
                {
                    (HI_VOID)HI_MPI_WIN_Pause(pAvplay->VirFrmChn[i].hWindow, HI_FALSE);
                }
            }
        }

        if (pAvplay->AudEnable)
        {
            for (i = 0; i < pAvplay->TrackNum; i++)
            {
                if (HI_INVALID_HANDLE != pAvplay->hTrack[i])
                {
                    Ret = HI_MPI_AO_Track_Resume(pAvplay->hTrack[i]);
                    if (Ret != HI_SUCCESS)
                    {
                        HI_ERR_AVPLAY("HI_MPI_AO_Track_Resume failed 0x%x\n", Ret);
                    }
                }
            }
        }

        Ret = HI_MPI_SYNC_Resume(pAvplay->hSync);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_SYNC_Resume failed 0x%x\n", Ret);
        }
    }

    AVPLAY_Play(pAvplay);

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Reset(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_RESET_OPT_S *pstResetOpt)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif

    if ((HI_UNF_AVPLAY_STATUS_PLAY == pAvplay->CurStatus)
        && (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        && (HI_NULL != pstResetOpt)
        && (HI_INVALID_PTS != pstResetOpt->u32SeekPtsMs)
    )
    {
        HI_INFO_AVPLAY("sdk buf seek enter\n");

        Ret = AVPLAY_Seek(pAvplay, pstResetOpt->u32SeekPtsMs);
        if (Ret != HI_SUCCESS)
        {
            HI_INFO_AVPLAY("not in sdk buf\n");

            Ret = AVPLAY_Reset(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call AVPLAY_Reset failed.\n");
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }
        }

        HI_INFO_AVPLAY("sdk buf seek quit\n");
    }
    else
    {
        Ret = AVPLAY_Reset(pAvplay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call AVPLAY_Reset failed.\n");
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }
    }

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetBuf(HI_HANDLE  hAvplay,
                            HI_UNF_AVPLAY_BUFID_E enBufId,
                            HI_U32                u32ReqLen,
                            HI_UNF_STREAM_BUF_S  *pstData,
                            HI_U32                u32TimeOutMs)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pstData)
    {
        HI_ERR_AVPLAY("para pstData is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (u32TimeOutMs != 0)
    {
        HI_ERR_AVPLAY("enBufId=%d NOT support block mode, please set 'u32TimeOutMs' to 0.\n", enBufId);
        return HI_ERR_AVPLAY_NOT_SUPPORT;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /*if user contine getting or putting buffer after EOS, Current status change to Last status*/
    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        pAvplay->CurStatus = pAvplay->LstStatus;
    }

    pAvplay->bSetEosFlag = HI_FALSE;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_WARN_AVPLAY("vid chn is stopped.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_ChanGetBuffer(pAvplay->hVdec, u32ReqLen, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if (Ret != HI_ERR_VDEC_BUFFER_FULL)
            {
                HI_WARN_AVPLAY("call HI_MPI_VDEC_ChanGetBuffer failed, Ret=0x%x.\n", Ret);
            }

            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayVidEsBuf.pu8Addr;
        pstData->u32Size = pAvplay->AvplayVidEsBuf.u32BufSize;
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_WARN_AVPLAY("aud chn is stopped.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
#if 0
        Ret = HI_MPI_ADEC_GetDelayMs(pAvplay->hAdec, &pAvplay->AdecDelayMs);
        if (HI_SUCCESS == Ret && pAvplay->AdecDelayMs > AVPLAY_ADEC_MAX_DELAY)
        {
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }
#endif
        Ret = HI_MPI_ADEC_GetBuffer(pAvplay->hAdec, u32ReqLen, &pAvplay->AvplayAudEsBuf);
        if (Ret != HI_SUCCESS)
        {
            if ((Ret != HI_ERR_ADEC_IN_BUF_FULL) && (Ret != HI_ERR_ADEC_IN_PTSBUF_FULL) )
            {
                HI_ERR_AVPLAY("call HI_MPI_ADEC_GetBuffer failed, Ret=0x%x.\n", Ret);
            }

            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        pstData->pu8Data = pAvplay->AvplayAudEsBuf.pu8Data;
        pstData->u32Size = pAvplay->AvplayAudEsBuf.u32Size;
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_PutBuf(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts, HI_UNF_AVPLAY_PUTBUFEX_OPT_S *pstExOpt)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (enBufId >= HI_UNF_AVPLAY_BUF_ID_BUTT)
    {
        HI_ERR_AVPLAY("para enBufId is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        HI_ERR_AVPLAY("avplay is ts stream mode.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    /*if user contine getting or putting buffer after EOS, Current status change to Last status*/
    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_WARN_AVPLAY("avplay curstatus is eos.\n");
        pAvplay->CurStatus = pAvplay->LstStatus;
    }

    pAvplay->bSetEosFlag = HI_FALSE;

    if (HI_UNF_AVPLAY_BUF_ID_ES_VID == enBufId)
    {
        if (!pAvplay->VidEnable)
        {
            HI_ERR_AVPLAY("vid chn is stopped.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayVidEsBuf.u32BufSize = u32ValidDataLen;
        pAvplay->AvplayVidEsBuf.u64Pts = u32Pts;
        pAvplay->AvplayVidEsBuf.bEndOfFrame = pstExOpt->bEndOfFrm;

        if (pstExOpt->bContinue)
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_FALSE;
        }
        else
        {
            pAvplay->AvplayVidEsBuf.bDiscontinuous = HI_TRUE;
        }

        Ret = HI_MPI_VDEC_ChanPutBuffer(pAvplay->hVdec, &pAvplay->AvplayVidEsBuf);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_ChanPutBuffer failed.\n");
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_BUF_ID_ES_AUD == enBufId)
    {
        if (!pAvplay->AudEnable)
        {
            HI_ERR_AVPLAY("aud chn is stopped.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        pAvplay->AvplayAudEsBuf.u32Size = u32ValidDataLen;
        Ret = HI_MPI_ADEC_PutBuffer(pAvplay->hAdec, &pAvplay->AvplayAudEsBuf, u32Pts);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_PutBuffer failed.\n");
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}


HI_S32 HI_MPI_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!phVdec)
    {
        HI_ERR_AVPLAY("para phVdec is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    if (!phSync)
    {
        HI_ERR_AVPLAY("para phSync is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("Avplay have not vdec.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phVdec = pAvplay->hVdec;
    *phSync = pAvplay->hSync;

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phTrack)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!phTrack)
    {
        HI_ERR_AVPLAY("para phTrack is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->hSyncTrack)
    {
        HI_ERR_AVPLAY("Avplay have not main track.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phTrack = pAvplay->hSyncTrack;

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

// TODO: 确认该接口能否删除
HI_S32 HI_MPI_AVPLAY_GetWindowHandle(HI_HANDLE hAvplay, HI_HANDLE *phWindow)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!phWindow)
    {
        HI_ERR_AVPLAY("para phWindow is invalid.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phWindow = pAvplay->MasterFrmChn.hWindow;

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    HI_S32              Ret;
    HI_U32              Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S           *pAvplay;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    Ret = AVPLAY_AttachWindow(pAvplay, hWindow);

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    HI_S32              Ret;
    HI_U32              Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S           *pAvplay;

    if (HI_INVALID_HANDLE == hWindow)
    {
        HI_ERR_AVPLAY("para hWindow is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    Ret = AVPLAY_DetachWindow(pAvplay, hWindow);

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}


// TODO: 确认该功能是否还需要
HI_S32 HI_MPI_AVPLAY_SetWindowRepeat(HI_HANDLE hAvplay, HI_U32 u32Repeat)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;
    HI_U32      AvplayRatio;

    if (0 == u32Repeat)
    {
        HI_ERR_AVPLAY("para u32Repeat is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AvplayRatio = 256/u32Repeat;

    if ((AvplayRatio > AVPLAY_ALG_FRC_MAX_PLAY_RATIO)
        || (AvplayRatio < AVPLAY_ALG_FRC_MIN_PLAY_RATIO))
    {
        HI_ERR_AVPLAY("Set repeat invalid!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplay->FrcParamCfg.u32PlayRate = AvplayRatio;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    HI_S32                      Ret;
    HI_U32                      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                   *pAvplay;
    HI_S32                      i;
    HI_UNF_AUDIOTRACK_ATTR_S    stTrackInfo;

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
            AVPLAY_INST_UNLOCK(Id);
            return HI_SUCCESS;
        }
    }

    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));
    Ret = HI_MPI_AO_Track_GetAttr(hTrack, &stTrackInfo);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_MPI_HIAO_GetTrackInfo.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return HI_FAILURE;
    }

    for (i=0; i<AVPLAY_MAX_TRACK; i++)
    {
        if (HI_INVALID_HANDLE == pAvplay->hTrack[i])
        {
            break;
        }
    }

    if(AVPLAY_MAX_TRACK == i)
    {
        HI_ERR_AVPLAY("AVPLAY has attached max track.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return HI_FAILURE;
    }

    pAvplay->hTrack[i] = hTrack;
    pAvplay->TrackNum++;

    if ((HI_UNF_SND_TRACK_TYPE_VIRTUAL != stTrackInfo.enTrackType)
        && (HI_INVALID_HANDLE == pAvplay->hSyncTrack)
        )
    {
        pAvplay->hSyncTrack = hTrack;
    }

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hTrack)
{
    HI_U32                      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                   *pAvplay;
    HI_U32                      i, j;
    HI_UNF_AUDIOTRACK_ATTR_S    stTrackInfo;

    if (HI_INVALID_HANDLE == hTrack)
    {
        HI_ERR_AVPLAY("para hTrack is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    memset(&stTrackInfo, 0x0, sizeof(HI_UNF_AUDIOTRACK_ATTR_S));

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);

    for (i = 0; i < pAvplay->TrackNum; i++)
    {
        if (pAvplay->hTrack[i] == hTrack)
        {
            break;
        }
    }

    if (i == pAvplay->TrackNum)
    {
        HI_ERR_AVPLAY("this is not a attached track, can not detach.\n");
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->hTrack[i] = pAvplay->hTrack[pAvplay->TrackNum - 1];
    pAvplay->hTrack[pAvplay->TrackNum - 1] = HI_INVALID_HANDLE;
    pAvplay->TrackNum--;

    if (hTrack == pAvplay->hSyncTrack)
    {
        for (j=0; j<pAvplay->TrackNum; j++)
        {
            (HI_VOID)HI_MPI_AO_Track_GetAttr(pAvplay->hTrack[j], &stTrackInfo);

            if (HI_UNF_SND_TRACK_TYPE_VIRTUAL != stTrackInfo.enTrackType)
            {
                pAvplay->hSyncTrack = pAvplay->hTrack[j];
                AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
                AVPLAY_INST_UNLOCK(Id);
                return HI_SUCCESS;
            }
        }

        if (j == pAvplay->TrackNum)
        {
            pAvplay->hSyncTrack= HI_INVALID_HANDLE;
        }
    }

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxAudChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxAudChn)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!phDmxAudChn)
    {
        HI_ERR_AVPLAY("para phDmxAudChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (!pAvplay->hAdec)
    {
        HI_ERR_AVPLAY("aud chn is close.\n");
        AVPLAY_INST_UNLOCK(Id);
         return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxAudChn = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetDmxVidChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxVidChn)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!phDmxVidChn)
    {
        HI_ERR_AVPLAY("para phDmxVidChn is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_AVPLAY("avplay is not ts stream mode.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    if (!pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("vid chn is close.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    *phDmxVidChn = pAvplay->hDmxVid;

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetStatusInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STATUS_INFO_S *pstStatusInfo)
{
    HI_S32                      Ret;
    HI_U32                      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                   *pAvplay;
    ADEC_BUFSTATUS_S            AdecBufStatus = {0};
    VDEC_STATUSINFO_S           VdecBufStatus = {0};
    HI_MPI_DMX_BUF_STATUS_S     VidChnBuf = {0};
    HI_U32                      SndDelay = 0;
    HI_DRV_WIN_PLAY_INFO_S      WinPlayInfo = {0};
    HI_BOOL                     WinEnable;

    if (!pstStatusInfo)
    {
        HI_ERR_AVPLAY("para pstStatusInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    pstStatusInfo->enRunStatus = pAvplay->CurStatus;

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        memset(&AdecBufStatus, 0, sizeof(AdecBufStatus));

        (HI_VOID)HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_BUFFERSTATUS, &AdecBufStatus);
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize = AdecBufStatus.u32BufferSize;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = AdecBufStatus.u32BufferUsed;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr = AdecBufStatus.u32BufWritePos;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr = (HI_U32)AdecBufStatus.s32BufReadPos;
        pstStatusInfo->u32AuddFrameCount = AdecBufStatus.u32TotDecodeFrame;
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_AUD;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufSize  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufWptr  = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32BufRptr  = 0;
        pstStatusInfo->u32AuddFrameCount = 0;
    }

    if (pAvplay->hSyncTrack != HI_INVALID_HANDLE)
    {

        Ret = HI_MPI_AO_Track_GetDelayMs(pAvplay->hSyncTrack, &SndDelay);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_HIAO_GetDelayMs failed:%x.\n",Ret);
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = SndDelay;

    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime = 0;
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
            AVPLAY_INST_UNLOCK(Id);
            return Ret;
        }

        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_MPI_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidChnBuf);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("HI_MPI_DMX_GetPESBufferStatus failed 0x%x\n", Ret);
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }

            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VidChnBuf.u32BufSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VidChnBuf.u32UsedSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = VidChnBuf.u32BufWptr;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = VidChnBuf.u32BufRptr;
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = VdecBufStatus.u32BufferSize;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = VdecBufStatus.u32BufferUsed;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        }

        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = VdecBufStatus.u32FrameBufNum;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = VdecBufStatus.bEndOfStream;
        pstStatusInfo->u32VidFrameCount = VdecBufStatus.u32TotalDecFrmNum;
        pstStatusInfo->u32VidErrorFrameCount = VdecBufStatus.u32TotalErrFrmNum;
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32UsedSize = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufWptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufRptr = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32BufId = HI_UNF_AVPLAY_BUF_ID_ES_VID;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufNum = 0;
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].bEndOfStream = HI_TRUE;
        pstStatusInfo->u32VidFrameCount = 0;
        pstStatusInfo->u32VidErrorFrameCount = 0;
    }

    if (HI_INVALID_HANDLE != pAvplay->MasterFrmChn.hWindow)
    {
        Ret = HI_MPI_WIN_GetEnable(pAvplay->MasterFrmChn.hWindow, &WinEnable);
        if ((Ret == HI_SUCCESS) && WinEnable)
        {
            Ret = HI_MPI_WIN_GetPlayInfo(pAvplay->MasterFrmChn.hWindow, &WinPlayInfo);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("call HI_MPI_WIN_GetPlayInfo failed.\n");
                AVPLAY_INST_UNLOCK(Id);
                return Ret;
            }
            else
            {
                pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = WinPlayInfo.u32DelayTime;
            }
        }
        else
        {
            pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = 0;
        }
    }
    else
    {
        pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime = 0;
    }

    Ret = HI_MPI_SYNC_GetStatus(pAvplay->hSync, &pstStatusInfo->stSyncStatus);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("call HI_MPI_SYNC_GetStatus failed.\n");
        AVPLAY_INST_UNLOCK(Id);
        return Ret;
    }

#if 0
    if(HI_INVALID_PTS !=  pstStatusInfo->stSyncStatus.u32LastAudPts)
    {
        if (pstStatusInfo->stSyncStatus.u32LastAudPts > pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime)
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts -= pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_AUD].u32FrameBufTime;
        }
        else
        {
            pstStatusInfo->stSyncStatus.u32LastAudPts = 0;
        }
    }

    if(HI_INVALID_PTS !=  pstStatusInfo->stSyncStatus.u32LastVidPts)
    {
        if (pstStatusInfo->stSyncStatus.u32LastVidPts > pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime)
        {
            pstStatusInfo->stSyncStatus.u32LastVidPts -= pstStatusInfo->stBufStatus[HI_UNF_AVPLAY_BUF_ID_ES_VID].u32FrameBufTime;
        }
        else
        {
            pstStatusInfo->stSyncStatus.u32LastVidPts = 0;
        }
    }
#endif

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetStreamInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STREAM_INFO_S *pstStreamInfo)
{
    HI_S32              Ret;
    HI_U32              Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S           *pAvplay;
    ADEC_STREAMINFO_S   AdecStreaminfo = {0};
    VDEC_STATUSINFO_S       VdecBufStatus = {0};

    if (!pstStreamInfo)
    {
        HI_ERR_AVPLAY("para pstStreamInfo is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->hAdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_ADEC_GetInfo(pAvplay->hAdec, HI_MPI_ADEC_STREAMINFO, &AdecStreaminfo);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_ADEC_GetInfo failed.\n");
        }
        else
        {
            pstStreamInfo->stAudStreamInfo.enACodecType = AdecStreaminfo.u32CodecID;
            pstStreamInfo->stAudStreamInfo.enSampleRate = AdecStreaminfo.enSampleRate;
            pstStreamInfo->stAudStreamInfo.enBitDepth = HI_UNF_BIT_DEPTH_16;
        }
    }

    if (pAvplay->hVdec != HI_INVALID_HANDLE)
    {
        Ret = HI_MPI_VDEC_GetChanStreamInfo(pAvplay->hVdec, &(pstStreamInfo->stVidStreamInfo));
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStreamInfo failed.\n");
        }

	Ret = HI_MPI_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBufStatus);
	if (Ret != HI_SUCCESS)
	{
		HI_ERR_AVPLAY("call HI_MPI_VDEC_GetChanStatusInfo failed.\n");
	}
	else
	{
		pstStreamInfo->stVidStreamInfo.u32bps = VdecBufStatus.u32StrmInBps;
	}
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetAudioSpectrum(HI_HANDLE hAvplay, HI_U16 *pSpectrum, HI_U32 u32BandNum)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!pSpectrum)
    {
        HI_ERR_AVPLAY("para pSpectrum is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (!pAvplay->AudEnable)
    {
        HI_ERR_AVPLAY("aud chn is stopped.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_ADEC_GetAudSpectrum(pAvplay->hAdec,  pSpectrum , u32BandNum);
    if(HI_SUCCESS != Ret)
    {
        HI_WARN_AVPLAY("WARN: HI_MPI_ADEC_GetAudSpectrum.\n");
    }

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

/* add for user to get buffer state, user may want to check if buffer is empty,
    but NOT want to block the user's thread. then user can use this API to check the buffer state
    by q46153 */
HI_S32 HI_MPI_AVPLAY_IsBuffEmpty(HI_HANDLE hAvplay, HI_BOOL *pbIsEmpty)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!pbIsEmpty)
    {
        HI_ERR_AVPLAY("para pbIsEmpty is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    *pbIsEmpty = HI_FALSE;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (pAvplay->bSetEosFlag)
    {
        if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
        {
            *pbIsEmpty = HI_TRUE;
            pAvplay->CurBufferEmptyState = HI_TRUE;
        }
        else
        {
            *pbIsEmpty = HI_FALSE;
            pAvplay->CurBufferEmptyState = HI_FALSE;
        }
    }
    else
    {
        *pbIsEmpty = AVPLAY_IsBufEmpty(pAvplay);
    }

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}


/* for DDP test only! call this before HI_UNF_AVPLAY_ChnOpen */
HI_S32 HI_MPI_AVPLAY_SetDDPTestMode(HI_HANDLE hAvplay, HI_BOOL bEnable)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    pAvplay->AudDDPMode = bEnable;
    pAvplay->LastAudPts = 0;

    Ret = HI_MPI_SYNC_SetDDPTestMode(pAvplay->hSync, pAvplay->AudDDPMode);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Set SYNC DDPTestMode error:%#x.\n", Ret);
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_SwitchDmxAudChn(HI_HANDLE hAvplay, HI_HANDLE hNewDmxAud, HI_HANDLE *phOldDmxAud)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if ((!hAvplay) || (!hNewDmxAud) || (HI_NULL == phOldDmxAud))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_Mutex_Lock(&pAvplay->AvplayThreadMutex);

    /* if the es buf has not been released */
    if(pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        (HI_VOID)HI_MPI_DMX_ReleaseEs(pAvplay->hDmxAud[pAvplay->CurDmxAudChn], &pAvplay->AvplayDmxEsBuf);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
    }

    *phOldDmxAud = pAvplay->hDmxAud[pAvplay->CurDmxAudChn];
    pAvplay->hDmxAud[pAvplay->CurDmxAudChn] = hNewDmxAud;

    AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

/* add for Flashplayer adjust pts */
HI_S32 HI_MPI_AVPLAY_PutAudPts(HI_HANDLE hAvplay, HI_U32 u32AudPts)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    pAvplay->AudInfo.SrcPts = u32AudPts;
    pAvplay->AudInfo.Pts = u32AudPts;

    pAvplay->AudInfo.BufTime = 0;
    pAvplay->AudInfo.FrameNum = 0;
    pAvplay->AudInfo.FrameTime = 5000;

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
    HI_MPI_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_FlushStream(HI_HANDLE hAvplay, HI_UNF_AVPLAY_FLUSH_STREAM_OPT_S *pstFlushOpt)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_Mutex_Lock(&pAvplay->AvplayThreadMutex);
#ifdef AVPLAY_VID_THREAD
    AVPLAY_Mutex_Lock(&pAvplay->AvplayVidThreadMutex);
#endif

    if (HI_UNF_AVPLAY_STATUS_EOS == pAvplay->CurStatus)
    {
        HI_INFO_AVPLAY("current status is eos!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

    if (pAvplay->bSetEosFlag)
    {
        HI_INFO_AVPLAY("Eos Flag has been set!\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return HI_SUCCESS;
    }

    Ret = AVPLAY_SetEosFlag(pAvplay);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: AVPLAY_SetEosFlag, Ret = %#x\n", Ret);
#ifdef AVPLAY_VID_THREAD
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
        AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
        AVPLAY_INST_UNLOCK(Id);
        return Ret;
    }

#ifdef AVPLAY_VID_THREAD
    AVPLAY_Mutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#endif
    AVPLAY_Mutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_Step(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_STEP_OPT_S *pstStepOpt)
{
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (!hAvplay)
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);
#endif

    if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
    {
        HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
#ifdef AVPLAY_VID_THREAD
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
        AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    pAvplay->bStepMode = HI_TRUE;
    pAvplay->bStepPlay = HI_TRUE;

#ifdef AVPLAY_VID_THREAD
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayVidThreadMutex);
#else
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
#endif

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_Invoke(HI_HANDLE hAvplay, HI_UNF_AVPLAY_INVOKE_E enInvokeType, HI_VOID *pPara)
{
    HI_S32                                  Ret = HI_SUCCESS;
    HI_U32                                  Id  = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                               *pAvplay;
    HI_DRV_VIDEO_FRAME_S                    stVidFrame;
    HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S     stPlayInfo;
    HI_DRV_VIDEO_PRIVATE_S                  stVidPrivate;
    HI_U32                                  bUseStopRegion = HI_TRUE;

    if (enInvokeType >= HI_UNF_AVPLAY_INVOKE_BUTT)
    {
        HI_ERR_AVPLAY("para enInvokeType is invalid.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (!pPara)
    {
        HI_ERR_AVPLAY("para pPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    memset(&stVidFrame, 0x0, sizeof(HI_DRV_VIDEO_FRAME_S));
    memset(&stPlayInfo, 0x0, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
    memset(&stVidPrivate, 0x0, sizeof(HI_DRV_VIDEO_PRIVATE_S));

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_UNF_AVPLAY_INVOKE_VCODEC == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_AVPLAY("vid chn is close, can not set vcodec cmd.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_VDEC_Invoke(pAvplay->hVdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_WARN_AVPLAY("HI_MPI_VDEC_Invoke failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_ACODEC == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_AVPLAY("aud chn is close, can not set acodec cmd.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_ADEC_SetCodecCmd(pAvplay->hAdec, pPara);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("ADEC_SetCodecCmd failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_INVOKE_GET_PRIV_PLAYINFO == enInvokeType)
    {
        if (HI_INVALID_HANDLE == pAvplay->MasterFrmChn.hWindow)
        {
            HI_ERR_AVPLAY("AVPLAY has not attach master window.\n");
            AVPLAY_INST_UNLOCK(Id);
            return HI_ERR_AVPLAY_INVALID_OPT;
        }

        Ret = HI_MPI_WIN_GetLatestFrameInfo(pAvplay->MasterFrmChn.hWindow, &stVidFrame);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_AVPLAY("HI_MPI_WIN_GetLatestFrameInfo failed.\n");
        }

        stPlayInfo.u32LastPts = stVidFrame.u32Pts;

        memcpy(&stVidPrivate, (HI_DRV_VIDEO_PRIVATE_S *)(stVidFrame.u32Priv), sizeof(HI_DRV_VIDEO_PRIVATE_S));

        stPlayInfo.u32LastPlayTime = stVidPrivate.u32PrivDispTime;

        stPlayInfo.u32DispOptimizeFlag = pAvplay->u32DispOptimizeFlag;

        memcpy((HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S *)pPara, &stPlayInfo, sizeof(HI_UNF_AVPLAY_PRIVATE_STATUS_INFO_S));
    }
    else if (HI_UNF_AVPLAY_INVOKE_SET_DISP_OPTIMIZE_FLAG == enInvokeType)
    {
        pAvplay->u32DispOptimizeFlag = *(HI_U32 *)pPara;
    }
    else if (HI_UNF_AVPLAY_INVOKE_SET_SYNC_MODE == enInvokeType)
    {
        if (*(HI_U32 *)pPara == 1)
        {
            bUseStopRegion = HI_FALSE;
            (HI_VOID)HI_MPI_SYNC_SetExtInfo(pAvplay->hSync, SYNC_EXT_INFO_STOP_REGION, (HI_VOID *)bUseStopRegion);
        }
    }

    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}


HI_S32 HI_MPI_AVPLAY_AcqUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_AcqUserData(pAvplay->hVdec, pstUserData, penType);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_RlsUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S* pstUserData)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if ((HI_INVALID_HANDLE == hAvplay))
    {
        HI_ERR_AVPLAY("para is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (!pAvplay->VidEnable)
    {
        HI_ERR_AVPLAY("Vid chan is not start.\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_RlsUserData(pAvplay->hVdec, pstUserData);
    if (HI_SUCCESS != Ret)
    {
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_GetVidChnOpenParam(HI_HANDLE hAvplay, HI_UNF_AVPLAY_OPEN_OPT_S *pstOpenPara)
{
    HI_S32      Ret;
    HI_U32      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S   *pAvplay;

    if (HI_NULL == pstOpenPara)
    {
        HI_ERR_AVPLAY("pstOpenPara is null.\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_AVPLAY("Vid Chan is not open!\n");
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    Ret = HI_MPI_VDEC_GetChanOpenParam(pAvplay->hVdec, pstOpenPara);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("HI_MPI_VDEC_GetChanOpenParam ERR, Ret=%#x\n", Ret);
        AVPLAY_INST_UNLOCK(Id);
        return HI_ERR_AVPLAY_INVALID_OPT;
    }

    AVPLAY_INST_UNLOCK(Id);
    return HI_SUCCESS;
}

HI_S32 HI_MPI_AVPLAY_UseExternalBuffer(HI_HANDLE hAvplay, HI_MPI_EXT_BUFFER_S* pstExtBuf)
{
    HI_S32                  Ret;
    HI_U32                  Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S               *pAvplay;
    VDEC_BUFFER_ATTR_S      stVdecAttr;
    HI_U32                  i;

    if (HI_NULL == pstExtBuf)
    {
        HI_ERR_AVPLAY("invalid external buffer\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);

    stVdecAttr.u32BufNum = pstExtBuf->u32BufCnt;
    stVdecAttr.u32Stride = pstExtBuf->u32Stride;
    stVdecAttr.u32BufSize = pstExtBuf->u32FrameBufSize;
    stVdecAttr.u32MetaBufSize = pstExtBuf->u32MetadataBufSize;

    for (i = 0; i < pstExtBuf->u32BufCnt; i++)
    {
        stVdecAttr.u32UsrVirAddr[i] = 0;
        stVdecAttr.u32PhyAddr[i] = pstExtBuf->au32FrameBuffer[i];
        stVdecAttr.u32UsrVirAddr_meta[i] = 0;
        stVdecAttr.u32PhyAddr_meta[i] = pstExtBuf->au32MetadataBuf[i];
    }

    Ret = HI_MPI_VDEC_SetExternBufferState(pAvplay->hVdec, VDEC_EXTBUFFER_STATE_STOP);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("stop external buffer manager failed");
    }
    Ret = HI_MPI_VDEC_SetExternBuffer(pAvplay->hVdec, &stVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("Set vdec external buffer failed");
        goto out;
    }

    Ret = HI_MPI_VDEC_SetExternBufferState(pAvplay->hVdec, VDEC_EXTBUFFER_STATE_START);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("stop external buffer manager failed");
    }
out:
    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);
    return Ret;
}

HI_S32 HI_MPI_AVPLAY_DeleteExternalBuffer(HI_HANDLE hAvplay, HI_MPI_EXT_BUFFER_S* pstExtBuf)
{
    HI_S32                      Ret;
    HI_U32                      Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                   *pAvplay;
    HI_U32                      i;
    VDEC_FRAMEBUFFER_STATE_E    state = VDEC_BUF_STATE_BUTT;
    HI_S32                      WaitTime = 0;

    if (HI_NULL == pstExtBuf)
    {
        HI_ERR_AVPLAY("invalid external buffer\n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    AVPLAY_ThreadMutex_Lock(&pAvplay->AvplayThreadMutex);

    Ret = HI_MPI_VDEC_SetExternBufferState(pAvplay->hVdec, VDEC_EXTBUFFER_STATE_STOP);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("stop external buffer manager failed");
    }
    /* may be only stop vidchannel,avoid there is frame at avplay, when stop avplay, we drop this frame*/
    if (HI_TRUE == pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO])
    {
        /*Release vpss frame*/
        (HI_VOID)AVPLAY_RelAllChnFrame(pAvplay);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_VDEC_VO] = HI_FALSE;
        HI_INFO_AVPLAY("release avplay frame success");
    }

    /* release frame in virtual window */
    for (i = 0; i < AVPLAY_MAX_VIR_FRMCHAN; i++)
    {
        if (HI_INVALID_HANDLE != pAvplay->VirFrmChn[i].hWindow)
        {
            Ret = HI_MPI_WIN_Reset(pAvplay->VirFrmChn[i].hWindow, HI_DRV_WIN_SWITCH_BLACK);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_AVPLAY("reset window failed");
            }
        }
    }

    for (i = 0; i < pstExtBuf->u32BufCnt; i++)
    {
        WaitTime = 0;
        while (WaitTime < 50)
        {
            Ret = HI_MPI_VDEC_CheckAndDeleteExtBuffer(pAvplay->hVdec, pstExtBuf->au32FrameBuffer[i], &state);
            if (Ret != HI_SUCCESS || (state == VDEC_BUF_STATE_IN_USE))
            {
                HI_ERR_AVPLAY("delete buffer %#x from vdec failed, state:%d, Ret:%d\n", pstExtBuf->au32FrameBuffer[i], state, Ret);
                usleep(1000*10);
                WaitTime++;
                continue;
            }
            HI_INFO_AVPLAY("delete buffer %#x from vdec successed, state:%d, Ret:%d\n", pstExtBuf->au32FrameBuffer[i], state, Ret);
            break;
        }
    }
    Ret = HI_MPI_VDEC_SetExternBufferState(pAvplay->hVdec, VDEC_EXTBUFFER_STATE_START);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_AVPLAY("start external buffer manager failed");
    }

    AVPLAY_ThreadMutex_UnLock(&pAvplay->AvplayThreadMutex);
    AVPLAY_INST_UNLOCK(Id);

    return Ret;
}

HI_S32 HI_MPI_AVPLAY_CalculateFRC(HI_HANDLE hAvplay, HI_UNF_VIDEO_FRAME_INFO_S* pstFrame,
        HI_U32 u32RefreshRate, HI_S32* ps32RepeatCnt)
{
    HI_U32                          Id = GET_AVPLAY_ID(hAvplay);
    AVPLAY_S                       *pAvplay;
    HI_UNF_AVPLAY_FRMRATE_PARAM_S   stFrameRate;

    if (HI_NULL == pstFrame || NULL == ps32RepeatCnt)
    {
        HI_ERR_AVPLAY("invalid parameter \n");
        return HI_ERR_AVPLAY_NULL_PTR;
    }

    AVPLAY_INST_LOCK_CHECK(hAvplay, Id);

    memset(&stFrameRate, 0, sizeof(HI_UNF_AVPLAY_FRMRATE_PARAM_S));
    HI_MPI_VDEC_GetChanFrmRate(pAvplay->hVdec, &stFrameRate);

    if (stFrameRate.enFrmRateType == HI_UNF_AVPLAY_FRMRATE_TYPE_USER)
    {
        if (   (HI_UNF_VIDEO_FIELD_TOP      == pstFrame->enFieldMode)
            || (HI_UNF_VIDEO_FIELD_BOTTOM   == pstFrame->enFieldMode) )
        {
            pAvplay->FrcParamCfg.u32InRate = (stFrameRate.stSetFrmRate.u32fpsInteger * 100
                                         + stFrameRate.stSetFrmRate.u32fpsDecimal / 10) * 2;
        }
        else
        {
            pAvplay->FrcParamCfg.u32InRate = stFrameRate.stSetFrmRate.u32fpsInteger * 100
                                         + stFrameRate.stSetFrmRate.u32fpsDecimal / 10;
        }
    }
    else
    {
        pAvplay->FrcParamCfg.u32InRate = pstFrame->stFrameRate.u32fpsInteger * 100
                                        + pstFrame->stFrameRate.u32fpsDecimal /10;
    }

    pAvplay->FrcParamCfg.u32OutRate = u32RefreshRate;

    /*do frc for every the frame*/
    (HI_VOID)AVPLAY_FrcCalculate(&pAvplay->FrcCalAlg, &pAvplay->FrcParamCfg, &pAvplay->FrcCtrlInfo);

    /* sometimes(such as pvr smooth tplay), vdec set u32PlayTime, means this frame must repeat */
    *ps32RepeatCnt = (1 + pAvplay->FrcCtrlInfo.s32FrmState);// * (1 + pstVideoPriv->u32PlayTime);

    AVPLAY_INST_UNLOCK(Id);

    return HI_SUCCESS;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

