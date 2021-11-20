/*******************************************************************************
 *              Copyright 2004 - 2014, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: drv_ao_op_func.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1
 ********************************************************************************/
#include <asm/setup.h>
#include <linux/interrupt.h>

#include "hi_type.h"
#include "hi_drv_struct.h"
#include "hi_drv_dev.h"
#include "hi_drv_proc.h"
#include "hi_drv_stat.h"

#include "hi_module.h"
#include "hi_drv_mmz.h"
#include "hi_drv_stat.h"
#include "hi_drv_sys.h"
#include "hi_drv_proc.h"
#include "hi_drv_module.h"
#include "hi_drv_mem.h"
#include "hi_error_mpi.h"

#include "drv_ao_op.h"
#include "audio_util.h"
#include "hi_audsp_aflt.h"  //TODO for AFLT_MAX_CHAN_NUM

#if defined(HI_SND_MUTECTL_SUPPORT) && (defined(CHIP_TYPE_hi3798mv100) || defined(CHIP_TYPE_hi3796mv100))
#include "hi_drv_sys.h"
#endif

static AIAO_PORT_ID_E SndOpGetPort(HI_UNF_SND_OUTPUTPORT_E enOutPort,SND_AOP_TYPE_E enType)
{
    AIAO_PORT_ID_E enPortId;
    
    switch(enOutPort)
    {
        case HI_UNF_SND_OUTPUTPORT_DAC0:
            enPortId = AIAO_PORT_TX2;
            break;
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC1:
            enPortId = AIAO_PORT_TX3;
            break;
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC2:
            enPortId = AIAO_PORT_TX4;
            break;
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC3:
            enPortId = AIAO_PORT_TX5;
            break;            
        case HI_UNF_SND_OUTPUTPORT_SPDIF0:
            enPortId = AIAO_PORT_SPDIF_TX1;
            break;
        case HI_UNF_SND_OUTPUTPORT_HDMI0:
            if(SND_AOP_TYPE_I2S == enType)
            {
                 if(AUTIL_CHIP_PLATFORM_S40 == AUTIL_GetChipPlatform())
                 {
                    enPortId = AIAO_PORT_TX3;
                 }
                 else
                 {
                     enPortId = AIAO_PORT_TX6;
                 }
            }
            else
            {
                enPortId = AIAO_PORT_SPDIF_TX0;
            }
          break;
      default:
          HI_ERR_AO("Outport %d is invalid!\n ",(HI_U32)enOutPort);
          enPortId = AIAO_PORT_BUTT;            
    }

    return enPortId;
}

HI_UNF_SND_OUTPUTPORT_E SndOpGetOutport(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enOutPort;
}

SND_OUTPUT_TYPE_E SndOpGetOutType(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enOutType;
}

HI_HANDLE SNDGetOpHandleByOutPort(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort)
{
    HI_S32 u32PortNum;
    HI_HANDLE hSndOp;

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        hSndOp = pCard->hSndOp[u32PortNum];
        if (hSndOp)
        {
            if (enOutPort == SndOpGetOutport(hSndOp))
            {
                return hSndOp;
            }
        }
    }

    return HI_NULL;
}

SND_ENGINE_TYPE_E SND_GetOpGetOutType(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enEngineType[state->ActiveId];
}

HI_HANDLE SND_GetOpHandlebyOutType(SND_CARD_STATE_S *pCard, SND_OUTPUT_TYPE_E enOutType)
{
    HI_S32 u32PortNum;
    HI_HANDLE hSndOp;

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        hSndOp = pCard->hSndOp[u32PortNum];
        if (hSndOp)
        {
            if (enOutType == SndOpGetOutType(hSndOp))
            {
                return hSndOp;
            }
        }
    }

    return HI_NULL;
}

