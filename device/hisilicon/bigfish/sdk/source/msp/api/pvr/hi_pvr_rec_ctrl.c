/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : hi_pvr_rec_ctrl.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2008/04/10
  Description   : RECORD module
  History       :
  1.Date        : 2008/04/10
    Author      : q46153
    Modification: Created file

******************************************************************************/

#include <errno.h>
#include <sched.h>
#include <pthread.h>
#include <signal.h>
#include "hi_type.h"
#include "hi_debug.h"

#include "hi_drv_struct.h"

#include "pvr_debug.h"
#include "hi_pvr_rec_ctrl.h"
#include "hi_pvr_play_ctrl.h"
#include "hi_pvr_intf.h"
#include "hi_pvr_index.h"
#include "hi_mpi_demux.h"
#include "hi_drv_pvr.h"
#include "hi_mpi_mem.h"


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif
//#define DUMP_DMX_DATA /*Set this flag  when you want watch the source data from demux,it will save these data in file linear*/
HI_S32 g_s32PvrFd = -1;      /*PVR file description */
char api_pathname_pvr[] = "/dev/" UMAP_DEVNAME_PVR;

#ifdef DUMP_DMX_DATA
static FILE *g_pvrfpTSReceive = NULL; /* handle of file */
static FILE *g_pvrfpIdxReceive = NULL; /* handle of file */
#endif
/* init flag of record module                                               */
STATIC PVR_REC_COMM_S g_stRecInit;

/* all information of record channel                                        */
STATIC PVR_REC_CHN_S g_stPvrRecChns[PVR_REC_MAX_CHN_NUM];

#define PVR_GET_RECPTR_BY_CHNID(chnId) (&g_stPvrRecChns[chnId - PVR_REC_START_NUM])
#define PVR_REC_IS_REWIND(pstRecAttr) ((pstRecAttr)->bRewind)
#define PVR_REC_IS_FIXSIZE(pstRecAttr) ((((pstRecAttr)->u64MaxFileSize > 0) || ((pstRecAttr)->u64MaxTimeInMs > 0)) && !((pstRecAttr)->bRewind))

#ifdef PVR_PROC_SUPPORT
static HI_PROC_ENTRY_S g_stPvrRecProcEntry;

static HI_S32 PVRRecShowProc(HI_PROC_SHOW_BUFFER_S * pstBuf, HI_VOID *pPrivData)
{    
    HI_U32 i = 0, j = 0;
    HI_U32 u32VidType = 0;
    PVR_REC_CHN_S *pChnAttr = g_stPvrRecChns;
    HI_S8 pStreamType[][32] = {"MPEG2", "MPEG4 DIVX4 DIVX5", "AVS", "H263", "H264",
                             "REAL8", "REAL9", "VC-1", "VP6", "VP6F", "VP6A", "MJPEG",
                             "SORENSON SPARK", "DIVX3", "RAW", "JPEG", "VP8", "MSMPEG4V1",
                             "MSMPEG4V2", "MSVIDEO1", "WMV1", "WMV2", "RV10", "RV20",
                             "SVQ1", "SVQ3", "H261", "VP3", "VP5", "CINEPAK", "INDEO2",
                             "INDEO3", "INDEO4", "INDEO5", "MJPEGB", "MVC", "HEVC", "DV", "INVALID"};
    HI_S8 pEventType[][32] = {"DISKFUL", "ERROR", "OVER FIX", "REACH PLAY", "DISK SLOW", "RESV", "RESV", "RESV"};
    
    HI_PROC_Printf(pstBuf, "\n---------Hisilicon PVR Recording channel Info---------\n");

    for(i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        if ((pChnAttr[i].enState != HI_UNF_PVR_REC_STATE_INVALID) &&
            (pChnAttr[i].enState != HI_UNF_PVR_REC_STATE_STOPPING) &&
            (pChnAttr[i].enState != HI_UNF_PVR_REC_STATE_STOP) &&
            (pChnAttr[i].enState != HI_UNF_PVR_REC_STATE_BUTT))
        {
            if (pChnAttr[i].IndexHandle != HI_NULL)
            {
                u32VidType = PVR_Index_GetVtype(pChnAttr[i].IndexHandle) - 100;
                u32VidType = (u32VidType > HI_UNF_VCODEC_TYPE_BUTT) ? HI_UNF_VCODEC_TYPE_BUTT : u32VidType;
            }
            
            HI_PROC_Printf(pstBuf, "chan %d infomation:\n", i);
            if (pChnAttr[i].RecordCacheThread != HI_NULL)
                HI_PROC_Printf(pstBuf, "\tL2Cache support :%s\n", "Yes");
            else
                HI_PROC_Printf(pstBuf, "\tL2Cache support :%s\n", "No");
            HI_PROC_Printf(pstBuf, "\tRec filename    :%s\n", pChnAttr[i].stUserCfg.szFileName);
            HI_PROC_Printf(pstBuf, "\tStream type     :%s\n", pStreamType[u32VidType]);
            HI_PROC_Printf(pstBuf, "\tDemuxID         :%d\n", pChnAttr[i].stUserCfg.u32DemuxID);
            HI_PROC_Printf(pstBuf, "\tRecord State    :%d\n", pChnAttr[i].enState);
            HI_PROC_Printf(pstBuf, "\tRewind          :%d\n", pChnAttr[i].stUserCfg.bRewind);
            if (pChnAttr[i].stUserCfg.bRewind)
            {
                if(PVR_INDEX_REWIND_BY_TIME == pChnAttr[i].IndexHandle->stCycMgr.enRewindType)
                {
                    
                    HI_PROC_Printf(pstBuf, "\tRewind Type     :%s\n", "TIME");
                    HI_PROC_Printf(pstBuf, "\tRewind time     :%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32MaxCycTimeInMs);
                }
                else
                {
                    HI_PROC_Printf(pstBuf, "\tRewind Type     :%s\n", "SIZE");
                    HI_PROC_Printf(pstBuf, "\tRewind size     :%#llx\n", pChnAttr[i].IndexHandle->stCycMgr.u64MaxCycSize);
                }
                
                HI_PROC_Printf(pstBuf, "\tRewind times    :%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32CycTimes);
            }
            HI_PROC_Printf(pstBuf, "\tMax size        :%#llx\n", pChnAttr[i].stUserCfg.u64MaxFileSize); 
            HI_PROC_Printf(pstBuf, "\tMax time        :%#lld\n", pChnAttr[i].stUserCfg.u64MaxTimeInMs); 
            HI_PROC_Printf(pstBuf, "\tUserData size   :%d\n", pChnAttr[i].stUserCfg.u32UsrDataInfoSize);
            HI_PROC_Printf(pstBuf, "\tClearStream     :%d\n", pChnAttr[i].stUserCfg.bIsClearStream);
            HI_PROC_Printf(pstBuf, "\tIndexType       :%d\n", pChnAttr[i].stUserCfg.enIndexType);
            HI_PROC_Printf(pstBuf, "\tIndexPid        :%#x/%d\n", pChnAttr[i].stUserCfg.u32IndexPid, pChnAttr[i].stUserCfg.u32IndexPid);
            if (pChnAttr[i].IndexHandle != HI_NULL)
            {
                HI_PROC_Printf(pstBuf, "\tGlobal offset   :%#llx\n", pChnAttr[i].IndexHandle->stCurRecFrame.u64GlobalOffset);
                HI_PROC_Printf(pstBuf, "\tFile offset     :%#llx\n", pChnAttr[i].IndexHandle->stCurRecFrame.u64Offset);
                HI_PROC_Printf(pstBuf, "\tIndex Write     :%d\n", pChnAttr[i].IndexHandle->u32WriteFrame);
                HI_PROC_Printf(pstBuf, "\tCurrentTime(ms) :%d\n", pChnAttr[i].IndexHandle->stCurRecFrame.u32DisplayTimeMs);
                HI_PROC_Printf(pstBuf, "\tIndexPos S/E/L  :%d/%d/%d\n", pChnAttr[i].IndexHandle->stCycMgr.u32StartFrame, 
                                                                        pChnAttr[i].IndexHandle->stCycMgr.u32EndFrame, 
                                                                        pChnAttr[i].IndexHandle->stCycMgr.u32LastFrame);
            }
            HI_PROC_Printf(pstBuf, "\tEvent history\n");
            for(j = 0; j < PVR_REC_EVENT_HISTORY_NUM; j++)
            {
                if (pChnAttr[i].stEventHistory.u32Write < PVR_REC_EVENT_HISTORY_NUM)
                {
                    if (pChnAttr[i].stEventHistory.enEventHistory[j] != HI_UNF_PVR_EVENT_BUTT)
                        HI_PROC_Printf(pstBuf, "\t  Event         :%s\n", pEventType[pChnAttr[i].stEventHistory.enEventHistory[j] & 0x7]);
                }
                else
                {
                    HI_PROC_Printf(pstBuf, "\t  Event         :%s\n", 
                        pEventType[pChnAttr[i].stEventHistory.enEventHistory[(pChnAttr[i].stEventHistory.u32Write + j)%PVR_REC_EVENT_HISTORY_NUM] & 0x7]);
                }
                
            }
        }
    }
    
    return HI_SUCCESS;
}
#endif

STATIC INLINE HI_S32 PVRRecDevInit(HI_VOID)
{
    int fd;

    if (g_s32PvrFd == -1)
    {
        fd = open (api_pathname_pvr, O_RDWR, 0);

        if (fd < 0)
        {
            HI_FATAL_PVR("Cannot open '%s'\n", api_pathname_pvr);
            return HI_FAILURE;
        }

        g_s32PvrFd = fd;
    }

    return HI_SUCCESS;
}

STATIC INLINE PVR_REC_CHN_S * PVRRecFindFreeChn(HI_VOID)
{
    PVR_REC_CHN_S * pChnAttr = NULL;

#if 0 /* not support multi-process */
    HI_U32 i;

    /* find a free play channel */
    for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        if (g_stPvrRecChns[i].enState == HI_UNF_PVR_REC_STATE_INVALID)
        {
            pChnAttr = &g_stPvrRecChns[i];
            pChnAttr->enState = HI_UNF_PVR_REC_STATE_INIT;
            break;
        }
    }

#else /* support multi-process by kernel manage resources */
    HI_U32 ChanId;
    if (HI_SUCCESS != ioctl(g_s32PvrFd, CMD_PVR_CREATE_REC_CHN, (HI_S32)&ChanId))
    {
        HI_FATAL_PVR("pvr rec creat channel error\n");
        return HI_NULL;
    }

    HI_ASSERT(g_stPvrRecChns[ChanId].enState == HI_UNF_PVR_REC_STATE_INVALID);
    pChnAttr = &g_stPvrRecChns[ChanId];
    PVR_LOCK(&(pChnAttr->stMutex));
    pChnAttr->enState = HI_UNF_PVR_REC_STATE_INIT;
    PVR_UNLOCK(&(pChnAttr->stMutex));
#endif


    return pChnAttr;
}

/*
STATIC INLINE HI_VOID PVRRecCheckExistFile(HI_CHAR* pTsFileName)
{
    if (PVR_CHECK_FILE_EXIST(pTsFileName))
    {
        HI_CHAR szIdxFileName[PVR_MAX_FILENAME_LEN] = {0};
        snprintf(szIdxFileName, sizeof(szIdxFileName),"%s.idx", pTsFileName);
        truncate(pTsFileName, 0);
        truncate(szIdxFileName, 0);
    }

    return;
}
*/
STATIC INLINE HI_S32 PVRRecCheckUserCfg(const HI_UNF_PVR_REC_ATTR_S *pUserCfg)
{
    HI_U32 i;
    HI_SYS_VERSION_S stSysVer = {0};

    CHECK_REC_DEMUX_ID((HI_S32)(pUserCfg->u32DemuxID));

    /* we should determine which demux_id is free                           */

    if ((HI_UNF_PVR_STREAM_TYPE_TS != pUserCfg->enStreamType)
        && (HI_UNF_PVR_STREAM_TYPE_ALL_TS != pUserCfg->enStreamType))
    {
        HI_ERR_PVR("enStreamType error, not support this stream type:(%d)\n", pUserCfg->enStreamType);
        return HI_ERR_PVR_INVALID_PARA;
    }

    /* all ts record, just only used for analysing, not supported cipher and rewind */
    if (HI_UNF_PVR_STREAM_TYPE_ALL_TS == pUserCfg->enStreamType)
    {
        if (pUserCfg->bRewind || pUserCfg->stEncryptCfg.bDoCipher)
        {
            HI_ERR_PVR("All Ts record can't support rewind or ciphter\n");
            return HI_ERR_PVR_INVALID_PARA;
        }
    }

    if (pUserCfg->enIndexType >= HI_UNF_PVR_REC_INDEX_TYPE_BUTT)
    {
        HI_ERR_PVR("pUserCfg->enIndexType(%d) >= HI_UNF_PVR_REC_INDEX_TYPE_BUTT\n", pUserCfg->enIndexType);
        return HI_ERR_PVR_INVALID_PARA;
    }

    if (HI_UNF_PVR_REC_INDEX_TYPE_VIDEO == pUserCfg->enIndexType)
    {
        if (pUserCfg->enIndexVidType >= HI_UNF_VCODEC_TYPE_BUTT)
        {
            HI_ERR_PVR("pUserCfg->enIndexVidType(%d) >= HI_UNF_VCODEC_TYPE_BUTT\n", pUserCfg->enIndexVidType);
            return HI_ERR_PVR_INVALID_PARA;
        }
    }

    if ((pUserCfg->u32DavBufSize % PVR_FIFO_WRITE_BLOCK_SIZE)
        || (!((pUserCfg->u32DavBufSize >= PVR_REC_MIN_DAV_BUF)
              && (pUserCfg->u32DavBufSize <= PVR_REC_MAX_DAV_BUF))))
    {
        HI_ERR_PVR("invalid dav buf size:%u\n", pUserCfg->u32DavBufSize);
        return HI_ERR_PVR_INVALID_PARA;
    }

    if ((pUserCfg->u32ScdBufSize % 28)
        || (!((pUserCfg->u32ScdBufSize >= PVR_REC_MIN_SC_BUF)
              && (pUserCfg->u32ScdBufSize <= PVR_REC_MAX_SC_BUF))))
    {
        HI_ERR_PVR("invalid scd buf size:%u\n", pUserCfg->u32ScdBufSize);
        return HI_ERR_PVR_INVALID_PARA;
    }

    PVR_CHECK_CIPHER_CFG(&pUserCfg->stEncryptCfg);

    /*  if record file name ok */
    if (((strlen(pUserCfg->szFileName)) >= PVR_MAX_FILENAME_LEN)
        || (strlen(pUserCfg->szFileName) != pUserCfg->u32FileNameLen))
    {
        HI_ERR_PVR("Invalid file name, file name len=%d!\n", pUserCfg->u32FileNameLen);
        return HI_ERR_PVR_FILE_INVALID_FNAME;
    }

    if (pUserCfg->u32UsrDataInfoSize > PVR_MAX_USERDATA_LEN)
    {
        HI_ERR_PVR("u32UsrDataInfoSize(%u) too larger\n", pUserCfg->u32UsrDataInfoSize);
        return HI_ERR_PVR_REC_INVALID_UDSIZE;
    }

    /* check for cycle record. for cycle record, the length should more than PVR_MIN_CYC_SIZE, and it MUST not be zero */
    if (PVR_REC_IS_REWIND(pUserCfg))
    {
        if ((pUserCfg->u64MaxFileSize < PVR_MIN_CYC_SIZE)
            &&(pUserCfg->u64MaxTimeInMs < PVR_MIN_CYC_TIMEMS))
        {
            HI_ERR_PVR("record file rewind, but file size:%llu(time:%llu) less than %llu(%llu).\n",
                   pUserCfg->u64MaxFileSize, pUserCfg->u64MaxTimeInMs, PVR_MIN_CYC_SIZE, PVR_MIN_CYC_TIMEMS);
            return HI_ERR_PVR_REC_INVALID_FSIZE;
        }
    }
    else
    {
        /* the length too less and not equal zero. zero means no limited */
        if (((pUserCfg->u64MaxFileSize > 0)&&(pUserCfg->u64MaxFileSize < PVR_MIN_CYC_SIZE))
            ||((pUserCfg->u64MaxTimeInMs > 0)&&(pUserCfg->u64MaxTimeInMs < PVR_MIN_CYC_TIMEMS)))
        {
            HI_ERR_PVR("record file not rewind, but file size:%llu(time:%llu) less than %llu(%llu) and not 0.\n",
                   pUserCfg->u64MaxFileSize, pUserCfg->u64MaxTimeInMs, PVR_MIN_CYC_SIZE, PVR_MIN_CYC_TIMEMS);
            return HI_ERR_PVR_REC_INVALID_FSIZE;
        }
    }

    for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        /* check whether the demux id used or not */
        if (HI_UNF_PVR_REC_STATE_INVALID != g_stPvrRecChns[i].enState)
        {
            if (HI_SUCCESS != HI_SYS_GetVersion(&stSysVer))
            {
                HI_FATAL_PVR("Cannot get system version\n");
                return HI_FAILURE;
            }

            switch (stSysVer.enChipTypeHardWare)
            {
                case HI_CHIP_TYPE_HI3716M:
                    if ((HI_CHIP_VERSION_V410 == stSysVer.enChipVersion) || 
                        (HI_CHIP_VERSION_V420 == stSysVer.enChipVersion))
                        break;
                default:
                    if (g_stPvrRecChns[i].stUserCfg.u32DemuxID == pUserCfg->u32DemuxID)
                    {
                        HI_ERR_PVR("demux %d already has been used to record.\n", pUserCfg->u32DemuxID);
                        return HI_ERR_PVR_ALREADY;
                    }
            }

            /* recording for the same file name or not*/
            if (0 == strncmp(g_stPvrRecChns[i].stUserCfg.szFileName, pUserCfg->szFileName,sizeof(pUserCfg->szFileName)))
            {
                HI_ERR_PVR("file %s was exist to be recording.\n", pUserCfg->szFileName);
                return HI_ERR_PVR_FILE_EXIST;
            }
        }
    }

    /* check if stream file exist!                                          */
    HI_PVR_RemoveFile(pUserCfg->szFileName);

    //PVRRecCheckExistFile((HI_U8*)pUserCfg->szFileName);

    return HI_SUCCESS;
}

