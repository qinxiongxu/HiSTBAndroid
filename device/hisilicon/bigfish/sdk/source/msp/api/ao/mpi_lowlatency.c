/******************************************************************************

  Copyright (C), 2011-2015, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name          : mpi_vir.c
  Version             : Initial Draft
  Author              : Hisilicon multimedia software group
  Created             : 2012/12/12
  Last Modified     :
  Description        :
  Function List      :
  History              :
  1.Date               : 2012/12/12
  Author             : h00213218
  Modification     : Created file

******************************************************************************/
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/poll.h>
#include <pthread.h>
#include "mpi_lowlatency.h"
#include "hi_mpi_mem.h"
#include "hi_error_mpi.h"
#include "hi_drv_ao.h"
#include "drv_ao_ioctl.h"
#include "hi_audsp_aoe.h"

extern HI_S32 g_s32AOFd;
static HI_TRACK_MmapAttr_S g_stMMPAttr;
static S_AIP_REGS_TYPE* g_pstAipReg = HI_NULL;

static inline HI_U32 TrackMmapBufQueryBusy(HI_TRACK_MmapBufAttr_S* pstTrackMmapBufAttr)
{
    HI_U32 u32ReadPos, u32WritePos, u32BusyLen = 0, u32Lenght = 0;

    u32ReadPos  = *(pstTrackMmapBufAttr->pu32ReadPtr);
    u32WritePos = *(pstTrackMmapBufAttr->pu32WritePtr);
    u32Lenght   =  pstTrackMmapBufAttr->u32Size;

    if (u32WritePos >= u32ReadPos)
    {
        u32BusyLen = u32WritePos - u32ReadPos;
    }
    else
    {
        u32BusyLen = u32Lenght - (u32ReadPos - u32WritePos);
    }

    return u32BusyLen;
}

static inline HI_U32 TrackMmapBufQueryFree(HI_TRACK_MmapBufAttr_S* pstTrackMmapBufAttr)
{
    HI_U32  u32ReadPos, u32WritePos, u32FreeLen = 0, u32Lenght = 0;

    u32ReadPos  = *(pstTrackMmapBufAttr->pu32ReadPtr);
    u32WritePos = *(pstTrackMmapBufAttr->pu32WritePtr);
    u32Lenght   =  pstTrackMmapBufAttr->u32Size ;

    if (u32WritePos >= u32ReadPos)
    {
        u32FreeLen = (u32Lenght - (u32WritePos - u32ReadPos));
    }
    else
    {
        u32FreeLen = (u32ReadPos - u32WritePos);
    }

    u32FreeLen = (u32FreeLen <= 32) ? 0 : u32FreeLen - 32;

    if (u32FreeLen > 0)
    {
        u32FreeLen -= 1;
    }

    return u32FreeLen;
}

static inline HI_U32 TrackMmapBufWrite(HI_TRACK_MmapBufAttr_S* pstTrackMmapBufAttr, HI_U8* pDest, HI_U32 u32Len)
{
    HI_U32* pVirAddr = HI_NULL;

    HI_U32  u32WtLen[2] = {0, 0};
    HI_U32  u32WtPos[2] = {0, 0};
    HI_U32  i;
    HI_U32  u32ReadPos, u32WritePos, u32Lenght = 0;

    /* 先从共享内存中取出头信息，避免使用过程中发生变化 */
    u32ReadPos  = *(pstTrackMmapBufAttr->pu32ReadPtr);
    u32WritePos = *(pstTrackMmapBufAttr->pu32WritePtr);
    u32Lenght   =  pstTrackMmapBufAttr->u32Size;

    u32WtPos[0] = u32WritePos;
    if (u32WritePos >= u32ReadPos)
    {
        if (u32Lenght >= (u32WritePos + u32Len))
        {
            u32WtLen[0] = u32Len;
        }
        else
        {
            u32WtLen[0] = u32Lenght - u32WritePos;
            u32WtLen[1] = u32Len - u32WtLen[0];

            u32WtPos[1] = 0;
        }
    }
    else
    {
        u32WtLen[0] = u32Len;
    }

    for (i = 0; ( i < 2 ) && (u32WtLen[i] != 0); i++)
    {
        pVirAddr = (HI_U32*)((HI_U32)pstTrackMmapBufAttr->u32UserAddr+ u32WtPos[i]);
        if (pDest)
        {
            memcpy(pVirAddr, pDest, u32WtLen[i]);
            pDest = pDest + u32WtLen[i];
        }
        else
        {
            memset(pVirAddr, 0, u32WtLen[i]);
        }
        u32WritePos = u32WtPos[i] + u32WtLen[i];
    }

    if (u32WritePos == u32Lenght)
    {
        u32WritePos = 0;
    }
    *(pstTrackMmapBufAttr->pu32WritePtr) = u32WritePos;

    return u32WtLen[0] + u32WtLen[1];
}