HI_VOID SND_GetDelayMs(SND_CARD_STATE_S *pCard, HI_U32 *pdelayms)
{
    HI_HANDLE hSndOp;
    SND_OP_STATE_S *state;
    
    hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_DAC);
    if(hSndOp)
    {
        state = (SND_OP_STATE_S *)hSndOp;
        HAL_AIAO_P_GetDelayMs(state->enPortID[state->ActiveId], pdelayms);
        return;
    }

    hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_I2S);
    if(hSndOp)
    {
        state = (SND_OP_STATE_S *)hSndOp;
        HAL_AIAO_P_GetDelayMs(state->enPortID[state->ActiveId], pdelayms);
        return;
    }

    hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_SPDIF);
    if(hSndOp)
    {
        state = (SND_OP_STATE_S *)hSndOp;
        HAL_AIAO_P_GetDelayMs(state->enPortID[state->ActiveId], pdelayms);
        return;
    }
    
    hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_HDMI);
    if(hSndOp)
    {
        state = (SND_OP_STATE_S *)hSndOp;
        HAL_AIAO_P_GetDelayMs(state->enPortID[state->ActiveId], pdelayms);
        return;
    }

    *pdelayms = 0;

    return ;
}
//enSampleRate for support slic 8k
static HI_S32 SndOpCreateAop(SND_OP_STATE_S *state,HI_UNF_SND_OUTPORT_S *pstAttr, 
	                         SND_AOP_TYPE_E enType,AO_ALSA_I2S_Param_S* pstAoI2sParam,
	                         HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    HI_S32 Ret;
    AIAO_PORT_USER_CFG_S stHwPortAttr;
    AIAO_PORT_ID_E enPort;
    AOE_AOP_ID_E enAOP;
    AOE_AOP_CHN_ATTR_S stAopAttr;
    MMZ_BUFFER_S stRbfMmz;
    HI_U32 u32BufSize;
    AIAO_RBUF_ATTR_S stRbfAttr;
    HI_U32 u32AopId;
    HI_UNF_SND_OUTPUTPORT_E enOutPort;
   HI_BOOL bAlsaI2sUse = HI_FALSE;//HI_ALSA_I2S_ONLY_SUPPORT
   
#ifdef HI_ADAC_SLIC_SUPPORT
    HI_U32 u32AlignInBytes,u32FrameSize;
	u32AlignInBytes = AIAO_BUFFER_ADDR_ALIGN * 2 / 8;	 //translate bit to byte
#endif

    if(pstAoI2sParam != NULL)
      bAlsaI2sUse  = pstAoI2sParam->bAlsaI2sUse;//HI_ALSA_I2S_ONLY_SUPPORT

    if(enType >= SND_AOP_TYPE_CAST)
    {
        goto SndReturn_ERR_EXIT;
    }

    enOutPort = pstAttr->enOutPort;
    switch(enOutPort)
    {
        case HI_UNF_SND_OUTPUTPORT_DAC0:
            enPort = SndOpGetPort(enOutPort,enType);
            HAL_AIAO_P_GetTxI2SDfAttr(enPort, &stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
            HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_Adac0", MMZ_OTHERS, AO_DAC_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC1:
            enPort = SndOpGetPort(enOutPort,enType);
            HAL_AIAO_P_GetTxI2SDfAttr(enPort, &stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;            
            stHwPortAttr.stIfAttr.eCrgSource = AIAO_TX_CRG2;
            HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_Adac1", MMZ_OTHERS, AO_DAC_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;
       case HI_UNF_SND_OUTPUTPORT_EXT_DAC2:
            enPort = SndOpGetPort(enOutPort,enType);
            HAL_AIAO_P_GetTxI2SDfAttr(enPort, &stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
            stHwPortAttr.stIfAttr.eCrgSource = AIAO_TX_CRG2;
            HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_Adac2", MMZ_OTHERS, AO_DAC_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC3:
            enPort = SndOpGetPort(enOutPort,enType);
            HAL_AIAO_P_GetTxI2SDfAttr(enPort, &stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
            stHwPortAttr.stIfAttr.eCrgSource = AIAO_TX_CRG2;
            HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_Adac3", MMZ_OTHERS, AO_DAC_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;
#if defined (HI_I2S0_SUPPORT)
        case HI_UNF_SND_OUTPUTPORT_I2S0:
            HI_ASSERT(pstAttr->unAttr.stI2sAttr.stAttr.enChannel==HI_UNF_I2S_CHNUM_2 ||
                          pstAttr->unAttr.stI2sAttr.stAttr.enChannel==HI_UNF_I2S_CHNUM_1);	//support slic mono
            HI_ASSERT(pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth==HI_UNF_I2S_BIT_DEPTH_16);
            HAL_AIAO_P_GetBorardTxI2SDfAttr(0,&pstAttr->unAttr.stI2sAttr.stAttr,&enPort,&stHwPortAttr);
           if(bAlsaI2sUse == HI_TRUE)
            {
                 stRbfMmz.u32Size                          = pstAoI2sParam->stBuf.u32BufSize;
                 u32BufSize                                = pstAoI2sParam->stBuf.u32BufSize;
                 HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
                 stRbfMmz.u32StartPhyAddr                  = pstAoI2sParam->stBuf.u32BufPhyAddr;
                 stRbfMmz.u32StartVirAddr                  = pstAoI2sParam->stBuf.u32BufVirAddr;  
                 stHwPortAttr.pIsrFunc                     = (AIAO_IsrFunc *)pstAoI2sParam->IsrFunc;
                 stHwPortAttr.substream                    = pstAoI2sParam->substream;
				 stHwPortAttr.stIfAttr.enRate              = (AIAO_SAMPLE_RATE_E)pstAoI2sParam->enRate;
                 stHwPortAttr.stBufConfig.u32PeriodBufSize = pstAoI2sParam->stBuf.u32PeriodByteSize;
                 stHwPortAttr.stBufConfig.u32PeriodNumber  = pstAoI2sParam->stBuf.u32Periods;
                 Ret = HI_SUCCESS;
            }
            else
            {
#ifdef HI_ADAC_SLIC_SUPPORT
                if (HI_UNF_SAMPLE_RATE_8K == enSampleRate)
                {
                    //slic 8k 1ch , the sizeof aop size should > 512, so the smallest size  > 40ms
    			    u32FrameSize = AUTIL_CalcFrameSize((HI_U32)stHwPortAttr.stIfAttr.enChNum, (HI_U32)stHwPortAttr.stIfAttr.enBitDepth);
    			    stHwPortAttr.stBufConfig.u32PeriodBufSize = 40 * enSampleRate * u32FrameSize / 1000;	//8k 40ms 
    			    stHwPortAttr.stBufConfig.u32PeriodBufSize = (stHwPortAttr.stBufConfig.u32PeriodBufSize / u32AlignInBytes) * u32AlignInBytes; //Align 256bit
                    HI_INFO_AO("Slic device aop buffersize force to 40ms !\n");
                }
#endif
                u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
                HI_ASSERT(u32BufSize < AO_I2S_MMZSIZE_MAX);
                Ret = HI_DRV_MMZ_AllocAndMap("AO_I2s0", MMZ_OTHERS, AO_I2S_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            }    
            break;  
#endif

#if defined (HI_I2S1_SUPPORT)
        case HI_UNF_SND_OUTPUTPORT_I2S1:
            HI_ASSERT(pstAttr->unAttr.stI2sAttr.stAttr.enChannel==HI_UNF_I2S_CHNUM_2);
            HI_ASSERT(pstAttr->unAttr.stI2sAttr.stAttr.enBitDepth==HI_UNF_I2S_BIT_DEPTH_16);
            HAL_AIAO_P_GetBorardTxI2SDfAttr(1,&pstAttr->unAttr.stI2sAttr.stAttr,&enPort,&stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
            HI_ASSERT(u32BufSize < AO_I2S_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_I2s1", MMZ_OTHERS, AO_I2S_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;  
#endif

        case HI_UNF_SND_OUTPUTPORT_SPDIF0:
            enPort = SndOpGetPort(enOutPort,enType);
            HAL_AIAO_P_GetTxSpdDfAttr(enPort, &stHwPortAttr);
            u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber;
            HI_ASSERT(u32BufSize < AO_SPDIF_MMZSIZE_MAX);
            Ret = HI_DRV_MMZ_AllocAndMap("AO_Spidf", MMZ_OTHERS, AO_SPDIF_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            break;
            
        case HI_UNF_SND_OUTPUTPORT_HDMI0:
            if(SND_AOP_TYPE_I2S == enType)
            {
                enPort = SndOpGetPort(enOutPort,enType);
                HAL_AIAO_P_GetHdmiI2SDfAttr(enPort, &stHwPortAttr);
#if 1 //def HI_ALSA_HDMI_ONLY_SUPPORT
                if(bAlsaI2sUse == HI_TRUE)
                 {
                      stRbfMmz.u32Size                          = pstAoI2sParam->stBuf.u32BufSize;
                      u32BufSize                                = pstAoI2sParam->stBuf.u32BufSize;
                      HI_ASSERT(u32BufSize < AO_DAC_MMZSIZE_MAX);
                      stRbfMmz.u32StartPhyAddr                  = pstAoI2sParam->stBuf.u32BufPhyAddr;
                      stRbfMmz.u32StartVirAddr                  = pstAoI2sParam->stBuf.u32BufVirAddr;  
                      stHwPortAttr.pIsrFunc                     = (AIAO_IsrFunc *)pstAoI2sParam->IsrFunc;
                      stHwPortAttr.substream                    = pstAoI2sParam->substream;
     				  stHwPortAttr.stIfAttr.enRate              = pstAoI2sParam->enRate;
                      stHwPortAttr.stBufConfig.u32PeriodBufSize = pstAoI2sParam->stBuf.u32PeriodByteSize;
                      stHwPortAttr.stBufConfig.u32PeriodNumber  = pstAoI2sParam->stBuf.u32Periods;
                      //stHwPortAttr.u32VolumedB                  = AUTIL_VolumeLinear2RegdB((HI_U32)g_stUserGain.s32Gain);
                      Ret = HI_SUCCESS;
                 }
                 else
#endif
                 {
                u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber * 32;  //verify considerate from 48k 2ch 16bit to 192k 8ch 32bit for example 24bit LPCM
                HI_ASSERT(u32BufSize < AO_HDMI_MMZSIZE_MAX);
                Ret = HI_DRV_MMZ_AllocAndMap("AO_HdmiI2s", MMZ_OTHERS, AO_HDMI_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
                  }
            }
            else
            {
                enPort = SndOpGetPort(enOutPort,enType);
                HAL_AIAO_P_GetTxSpdDfAttr(enPort, &stHwPortAttr);
                u32BufSize = stHwPortAttr.stBufConfig.u32PeriodBufSize * stHwPortAttr.stBufConfig.u32PeriodNumber * 4; //verify considerate frome 48k to 192k  for example ddp
                HI_ASSERT(u32BufSize < AO_SPDIF_MMZSIZE_MAX);
                Ret = HI_DRV_MMZ_AllocAndMap("AO_HdmiSpidf", MMZ_OTHERS, AO_SPDIF_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
            }
            break;   
            
        default:
            HI_ERR_AO("Outport is invalid!\n");
            goto SndReturn_ERR_EXIT;
    }
    if (HI_SUCCESS != Ret)
    {
        goto SndReturn_ERR_EXIT;
    }

    stHwPortAttr.bExtDmaMem = HI_TRUE;
    stHwPortAttr.stExtMem.u32BufPhyAddr = stRbfMmz.u32StartPhyAddr;
    stHwPortAttr.stExtMem.u32BufVirAddr = stRbfMmz.u32StartVirAddr;
    stHwPortAttr.stExtMem.u32BufSize = u32BufSize;
	stHwPortAttr.stIfAttr.enRate = enSampleRate;
    Ret = HAL_AIAO_P_Open(enPort, &stHwPortAttr);
    if (HI_SUCCESS != Ret)
    {
        goto SndMMZRelease_ERR_EXIT;
    }

    memset(&stRbfAttr, 0, sizeof(AIAO_RBUF_ATTR_S));
    Ret = HAL_AIAO_P_GetRbfAttr(enPort, &stRbfAttr);
    if(HI_SUCCESS != Ret)
    {
        goto SndClosePort_ERR_EXIT;
    }
    
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyAddr = stRbfAttr.u32BufPhyAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirAddr = stRbfAttr.u32BufVirAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyWptr = stRbfAttr.u32BufPhyWptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirWptr = stRbfAttr.u32BufVirWptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyRptr = stRbfAttr.u32BufPhyRptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirRptr = stRbfAttr.u32BufVirRptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufWptrRptrFlag = 1;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufSize = stRbfAttr.u32BufSize;
    stAopAttr.stRbfOutAttr.u32BufBitPerSample = stHwPortAttr.stIfAttr.enBitDepth;
    stAopAttr.stRbfOutAttr.u32BufChannels   = stHwPortAttr.stIfAttr.enChNum;
    stAopAttr.stRbfOutAttr.u32BufSampleRate = stHwPortAttr.stIfAttr.enRate;
    stAopAttr.stRbfOutAttr.u32BufDataFormat = 0;
    stAopAttr.stRbfOutAttr.bRbfHwPriority = HI_TRUE;
    stAopAttr.stRbfOutAttr.u32BufLatencyThdMs = AOE_AOP_BUFF_LATENCYMS_DF;
    Ret = HAL_AOE_AOP_Create(&enAOP, &stAopAttr);
    if (HI_SUCCESS != Ret)
    {
       goto SndClosePort_ERR_EXIT;
    }

    if(HI_UNF_SND_OUTPUTPORT_HDMI0 != enOutPort || SND_AOP_TYPE_SPDIF != enType)  //spdif interface of hdmi don't start aop
    {
        Ret = HAL_AIAO_P_Start(enPort);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AIAO_P_Start(%d) failed\n", enPort);
            goto SndDestroyAOP_ERR_EXIT;
        }

        Ret = HAL_AOE_AOP_Start(enAOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AOE_AOP_Start(%d) failed\n", enAOP);
            goto SndStopPort_ERR_EXIT;
        }
    }

    u32AopId = (HI_U32)enType;
    state->u32OpMask |= 1 << u32AopId;
    if(HI_UNF_SND_OUTPUTPORT_HDMI0 != enOutPort || SND_AOP_TYPE_SPDIF != enType)  //spdif interface of hdmi is not active
    {
        state->ActiveId  = u32AopId;
    }
    state->enPortID[u32AopId] = enPort;
    state->enAOP[u32AopId] = enAOP;
    state->stRbfMmz[u32AopId]   = stRbfMmz;
    state->stPortUserAttr[u32AopId] = stHwPortAttr;
    state->enEngineType[u32AopId] = SND_ENGINE_TYPE_PCM;
    return HI_SUCCESS;
    
SndStopPort_ERR_EXIT:
    (HI_VOID)HAL_AIAO_P_Stop(enPort, AIAO_STOP_IMMEDIATE);
SndDestroyAOP_ERR_EXIT:
    HAL_AOE_AOP_Destroy(enAOP);
SndClosePort_ERR_EXIT:
    HAL_AIAO_P_Close(enPort);
SndMMZRelease_ERR_EXIT:
    HI_DRV_MMZ_UnmapAndRelease(&stRbfMmz);
SndReturn_ERR_EXIT:
    return HI_FAILURE;
}

SND_ENGINE_TYPE_E SND_OpGetEngineType(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enEngineType[state->ActiveId];
}

static HI_S32 SndOpCreateCast(HI_HANDLE *phSndOp, HI_HANDLE *phCast, HI_UNF_SND_CAST_ATTR_S *pstUserCastAttr,
                              MMZ_BUFFER_S *pstMMz)
{
    HI_S32 Ret;
    AOE_AOP_ID_E enAOP;
    AOE_AOP_CHN_ATTR_S stAopAttr;
    HI_U32 uBufSize, uFrameSize;
    AIAO_CAST_ATTR_S stCastAttr;
    AIAO_CAST_ID_E enCast;
    SND_OP_STATE_S *state = HI_NULL;
    HI_UNF_SND_CAST_ATTR_S stUserCastAttr;

    state = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(SND_OP_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AIAO("malloc SndOpCreate failed\n");
        return HI_FAILURE;
    }

    memset(state, 0, sizeof(SND_OP_STATE_S));
    memcpy(&stUserCastAttr, pstUserCastAttr, sizeof(HI_UNF_SND_CAST_ATTR_S));
    stCastAttr.u32BufChannels = 2;
    stCastAttr.u32BufBitPerSample = 16;
    stCastAttr.u32BufSampleRate = 48000;
    stCastAttr.u32BufDataFormat = 0;

    uFrameSize = AUTIL_CalcFrameSize(stCastAttr.u32BufChannels, stCastAttr.u32BufBitPerSample);
    uBufSize = stUserCastAttr.u32PcmFrameMaxNum * stUserCastAttr.u32PcmSamplesPerFrame * uFrameSize;
    stCastAttr.u32BufLatencyThdMs = AUTIL_ByteSize2LatencyMs(uBufSize, uFrameSize, stCastAttr.u32BufSampleRate);

    HI_ASSERT((uBufSize) < AO_CAST_MMZSIZE_MAX);

    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyAddr = pstMMz->u32StartPhyAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirAddr = pstMMz->u32StartVirAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufSize = uBufSize;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufWptrRptrFlag = 0;  /* cast use aop Wptr&Rptr avoid dsp cache problem */
    stAopAttr.stRbfOutAttr.u32BufBitPerSample = stCastAttr.u32BufBitPerSample;
    stAopAttr.stRbfOutAttr.u32BufChannels   = stCastAttr.u32BufChannels;
    stAopAttr.stRbfOutAttr.u32BufSampleRate = stCastAttr.u32BufSampleRate;
    stAopAttr.stRbfOutAttr.u32BufDataFormat = 0;
    stAopAttr.stRbfOutAttr.bRbfHwPriority = HI_FALSE;

    stAopAttr.stRbfOutAttr.bAddMute = pstUserCastAttr->bAddMute;
    stAopAttr.stRbfOutAttr.u32BufLatencyThdMs = AOE_AOP_BUFF_LATENCYMS_DF;
    Ret = HAL_AOE_AOP_Create(&enAOP, &stAopAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AIAO("AOP_Create failed\n");
        AUTIL_AO_FREE(HI_ID_AO, (HI_VOID *)state);
        return HI_FAILURE;
    }

    stCastAttr.extDmaMem.u32BufPhyAddr = pstMMz->u32StartPhyAddr;
    stCastAttr.extDmaMem.u32BufVirAddr = pstMMz->u32StartVirAddr;
    stCastAttr.extDmaMem.u32BufSize = uBufSize;
    stCastAttr.bAddMute = pstUserCastAttr->bAddMute;  //TODO proc
    iHAL_AOE_AOP_GetRptrAndWptrRegAddr(enAOP, &stCastAttr.extDmaMem.u32WptrAddr, &stCastAttr.extDmaMem.u32RptrAddr);
    Ret = HAL_CAST_Create(&enCast, &stCastAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AIAO("Cast_Create failed\n");
	    HAL_AOE_AOP_Destroy(enAOP);
        AUTIL_AO_FREE(HI_ID_AO, (HI_VOID *)state);
        return HI_FAILURE;
    }

    state->u32OpMask |= 1<<SND_AOP_TYPE_CAST;
    state->ActiveId = 0;
    state->enAOP[0] = enAOP;

    memcpy(&state->stCastAttr, &stCastAttr, sizeof(AIAO_CAST_ATTR_S));

    state->CastId = enCast;
    state->enEngineType[0] = SND_ENGINE_TYPE_PCM;
    state->enCurnStatus = SND_OP_STATUS_STOP;
    state->enOutType = SND_OUTPUT_TYPE_CAST;

    *phCast  = (HI_HANDLE )enCast;
    *phSndOp = (HI_HANDLE )state;

    return HI_SUCCESS;
}

static HI_VOID SndOpGetSubFormatAttr(SND_OP_STATE_S *state, SND_OP_ATTR_S *pstSndPortAttr)
{
    AOE_AOP_CHN_ATTR_S stAopAttr;
    AOE_AOP_OUTBUF_ATTR_S *pstAttr;
    AIAO_BufAttr_S *pstAiAOBufAttr;
    
    HAL_AOE_AOP_GetAttr(state->enAOP[state->ActiveId], &stAopAttr);
    pstAttr = &stAopAttr.stRbfOutAttr;
    pstAiAOBufAttr = &state->stPortUserAttr[state->ActiveId].stBufConfig;

    pstSndPortAttr->u32Channels     = pstAttr->u32BufChannels;
    pstSndPortAttr->u32SampleRate   = pstAttr->u32BufSampleRate;
    pstSndPortAttr->u32BitPerSample = pstAttr->u32BufBitPerSample;
    pstSndPortAttr->u32DataFormat   = pstAttr->u32BufDataFormat;
    pstSndPortAttr->u32LatencyThdMs = pstAttr->u32BufLatencyThdMs;
    if (SND_OUTPUT_TYPE_CAST != state->enOutType)
    {
        pstSndPortAttr->u32PeriodBufSize = pstAiAOBufAttr->u32PeriodBufSize;
        pstSndPortAttr->u32PeriodNumber  = pstAiAOBufAttr->u32PeriodNumber;
    }
    return;
}

/*
//zgjiere, unf proc 中断，自动注册 AIAO_IsrFunc      *pIsrFunc;
//zgjiere, alsa 中断如何注册，alsa中断在track确定，aiao中断在port打开确定?
1) alsa能否采用DSP2ARM中断?
2) 运行过程，修改中断服务程序? */
HI_S32 SndOpStart(HI_HANDLE hSndOp, HI_VOID *pstParams)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];
    AOE_AOP_ID_E enAOP = state->enAOP[state->ActiveId];
    HI_S32 Ret;

    if (SND_OP_STATUS_START == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        Ret = HAL_CAST_Start(state->CastId);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_CAST_Start(%d) failed\n", state->CastId);
            return HI_FAILURE;
        }
        
        Ret = HAL_AOE_AOP_Start(enAOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AOE_AOP_Start(%d) failed\n", enAOP);
            return HI_FAILURE;
        }
    }
    else
    {
        Ret = HAL_AIAO_P_Start(enPort);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AIAO_P_Start(%d) failed\n", enPort);
            return HI_FAILURE;
        }

        Ret = HAL_AOE_AOP_Start(enAOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AOE_AOP_Start(%d) failed\n", enAOP);
            return HI_FAILURE;
        }
    }

    state->enCurnStatus = SND_OP_STATUS_START;

    return HI_SUCCESS;
}

HI_S32 SndOpStop(HI_HANDLE hSndOp, HI_VOID *pstParams)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];
    AOE_AOP_ID_E enAOP = state->enAOP[state->ActiveId];
    HI_S32 Ret;

    if (SND_OP_STATUS_STOP == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        Ret = HAL_CAST_Stop(state->CastId);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_CAST_Stop(%d) failed\n", state->CastId);
            return HI_FAILURE;
        }
        
        Ret = HAL_AOE_AOP_Stop(enAOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AOE_AOP_Stop(%d) failed\n", enAOP);
            return HI_FAILURE;
        }
    }
    else
    {
        Ret = HAL_AIAO_P_Stop(enPort, AIAO_STOP_IMMEDIATE);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AIAO_P_Stop(%d) failed\n", enPort);
            return HI_FAILURE;
        }

        Ret = HAL_AOE_AOP_Stop(enAOP);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AOE_AOP_Stop(%d) failed\n", enAOP);
            return HI_FAILURE;
        }
    }
    state->enCurnStatus = SND_OP_STATUS_STOP;
    return HI_SUCCESS;
}