HI_S32 PVRRecCheckRecBufStatus(HI_U32 u32CurOverflowTimes, PVR_REC_CHN_S *pRecChn)
{
    HI_U32 u32OverflowTimes = u32CurOverflowTimes;
    HI_UNF_DMX_RECBUF_STATUS_S stRecBufStatus = {0};
    
    if (HI_SUCCESS == HI_UNF_DMX_GetRecBufferStatus(pRecChn->DemuxRecHandle, &stRecBufStatus))
    {
        /* used size large than 90% of ts buffer for 3 times */
        if (stRecBufStatus.u32UsedSize > stRecBufStatus.u32BufSize * 90 / 100)
        {
            u32OverflowTimes++;
            if (u32OverflowTimes > 3)
            {
                u32OverflowTimes = 0;
                PVR_Intf_DoEventCallback(pRecChn->u32ChnID, HI_UNF_PVR_EVENT_REC_DISK_SLOW, 0);
                PVR_Intf_AddEventHistory(&pRecChn->stEventHistory,HI_UNF_PVR_EVENT_REC_DISK_SLOW);
            }
        }
        else
        {
            u32OverflowTimes = 0;
        }
    }

    return u32OverflowTimes;
}

#ifdef HI_PVR_L2_CACHE_SUPPORT
static HI_S32 PVRRecTsQueueInit(PVR_REC_CHN_S  *pChnAttr)  
{
    /*PVR Queue buffer size is 2 times of demux ts buffer */
    HI_U32 u32BufSize = 0;

    u32BufSize = 2 * pChnAttr->stUserCfg.u32DavBufSize;

    pChnAttr->stRecTsQueue.u32Size = u32BufSize;  
    pChnAttr->stRecTsQueue.u32Flag = PVR_REC_TS_QUEUE_EMPTY;  
    pChnAttr->stRecTsQueue.pu8RecData = HI_NULL;

    pChnAttr->stRecTsQueue.pu8RecData = HI_MALLOC(HI_ID_PVR, u32BufSize);

    if (HI_NULL != pChnAttr->stRecTsQueue.pu8RecData)
    {
        memset(pChnAttr->stRecTsQueue.pu8RecData, 0, u32BufSize);
    }
    else
    {
        return HI_FAILURE;
    }

    pChnAttr->stRecTsQueue.pu8Head = pChnAttr->stRecTsQueue.pu8RecData;  
    pChnAttr->stRecTsQueue.pu8Tail = pChnAttr->stRecTsQueue.pu8RecData;
    pChnAttr->stRecTsQueue.u64HeadGolbalOffset = 0;
    pChnAttr->stRecTsQueue.u64TailGolbalOffset = 0;

    return HI_SUCCESS;  
}  

static HI_VOID PVRRecTsQueueDeInit(PVR_REC_CHN_S  *pChnAttr)  
{  

    pChnAttr->stRecTsQueue.u32Size = 0;  
    pChnAttr->stRecTsQueue.pu8Head = HI_NULL;  
    pChnAttr->stRecTsQueue.pu8Tail = HI_NULL;  
    pChnAttr->stRecTsQueue.u32Flag = PVR_REC_TS_QUEUE_EMPTY; 
    pChnAttr->stRecTsQueue.u64HeadGolbalOffset = 0;
    pChnAttr->stRecTsQueue.u64TailGolbalOffset = 0;
    
    free(pChnAttr->stRecTsQueue.pu8RecData);
    pChnAttr->stRecTsQueue.pu8RecData = HI_NULL;

    return ;   
}

HI_S32 PVRRecTsQueueGetValidSize(PVR_REC_CHN_S *pChnAttr)  
{
    HI_U32 u32ValidSize = 0;
    PVR_REC_TS_DATA_QUEUE_S *pRecQueue = &pChnAttr->stRecTsQueue;

    if ((PVR_REC_TS_QUEUE_EMPTY == pRecQueue->u32Flag) &&
        (pRecQueue->pu8Head == pRecQueue->pu8Tail))
    {
        u32ValidSize = pRecQueue->u32Size;
    }
    else if ((PVR_REC_TS_QUEUE_FULL == pRecQueue->u32Flag)&&
              (pRecQueue->pu8Head == pRecQueue->pu8Tail))
    {
        u32ValidSize = 0;
    }
    else
    {
        if (pRecQueue->pu8Head > pRecQueue->pu8Tail)
        {
            u32ValidSize = (HI_U32)pRecQueue->pu8Head - (HI_U32)pRecQueue->pu8Tail;
        }
        else
        {
            u32ValidSize = pRecQueue->u32Size + (HI_U32)pRecQueue->pu8Head - (HI_U32)pRecQueue->pu8Tail;
        }
    }

    return u32ValidSize;
}

HI_S32 PVRRecTsQueuePush(PVR_REC_CHN_S  *pChnAttr, HI_U8 *psRecData, HI_U32 u32Len)  
{  
    HI_U32 u32CpySize = 0;
    HI_U32 u32QueueEnd = 0;
    HI_U32 u32QueueStart = 0;
    HI_U32 u32QueueHead = 0;
    HI_U32 u32QueueTail = 0;
    HI_U32 u32QueueValidSize = 0;
    PVR_REC_TS_DATA_QUEUE_S *pRecQueue = &pChnAttr->stRecTsQueue;

    if ((PVR_REC_TS_QUEUE_FULL == pRecQueue->u32Flag) &&
        (pRecQueue->pu8Head == pRecQueue->pu8Tail))
    {
        return HI_FAILURE;
    }
    
    u32QueueStart = (HI_U32)pRecQueue->pu8RecData;
    u32QueueEnd = u32QueueStart + pRecQueue->u32Size;  
    u32QueueHead = (HI_U32)pRecQueue->pu8Head - u32QueueStart;
    u32QueueTail = (HI_U32)pRecQueue->pu8Tail - u32QueueStart;

    u32QueueValidSize = PVRRecTsQueueGetValidSize(pChnAttr);

    if(u32Len > u32QueueValidSize)
    {
        HI_WARN_PVR("Rec queue will be FULL!! bufstart=%#x bufend=%#x size=%#x head=%#x tail=%#x len=%#x\n",
                     u32QueueStart,
                     u32QueueEnd,
                     pRecQueue->u32Size,
                     u32QueueHead,
                     u32QueueTail,
                     u32Len);

        return HI_FAILURE;
    }

    if((u32QueueTail + u32Len) > pRecQueue->u32Size)
    {
        u32CpySize = pRecQueue->u32Size - u32QueueTail;
        
        memcpy(pRecQueue->pu8Tail, psRecData, u32CpySize);
        memcpy(pRecQueue->pu8RecData, (HI_U8 *)((HI_U32)psRecData + u32CpySize), (u32Len - u32CpySize));
    }
    else
    {
        memcpy(pRecQueue->pu8Tail, psRecData, u32Len);
    }

    pRecQueue->pu8Tail = (HI_U8 *)(u32QueueStart + ((u32QueueTail + u32Len) % pRecQueue->u32Size));
    if ((HI_U32)pRecQueue->pu8Tail == u32QueueEnd)
    {
        pRecQueue->pu8Tail = pRecQueue->pu8RecData;
    }

    /*For debug*/
    if((HI_U32)pRecQueue->pu8Tail > u32QueueEnd)
    {
        HI_ERR_PVR("Chn=%d Qstart=%#x Qend=%#x Qhead=%#x Qtail=%#x NewQtail=%#x len=%#x\n",
                    pChnAttr->u32ChnID, u32QueueStart,u32QueueEnd,
                    u32QueueHead,u32QueueTail,(HI_U32)pRecQueue->pu8Tail,u32Len);
    }
    
    pRecQueue->u64TailGolbalOffset += u32Len;

    if((HI_U32)pRecQueue->pu8Tail == u32QueueHead)  
    {
        pRecQueue->u32Flag = PVR_REC_TS_QUEUE_FULL;  
    }  

    return HI_SUCCESS;    
}  
  
static HI_S32 PVRRecTsQueuePollBuff(PVR_REC_CHN_S *pChnAttr, HI_U8 **pTsBuffData, HI_U32 *pu32DataLen)  
{      
    HI_U32 u32PollSize = 0;
    HI_U32 u32QueueEnd = 0;
    HI_U32 u32QueueStart = 0;
    HI_U32 u32QueueHead = 0;
    HI_U32 u32QueueTail = 0;
    HI_U32 u32QueueUsedSize = 0;

    PVR_REC_TS_DATA_QUEUE_S *pRecQueue = &pChnAttr->stRecTsQueue;

    if ((PVR_REC_TS_QUEUE_EMPTY == pRecQueue->u32Flag) &&
        (pRecQueue->pu8Head == pRecQueue->pu8Tail))
    {
        *pTsBuffData = pRecQueue->pu8Head;
        *pu32DataLen = 0;
        return HI_FAILURE;
    }

    u32QueueStart = (HI_U32)pRecQueue->pu8RecData;
    u32QueueEnd = u32QueueStart + pRecQueue->u32Size;
    u32QueueHead = (HI_U32)pRecQueue->pu8Head - u32QueueStart;
    u32QueueTail = (HI_U32)pRecQueue->pu8Tail - u32QueueStart;

    if ((HI_U32)(pRecQueue->pu8Head) > u32QueueEnd)
    {
        HI_FATAL_PVR("Queue head %x is outside the queue %x\n",
                      (HI_U32)(pRecQueue->pu8Head), u32QueueEnd);
        return HI_FAILURE;
    }

    *pTsBuffData = pRecQueue->pu8Head;
    u32PollSize = PVR_REC_TS_QUEUE_BLOCK;

    u32QueueUsedSize = pRecQueue->u32Size - PVRRecTsQueueGetValidSize(pChnAttr);

    if(u32PollSize > u32QueueUsedSize)
    {
        if (u32QueueHead > u32QueueTail)
        {
            u32PollSize = pRecQueue->u32Size - u32QueueHead;
        }
        else
        {
            u32PollSize = u32QueueTail - u32QueueHead;
        }
    }

    if ((HI_U32)(pRecQueue->pu8Head) + u32PollSize > u32QueueEnd)
    {
        u32PollSize = u32QueueEnd - (HI_U32)(pRecQueue->pu8Head);
    }
    *pu32DataLen = u32PollSize;

    return HI_SUCCESS;  
} 

static HI_S32 PVRRecTsQueuePollHead(PVR_REC_CHN_S *pChnAttr, HI_U32 u32DataLen)  
{
    //HI_U32 u32PollSize = 0;
    HI_U32 u32QueueEnd = 0;
    HI_U32 u32QueueStart = 0;
    HI_U32 u32QueueHead = 0;
    HI_U32 u32QueueTail = 0;

    PVR_REC_TS_DATA_QUEUE_S *pRecQueue = &pChnAttr->stRecTsQueue;

    u32QueueStart = (HI_U32)pRecQueue->pu8RecData;
    u32QueueEnd = u32QueueStart + pRecQueue->u32Size;
    u32QueueHead = (HI_U32)pRecQueue->pu8Head - u32QueueStart;
    u32QueueTail = (HI_U32)pRecQueue->pu8Tail - u32QueueStart;

    pRecQueue->pu8Head = (HI_U8 *)(u32QueueStart + ((u32QueueHead + u32DataLen) % pRecQueue->u32Size));
    if ((HI_U32)pRecQueue->pu8Head == u32QueueEnd)
    {
        pRecQueue->pu8Head = pRecQueue->pu8RecData;
    }

    if((HI_U32)pRecQueue->pu8Head == u32QueueTail)  
    {  
       pRecQueue->u32Flag = PVR_REC_TS_QUEUE_EMPTY;  
    }   

    pRecQueue->u64HeadGolbalOffset += u32DataLen;

    /*For debug*/
    if (pRecQueue->u64HeadGolbalOffset > pRecQueue->u64TailGolbalOffset)
    {
        HI_ERR_PVR("Chn=%d Ghead=%#llx Gtail=%#llx len=%#x Qhead=%#x Qtail=%#x Qstart=%#x Qend=%#x Flag=%d\n",
                    pChnAttr->u32ChnID,
                    pRecQueue->u64HeadGolbalOffset, 
                    pRecQueue->u64TailGolbalOffset,
                    u32DataLen,
                    pRecQueue->pu8Head-u32QueueStart,
                    u32QueueTail,
                    u32QueueStart,
                    u32QueueEnd,
                    pRecQueue->u32Flag);
    }

    return HI_SUCCESS;  
}

#endif