static HI_S32 TRACKMmapWriteFrame(HI_TRACK_MmapBufAttr_S* pstTrackMmapBufAttr,const HI_UNF_AO_FRAMEINFO_S* pstAoFrame)
{
    HI_U32 u32BusySize;
    HI_U32 u32Latency, u32FrameSize, u32WriteSize;

    //先做水线判断，然后写入数据
    //u32Latency = u32Threshold * pstAoFrame->u32SampleRate * pstAoFrame->u32Channels * sizeof(HI_U16)/ 1000;  // 400ms
    u32Latency = 400 * pstAoFrame->u32SampleRate * pstAoFrame->u32Channels * sizeof(HI_U16)/ 1000;  // todo
    
    u32FrameSize = pstAoFrame->u32PcmSamplesPerFrame * pstAoFrame->u32Channels * sizeof(HI_U16);
    u32BusySize = TrackMmapBufQueryBusy(pstTrackMmapBufAttr);
    if ((u32BusySize + u32FrameSize) < u32Latency)
    {
        u32WriteSize = TrackMmapBufWrite(pstTrackMmapBufAttr, (HI_U8*)pstAoFrame->ps32PcmBuffer, u32FrameSize);
        if (u32WriteSize == u32FrameSize)
        {
            return HI_SUCCESS;
        }
        else
        {
            return HI_FAILURE;
        }
    }
    else
    {
        return HI_ERR_AO_OUT_BUF_FULL;
    }
}

HI_S32 LOWLATENCYTrackMmap(HI_HANDLE hTrack, HI_TRACK_MmapAttr_S* pstTrackMmapAttr)
{
    AO_Track_GetTrackMapInfo_Param_S stTrackMapInfo;
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32UserAddr;
    stTrackMapInfo.hTrack = hTrack;
    HI_TRACK_MmapBufAttr_S *pstMmapBuff = &pstTrackMmapAttr->stMmapBuff;
    
    memcpy(&(stTrackMapInfo.stTrackMmapAttr), pstTrackMmapAttr, sizeof(HI_TRACK_MmapAttr_S));
    pstMmapBuff->u32UserAddr = HI_NULL;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_TRACK_MMAPTRACKATTR, &stTrackMapInfo);
    if (s32Ret != HI_SUCCESS)
    {
        HI_ERR_AO("ioctl CMD_AO_TRACK_MMAPTRACKATTR failed.s32Ret %x!\n",s32Ret);
        return s32Ret;
    }
    if (stTrackMapInfo.u32AipRegAddr == HI_NULL)
    {
        HI_ERR_AO("Aip Register address error!\n");
        return HI_FAILURE;
    }
    
    g_pstAipReg = (S_AIP_REGS_TYPE *)HI_MEM_Map(stTrackMapInfo.u32AipRegAddr, sizeof(S_AIP_REGS_TYPE));
    if (!g_pstAipReg)
    {
        HI_ERR_AO("mmap aip register failed!\n");
        return HI_FAILURE;
    }

    u32UserAddr = (HI_U32)HI_MEM_Map(g_pstAipReg->AIP_BUF_PHYADDR, g_pstAipReg->AIP_BUF_SIZE.bits.buff_size);
    if (!u32UserAddr)
    {
        HI_ERR_AO("mmap aip buffer failed!\n");
        HI_MEM_Unmap((HI_VOID*)g_pstAipReg);
        return HI_FAILURE;
    }

    pstMmapBuff->u32UserAddr  = u32UserAddr;
    pstMmapBuff->pu32ReadPtr  = (HI_U32*)(&(g_pstAipReg->AIP_BUF_RPTR));
    pstMmapBuff->pu32WritePtr = (HI_U32*)(&(g_pstAipReg->AIP_BUF_WPTR));
    pstMmapBuff->u32Size      =  g_pstAipReg->AIP_BUF_SIZE.bits.buff_size;

    return HI_SUCCESS;
}