static HI_VOID SndOpDestroyAop(SND_OP_STATE_S *state, SND_AOP_TYPE_E enType)
{
    HAL_AOE_AOP_Destroy(state->enAOP[enType]);
    HAL_AIAO_P_Close(state->enPortID[enType]);
    HI_DRV_MMZ_UnmapAndRelease(&state->stRbfMmz[enType]);
    return;
}

static HI_VOID SndOpDestroy(HI_HANDLE hSndOp, HI_BOOL bSuspend)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    SND_AOP_TYPE_E type;

    if(0 == state->u32OpMask)
    {
        return;
    }

    SndOpStop(hSndOp, HI_NULL);

  

    if(state->enOutType == SND_OUTPUT_TYPE_CAST)
    {
        HAL_AOE_AOP_Destroy(state->enAOP[0]);
        HAL_CAST_Destroy(state->CastId);
    }
    else
    {
        for(type = SND_AOP_TYPE_I2S; type < SND_AOP_TYPE_CAST; type++)
        {
            if (state->u32OpMask & (1 << type))
            {
                SndOpDestroyAop(state, type);
            }
        }
        if(state->enOutType == SND_OUTPUT_TYPE_DAC)
        {
#if defined (HI_TIANLAI_V500) || defined (HI_TIANLAI_V600)
            ADAC_TIANLAI_DeInit(bSuspend);
#endif
        }
    }

    memset(state, 0, sizeof(SND_OP_STATE_S));
    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    return;
}

static HI_VOID SndOpInitState(SND_OP_STATE_S *state)
{
    HI_U32 idx;
    
    memset(state, 0, sizeof(SND_OP_STATE_S));
    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        state->enPortID[idx] = AIAO_PORT_BUTT;
        state->enAOP[idx] = AOE_AOP_BUTT;
        state->enEngineType[idx] = SND_ENGINE_TYPE_BUTT;
    }
#ifdef HI_SND_AMP_SUPPORT    
    state->pstAmpFunc = HI_NULL;
#endif    
    return;
}
static HI_S32 SndOpSetSPDIFCategoryCode(HI_HANDLE hSndOp, HI_UNF_SND_SPDIF_CATEGORYCODE_E enCategoryCode)
{
    HI_U32 idx;
    AIAO_PORT_ID_E enPort;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_S32 Ret = HI_FAILURE;
    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enPort = state->enPortID[idx];
        if(enPort < AIAO_PORT_BUTT)
        {
            Ret = HAL_AIAO_P_SetSpdifCategoryCode(enPort, (AIAO_SPDIF_CATEGORYCODE_E)enCategoryCode);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AIAO("HAL_AIAO_P_SetSpdifCategoryCode port:%d, Category Code: %d\n", (HI_U32)enPort, (HI_U32)enCategoryCode);
                return HI_FAILURE;
            }
        }
    }
    state->enUserSPDIFCategoryCode= enCategoryCode;
    return HI_SUCCESS;
}
static HI_S32 SndOpSetSPDIFSCMSMode(HI_HANDLE hSndOp, HI_UNF_SND_SPDIF_SCMSMODE_E enSCMSMode)
{
    HI_U32 idx;
    AIAO_PORT_ID_E enPort;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_S32 Ret = HI_FAILURE;
    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enPort = state->enPortID[idx];
        if(enPort < AIAO_PORT_BUTT)
        {
            Ret = HAL_AIAO_P_SetSpdifSCMSMode(enPort, (AIAO_SPDIF_SCMS_MODE_E)enSCMSMode);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AIAO("HAL_AIAO_P_SetSpdifSCMSMode port:%d, SCMSMode: %d\n", (HI_U32)enPort, (HI_U32)enSCMSMode);
                return HI_FAILURE;
            }
        }
    }
    state->enUserSPDIFSCMSMode = enSCMSMode;
    return HI_SUCCESS;
}
#if 1//def HI_ALSA_I2S_ONLY_SUPPORT
HI_S32 AlsaHwSndOpStart(HI_HANDLE hSndOp, HI_VOID *pstParams)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];
    HI_S32 Ret;
    if (SND_OP_STATUS_START == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

     if((SND_OUTPUT_TYPE_I2S == state->enOutType)||(SND_OUTPUT_TYPE_HDMI == state->enOutType))
       {
           Ret = HAL_AIAO_P_Start(enPort);
           if (HI_SUCCESS != Ret)
           {
               HI_ERR_AO("HAL_AIAO_P_Start(%d) failed\n", enPort);
               return HI_FAILURE;
           }
       }
     state->enCurnStatus = SND_OP_STATUS_START;
     return HI_SUCCESS;
}
HI_S32 AlsaHwSndOpStop(HI_HANDLE hSndOp, HI_VOID *pstParams)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];
    HI_S32 Ret;
    if (SND_OP_STATUS_STOP == state->enCurnStatus)
    {
        return HI_SUCCESS;
    }

    if((SND_OUTPUT_TYPE_I2S == state->enOutType)||(SND_OUTPUT_TYPE_HDMI == state->enOutType))
    {
        Ret = HAL_AIAO_P_Stop(enPort, AIAO_STOP_IMMEDIATE);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HAL_AIAO_P_Stop(%d) failed\n", enPort);
            return HI_FAILURE;
        }
    }
    state->enCurnStatus = SND_OP_STATUS_STOP;
    return HI_SUCCESS;
}
#endif