STATIC HI_S32 PVRRecProcCipherEncrypt(PVR_REC_CHN_S *pRecChn, HI_U32 u32SrcPhyAddr, HI_U32 u32DestPhyAddr, HI_U32 u32ByteLength)
{
    HI_S32 ret = HI_SUCCESS;
    HI_U32 Len = 0;
    HI_U32 i = 0;
    HI_U32 TotalLen = u32ByteLength;

    if (!pRecChn->stUserCfg.stEncryptCfg.bDoCipher)
    {
        return HI_SUCCESS;
    }

    while ( TotalLen > 0 )
    {
        Len = (TotalLen >= PVR_CIPHER_MAX_LEN)?PVR_CIPHER_MAX_LEN:TotalLen;
        TotalLen -= Len;

        ret = HI_UNF_CIPHER_Encrypt(pRecChn->hCipher, 
                                    u32SrcPhyAddr + i*PVR_CIPHER_MAX_LEN, 
                                    u32DestPhyAddr+ i*PVR_CIPHER_MAX_LEN,  
                                    Len);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("HI_UNF_CIPHER_Encrypt failed:%#x!, u32SrcPhyAddr:0x%x,u32DestPhyAddr:0x%x,Len:0x%x\n",ret, u32SrcPhyAddr,u32DestPhyAddr,Len);
            return ret;
        }

        i++;
        if ( i > 20 )
        {
            HI_ERR_PVR("data len to be encrypt is too large(> 20M), Must be error!\n");
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;   
}

STATIC HI_S32 PVRRecProcExtCallBack(PVR_REC_CHN_S *pRecChn, 
                                    HI_UNF_DMX_REC_DATA_S *pstDmxTsData, 
                                    HI_U32 u32Length,
                                    HI_U64 u64OffsetInFile, 
                                    HI_U64 u64GlobalOffset)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32StartFrm;
    HI_U32 u32EndFrm;
    HI_U64            u64LenAdp = 0;
    HI_U64            u64OffsetAdp = 0;
    PVR_INDEX_ENTRY_S stStartFrame;
    PVR_INDEX_ENTRY_S stEndFrame;
    HI_UNF_PVR_DATA_ATTR_S stDataAttr;

    memset(&stStartFrame, 0, sizeof(PVR_INDEX_ENTRY_S));
    memset(&stEndFrame, 0, sizeof(PVR_INDEX_ENTRY_S));

    u32StartFrm = pRecChn->IndexHandle->stCycMgr.u32StartFrame;

    s32Ret = PVR_Index_GetFrameByNum(pRecChn->IndexHandle, &stStartFrame, u32StartFrm);
    if(HI_SUCCESS != s32Ret)
    {
        HI_WARN_PVR("Get Start Frame failed,ret=%d\n", s32Ret);
        stStartFrame.u64Offset = 0;
    }

    if (pRecChn->IndexHandle->stCycMgr.u32EndFrame > 0)
    {
        u32EndFrm = pRecChn->IndexHandle->stCycMgr.u32EndFrame;
    }
    else
    {
        u32EndFrm = pRecChn->IndexHandle->stCycMgr.u32LastFrame;
    }

    s32Ret = PVR_Index_GetFrameByNum(pRecChn->IndexHandle, &stEndFrame, u32EndFrm);
    if(HI_SUCCESS != s32Ret)
    {
        HI_WARN_PVR("Get End Frame failed,ret=%d\n",s32Ret);
        stEndFrame.u64Offset = 0;
    }

    stDataAttr.u32ChnID = pRecChn->u32ChnID;
    stDataAttr.u64FileStartPos = stStartFrame.u64Offset;
    stDataAttr.u64FileEndPos = stEndFrame.u64Offset;
    stDataAttr.u64GlobalOffset = u64GlobalOffset;
    stDataAttr.u64FileReadOffset = u64OffsetInFile;
    memset(stDataAttr.CurFileName, 0, sizeof(stDataAttr.CurFileName));
    PVRFileGetOffsetFName(pRecChn->dataFile, u64OffsetInFile, stDataAttr.CurFileName);
    PVR_Index_GetIdxFileName(stDataAttr.IdxFileName, pRecChn->stUserCfg.szFileName);

    u64LenAdp = u32Length;
    u64OffsetAdp = u64OffsetInFile;

    PVRFileGetRealOffset(pRecChn->dataFile, &u64OffsetAdp, &u64LenAdp);
    if(u64LenAdp < u32Length)
    {
        s32Ret = pRecChn->writeCallBack(&stDataAttr, pstDmxTsData->pDataAddr, pstDmxTsData->u32DataPhyAddr, (HI_U32)u64OffsetAdp, (HI_U32)u64LenAdp);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_PVR("write call back error:%x\n", s32Ret);
        }

        u64OffsetAdp = u64OffsetInFile + u64LenAdp;
        PVRFileGetRealOffset(pRecChn->dataFile, &u64OffsetAdp, NULL);
        PVRFileGetOffsetFName(pRecChn->dataFile, u64OffsetInFile + u32Length, stDataAttr.CurFileName);
        pstDmxTsData->pDataAddr += u64LenAdp;
        s32Ret = pRecChn->writeCallBack(&stDataAttr, pstDmxTsData->pDataAddr, pstDmxTsData->u32DataPhyAddr, (HI_U32)u64OffsetAdp, (HI_U32)(u32Length - u64LenAdp));
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_PVR("write call back error:%x\n", s32Ret);
        }
        pstDmxTsData->pDataAddr -= u64LenAdp;
    }
    else
    {
        s32Ret = pRecChn->writeCallBack(&stDataAttr, pstDmxTsData->pDataAddr, pstDmxTsData->u32DataPhyAddr, (HI_U32)u64OffsetAdp, (HI_U32)u64LenAdp);
        if (s32Ret != HI_SUCCESS)
        {
            HI_ERR_PVR("write call back error:%x\n", s32Ret);
        }
    }

    return HI_SUCCESS;
}

/* on recording, in sequence write some data into ts file */
STATIC HI_S32 PVRRecWriteStreamDirect(PVR_REC_CHN_S *pRecChn, HI_U8 *pu8Buf, HI_U32 u32Len, HI_U64 u64OffsetInFile)
//STATIC HI_S32 PVRRecWriteStreamDirect(PVR_REC_CHN_S *pRecChn, HI_UNF_DMX_REC_DATA_S stDmxTsData, HI_U32 len, HI_U64 u64OffsetInFile, HI_U64 u64GlobalOffset)
{
    ssize_t sizeWrite, sizeWriten = 0;

    /* try to cycle write*/
    do
    {
         sizeWrite = PVR_PWRITE64(&((const char *)pu8Buf)[sizeWriten],
                                 u32Len - (HI_U32)sizeWriten,
                                 pRecChn->dataFile,
                                 u64OffsetInFile + sizeWriten);
        if ((-1) == sizeWrite)
        {
            //lint -e774
            if (NULL != &errno)
            {
                if (EINTR == errno)
                {
                    HI_WARN_PVR("EINTR can't write ts. try:%u, addr:%p, fd:%d\n", u32Len, pu8Buf, pRecChn->dataFile);
                    continue;
                }
                else if (ENOSPC == errno)
                {
                    return HI_ERR_PVR_FILE_DISC_FULL;
                }
                else
                {
                    HI_ERR_PVR("can't write ts. try:%u, addr:%p, fd:%d\n", u32Len, pu8Buf, pRecChn->dataFile);
                    return HI_ERR_PVR_FILE_CANT_WRITE;
                }
            }
            //lint +e774
        }

        sizeWriten += sizeWrite;
    } while ((HI_U32)sizeWriten < u32Len);

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : PVRRecCycWriteStream
 Description     : write stream to file
 Input           : pBuf      **
                   len       **
                   dataFile  **
                   chnID     **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/29
    Author       : q46153
    Modification : Created function

*****************************************************************************/
STATIC HI_S32 PVRRecCycWriteStream(HI_UNF_DMX_REC_DATA_S stDmxTsData, PVR_REC_CHN_S *pRecChn)
{
    HI_U32 len1 = 0;
    HI_U32 len2 = 0;
    HI_S32 ret;
    HI_U64 u64LastFileSize = pRecChn->u64CurFileSize;
    HI_U64 u64MaxSize = 0;
    HI_BOOL bReachFix = HI_FALSE;

    len1 = stDmxTsData.u32Len;

    /* record fixed file length,  reach to the length, stop record */
    if (HI_UNF_PVR_STREAM_TYPE_ALL_TS == pRecChn->stUserCfg.enStreamType)
    {
        u64MaxSize =  pRecChn->stUserCfg.u64MaxFileSize;
    }
    else
    {
        if (pRecChn->IndexHandle == HI_NULL)
        {
            HI_FATAL_PVR("Index handle is null\n");
            return HI_FAILURE;
        }
        
        u64MaxSize =  pRecChn->IndexHandle->stCycMgr.u64MaxCycSize;
    }

    if (PVR_REC_IS_FIXSIZE(&pRecChn->stUserCfg))
    {
        if (u64MaxSize > 0)
        {
            if ((pRecChn->u64CurFileSize + stDmxTsData.u32Len) >= u64MaxSize)
            {
               HI_ERR_PVR("cur size %#llx will over fix size %#llx !!\n",
                           pRecChn->u64CurFileSize, u64MaxSize);
               bReachFix = HI_TRUE;
               len1 = (u64MaxSize > pRecChn->u64CurFileSize)?u64MaxSize - pRecChn->u64CurFileSize:0;
            }
        }
    }
    else if (PVR_REC_IS_REWIND(&pRecChn->stUserCfg))  /* case rewind record */
    {
        if (pRecChn->IndexHandle == HI_NULL)
        {
            HI_FATAL_PVR("Index handle is null\n");
            return HI_FAILURE;
        }
        
        if (PVR_INDEX_REWIND_BY_TIME == pRecChn->IndexHandle->stCycMgr.enRewindType)
        {
            /*第一次回绕后开始进行回绕处理，第一次回绕前正常累加*/
            if (u64MaxSize > 0)
            {
                /*回绕时分两种情况:
                1.Index落后ts，此时ts文件回绕边界为ts当前文件的大小，ts直接进行回绕处理
                2.Index超前ts，此时ts文件回绕边界为index的globaloffset，ts必须大于该值才进行回绕处理
                */
                if (HI_TRUE == pRecChn->IndexHandle->bTimeRewindFlagForFile)
                {
                    if (pRecChn->u64CurFileSize + stDmxTsData.u32Len > pRecChn->IndexHandle->u64TimeRewindMaxSize)
                    {
                        //l2cache和非l2cache代码逻辑可以保证u64TimeRewindMaxSize大于u64CurFileSize
                        len1 = (HI_U32)(pRecChn->IndexHandle->u64TimeRewindMaxSize - pRecChn->u64CurFileSize);
                        len2 = stDmxTsData.u32Len - len1;
                        pRecChn->IndexHandle->bTimeRewindFlagForFile = HI_FALSE;
                        pRecChn->s32OverFixTimes++;
                        pRecChn->bEventFlg = HI_TRUE;
                    }
                }
            }
        }
        else
        {
            if ((pRecChn->u64CurWritePos + stDmxTsData.u32Len) > u64MaxSize)
            {
//                pRecChn->IndexHandle->stCycMgr.enRewindType = PVR_INDEX_REWIND_BY_SIZE;
                pRecChn->s32OverFixTimes++;
                len1 = (HI_U32)(u64MaxSize - pRecChn->u64CurWritePos);
                len2 = stDmxTsData.u32Len - len1;
                pRecChn->bEventFlg = HI_TRUE;
            }
        }
    }

    HI_ASSERT(len1 <= stDmxTsData.u32Len);

    if (stDmxTsData.pDataAddr)
    {
        ret = PVRRecWriteStreamDirect(pRecChn, stDmxTsData.pDataAddr, len1, pRecChn->u64CurWritePos);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("Write pvr file error! ret %x\n", ret);
            return ret;
        }

        pRecChn->u64CurFileSize += len1;
        pRecChn->u64CurWritePos += len1;
    }

    if (len2 > 0)
    {
        stDmxTsData.pDataAddr += len1;
        ret = PVRRecWriteStreamDirect(pRecChn, stDmxTsData.pDataAddr, len2, 0);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("Write pvr file error! ret %x\n", ret);
            return ret;
        }

        pRecChn->u64CurFileSize += len2;
        pRecChn->u64CurWritePos = len2;
    }

    if (HI_UNF_PVR_STREAM_TYPE_ALL_TS != pRecChn->stUserCfg.enStreamType)
    {
#ifndef HI_PVR_L2_CACHE_SUPPORT
        pRecChn->IndexHandle->u64FileSizeGlobal = pRecChn->u64CurFileSize;
#endif
//        pRecChn->IndexHandle->u64FileOffset = pRecChn->u64CurWritePos;
        if ((u64LastFileSize < pRecChn->IndexHandle->stCurPlayFrame.u64GlobalOffset) &&
            (pRecChn->u64CurFileSize > pRecChn->IndexHandle->stCurPlayFrame.u64GlobalOffset))
        {
            HI_WARN_PVR("!!rec pos will cover play, %#llx-->%#llx, ReadPos:%#llx->%#llx\n",
                        u64LastFileSize, pRecChn->u64CurFileSize,
                        pRecChn->IndexHandle->stCurPlayFrame.u64GlobalOffset,
                        pRecChn->IndexHandle->stCurPlayFrame.u64GlobalOffset+pRecChn->IndexHandle->stCurPlayFrame.u32FrameSize);
        }
    }

    if (bReachFix)
        return HI_ERR_PVR_FILE_TILL_END;
    else
        return HI_SUCCESS;
}

STATIC INLINE HI_VOID PVRRecCheckError(PVR_REC_CHN_S  *pChnAttr, HI_S32 ret)
{
    if (HI_SUCCESS == ret)
    {
        return;
    }

    if ((HI_ERR_DMX_NOAVAILABLE_DATA == ret) || (HI_ERR_DMX_TIMEOUT == ret))
    {
        return;
    }

    if (HI_ERR_PVR_FILE_DISC_FULL == ret)
    {
        PVR_Intf_DoEventCallback(pChnAttr->u32ChnID, HI_UNF_PVR_EVENT_REC_DISKFULL, 0);
        PVR_Intf_AddEventHistory(&pChnAttr->stEventHistory, HI_UNF_PVR_EVENT_REC_DISKFULL);
    }
    else if (HI_ERR_PVR_FILE_TILL_END == ret)
    {
        PVR_Intf_DoEventCallback(pChnAttr->u32ChnID, HI_UNF_PVR_EVENT_REC_OVER_FIX, 0);
        PVR_Intf_AddEventHistory(&pChnAttr->stEventHistory, HI_UNF_PVR_EVENT_REC_OVER_FIX);
    }
    else
    {
        PVR_Intf_DoEventCallback(pChnAttr->u32ChnID, HI_UNF_PVR_EVENT_REC_ERROR, ret);
        PVR_Intf_AddEventHistory(&pChnAttr->stEventHistory, HI_UNF_PVR_EVENT_REC_ERROR);
    }

    return;
}