HI_S32   LOWLATENCYTrackUnmap(HI_HANDLE hTrack, HI_TRACK_MmapBufAttr_S *pstMmapBuff)
{ 
    HI_MEM_Unmap((HI_VOID*)pstMmapBuff->u32UserAddr);
    HI_MEM_Unmap((HI_VOID*)g_pstAipReg);
    return HI_SUCCESS;
}

HI_S32   LOWLATENCYTrackSetFifoBypass(HI_HANDLE hTrack, HI_BOOL bEnable)
{
    CHECK_AO_TRACK_ID(hTrack);

    AO_Track_FifoBypass_Param_S  stFifoBypass;
    stFifoBypass.hTrack = hTrack;
    stFifoBypass.bEnable = bEnable;
    
    return ioctl(g_s32AOFd, CMD_AO_TRACK_SETFIFOBYPASS, &stFifoBypass);
}

HI_BOOL LOWLATENCY_CheckIsLowlcyTrack(HI_HANDLE hTrack)
{
   HI_BOOL Ret = HI_FALSE;
   
   if((hTrack & 0xff00) == (HI_ID_LOWLATENCY_TRACK<<8))
   {
       Ret = HI_TRUE;
   }
   return Ret;
}

HI_S32 LOWLATENCY_EnableLowLatencyAttr( HI_HANDLE hTrack,HI_BOOL bEanble)
{
    HI_S32 Ret = HI_SUCCESS;
    
    if(bEanble == HI_TRUE)
    {
        g_stMMPAttr.u32BitPerSample = HI_UNF_BIT_DEPTH_16;
        g_stMMPAttr.u32SampleRate   = HI_UNF_SAMPLE_RATE_48K;
        g_stMMPAttr.u32Channels     = 2;
        
        Ret = LOWLATENCYTrackMmap(hTrack, &g_stMMPAttr);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("LOWLATENCYTrackMmap failed\n");
            return Ret;
        }
        
        Ret = LOWLATENCYTrackSetFifoBypass(hTrack, HI_TRUE);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("LOWLATENCYTrackSetFifoBypass failed\n");
            return Ret;
        }
    }
    else
    {
        Ret = LOWLATENCYTrackSetFifoBypass(hTrack, HI_FALSE);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("LOWLATENCYTrackSetFifoBypass failed\n");
            return Ret;
        }
        Ret = LOWLATENCYTrackUnmap(hTrack, &g_stMMPAttr.stMmapBuff);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("LOWLATENCYTrackUnmap failed\n");
            return Ret;
        }
    }
    return Ret;
}