static HI_S32 SndOpCreate(HI_HANDLE *phSndOp,HI_UNF_SND_OUTPORT_S *pstAttr,
                          AO_ALSA_I2S_Param_S *pstAoI2sParam, HI_BOOL bResume,
                          HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    SND_OP_STATE_S *state = HI_NULL;
    HI_S32 Ret = HI_FAILURE;
    SND_AOP_TYPE_E AopType;

    state = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(SND_OP_STATE_S), GFP_KERNEL);
    if (state == HI_NULL)
    {
        HI_FATAL_AO("malloc SndOpCreate failed\n");
        return HI_FAILURE;
    }

    SndOpInitState(state);

    for(AopType = SND_AOP_TYPE_I2S; AopType < SND_AOP_TYPE_CAST; AopType++)
    {
        if(SND_AOP_TYPE_I2S == AopType && HI_UNF_SND_OUTPUTPORT_SPDIF0 == pstAttr->enOutPort)
        {
            continue;
        }

        if(SND_AOP_TYPE_SPDIF == AopType && HI_UNF_SND_OUTPUTPORT_SPDIF0 != pstAttr->enOutPort && HI_UNF_SND_OUTPUTPORT_HDMI0 != pstAttr->enOutPort)
        {
            continue;
        }
        
        if(HI_SUCCESS != SndOpCreateAop(state, pstAttr, AopType, pstAoI2sParam, enSampleRate))
        {
            goto SndCreatePort_ERR_EXIT;
        }
    }

    SndOpGetSubFormatAttr(state, &state->stSndPortAttr);
    switch (pstAttr->enOutPort)
    {
    case HI_UNF_SND_OUTPUTPORT_DAC0:
    case HI_UNF_SND_OUTPUTPORT_EXT_DAC1:
    case HI_UNF_SND_OUTPUTPORT_EXT_DAC2:
    case HI_UNF_SND_OUTPUTPORT_EXT_DAC3:
        memcpy(&state->stSndPortAttr.unAttr, &pstAttr->unAttr, sizeof(HI_UNF_SND_DAC_ATTR_S));
        state->enOutType = SND_OUTPUT_TYPE_DAC;
        //init tianlai
        
#if defined (HI_TIANLAI_V500) || defined (HI_TIANLAI_V600)
            //init tianlai
            ADAC_TIANLAI_Init(state->stSndPortAttr.u32SampleRate, bResume);
#endif
        break;
        
    case HI_UNF_SND_OUTPUTPORT_I2S0:
    case HI_UNF_SND_OUTPUTPORT_I2S1:
        memcpy(&state->stSndPortAttr.unAttr, &pstAttr->unAttr, sizeof(HI_UNF_SND_I2S_ATTR_S));
        state->enOutType = SND_OUTPUT_TYPE_I2S;
        break;
        
    case HI_UNF_SND_OUTPUTPORT_SPDIF0:
        memcpy(&state->stSndPortAttr.unAttr, &pstAttr->unAttr, sizeof(HI_UNF_SND_SPDIF_ATTR_S));
        state->enUserSPDIFSCMSMode = HI_UNF_SND_SPDIF_SCMSMODE_COPYPROHIBITED;
        state->enUserSPDIFCategoryCode = HI_UNF_SND_SPDIF_CATEGORY_GENERAL;
        SndOpSetSPDIFSCMSMode((HI_HANDLE)state, state->enUserSPDIFSCMSMode);
        SndOpSetSPDIFCategoryCode((HI_HANDLE)state, state->enUserSPDIFCategoryCode);
        state->enOutType = SND_OUTPUT_TYPE_SPDIF;
        break;

    case HI_UNF_SND_OUTPUTPORT_HDMI0:
        memcpy(&state->stSndPortAttr.unAttr, &pstAttr->unAttr, sizeof(HI_UNF_SND_HDMI_ATTR_S));
        state->enOutType = SND_OUTPUT_TYPE_HDMI;
        break;

    default:
        HI_ERR_AO("Err OutPort Type!\n");
        goto SndCreatePort_ERR_EXIT;
    }



    state->enOutPort = pstAttr->enOutPort;
    state->enCurnStatus = SND_OP_STATUS_START;
    state->u32UserMute = 0;
    state->u32LatencyMs = AOE_AOP_BUFF_LATENCYMS_DF;
    state->enUserTrackMode = HI_UNF_TRACK_MODE_STEREO;
    state->stUserGain.bLinearMode = HI_FALSE;
    state->stUserGain.s32Gain = 0;
    *phSndOp = (HI_HANDLE)state;

    return HI_SUCCESS;
    
SndCreatePort_ERR_EXIT:
    *phSndOp = (HI_HANDLE)HI_NULL;
    SndOpDestroy((HI_HANDLE)state, HI_FALSE);
    AUTIL_AO_FREE(HI_ID_AO, (HI_VOID*)state);
    return Ret;
}

HI_S32 SndOpSetAttr(HI_HANDLE hSndOp, SND_OP_ATTR_S *pstSndPortAttr)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_S32 Ret = HI_FAILURE;
    AIAO_PORT_ID_E enPortID;
    AOE_AOP_ID_E enAOP;
    AIAO_PORT_ATTR_S stAiaoAttr;
    AOE_AOP_CHN_ATTR_S stAopAttr;
    AIAO_RBUF_ATTR_S stRbfAttr;

    if (SND_OP_STATUS_STOP != state->enCurnStatus)
    {
        return HI_FAILURE;
    }

#if defined(SND_CAST_SUPPORT) 
    /* note: noly spdif & hdmi support set attr as pass-through switch */
    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        return HI_FAILURE;
    }
#endif
    if (SND_OUTPUT_TYPE_DAC == state->enOutType)
    {
        return HI_FAILURE;
    }

    if (SND_OUTPUT_TYPE_I2S == state->enOutType)
    {
        return HI_FAILURE;
    }

    /* note: hdmi tx use spdif or i2s interface at diffrerent data format */
    if (SND_OUTPUT_TYPE_HDMI == state->enOutType)
    {
        if(!pstSndPortAttr->u32DataFormat)  
        {
            state->ActiveId = SND_AOP_TYPE_I2S;  //2.0 pcm
        }
        else if (AUTIL_isIEC61937Hbr(pstSndPortAttr->u32DataFormat, pstSndPortAttr->u32SampleRate))
        {
            state->ActiveId = SND_AOP_TYPE_I2S;       // hbr
            if (IEC61937_DATATYPE_DOLBY_DIGITAL_PLUS == pstSndPortAttr->u32DataFormat)
            {
                state->ActiveId = SND_AOP_TYPE_SPDIF; // lbr or hbr(ddp)
            }
        }
        else if(IEC61937_DATATYPE_71_LPCM == pstSndPortAttr->u32DataFormat || IEC61937_DATATYPE_20_LPCM == pstSndPortAttr->u32DataFormat)
        {
            state->ActiveId = SND_AOP_TYPE_I2S;   //7.1 lpcm
        }
        else
        {
            state->ActiveId = SND_AOP_TYPE_SPDIF;     // lbr or hbr(ddp)
        }
    }

    enPortID = state->enPortID[state->ActiveId];
    enAOP = state->enAOP[state->ActiveId];

    HAL_AIAO_P_GetAttr(enPortID, &stAiaoAttr);
    HAL_AOE_AOP_GetAttr(enAOP, &stAopAttr);

    stAiaoAttr.stIfAttr.enBitDepth = (AIAO_BITDEPTH_E)pstSndPortAttr->u32BitPerSample;
    stAiaoAttr.stIfAttr.enChNum = (AIAO_I2S_CHNUM_E)pstSndPortAttr->u32Channels;
    stAiaoAttr.stIfAttr.enRate = (AIAO_SAMPLE_RATE_E)pstSndPortAttr->u32SampleRate;
    if (pstSndPortAttr->u32DataFormat)
    {
        AIAO_HAL_P_SetBypass(enPortID, HI_TRUE);
        if (SND_OUTPUT_TYPE_HDMI == state->enOutType)
        {
            state->enEngineType[state->ActiveId] = SND_ENGINE_TYPE_HDMI_RAW;
        }
        else if (SND_OUTPUT_TYPE_SPDIF == state->enOutType)
        {
            state->enEngineType[state->ActiveId] = SND_ENGINE_TYPE_SPDIF_RAW;
        }
    }
    else
    {
        AIAO_HAL_P_SetBypass(enPortID, HI_FALSE);
        state->enEngineType[state->ActiveId] = SND_ENGINE_TYPE_PCM;
    }

    //todo, optimize u32PeriodBufSize & u32PeriodNumber
    stAiaoAttr.stBufConfig.u32PeriodBufSize = pstSndPortAttr->u32PeriodBufSize;
    stAiaoAttr.stBufConfig.u32PeriodNumber = pstSndPortAttr->u32PeriodNumber;
    Ret = HAL_AIAO_P_SetAttr(enPortID, &stAiaoAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_AO("HAL_AIAO_P_SetAttr port:0x%x\n", enPortID);
        return HI_FAILURE;
    }

    memset(&stRbfAttr, 0, sizeof(AIAO_RBUF_ATTR_S));
    Ret= HAL_AIAO_P_GetRbfAttr(enPortID, &stRbfAttr);
    if(HI_SUCCESS != Ret)
    {
        return Ret;
    }
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyAddr = stRbfAttr.u32BufPhyAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirAddr = stRbfAttr.u32BufVirAddr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyWptr = stRbfAttr.u32BufPhyWptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirWptr = stRbfAttr.u32BufVirWptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufPhyRptr = stRbfAttr.u32BufPhyRptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufVirRptr = stRbfAttr.u32BufVirRptr;
    stAopAttr.stRbfOutAttr.stRbfAttr.u32BufSize    = stRbfAttr.u32BufSize;

    stAopAttr.stRbfOutAttr.u32BufBitPerSample = pstSndPortAttr->u32BitPerSample;
    stAopAttr.stRbfOutAttr.u32BufChannels   = pstSndPortAttr->u32Channels;
    stAopAttr.stRbfOutAttr.u32BufSampleRate = pstSndPortAttr->u32SampleRate;
    stAopAttr.stRbfOutAttr.u32BufDataFormat = pstSndPortAttr->u32DataFormat;
    Ret = HAL_AOE_AOP_SetAttr(enAOP, &stAopAttr);
    if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }

    state->stPortUserAttr[state->ActiveId].stIfAttr = stAiaoAttr.stIfAttr;
    state->stPortUserAttr[state->ActiveId].stBufConfig = stAiaoAttr.stBufConfig;
    memcpy(&state->stSndPortAttr, pstSndPortAttr, sizeof(SND_OP_ATTR_S));

    return HI_SUCCESS;
}

HI_S32 SndOpGetAttr(HI_HANDLE hSndOp, SND_OP_ATTR_S *pstSndPortAttr)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    memcpy(pstSndPortAttr, &state->stSndPortAttr, sizeof(SND_OP_ATTR_S));
    return HI_SUCCESS;
}

HI_S32 SndOpGetStatus(HI_HANDLE hSndOp, AIAO_PORT_STAUTS_S *pstPortStatus)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];
    HI_S32 Ret;

    Ret = HAL_AIAO_P_GetStatus(enPort, pstPortStatus);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_AIAO("HAL_AIAO_P_GetStatus (port:%d) failed\n", (HI_U32)enPort);
        return Ret;
    }

    return HI_SUCCESS;

}


AOE_AOP_ID_E SND_OpGetAopId(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enAOP[state->ActiveId];
}

HI_UNF_SND_OUTPUTPORT_E SND_GetOpOutputport(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;

    return state->enOutPort;
}

HI_S32 SndOpSetSampleRate(HI_HANDLE hSndOp, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AIAO_PORT_ID_E enPort = state->enPortID[state->ActiveId];

    HI_S32 Ret = HI_FAILURE;

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        // todo, cast SampleRate
        return HI_SUCCESS;
    }

    Ret = HAL_AIAO_P_SetSampleRate(enPort, enSampleRate);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_AIAO("HAL_AIAO_P_SetSampleRate port:%d \n", enPort);
        return HI_FAILURE;
    }

    state->enSampleRate = enSampleRate;

    return HI_SUCCESS;
}