STATIC INLINE HI_VOID PVRRecCheckRecPosition(PVR_REC_CHN_S *pChnAttr)
{
    HI_S32 times;

    if (PVR_REC_IS_REWIND(&pChnAttr->stUserCfg))
    {
        if (pChnAttr->s32OverFixTimes > 0)
        {
            times = pChnAttr->s32OverFixTimes;
            pChnAttr->s32OverFixTimes = 0;
            PVR_Intf_DoEventCallback(pChnAttr->u32ChnID, HI_UNF_PVR_EVENT_REC_OVER_FIX, times);
            PVR_Intf_AddEventHistory(&pChnAttr->stEventHistory, HI_UNF_PVR_EVENT_REC_OVER_FIX);
        }
    }
}

#ifdef HI_PVR_L2_CACHE_SUPPORT
static HI_VOID PVRRecFlushAllToFile(PVR_REC_CHN_S *pstChn)
{
    HI_UNF_DMX_REC_DATA_S stRecData = {0};

    while (PVRRecTsQueueGetValidSize(pstChn) != pstChn->stRecTsQueue.u32Size)
    {
        (HI_VOID)PVRRecTsQueuePollBuff(pstChn, &(stRecData.pDataAddr), &stRecData.u32Len);
        (HI_VOID)PVRRecCycWriteStream(stRecData, pstChn);
        (HI_VOID)PVRRecTsQueuePollHead(pstChn, stRecData.u32Len);
    }

    (HI_VOID)PVR_Index_FlushToFile(pstChn->IndexHandle);
}

#ifndef PVR_ACQUIREDATAINDX
STATIC HI_S32 PVRRecSaveIndexToCache(PVR_REC_CHN_S *pRecChn)
{
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_DMX_REC_INDEX_S stDmxIndexInfo = {0};

    if (pRecChn->bUseLastDmxIdx)
    {
        memcpy(&stDmxIndexInfo, &pRecChn->stDmxIdxInfo, sizeof(HI_UNF_DMX_REC_INDEX_S));
    }
    else
    {
        ret = HI_UNF_DMX_AcquireRecIndex(pRecChn->DemuxRecHandle, &stDmxIndexInfo, 0);  
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        if (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
        {
            pRecChn->bUseLastDmxIdx = HI_FALSE;
            return HI_SUCCESS;
        }
        
        #ifdef DUMP_DMX_DATA
        if (g_pvrfpIdxReceive)
        {
            fwrite(&stDmxIndexInfo, 1, sizeof(stDmxIndexInfo), g_pvrfpIdxReceive);
        }
        #endif
    }

    ret = PVR_Index_SaveToCache(pRecChn->IndexHandle, &stDmxIndexInfo);
    if (ret != HI_SUCCESS)
    {
        memcpy(&pRecChn->stDmxIdxInfo, &stDmxIndexInfo, sizeof(HI_UNF_DMX_REC_INDEX_S));
        pRecChn->bUseLastDmxIdx = HI_TRUE;
        usleep(100);
        return HI_SUCCESS;
    }

    pRecChn->bUseLastDmxIdx = HI_FALSE;
    
    if (PVRPlayCheckSlowPauseBack(pRecChn->stUserCfg.szFileName))
    {
        #if 0
        if (PVR_Index_CheckSetRecReachPlay(pRecChn->IndexHandle)) /* rec reach to play */
        {
            (HI_VOID)PVR_Index_SeekToStart(pRecChn->IndexHandle); /* force play to move forward */
            PVR_Intf_DoEventCallback(pRecChn->u32ChnID, HI_UNF_PVR_EVENT_REC_REACH_PLAY, 0);
        }
        #endif
        (HI_VOID)PVR_Index_CheckSetRecReachPlay(pRecChn->IndexHandle);
    }
    
    return ret;
}
#endif

STATIC HI_VOID *PVRRecSaveToCache(HI_VOID *args)
{
    HI_S32 ret = HI_SUCCESS;
#ifdef PVR_ACQUIREDATAINDX
    HI_U32 i = 0;
    HI_UNF_DMX_REC_DATA_INDEX_S stDataIdx = {0};
    HI_UNF_DMX_REC_DATA_S *pstData = HI_NULL;
    HI_UNF_DMX_REC_INDEX_S *pstIdx = HI_NULL;
#else
    HI_U32 u32OverflowTimes = 0;
    HI_UNF_DMX_REC_DATA_S stRecData = {0};
#endif
    PVR_REC_CHN_S *pRecChn = (PVR_REC_CHN_S *)args;

    HI_INFO_PVR("Chn %d start to save to cache.\n", pRecChn->u32ChnID);

#ifdef DUMP_DMX_DATA
    HI_CHAR saveName[256];
    HI_CHAR saveIdxName[256];
    snprintf(saveName, 255, "%s_receive.ts",  pRecChn->stUserCfg.szFileName);
    snprintf(saveIdxName, 255, "%s_receive.idx",  pRecChn->stUserCfg.szFileName);
    if ( NULL == g_pvrfpTSReceive )
    {
        g_pvrfpTSReceive = fopen(saveName, "wb");
    }
    if ( NULL == g_pvrfpIdxReceive )
    {
        g_pvrfpIdxReceive = fopen(saveIdxName, "wb");
    }

#endif
    while (HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
    #ifndef PVR_ACQUIREDATAINDX
        ret = PVRRecSaveIndexToCache(pRecChn);
        if (!((HI_SUCCESS == ret) || (HI_ERR_DMX_NOAVAILABLE_DATA == ret) || (HI_ERR_DMX_TIMEOUT == ret)))
        {
            break;
        }
        
        do
        {
            ret = HI_UNF_DMX_AcquireRecData(pRecChn->DemuxRecHandle, &stRecData, 0); 
            if ((HI_SUCCESS == ret) && (stRecData.u32Len > 0))
            {
                if (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
                {
                    pRecChn->IndexHandle->u64DeltaGlobalOffset += stRecData.u32Len;
                    
                    (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);
                    break;
                }
                #ifdef DUMP_DMX_DATA
                if (g_pvrfpTSReceive)
                {
                    fwrite(stRecData.pDataAddr, 1, stRecData.u32Len, g_pvrfpTSReceive);
                }
                #endif

                if ((0 != (stRecData.u32Len % PVR_TS_LEN)) || (0 != (stRecData.u32Len % 16)))
                {
                    HI_FATAL_PVR("Data size is not aligned by 188 and 256. size=%d.\n", stRecData.u32Len);
                    (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);
                    break;
                }

                do
                {
                    /* if cipher, get and save the cipher data */
                    if (HI_SUCCESS != PVRRecProcCipherEncrypt(pRecChn, 
                                                              stRecData.u32DataPhyAddr,
                                                              stRecData.u32DataPhyAddr,
                                                              stRecData.u32Len))
                    {
                        HI_ERR_PVR("PVRRecProcCipherEncrypt failed\n");
                        break;
                    }

                    /* if registed external write callback function, get and save the cipher data */
                    if(HI_NULL != pRecChn->writeCallBack)
                    {
                        HI_U64 u64GlobalOffset;

                        u64GlobalOffset = pRecChn->u64CurFileSize + (pRecChn->stRecTsQueue.u32Size - PVRRecTsQueueGetValidSize(pRecChn));

                        if((PVR_INDEX_REWIND_BY_SIZE == pRecChn->IndexHandle->stCycMgr.enRewindType) ||
                            (PVR_INDEX_REWIND_BY_BOTH == pRecChn->IndexHandle->stCycMgr.enRewindType))
                        {
                            if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                    &stRecData, 
                                                                    stRecData.u32Len, 
                                                                    (u64GlobalOffset % pRecChn->IndexHandle->stCycMgr.u64MaxCycSize), 
                                                                    u64GlobalOffset))
                            {
                                HI_ERR_PVR("Call external write callback function fail!\n");
                            }
                        }
                        else
                        {
                            if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                    &stRecData, 
                                                                    stRecData.u32Len, 
                                                                    (u64GlobalOffset - pRecChn->IndexHandle->u64TimeRewindMaxSize), 
                                                                    u64GlobalOffset))
                            {
                                HI_ERR_PVR("Call external write callback function fail!\n");
                            }
                        }
                    }

                    ret = PVRRecTsQueuePush(pRecChn, stRecData.pDataAddr, stRecData.u32Len);
                    if (HI_SUCCESS != ret)
                    {
                        usleep(10000);
                    }
                    else
                    {
                        pRecChn->IndexHandle->u64FileSizeGlobal += stRecData.u32Len;
                    }
                }while (HI_SUCCESS != ret);

                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);

                PVR_Index_PushStartWhenTsLead(pRecChn->IndexHandle, pRecChn->u64CurFileSize);

                u32OverflowTimes = PVRRecCheckRecBufStatus(u32OverflowTimes, pRecChn);
            }
            else 
            {
                if ((HI_ERR_DMX_NOAVAILABLE_DATA == ret) || (HI_ERR_DMX_TIMEOUT == ret))
                {
                    HI_INFO_PVR("chan:%d, rec wait .\n", pRecChn->u32ChnID);
                    usleep(100);
                }
                else
                {
                    HI_ERR_PVR("receive rec stream error:%#x\n", ret);
                }

                break;
            }
        }
        while(HI_SUCCESS == ret);
        
    #else

        ret = HI_UNF_DMX_AcquireRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
        if (ret == HI_SUCCESS)
        {
            if (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
            {
                for(i = 0; i < stDataIdx.u32RecDataCnt; i++)
                {
                    pRecChn->IndexHandle->u64DeltaGlobalOffset += stDataIdx.stRecData[i].u32Len;
                }
                
                (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                continue;
            }

            for(i = 0; i < stDataIdx.u32IdxNum; i++)
            {
                pstIdx = &(stDataIdx.stIndex[i]);
                do
                {
                    ret = PVR_Index_SaveToCache(pRecChn->IndexHandle, pstIdx);
                    if (ret != HI_SUCCESS)
                    {
                        usleep(10*1000);
                    }
                }while(ret != HI_SUCCESS);
            }
            
            for(i = 0; i < stDataIdx.u32RecDataCnt; i++)
            {
                pstData = &(stDataIdx.stRecData[i]);
                if ((0 == pstData->u32Len) || (0 != pstData->u32Len%188) || (0 != pstData->u32Len%16))
                {
                    HI_FATAL_PVR("Len=%x Mod_188=%d Mod_16=%d i=%d cnt=%d\n", 
                                pstData->u32Len, pstData->u32Len % 188, pstData->u32Len % 16, i, stDataIdx.u32RecDataCnt);
                    (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                    ret = HI_FAILURE;
                    break;
                }

                #ifdef DUMP_DMX_DATA 
                if (g_pvrfpTSReceive)
                {
                    fwrite(pstData->pDataAddr, 1, pstData->u32Len, g_pvrfpTSReceive);
                }
                #endif

                if (HI_SUCCESS != PVRRecProcCipherEncrypt(pRecChn, pstData->u32DataPhyAddr, pstData->u32DataPhyAddr, pstData->u32Len))
                {
                    HI_ERR_PVR("PVRRecProcCipherEncrypt failed\n");
                    continue;
                }

                if(HI_NULL != pRecChn->writeCallBack)
                {
                    HI_U64 u64GlobalOffset;
                    u64GlobalOffset = pRecChn->u64CurFileSize + (pRecChn->stRecTsQueue.u32Size - PVRRecTsQueueGetValidSize(pRecChn));

                    if((PVR_INDEX_REWIND_BY_SIZE == pRecChn->IndexHandle->stCycMgr.enRewindType) ||
                       (PVR_INDEX_REWIND_BY_BOTH == pRecChn->IndexHandle->stCycMgr.enRewindType))
                    {
                        if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                pstData, 
                                                                pstData->u32Len, 
                                                                (u64GlobalOffset % pRecChn->IndexHandle->stCycMgr.u64MaxCycSize), 
                                                                 u64GlobalOffset))
                        {
                            HI_ERR_PVR("Call external write callback function fail!\n");
                        }
                    }
                    else
                    {
                        if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                pstData, 
                                                                pstData->u32Len, 
                                                                (u64GlobalOffset - pRecChn->IndexHandle->u64TimeRewindMaxSize), 
                                                                u64GlobalOffset))
                        {
                            HI_ERR_PVR("Call external write callback function fail!\n");
                        }
                    }
                }
                
                do
                {
                    ret = PVRRecTsQueuePush(pRecChn, pstData->pDataAddr, pstData->u32Len);
                    if (HI_SUCCESS == ret)
                    {
                        pRecChn->IndexHandle->u64FileSizeGlobal += pstData->u32Len;
                    }
                }while(HI_SUCCESS != ret);
            }

            if (ret != HI_SUCCESS)
            {
                break;
            }

            (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
            
           
            if (pRecChn->IndexHandle->bRecReachFix)
                break;
        }
        else if ((ret == HI_ERR_DMX_NOAVAILABLE_DATA) || (ret == HI_ERR_DMX_TIMEOUT))
        {
            usleep(10 * 1000);
        }
        else if (ret == HI_ERR_DMX_OVERFLOW_BUFFER)
        {
            HI_ERR_PVR(" =======buf flow\n");
            ret = HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            if (ret != HI_SUCCESS)
            {
                HI_ERR_PVR("Dmx stop rec chn failed! ret %x\n", ret);
                break;
            }

            ret = HI_UNF_DMX_StartRecChn(pRecChn->DemuxRecHandle);
            if (ret != HI_SUCCESS)
            {
                HI_ERR_PVR("Dmx start rec chn failed! ret %x\n", ret);
                break;
            }

            PVR_Intf_DoEventCallback(pRecChn->u32ChnID, HI_UNF_PVR_EVENT_REC_DISK_SLOW, pRecChn->IndexHandle->stCurRecFrame.u32DisplayTimeMs);
            PVR_Intf_AddEventHistory(&pRecChn->stEventHistory,HI_UNF_PVR_EVENT_REC_DISK_SLOW);

            PVR_Index_ProcOverFlow(pRecChn->IndexHandle);
        }
        else
        {
            HI_ERR_PVR("Acquire dataandidx failed! ret %x\n",ret);
            break;
        }
    #endif
    }

    if (HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        HI_INFO_PVR("-----PVRRecSaveToCache exiting with error:%#x...\n", ret);
        PVRRecCheckError(pRecChn, ret);
    }

    HI_INFO_PVR("<==chn %d PVRRecSaveIdxRoutine ret=%#x.\n", pRecChn->u32ChnID, ret);
    return NULL;
}