HI_S32 LOWLATENCY_SendData(HI_HANDLE hTrack,const HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    if((pstAOFrame->u32Channels != 2) || (pstAOFrame->s32BitPerSample != HI_UNF_BIT_DEPTH_16) || (pstAOFrame->u32SampleRate != HI_UNF_SAMPLE_RATE_48K))
    {
        HI_ERR_AO("pstAOFrame Inavlid para\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    return TRACKMmapWriteFrame(&g_stMMPAttr.stMmapBuff, pstAOFrame);
}

HI_S32 LOWLATENCY_GetAIPDelayMs(HI_HANDLE hTrack,HI_U32 *pDelayMs)
{
    HI_U32 u32BusySize;
    u32BusySize = TrackMmapBufQueryBusy(&g_stMMPAttr.stMmapBuff);
    //u32Latency = 400 * pstAoFrame->u32SampleRate * pstAoFrame->u32Channels * sizeof(HI_U16)/ 1000; 

    *pDelayMs = u32BusySize * 1000 / (48000 * 2 * sizeof(HI_U16));
    return HI_SUCCESS;
}

/******************************************************************************/
#define SND_OUT_LATENCY 23    // must less than 40
#define SND_MUTES_FRAMES 10

typedef struct 
{
    HI_UNF_SND_OUTPUTPORT_E enOutPort;
    HI_U8*  pDmaAddr;
    HI_U32* pu32Wptr;
    HI_U32* pu32Rptr;
    HI_U32  u32Size;
} SND_PORT_USER_ATTR_S;

typedef struct 
{
    HI_BOOL                bEnable;
    HI_UNF_SAMPLE_RATE_E   enSampleRate;
    HI_U32                 u32FrmCnt;
    SND_PORT_KERNEL_ATTR_S stPortKAttr[HI_UNF_SND_OUTPUTPORT_MAX];
    SND_PORT_USER_ATTR_S   stPortUAttr[HI_UNF_SND_OUTPUTPORT_MAX];
} DMA_SND_SOURCE_S;

static DMA_SND_SOURCE_S g_DMASource;

static HI_VOID DMASourceReset(HI_VOID)
{
    HI_U32 u32PortNum;
    memset(&g_DMASource, 0, sizeof(DMA_SND_SOURCE_S));
    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        g_DMASource.stPortUAttr[u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_BUTT;
        g_DMASource.stPortKAttr[u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_BUTT;
    }
    g_DMASource.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
}

static inline HI_U32 DMAPortQueryBusy(SND_PORT_USER_ATTR_S* pstAttr)
{
    HI_U32 u32ReadPos, u32WritePos, u32Lenght = 0;

    u32ReadPos  = *(pstAttr->pu32Rptr);
    u32WritePos = *(pstAttr->pu32Wptr);
    u32Lenght   =  pstAttr->u32Size;

    return ((u32WritePos >= u32ReadPos) ? (u32WritePos - u32ReadPos) : (u32Lenght + u32WritePos - u32ReadPos));
}

static inline HI_U32 DMAPortWrite(SND_PORT_USER_ATTR_S* pstAttr, HI_U8* pSrc, HI_U32 u32Len)
{
    HI_U8* pVirAddr = HI_NULL;

    HI_U32  u32WtLen[2] = {0, 0};
    HI_U32  u32WtPos[2] = {0, 0};
    HI_U32  i;
    HI_U32  u32ReadPos, u32WritePos, u32Lenght = 0;

    u32ReadPos  = *(pstAttr->pu32Rptr);
    u32WritePos = *(pstAttr->pu32Wptr);
    u32Lenght   =  pstAttr->u32Size;

    u32WtPos[0] = u32WritePos;
    if (u32WritePos >= u32ReadPos)
    {
        if (u32Lenght >= (u32WritePos + u32Len))
        {
            u32WtLen[0] = u32Len;
        }
        else
        {
            u32WtLen[0] = u32Lenght - u32WritePos;
            u32WtLen[1] = u32Len - u32WtLen[0];

            u32WtPos[1] = 0;
        }
    }
    else
    {
        u32WtLen[0] = u32Len;
    }

    for (i = 0; ( i < 2 ) && (u32WtLen[i] != 0); i++)
    {
        pVirAddr = pstAttr->pDmaAddr+ u32WtPos[i];
        if (HI_NULL != pSrc)
        {
            memcpy(pVirAddr, pSrc, u32WtLen[i]);
            pSrc = pSrc + u32WtLen[i];
        }
        else
        {
            memset(pVirAddr, 0, u32WtLen[i]);
        }
        u32WritePos = u32WtPos[i] + u32WtLen[i];
    }

    *(pstAttr->pu32Wptr) = ((u32WritePos == u32Lenght) ? 0 : u32WritePos);

    return u32WtLen[0] + u32WtLen[1];
}

static HI_S32 SetSndDMAMode(HI_UNF_SAMPLE_RATE_E enSampleRate, HI_BOOL bEnable)
{
    HI_S32 s32Ret;
    AO_SND_SetDMAMode_Param_S stParam;

    stParam.enSound = HI_UNF_SND_0;
    stParam.bEnable = bEnable;
    stParam.enSampleRate = enSampleRate;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_SETDMAMODE, &stParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("CMD_AO_SND_SETDMAMODE failed(%#x)\n", s32Ret);
    }

    return s32Ret;
}

static HI_S32 DMAGetPortInfo(HI_VOID)
{
    HI_S32 s32Ret;
    AO_SND_GetPortInfo_Param_S stPortInfoParam;

    stPortInfoParam.enSound = HI_UNF_SND_0;

    s32Ret = ioctl(g_s32AOFd, CMD_AO_SND_GETPORTINFO, &stPortInfoParam);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("CMD_AO_SND_GETPORTINFO failed(%#x)\n", s32Ret);
        return s32Ret;
    }
    DMASourceReset();

    memcpy(g_DMASource.stPortKAttr, stPortInfoParam.stPortKAttr, sizeof(SND_PORT_KERNEL_ATTR_S) * HI_UNF_SND_OUTPUTPORT_MAX);
    return HI_SUCCESS;
}

static HI_S32 DMAUnmapPort(HI_VOID)
{
    HI_U32 u32PortNum = 0;
    SND_PORT_USER_ATTR_S*   pstPortUAttr;

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            if (HI_NULL != pstPortUAttr->pDmaAddr)
            {
                HI_MEM_Unmap((HI_VOID*)(pstPortUAttr->pDmaAddr));
            }
            if (HI_NULL != pstPortUAttr->pu32Wptr)
            {
                HI_MEM_Unmap((HI_VOID*)(pstPortUAttr->pu32Wptr));
            }
            if (HI_NULL != pstPortUAttr->pu32Rptr)
            {
                HI_MEM_Unmap((HI_VOID*)(pstPortUAttr->pu32Rptr));
            }
        }
    }
    return HI_SUCCESS;
}