HI_S32 SndOpSetVolume(HI_HANDLE hSndOp, HI_UNF_SND_GAIN_ATTR_S stGain)
{
    HI_U32 idx;
    AIAO_PORT_ID_E enPort;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_S32 Ret = HI_FAILURE;
    HI_U32 u32dBReg;

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        // todo, cast Volume
        return HI_SUCCESS;
    }

    if (HI_TRUE == stGain.bLinearMode)
    {
        u32dBReg = AUTIL_VolumeLinear2RegdB((HI_U32)stGain.s32Gain);
    }
    else
    {
        u32dBReg = AUTIL_VolumedB2RegdB(stGain.s32Gain);
    }

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enPort = state->enPortID[idx];
        if(enPort < AIAO_PORT_BUTT)
        {
            Ret = HAL_AIAO_P_SetVolume(enPort, u32dBReg);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AIAO("HAL_AIAO_P_SetVolume port:%d, VolunedB: %d\n", (HI_U32)enPort, stGain.s32Gain);
                return HI_FAILURE;
            }
        }
    }

    state->stUserGain.bLinearMode = stGain.bLinearMode;
    state->stUserGain.s32Gain = stGain.s32Gain;

    return HI_SUCCESS;
}

HI_S32 SndOpSetTrackMode(HI_HANDLE hSndOp, HI_UNF_TRACK_MODE_E enMode)
{
    HI_U32 idx;
    AIAO_PORT_ID_E enPort;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_S32 Ret = HI_FAILURE;

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        // todo, cast TrackMode
        return HI_SUCCESS;
    }

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enPort = state->enPortID[idx];
        if(enPort < AIAO_PORT_BUTT)
        {
            Ret = HAL_AIAO_P_SetTrackMode(enPort, AUTIL_TrackModeTransform(enMode));
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AIAO("HAL_AIAO_P_SetTrackMode port:%d\n", (HI_U32)enPort);
                return HI_FAILURE;
            }
        }
    }

    state->enUserTrackMode = enMode;

    return HI_SUCCESS;
}

HI_S32 SndOpSetLowLatency(HI_HANDLE hSndOp, HI_U32 u32LatencyMs)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 idx;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AOE_AOP_ID_E enAOP;

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enAOP = state->enAOP[idx];
        if(enAOP < AOE_AOP_BUTT)
        {             
            Ret |= HAL_AOE_AOP_SetLowLatency(enAOP,u32LatencyMs);            
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AO("HAL_AOE_AOP_SetLowLatency(%d) failed\n", enAOP);
                return HI_FAILURE;
            }            
        }
    }

    state->u32LatencyMs = u32LatencyMs;
    return HI_SUCCESS;
}

HI_S32 SndOpGetLowLatency(HI_HANDLE hSndOp, HI_U32 *pu32LatencyMs)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 idx;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AOE_AOP_ID_E enAOP;

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enAOP = state->enAOP[idx];
        if(enAOP < AOE_AOP_BUTT)
        {             
            Ret |= HAL_AOE_AOP_GetLowLatency(enAOP,pu32LatencyMs);            
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AO("HAL_AOE_AOP_GetLowLatency(%d) failed\n", enAOP);
                return HI_FAILURE;
            }            
        }
    }
    return HI_SUCCESS;
}

HI_S32 SndOpSetAefBypass(HI_HANDLE hSndOp, HI_BOOL bBypass)
{
    HI_S32 Ret;
    HI_U32 idx;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    AOE_AOP_ID_E enAOP;

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enAOP = state->enAOP[idx];
        if(enAOP < AOE_AOP_BUTT)
        {
            Ret = HAL_AOE_AOP_SetAefBypass(enAOP, bBypass);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AO("HAL_AOE_AOP_SetAefBypass(%d) failed\n", enAOP);
                return HI_FAILURE;
            }
        }
    }

    state->bBypass = bBypass;

    return HI_SUCCESS;
}
HI_S32 SndOpSetMute(HI_HANDLE hSndOp, HI_U32 u32Mute)
{
    HI_U32 idx;
    AIAO_PORT_ID_E enPort;
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    HI_BOOL bMute = (u32Mute == 0) ? HI_FALSE : HI_TRUE;
    HI_S32 Ret = HI_FAILURE;

    if (SND_OUTPUT_TYPE_CAST == state->enOutType)
    {
        // todo, cast mute
        return HI_SUCCESS;
    }

    for(idx = 0; idx < AO_SNDOP_MAX_AOP_NUM; idx++)
    {
        enPort = state->enPortID[idx];
        if(enPort < AIAO_PORT_BUTT)
        {
            Ret = HAL_AIAO_P_Mute(enPort, bMute);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AO("HAL_AIAO_P_Mute port:%d, Mute: %d\n", (HI_U32)enPort, (HI_U32)bMute);
                return HI_FAILURE;
            }
        }
    }

#ifdef HI_SND_AMP_SUPPORT
    if(state->pstAmpFunc)
    {
        if(state->pstAmpFunc->pfnAMP_SetMute)
        {
            Ret = (state->pstAmpFunc->pfnAMP_SetMute)(bMute);
            if (HI_SUCCESS != Ret)
            {
                HI_FATAL_AO("Amp mute failed\n");
                return HI_FAILURE;
            }
        }
    }
#endif       

    state->u32UserMute = u32Mute;

    return HI_SUCCESS;
}

HI_S32 SndOpGetMute(HI_HANDLE hSndOp)
{
    SND_OP_STATE_S *state = (SND_OP_STATE_S *)hSndOp;
    return state->u32UserMute;
}

#ifdef HI_SND_MUTECTL_SUPPORT
static HI_VOID SndOpDisableMuteCtrl(HI_U32 u32Card)
{
    SND_CARD_STATE_S *pCard = (SND_CARD_STATE_S *)u32Card;
    if (pCard->pstGpioFunc && pCard->pstGpioFunc->pfnGpioDirSetBit)
    {
        (pCard->pstGpioFunc->pfnGpioDirSetBit)(HI_SND_MUTECTL_GPIO, 0); //output
    }
    if (pCard->pstGpioFunc && pCard->pstGpioFunc->pfnGpioWriteBit)
    { 
        (pCard->pstGpioFunc->pfnGpioWriteBit)(HI_SND_MUTECTL_GPIO, ((0 == HI_SND_MUTECTL_LEVEL) ? 1 : 0));
    }
    ADAC_FastPowerEnable(HI_FALSE);    //diable fast power up
    return;
}

static HI_VOID SndOpEnableMuteCtrl(HI_U32 u32Card)
{
    SND_CARD_STATE_S *pCard = (SND_CARD_STATE_S *)u32Card;
    if (pCard->pstGpioFunc && pCard->pstGpioFunc->pfnGpioDirSetBit)
    {
        (pCard->pstGpioFunc->pfnGpioDirSetBit)(HI_SND_MUTECTL_GPIO, 0); //output
    }
    if (pCard->pstGpioFunc && pCard->pstGpioFunc->pfnGpioWriteBit)
    { 
        (pCard->pstGpioFunc->pfnGpioWriteBit)(HI_SND_MUTECTL_GPIO, ((0 == HI_SND_MUTECTL_LEVEL) ? 0 : 1));
    }
    ADAC_FastPowerEnable(HI_TRUE);     //enable fast power up
    return;
}

#endif


HI_VOID SND_DestroyOp(SND_CARD_STATE_S *pCard, HI_BOOL bSuspend)
{
    HI_S32 u32PortNum;

    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        if (pCard->hSndOp[u32PortNum])
        {
#ifdef HI_SND_MUTECTL_SUPPORT
#if defined(CHIP_TYPE_hi3798mv100) || defined(CHIP_TYPE_hi3796mv100)
            HI_CHIP_PACKAGE_TYPE_E enPackageType = HI_CHIP_PACKAGE_TYPE_BUTT;
            HI_S32 s32Ret = HI_SUCCESS;
            s32Ret = HI_DRV_SYS_GetChipPackageType(&enPackageType);
            if (s32Ret != HI_SUCCESS)
            {
                HI_ERR_AO("HI_DRV_SYS_GetChipPackageType failed!\n");
                return;
            }

            if (HI_CHIP_PACKAGE_TYPE_QFP_216 != enPackageType)
            {
                if(HI_UNF_SND_OUTPUTPORT_DAC0 == ((SND_OP_STATE_S *)pCard->hSndOp[u32PortNum])->enOutPort)
                {
                    //if(HI_TRUE == bSuspend)
                    {
                        SndOpEnableMuteCtrl((HI_U32)pCard);
                    }
                    del_timer(&pCard->stMuteDisableTimer);
                }
            }
#else
            if(HI_UNF_SND_OUTPUTPORT_DAC0 == ((SND_OP_STATE_S *)pCard->hSndOp[u32PortNum])->enOutPort)
            {
                //if(HI_TRUE == bSuspend)
                {
                    SndOpEnableMuteCtrl((HI_U32)pCard);
                }
                del_timer(&pCard->stMuteDisableTimer);
            }
#endif
#endif
            SndOpDestroy(pCard->hSndOp[u32PortNum], bSuspend);
            pCard->hSndOp[u32PortNum] = HI_NULL;
        }
    }

    return;
}