STATIC HI_VOID* PVRRecSaveToFile(HI_VOID *args)
{
    HI_U8  *pu8WriteBuff = HI_NULL;
    HI_U32 u32WriteLen = 0;
    HI_S32 ret = HI_SUCCESS;
    HI_UNF_DMX_REC_DATA_S TsData = {0};
    PVR_REC_CHN_S *pRecChn = (PVR_REC_CHN_S *)args;

    HI_INFO_PVR("chan:%d, start.\n", pRecChn->u32ChnID);

//退出条件为stop状态并且save cache线程已经停止
    while (!((HI_UNF_PVR_REC_STATE_STOP == pRecChn->enState) && (pRecChn->RecordCacheThread == 0)))
    {
        ret = PVRRecTsQueuePollBuff(pRecChn, &pu8WriteBuff, &u32WriteLen);
        if ((HI_SUCCESS == ret) && (u32WriteLen != 0))
        {
            TsData.pDataAddr = pu8WriteBuff;
            TsData.u32Len = u32WriteLen;
        }
        else
        {
            usleep(10 * 1000);
            goto PVR_SAVE_INDEX;
        }


        ret = PVRRecCycWriteStream(TsData, pRecChn);
        
        (HI_VOID)PVRRecTsQueuePollHead(pRecChn, u32WriteLen);
        
        if (HI_SUCCESS != ret)
        {
            /*index到达指定指定大小/时间后不会再保存index*/
            if (ret == HI_ERR_PVR_FILE_TILL_END)
            {
                (HI_VOID)PVR_Index_SaveToFile(pRecChn->IndexHandle, HI_TRUE);
            }
            
            HI_ERR_PVR("Write ts failded! ret 0x%x. data len %d . data addr %x\n", 
                        ret, TsData.u32Len, TsData.pDataAddr);
            break;
        }
 
        PVRRecCheckRecPosition(pRecChn);
    
PVR_SAVE_INDEX:
        ret = PVR_Index_SaveToFile(pRecChn->IndexHandle, HI_FALSE);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("Save index to file failed ret %x\n",ret);
        }
    } /* end while */

    if (HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        HI_INFO_PVR("-----PVRRecSaveToFile exiting with error:%#x...\n", ret);
        PVRRecCheckError(pRecChn, ret);
    }
    else
    {
        //Flush index and data which are both in cache to file
        PVRRecFlushAllToFile(pRecChn);
    }

    pRecChn->bSavingData = HI_FALSE;
    HI_INFO_PVR("<==PVRRecSaveToFile,FileLen:0x%llx.\n", pRecChn->u64CurFileSize);

    return NULL;
}
#else

#ifndef PVR_ACQUIREDATAINDX
STATIC HI_VOID *PVRRecSaveIndexAndStreamRoutine(HI_VOID *args)
{
    HI_U32 u32OverflowTimes = 0;
    HI_S32 ret;
    HI_BOOL bNeedNewIndex = HI_TRUE;
    HI_UNF_DMX_REC_DATA_S stRecData = {0};
    HI_UNF_DMX_REC_INDEX_S stRecIndex = {0};
    
    PVR_REC_CHN_S *pRecChn = (PVR_REC_CHN_S *)args;
    memset(&pRecChn->stDmxIdxInfo, 0, sizeof(HI_UNF_DMX_REC_INDEX_S));
    pRecChn->bUseLastDmxIdx = HI_FALSE;
#ifdef DUMP_DMX_DATA
        HI_CHAR saveName[256];
        HI_CHAR saveIdxName[256];
        snprintf(saveName, 255, "%s_receive.ts",  pRecChn->stUserCfg.szFileName);
        snprintf(saveIdxName, 255, "%s_receive.idx",  pRecChn->stUserCfg.szFileName);
        if ( NULL == g_pvrfpTSReceive )
        {
            g_pvrfpTSReceive = fopen(saveName, "wb");
        }
        if ( NULL == g_pvrfpIdxReceive )
        {
            g_pvrfpIdxReceive = fopen(saveIdxName, "wb");
        }
#endif

    while(HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        ret = HI_UNF_DMX_AcquireRecData(pRecChn->DemuxRecHandle, &stRecData, 0);
        if ((ret == HI_SUCCESS) && (stRecData.u32Len > 0))
        {
            if (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
            {
                if (HI_SUCCESS == HI_UNF_DMX_AcquireRecIndex(pRecChn->DemuxRecHandle, &stRecIndex, 0))
                {
                    if (HI_NULL != pRecChn->IndexHandle)
                        pRecChn->IndexHandle->u64DeltaGlobalOffset += stRecData.u32Len;
                }
            
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);
                continue;
            }

#ifdef DUMP_DMX_DATA
            if (g_pvrfpTSReceive)
            {
                fwrite(stRecData.pDataAddr, 1, stRecData.u32Len, g_pvrfpTSReceive);
            }
#endif

            if ((0 != (stRecData.u32Len % PVR_TS_LEN)) || (0 != (stRecData.u32Len % 16)))
            {
                HI_FATAL_PVR("rec size:%u != 188*N, offset:0x%llx.\n", stRecData.u32Len, pRecChn->u64CurFileSize);
                ret = HI_FAILURE;
                break;
            }

            /* if cipher, get and save the cipher data */
            if (HI_SUCCESS != PVRRecProcCipherEncrypt(pRecChn, 
                                                      stRecData.u32DataPhyAddr, 
                                                      stRecData.u32DataPhyAddr, 
                                                      stRecData.u32Len))
            {
                HI_ERR_PVR("PVRRecProcCipherEncrypt failed\n");
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);
                continue;
            }

            if((NULL != pRecChn->writeCallBack) && 
               (HI_UNF_PVR_STREAM_TYPE_ALL_TS != pRecChn->stUserCfg.enStreamType) &&
               (pRecChn->IndexHandle != HI_NULL))
            {
                if(PVR_INDEX_REWIND_BY_TIME == pRecChn->IndexHandle->stCycMgr.enRewindType)
                {
                    if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                            &stRecData, 
                                                            stRecData.u32Len, 
                                                            (pRecChn->u64CurFileSize - pRecChn->IndexHandle->u64TimeRewindMaxSize), 
                                                            pRecChn->u64CurFileSize))
                    {
                        HI_ERR_PVR("Call external write callback function fail!\n");
                    }
                }
                else
                {
                    if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                            &stRecData, 
                                                            stRecData.u32Len, 
                                                            (pRecChn->u64CurFileSize % pRecChn->IndexHandle->stCycMgr.u64MaxCycSize), 
                                                            pRecChn->u64CurFileSize))
                    {
                        HI_ERR_PVR("Call external write callback function fail!\n");
                    }
                }
            }
            
            ret = PVRRecCycWriteStream(stRecData, pRecChn);

            (HI_VOID)HI_UNF_DMX_ReleaseRecData(pRecChn->DemuxRecHandle, &stRecData);
            
            if (HI_SUCCESS != ret)
            {
                break;
            }

            if (pRecChn->IndexHandle != HI_NULL)
            {
                PVR_Index_PushStartWhenTsLead(pRecChn->IndexHandle, pRecChn->u64CurFileSize);
            }

            /* check the buffer status */
            u32OverflowTimes = PVRRecCheckRecBufStatus(u32OverflowTimes, pRecChn);

            PVRRecCheckRecPosition(pRecChn);
        }
        else if ((ret == HI_ERR_DMX_NOAVAILABLE_DATA) || (ret == HI_ERR_DMX_TIMEOUT))
        {
            usleep(100);
//            continue;
        }
        else
        {
            HI_ERR_PVR("Acquire dmx rec data failed! ret %x\n", ret);
            break;
        }

        if (pRecChn->IndexHandle == HI_NULL)
        {
            continue;
        }

/*If last index hasn't recorded yet , use last index. Otherwise acquire new index*/
        if (bNeedNewIndex == HI_TRUE)
        {
            if (HI_SUCCESS != HI_UNF_DMX_AcquireRecIndex(pRecChn->DemuxRecHandle, &stRecIndex, 0))
            {
                HI_INFO_PVR("There is no index\n");
                continue;
            }

            #ifdef DUMP_DMX_DATA
            if (g_pvrfpIdxReceive)
            {
                fwrite(&stRecIndex, 1, sizeof(stRecIndex), g_pvrfpIdxReceive);
            }
            #endif
        }

/*Thread will acquiring index till index offset lead data offset*/
        if (stRecIndex.u64GlobalOffset + stRecIndex.u32FrameSize <= pRecChn->u64CurFileSize)
        {
            (HI_VOID)PVR_Index_SaveFramePosition(pRecChn->IndexHandle, &stRecIndex, 0);

            bNeedNewIndex = HI_TRUE;
        }
        else
        {
            bNeedNewIndex = HI_FALSE;
        }
    }

    if (HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        HI_INFO_PVR("-----PVRRecSaveToFile exiting with error:%#x...\n", ret);
        PVRRecCheckError(pRecChn, ret);
    }

    pRecChn->bSavingData = HI_FALSE;
    HI_INFO_PVR("<==PVRRecSaveIndexAndStreamRoutine,FileLen:0x%llx.\n", pRecChn->u64CurFileSize);

    return HI_NULL;
}

#else

STATIC HI_VOID *PVRRecSaveIndexAndStreamRoutine(HI_VOID *args)
{
    HI_U32 i;
    HI_S32 ret;
    HI_UNF_DMX_REC_DATA_S *pstData = HI_NULL;
    HI_UNF_DMX_REC_INDEX_S *pstIdx = HI_NULL;
    HI_UNF_DMX_REC_DATA_INDEX_S stDataIdx;
    
    PVR_REC_CHN_S *pRecChn = (PVR_REC_CHN_S *)args;

#ifdef DUMP_DMX_DATA
        HI_CHAR saveName[256];
        HI_CHAR saveIdxName[256];
        snprintf(saveName, 255, "%s_receive.ts",  pRecChn->stUserCfg.szFileName);
        snprintf(saveIdxName, 255, "%s_receive.idx",  pRecChn->stUserCfg.szFileName);
        if (NULL == g_pvrfpTSReceive)
        {
            g_pvrfpTSReceive = fopen(saveName, "wb");
        }
        if (NULL == g_pvrfpIdxReceive)
        {
            g_pvrfpIdxReceive = fopen(saveIdxName, "wb");
        }
#endif

    while(HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        ret = HI_UNF_DMX_AcquireRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
        if (ret == HI_SUCCESS)
        {
            if (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
            {
                for(i = 0; i < stDataIdx.u32RecDataCnt; i++)
                {
                    pRecChn->IndexHandle->u64DeltaGlobalOffset += stDataIdx.stRecData[i].u32Len;
                }
                
                (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                continue;
            }

            for(i = 0; i < stDataIdx.u32IdxNum; i++)
            {
                pstIdx = &(stDataIdx.stIndex[i]);
                (HI_VOID)PVR_Index_SaveFramePosition(pRecChn->IndexHandle, pstIdx, HI_FALSE);
            }

            for (i = 0; i < stDataIdx.u32RecDataCnt; i++)
            {
                pstData = &stDataIdx.stRecData[i];
                if ((0 == pstData->u32Len) || (0 != pstData->u32Len%188) || (0 != pstData->u32Len%16))
                {
                    HI_FATAL_PVR("Len=%x Mod_188=%d Mod_16=%d cnt=%d\n", 
                                  pstData->u32Len, pstData->u32Len%188, pstData->u32Len%16, stDataIdx.u32RecDataCnt);
                    ret = HI_FAILURE;
                    (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                    break;
                }

                #ifdef DUMP_DMX_DATA 
                if (g_pvrfpTSReceive)
                {
                    fwrite(pstData->pDataAddr, 1, pstData->u32Len, g_pvrfpTSReceive);
                }
                #endif

                if (HI_SUCCESS != PVRRecProcCipherEncrypt(pRecChn, pstData->u32DataPhyAddr, 
                                                          pstData->u32DataPhyAddr, pstData->u32Len))
                {
                    HI_ERR_PVR("PVRRecProcCipherEncrypt failed\n");
                    (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                    continue;
                }

                if (HI_NULL != pRecChn->writeCallBack)
                {
                    if (PVR_INDEX_REWIND_BY_TIME == pRecChn->IndexHandle->stCycMgr.enRewindType)
                    {
                        if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                pstData, 
                                                                pstData->u32Len, 
                                                                (pRecChn->u64CurFileSize - pRecChn->IndexHandle->u64TimeRewindMaxSize), 
                                                                pRecChn->u64CurFileSize))
                        {
                            HI_ERR_PVR("Call external write callback function fail!\n");
                        }
                    }
                    else
                    {
                        if (HI_SUCCESS != PVRRecProcExtCallBack(pRecChn, 
                                                                pstData, 
                                                                pstData->u32Len, 
                                                                (pRecChn->u64CurFileSize % pRecChn->IndexHandle->stCycMgr.u64MaxCycSize), 
                                                                pRecChn->u64CurFileSize))
                        {
                            HI_ERR_PVR("Call external write callback function fail!\n");
                        }
                    }
                }

                ret = PVRRecCycWriteStream(*pstData, pRecChn);
                if (HI_SUCCESS != ret)
                {
                    HI_ERR_PVR("Write file failed ret:%#x! size:%u, addr:%p\n", 
                                ret, pstData->u32Len, pstData->pDataAddr);
                    (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
                    break;
                }
            }

            if (ret != HI_SUCCESS)
                break;

            PVR_Index_PushStartWhenTsLead(pRecChn->IndexHandle, pRecChn->u64CurFileSize);

            PVRRecCheckRecPosition(pRecChn);

            (HI_VOID)HI_UNF_DMX_ReleaseRecDataAndIndex(pRecChn->DemuxRecHandle, &stDataIdx);
        }
        else if (ret == HI_ERR_DMX_NOAVAILABLE_DATA || ret == HI_ERR_DMX_TIMEOUT)
        {
            usleep(10);
            continue;
        }
        else if (ret == HI_ERR_DMX_OVERFLOW_BUFFER)
        {
            ret = HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            if (ret != HI_SUCCESS)
            {
                HI_ERR_PVR("Dmx stop rec chn failed! ret %x\n", ret);
                break;
            }

            ret = HI_UNF_DMX_StartRecChn(pRecChn->DemuxRecHandle);
            if (ret != HI_SUCCESS)
            {
                HI_ERR_PVR("Dmx start rec chn failed! ret %x\n", ret);
                break;
            }

            PVR_Intf_DoEventCallback(pRecChn->u32ChnID, HI_UNF_PVR_EVENT_REC_DISK_SLOW, pRecChn->IndexHandle->stCurRecFrame.u32DisplayTimeMs);
            PVR_Intf_AddEventHistory(&pRecChn->stEventHistory,HI_UNF_PVR_EVENT_REC_DISK_SLOW);

            PVR_Index_ProcOverFlow(pRecChn->IndexHandle);
        }
        else
        {
            HI_ERR_PVR("Acquire dmx rec data failed! ret %x\n", ret);
            break;
        }
    }

    if (HI_UNF_PVR_REC_STATE_STOP != pRecChn->enState)
    {
        HI_ERR_PVR("-----PVRRecSaveToFile exiting with error:%#x...\n", ret);
        PVRRecCheckError(pRecChn, ret);
    }

    pRecChn->bSavingData = HI_FALSE;
    HI_INFO_PVR("<==PVRRecSaveIndexAndStreamRoutine,FileLen:0x%llx.\n", pRecChn->u64CurFileSize);

    return HI_NULL;
}

#endif
#endif
STATIC HI_VOID *PVRRecSaveStream(HI_VOID *args)
{
    HI_S32 ret;
    HI_UNF_DMX_REC_DATA_S stData;
    PVR_REC_CHN_S *pstRecChn = (PVR_REC_CHN_S *)args;

    while (HI_UNF_PVR_REC_STATE_STOP != pstRecChn->enState)
    {
        ret = HI_UNF_DMX_AcquireRecData(pstRecChn->DemuxRecHandle, &stData, 0);
        if (ret == HI_SUCCESS)
        {
            if (HI_UNF_PVR_REC_STATE_PAUSE == pstRecChn->enState)
            {
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pstRecChn->DemuxRecHandle, &stData);
                continue;
            }

            if ((0 == stData.u32Len) || (0 != stData.u32Len%188) || (0 != stData.u32Len%16))
            {
                HI_FATAL_PVR("Len=%x Mod_188=%d Mod_16=%d\n", 
                              stData.u32Len, stData.u32Len%188, stData.u32Len%16);
                ret = HI_FAILURE;
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pstRecChn->DemuxRecHandle, &stData);
                break;
            }

            if (HI_SUCCESS != PVRRecProcCipherEncrypt(pstRecChn, stData.u32DataPhyAddr, stData.u32DataPhyAddr, stData.u32Len))
            {
                HI_ERR_PVR("PVRRecProcCipherEncrypt failed\n");
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pstRecChn->DemuxRecHandle, &stData);
                continue;
            }

            ret = PVRRecCycWriteStream(stData, pstRecChn);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("Write file failed ret:%#x! size:%u, addr:%p\n", ret, stData.u32Len, stData.pDataAddr);
                (HI_VOID)HI_UNF_DMX_ReleaseRecData(pstRecChn->DemuxRecHandle, &stData);
                break;
            }

            (HI_VOID)HI_UNF_DMX_ReleaseRecData(pstRecChn->DemuxRecHandle, &stData);
        }
        else if ((HI_ERR_DMX_NOAVAILABLE_DATA == ret) || (HI_ERR_DMX_TIMEOUT == ret))
        {
            usleep(10000);
            continue;
        }
        else
        {
            HI_ERR_PVR("receive rec stream error:%x\n", ret);
            break;
        }
    }

    if (HI_UNF_PVR_REC_STATE_STOP != pstRecChn->enState)
    {
        HI_ERR_PVR("-----PVRRecSaveToFile exiting with error:%#x...\n", ret);
        PVRRecCheckError(pstRecChn, ret);
    }

    pstRecChn->bSavingData = HI_FALSE;
    HI_INFO_PVR("<==PVRRecSaveIndexAndStreamRoutine,FileLen:0x%llx.\n", pstRecChn->u64CurFileSize);

    return HI_NULL;
}