static HI_S32 DMAMmapPort(HI_VOID)
{
    HI_U32 u32PortNum = 0;
    SND_PORT_KERNEL_ATTR_S* pstPortKAttr;
    SND_PORT_USER_ATTR_S*   pstPortUAttr;

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortKAttr = &(g_DMASource.stPortKAttr[u32PortNum]);
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        pstPortUAttr->enOutPort = pstPortKAttr->enOutPort;
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            pstPortUAttr->u32Size = pstPortKAttr->u32Size;
            pstPortUAttr->pDmaAddr = (HI_U8*)HI_MEM_Map(pstPortKAttr->u32PhyDma, pstPortKAttr->u32Size);
            pstPortUAttr->pu32Wptr = (HI_U32*)HI_MEM_Map(pstPortKAttr->u32PhyWptr, sizeof(HI_U32));
            pstPortUAttr->pu32Rptr = (HI_U32*)HI_MEM_Map(pstPortKAttr->u32PhyRptr, sizeof(HI_U32));

            if (HI_NULL == pstPortUAttr->pDmaAddr ||
                HI_NULL == pstPortUAttr->pu32Wptr ||
                HI_NULL == pstPortUAttr->pu32Rptr)
            {
                HI_ERR_AO("enOutPort(%d) mmap error!\n", pstPortKAttr->enOutPort);
                DMAUnmapPort();
                return HI_FAILURE;
            }
        }
    }

    return HI_SUCCESS;
}

static HI_S32 DMAPrepare(HI_VOID)
{
    HI_S32 s32Ret = HI_SUCCESS;;
    HI_U32 u32PortNum = 0;
    SND_PORT_USER_ATTR_S* pstPortUAttr;
    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            //if (HI_UNF_SND_OUTPUTPORT_HDMI0 == pstPortUAttr->enOutPort)
            //{
                //s32Ret = DMAPortWrite(pstPortUAttr, HI_NULL, 0x100 + 0x300);
            //}
            //else
            {
                s32Ret = DMAPortWrite(pstPortUAttr, HI_NULL, 0x100);
            }
        }
    }
    return s32Ret;
}

static HI_S32 DMADisable(HI_VOID)
{
    HI_S32 s32Ret;
    if (HI_FALSE == g_DMASource.bEnable)
    {
        return HI_SUCCESS;
    }

    s32Ret = SetSndDMAMode(HI_UNF_SAMPLE_RATE_48K, HI_FALSE);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("SetSndDMAMode failed(%#x)!\n", s32Ret);
    }
    g_DMASource.bEnable = HI_FALSE;
    return s32Ret;
}

static HI_S32 DMAEnable(HI_U32 u32SampleRate)
{
    HI_S32 s32Ret;

    if (HI_TRUE == g_DMASource.bEnable)
    {
        return HI_SUCCESS;
    }

    g_DMASource.enSampleRate = (HI_UNF_SAMPLE_RATE_E)u32SampleRate;

    s32Ret = SetSndDMAMode(g_DMASource.enSampleRate, HI_TRUE);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("SetSndDMAMode failed(%#x)!\n", s32Ret);
        g_DMASource.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
        return s32Ret;
    }
    DMAPrepare();
    g_DMASource.bEnable = HI_TRUE;
    return HI_SUCCESS;
}

static HI_BOOL PortCheckAllFree(const HI_UNF_AO_FRAMEINFO_S* pstAOFrame, const HI_U32 u32LatencyMs)
{
    HI_U32 u32BusySize;
    HI_U32 u32Latency;
    HI_U32 u32FrameSize;
    HI_U32 u32PortNum = 0;
    SND_PORT_USER_ATTR_S* pstPortUAttr;

    u32Latency = u32LatencyMs * pstAOFrame->u32SampleRate * pstAOFrame->u32Channels * sizeof(HI_U16) / 1000;
    u32FrameSize = pstAOFrame->u32PcmSamplesPerFrame * pstAOFrame->u32Channels * sizeof(HI_U16);

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            u32BusySize = DMAPortQueryBusy(pstPortUAttr);
            if ((u32BusySize + u32FrameSize) > u32Latency)
            {
                return HI_FALSE;
            }
        }
    }
    return HI_TRUE;
}