HI_S32 SND_CreateOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_ATTR_S *pstAttr,
                          AO_ALSA_I2S_Param_S* pstAoI2sParam, HI_BOOL bResume)
{
    HI_U32 u32PortNum;
    HI_HANDLE hSndOp;

    for (u32PortNum = 0; u32PortNum < pstAttr->u32PortNum; u32PortNum++)
    {
        if (HI_SUCCESS != SndOpCreate(&hSndOp,&pstAttr->stOutport[u32PortNum],pstAoI2sParam, bResume,pstAttr->enSampleRate))
        {
            goto SND_CreateOp_ERR_EXIT;
        }
		pCard->hSndOp[u32PortNum] = hSndOp;
#ifdef HI_SND_MUTECTL_SUPPORT
#if defined(CHIP_TYPE_hi3798mv100) || defined(CHIP_TYPE_hi3796mv100)
        {
            HI_CHIP_PACKAGE_TYPE_E enPackageType = HI_CHIP_PACKAGE_TYPE_BUTT;
            HI_S32 s32Ret = HI_SUCCESS;
            s32Ret = HI_DRV_SYS_GetChipPackageType(&enPackageType);
            if (s32Ret != HI_SUCCESS)
            {
                HI_ERR_AO("HI_DRV_SYS_GetChipPackageType failed!\n");
                return s32Ret;
            }
            if (HI_CHIP_PACKAGE_TYPE_QFP_216 != enPackageType)
            {
                if(HI_UNF_SND_OUTPUTPORT_DAC0 == pstAttr->stOutport[u32PortNum].enOutPort)
                {
                    /* Get gpio functions */
                    if (HI_SUCCESS != HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&pCard->pstGpioFunc))
                    {
                        HI_ERR_AO("Get gpio function err\n");
                        goto SND_CreateOp_ERR_EXIT;
                    }
                    
                    init_timer(&pCard->stMuteDisableTimer);
                    pCard->stMuteDisableTimer.function = (void *)SndOpDisableMuteCtrl;
                    pCard->stMuteDisableTimer.data = (HI_U32)pCard;
                    if(HI_TRUE == bResume)
                    {
                        pCard->stMuteDisableTimer.expires = (jiffies + msecs_to_jiffies(AO_SND_MUTE_RESUME_DISABLE_TIMEMS));
                    }
                    else
                    {
                        pCard->stMuteDisableTimer.expires = (jiffies + msecs_to_jiffies(AO_SND_MUTE_RESUME_DISABLE_TIMEMS));
                    }
                    add_timer(&pCard->stMuteDisableTimer);
                }
            }
        }
#else
        if(HI_UNF_SND_OUTPUTPORT_DAC0 == pstAttr->stOutport[u32PortNum].enOutPort)
        {
            /* Get gpio functions */
            if (HI_SUCCESS != HI_DRV_MODULE_GetFunction(HI_ID_GPIO, (HI_VOID**)&pCard->pstGpioFunc))
            {
                HI_ERR_AO("Get gpio function err\n");
                goto SND_CreateOp_ERR_EXIT;
            }
            
            init_timer(&pCard->stMuteDisableTimer);
            pCard->stMuteDisableTimer.function = (void *)SndOpDisableMuteCtrl;
            pCard->stMuteDisableTimer.data = (HI_U32)pCard;
            if(HI_TRUE == bResume)
            {
                pCard->stMuteDisableTimer.expires = (jiffies + msecs_to_jiffies(AO_SND_MUTE_RESUME_DISABLE_TIMEMS));
            }
            else
            {
                pCard->stMuteDisableTimer.expires = (jiffies + msecs_to_jiffies(AO_SND_MUTE_RESUME_DISABLE_TIMEMS));
            }
            add_timer(&pCard->stMuteDisableTimer);
        }
#endif
#endif
    }
    
    if(pstAoI2sParam != NULL)//for i2s only card resume HI_ALSA_I2S_ONLY_SUPPORT
    {
        if(pstAoI2sParam->bAlsaI2sUse == HI_TRUE)
        {
            memcpy(&pCard->stUserOpenParamI2s, pstAoI2sParam, sizeof(AO_ALSA_I2S_Param_S));
        }
        else
        {
            memset(&pCard->stUserOpenParamI2s,0,sizeof(AO_ALSA_I2S_Param_S));   
        }
    }
    else
    {
     memset(&pCard->stUserOpenParamI2s,0,sizeof(AO_ALSA_I2S_Param_S));  
    }

    memcpy(&pCard->stUserOpenParam, pstAttr, sizeof(HI_UNF_SND_ATTR_S));
    pCard->enUserSampleRate = pstAttr->enSampleRate;
    pCard->enUserHdmiMode = HI_UNF_SND_HDMI_MODE_LPCM;
    pCard->enUserSpdifMode = HI_UNF_SND_SPDIF_MODE_LPCM;
    pCard->u32HdmiDataFormat = 0;
    pCard->u32SpdifDataFormat = 0;
    
    return HI_SUCCESS;

SND_CreateOp_ERR_EXIT:
    SND_DestroyOp(pCard, HI_FALSE);
    return HI_FAILURE;
}

HI_S32 SND_SetOpMute(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute)
{
    HI_HANDLE hSndOp;
    HI_U32    u32Mute = 0;
    HI_S32 Ret = HI_SUCCESS;

    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        HI_S32 u32PortNum;
        
        for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
        {
            hSndOp = pCard->hSndOp[u32PortNum];
            if (hSndOp)
            {
                u32Mute = SndOpGetMute(hSndOp);
                u32Mute &= (~(1L << AO_SNDOP_GLOBAL_MUTE_BIT));
                u32Mute |= (HI_U32)bMute << AO_SNDOP_GLOBAL_MUTE_BIT;
                Ret |= SndOpSetMute(hSndOp, u32Mute);
            }
        }
        return Ret;
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {
            u32Mute = SndOpGetMute(hSndOp);
            u32Mute &= (~(1L << AO_SNDOP_LOCAL_MUTE_BIT));
            u32Mute |= (HI_U32)bMute << AO_SNDOP_LOCAL_MUTE_BIT;
            return SndOpSetMute(hSndOp, u32Mute);
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }
    }
}

HI_S32 SND_GetOpMute(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute)
{
    HI_HANDLE hSndOp;
    HI_U32    u32Mute;
    HI_U32    u32MuteBit;
    
    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        enOutPort = pCard->stUserOpenParam.stOutport[0].enOutPort;
        u32MuteBit = AO_SNDOP_GLOBAL_MUTE_BIT; 
    }
    else
    {
        u32MuteBit = AO_SNDOP_LOCAL_MUTE_BIT;
    }
    
    hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        u32Mute = SndOpGetMute(hSndOp);
        *pbMute = (HI_BOOL)((u32Mute >> u32MuteBit) & 1) ;
        return HI_SUCCESS;
    }
    return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
}

HI_S32 SND_SetOpHdmiMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E enMode)
{
    HI_S32 Ret = HI_SUCCESS;
    if(!SNDGetOpHandleByOutPort(pCard, enOutPort))
    {
        HI_ERR_AO("OutPort(%d) not attatch this card\n", (HI_U32)enOutPort);
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }

    switch (enOutPort)
    {
    case HI_UNF_SND_OUTPUTPORT_HDMI0:
        pCard->enUserHdmiMode = enMode;
        break;
    default:
       HI_ERR_AO("Hdmi mode don't support OutPort(%d)\n", (HI_U32)enOutPort);
       return HI_FAILURE;
    }

    return Ret;
}

HI_S32 SND_GetOpHdmiMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E *penMode)
{
    HI_S32 Ret = HI_SUCCESS;
    if(!SNDGetOpHandleByOutPort(pCard, enOutPort))
    {
        HI_ERR_AO("OutPort(%d) not attatch this card\n", (HI_U32)enOutPort);
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }

    switch (enOutPort)
    {
    case HI_UNF_SND_OUTPUTPORT_HDMI0:
        *penMode = pCard->enUserHdmiMode;
        break;
    default:
       HI_ERR_AO("Get hdmi mode don't support OutPort(%d)\n", (HI_U32)enOutPort);
       return HI_FAILURE;
    }

    return Ret;
}


HI_S32 SND_SetOpSpdifMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E enMode)
{
    HI_S32 Ret = HI_SUCCESS;
    if(!SNDGetOpHandleByOutPort(pCard, enOutPort))
    {
        HI_ERR_AO("OutPort(%d) not attatch this card\n", (HI_U32)enOutPort);
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }

    switch (enOutPort)
    {
    case HI_UNF_SND_OUTPUTPORT_SPDIF0:
        pCard->enUserSpdifMode = enMode;
        break;
    default:
       HI_ERR_AO("Spdif mode don't support OutPort(%d)\n", (HI_U32)enOutPort);
       return HI_FAILURE;
    }

    return Ret;
}

HI_S32 SND_GetOpSpdifMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E *penMode)
{
    HI_S32 Ret = HI_SUCCESS;
    if(!SNDGetOpHandleByOutPort(pCard, enOutPort))
    {
        HI_ERR_AO("OutPort(%d) not attatch this card\n", (HI_U32)enOutPort);
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }

    switch (enOutPort)
    {
    case HI_UNF_SND_OUTPUTPORT_SPDIF0:
        *penMode = pCard->enUserSpdifMode;
        break;
    default:
       HI_ERR_AO("Get spdif mode don't support OutPort(%d)\n", (HI_U32)enOutPort);
       return HI_FAILURE;
    }

    return Ret;
}


HI_S32 SND_SetOpVolume(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain)
{
    HI_HANDLE hSndOp;
    HI_S32 Ret = HI_SUCCESS;
    if(HI_UNF_SND_OUTPUTPORT_ALL==enOutPort)
    {
        HI_S32 u32PortNum;
        for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
        {
            hSndOp = pCard->hSndOp[u32PortNum];
            if (hSndOp)
            {
                Ret |= SndOpSetVolume(hSndOp, stGain);
            }
        }
        return Ret;
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {
            return SndOpSetVolume(hSndOp, stGain);
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }
    }

    return Ret;
}

HI_S32 SND_GetOpVolume(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S *pstGain)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        HI_ERR_AO("Don't support get volume of allport!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    if (hSndOp)
    {
        pstGain->bLinearMode = ((SND_OP_STATE_S *)hSndOp)->stUserGain.bLinearMode;
        pstGain->s32Gain = ((SND_OP_STATE_S *)hSndOp)->stUserGain.s32Gain;
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_S32 SND_SetOpSpdifCategoryCode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, 
                                  HI_UNF_SND_SPDIF_CATEGORYCODE_E enCategoryCode)
{
    HI_HANDLE hSndOp;
    if(HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
    {
        HI_ERR_AO("Set spdif Category code don't support OutPort(%d)", (HI_U32)enOutPort);
        return HI_ERR_AO_INVALID_PARA;
    }
    hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        return SndOpSetSPDIFCategoryCode(hSndOp, enCategoryCode);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}
HI_S32 SND_GetOpSpdifCategoryCode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, 
                                  HI_UNF_SND_SPDIF_CATEGORYCODE_E *penCategoryCode)
{
    HI_HANDLE hSndOp;   
    if(HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
    {
        HI_ERR_AO("Get spdif Category code don't support OutPort(%d)", (HI_U32)enOutPort);
        return HI_ERR_AO_INVALID_PARA;
    }
    hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        *penCategoryCode = ((SND_OP_STATE_S *)hSndOp)->enUserSPDIFCategoryCode;
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}
HI_S32 SND_SetOpSpdifSCMSMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_SCMSMODE_E enSCMSMode)
{
    HI_HANDLE hSndOp;

    if(HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
    {
        HI_ERR_AO("Set spdif SCMS mode don't support OutPort(%d)", (HI_U32)enOutPort);
        return HI_ERR_AO_INVALID_PARA;
    }

    hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        return SndOpSetSPDIFSCMSMode(hSndOp, enSCMSMode);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_S32 SND_GetOpSpdifSCMSMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_SCMSMODE_E *penSCMSMode)
{
    HI_HANDLE hSndOp;   

    if(HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
    {
        HI_ERR_AO("Get spdif SCMS mode don't support OutPort(%d)", (HI_U32)enOutPort);
        return HI_ERR_AO_INVALID_PARA;
    }

    hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        *penSCMSMode = ((SND_OP_STATE_S *)hSndOp)->enUserSPDIFSCMSMode;
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}


HI_S32 SND_SetOpSampleRate(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
#if 1
    if(!pCard)
    {
        HI_ERR_AO( "Card is not open!\n");
        return HI_FAILURE;
    }
    if(pCard->enUserSampleRate == enSampleRate)
    {
        return HI_SUCCESS;
    }
    else
    {
        HI_ERR_AO( "SetSampleRate(%d) failed, can't change samplerate at running!\n",enSampleRate);
        return HI_FAILURE;
    }
#else
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(enSound, enOutPort);
    HI_S32 Ret = HI_FAILURE;
    if (hSndOp)
    {
        return SndOpSetSampleRate(hSndOp, enSampleRate);
    }
    return Ret;
#endif
}

HI_S32 SND_GetOpSampleRate(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SAMPLE_RATE_E *penSampleRate)
{
    *penSampleRate = pCard->enUserSampleRate;
    return HI_SUCCESS;
}

HI_S32 SND_SetOpTrackMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E enMode)
{
    HI_HANDLE hSndOp;
    HI_S32 Ret = HI_SUCCESS;

    if(HI_UNF_SND_OUTPUTPORT_ALL==enOutPort)
    {
        HI_S32 u32PortNum;
        for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
        {
            hSndOp = pCard->hSndOp[u32PortNum];
            if (hSndOp)
            {
                Ret |= SndOpSetTrackMode(hSndOp, enMode);
            }
        }
        return Ret;
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {
            return SndOpSetTrackMode(hSndOp, enMode);
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }
    }

    return Ret;
}

HI_S32 SND_GetOpTrackMode(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E *penMode)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        HI_ERR_AO("Don't support get trackmode of allport!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    if (hSndOp)
    {
        *penMode = ((SND_OP_STATE_S *)hSndOp)->enUserTrackMode;
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_U32 SND_SetLowLatency(SND_CARD_STATE_S *pCard,HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_U32 u32LatencyMs)
{
    HI_S32 u32PortNum;
    HI_HANDLE hSndOp;
    HI_S32 Ret = HI_SUCCESS;
    
    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
        {
            hSndOp = pCard->hSndOp[u32PortNum];
            if (hSndOp)
            {               
              Ret |= SndOpSetLowLatency(hSndOp, u32LatencyMs);
            }
        }
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {               
          Ret |= SndOpSetLowLatency(hSndOp, u32LatencyMs);
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }

    }
    return Ret;

}


HI_U32 SND_GetLowLatency(SND_CARD_STATE_S *pCard,HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_U32 *pu32LatencyMs)
{
    HI_HANDLE hSndOp;
    HI_S32 Ret = HI_SUCCESS;

    
    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_DAC);
        if(hSndOp)
        {
            SndOpGetLowLatency(hSndOp, pu32LatencyMs);
            return HI_SUCCESS;
        }
    
        hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_I2S);
        if(hSndOp)
        {
            SndOpGetLowLatency(hSndOp, pu32LatencyMs);
            return HI_SUCCESS;
        }
    
        hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_SPDIF);
        if(hSndOp)
        { 
            SndOpGetLowLatency(hSndOp, pu32LatencyMs);
            return HI_SUCCESS;
        }
        
        hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_HDMI);
        if(hSndOp)
        {
            SndOpGetLowLatency(hSndOp, pu32LatencyMs);
            return HI_SUCCESS;
        }
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {               
          SndOpGetLowLatency(hSndOp, pu32LatencyMs); 
          return HI_SUCCESS;
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }
    } 

    return Ret;
}