STATIC INLINE HI_S32 PVRRecPrepareCipher(PVR_REC_CHN_S *pChnAttr)
{
    HI_S32 ret;
    HI_UNF_PVR_CIPHER_S *pCipherCfg;
    HI_UNF_CIPHER_CTRL_S ctrl;
    HI_UNF_CIPHER_ATTS_S stCipherAttr;

    pCipherCfg = &(pChnAttr->stUserCfg.stEncryptCfg);
    if (!pCipherCfg->bDoCipher)
    {
        return HI_SUCCESS;
    }

    /* get cipher handle */
    stCipherAttr.enCipherType = HI_UNF_CIPHER_TYPE_NORMAL;
    ret = HI_UNF_CIPHER_CreateHandle(&pChnAttr->hCipher, &stCipherAttr);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_UNF_CIPHER_CreateHandle failed:%#x\n", ret);
        return ret;
    }

    ctrl.enAlg = pCipherCfg->enType;
    ctrl.bKeyByCA = HI_FALSE;
    memcpy(ctrl.u32Key, pCipherCfg->au8Key, sizeof(ctrl.u32Key));
    memset(ctrl.u32IV, 0, sizeof(ctrl.u32IV));
    if (HI_UNF_CIPHER_ALG_AES == pCipherCfg->enType)
    {
        ctrl.enBitWidth = PVR_CIPHER_AES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_AES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_AES_KEY_LENGTH;
    }
    else if (HI_UNF_CIPHER_ALG_DES == pCipherCfg->enType)
    {
        ctrl.enBitWidth = PVR_CIPHER_DES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_DES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_DES_KEY_LENGTH;
    }
    else
    {
        ctrl.enBitWidth = PVR_CIPHER_3DES_BIT_WIDTH;
        ctrl.enWorkMode = PVR_CIPHER_3DES_WORK_MODD;
        ctrl.enKeyLen = PVR_CIPHER_3DES_KEY_LENGTH;
    }

    ret = HI_UNF_CIPHER_ConfigHandle(pChnAttr->hCipher, &ctrl);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("HI_UNF_CIPHER_ConfigHandle failed:%#x\n", ret);
        (HI_VOID)HI_UNF_CIPHER_DestroyHandle(pChnAttr->hCipher);
        return ret;
    }

    return HI_SUCCESS;
}

STATIC INLINE HI_S32 PVRRecReleaseCipher(PVR_REC_CHN_S  *pChnAttr)
{
    HI_S32 ret = HI_SUCCESS;

    /* free cipher handle */
    if (pChnAttr->hCipher)
    {
        ret = HI_UNF_CIPHER_DestroyHandle(pChnAttr->hCipher);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("release Cipher handle failed! erro:%#x\n", ret);
        }

        pChnAttr->hCipher = 0;
    }

    return ret;
}

PVR_REC_CHN_S* PVRRecGetChnAttrByName(const HI_CHAR *pFileName)
{
    HI_U32 i = 0;

    if(NULL == pFileName)
    {
        HI_ERR_PVR("File name point is NULL.\n");
        return NULL;
    }

    for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        if  (!strncmp(g_stPvrRecChns[i].stUserCfg.szFileName, pFileName, strlen(pFileName)) )
        {
            if ((g_stPvrRecChns[i].enState == HI_UNF_PVR_REC_STATE_RUNNING) ||
                (g_stPvrRecChns[i].enState == HI_UNF_PVR_REC_STATE_PAUSE))
            {
                return &g_stPvrRecChns[i];
            }
            else
            {
                break;
            }
        }
    }

    return NULL;
}


PVR_REC_CHN_S *PVRRecGetChnByIdxHandle(PVR_INDEX_HANDLE hIndex)
{
    HI_U32 i;

    for(i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        if (hIndex == g_stPvrRecChns[i].IndexHandle)
        {
            return &g_stPvrRecChns[i];
        }
    }

    return HI_NULL;
}

/* return TRUE just only start record*/
HI_BOOL PVRRecCheckFileRecording(const HI_CHAR *pFileName)
{
    HI_U32 i;

    if (NULL == pFileName)
    {
        HI_PRINT("\n<%s %d>: Input pointer parameter is NULL!\n", __FUNCTION__, __LINE__);
        return HI_FALSE;   
    }

    for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
    {
        //if (g_stPvrRecChns[i].bSavingData)
        {
            if (!strncmp((const char *)g_stPvrRecChns[i].stUserCfg.szFileName, (const char *)pFileName,strlen(pFileName)))
            {
                if ((g_stPvrRecChns[i].enState == HI_UNF_PVR_REC_STATE_RUNNING) ||
                    (g_stPvrRecChns[i].enState == HI_UNF_PVR_REC_STATE_PAUSE))
                {
                    return HI_TRUE;
                }
                else
                {
                    break;
                }
            }
        }
    }

    return HI_FALSE;
}

/*****************************************************************************
 Prototype       : PVRRecCheckChnRecording
 Description     : to check if record channel is recording
 Input           : u32ChnID  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/30
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_BOOL PVRRecCheckChnRecording(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S  *pRecChn = HI_NULL;

    if ((u32ChnID < PVR_REC_START_NUM) || (u32ChnID >= PVR_REC_MAX_CHN_NUM + PVR_REC_START_NUM))
    {
        return HI_FALSE;
    }

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);

    if (HI_UNF_PVR_REC_STATE_RUNNING == pRecChn->enState)
    {
        return HI_TRUE;
    }
    else
    {
        return HI_FALSE;
    }
}

HI_BOOL PVRRecCheckInitStat(void)
{
    return g_stRecInit.bInit;
}


/*****************************************************************************
 Prototype       : PVRRecMarkPausePos
 Description     : mark a flag for timeshift, and save the current record position
                        if start timeshift, playing from this position
 Input           : u32ChnID
 Output          : None
 Return Value    :
  History
  1.Date         : 2010/06/02
    Author       : j40671
    Modification : Created function

*****************************************************************************/
HI_S32 PVRRecMarkPausePos(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S  *pRecChn = HI_NULL;

    CHECK_REC_CHNID(u32ChnID);
    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);

    return PVR_Index_MarkPausePos(pRecChn->IndexHandle);
}

/*****************************************************************************
 Prototype       : HI_PVR_RecInit
 Description     : init record module
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecInit(HI_VOID)
{
    HI_U32 i;
    HI_S32 ret;
#ifdef PVR_PROC_SUPPORT
    HI_U32 u32CurPid = getpid();
    static HI_CHAR pProcDirName[32] = {0};
#endif

    if (HI_TRUE == g_stRecInit.bInit)
    {
        HI_WARN_PVR("Record Module has been Initialized!\n");
        return HI_SUCCESS;
    }
    else
    {
        /* initialize all the index */
        PVR_Index_Init();

        ret = PVRRecDevInit();
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        ret = PVRIntfInitEvent();
        if (HI_SUCCESS != ret)
        {
            return ret;
        }

        /* set all record channel as INVALID status                            */
        for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
        {
            if (-1 == pthread_mutex_init(&(g_stPvrRecChns[i].stMutex), NULL))
            {
                PVRIntfDeInitEvent();

                /* TODO: destroy mutex **/
                HI_ERR_PVR("init mutex lock for PVR rec chn%d failed \n", i);
                return HI_FAILURE;
            }
            
            PVR_LOCK(&(g_stPvrRecChns[i].stMutex));
            g_stPvrRecChns[i].enState  = HI_UNF_PVR_REC_STATE_INVALID;
            g_stPvrRecChns[i].u32ChnID = i + PVR_REC_START_NUM;
            g_stPvrRecChns[i].hCipher = 0;
            g_stPvrRecChns[i].writeCallBack = NULL;
            PVR_UNLOCK(&(g_stPvrRecChns[i].stMutex));
        }
        
#ifdef PVR_PROC_SUPPORT
        memset(pProcDirName, 0, sizeof(pProcDirName));
        if (!PVRPlayCheckInitStat())
        {
            ret = HI_MODULE_Register(HI_ID_PVR, PVR_USR_PROC_DIR);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("HI_MODULE_Register(\"%s\") return %d\n", PVR_USR_PROC_DIR, ret);
            }

            /* Add proc dir */
            snprintf(pProcDirName, sizeof(pProcDirName), "%s_%d", PVR_USR_PROC_DIR, u32CurPid);
            ret = HI_PROC_AddDir(pProcDirName);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_PVR("HI_PROC_AddDir(\"%s\") return %d\n", PVR_USR_PROC_DIR, ret);
            }
        }
        
        if (0 == strlen(pProcDirName))
        {
            snprintf(pProcDirName, sizeof(pProcDirName), "%s_%d", PVR_USR_PROC_DIR, u32CurPid);
        }
        /* Will be added at /proc/hisi/${DIRNAME} directory */
        g_stPvrRecProcEntry.pszDirectory = pProcDirName;
        g_stPvrRecProcEntry.pszEntryName = PVR_USR_PROC_REC_ENTRY_NAME;
        g_stPvrRecProcEntry.pfnShowProc = PVRRecShowProc;
        g_stPvrRecProcEntry.pfnCmdProc = NULL;
        g_stPvrRecProcEntry.pPrivData = g_stPvrRecChns;
        ret = HI_PROC_AddEntry(HI_ID_PVR, &g_stPvrRecProcEntry);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_PVR("HI_PROC_AddEntry(\"%s\") return %d\n", PVR_USR_PROC_REC_ENTRY_NAME, ret);
        }
#endif

        g_stRecInit.bInit = HI_TRUE;

        return HI_SUCCESS;
    }
}

/*****************************************************************************
 Prototype       : HI_PVR_RecDeInit
 Description     : deinit record module
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecDeInit(HI_VOID)
{
    HI_U32 i;

    if (HI_FALSE == g_stRecInit.bInit)
    {
        HI_WARN_PVR("Record Module is not Initialized!\n");
        return HI_SUCCESS;
    }
    else
    {
        /* set all record channel as INVALID status                            */
        for (i = 0; i < PVR_REC_MAX_CHN_NUM; i++)
        {
            if (g_stPvrRecChns[i].enState != HI_UNF_PVR_REC_STATE_INVALID)
            {
                HI_ERR_PVR("rec chn%d is in use, can NOT deInit REC!\n", i);
                return HI_ERR_PVR_BUSY;
            }

            (HI_VOID)pthread_mutex_destroy(&(g_stPvrRecChns[i].stMutex));
        }

#ifdef PVR_PROC_SUPPORT
        HI_PROC_RemoveEntry(HI_ID_PVR, &g_stPvrRecProcEntry);
        if (!PVRPlayCheckInitStat())
        {
            HI_PROC_RemoveDir(g_stPvrRecProcEntry.pszDirectory);
            HI_MODULE_UnRegister(HI_ID_PVR);
        }
#endif

        PVRIntfDeInitEvent();
        g_stRecInit.bInit = HI_FALSE;
        return HI_SUCCESS;
    }
}