static HI_S32 PortWriteFrame(SND_PORT_USER_ATTR_S* pstAttr, const HI_UNF_AO_FRAMEINFO_S* pstAOFrame)
{
    HI_U32 u32FrameSize, u32WriteSize;

    u32FrameSize = pstAOFrame->u32PcmSamplesPerFrame * pstAOFrame->u32Channels * sizeof(HI_U16);

    if (g_DMASource.u32FrmCnt > SND_MUTES_FRAMES)
    {
        // mute frames
        u32WriteSize = DMAPortWrite(pstAttr, (HI_U8*)pstAOFrame->ps32PcmBuffer, u32FrameSize);
    }
    else
    {
        u32WriteSize = DMAPortWrite(pstAttr, HI_NULL, u32FrameSize);
    }
    if (u32WriteSize == u32FrameSize)
    {
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_S32 SND_DMA_Create(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = DMAGetPortInfo();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("DMAGetPortInfo failed(%#x)!\n", s32Ret);
        return s32Ret;
    }

    s32Ret = DMAMmapPort();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("DMAMmapPort failed(%#x)!\n", s32Ret);
        return s32Ret;
    }

    return s32Ret;
}

HI_S32 SND_DMA_Destory(HI_VOID)
{
    HI_S32 s32Ret;
    s32Ret = DMAUnmapPort();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("DMAUnmapPort failed(%#x)!\n", s32Ret);
        return s32Ret;
    }
    s32Ret = DMADisable();
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("DMADisable failed(%#x)!\n", s32Ret);
    }
    DMASourceReset();
    return s32Ret;        
}

HI_S32 SND_DMA_SendData(const HI_UNF_AO_FRAMEINFO_S* pstAOFrame, const HI_U32 u32LatencyMs)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32PortNum = 0;
    SND_PORT_USER_ATTR_S* pstPortUAttr;

    if (2  != pstAOFrame->u32Channels ||
        16 != pstAOFrame->s32BitPerSample)
    {
        HI_ERR_AO("DMA only support 2ch 16bit pcm stream!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    if (pstAOFrame->u32SampleRate != HI_UNF_SAMPLE_RATE_48K &&
        pstAOFrame->u32SampleRate != HI_UNF_SAMPLE_RATE_44K)
    {
        HI_ERR_AO("DMA support 44.1k and 48k pcm stream!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    if (u32LatencyMs > 40 || u32LatencyMs < 10)
    {
        HI_ERR_AO("Invalid DMA LatencyMs!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    s32Ret = DMAEnable(pstAOFrame->u32SampleRate);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("DMAEnable failed(%#x)!\n", s32Ret);
        return s32Ret;
    }

    if (HI_FALSE == PortCheckAllFree(pstAOFrame, u32LatencyMs))
    {
        HI_WARN_AO("warning: dump one frame !!\n");
        return HI_ERR_AO_OUT_BUF_FULL;
    }

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            s32Ret = PortWriteFrame(pstPortUAttr, pstAOFrame);
        }
    }
    g_DMASource.u32FrmCnt++;
    return s32Ret;
}

HI_S32 SND_DMA_GetDelayMs(HI_U32 *pu32DelayMs)
{
    HI_U32 u32BusySize = 0;
    HI_U32 u32FrameSize;
    HI_U32 u32PortNum = 0;
    SND_PORT_USER_ATTR_S* pstPortUAttr;

    u32FrameSize = ((HI_U32)(g_DMASource.enSampleRate)) * 2 * sizeof(HI_U16);

    if (0 == u32FrameSize)
    {
        *pu32DelayMs = 0;
        return HI_SUCCESS;
    }
    
    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        pstPortUAttr = &(g_DMASource.stPortUAttr[u32PortNum]);
        if (HI_UNF_SND_OUTPUTPORT_BUTT != pstPortUAttr->enOutPort)
        {
            u32BusySize = DMAPortQueryBusy(pstPortUAttr);
            break;
        }
    }

    *pu32DelayMs = u32BusySize * 1000 / u32FrameSize;
    return HI_SUCCESS;
}