HI_S32 SND_SetOpAefBypass(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bBypass)
{
    HI_HANDLE hSndOp;
    HI_S32 Ret = HI_SUCCESS;

    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        HI_S32 u32PortNum;
        for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
        {
            hSndOp = pCard->hSndOp[u32PortNum];
            if (hSndOp)
            {
                Ret |= SndOpSetAefBypass(hSndOp, bBypass);
            }
        }
        return Ret;
    }
    else
    {
        hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
        if (hSndOp)
        {
            return SndOpSetAefBypass(hSndOp, bBypass);
        }
        else
        {
            return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
        }
    }
    }

HI_S32 SND_GetOpAefBypass(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbBypass)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if(HI_UNF_SND_OUTPUTPORT_ALL == enOutPort)
    {
        HI_ERR_AO("Don't support get aef bypass status of allport!\n");
        return HI_ERR_AO_INVALID_PARA;
    }

    if (hSndOp)
    {
        *pbBypass = ((SND_OP_STATE_S *)hSndOp)->bBypass;
        return HI_SUCCESS;
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_S32 SND_SetOpAttr(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, SND_OP_ATTR_S *pstSndPortAttr)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if (hSndOp)
    {
        return SndOpSetAttr(hSndOp, pstSndPortAttr);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }

}

HI_S32 SND_GetOpAttr(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, SND_OP_ATTR_S *pstSndPortAttr)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    if (hSndOp)
    {
        return SndOpGetAttr(hSndOp, pstSndPortAttr);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    } 
}

#if 0
HI_S32 SND_GetOpStatus(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, AIAO_PORT_STAUTS_S *pstPortStatus)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);
    HI_S32 Ret = HI_FAILURE;

    if (hSndOp)
    {
        return SndOpGetStatus(hSndOp, pstPortStatus);
    }

    return Ret;
}
#endif

HI_S32 SND_StopOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if (hSndOp)
    {
        return SndOpStop(hSndOp, HI_NULL);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_S32 SND_StartOp(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enOutPort);

    if (hSndOp)
    {
        return SndOpStart(hSndOp, HI_NULL);
    }
    else
    {
        return HI_ERR_AO_OUTPORT_NOT_ATTATCH;
    }
}

HI_VOID SND_GetXRunCount(SND_CARD_STATE_S *pCard, HI_U32 *pu32Count)
{
    AIAO_PORT_STAUTS_S stStatus;
    HI_HANDLE hSndOp;
    HI_UNF_SND_ATTR_S* pstSndAttr; 
    HI_U32 u32EmptyCnt = 0;
    HI_U32 i = 0; 
    HI_UNF_SND_OUTPUTPORT_E enPort = HI_UNF_SND_OUTPUTPORT_HDMI0;
    
    pstSndAttr = &pCard->stUserOpenParam;  
        
    for (i = 0; i < pstSndAttr->u32PortNum; i++)
    {
       enPort = pstSndAttr->stOutport[i].enOutPort;
       hSndOp = SNDGetOpHandleByOutPort(pCard, enPort); 
       if (HI_NULL == hSndOp)
       {
           return ;
       }
       SndOpGetStatus(hSndOp, &stStatus);    
       u32EmptyCnt += stStatus.stProcStatus.uInfFiFoEmptyCnt;
    }
    *pu32Count = u32EmptyCnt;

}

HI_S32 SND_SetPortSampleRate(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_U32 u32SampleRate)
{
    HI_S32 s32Ret;
    AIAO_PORT_ATTR_S stAiaoAttr;
    SND_OP_STATE_S* state = HI_NULL;
    HI_U32 u32PortNum;
    AIAO_PORT_ID_E enPortID;

    // enOutPort is HI_UNF_SND_OUTPUTPORT_ALL
    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        state = (SND_OP_STATE_S*)(pCard->hSndOp[u32PortNum]);
        if (HI_NULL != state)
        {
            enPortID = state->enPortID[state->ActiveId];

            s32Ret = HAL_AIAO_P_Stop(enPortID, AIAO_STOP_IMMEDIATE);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_AO("HAL_AIAO_P_Stop(%d) failed\n", enPortID);
                return HI_FAILURE;
            }

            s32Ret = HAL_AIAO_P_GetAttr(enPortID, &stAiaoAttr);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_AO("HAL_AIAO_P_GetAttr(%d) failed\n", enPortID);
                return HI_FAILURE;
            }
            stAiaoAttr.stIfAttr.enRate = (AIAO_SAMPLE_RATE_E)u32SampleRate;

            s32Ret = HAL_AIAO_P_SetAttr(enPortID, &stAiaoAttr);
            if (HI_SUCCESS != s32Ret)
            {
                HI_FATAL_AO("HAL_AIAO_P_SetAttr(%d) failed!\n", enPortID);
                return HI_FAILURE;
            }

            s32Ret = HAL_AIAO_P_Start(enPortID);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_AO("HAL_AIAO_P_Start(%d) failed!\n", enPortID);
                return HI_FAILURE;
            }

            if (HI_UNF_SND_OUTPUTPORT_HDMI0 == state->enOutPort)
            {
                HDMI_AUDIO_ATTR_S stHDMIAttr;
                if(pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiGetAoAttr)
                {
                    (pCard->pstHdmiFunc->pfnHdmiGetAoAttr)(HI_UNF_HDMI_ID_0, &stHDMIAttr);
                }
                stHDMIAttr.enSampleRate = (HI_UNF_SAMPLE_RATE_E)u32SampleRate;
                if(pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiAudioChange)
                {
                    (pCard->pstHdmiFunc->pfnHdmiAudioChange)(HI_UNF_HDMI_ID_0, &stHDMIAttr);
                }
            }
        }
    }

    return s32Ret;
}