/*****************************************************************************
 Prototype       : HI_PVR_RecCreateChn
 Description     : apply a new reocrd channel
 Input           : pstRecAttr  **the attr user config
 Output          : pu32ChnID   **the chn id we get
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecCreateChn(HI_U32 *pu32ChnID, const HI_UNF_PVR_REC_ATTR_S *pstRecAttr)
{
    HI_U32 u32RecIdInteral, i;
    HI_S32 ret;
    HI_U64 u64FileSizeReal;
    HI_UNF_PVR_REC_ATTR_S stRecAttrLocal;
    HI_UNF_DMX_REC_ATTR_S stRecAttr = {0};
    PVR_REC_CHN_S *pChnAttr = HI_NULL;

    PVR_CHECK_POINTER(pu32ChnID);
    PVR_CHECK_POINTER(pstRecAttr);

    CHECK_REC_INIT(&g_stRecInit);

    memcpy(&stRecAttrLocal, pstRecAttr, sizeof(HI_UNF_PVR_REC_ATTR_S));
    ret = PVRRecCheckUserCfg(&stRecAttrLocal);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    u64FileSizeReal = (stRecAttrLocal.u64MaxFileSize / PVR_FIFO_WRITE_BLOCK_SIZE) * PVR_FIFO_WRITE_BLOCK_SIZE;
    stRecAttrLocal.u64MaxFileSize = u64FileSizeReal;

    pChnAttr = PVRRecFindFreeChn();
    if (NULL == pChnAttr)
    {
        HI_ERR_PVR("Not enough channel to be used!\n");
        return HI_ERR_PVR_NO_CHN_LEFT;
    }

    PVR_LOCK(&(pChnAttr->stMutex));
    u32RecIdInteral = pChnAttr->u32ChnID - PVR_REC_START_NUM;

    /* create an data file and open it */
    pChnAttr->dataFile = PVR_OPEN64(stRecAttrLocal.szFileName, PVR_FOPEN_MODE_DATA_WRITE);
    if (PVR_FILE_INVALID_FILE == pChnAttr->dataFile)
    {
        HI_ERR_PVR("Create stream file error!\n");
        PVR_REMOVE_FILE64(stRecAttrLocal.szFileName);
        pChnAttr->enState = HI_UNF_PVR_REC_STATE_INVALID;
        ioctl(g_s32PvrFd, CMD_PVR_DESTROY_REC_CHN, (HI_S32)&(u32RecIdInteral));
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    PVR_SET_MAXFILE_SIZE(pChnAttr->dataFile, u64FileSizeReal);

    /* save chn user-config attr */
    memcpy(&pChnAttr->stUserCfg, &stRecAttrLocal, sizeof(HI_UNF_PVR_REC_ATTR_S));
    pChnAttr->stUserCfg.u64MaxFileSize = u64FileSizeReal;
    if (HI_UNF_PVR_STREAM_TYPE_ALL_TS != pstRecAttr->enStreamType)
    {
        /* get a new index handle  */
        pChnAttr->IndexHandle = PVR_Index_CreatRec(pChnAttr->u32ChnID, &stRecAttrLocal);
        if (HI_NULL_PTR == pChnAttr->IndexHandle)
        {
            PVR_CLOSE64(pChnAttr->dataFile);
            PVR_REMOVE_FILE64(stRecAttrLocal.szFileName);
            pChnAttr->enState = HI_UNF_PVR_REC_STATE_INVALID;
            ioctl(g_s32PvrFd, CMD_PVR_DESTROY_REC_CHN, (HI_S32)&(u32RecIdInteral));
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return HI_ERR_PVR_INDEX_CANT_MKIDX;
        }

        ret = PVRRecPrepareCipher(pChnAttr);
        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("Pvr recorde prepare cipher error!\n");
            (HI_VOID)PVR_Index_Destroy(pChnAttr->IndexHandle, PVR_INDEX_REC);
            PVR_CLOSE64(pChnAttr->dataFile);
            PVR_REMOVE_FILE64(stRecAttrLocal.szFileName);
            pChnAttr->enState = HI_UNF_PVR_REC_STATE_INVALID;
            ioctl(g_s32PvrFd, CMD_PVR_DESTROY_REC_CHN, (HI_S32)&(u32RecIdInteral));
            PVR_UNLOCK(&(pChnAttr->stMutex));
            return ret;
        }
    }
    else
    {
        pChnAttr->IndexHandle = HI_NULL;
    }

    stRecAttr.u32DmxId       = pChnAttr->stUserCfg.u32DemuxID;
    stRecAttr.u32RecBufSize  = pChnAttr->stUserCfg.u32DavBufSize;
    stRecAttr.enVCodecType   = pChnAttr->stUserCfg.enIndexVidType;
    stRecAttr.u32IndexSrcPid = pChnAttr->stUserCfg.u32IndexPid;
    
    if (HI_UNF_PVR_STREAM_TYPE_ALL_TS == pChnAttr->stUserCfg.enStreamType)
    {
        stRecAttr.enRecType = HI_UNF_DMX_REC_TYPE_ALL_PID;
    }
    else
    {
        stRecAttr.enRecType = HI_UNF_DMX_REC_TYPE_SELECT_PID;
    }

    if (HI_TRUE == pChnAttr->stUserCfg.bIsClearStream)
    {
        stRecAttr.bDescramed = HI_TRUE;
    }
    else
    {
        stRecAttr.bDescramed = HI_FALSE;
    }

    switch (pChnAttr->stUserCfg.enIndexType)
    {
        case HI_UNF_PVR_REC_INDEX_TYPE_VIDEO :
            stRecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_VIDEO;
            break;

        case HI_UNF_PVR_REC_INDEX_TYPE_AUDIO :
            stRecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_AUDIO;
            break;

        case HI_UNF_PVR_REC_INDEX_TYPE_NONE :
        default :
            stRecAttr.enIndexType = HI_UNF_DMX_REC_INDEX_TYPE_NONE;
    }

    ret = HI_UNF_DMX_CreateRecChn(&stRecAttr, &pChnAttr->DemuxRecHandle);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Dmx create rec chn failed! ret %x\n");
        (HI_VOID)PVR_Index_Destroy(pChnAttr->IndexHandle, PVR_INDEX_REC);
        PVR_CLOSE64(pChnAttr->dataFile);
        PVR_REMOVE_FILE64(stRecAttrLocal.szFileName);
        pChnAttr->enState = HI_UNF_PVR_REC_STATE_INVALID;
        ioctl(g_s32PvrFd, CMD_PVR_DESTROY_REC_CHN, (HI_S32)&(u32RecIdInteral));
        PVR_UNLOCK(&(pChnAttr->stMutex));
        return ret;
    }

    for (i = 0; i < PVR_REC_EVENT_HISTORY_NUM; i++)
    {
        pChnAttr->stEventHistory.enEventHistory[i] = HI_UNF_PVR_EVENT_BUTT;
    }
    pChnAttr->stEventHistory.u32Write = 0;

    HI_INFO_PVR("file size adjust to :%lld.\n", u64FileSizeReal);

    /* here we get record channel successfully */
    *pu32ChnID = pChnAttr->u32ChnID;
    HI_INFO_PVR("record creat ok\n");
    PVR_UNLOCK(&(pChnAttr->stMutex));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecDestroyChn
 Description     : free record channel
 Input           : u32ChnID  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecDestroyChn(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S *pRecChn = NULL;
    HI_U32 u32RecIdInteral;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    /* to affirm record channel stopped */
    if ((HI_UNF_PVR_REC_STATE_RUNNING == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_STOPPING == pRecChn->enState))
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        HI_ERR_PVR(" can't destroy rec chn%d : chn still runing\n", u32ChnID);
        return HI_ERR_PVR_BUSY;
    }

    /* we don't care about whether it is timeshifting! */

    (HI_VOID)HI_UNF_DMX_DestroyRecChn(pRecChn->DemuxRecHandle);

    /* close index handle */
    if (HI_NULL != pRecChn->IndexHandle)
    {
        (HI_VOID)PVR_Index_Destroy(pRecChn->IndexHandle, PVR_INDEX_REC);
        pRecChn->IndexHandle = NULL;
    }
    (HI_VOID)PVRRecReleaseCipher(pRecChn);
    (HI_VOID)PVR_FSYNC64(pRecChn->dataFile);

    /* close data file */
    (HI_VOID)PVR_CLOSE64(pRecChn->dataFile);

    /* set channel state to invalid */
    pRecChn->enState = HI_UNF_PVR_REC_STATE_INVALID;
    u32RecIdInteral = u32ChnID - PVR_REC_START_NUM;

    if (HI_SUCCESS != ioctl(g_s32PvrFd, CMD_PVR_DESTROY_REC_CHN, (HI_S32)&u32RecIdInteral))
    {
        HI_FATAL_PVR("pvr rec destroy channel error.\n");
        PVR_UNLOCK(&(pRecChn->stMutex));
        return HI_FAILURE;
    }

    PVR_UNLOCK(&(pRecChn->stMutex));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecSetChn
 Description     : set record channel attributes
 Input           : u32ChnID  **
                   pRecAttr  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecSetChn(HI_U32 u32ChnID, const HI_UNF_PVR_REC_ATTR_S * pstRecAttr)
{
    PVR_REC_CHN_S *pRecChn = NULL;

    CHECK_REC_CHNID(u32ChnID);
    PVR_CHECK_POINTER(pstRecAttr);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    CHECK_REC_CHN_INIT(pRecChn->enState);

    /* currently, we can't set record channel dynamically. */

    return HI_ERR_PVR_NOT_SUPPORT;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecGetChn
 Description     : get record channel attributes
 Input           : u32ChnID  **
                   pRecAttr  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecGetChn(HI_U32 u32ChnID, HI_UNF_PVR_REC_ATTR_S *pstRecAttr)
{
    PVR_REC_CHN_S *pRecChn = NULL;

    CHECK_REC_CHNID(u32ChnID);

    PVR_CHECK_POINTER(pstRecAttr);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    CHECK_REC_CHN_INIT(pRecChn->enState);

    memcpy(pstRecAttr, &(pRecChn->stUserCfg), sizeof(HI_UNF_PVR_REC_ATTR_S));

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecStartChn
 Description     : start record channel
 Input           : u32ChnID, the record channel ID
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecStartChn(HI_U32 u32ChnID)
{
    HI_S32 ret;
    PVR_REC_CHN_S *pRecChn = NULL;
    HI_UNF_PVR_REC_ATTR_S *pUserCfg;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    if ((HI_UNF_PVR_REC_STATE_RUNNING == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState))
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        return HI_ERR_PVR_ALREADY;
    }
    else
    {
        pRecChn->enState = HI_UNF_PVR_REC_STATE_RUNNING;
    }

    pUserCfg = &(pRecChn->stUserCfg);

    //PVRRecCheckExistFile(pUserCfg->szFileName);

    /* create record thread to receive index from the channel */
    ret = HI_UNF_DMX_StartRecChn(pRecChn->DemuxRecHandle);
    if (ret != HI_SUCCESS)
    {
        HI_ERR_PVR("start demux record channel failure! ret %x\n", ret);
        pRecChn->enState = HI_UNF_PVR_REC_STATE_INIT;
        PVR_UNLOCK(&(pRecChn->stMutex));
        return ret;
    }
    else
    {
        HI_INFO_PVR("start demux OK, indexTYpe:%d!\n", pUserCfg->enIndexType);
    }

    pRecChn->u64CurFileSize  = 0;
    pRecChn->u64CurWritePos  = 0;
    pRecChn->bSavingData     = HI_TRUE;
    pRecChn->s32OverFixTimes = 0;
    pRecChn->bEventFlg       = HI_FALSE;
        
    (void)HI_SYS_GetTimeStampMs(&pRecChn->u32RecStartTimeMs);

    if (HI_NULL == pRecChn->IndexHandle)
    {
        ret = pthread_create(&pRecChn->RecordFileThread, HI_NULL, PVRRecSaveStream, pRecChn);
    }
    else
    {
        PVR_Index_ResetRecAttr(pRecChn->IndexHandle);

        /* failure to write user data, but still, continue to record. just only print the error info */
        if (PVR_Index_PrepareHeaderInfo(pRecChn->IndexHandle, pRecChn->stUserCfg.u32UsrDataInfoSize, pRecChn->stUserCfg.enIndexVidType))
        {
            HI_ERR_PVR("PVR_Index_PrepareHeaderInfo fail\n");
        }
    

#ifdef HI_PVR_L2_CACHE_SUPPORT   
        if (HI_SUCCESS != PVRRecTsQueueInit(pRecChn))
        {
            pRecChn->enState = HI_UNF_PVR_REC_STATE_INIT;
            (HI_VOID)HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            PVR_UNLOCK(&(pRecChn->stMutex));
            return HI_FAILURE;
        }
    
        ret = pthread_create(&pRecChn->RecordCacheThread, HI_NULL, PVRRecSaveToCache, pRecChn);
        if (ret != HI_SUCCESS)
        {
            pRecChn->enState = HI_UNF_PVR_REC_STATE_STOP;
            HI_ERR_PVR("Create save cache thread failure!\n");
            PVRRecTsQueueDeInit(pRecChn);
            (HI_VOID)HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            PVR_UNLOCK(&(pRecChn->stMutex));
            return HI_FAILURE;
        }
        
        ret = pthread_create(&pRecChn->RecordFileThread, HI_NULL, PVRRecSaveToFile, pRecChn);
        if (ret != HI_SUCCESS)
        {
            PVR_UNLOCK(&(pRecChn->stMutex));
            HI_ERR_PVR("create record STREAM thread failure!\n");
            (HI_VOID)pthread_join(pRecChn->RecordCacheThread, HI_NULL);
            PVRRecTsQueueDeInit(pRecChn);
            (HI_VOID)HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            pRecChn->enState = HI_UNF_PVR_REC_STATE_INIT;
            return HI_FAILURE;
        }
#else
        ret = pthread_create(&pRecChn->RecordFileThread, HI_NULL, PVRRecSaveIndexAndStreamRoutine, pRecChn);

        if (ret != HI_SUCCESS)
        {
            HI_ERR_PVR("create record STREAM thread failure!\n");
            (HI_VOID)HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
            pRecChn->enState = HI_UNF_PVR_REC_STATE_INIT;
            PVR_UNLOCK(&(pRecChn->stMutex));
            return HI_FAILURE;
        }
#endif
    }

    HI_INFO_PVR("channel %d start ok.\n", u32ChnID);

    PVR_UNLOCK(&(pRecChn->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecStopChn
 Description     : stop the pointed record channel
 Input           : u32ChnId, channle id
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecStopChn(HI_U32 u32ChnID)
{
    HI_S32 ret;

    //HI_UNF_PVR_FILE_ATTR_S  fileAttr;

    PVR_REC_CHN_S  *pRecChn;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    /* to confirm the record channel running                           */
    if ((HI_UNF_PVR_REC_STATE_RUNNING != pRecChn->enState)
        && (HI_UNF_PVR_REC_STATE_PAUSE != pRecChn->enState))
    {
        HI_WARN_PVR("Channel has already stopped!\n");
        //PVR_UNLOCK(&(pRecChn->stMutex));
        //return HI_ERR_PVR_ALREADY;
    }

    /* state: stoping -> stop. make sure the index thread exit first   */
    pRecChn->enState = HI_UNF_PVR_REC_STATE_STOPPING;

    //(HI_VOID)HI_PthreadJoin(pRecChn->RecordCacheThread, NULL);
    //HI_ASSERT(HI_UNF_PVR_REC_STATE_STOP == pRecChn->enState);

#if 0
    ret = PVR_Index_RecGetFileAttr(pRecChn->IndexHandle, &fileAttr);
    if (HI_SUCCESS == ret)
    {
        indexedSize = fileAttr.u64ValidSizeInByte;
    }
    else
    {
        indexedSize = pRecChn->u64CurFileSize;
    }

    HI_ERR_PVR("file size:%llu, index size:%llu\n", pRecChn->u64CurFileSize,
               fileAttr.u64ValidSizeInByte);

    while ((pRecChn->u64CurFileSize < indexedSize)
           && (waitTimes < 30)
           && pRecChn->bSavingData)    /*If returned already by error,go ahead*/ /*CNcomment:如果已经出错退出，可以不用继续等待 */
    {
        usleep(1000 * 40);
        waitTimes++;
        HI_ERR_PVR("wait%u, file size:%llu, index size:%llu\n", waitTimes,
                   pRecChn->u64CurFileSize,
                   fileAttr.u64ValidSizeInByte);
    }
#endif

    pRecChn->enState = HI_UNF_PVR_REC_STATE_STOP;
#ifdef HI_PVR_L2_CACHE_SUPPORT
    if (HI_NULL != pRecChn->IndexHandle)
    {
        (HI_VOID)pthread_join(pRecChn->RecordCacheThread, NULL);
        pRecChn->RecordCacheThread = 0;
    }
    
#endif

    (HI_VOID)pthread_join(pRecChn->RecordFileThread, NULL);
#ifdef HI_PVR_L2_CACHE_SUPPORT
    if (HI_NULL != pRecChn->IndexHandle)
    {
        PVRRecTsQueueDeInit(pRecChn);
    }
#endif

    ret = HI_UNF_DMX_StopRecChn(pRecChn->DemuxRecHandle);
    if (HI_SUCCESS != ret)
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        HI_ERR_PVR("demux stop error:%#x\n", ret);
        return ret;
    }
    else
    {
        HI_INFO_PVR("stop demux rec ok\n");
    }

    PVR_UNLOCK(&(pRecChn->stMutex));
#ifdef DUMP_DMX_DATA
    if (NULL != g_pvrfpTSReceive)
    {
        fclose(g_pvrfpTSReceive);
        g_pvrfpTSReceive = NULL;
    }
    if (NULL != g_pvrfpIdxReceive)
    {
        fclose(g_pvrfpIdxReceive);
        g_pvrfpIdxReceive = NULL;
    }
#endif
    return HI_SUCCESS;
}

HI_S32 HI_PVR_RecPauseChn(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S  *pRecChn;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    /* to confirm the record channel running  */
    if ((HI_UNF_PVR_REC_STATE_RUNNING != pRecChn->enState)
        && (HI_UNF_PVR_REC_STATE_PAUSE != pRecChn->enState))
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        HI_ERR_PVR("Channel not started!\n");
        return HI_ERR_PVR_REC_INVALID_STATE;
    }

    pRecChn->enState = HI_UNF_PVR_REC_STATE_PAUSE;
    PVR_UNLOCK(&(pRecChn->stMutex));
    return HI_SUCCESS;
}

HI_S32 HI_PVR_RecResumeChn(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S  *pRecChn;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    /* to confirm the record channel running  */
    if ((HI_UNF_PVR_REC_STATE_RUNNING != pRecChn->enState)
        && (HI_UNF_PVR_REC_STATE_PAUSE != pRecChn->enState))
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        HI_ERR_PVR("Channel not started!\n");
        return HI_ERR_PVR_REC_INVALID_STATE;
    }

    pRecChn->enState = HI_UNF_PVR_REC_STATE_RUNNING;
    PVR_UNLOCK(&(pRecChn->stMutex));
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype       : HI_PVR_RecGetStatus
 Description     : get record status and recorded file size
 Input           : u32ChnID    **
                   pRecStatus  **
 Output          : None
 Return Value    :
 Global Variable
    Read Only    :
    Read & Write :
  History
  1.Date         : 2008/4/10
    Author       : q46153
    Modification : Created function

*****************************************************************************/
HI_S32 HI_PVR_RecGetStatus(HI_U32 u32ChnID, HI_UNF_PVR_REC_STATUS_S *pstRecStatus)
{
    HI_S32 ret;
    PVR_REC_CHN_S   *pRecChn;
    HI_UNF_PVR_FILE_ATTR_S fileAttr;
    HI_UNF_DMX_RECBUF_STATUS_S stStatus;
    HI_U32 u32CurTimeMs = 0;
    //HI_U32 u32DeltaTimeMs = 0;
    
    CHECK_REC_CHNID(u32ChnID);
    PVR_CHECK_POINTER(pstRecStatus);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);

    (void)HI_SYS_GetTimeStampMs(&u32CurTimeMs);

    if ((HI_UNF_PVR_REC_STATE_INIT == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_INVALID == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_STOPPING == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_STOP == pRecChn->enState)
        || (HI_UNF_PVR_REC_STATE_BUTT == pRecChn->enState)) /* not running, just return state */
    {
        memset(pstRecStatus, 0, sizeof(HI_UNF_PVR_REC_STATUS_S));
        pstRecStatus->enState = pRecChn->enState;
        PVR_UNLOCK(&(pRecChn->stMutex));
        return HI_SUCCESS;
    }

    /* get record state                                                        */
    pstRecStatus->enState = pRecChn->enState;

    ret = HI_UNF_DMX_GetRecBufferStatus(pRecChn->DemuxRecHandle, &stStatus);
    if (HI_SUCCESS == ret)
    {
        pstRecStatus->stRecBufStatus.u32BufSize  = stStatus.u32BufSize;
        pstRecStatus->stRecBufStatus.u32UsedSize = stStatus.u32UsedSize;
    }
    else
    {
        HI_ERR_PVR("Get recording buffer status fail! set buffer status to 0. ret=%#x\n", ret);
        pstRecStatus->stRecBufStatus.u32BufSize  = 0;
        pstRecStatus->stRecBufStatus.u32UsedSize = 0;
    }

    if (HI_NULL == pRecChn->IndexHandle)
    {
        pstRecStatus->u32CurTimeInMs   = 0;
        pstRecStatus->u32CurWriteFrame = 0;
        pstRecStatus->u64CurWritePos   = pRecChn->u64CurFileSize;
        pstRecStatus->u32StartTimeInMs = 0;
        pstRecStatus->u32EndTimeInMs = 0;
        PVR_UNLOCK(&(pRecChn->stMutex));

        return HI_SUCCESS;
    }

    /* get recorded file size                                                  */

    //pstRecStatus->u64CurWritePos = pRecChn->u64CurFileSize;

    PVR_Index_FlushIdxWriteCache(pRecChn->IndexHandle);

    ret = PVR_Index_PlayGetFileAttrByFileName(pRecChn->stUserCfg.szFileName, pRecChn->IndexHandle, &fileAttr);
    if (HI_SUCCESS == ret)
    {
    #if 0
        /*attention: this condition is fo situation such as: tuner signal droped and so on,
        but ,using this condition may cause the u32CurTimeInMs and u32EndTimeInMs changes not linear,
        because when acquire demux rec tsbuf ,may be will wait until timeout ,in this time ,pRecChn->bSavingData is false
        */
        if ((HI_UNF_PVR_REC_STATE_PAUSE == pRecChn->enState) ||
            (HI_UNF_PVR_REC_STATE_STOP == pRecChn->enState) || 
            (pRecChn->bSavingData  == HI_FALSE))
        {
            pstRecStatus->u32CurTimeInMs = pRecChn->IndexHandle->stCurRecFrame.u32DisplayTimeMs - fileAttr.u32StartTimeInMs;
            pstRecStatus->u32EndTimeInMs = fileAttr.u32EndTimeInMs;
        }
        else
        {
            if (0 == pRecChn->IndexHandle->stCycMgr.u32CycTimes)
            {
                u32DeltaTimeMs = (u32CurTimeMs - pRecChn->u32RecStartTimeMs) - (pRecChn->IndexHandle->stCurRecFrame.u32DisplayTimeMs - fileAttr.u32StartTimeInMs);
            }
            else
            {
                u32DeltaTimeMs = 0;
            }
            
            if (u32DeltaTimeMs > 1000)
            {
                pstRecStatus->u32CurTimeInMs = u32CurTimeMs - u32DeltaTimeMs - pRecChn->u32RecStartTimeMs;
            }
            else
            {
                pstRecStatus->u32CurTimeInMs = u32CurTimeMs - pRecChn->u32RecStartTimeMs;
            }
            
            pstRecStatus->u32EndTimeInMs = pstRecStatus->u32CurTimeInMs;
        }
    #else
        pstRecStatus->u32CurTimeInMs = pRecChn->IndexHandle->stCurRecFrame.u32DisplayTimeMs;
        pstRecStatus->u32EndTimeInMs = fileAttr.u32EndTimeInMs;
    #endif
        
        pstRecStatus->u32CurWriteFrame = fileAttr.u32FrameNum;
        pstRecStatus->u64CurWritePos   = pRecChn->u64CurWritePos;
        pstRecStatus->u32StartTimeInMs = fileAttr.u32StartTimeInMs;
    }

    PVR_UNLOCK(&(pRecChn->stMutex));

    return ret;
}

HI_S32 HI_PVR_RecRegisterWriteCallBack(HI_U32 u32ChnID, ExtraCallBack writeCallBack)
{
    PVR_REC_CHN_S   *pRecChn;

    CHECK_REC_CHNID(u32ChnID);
    PVR_CHECK_POINTER(writeCallBack);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);
    /*modify for DTS2014032900795 */
    if(HI_UNF_PVR_STREAM_TYPE_ALL_TS != pRecChn->stUserCfg.enStreamType)
    {
        pRecChn->writeCallBack = writeCallBack;
        PVR_UNLOCK(&(pRecChn->stMutex));
        return HI_SUCCESS;
    }
    else
    {
        PVR_UNLOCK(&(pRecChn->stMutex));
        return HI_ERR_PVR_NOT_SUPPORT;
    }       
}

HI_S32 HI_PVR_RecUnRegisterWriteCallBack(HI_U32 u32ChnID)
{
    PVR_REC_CHN_S   *pRecChn;

    CHECK_REC_CHNID(u32ChnID);

    pRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);
    PVR_LOCK(&(pRecChn->stMutex));
    CHECK_REC_CHN_INIT_UNLOCK(pRecChn);
    pRecChn->writeCallBack = NULL;
    PVR_UNLOCK(&(pRecChn->stMutex));

    return HI_SUCCESS;
}

/*
 * suggesting, the user should set/get the user data by TS file name. as extend, also used by *.idx
 */
HI_S32 HI_PVR_SetUsrDataInfoByFileName(const HI_CHAR *pFileName, HI_U8 *pInfo, HI_U32 u32UsrDataLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32Fd;
    HI_CHAR strIdxFileName[PVR_MAX_FILENAME_LEN] = {0};

    PVR_CHECK_POINTER(pFileName);
    PVR_CHECK_POINTER(pInfo);

    if (0 == u32UsrDataLen)
    {
        return HI_SUCCESS;
    }

    PVR_Index_GetIdxFileName(strIdxFileName, (HI_CHAR*)pFileName);

    if (HI_FALSE == PVR_CHECK_FILE_EXIST(strIdxFileName))
    {
        HI_ERR_PVR("file:%s not exist.\n", strIdxFileName);
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    s32Fd = PVR_OPEN(strIdxFileName, PVR_FOPEN_MODE_INDEX_BOTH);
    if (s32Fd < 0)
    {
        HI_ERR_PVR("open file:%s fail:0x%x\n", strIdxFileName, s32Fd);
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    s32Ret = PVR_Index_SetUsrDataInfo(s32Fd, pInfo, u32UsrDataLen);
    if (s32Ret > 0)
    {
        s32Ret = HI_SUCCESS;
    }
    else
    {
        HI_ERR_PVR("PVR_Index_SetUsrDataInfo fail\n");
    }

    PVR_CLOSE(s32Fd);
    return s32Ret;
}

HI_S32 HI_PVR_GetUsrDataInfoByFileName(const HI_CHAR *pFileName, HI_U8 *pInfo, HI_U32 u32BufLen, HI_U32* pUsrDataLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32Fd;
    HI_CHAR strIdxFileName[PVR_MAX_FILENAME_LEN] = {0};

    PVR_CHECK_POINTER(pFileName);
    PVR_CHECK_POINTER(pInfo);
    PVR_CHECK_POINTER(pUsrDataLen);

    if (0 == u32BufLen)
    {
        return HI_SUCCESS;
    }

    PVR_Index_GetIdxFileName(strIdxFileName, (HI_CHAR*)pFileName);

    s32Fd = PVR_OPEN(strIdxFileName, PVR_FOPEN_MODE_INDEX_READ);
    if (s32Fd < 0)
    {
        HI_ERR_PVR("open file:%s fail:0x%x\n", strIdxFileName, s32Fd);
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    s32Ret = PVR_Index_GetUsrDataInfo(s32Fd, pInfo, u32BufLen);
    if (s32Ret > 0)
    {
        *pUsrDataLen = s32Ret;
        s32Ret = HI_SUCCESS;
    }
    else
    {
        *pUsrDataLen = 0;
        HI_ERR_PVR("PVR_Index_GetUsrDataInfo fail\n");
    }

    PVR_CLOSE(s32Fd);
    return s32Ret;
}

HI_S32 HI_PVR_SetCAData(const HI_CHAR *pIdxFileName, HI_U8 *pInfo, HI_U32 u32CADataLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32Fd;

    PVR_CHECK_POINTER(pIdxFileName);
    PVR_CHECK_POINTER(pInfo);

    if ((0 == u32CADataLen )||(PVR_MAX_CADATA_LEN < u32CADataLen))
    {
        HI_ERR_PVR("u32CADataLen (%d) invalid!\n",u32CADataLen);
        return HI_FAILURE;
    }

   //PVR_Index_GetIdxFileName(strIdxFileName, (HI_CHAR*)pFileName);

    s32Fd = PVR_OPEN(pIdxFileName, PVR_FOPEN_MODE_INDEX_BOTH);
    if (s32Fd < 0)
    {
        HI_ERR_PVR("open file:%s fail:0x%x\n", pIdxFileName, s32Fd);
        return HI_ERR_PVR_FILE_CANT_OPEN;
    }

    s32Ret = PVR_Index_SetCADataInfo(s32Fd, pInfo, u32CADataLen);
    if (s32Ret > 0)
    {
        s32Ret = HI_SUCCESS;
    }
    else
    {
        HI_ERR_PVR("PVR_Index_SetCADataInfo fail\n");
    }

    PVR_CLOSE(s32Fd);
    return s32Ret;
}

HI_S32 HI_PVR_GetCAData(const HI_CHAR *pIdxFileName, HI_U8 *pInfo, HI_U32 u32BufLen, HI_U32* u32CADataLen)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_S32 s32Fd;

    PVR_CHECK_POINTER(pIdxFileName);
    PVR_CHECK_POINTER(pInfo);
    PVR_CHECK_POINTER(u32CADataLen);

    if (!u32BufLen)
    {
        return HI_SUCCESS;
    }

    //PVR_Index_GetIdxFileName(strIdxFileName, (HI_CHAR*)pFileName);

    s32Fd = PVR_OPEN(pIdxFileName, PVR_FOPEN_MODE_INDEX_READ);
    if (s32Fd < 0)
    {
         HI_ERR_PVR("open file:%s fail:0x%x\n", pIdxFileName, s32Fd);
         return HI_ERR_PVR_FILE_CANT_OPEN;
    }

     s32Ret = PVR_Index_GetCADataInfo(s32Fd, pInfo, u32BufLen);
     if (s32Ret > 0)
     {
        *u32CADataLen = (HI_U32)s32Ret;
         s32Ret = HI_SUCCESS;
     }
     else
     {
         *u32CADataLen = 0;
         HI_ERR_PVR("PVR_Index_GetCADataInfo fail\n");
     }

     PVR_CLOSE(s32Fd);
     return s32Ret;
}

HI_S32 HI_PVR_RecAddPid(HI_U32 u32ChnID, HI_U32 u32Pid)
{
    HI_S32 s32Ret;
    HI_HANDLE hPidChn;
    PVR_REC_CHN_S *pstRecChn = HI_NULL;

    CHECK_REC_CHNID(u32ChnID);

    pstRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);

    s32Ret = HI_UNF_DMX_AddRecPid(pstRecChn->DemuxRecHandle, u32Pid, &hPidChn);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Dmx add rec pid %d failed! ret %x\n", u32Pid, s32Ret);
    }

    return s32Ret;
}

HI_S32 HI_PVR_RecDelPid(HI_U32 u32ChnID, HI_U32 u32Pid)
{
    HI_S32 s32Ret;
    HI_HANDLE hPidChn;
    PVR_REC_CHN_S *pstRecChn = HI_NULL;

    CHECK_REC_CHNID(u32ChnID);

    pstRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);

    s32Ret = HI_UNF_DMX_GetChannelHandle(pstRecChn->stUserCfg.u32DemuxID, u32Pid, &hPidChn);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Dmx get pid handle failed! ret %x. demuxid %d, pid %d\n", 
                    s32Ret, pstRecChn->stUserCfg.u32DemuxID, u32Pid);
        return s32Ret;
    }

    s32Ret = HI_UNF_DMX_DelRecPid(pstRecChn->DemuxRecHandle, hPidChn);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Dmx del rec pid %d failed! ret %x\n", u32Pid, s32Ret);
        return s32Ret;
    }

    return HI_SUCCESS;
}

HI_S32 HI_PVR_RecDelAllPid(HI_U32 u32ChnID)
{
    HI_S32 s32Ret;
    PVR_REC_CHN_S *pstRecChn = HI_NULL;

    CHECK_REC_CHNID(u32ChnID);

    pstRecChn = PVR_GET_RECPTR_BY_CHNID(u32ChnID);

    s32Ret = HI_UNF_DMX_DelAllRecPid(pstRecChn->DemuxRecHandle);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_PVR("Dmx del all rec pid failed! ret %x\n", s32Ret);
    }

    return s32Ret;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