HI_S32 SND_GetPortInfo(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enOutPort, SND_PORT_KERNEL_ATTR_S* pstPortKAttr)
{
    SND_OP_STATE_S* state;
    AIAO_RBUF_ATTR_S stRbfAttr;
    AIAO_PORT_ID_E enPortID;
    SND_PORT_KERNEL_ATTR_S stPortKAttr[HI_UNF_SND_OUTPUTPORT_MAX];
    HI_U32 u32PortNum;

    memset(stPortKAttr, 0, sizeof(SND_PORT_KERNEL_ATTR_S) * HI_UNF_SND_OUTPUTPORT_MAX);

    // enOutPort is HI_UNF_SND_OUTPUTPORT_ALL
    for (u32PortNum = 0; u32PortNum < HI_UNF_SND_OUTPUTPORT_MAX; u32PortNum++)
    {
        state = (SND_OP_STATE_S*)(pCard->hSndOp[u32PortNum]);
        if (HI_NULL == state)
        {
            stPortKAttr[u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_BUTT;
        }
        else
        {
            stPortKAttr[u32PortNum].enOutPort = state->enOutPort;

            enPortID = state->enPortID[state->ActiveId];
            HAL_AIAO_P_GetRbfAttr(enPortID, &stRbfAttr);
            stPortKAttr[u32PortNum].u32PhyDma = stRbfAttr.u32BufPhyAddr;
            stPortKAttr[u32PortNum].u32PhyWptr = stRbfAttr.u32BufPhyWptr;
            stPortKAttr[u32PortNum].u32PhyRptr = stRbfAttr.u32BufPhyRptr;
            stPortKAttr[u32PortNum].u32Size = stRbfAttr.u32BufSize;
        }
    }
    memcpy(pstPortKAttr, stPortKAttr, sizeof(SND_PORT_KERNEL_ATTR_S) * HI_UNF_SND_OUTPUTPORT_MAX);
    return HI_SUCCESS;
}

static HI_U32 Cast_GetSysTime(HI_VOID)
{
    HI_U64   SysTime;

    SysTime = sched_clock();

    do_div(SysTime, 1000000);

    return (HI_U32)SysTime;
}

HI_S32 SND_StopCastOp(SND_CARD_STATE_S *pCard, HI_S32 s32CastID)
{
    HI_HANDLE hSndOp = pCard->hCastOp[s32CastID];
    HI_S32 Ret = HI_FAILURE;

    if (hSndOp)
    {
        return SndOpStop(hSndOp, HI_NULL);
    }
    return Ret;
}
HI_S32 SND_StartCastOp(SND_CARD_STATE_S *pCard, HI_S32 s32CastID)
{
    HI_HANDLE hSndOp = pCard->hCastOp[s32CastID];
    HI_S32 Ret = HI_FAILURE;

    if (hSndOp)
    {
        return SndOpStart(hSndOp, HI_NULL);
    }
    return Ret;
}

HI_S32 SND_CreateCastOp(SND_CARD_STATE_S *pCard,  HI_S32 *ps32CastId, HI_UNF_SND_CAST_ATTR_S *pstAttr, MMZ_BUFFER_S *pstMMz)
{
    HI_HANDLE hSndOp;

    if (HI_SUCCESS != SndOpCreateCast(&hSndOp,  ps32CastId, pstAttr, pstMMz))
    {
        HI_ERR_AIAO("SndOpCreateCast Failed\n");
        return HI_FAILURE;
    }
   
    pCard->hCastOp[*ps32CastId] = hSndOp;

    return HI_SUCCESS;
}

HI_S32 SND_DestoryCastOp(SND_CARD_STATE_S *pCard,  HI_U32 CastId)
{

    if (pCard->hCastOp[CastId])
    {
        SndOpDestroy(pCard->hCastOp[CastId], HI_FALSE);
        pCard->hCastOp[CastId] = HI_NULL;
    }
    else
    {
        HI_ERR_AIAO("SND_DestoryCastOp Null pointer Failed\n");
    }
    
    return HI_SUCCESS;   
}
  
HI_U32 SND_ReadCastData(SND_CARD_STATE_S *pCard, HI_S32 s32CastId, AO_Cast_Data_Param_S *pstCastData)
{
    SND_OP_STATE_S *state;
    HI_U32 u32ReadBytes = 0;
    HI_U32 u32NeedBytes = 0;

    state = (SND_OP_STATE_S *)pCard->hCastOp[s32CastId];
    if (state)
    {
        if (SND_OUTPUT_TYPE_CAST != state->enOutType)
        {
            return HI_FAILURE;
        }

        u32NeedBytes = pstCastData->u32FrameBytes;
        //HI_ERR_AO( "u32NeedBytes  0x%x  !\n",u32NeedBytes);

        u32ReadBytes = HAL_CAST_ReadData(state->CastId, &pstCastData->u32DataOffset, u32NeedBytes);
#if 0        
        if (u32ReadBytes)
        {
            HI_ERR_AO( "u32NeedBytes  0x%x  , u32ReadBytes 0x%x !\n",u32NeedBytes, u32ReadBytes);
        }
#endif

#if 1   //add  pts to cast frame
        pstCastData->stAOFrame.u32PtsMs = Cast_GetSysTime();
#endif

        pstCastData->stAOFrame.u32PcmSamplesPerFrame = u32ReadBytes  / pstCastData->u32SampleBytes;
        //HI_ERR_AO( "pstCastData->u32DataOffset=0x%x ,stAOFrame.u32PcmSamplesPerFrame   0x%x\n",pstCastData->u32DataOffset ,(int)(pstCastData->stAOFrame.u32PcmSamplesPerFrame));
    }

    return u32ReadBytes;
}

HI_U32 SND_ReleaseCastData(SND_CARD_STATE_S *pCard, HI_S32 s32CastId, AO_Cast_Data_Param_S *pstCastData)
{
    SND_OP_STATE_S *state;
    HI_U32 u32RleaseBytes = 0;

    //*state = ( SND_OP_STATE_S *)SNDGetOpHandleByOutPort(pCard, HI_UNF_SND_OUTPUTPORT_CAST);
    state = (SND_OP_STATE_S *)pCard->hCastOp[s32CastId];
    if (state)
    {
        if (SND_OUTPUT_TYPE_CAST != state->enOutType)
        {
            return HI_FAILURE;
        }

        u32RleaseBytes = pstCastData->u32FrameBytes;
        u32RleaseBytes = HAL_CAST_ReleaseData(state->CastId, u32RleaseBytes);
        //HI_ERR_AO( "u32RleaseBytes  0x%x  !\n",u32RleaseBytes);

        return u32RleaseBytes;
    }

    return HI_FAILURE;
}

#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
HI_S32 SndOpGetSetting(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enPort, SND_OUTPORT_ATTR_S *pstPortAttr)
{
    SND_OP_STATE_S *state;
    
    state = (SND_OP_STATE_S *)SNDGetOpHandleByOutPort(pCard, enPort);
    if(!state)
    {
        return HI_FAILURE;
    }
    pstPortAttr->enCurnStatus = state->enCurnStatus;
    pstPortAttr->u32UserMute = state->u32UserMute;
    pstPortAttr->enUserTrackMode = state->enUserTrackMode;
    pstPortAttr->u32LatencyMs = state->u32LatencyMs;
    pstPortAttr->bBypass = state->bBypass;
    memcpy(&pstPortAttr->stUserGain, &state->stUserGain, sizeof(HI_UNF_SND_GAIN_ATTR_S));
    
    return HI_SUCCESS;
}

HI_S32 SND_GetOpSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings)
{
    HI_U32 u32Port;
    
    pstSndSettings->enUserHdmiMode = pCard->enUserHdmiMode;
    pstSndSettings->enUserSpdifMode = pCard->enUserSpdifMode;
    memcpy(&pstSndSettings->stUserOpenParam, &pCard->stUserOpenParam, sizeof(HI_UNF_SND_ATTR_S));
    if(&pCard->stUserOpenParamI2s != HI_NULL )//for i2s only card resume HI_ALSA_I2S_ONLY_SUPPORT
    {
       memcpy(&pstSndSettings->stUserOpenParamI2s, &pCard->stUserOpenParamI2s, sizeof(AO_ALSA_I2S_Param_S));
    }
    for(u32Port = 0; u32Port < pCard->stUserOpenParam.u32PortNum; u32Port++)
    {
        SndOpGetSetting(pCard, pCard->stUserOpenParam.stOutport[u32Port].enOutPort, &pstSndSettings->stPortAttr[u32Port]);
    }
    
    return HI_SUCCESS; 
}

HI_S32 SNDOpRestoreSetting(SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enPort, SND_OUTPORT_ATTR_S *pstPortAttr)
{
    HI_HANDLE hSndOp = SNDGetOpHandleByOutPort(pCard, enPort);
    if(!hSndOp)
    {
        return HI_FAILURE;
    }
    if(SND_OP_STATUS_START == pstPortAttr->enCurnStatus)
    {
        SndOpStart(hSndOp, HI_NULL);
    }
    else if(SND_OP_STATUS_STOP == pstPortAttr->enCurnStatus)
    {
        SndOpStop(hSndOp, HI_NULL);
    }

    SndOpSetLowLatency(hSndOp, pstPortAttr->u32LatencyMs);
    SndOpSetMute(hSndOp, pstPortAttr->u32UserMute);
    SndOpSetTrackMode(hSndOp, pstPortAttr->enUserTrackMode);
    SndOpSetVolume(hSndOp, pstPortAttr->stUserGain);
    SndOpSetAefBypass(hSndOp, pstPortAttr->bBypass);

    return HI_SUCCESS;
}

HI_S32 SND_RestoreOpSetting(SND_CARD_STATE_S *pCard, SND_CARD_SETTINGS_S* pstSndSettings)
{
    HI_U32 u32Port;
        
    pCard->enUserHdmiMode = pstSndSettings->enUserHdmiMode;
    pCard->enUserSpdifMode = pstSndSettings->enUserSpdifMode;
    
    if(&pstSndSettings->stUserOpenParam != HI_NULL ) //for i2s only card resume HI_ALSA_I2S_ONLY_SUPPORT
    {
       memcpy(&pCard->stUserOpenParamI2s, &pstSndSettings->stUserOpenParamI2s, sizeof(AO_ALSA_I2S_Param_S));
    }
    memcpy(&pCard->stUserOpenParam, &pstSndSettings->stUserOpenParam, sizeof(HI_UNF_SND_ATTR_S));
        
    for(u32Port = 0; u32Port < pstSndSettings->stUserOpenParam.u32PortNum; u32Port++)
    {
        SNDOpRestoreSetting(pCard, pstSndSettings->stUserOpenParam.stOutport[u32Port].enOutPort, &pstSndSettings->stPortAttr[u32Port]);
    }
    
    return HI_SUCCESS; 
}
#endif

static inline const HI_CHAR *AOPort2Name(HI_UNF_SND_OUTPUTPORT_E enPort)
{
    switch(enPort)
    {
        case HI_UNF_SND_OUTPUTPORT_DAC0:
            return "DAC0";
        case HI_UNF_SND_OUTPUTPORT_I2S0:
            return "I2S0";
        case HI_UNF_SND_OUTPUTPORT_I2S1:
            return "I2S1";
        case HI_UNF_SND_OUTPUTPORT_SPDIF0:
            return "SPDIF0";
        case HI_UNF_SND_OUTPUTPORT_HDMI0:
            return "HDMI0";
        case HI_UNF_SND_OUTPUTPORT_ARC0:
            return "ARC0";
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC1:
            return "DAC1";
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC2:
            return "DAC2";
        case HI_UNF_SND_OUTPUTPORT_EXT_DAC3:
            return "DAC3";
        default:
            return "UnknownPort";
    }
}




HI_S32 SND_ReadOpProc(struct seq_file* p, SND_CARD_STATE_S *pCard, HI_UNF_SND_OUTPUTPORT_E enPort)
{
    AIAO_PORT_STAUTS_S stStatus;
    HI_HANDLE hSndOp;
    SND_OP_STATE_S *state;
    //SND_OP_ATTR_S stOpAttr;

    hSndOp = SNDGetOpHandleByOutPort(pCard, enPort);

    if (HI_NULL == hSndOp)
    {
        return HI_FAILURE;
    }

    memset(&stStatus, 0, sizeof(AIAO_PORT_STAUTS_S));
    if(HI_SUCCESS != SndOpGetStatus(hSndOp, &stStatus))
	{
		return HI_FAILURE;
    }
    state = (SND_OP_STATE_S *)hSndOp;  
#if 0
    if(HI_SUCCESS != SND_GetOpAttr(enSnd, enPort, &stOpAttr))
    {
        return HI_FAILURE;
    }
#endif
    PROC_PRINT(p,
               "%s: Status(%s), Mute(%s), Vol(%d%s), TrackMode(%s), AefBypass(%s)\n",
                AUTIL_Port2Name(enPort),
               (HI_CHAR*)((AIAO_PORT_STATUS_START == stStatus.enStatus) ? "start" : ((AIAO_PORT_STATUS_STOP == stStatus.enStatus) ? "stop" : "stopping")),
               (0 == state->u32UserMute)?"off":"on",
                state->stUserGain.s32Gain,
                (HI_TRUE == state->stUserGain.bLinearMode)?"":"dB",
                AUTIL_TrackMode2Name(state->enUserTrackMode),
                (HI_TRUE == state->bBypass)?"on":"off");

    if(HI_UNF_SND_OUTPUTPORT_SPDIF0 == enPort)
    {
        PROC_PRINT(p,
                   "      CategoryCode(%s), ScmsMode(%s)\n",
                   AUTIL_CategoryCode2Name(state->enUserSPDIFCategoryCode),
                   AUTIL_ScmsMode2Name(state->enUserSPDIFSCMSMode)); 
    }  
    PROC_PRINT(p,
               "      SampleRate(%.6d), Channel(%.2d), BitWidth(%2d), *Engine(%s), *AOP(0x%x), *PortID(0x%x)\n",
                   stStatus.stUserConfig.stIfAttr.enRate,
                   stStatus.stUserConfig.stIfAttr.enChNum,
                   stStatus.stUserConfig.stIfAttr.enBitDepth,
                   AUTIL_Engine2Name(state->enEngineType[state->ActiveId]),
                   (HI_U32)state->enAOP[state->ActiveId],
                   (HI_U32)state->enPortID[state->ActiveId]);
            
    PROC_PRINT(p,
               "      DmaCnt(%.6u), BufEmptyCnt(%.6u), FiFoEmptyCnt(%.6u)\n\n",
               stStatus.stProcStatus.uDMACnt,
               stStatus.stProcStatus.uBufEmptyCnt, 
               stStatus.stProcStatus.uInfFiFoEmptyCnt);
    
    return HI_SUCCESS;
}


