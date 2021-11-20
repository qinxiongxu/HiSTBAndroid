/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_ao.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/04/17
  Description   :
  History       :
  1.Date        : 2013/04/17
    Author      : zgjie
    Modification: Created file

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

/* Unf headers */
#include "hi_error_mpi.h"

/* Drv headers */
#include "hi_drv_ao.h"
#include "hi_drv_ai.h"
#include "drv_ao_ioctl.h"
#include "drv_ao_ext.h"
#include "drv_adsp_ext.h"
#include "drv_ao_private.h"

#include "hi_audsp_aoe.h"
#include "hal_aoe.h"
#include "hal_cast.h"
#include "hal_aiao.h"

#include "drv_ao_op.h"
#include "drv_ao_track.h"
#include "drv_ao_aef.h"
#include "audio_util.h"
#if defined (HI_AUDIO_AI_SUPPORT)
#include "drv_ai_private.h"
#endif

#include "drv_hdmi_ext.h"
#include "drv_ao_cast.h"
#include "hi_drv_file.h"

#ifdef HI_ALSA_AO_SUPPORT
#include <linux/platform_device.h>

extern int snd_soc_suspend(struct device *dev);	//kernel inteface
extern int snd_soc_resume(struct device *dev);
extern struct platform_device *hisi_snd_device;

#define PM_LOW_SUSPEND_FLAG   0x5FFFFFFF   		//TODO
static  HI_BOOL bu32shallowSuspendActive = HI_FALSE;
#endif
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

struct file  g_filp;
#if defined(HI_AIAO_VERIFICATION_SUPPORT)
#include "drv_aiao_ioctl_veri.h"
extern HI_VOID AIAO_VERI_Open(HI_VOID);
extern HI_VOID AIAO_VERI_Release(HI_VOID);
extern HI_S32  AIAO_VERI_ProcRead(struct seq_file *p, HI_VOID *v);
extern HI_S32 AIAO_VERI_ProcessCmd( struct inode *inode, struct file *file, HI_U32 cmd, HI_VOID *arg );
#endif

static HI_S32 AO_RegProc(HI_U32 u32Snd);
static HI_VOID AO_UnRegProc(HI_U32 u32Snd);
HI_S32 AO_DRV_Resume(PM_BASEDEV_S * pdev);
HI_S32 AO_DRV_Suspend(PM_BASEDEV_S * pdev,pm_message_t   state);
HI_S32 AO_Track_GetDefAttr(HI_UNF_AUDIOTRACK_ATTR_S * pstDefAttr);
HI_S32 AO_Track_AllocHandle(HI_HANDLE *phHandle, HI_UNF_SND_TRACK_TYPE_E enTrackType, struct file *pstFile);
HI_VOID AO_Track_FreeHandle(HI_HANDLE hHandle);
HI_S32 AO_Track_PreCreate(HI_UNF_SND_E enSound, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr,
                       HI_BOOL bAlsaTrack, AO_BUF_ATTR_S *pstBuf, HI_HANDLE hTrack);
HI_S32 AO_Track_Destory(HI_U32 u32TrackID);
HI_S32 AO_Track_Start(HI_U32 u32TrackID);
HI_S32 AO_Track_Stop(HI_U32 u32TrackID);
HI_S32 AO_Track_SendData(HI_U32 u32TrackID, HI_UNF_AO_FRAMEINFO_S * pstAOFrame);


HI_S32 AO_DRV_Kopen(struct file  *file);
HI_S32 AO_DRV_Krelease(struct file  *file);
HI_S32 AO_Snd_Kclose(HI_UNF_SND_E  arg, struct file *file);
HI_S32 AO_Snd_Kclose(HI_UNF_SND_E  arg, struct file *file);

DECLARE_MUTEX(g_AoMutex);

static AO_GLOBAL_PARAM_S s_stAoDrv =
{
    .u32TrackNum         =  0,
    .u32SndNum           =  0,
    .bLowLatencyCreated  =  HI_FALSE,
    .atmOpenCnt          = ATOMIC_INIT(0),
    .bReady              = HI_FALSE,

    .pstProcParam        = HI_NULL,

    .pAdspFunc           = HI_NULL,
    .pstPDMFunc			 = HI_NULL,
    .stExtFunc           =
    {
		.pfnAO_DrvResume = AO_DRV_Resume,
		.pfnAO_DrvSuspend = AO_DRV_Suspend,

		.pfnAO_TrackGetDefAttr = AO_Track_GetDefAttr,
		.pfnAO_TrackAllocHandle = AO_Track_AllocHandle,
		.pfnAO_TrackFreeHandle = AO_Track_FreeHandle,

		.pfnAO_TrackCreate = AO_Track_PreCreate,
		.pfnAO_TrackDestory= AO_Track_Destory,
		.pfnAO_TrackStart = AO_Track_Start,
		.pfnAO_TrackStop = AO_Track_Stop,
		.pfnAO_TrackSendData = AO_Track_SendData,
    }
};

/***************************** Original Static Definition *****************************/

static SND_CARD_STATE_S * SND_CARD_GetCard(HI_UNF_SND_E enSound)
{
    return s_stAoDrv.astSndEntity[enSound].pCard;
}
static HI_UNF_SND_E SND_CARD_GetSnd(SND_CARD_STATE_S *pCard)
{
    HI_U32 i;

    for(i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
    {
        if(s_stAoDrv.astSndEntity[i].pCard  ==  pCard)
        {
            return i;
        }
    }
    return AO_MAX_TOTAL_SND_NUM;
}

static HI_VOID AO_Snd_FreeHandle(HI_UNF_SND_E enSound, struct file *pstFile)
{
   HI_U32 u32AefId;
   SND_CARD_STATE_S * pCard = s_stAoDrv.astSndEntity[enSound].pCard;
   HI_U32 u32FileId = ((DRV_AO_STATE_S *)(pstFile->private_data))->u32FileId[enSound];


    if(0 == atomic_read(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
    {
        for(u32AefId = 0; u32AefId < AFLT_MAX_CHAN_NUM; u32AefId++)
        {
            if(pCard->u32AttAef & ((HI_U32)1L << u32AefId))
            {
                AEF_DetachSnd(pCard, u32AefId);
            }
        }

        AUTIL_AO_FREE(HI_ID_AO, pCard);
        s_stAoDrv.astSndEntity[enSound].pCard = HI_NULL;
    	s_stAoDrv.u32SndNum--;
    }

    if(u32FileId < SND_MAX_OPEN_NUM)
    {
        s_stAoDrv.astSndEntity[enSound].u32File[u32FileId] = HI_NULL;
    }

    ((DRV_AO_STATE_S *)(pstFile->private_data))->u32FileId[enSound] = AO_SND_FILE_NOUSE_FLAG;

    return;
}

static HI_S32 SNDGetFreeFileId(HI_UNF_SND_E enSound)
{
    HI_U32 i;

    for(i = 0; i < SND_MAX_OPEN_NUM; i++)
    {
        if(s_stAoDrv.astSndEntity[enSound].u32File[i]  == HI_NULL)
        {
            return i;
        }
    }

    return SND_MAX_OPEN_NUM;
}

static HI_S32 AO_Snd_AllocHandle(HI_UNF_SND_E enSound, struct file *pstFile)
{
    SND_CARD_STATE_S *pCard;
    HI_U32 u32FreeId;

    if (enSound >= HI_UNF_SND_BUTT)
    {
        HI_ERR_AO("Bad param!\n");
        goto err0;
    }

    /* Check ready flag */
    if (s_stAoDrv.bReady != HI_TRUE)
    {
        HI_ERR_AO("Need open first!\n");
        goto err0;
    }

    u32FreeId = SNDGetFreeFileId(enSound);
    if(u32FreeId >= SND_MAX_OPEN_NUM)
	{
	    HI_ERR_AO("Get free file id faied!\n");
    	goto err0;
	}
    if(AO_SND_FILE_NOUSE_FLAG == ((DRV_AO_STATE_S *)(pstFile->private_data))->u32FileId[enSound])
    {
        ((DRV_AO_STATE_S *)(pstFile->private_data))->u32FileId[enSound] = u32FreeId;
        s_stAoDrv.astSndEntity[enSound].u32File[u32FreeId] = (HI_U32)pstFile;
    }
    /* Allocate new snd resource */
    if (0 == atomic_read(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
    {
        pCard = (SND_CARD_STATE_S *)AUTIL_AO_MALLOC(HI_ID_AO, sizeof(SND_CARD_STATE_S), GFP_KERNEL);
        if(HI_NULL == pCard)
        {
            s_stAoDrv.astSndEntity[enSound].u32File[u32FreeId] = HI_NULL;
            HI_ERR_AO("Kmalloc card failed!\n");
            goto err0;
        }
        else
        {
            s_stAoDrv.astSndEntity[enSound].pCard = pCard;
        }

        s_stAoDrv.u32SndNum++;
    }

    return HI_SUCCESS;

err0:
    return HI_FAILURE;
}


/******************************Snd process FUNC*************************************/
HI_BOOL AOCheckOutPortIsAttached(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort)
{
    HI_U32 u32Snd;
    HI_U32 u32Port;
    SND_CARD_STATE_S * pCard;
    for(u32Snd = 0; u32Snd < (HI_U32)HI_UNF_SND_BUTT; u32Snd++)
    {
        if(u32Snd != (HI_U32)enSound)
        {
            pCard = SND_CARD_GetCard((HI_UNF_SND_E)u32Snd);
            if (HI_NULL != pCard)
            {
                for(u32Port = 0; u32Port < pCard->stUserOpenParam.u32PortNum; u32Port++)
                {
                    if(enOutPort == pCard->stUserOpenParam.stOutport[u32Port].enOutPort)
                    {
                        return HI_TRUE;
                    }
                }
            }
        }
    }

    return HI_FALSE;
}

HI_S32 AOGetSndDefOpenAttr(AO_SND_OpenDefault_Param_S *pstSndDefaultAttr)
{
#if defined(CHIP_TYPE_hi3751v100)
	pstSndDefaultAttr->stAttr.u32PortNum = 5;

    pstSndDefaultAttr->stAttr.stOutport[0].enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;
    pstSndDefaultAttr->stAttr.stOutport[0].unAttr.stDacAttr.pPara = HI_NULL;

    pstSndDefaultAttr->stAttr.stOutport[1].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC1;
    pstSndDefaultAttr->stAttr.stOutport[1].unAttr.stSpdifAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[2].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC2;
    pstSndDefaultAttr->stAttr.stOutport[2].unAttr.stHDMIAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[3].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC3;/*Analog Amp*/
    pstSndDefaultAttr->stAttr.stOutport[3].unAttr.stDacAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[4].enOutPort = HI_UNF_SND_OUTPUTPORT_SPDIF0;
    pstSndDefaultAttr->stAttr.stOutport[4].unAttr.stSpdifAttr.pPara = HI_NULL;
#else
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_PDM_SOUND_PARAM_S stSoundPdmParam;
    if (s_stAoDrv.pstPDMFunc && s_stAoDrv.pstPDMFunc->pfnGetSoundParam)
    {
        HI_U32 i;
        s32Ret = (s_stAoDrv.pstPDMFunc->pfnGetSoundParam)(pstSndDefaultAttr->enSound, &stSoundPdmParam);
        if (HI_SUCCESS == s32Ret)
        {
            if (stSoundPdmParam.u32PortNum <= HI_UNF_SND_OUTPUTPORT_MAX)
            {
                pstSndDefaultAttr->stAttr.u32PortNum = stSoundPdmParam.u32PortNum;
                for (i = 0; i < stSoundPdmParam.u32PortNum; i++)
                {
                    pstSndDefaultAttr->stAttr.stOutport[i].enOutPort = stSoundPdmParam.stOutport[i].enOutPort;
                    switch (pstSndDefaultAttr->stAttr.stOutport[i].enOutPort)
                    {
                        case HI_UNF_SND_OUTPUTPORT_DAC0:
                            HI_INFO_AO(">> HI_UNF_SND_OUTPUTPORT_DAC0\n");
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stDacAttr.pPara = HI_NULL;
                            pstSndDefaultAttr->stAttr.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
                            break;
                        case HI_UNF_SND_OUTPUTPORT_SPDIF0:
                            HI_INFO_AO(">> HI_UNF_SND_OUTPUTPORT_SPDIF0\n");
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stSpdifAttr.pPara = HI_NULL;
                            pstSndDefaultAttr->stAttr.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
                            break;
                        case HI_UNF_SND_OUTPUTPORT_HDMI0:
                            HI_INFO_AO(">> HI_UNF_SND_OUTPUTPORT_HDMI0\n");
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stHDMIAttr.pPara = HI_NULL;
                            pstSndDefaultAttr->stAttr.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
                            break;
                        case HI_UNF_SND_OUTPUTPORT_I2S0:	//default support
                            HI_INFO_AO(">> HI_UNF_SND_OUTPUTPORT_I2S0\n");
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel;
                            /*Compatible with old base param,  force to 2ch output */
							//pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle;
                            HI_INFO_AO("bMaster:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster);
                            HI_INFO_AO("enI2sMode:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode);
                            HI_INFO_AO("enMclkSel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel);
                            HI_INFO_AO("enBclkSel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel);
                            HI_INFO_AO("enChannel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel);
                            HI_INFO_AO("enBitDepth:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth);
                            HI_INFO_AO("bPcmSampleRiseEdge:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge);
                            HI_INFO_AO("enPcmDelayCycle:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle);
                            break;
                        case HI_UNF_SND_OUTPUTPORT_I2S1:	//default support
                            HI_INFO_AO(">> HI_UNF_SND_OUTPUTPORT_I2S1\n");
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel;
                            /* I2S do not support 1&8 channel output, so force to 2ch output */
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge;
                            pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle = stSoundPdmParam.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle;
                            HI_INFO_AO("bMaster:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bMaster);
                            HI_INFO_AO("enI2sMode:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enI2sMode);
                            HI_INFO_AO("enMclkSel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enMclkSel);
                            HI_INFO_AO("enBclkSel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBclkSel);
                            HI_INFO_AO("enChannel:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enChannel);
                            HI_INFO_AO("enBitDepth:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enBitDepth);
                            HI_INFO_AO("bPcmSampleRiseEdge:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge);
                            HI_INFO_AO("enPcmDelayCycle:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].unAttr.stI2sAttr.stAttr.enPcmDelayCycle);
                            break;
                        default:
                            HI_WARN_AO("SND Not support OUTPUTPORT:0x%x\n", pstSndDefaultAttr->stAttr.stOutport[i].enOutPort);
                            break;
                    }
                }

                return HI_SUCCESS;
            }
            HI_ERR_AO("Get PDM param invalid u32PortNum=0x%x\n", stSoundPdmParam.u32PortNum);
        }
        HI_WARN_AO("Get PDM param failed, use default param!\n");
    }
    HI_WARN_AO("Get PDMFunc Symbol failed, use default param!\n");

#if 0
    pstSndDefaultAttr->stAttr.u32PortNum = 2;

    pstSndDefaultAttr->stAttr.stOutport[0].enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;
    pstSndDefaultAttr->stAttr.stOutport[0].unAttr.stDacAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[1].enOutPort = HI_UNF_SND_OUTPUTPORT_SPDIF0;
    pstSndDefaultAttr->stAttr.stOutport[1].unAttr.stSpdifAttr.pPara = HI_NULL;

#else
    pstSndDefaultAttr->stAttr.u32PortNum = 3;
    pstSndDefaultAttr->stAttr.stOutport[0].enOutPort = HI_UNF_SND_OUTPUTPORT_DAC0;
    pstSndDefaultAttr->stAttr.stOutport[0].unAttr.stDacAttr.pPara = HI_NULL;

    /*pstSndDefaultAttr->stAttr.stOutport[1].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC1;
    pstSndDefaultAttr->stAttr.stOutport[1].unAttr.stSpdifAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[2].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC2;
    pstSndDefaultAttr->stAttr.stOutport[2].unAttr.stHDMIAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[3].enOutPort = HI_UNF_SND_OUTPUTPORT_EXT_DAC3;//Analog Amp
    pstSndDefaultAttr->stAttr.stOutport[3].unAttr.stDacAttr.pPara = HI_NULL; */
    pstSndDefaultAttr->stAttr.stOutport[1].enOutPort = HI_UNF_SND_OUTPUTPORT_SPDIF0;
    pstSndDefaultAttr->stAttr.stOutport[1].unAttr.stSpdifAttr.pPara = HI_NULL;
    pstSndDefaultAttr->stAttr.stOutport[2].enOutPort = HI_UNF_SND_OUTPUTPORT_HDMI0;
    pstSndDefaultAttr->stAttr.stOutport[2].unAttr.stHDMIAttr.pPara = HI_NULL;
#endif
#endif

    pstSndDefaultAttr->stAttr.enSampleRate = HI_UNF_SAMPLE_RATE_48K;

#if 0
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_I2S0;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.bMaster = HI_TRUE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enI2sMode = HI_UNF_I2S_STD_MODE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enMclkSel = HI_UNF_I2S_MCLK_256_FS;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enBclkSel = HI_UNF_I2S_BCLK_4_DIV;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_16;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = HI_TRUE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enPcmDelayCycle = HI_UNF_I2S_PCM_1_DELAY;
    pstSndDefaultAttr->stAttr.u32PortNum++;
#endif
#if defined(CHIP_TYPE_hi3751v100)
#if defined(HI_I2S1_SUPPORT)
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].enOutPort = HI_UNF_SND_OUTPUTPORT_I2S1;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.bMaster = HI_TRUE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enI2sMode = HI_UNF_I2S_STD_MODE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enMclkSel = HI_UNF_I2S_MCLK_256_FS;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enBclkSel = HI_UNF_I2S_BCLK_4_DIV;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_2;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_16;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.bPcmSampleRiseEdge = HI_TRUE;
    pstSndDefaultAttr->stAttr.stOutport[pstSndDefaultAttr->stAttr.u32PortNum].unAttr.stI2sAttr.stAttr.enPcmDelayCycle = HI_UNF_I2S_PCM_1_DELAY;
    pstSndDefaultAttr->stAttr.u32PortNum++;
#endif
#else

#endif
    return HI_SUCCESS;
}

static HI_BOOL AOCheckOutPortIsValid(HI_UNF_SND_OUTPUTPORT_E enOutPort)
{
#if    defined(CHIP_TYPE_hi3716cv200)   \
    || defined(CHIP_TYPE_hi3716mv400)   \
    || defined(CHIP_TYPE_hi3718cv100)   \
    || defined(CHIP_TYPE_hi3719cv100)   \
    || defined(CHIP_TYPE_hi3796cv100)   \
    || defined(CHIP_TYPE_hi3798cv100)   \
    || defined(CHIP_TYPE_hi3798mv100)   \
    || defined(CHIP_TYPE_hi3796mv100)   \
    || defined(CHIP_TYPE_hi3798cv200_a)
    if ((HI_UNF_SND_OUTPUTPORT_DAC0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_HDMI0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_I2S0 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_I2S1 != enOutPort))
    {
        HI_ERR_AI("just support I2S0, I2S1, DAC0, SPDIF0 and HDMI0 Port!\n");
        return HI_FALSE;
    }
#elif defined(CHIP_TYPE_hi3719mv100) || defined(CHIP_TYPE_hi3718mv100) || defined(CHIP_TYPE_hi3716mv420)
    if ((HI_UNF_SND_OUTPUTPORT_DAC0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_HDMI0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_I2S0 != enOutPort))
    {
        HI_ERR_AI("just support I2S0, DAC0, SPDIF0 and HDMI0 Port!\n");
        return HI_FALSE;
    }
#elif defined(CHIP_TYPE_hi3716mv410)
    if ((HI_UNF_SND_OUTPUTPORT_DAC0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_HDMI0 != enOutPort))
    {
        HI_ERR_AI("just support DAC0, SPDIF0 and HDMI0 Port!\n");
        return HI_FALSE;
    }
#elif defined(CHIP_TYPE_hi3751v100)  || defined(CHIP_TYPE_hi3751v100b)
    if ((HI_UNF_SND_OUTPUTPORT_DAC0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_EXT_DAC1 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_EXT_DAC2 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_EXT_DAC3 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_SPDIF0 != enOutPort) && (HI_UNF_SND_OUTPUTPORT_I2S0 != enOutPort)
        && (HI_UNF_SND_OUTPUTPORT_I2S1 != enOutPort))
    {
        HI_ERR_AI("just support I2S0, I2S1, DAC0, DAC1, DAC2, DAC3 and SPDIF0 Port!\n");
        return HI_FALSE;
    }
#else
#error YOU MUST DEFINE  CHIP_TYPE!
#endif

    return HI_TRUE;
}

HI_S32 AO_SND_Open( HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr,
                            AO_ALSA_I2S_Param_S *pstAoI2sParam, HI_BOOL bResume)//pstAoI2sParam is i2s only param
{
    HI_S32 Ret = HI_SUCCESS;
    HI_U32 i;
    HDMI_AUDIO_ATTR_S stHDMIAttr;
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    // check attr
    CHECK_AO_SNDCARD( enSound );
    CHECK_AO_PORTNUM( pstAttr->u32PortNum );
    CHECK_AO_SAMPLERATE( pstAttr->enSampleRate );
    memset(pCard, 0, sizeof(SND_CARD_STATE_S));
    pCard->pstHdmiFunc = HI_NULL;
#ifdef HI_SND_MUTECTL_SUPPORT
    pCard->pstGpioFunc = HI_NULL;
#endif
    pCard->enPcmOutput  = SND_PCM_OUTPUT_VIR_SPDIFORHDMI;
    pCard->enHdmiPassthrough = SND_HDMI_MODE_NONE;
    pCard->enSpdifPassthrough = SND_SPDIF_MODE_NONE;
    pCard->bHdmiDebug = HI_FALSE;

    pCard->enSaveState = SND_DEBUG_CMD_CTRL_STOP;
    pCard->u32SaveCnt = 0;
	pCard->fileHandle = HI_NULL;
	pCard->bAllTrackMute = HI_FALSE;

    for (i = 0; i < pstAttr->u32PortNum; i++)
    {
        if(HI_FALSE == AOCheckOutPortIsValid(pstAttr->stOutport[i].enOutPort))
        {
            HI_ERR_AO("port(%d) is invalid.\n", pstAttr->stOutport[i].enOutPort);
            return HI_FAILURE;
        }

        if(HI_TRUE == AOCheckOutPortIsAttached(enSound, pstAttr->stOutport[i].enOutPort))
        {
            HI_ERR_AO("port(%d) is aready attatched.\n", pstAttr->stOutport[i].enOutPort);
            return HI_FAILURE;
        }

        if(HI_UNF_SND_OUTPUTPORT_HDMI0 == pstAttr->stOutport[i].enOutPort)
        {
            /* Get hdmi functions */
            Ret = HI_DRV_MODULE_GetFunction(HI_ID_HDMI, (HI_VOID**)&pCard->pstHdmiFunc);
            if (HI_SUCCESS != Ret)
            {
                HI_ERR_AO("Get hdmi function err:%#x!\n", Ret);
                return Ret;
            }
#if 0    //defined(CHIP_TYPE_hi3798cv200_a)
            if(HI_TRUE != bResume)
            {
                if (pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiOpen)
                {
                    (pCard->pstHdmiFunc->pfnHdmiOpen)(HI_UNF_HDMI_ID_0);
                }
            }
#endif
            if(pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiSetAudioMute)
            {
                (pCard->pstHdmiFunc->pfnHdmiSetAudioMute)(HI_UNF_HDMI_ID_0);
            }            

            if(pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiGetAoAttr)
            {
                (pCard->pstHdmiFunc->pfnHdmiGetAoAttr)(HI_UNF_HDMI_ID_0, &stHDMIAttr);
            }

            stHDMIAttr.enSoundIntf  = HDMI_AUDIO_INTERFACE_I2S;
            stHDMIAttr.enSampleRate = HI_UNF_SAMPLE_RATE_48K;
            stHDMIAttr.u32Channels  = AO_TRACK_NORMAL_CHANNELNUM;
            /*get the capability of the max pcm channels of the output device*/
            if(pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiAudioChange)
            {
                (pCard->pstHdmiFunc->pfnHdmiAudioChange)(HI_UNF_HDMI_ID_0, &stHDMIAttr);
            }

            pCard->enHdmiPassthrough = SND_HDMI_MODE_PCM;
        }
        if(HI_UNF_SND_OUTPUTPORT_SPDIF0 == pstAttr->stOutport[i].enOutPort)
        {
            pCard->enSpdifPassthrough = SND_SPDIF_MODE_PCM;
        }
        if(HI_UNF_SND_OUTPUTPORT_DAC0 == pstAttr->stOutport[i].enOutPort
            || HI_UNF_SND_OUTPUTPORT_EXT_DAC1 == pstAttr->stOutport[i].enOutPort
            || HI_UNF_SND_OUTPUTPORT_EXT_DAC2 == pstAttr->stOutport[i].enOutPort
            || HI_UNF_SND_OUTPUTPORT_EXT_DAC3 == pstAttr->stOutport[i].enOutPort
            || HI_UNF_SND_OUTPUTPORT_I2S0 == pstAttr->stOutport[i].enOutPort
            || HI_UNF_SND_OUTPUTPORT_I2S1 == pstAttr->stOutport[i].enOutPort)
        {
            pCard->enPcmOutput  = SND_PCM_OUTPUT_CERTAIN;
        }
    }

    Ret = SND_CreateOp( pCard, pstAttr,pstAoI2sParam, bResume);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO( "Create snd op failed!" );
        goto CREATE_OP_ERR_EXIT;
    }

#ifndef HI_SND_AOE_HW_SUPPORT
    Ret = HI_DRV_MMZ_Alloc("AO_MAipPcm", MMZ_OTHERS, AO_TRACK_PCM_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                 &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO("MMZ_AllocAndMap failed\n");
        goto ALLOC_PCM_ERR_EXIT;
    }

    Ret = HI_DRV_MMZ_MapCache(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO("HI_DRV_MMZ_MapCache failed\n");
        goto ALLOC_HDMI_ERR_EXIT;
    }

    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        Ret = HI_DRV_MMZ_Alloc("AO_MAipSpdRaw", MMZ_OTHERS, AO_TRACK_LBR_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                     &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("MMZ_AllocAndMap failed\n");
            goto ALLOC_SPDIF_ERR_EXIT;
        }

        Ret = HI_DRV_MMZ_MapCache(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HI_DRV_MMZ_MapCache failed\n");
            goto ALLOC_HDMI_ERR_EXIT;
        }
    }


    if(SND_HDMI_MODE_NONE != pCard->enHdmiPassthrough)
    {
        Ret = HI_DRV_MMZ_Alloc("AO_MAipHdmiRaw", MMZ_OTHERS, AO_TRACK_HBR_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                     &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HI_DRV_MMZ_Alloc failed\n");
            goto ALLOC_HDMI_ERR_EXIT;
        }

        Ret = HI_DRV_MMZ_MapCache(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("HI_DRV_MMZ_MapCache failed\n");
            goto ALLOC_HDMI_ERR_EXIT;
        }
    }

#else

    Ret = HI_DRV_MMZ_AllocAndMap("AO_MAipPcm", MMZ_OTHERS, AO_TRACK_PCM_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                 &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO("MMZ_AllocAndMap failed\n");
        goto ALLOC_PCM_ERR_EXIT;
    }

    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        Ret = HI_DRV_MMZ_AllocAndMap("AO_MAipSpdRaw", MMZ_OTHERS, AO_TRACK_LBR_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                     &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("MMZ_AllocAndMap failed\n");
            goto ALLOC_SPDIF_ERR_EXIT;
        }
    }

    if(SND_HDMI_MODE_NONE != pCard->enHdmiPassthrough)
    {
        Ret = HI_DRV_MMZ_AllocAndMap("AO_MAipHdmiRaw", MMZ_OTHERS, AO_TRACK_HBR_BUFSIZE_BYTE_MAX, AIAO_BUFFER_ADDR_ALIGN,
                                     &pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("MMZ_AllocAndMap failed\n");
            goto ALLOC_HDMI_ERR_EXIT;
        }
    }
#endif

	AO_RegProc((HI_U32)enSound);

    return HI_SUCCESS;
#ifndef HI_SND_AOE_HW_SUPPORT
ALLOC_HDMI_ERR_EXIT:
    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        HI_DRV_MMZ_Unmap(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
        HI_DRV_MMZ_Release(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
    }
ALLOC_SPDIF_ERR_EXIT:
    HI_DRV_MMZ_Unmap(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    HI_DRV_MMZ_Release(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
#else
ALLOC_HDMI_ERR_EXIT:
    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
    }
ALLOC_SPDIF_ERR_EXIT:
    HI_DRV_MMZ_UnmapAndRelease(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
#endif
ALLOC_PCM_ERR_EXIT:
    SND_DestroyOp(pCard, HI_FALSE);
CREATE_OP_ERR_EXIT:
    return HI_FAILURE;
}

HI_S32 AO_SND_Close(HI_UNF_SND_E enSound, HI_BOOL bSuspend)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    AO_UnRegProc((HI_U32)enSound);
#ifndef HI_SND_AOE_HW_SUPPORT
    HI_DRV_MMZ_Unmap(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    HI_DRV_MMZ_Release(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        HI_DRV_MMZ_Unmap(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
        HI_DRV_MMZ_Release(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
    }

    if(SND_HDMI_MODE_NONE != pCard->enHdmiPassthrough)
    {
        HI_DRV_MMZ_Unmap(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
        HI_DRV_MMZ_Release(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
    }
#else
    HI_DRV_MMZ_UnmapAndRelease(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_PCM]);
    if(SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_SPDIF_RAW]);
    }

    if(SND_HDMI_MODE_NONE != pCard->enHdmiPassthrough)
    {
        HI_DRV_MMZ_UnmapAndRelease(&pCard->stTrackRbfMmz[SND_ENGINE_TYPE_HDMI_RAW]);
    }
#endif
    SND_DestroyOp(pCard, bSuspend);
#if 0    //defined(CHIP_TYPE_hi3798cv200_a)
    if(HI_TRUE != bSuspend)
    {
        /* Get hdmi functions */
        HI_DRV_MODULE_GetFunction(HI_ID_HDMI, (HI_VOID**)&pCard->pstHdmiFunc);

        if (pCard->pstHdmiFunc && pCard->pstHdmiFunc->pfnHdmiClose)
        {
            (pCard->pstHdmiFunc->pfnHdmiClose)(HI_UNF_HDMI_ID_0);
        }
    }
#endif

    TRACK_DestroyEngine(pCard);

    return HI_SUCCESS;
}

//zgjiere; HI_UNF_SND_OUTPUTPORT_ALL
HI_S32 AO_SND_SetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bMute)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpMute(pCard, enOutPort, bMute);
}

HI_S32 AO_SND_GetMute(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbMute)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(pbMute);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpMute(pCard, enOutPort, pbMute);
}

static HI_S32 AO_SND_SetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E enMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_HDMIMODE(enMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpHdmiMode(pCard, enOutPort, enMode);
}

static HI_S32 AO_SND_GetHdmiMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_HDMI_MODE_E *penMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpHdmiMode(pCard, enOutPort, penMode);
}

static HI_S32 AO_SND_SetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E enMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_SPDIFMODE(enMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpSpdifMode(pCard, enOutPort, enMode);
}

static HI_S32 AO_SND_GetSpdifMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_SPDIF_MODE_E *penMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpSpdifMode(pCard, enOutPort, penMode);
}

HI_S32 AO_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    if (HI_TRUE == stGain.bLinearMode)
    {
        CHECK_AO_LINEARVOLUME(stGain.s32Gain);
    }
    else
    {
        CHECK_AO_ABSLUTEVOLUME(stGain.s32Gain);
    }
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpVolume(pCard, enOutPort, stGain);
}

static HI_S32 AO_SND_GetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S *pstGain)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(pstGain);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    //TODO Check volumn Attr

    return SND_GetOpVolume(pCard, enOutPort, pstGain);
}

static HI_S32 AO_SND_SetSpdifCategoryCode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      HI_UNF_SND_SPDIF_CATEGORYCODE_E enCategoryCode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_CATEGORYCODE(enCategoryCode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);
    return SND_SetOpSpdifCategoryCode(pCard, enOutPort, enCategoryCode);
}
static HI_S32 AO_SND_GetSpdifCategoryCode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      HI_UNF_SND_SPDIF_CATEGORYCODE_E *penCategoryCode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penCategoryCode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);
    return SND_GetOpSpdifCategoryCode(pCard, enOutPort, penCategoryCode);
}
static HI_S32 AO_SND_SetSpdifSCMSMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      HI_UNF_SND_SPDIF_SCMSMODE_E enSCMSMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_SPDIFSCMSMODE(enSCMSMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpSpdifSCMSMode(pCard, enOutPort, enSCMSMode);
}

static HI_S32 AO_SND_GetSpdifSCMSMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                      HI_UNF_SND_SPDIF_SCMSMODE_E *penSCMSMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penSCMSMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpSpdifSCMSMode(pCard, enOutPort, penSCMSMode);
}


//zgjiere; HAL_AIAO_P_SetSampleRate 不能动态修改，建议HI_UNF_SND_ATTR_S确定
static HI_S32 AO_SND_SetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                   HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_SAMPLERATE(enSampleRate);
    CHECK_AO_NULL_PTR(pCard);

    return SND_SetOpSampleRate(pCard, enOutPort, enSampleRate);
}

static HI_S32 AO_SND_GetSampleRate(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort,
                                   HI_UNF_SAMPLE_RATE_E *penSampleRate)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penSampleRate);
    CHECK_AO_NULL_PTR(pCard);

    return SND_GetOpSampleRate(pCard, enOutPort, penSampleRate);
}

static HI_S32 AO_SND_SetTrackMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E enMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_TRACKMODE(enMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpTrackMode(pCard, enOutPort, enMode);
}

static HI_S32 AO_SND_GetTrackMode(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_TRACK_MODE_E *penMode)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(penMode);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpTrackMode(pCard, enOutPort, penMode);
}


static HI_S32 AO_SND_SetAllTrackMute(HI_UNF_SND_E enSound, HI_BOOL bMute)
{
    HI_S32 s32Ret;
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);

    s32Ret = TRACK_SetAllMute(pCard, bMute);
    if(HI_SUCCESS != s32Ret)
    {
    	//TODO
    }

    pCard->bAllTrackMute = bMute;
	HI_INFO_AO("Track ALL get Mute Staues %d\n",pCard->bAllTrackMute);

    return s32Ret;
}

static HI_S32 AO_SND_GetAllTrackMute(HI_UNF_SND_E enSound, HI_BOOL *pbMute)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_NULL_PTR(pbMute);
    CHECK_AO_NULL_PTR(pCard);

    *pbMute = pCard->bAllTrackMute;
    return HI_SUCCESS;
}

static HI_S32  AO_SND_SetSmartVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bSmartVolume)
{
    //TO DO
    //verify
    return HI_SUCCESS;
}

static HI_S32 AO_SND_GetSmartVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbSmartVolume)
{
    //TO DO
    //verify
    return HI_SUCCESS;
}

static HI_S32 AO_Snd_SetLowLatency(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E eOutPort, HI_U32 u32LatencyMs)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);
    
    return  SND_SetLowLatency(pCard, eOutPort, u32LatencyMs);
}

static HI_S32 AO_Snd_GetLowLatency(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E eOutPort, HI_U32* pu32LatencyMs)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);
    
    return  SND_GetLowLatency(pCard,eOutPort,pu32LatencyMs);
}

static HI_S32 AO_SND_AttachAef(HI_UNF_SND_E enSound, HI_U32 u32AefId, HI_U32 *pu32AefProcAddr)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_NULL_PTR(pu32AefProcAddr);
    CHECK_AO_NULL_PTR(pCard);

    return AEF_AttachSnd(pCard, u32AefId, pu32AefProcAddr);
}

static HI_S32 AO_SND_DetachAef(HI_UNF_SND_E enSound, HI_U32 u32AefId)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_NULL_PTR(pCard);

    return AEF_DetachSnd(pCard, u32AefId);
}

static HI_S32 AO_SND_SetAefBypass(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL bBypass)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_SetOpAefBypass(pCard, enOutPort, bBypass);
}

static HI_S32 AO_SND_GetAefBypass(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_BOOL *pbBypass)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_SNDCARD(enSound);
    CHECK_AO_OUTPORT(enOutPort);
    CHECK_AO_NULL_PTR(pbBypass);
    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_PORTEXIST(pCard->stUserOpenParam.u32PortNum);

    return SND_GetOpAefBypass(pCard, enOutPort, pbBypass);
}

static HI_S32 AO_Snd_GetXRunCount(HI_UNF_SND_E enSound, HI_U32 *pu32Count)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_NULL_PTR(pCard);
    SND_GetXRunCount(pCard, pu32Count);

    return HI_SUCCESS;
}

static HI_S32 AO_Snd_GetPortInfo(HI_UNF_SND_E enSound, SND_PORT_KERNEL_ATTR_S* pstPortKAttr)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);

    if (HI_TRUE == pCard->bDMAMode)
    {
        return HI_ERR_AO_USED;
    }

    return SND_GetPortInfo(pCard, HI_UNF_SND_OUTPUTPORT_ALL, pstPortKAttr);
}

static HI_S32 AO_Snd_ResetDMAMode(HI_UNF_SND_E enSound)
{
    HI_S32 s32Ret = HI_SUCCESS;
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    if (HI_TRUE == pCard->bDMAMode)
    {
        s32Ret = SND_SetPortSampleRate(pCard, HI_UNF_SND_OUTPUTPORT_ALL, (HI_U32)(pCard->enUserSampleRate));
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("SND_SetPortSampleRate(%d) HI_UNF_SND_OUTPUTPORT_ALL failed!\n", (HI_U32)(pCard->enUserSampleRate));
            return s32Ret;
        }
        pCard->bDMAMode = HI_FALSE;
    }
    return s32Ret;
}

static HI_S32 AO_Snd_SetDMAMode(HI_UNF_SND_E enSound, HI_BOOL bEnable, HI_UNF_SAMPLE_RATE_E enSampleRate)
{
    HI_S32 s32Ret = HI_SUCCESS;
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);

    if (HI_TRUE == bEnable)
    {
        pCard->bDMAMode = bEnable;

        s32Ret = SND_SetPortSampleRate(pCard, HI_UNF_SND_OUTPUTPORT_ALL, (HI_U32)enSampleRate);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("SND_SetPortSampleRate(%d) HI_UNF_SND_OUTPUTPORT_ALL failed!\n", (HI_U32)enSampleRate);
            return s32Ret;
        }
    }
    else
    {
        s32Ret = AO_Snd_ResetDMAMode(enSound);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("AO_Snd_ResetDMAMode failed!\n");
            return s32Ret;
        }
    }
    return s32Ret;
}

/* snd open kernel intf */
HI_S32 AO_Snd_Kopen(AO_SND_Open_Param_S_PTR arg, struct file *file)
{
    HI_S32 s32Ret;
    HI_UNF_SND_E enSound = HI_UNF_SND_BUTT;
    AO_SND_Open_Param_S_PTR pstSndParam = ( AO_SND_Open_Param_S_PTR )arg;
    DRV_AO_STATE_S *pAOState = file->private_data;

    AO_ALSA_I2S_Param_S* pstAoI2sParam = (AO_ALSA_I2S_Param_S *)pstSndParam->pAlsaPara;//HI_ALSA_I2S_ONLY_SUPPORT
    enSound = pstSndParam->enSound;
    CHECK_AO_SNDCARD( enSound );

    s32Ret = down_interruptible(&g_AoMutex);
    if (HI_SUCCESS == AO_Snd_AllocHandle(enSound, file))
    {
        if (0 == atomic_read(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
        {
                s32Ret = AO_SND_Open( enSound,&pstSndParam->stAttr,pstAoI2sParam, HI_FALSE);
                if (HI_SUCCESS != s32Ret)
                {
                    AO_Snd_FreeHandle(enSound, file);
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }
        }
    }

    atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
    atomic_inc(&pAOState->atmUserOpenCnt[enSound]);

    up(&g_AoMutex);

    return HI_SUCCESS;
}

/* snd close kernel intf */
HI_S32 AO_Snd_Kclose(HI_UNF_SND_E  arg, struct file *file)
{
    HI_S32 s32Ret;
    HI_UNF_SND_E enSound = HI_UNF_SND_BUTT;
    DRV_AO_STATE_S *pAOState = file->private_data;
    enSound = arg;
    CHECK_AO_SNDCARD_OPEN( enSound );

    s32Ret = down_interruptible(&g_AoMutex);
    if(atomic_dec_and_test(&pAOState->atmUserOpenCnt[enSound]))
    {
            if (atomic_dec_and_test(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
            {
                s32Ret = AO_SND_Close( enSound, HI_FALSE );
                if (HI_SUCCESS != s32Ret)
                {
                    atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }

                AO_Snd_FreeHandle(enSound, file);
            }
    }
    else
	{
        atomic_dec(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
    }

    up(&g_AoMutex);

    return HI_SUCCESS;
}

/******************************Snd Track FUNC*************************************/
static SND_CARD_STATE_S * TRACK_CARD_GetCard(HI_U32 Id)
{
    HI_UNF_SND_E sndx;
    SND_CARD_STATE_S *pCard = HI_NULL;

    if (Id >= AO_MAX_TOTAL_TRACK_NUM)
    {
        return HI_NULL;
    }

    for (sndx = HI_UNF_SND_0; sndx < HI_UNF_SND_BUTT; sndx++)
    {
        pCard = SND_CARD_GetCard(sndx);
        if(pCard)
        {
            if (pCard->uSndTrackInitFlag & (1L << Id))
            {
                return pCard;
            }
        }
    }

    return HI_NULL;
}

HI_S32 AO_Track_AllocHandle(HI_HANDLE *phHandle, HI_UNF_SND_TRACK_TYPE_E enTrackType, struct file *pstFile)
{
    HI_U32 i;

    if (HI_NULL == phHandle)
    {
        HI_ERR_AO("Bad param!\n");
        return HI_FAILURE;
    }

    /* Check ready flag */
    if (s_stAoDrv.bReady != HI_TRUE)
    {
        HI_ERR_AO("Need open first!\n");
        return HI_FAILURE;
    }

    /* Check channel number */
    if (s_stAoDrv.u32TrackNum >= AO_MAX_TOTAL_TRACK_NUM)
    {
        HI_ERR_AO("Too many track:%d!\n", s_stAoDrv.u32TrackNum);
        goto err0;
    }

    if(enTrackType == HI_UNF_SND_TRACK_TYPE_LOWLATENCY)
    {
        if(s_stAoDrv.bLowLatencyCreated == HI_TRUE)
        {
            HI_ERR_AO("Too many LowLatency track!\n");
            goto err0;
        }   
    }

    /* Allocate new channel */
    for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
    {
        if (0 == atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
        {
            s_stAoDrv.astTrackEntity[i].u32File = (HI_U32)HI_NULL;
            break;
        }
    }

    if (i >= AO_MAX_TOTAL_TRACK_NUM)
    {
        HI_ERR_AO("Too many track!\n");
        goto err0;
    }

    /* Allocate resource */
    s_stAoDrv.astTrackEntity[i].u32File = (HI_U32)pstFile;
    s_stAoDrv.u32TrackNum++;
    atomic_inc(&s_stAoDrv.astTrackEntity[i].atmUseCnt);
    /*
      define of Track Handle :
      bit31                                                           bit0
        |<----   16bit --------->|<---   8bit    --->|<---  8bit   --->|
        |--------------------------------------------------------------|
        |      HI_MOD_ID_E       |  sub_mod defined  |     chnID       |
        |--------------------------------------------------------------|
      */
    if(enTrackType == HI_UNF_SND_TRACK_TYPE_LOWLATENCY)
    {
        *phHandle = (HI_ID_AO << 16) | (HI_ID_LOWLATENCY_TRACK << 8) | i;   
        s_stAoDrv.bLowLatencyCreated = HI_TRUE;
    }
    else
    {
        *phHandle = (HI_ID_AO << 16) | (HI_ID_MASTER_SLAVE_TRACK << 8) | i;
    }
    
    return HI_SUCCESS;

err0:
    return HI_FAILURE;
}

HI_VOID AO_Track_FreeHandleById(HI_U32 u32TrackID)
{
    s_stAoDrv.bLowLatencyCreated = HI_FALSE;  //low latency track

    if (0 == atomic_read(&s_stAoDrv.astTrackEntity[u32TrackID].atmUseCnt))
    {
        return;
    }

    s_stAoDrv.astTrackEntity[u32TrackID].u32File = (HI_U32)HI_NULL;
    s_stAoDrv.u32TrackNum--;
    atomic_set(&s_stAoDrv.astTrackEntity[u32TrackID].atmUseCnt, 0);
}


HI_VOID AO_Track_FreeHandle(HI_HANDLE hHandle)
{
    if ((hHandle & 0xff00) == (HI_ID_LOWLATENCY_TRACK << 8)) //low latency track
    {
        s_stAoDrv.bLowLatencyCreated = HI_FALSE;
    }

    hHandle &= AO_TRACK_CHNID_MASK;

    if (0 == atomic_read(&s_stAoDrv.astTrackEntity[hHandle].atmUseCnt))
    {
        return;
    }

    s_stAoDrv.astTrackEntity[hHandle].u32File = (HI_U32)HI_NULL;
    s_stAoDrv.u32TrackNum--;
    atomic_set(&s_stAoDrv.astTrackEntity[hHandle].atmUseCnt, 0);
}

static HI_VOID AO_TRACK_SaveSuspendAttr(HI_HANDLE hHandle, AO_Track_Create_Param_S_PTR pstTrack)
{
    hHandle &= AO_TRACK_CHNID_MASK;
    s_stAoDrv.astTrackEntity[hHandle].stSuspendAttr.enSound = pstTrack->enSound;
    s_stAoDrv.astTrackEntity[hHandle].stSuspendAttr.bAlsaTrack = pstTrack->bAlsaTrack;
    memcpy(&s_stAoDrv.astTrackEntity[hHandle].stSuspendAttr.stBufAttr, &pstTrack->stBuf, sizeof(AO_BUF_ATTR_S));
}

HI_S32 AO_Track_GetDefAttr(HI_UNF_AUDIOTRACK_ATTR_S * pstDefAttr)
{
    return TRACK_GetDefAttr(pstDefAttr);
}

static HI_S32 AO_Track_GetAttr(HI_U32 u32TrackID, HI_UNF_AUDIOTRACK_ATTR_S * pstTrackAttr)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetAttr(pCard, u32TrackID, pstTrackAttr);
    }
    else
    {
        return HI_FAILURE;
    }
}

static HI_S32 AO_Track_SetAttr(HI_U32 u32TrackID, HI_UNF_AUDIOTRACK_ATTR_S * pstTrackAttr)
{
    HI_S32 s32Ret;
    SND_CARD_STATE_S *pCard;

    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if(pCard)
    {

        s32Ret = TRACK_SetAttr(pCard, u32TrackID, pstTrackAttr);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("TRACK_SetAttr fail\n");
            return HI_FAILURE;
        }
        return s32Ret;
    }
    return HI_FAILURE;
}

HI_S32 AO_Track_Create(HI_UNF_SND_E enSound, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr,
                       HI_BOOL bAlsaTrack, AO_BUF_ATTR_S *pstBuf, HI_HANDLE hTrack)
{
    HI_S32 s32Ret;
    SND_CARD_STATE_S *pCard;
    hTrack &= AO_TRACK_CHNID_MASK;
    pCard = SND_CARD_GetCard(enSound);

    if(pCard)
    {
        s32Ret = TRACK_CreateNew(pCard, pstAttr, bAlsaTrack, pstBuf, hTrack);
        if (HI_SUCCESS == s32Ret)
        {
            if(HI_FALSE == bAlsaTrack)   //No alsa track
            {
                HI_INFO_AO("set track %d mute \n", hTrack);
                return TRACK_SetMute(pCard, hTrack, HI_FALSE);
            }
        }
        return s32Ret;
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_Destory(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_Destroy(pCard, u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_Start(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_Start(pCard, u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_Stop(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_Stop(pCard, u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_Pause(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_Pause(pCard,u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_Flush(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_Flush(pCard, u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_TrackSetAipFiFoBypass(HI_U32 u32TrackID, HI_BOOL bEnable)
{
	SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);
    if (pCard)
    {
        return TRACK_SetAipFiFoBypass(pCard, u32TrackID, bEnable);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_SendData(HI_U32 u32TrackID, HI_UNF_AO_FRAMEINFO_S* pstAOFrame)
{
    SND_CARD_STATE_S* pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        if (HI_TRUE == pCard->bDMAMode)
        {
            return HI_SUCCESS;
        }
        else
        {
            return TRACK_SendData(pCard, u32TrackID, pstAOFrame);
        }
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_SendAlsaData(HI_U32 u32TrackID, HI_UNF_AO_FRAMEINFO_S * pstAOFrame)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        if (HI_TRUE == pCard->bDMAMode)
        {
            return HI_SUCCESS;
        }
        else
        {
            return TRACK_SendAlsaData(pCard, u32TrackID, pstAOFrame);
        }
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}



static HI_S32 AO_Track_MmapTrackAttr(HI_U32 u32TrackID, HI_U32* pu32AipRegAddr, HI_TRACK_MmapAttr_S *pstTrackMmapAttr)
{
    SND_CARD_STATE_S* pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);
    if (pCard)
    {
        return TRACK_MmapTrackAttr(pCard, u32TrackID, pu32AipRegAddr, pstTrackMmapAttr);
    }
    else
    {
        HI_ERR_AO("TRACK_MmapTrackAttr trace HI_ERR_AO_SOUND_NOT_OPEN!!!\n");
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetWeight(HI_U32 u32TrackID, HI_UNF_SND_GAIN_ATTR_S stTrackGain)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetWeight(pCard, u32TrackID, &stTrackGain);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_GetWeight(HI_U32 u32TrackID, HI_UNF_SND_GAIN_ATTR_S *pstTrackGain)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetWeight(pCard, u32TrackID, pstTrackGain);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetAbsGain(HI_U32 u32TrackID, HI_UNF_SND_ABSGAIN_ATTR_S stTrackAbsGain)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetAbsGain(pCard, u32TrackID, &stTrackAbsGain);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_GetAbsGain(HI_U32 u32TrackID, HI_UNF_SND_ABSGAIN_ATTR_S *pstTrackAbsGain)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetAbsGain(pCard, u32TrackID, pstTrackAbsGain);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetMute(HI_U32 u32TrackID, HI_BOOL bMute)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetMute(pCard, u32TrackID, bMute);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_GetMute(HI_U32 u32TrackID, HI_BOOL *pbMute)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetMute(pCard, u32TrackID, pbMute);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetChannelMode(HI_U32 u32TrackID, HI_UNF_TRACK_MODE_E enMode)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetChannelMode(pCard, u32TrackID, &enMode);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_GetChannelMode(HI_U32 u32TrackID, HI_UNF_TRACK_MODE_E *penMode)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetChannelMode(pCard, u32TrackID, penMode);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SePriority(HI_U32 u32TrackID, HI_BOOL bEnable)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetPriority(pCard, u32TrackID, bEnable);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_GePriority(HI_U32 u32TrackID, HI_BOOL *pbEnable)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetPriority(pCard, u32TrackID, pbEnable);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetSpeedAdjust(HI_U32 u32TrackID, AO_SND_SPEEDADJUST_TYPE_E enType, HI_S32 s32Speed)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetSpeedAdjust(pCard, u32TrackID, enType, s32Speed);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_GetDelayMs(HI_U32 u32TrackID, HI_U32 *pu32DelayMs)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetDelayMs(pCard, u32TrackID, pu32DelayMs);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_IsBufEmpty(HI_U32 u32TrackID, HI_BOOL *pbBufEmpty)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_IsBufEmpty(pCard, u32TrackID, pbBufEmpty);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_SetEosFlag(HI_U32 u32TrackID, HI_BOOL bEosFlag)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_SetEosFlag(pCard, u32TrackID, bEosFlag);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}


HI_S32 AO_Track_AttachAi(HI_U32 u32TrackID, HI_HANDLE hAi)
{
#if defined (HI_AUDIO_AI_SUPPORT)
    HI_S32 Ret;
    SND_CARD_STATE_S *pCard;
    HI_HANDLE   hTrack;
    hTrack = u32TrackID & AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(hTrack);

    if (pCard)
    {
        Ret = TRACK_SetPcmAttr(pCard, hTrack, hAi);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AO("call TRACK_SetPcmAttr failed!\n");
            return Ret;
        }

        Ret = AI_SetAttachFlag(hAi, hTrack, HI_TRUE);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AO("call AI_SetAttachFlag failed!\n");
            return Ret;
        }

        Ret = TRACK_AttachAi(pCard, hTrack, hAi);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AO("call TRACK_AttachAi failed!\n");
            return Ret;
        }
        return Ret;
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }

#else
    return HI_FAILURE;
#endif
}

HI_S32 AO_Track_DetachAi(HI_U32 u32TrackID, HI_HANDLE hAi)
{
#if defined (HI_AUDIO_AI_SUPPORT)
    HI_S32 Ret;
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        Ret = TRACK_DetachAi(pCard, u32TrackID);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AO("call TRACK_DetachAi failed!\n");
            return Ret;
        }

        Ret = AI_SetAttachFlag(hAi, u32TrackID, HI_FALSE);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_AO("call AI_SetAttachFlag failed!\n");
            return Ret;
        }
        return Ret;
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }

#else
    return HI_FAILURE;
#endif
}

#if 0
static HI_S32 AO_Track_GetStatus(HI_U32 u32TrackID, HI_VOID *pstParam)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetStatus(pCard, u32TrackID, pstParam);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

#endif

static HI_S32 AO_Track_MasterSlaveExchange(SND_CARD_STATE_S *pCard, HI_U32 u32TrackID)
{
    HI_U32 u32MTrackID;
    HI_UNF_AUDIOTRACK_ATTR_S *pstTrackAttr;
    HI_BOOL bAlsaTrack;
    AO_BUF_ATTR_S *pstBuf;
    HI_UNF_SND_E enSound;

    SND_TRACK_SETTINGS_S stTrackSettings;
    HI_S32 s32Ret;

    enSound = SND_CARD_GetSnd(pCard);
	if(AO_MAX_TOTAL_SND_NUM == enSound)
		return HI_FAILURE;

    u32MTrackID = TRACK_GetMasterId(pCard);
    if (AO_MAX_TOTAL_TRACK_NUM != u32MTrackID)  //judge if master track exist
    {
        //Master -> slave
        TRACK_GetSetting(pCard,u32MTrackID, &stTrackSettings); //save track setting
        //Master Track is NOT STOP,Not support Exchange
        if(SND_TRACK_STATUS_STOP != stTrackSettings.enCurnStatus)
        {
            HI_FATAL_AO("Exist Master Track(%d) is Not Stop!\n",u32MTrackID);
            return HI_FAILURE;
        }

	    /* Destory track */
        s32Ret = AO_Track_Destory(u32MTrackID);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AO_Track_Destory fail\n");
            return HI_FAILURE;
        }

        pstTrackAttr = &stTrackSettings.stTrackAttr;
        //bAlsaTrack = stTrackSettings.bAlsaTrack;
        bAlsaTrack = HI_FALSE;        //ALSA TRACK NEVER EXCHANGE
        pstBuf = &stTrackSettings.stBufAttr;
        pstTrackAttr->enTrackType = HI_UNF_SND_TRACK_TYPE_SLAVE;
        /* Recreate slave track  */
        s32Ret = AO_Track_Create(enSound, pstTrackAttr, bAlsaTrack, pstBuf, u32MTrackID);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AO_Track_Create fail\n");
            return HI_FAILURE;
        }
        TRACK_RestoreSetting(pCard, u32MTrackID, &stTrackSettings); //restore track setting
    }
    if(u32MTrackID == u32TrackID)	//if input track id is master ,just return here
    {
        return HI_SUCCESS;
    }
    else
    {

	    //slave -> Master
       TRACK_GetSetting(pCard,u32TrackID, &stTrackSettings);
         /* Destory track */
        s32Ret = AO_Track_Destory(u32TrackID);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AO_Track_Destory fail\n");
            return HI_FAILURE;
        }
        pstTrackAttr = &stTrackSettings.stTrackAttr;
        //bAlsaTrack = stTrackSettings.bAlsaTrack;
        bAlsaTrack = HI_FALSE;        //ALSA TRACK NEVER EXCHANGE
        pstBuf = &stTrackSettings.stBufAttr;
        pstTrackAttr->enTrackType = HI_UNF_SND_TRACK_TYPE_MASTER;
        /* Recreate Master track  */
        s32Ret = AO_Track_Create(enSound, pstTrackAttr, bAlsaTrack, pstBuf, u32TrackID);
        if (HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AO_Track_Create fail\n");
            return HI_FAILURE;
        }
        TRACK_RestoreSetting(pCard, u32TrackID, &stTrackSettings);
        return HI_SUCCESS;
    }

}

HI_S32 AO_Track_PreCreate(HI_UNF_SND_E enSound, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr,
                       HI_BOOL bAlsaTrack, AO_BUF_ATTR_S *pstBuf, HI_HANDLE hTrack)
{
    HI_U32 u32TrackID;
    HI_S32 s32Ret;

    SND_CARD_STATE_S *pCard;
    hTrack &= AO_TRACK_CHNID_MASK;
    pCard = SND_CARD_GetCard(enSound);

    if(pCard)
    {
		s32Ret = TRACK_CheckAttr(pstAttr);
		if(HI_SUCCESS != s32Ret)
		{
			return HI_FAILURE;
		}
        if(HI_UNF_SND_TRACK_TYPE_MASTER == pstAttr->enTrackType)
        {
            u32TrackID = TRACK_GetMasterId(pCard);
            if (AO_MAX_TOTAL_TRACK_NUM != u32TrackID)  //judge if master track exist
            {
                s32Ret = AO_Track_MasterSlaveExchange(pCard, u32TrackID);    //force master to slave
                if(HI_SUCCESS != s32Ret)
                {
                    HI_ERR_AO("Failed to Force Master track(%d) To Slave!\n", u32TrackID);
                    return HI_FAILURE;
                }
            }
        }
        return AO_Track_Create(enSound, pstAttr, bAlsaTrack, pstBuf, hTrack);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Track_PreSetAttr(HI_U32 u32TrackID, HI_UNF_AUDIOTRACK_ATTR_S * pstTrackAttr)
{
    HI_S32 s32Ret;
    SND_CARD_STATE_S *pCard;
    SND_TRACK_ATTR_SETTING_E enAttrSetting;
    HI_UNF_AUDIOTRACK_ATTR_S stTrackTmpAttr;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if(pCard)
    {
        s32Ret = TRACK_DetectAttr(pCard, u32TrackID, pstTrackAttr, &enAttrSetting);
        if(HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        switch(enAttrSetting)
        {
            case SND_TRACK_ATTR_RETAIN:
                s32Ret = HI_SUCCESS;
                break;
            case SND_TRACK_ATTR_MODIFY:
                s32Ret = AO_Track_SetAttr(u32TrackID, pstTrackAttr);
                break;
            case SND_TRACK_ATTR_MASTER2SLAVE:
            case SND_TRACK_ATTR_SLAVE2MASTER:
                AO_Track_GetAttr(u32TrackID, &stTrackTmpAttr);          //save track attr
                s32Ret = AO_Track_SetAttr(u32TrackID, pstTrackAttr);
                s32Ret = AO_Track_MasterSlaveExchange(pCard, u32TrackID);
                if(HI_SUCCESS != s32Ret)
                 {
                    AO_Track_SetAttr(u32TrackID, &stTrackTmpAttr);      //exchange failed ,restore track attr
                 }
                break;

            default:
                s32Ret = HI_SUCCESS;        //TODO
                break;
        }

        return s32Ret;
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}
//zgjiere; alsaí33?????

/*
//zgjiere, ?ó?úê?·??ú×?±ê×?alsa, ?D??·t??3ìDò
 */

/*
//zgjiere, alsa ? start/stop/pause/flush
 */

/*
//zgjiere, alsa êy?Yè?o?D′è?? ???°AIPè?è??ù?YAIP?áD′??????DDêy?Y′|àí? ALSA±ê×??y?ˉDD?a?¨ê±?á￡?o???D′????
 */

HI_S32 AO_Track_UpdateBufWptr(HI_U32 u32TrackID, HI_U32 *pu32WritePos)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_UpdateWptrPos(pCard, u32TrackID, pu32WritePos);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_UpdateBufRptr(HI_U32 u32TrackID, HI_U32 *pu32ReadPos)
{
	SND_CARD_STATE_S *pCard;
	u32TrackID &= AO_TRACK_CHNID_MASK;
	pCard = TRACK_CARD_GetCard(u32TrackID);
	if (pCard)
	{
		return TRACK_UpdateRptrPos(pCard, u32TrackID, pu32ReadPos);
	}
	else
	{
		return HI_ERR_AO_SOUND_NOT_OPEN;
	}
}

HI_S32 AO_Track_GetAipReadPos(HI_U32 u32TrackID, HI_U32 *pu32ReadPos)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_GetReadPos(pCard, u32TrackID, pu32ReadPos);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

HI_S32 AO_Track_FlushBuf(HI_U32 u32TrackID)
{
    SND_CARD_STATE_S *pCard;
    u32TrackID &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(u32TrackID);

    if (pCard)
    {
        return TRACK_FlushBuf(pCard, u32TrackID);
    }
    else
    {
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

#ifdef HI_ALSA_AO_SUPPORT

/* track create kernel intf */
HI_S32 AO_Track_Kcreate(AO_Track_Create_Param_S_PTR  arg, struct file *file)
{
    HI_S32 s32Ret;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    AO_Track_Create_Param_S_PTR pstTrack = (AO_Track_Create_Param_S_PTR)arg;

    s32Ret = down_interruptible(&g_AoMutex);

    if (HI_SUCCESS == AO_Track_AllocHandle(&hHandle,pstTrack->stAttr.enTrackType, file))
    {
        s32Ret = AO_Track_Create(pstTrack->enSound, &pstTrack->stAttr, pstTrack->bAlsaTrack,
                                 &pstTrack->stBuf, hHandle);
        if (HI_SUCCESS != s32Ret)
        {
            AO_Track_FreeHandle(hHandle);
            up(&g_AoMutex);
            return HI_FAILURE;
        }

        AO_TRACK_SaveSuspendAttr(hHandle, pstTrack);
        pstTrack->hTrack = hHandle;
    }
    up(&g_AoMutex);

    return HI_SUCCESS;
}
/* track destroy kernel intf */
HI_S32 AO_Track_Kdestory(HI_HANDLE  *arg)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack = *(HI_HANDLE *)arg;

    s32Ret = down_interruptible(&g_AoMutex);

    CHECK_AO_TRACK_OPEN(hTrack);
    s32Ret = AO_Track_Destory( hTrack );
    if (HI_SUCCESS != s32Ret)
    {
        up(&g_AoMutex);
        return HI_FAILURE;
    }
    AO_Track_FreeHandle(hTrack);

    up(&g_AoMutex);
    return HI_SUCCESS;
}

/* track start kernel intf */
HI_S32 AO_Track_Kstart(HI_HANDLE  *arg)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack = *(HI_HANDLE *)arg;

    //s32Ret = down_interruptible(&g_AoMutex);	//alsa atomic area

    CHECK_AO_TRACK_OPEN(hTrack);
    s32Ret = AO_Track_Start(hTrack);

    //up(&g_AoMutex);
    return s32Ret;
}

/* track stop kernel intf */
HI_S32 AO_Track_Kstop(HI_HANDLE  *arg)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack = *(HI_HANDLE *)arg;

    //s32Ret = down_interruptible(&g_AoMutex);

    CHECK_AO_TRACK_OPEN(hTrack);
    s32Ret = AO_Track_Stop(hTrack);

    //up(&g_AoMutex);
    return s32Ret;
}
/* track stop kernel intf */
HI_S32 AO_Track_Kflush(HI_HANDLE  *arg)
{
    HI_S32 s32Ret;
    HI_HANDLE hTrack = *(HI_HANDLE *)arg;

    //s32Ret = down_interruptible(&g_AoMutex);

    CHECK_AO_TRACK_OPEN(hTrack);
    s32Ret = AO_Track_Flush(hTrack);

    //up(&g_AoMutex);
    return s32Ret;
}
#endif

/******************************Snd Cast FUNC*************************************/
static HI_S32 AO_Cast_AllocHandle(HI_HANDLE *phHandle, struct file *pstFile, HI_UNF_SND_CAST_ATTR_S *pstUserCastAttr)
{
    HI_U32 i;
    HI_S32 Ret;
    HI_U32 uFrameSize, uBufSize;
    MMZ_BUFFER_S stRbfMmz;

    if (HI_NULL == phHandle)
    {
        HI_ERR_AO("Bad param!\n");
        return HI_FAILURE;
    }

    /* Check ready flag */
    if (s_stAoDrv.bReady != HI_TRUE)
    {
        HI_ERR_AO("Need open first!\n");
        return HI_FAILURE;
    }

    /* Check channel number */
    if (s_stAoDrv.u32CastNum >= AO_MAX_CAST_NUM)
    {
        HI_ERR_AO("Too many Cast:%d!\n", s_stAoDrv.u32CastNum);
        goto err0;
    }

    /* Allocate new channel */
    for (i = 0; i < AO_MAX_CAST_NUM; i++)
    {
        if (0 == atomic_read(&s_stAoDrv.astCastEntity[i].atmUseCnt))
        {
            s_stAoDrv.astCastEntity[i].u32File = (HI_U32)HI_NULL;
            break;
        }
    }

    if (i >= AO_MAX_CAST_NUM)
    {
        HI_ERR_AO("Too many Cast chans!\n");
        goto err0;
    }

    /* Allocate cast mmz resource */
    uFrameSize = AUTIL_CalcFrameSize(2, 16); /* fource 2ch 16bit */
    uBufSize = pstUserCastAttr->u32PcmFrameMaxNum * pstUserCastAttr->u32PcmSamplesPerFrame * uFrameSize;
    if (uBufSize > AO_CAST_MMZSIZE_MAX)
    {
        HI_ERR_AO("Invalid Cast FrameMaxNum(%d), PcmSamplesPerFrame(%d)!\n", pstUserCastAttr->u32PcmFrameMaxNum,
                  pstUserCastAttr->u32PcmSamplesPerFrame);
        goto err0;
    }

    Ret = HI_DRV_MMZ_AllocAndMap("AO_Cast", MMZ_OTHERS, AO_CAST_MMZSIZE_MAX, AIAO_BUFFER_ADDR_ALIGN, &stRbfMmz);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AIAO("MMZ_AllocAndMap failed\n");
        goto err0;
    }

    s_stAoDrv.astCastEntity[i].stRbfMmz   = stRbfMmz;
    s_stAoDrv.astCastEntity[i].u32ReqSize = uBufSize;

    /* Allocate resource */
    s_stAoDrv.astCastEntity[i].u32File = (HI_U32)pstFile;
    s_stAoDrv.u32CastNum++;
    atomic_inc(&s_stAoDrv.astCastEntity[ i].atmUseCnt);
    *phHandle = (HI_ID_AO << 16) |(HI_ID_CAST << 8) | i;
    return HI_SUCCESS;

err0:
    return HI_FAILURE;
}

static HI_VOID AO_Cast_FreeHandle(HI_HANDLE hHandle)
{
    hHandle &= AO_CAST_CHNID_MASK;

    /* Freee cast mmz resource */
    HI_DRV_MMZ_UnmapAndRelease(&s_stAoDrv.astCastEntity[hHandle].stRbfMmz);

    s_stAoDrv.astCastEntity[hHandle].u32File = (HI_U32)HI_NULL;
    s_stAoDrv.u32CastNum--;
    atomic_set(&s_stAoDrv.astCastEntity[hHandle].atmUseCnt, 0);
}

#define CHECK_AO_CAST_OPEN(Cast) \
    do                                                         \
    {                                                          \
        CHECK_AO_CAST(Cast);                             \
        if (0 == atomic_read(&s_stAoDrv.astCastEntity[Cast & AO_CAST_CHNID_MASK].atmUseCnt))   \
        {                                                       \
            HI_WARN_AO(" Invalid Cast id 0x%x\n", Cast);        \
            return HI_ERR_AO_INVALID_PARA;                       \
        }                                                       \
    } while (0)


static SND_CARD_STATE_S * CAST_CARD_GetCard(HI_U32 Id)
{
    HI_UNF_SND_E sndx;
    SND_CARD_STATE_S *pCard = HI_NULL;

    if (Id >= AO_MAX_CAST_NUM)
    {
        HI_WARN_AO(" Invalid Cast id 0x%x\n", Id);
        return HI_NULL;
    }

    for (sndx = HI_UNF_SND_0; sndx < HI_UNF_SND_BUTT; sndx++)
    {
        pCard = SND_CARD_GetCard(sndx);
        if(pCard)
        {
            if (pCard->uSndCastInitFlag & (1L << Id))
            {
                return pCard;
            }
        }
    }

    return HI_NULL;
}

static HI_S32 AO_Cast_SetMute(HI_U32 u32CastID, HI_BOOL bMute)
{
    SND_CARD_STATE_S *pCard;

    u32CastID &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(u32CastID);
    if (pCard)
    {
        return CAST_SetMute(pCard, u32CastID, bMute);
    }
    else
    {
        HI_FATAL_AO("Ao Sound Not Open!\n");
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}

static HI_S32 AO_Cast_GetMute(HI_U32 u32CastID, HI_BOOL *pbMute)
{
    SND_CARD_STATE_S *pCard;

    u32CastID &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(u32CastID);

    if (pCard)
    {
        return CAST_GetMute(pCard, u32CastID, pbMute);
    }
    else
    {
        HI_FATAL_AO("Ao Sound Not Open!\n");
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}


static HI_S32 AO_Cast_SetAbsGain(HI_U32 u32CastID, HI_UNF_SND_ABSGAIN_ATTR_S stCastAbsGain)
{
    SND_CARD_STATE_S *pCard;
    u32CastID &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(u32CastID);

    if (pCard)
    {
        return CAST_SetAbsGain(pCard, u32CastID, &stCastAbsGain);
    }
    else
    {
        HI_FATAL_AO("Ao Sound Not Open!\n");
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}
static HI_S32 AO_Cast_GetAbsGain(HI_U32 u32CastID, HI_UNF_SND_ABSGAIN_ATTR_S *pstCastAbsGain)
{

    SND_CARD_STATE_S *pCard;
    u32CastID &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(u32CastID);

    if (pCard)
    {
        return CAST_GetAbsGain(pCard, u32CastID, pstCastAbsGain);
    }
    else
    {
        HI_FATAL_AO("Ao Sound Not Open!\n");
        return HI_ERR_AO_SOUND_NOT_OPEN;
    }
}


static HI_S32 AO_Cast_GetDefAttr(HI_UNF_SND_CAST_ATTR_S * pstDefAttr)
{
    return CAST_GetDefAttr(pstDefAttr);
}

static HI_VOID AO_Cast_SaveSuspendAttr(HI_UNF_SND_E enSound, HI_HANDLE hHandle, HI_UNF_SND_CAST_ATTR_S *pstCastAttr)
{
    hHandle &= AO_TRACK_CHNID_MASK;
    s_stAoDrv.astCastEntity[hHandle].stSuspendAttr.enSound = enSound;
    s_stAoDrv.astCastEntity[hHandle].stSuspendAttr.stCastAttr = *pstCastAttr;
}

HI_S32 AO_Cast_Create(HI_UNF_SND_E enSound, HI_UNF_SND_CAST_ATTR_S *pstCastAttr, MMZ_BUFFER_S *pstMMz, HI_HANDLE hCast)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = SND_CARD_GetCard(enSound);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_CreateNew(pCard, pstCastAttr, pstMMz, hCast);
}


HI_S32 AO_Cast_Destory(HI_HANDLE hCast)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_DestroyCast(pCard, hCast);
}

HI_S32 AO_Cast_SetInfo(HI_HANDLE hCast, HI_U32 u32UserVirtAddr)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_SetInfo(pCard, hCast, u32UserVirtAddr);
}


HI_S32 AO_Cast_GetInfo(HI_HANDLE hCast, AO_Cast_Info_Param_S *pstInfo)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_GetInfo(pCard, hCast, pstInfo);
}


HI_S32 AO_Cast_SetEnable(HI_HANDLE hCast, HI_BOOL bEnable)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_SetEnable(pCard, hCast, bEnable);
}

HI_S32 AO_Cast_GetEnable(HI_HANDLE hCast, HI_BOOL *pbEnable)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_GetEnable(pCard, hCast, pbEnable);
}


static HI_S32 AO_Cast_ReadData(HI_HANDLE hCast, AO_Cast_Data_Param_S *pstCastData)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_ReadData(pCard, hCast, pstCastData);
}

static HI_S32 AO_Cast_ReleseData(HI_HANDLE hCast, AO_Cast_Data_Param_S *pstCastData)
{
    SND_CARD_STATE_S *pCard;
    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    return CAST_ReleaseData(pCard, hCast, pstCastData);
}

/********************************Driver inteface FUNC****************************************/

/*********************************** Code ************************************/
//zgjiere; proc??èYDè?óê?·??ú×?? ?e??·???àà??óúV1R1
static HI_BOOL bSaveThreadRunFlag = HI_FALSE;
static HI_BOOL bSuspend2SaveThreadFlag = HI_FALSE;	//HI_TRUE meas suspend start, thread should exit
static volatile HI_BOOL bSaveThread2SuspendFlag = HI_FALSE;	//HI_TRUE means  suspend wait until hi_false

static HI_S32 SndProcSaveThread(void *Arg)
{
    HI_S32 s32Ret = HI_FAILURE, s32Len = 0;
    SND_PCM_SAVE_ATTR_S* pstThreadArg = (SND_PCM_SAVE_ATTR_S*)Arg;

    //use cast
    HI_UNF_SND_CAST_ATTR_S stCastAttr;
    AO_Cast_Create_Param_S  stCastParam;
    AO_Cast_Enable_Param_S stEnableAttr;
    AO_Cast_Info_Param_S stCastInfo;
    AO_Cast_Data_Param_S stCastData;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_SND_E  enSound;
    struct file* fileHandle;
    struct file* devfileHandle;

    enSound = SND_CARD_GetSnd(pstThreadArg->pCard);
    fileHandle = pstThreadArg->pCard->fileHandle;
    devfileHandle = pstThreadArg->devfileHandle;

    CHECK_AO_SNDCARD_OPEN(enSound);
    CHECK_AO_NULL_PTR(fileHandle);

    s32Ret = down_interruptible(&g_AoMutex);
    bSaveThread2SuspendFlag = HI_TRUE;

    s32Ret = AO_Cast_GetDefAttr(&stCastAttr);
    if (HI_SUCCESS != s32Ret)
    {
        up(&g_AoMutex);
        goto Close_File;
    }

    stCastParam.enSound = enSound;
    memcpy(&stCastParam.stCastAttr, &stCastAttr, sizeof(HI_UNF_SND_CAST_ATTR_S));

    if (HI_SUCCESS == AO_Cast_AllocHandle(&hHandle, fileHandle, &stCastParam.stCastAttr))
    {
        s32Ret = AO_Cast_Create(enSound, &stCastParam.stCastAttr, &s_stAoDrv.astCastEntity[hHandle & AO_CAST_CHNID_MASK].stRbfMmz,
                                hHandle);
        if (HI_SUCCESS != s32Ret)
        {
            AO_Cast_FreeHandle(hHandle);
            up(&g_AoMutex);
            goto Close_File;
        }
        stCastParam.u32ReqSize = s_stAoDrv.astCastEntity[hHandle & AO_CAST_CHNID_MASK].u32ReqSize;
        stCastParam.hCast = hHandle;
    }
    else
    {
        up(&g_AoMutex);
        goto Close_File;
    }

    stCastInfo.hCast = stCastParam.hCast;
    s32Ret = AO_Cast_GetInfo(stCastInfo.hCast, &stCastInfo);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" AO_Cast_GetInfo Failed\n");
        up(&g_AoMutex);
        goto Destory_Cast;
    }

    stEnableAttr.hCast = stCastParam.hCast;
    stEnableAttr.bCastEnable = HI_TRUE;
    s32Ret = AO_Cast_SetEnable(stEnableAttr.hCast, stEnableAttr.bCastEnable);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO(" AO_Cast_SetEnable Enable Failed\n");
        up(&g_AoMutex);
        goto Destory_Cast;
    }
    up(&g_AoMutex);

    stCastData.hCast = stCastParam.hCast;
    while (HI_TRUE == bSaveThreadRunFlag) // NO !kthread_should_stop() to avoid dead lock
    {
        HI_U32 u32PcmSize;

        s32Ret = down_interruptible(&g_AoMutex);
        if (bSuspend2SaveThreadFlag == HI_TRUE)
        {
            up(&g_AoMutex);
            goto Destory_Cast;
        }

        s32Ret = AO_Cast_ReadData(stCastData.hCast, &stCastData);
        up(&g_AoMutex);
        if (HI_SUCCESS == s32Ret)
        {
            if (stCastData.stAOFrame.u32PcmSamplesPerFrame == 0)
            {
                msleep(5);
                continue;
            }
            else
            {
                u32PcmSize = stCastData.stAOFrame.u32PcmSamplesPerFrame * stCastData.stAOFrame.u32Channels * stCastData.stAOFrame.s32BitPerSample / 8;

                // fileHandle is already checked
                s32Len = HI_DRV_FILE_Write(fileHandle, (HI_S8*)(stCastInfo.u32KernelVirtAddr + stCastData.u32DataOffset) , u32PcmSize);
                if (s32Len != u32PcmSize)
                {
                    HI_ERR_AO("HI_DRV_FILE_Write failed!\n");
                    pstThreadArg->pCard->enSaveState = SND_DEBUG_CMD_CTRL_STOP;
                    goto Destory_Cast;
                }
                s32Ret = down_interruptible(&g_AoMutex);
                if (bSuspend2SaveThreadFlag == HI_TRUE)
                {
                    up(&g_AoMutex);
                    goto Destory_Cast;
                }

                s32Ret = AO_Cast_ReleseData(stCastData.hCast, &stCastData);
                up(&g_AoMutex);
                if (HI_SUCCESS != s32Ret)
                {
                    goto Close_File;
                }
            }
        }
        else
        {
            goto Close_File;
        }
    }

Destory_Cast:
    CHECK_AO_CAST_OPEN(stCastParam.hCast);
    s32Ret = down_interruptible(&g_AoMutex);
    s32Ret = AO_Cast_Destory(stCastParam.hCast);
    AO_Cast_FreeHandle(stCastParam.hCast);
    up(&g_AoMutex);
Close_File:
    if (fileHandle)
    {
        HI_DRV_FILE_Close(fileHandle);
    }
    s32Ret = AO_Snd_Kclose(enSound, devfileHandle);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("AO_Snd_Kclose %d failed \n", (HI_U32)enSound);
    }
    s32Ret = AO_DRV_Krelease(devfileHandle);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_AO("AO_DRV_Krelease\n");
    }
    bSaveThread2SuspendFlag = HI_FALSE;
    return HI_SUCCESS;
}

HI_S32 SND_WriteProc(SND_CARD_STATE_S *pCard, SND_DEBUG_CMD_CTRL_E enCmd)
{
    HI_CHAR szPath[AO_SOUND_PATH_NAME_MAXLEN + AO_SOUND_FILE_NAME_MAXLEN] = {0};
    HI_UNF_SND_E  enSound;
    static struct  task_struct*  g_pstSndSaveThread = NULL; //name todo
    static SND_PCM_SAVE_ATTR_S  stThreadArg;
    static AO_SND_Open_Param_S  stSndOpenParam;
    static struct file   g_file;    //just a dev handle no use
    struct tm now;
    HI_S32 s32Ret;
    enSound = SND_CARD_GetSnd(pCard);
    if (SND_DEBUG_CMD_CTRL_START == enCmd && pCard->enSaveState == SND_DEBUG_CMD_CTRL_STOP)
    {
        if (HI_SUCCESS != HI_DRV_FILE_GetStorePath(szPath, AO_SOUND_PATH_NAME_MAXLEN))
        {
            HI_ERR_AO("get store path failed\n");
            return HI_FAILURE;
        }

        time_to_tm(get_seconds(), 0, &now);
        snprintf(szPath, sizeof(szPath), "%s/sound%d_%02u_%02u_%02u.pcm", szPath, (HI_U32)enSound, now.tm_hour, now.tm_min, now.tm_sec);

        pCard->fileHandle = HI_DRV_FILE_Open(szPath, 1);
        if (!pCard->fileHandle)
        {
            HI_ERR_AO("open %s error\n", szPath);
            return HI_FAILURE;
        }
        //stThreadArg.enSound = enSound;
        //stThreadArg.fileHandle = pCard->fileHandle;
        stThreadArg.pCard = pCard;
        stThreadArg.devfileHandle = &g_file;

        stSndOpenParam.enSound = enSound;
        up(&g_AoMutex);
        s32Ret = AO_DRV_Kopen(&g_file);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("AO_DRV_Kopen failed\n");
        }

        s32Ret = AO_Snd_Kopen(&stSndOpenParam, &g_file);    //never first open
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("AO_Snd_Kopen failed\n");
        }
        s32Ret = down_interruptible(&g_AoMutex);

        bSaveThreadRunFlag = HI_TRUE;
        g_pstSndSaveThread = kthread_create(SndProcSaveThread, &stThreadArg, "AoSndProcSave");      //Name To Do
        if (IS_ERR(g_pstSndSaveThread))
        {
            HI_ERR_AO("creat sound proc write thread failed\n");
            return HI_FAILURE;
        }
        pCard->enSaveState = enCmd;
        wake_up_process(g_pstSndSaveThread);

        pCard->u32SaveCnt++;

    }

    if (SND_DEBUG_CMD_CTRL_STOP == enCmd && pCard->enSaveState == SND_DEBUG_CMD_CTRL_START)
    {
        bSaveThreadRunFlag = HI_FALSE;
        //kthread_stop(g_pstSndSaveThread);
        g_pstSndSaveThread = HI_NULL;

        //Warnning : HI_DRV_FILE_Close called in Thread, To avoid hold mutex lock long time
        pCard->enSaveState = enCmd;
    }

    //  if(pCard)
    //      pCard->enSaveState = enCmd;
    return HI_SUCCESS;
}
static HI_S32 AOReadSndProc( struct seq_file* p, HI_UNF_SND_E enSnd )
{
    HI_U32 i;
    HI_UNF_SND_ATTR_S* pstSndAttr;
    SND_CARD_STATE_S* pCard;

    pCard = SND_CARD_GetCard(enSnd);
    if (HI_NULL == pCard)
    {
        PROC_PRINT( p, "\n------------------------------------  Sound[%d] Not Open ----------------------------------\n", (HI_U32)enSnd );
        return HI_SUCCESS;
    }

    PROC_PRINT( p, "\n-------------------------------------------  Sound[%d]  Status  ----------------------------------------------------\n", (HI_U32)enSnd );
    pstSndAttr = &pCard->stUserOpenParam;

    PROC_PRINT( p,
                "SampleRate     :%d\n",
                pstSndAttr->enSampleRate );

    if (SND_SPDIF_MODE_NONE != pCard->enSpdifPassthrough)
    {
        PROC_PRINT( p,
                    "SPDIF Status   :UserSetMode(%s) DataFormat(%s)\n",
                    AUTIL_SpdifMode2Name(pCard->enUserSpdifMode),
                    AUTIL_Format2Name(pCard->u32SpdifDataFormat));
    }
    if (SND_HDMI_MODE_NONE != pCard->enHdmiPassthrough)
    {
        PROC_PRINT( p,
                    "HDMI Status    :UserSetMode(%s) DataFormat(%s)\n",
                    AUTIL_HdmiMode2Name(pCard->enUserHdmiMode),
                    AUTIL_Format2Name(pCard->u32HdmiDataFormat));
    }

    PROC_PRINT( p, "\n---------------------------------------------  OutPort Status  ---------------------------------------------\n" );
    for (i = 0; i < pstSndAttr->u32PortNum; i++)
    {
        SND_ReadOpProc( p, pCard, pstSndAttr->stOutport[i].enOutPort );
    }
    if(s_stAoDrv.u32CastNum>0)
    {
        PROC_PRINT( p, "------------------------------------------------ Cast Status  ----------------------------------------------\n" );
        CAST_ReadProc(p,pCard);
    }

    PROC_PRINT( p, "\n------------------------------------------------ Track Status  ----------------------------------------------\n" );
    Track_ReadProc( p, pCard );

#if defined(CHIP_TYPE_hi3751v100)
    PROC_PRINT( p, "\n--------------------------------------------- Audio Effect Status  ------------------------------------------\n" );
    SND_ReadAefProc( p, pCard );
#endif

    return HI_SUCCESS;
}

HI_S32 AO_DRV_ReadProc( struct seq_file* p, HI_VOID* v )
{
    HI_U32 u32Snd;
    DRV_PROC_ITEM_S *pstProcItem;

    pstProcItem = p->private;

    //(HI_VOID)sscanf(pstProcItem->entry_name, "sound%1d", &u32Snd);
    u32Snd = (pstProcItem->entry_name[5] - '0');
    if(u32Snd >= AO_MAX_TOTAL_SND_NUM)
    {
        PROC_PRINT(p, "Invalid Sound ID:%d.\n", u32Snd);
        return HI_FAILURE;
    }

    AOReadSndProc( p, (HI_UNF_SND_E)u32Snd );

    return HI_SUCCESS;
}

static HI_VOID AO_Hdmi_Debug(SND_CARD_STATE_S* pCard)
{
    if(HI_FALSE == pCard->bHdmiDebug)
    {
        pCard->bHdmiDebug = HI_TRUE;
    }
    else
    {
        pCard->bHdmiDebug = HI_FALSE;
    }
}

static HI_S32 AO_Proc_SetHdmiMode(SND_CARD_STATE_S* pCard, HI_UNF_SND_HDMI_MODE_E enSetMode)
{
    HI_UNF_SND_E  enSound;
    HI_UNF_SND_HDMI_MODE_E enMode = HI_UNF_SND_HDMI_MODE_BUTT;
    CHECK_AO_HDMIMODE(enSetMode);

    enSound = SND_CARD_GetSnd(pCard);
    AO_SND_GetHdmiMode(enSound, HI_UNF_SND_OUTPUTPORT_HDMI0, &enMode);
    if (enMode != enSetMode)
    {
        return AO_SND_SetHdmiMode(enSound, HI_UNF_SND_OUTPUTPORT_HDMI0, enSetMode);
    }
    return HI_SUCCESS;
}

static HI_S32 AO_Proc_SetSpdifMode(SND_CARD_STATE_S* pCard, HI_UNF_SND_SPDIF_MODE_E enSetMode)
{
    HI_UNF_SND_E  enSound;
    HI_UNF_SND_SPDIF_MODE_E enMode = HI_UNF_SND_SPDIF_MODE_BUTT;
    CHECK_AO_SPDIFMODE(enSetMode);

    enSound = SND_CARD_GetSnd(pCard);
    AO_SND_GetSpdifMode(enSound, HI_UNF_SND_OUTPUTPORT_SPDIF0, &enMode);
    if (enMode != enSetMode)
    {
        return AO_SND_SetSpdifMode(enSound, HI_UNF_SND_OUTPUTPORT_SPDIF0, enSetMode);
    }
    return HI_SUCCESS;
}

HI_S32 AO_DRV_WriteProc(struct file* file, const char __user* buf, size_t count, loff_t* ppos)
{
    HI_S32 s32Ret;
    HI_U32 u32Snd;
    SND_CARD_STATE_S* pCard;
    HI_U32 u32TrackId = AO_MAX_TOTAL_TRACK_NUM;
    SND_DEBUG_CMD_PROC_E enProcCmd;
    SND_DEBUG_CMD_CTRL_E enCtrlCmd;
    HI_CHAR szBuf[48];
    HI_CHAR* pcBuf = szBuf;
    HI_CHAR* pcStartCmd = "start";
    HI_CHAR* pcStopCmd = "stop";
    HI_CHAR* pcSaveTrackCmd = "save_track";
    HI_CHAR* pcSaveSoundCmd = "save_sound";

    HI_CHAR* pcHelpCmd = "help";
    HI_CHAR* pcHdmiCmd = "hdmi=debug";

    HI_CHAR* pcHdmiAuto = "hdmi=auto";
    HI_CHAR* pcHdmiPcm  = "hdmi=pcm";
    HI_CHAR* pcHdmiRaw  = "hdmi=raw";
    HI_CHAR* pcHdmiHbr2Lbr = "hdmi=hbr2lbr";

    HI_CHAR* pcSpdifPcm  = "spdif=pcm";
    HI_CHAR* pcSpdifRaw  = "spdif=raw";

    struct seq_file* p = file->private_data;
    DRV_PROC_ITEM_S* pstProcItem = p->private;

    s32Ret = down_interruptible(&g_AoMutex);

    if (copy_from_user(szBuf, buf, count))
    {
        HI_ERR_AO("copy from user failed\n");
        up(&g_AoMutex);
        return HI_FAILURE;
    }

    //(HI_VOID)sscanf(pstProcItem->entry_name, "sound%1d", &u32Snd);
    u32Snd = (pstProcItem->entry_name[5] - '0');
    if (u32Snd >= AO_MAX_TOTAL_SND_NUM)
    {
        HI_ERR_AO("Invalid Sound ID:%d.\n", u32Snd);
        goto SAVE_CMD_FAULT;
    }

    pCard = SND_CARD_GetCard((HI_UNF_SND_E)u32Snd);
    if (HI_NULL == pCard)
    {
        HI_ERR_AO("Sound %d is not open\n", u32Snd);
        goto SAVE_CMD_FAULT;
    }

    AO_STRING_SKIP_BLANK(pcBuf);
    if (strstr(pcBuf, pcSaveTrackCmd))
    {
        enProcCmd = SND_DEBUG_CMD_PROC_SAVE_TRACK;
        pcBuf += strlen(pcSaveTrackCmd);
    }
    else if (strstr(pcBuf, pcHelpCmd))
    {
        AO_DEBUG_SHOW_HELP(u32Snd);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcHdmiCmd))
    {
        AO_Hdmi_Debug(pCard);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcHdmiAuto))
    {
        AO_Proc_SetHdmiMode(pCard, HI_UNF_SND_HDMI_MODE_AUTO);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcHdmiPcm))
    {
        AO_Proc_SetHdmiMode(pCard, HI_UNF_SND_HDMI_MODE_LPCM);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcHdmiRaw))
    {
        AO_Proc_SetHdmiMode(pCard, HI_UNF_SND_HDMI_MODE_RAW);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcHdmiHbr2Lbr))
    {
        AO_Proc_SetHdmiMode(pCard, HI_UNF_SND_HDMI_MODE_HBR2LBR);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcSpdifPcm))
    {
        AO_Proc_SetSpdifMode(pCard, HI_UNF_SND_SPDIF_MODE_LPCM);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf, pcSpdifRaw))
    {
        AO_Proc_SetSpdifMode(pCard, HI_UNF_SND_SPDIF_MODE_RAW);
        up(&g_AoMutex);
        return count;
    }
    else if (strstr(pcBuf,pcSaveSoundCmd))
    {
        enProcCmd = SND_DEBUG_CMD_PROC_SAVE_SOUND;
        pcBuf += strlen(pcSaveSoundCmd);
    }
    else
    {
        goto SAVE_CMD_FAULT;
    }

    AO_STRING_SKIP_BLANK(pcBuf);
    if(SND_DEBUG_CMD_PROC_SAVE_TRACK == enProcCmd)
    {
        if (pcBuf[0] < '0' || pcBuf[0] > '9')//do not have param
        {
            goto SAVE_CMD_FAULT;
        }
        u32TrackId = (HI_U32)simple_strtoul(pcBuf, &pcBuf, 10);
        if(u32TrackId >= AO_MAX_TOTAL_TRACK_NUM)
        {
            goto SAVE_CMD_FAULT;
        }
        AO_STRING_SKIP_NON_BLANK(pcBuf);
        AO_STRING_SKIP_BLANK(pcBuf);
    }

    if (strstr(pcBuf,pcStartCmd))
    {
        enCtrlCmd = SND_DEBUG_CMD_CTRL_START;
    }
    else if (strstr(pcBuf,pcStopCmd))
    {
        enCtrlCmd = SND_DEBUG_CMD_CTRL_STOP;
    }
    else
    {
        goto SAVE_CMD_FAULT;
    }

    if(SND_DEBUG_CMD_PROC_SAVE_TRACK == enProcCmd)
    {
        s32Ret = TRACK_WriteProc(pCard, u32TrackId, enCtrlCmd);
        if (s32Ret != HI_SUCCESS)
        {
            goto SAVE_CMD_FAULT;
        }
    }

	if(SND_DEBUG_CMD_PROC_SAVE_SOUND == enProcCmd)
	{
		s32Ret = SND_WriteProc(pCard, enCtrlCmd);

		if (s32Ret != HI_SUCCESS)
		{
			goto SAVE_CMD_FAULT;
		}
	}
    up(&g_AoMutex);
    return count;

SAVE_CMD_FAULT:
    HI_ERR_AO("proc cmd is fault\n");
    AO_DEBUG_SHOW_HELP(u32Snd);
    up(&g_AoMutex);
    return HI_FAILURE;
}

static HI_S32 AO_RegProc(HI_U32 u32Snd)
{
    HI_CHAR aszBuf[16];
    DRV_PROC_ITEM_S*  pProcItem;

    /* Check parameters */
    if (HI_NULL == s_stAoDrv.pstProcParam)
    {
        return HI_FAILURE;
    }

    /* Create proc */
    snprintf(aszBuf, sizeof(aszBuf), "sound%d", u32Snd);
    pProcItem = HI_DRV_PROC_AddModule(aszBuf, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_AO("Create ade proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
    pProcItem->read  = s_stAoDrv.pstProcParam->pfnReadProc;
    pProcItem->write = s_stAoDrv.pstProcParam->pfnWriteProc;

    HI_INFO_AO("Create Ao proc entry for OK!\n");
    return HI_SUCCESS;
}

static HI_VOID AO_UnRegProc(HI_U32 u32Snd)
{
    HI_CHAR aszBuf[16];
    snprintf(aszBuf, sizeof(aszBuf), "sound%d", u32Snd);

    HI_DRV_PROC_RemoveModule(aszBuf);
    return;
}
#if defined(HI_AIAO_VERIFICATION_SUPPORT)
DRV_PROC_EX_S stAIAOCbbOpt =
{
     .fnRead = AIAO_VERI_ProcRead,
};
#endif

static HI_S32 AO_OpenDev(HI_VOID)
{
    HI_U32 i;

    HI_S32 s32Ret;

    /* Init global track parameter */
    for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
    {
        atomic_set(&s_stAoDrv.astTrackEntity[i].atmUseCnt, 0);
    }

    s_stAoDrv.u32SndNum = 0;
    /* Init global snd parameter */
    for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
    {
        atomic_set(&s_stAoDrv.astSndEntity[i].atmUseTotalCnt, 0);
    }

    s_stAoDrv.pAdspFunc = HI_NULL;
    s_stAoDrv.pstPDMFunc = HI_NULL;

    /* Get pdm functions */
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_PDM, (HI_VOID**)&s_stAoDrv.pstPDMFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_AO("Get pdm function err:%#x!\n", s32Ret);
        goto err;
    }

    /* Get adsp functions */
    s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_ADSP, (HI_VOID**)&s_stAoDrv.pAdspFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_AO("Get adsp function err:%#x!\n", s32Ret);
        goto err;
    }

    /* HAL_AOE_Init , Init aoe hardare */
    if (s_stAoDrv.pAdspFunc && s_stAoDrv.pAdspFunc->pfnADSP_LoadFirmware)
    {
        s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_LoadFirmware)(ADSP_CODE_AOE);
        if (HI_SUCCESS != s32Ret)
        {
            goto err;
        }
        if (s_stAoDrv.pAdspFunc && s_stAoDrv.pAdspFunc->pfnADSP_GetAoeFwmInfo)
        {
            ADSP_FIRMWARE_AOE_INFO_S stAoeInfo;
            s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_GetAoeFwmInfo)(ADSP_CODE_AOE,&stAoeInfo);
            if (HI_SUCCESS != s32Ret)
            {
                s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_UnLoadFirmware)(ADSP_CODE_AOE);
                goto err;
            }
            HAL_AOE_Init(stAoeInfo.bAoeSwFlag);
        }
    }


    /* HAL_AIAO_Init, Init aiao hardare */
    HAL_AIAO_Init();

    /* HAL_CAST_Init , Init cast hardare */
    HAL_CAST_Init();

#if defined(HI_AIAO_VERIFICATION_SUPPORT)
{
     DRV_PROC_ITEM_S *item;
     AIAO_VERI_Open();
     item = HI_DRV_PROC_AddModule(AIAO_VERI_PROC_NAME, &stAIAOCbbOpt, NULL);
     if (!item)
     {
        HI_WARN_AIAO("add proc aiao_port failed\n");
     }
}
#endif

    /* Set ready flag */
    s_stAoDrv.bReady = HI_TRUE;

    HI_INFO_AO("AO_OpenDev OK.\n");
    return HI_SUCCESS;
err:
    return HI_FAILURE;
}

static HI_S32 AO_CloseDev(HI_VOID)
{
    HI_U32 i,j;
    HI_S32 s32Ret;

    DRV_AO_STATE_S *pAOState = HI_NULL;

    /* Reentrant */
    if (s_stAoDrv.bReady == HI_FALSE)
    {
        return HI_SUCCESS;
    }

    /* Set ready flag */
    s_stAoDrv.bReady = HI_FALSE;

    /* Free all Cast */
    for (i = 0; i < AO_MAX_CAST_NUM; i++)
    {
        {
            if (atomic_read(&s_stAoDrv.astCastEntity[i].atmUseCnt))
            {
                (HI_VOID)AO_Cast_Destory( i );
                AO_Cast_FreeHandle(i);
            }
        }
    }

    /* Free all track */
    for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
    {
        {
            if (atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
            {
                (HI_VOID)AO_Track_Destory( i );
                AO_Track_FreeHandleById(i);
            }
        }
    }

    /* Free all snd */
    for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
    {
        if (s_stAoDrv.astSndEntity[i].pCard)
        {
            for(j = 0; j < SND_MAX_OPEN_NUM; j++)
            {
                if(s_stAoDrv.astSndEntity[i].u32File[j] != 0)
                {
                    HI_U32 u32UserOpenCnt = 0;
                    pAOState = (DRV_AO_STATE_S *)((struct file *)(s_stAoDrv.astSndEntity[i].u32File[j]))->private_data;

                    u32UserOpenCnt = atomic_read(&pAOState->atmUserOpenCnt[i]);
                    if(atomic_sub_and_test(u32UserOpenCnt, &s_stAoDrv.astSndEntity[i].atmUseTotalCnt))
                    {
                        (HI_VOID)AO_SND_Close( i, HI_FALSE );
                    }
                    AO_Snd_FreeHandle(i, (struct file *)(s_stAoDrv.astSndEntity[i].u32File[j]));
                }
            }
        }
    }

    /* HAL_AOE_DeInit */
    if (s_stAoDrv.pAdspFunc && s_stAoDrv.pAdspFunc->pfnADSP_UnLoadFirmware)
    {
        HAL_AOE_DeInit( );
        s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_UnLoadFirmware)(ADSP_CODE_AOE);
    }

    /* HAL_CAST_DeInit  */
    HAL_CAST_DeInit();

    /* HAL_AIAO_DeInit */
    HAL_AIAO_DeInit();

#if defined(HI_AIAO_VERIFICATION_SUPPORT)
     HI_DRV_PROC_RemoveModule(AIAO_VERI_PROC_NAME);
     AIAO_VERI_Release();
#endif

    return HI_SUCCESS;
}

static HI_S32 AO_ProcessCmd( struct inode *inode, struct file *file, HI_U32 cmd, HI_VOID *arg )
{
    HI_S32 Ret = HI_SUCCESS;

    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    HI_UNF_SND_E enSound = HI_UNF_SND_BUTT;
#if defined(HI_AIAO_VERIFICATION_SUPPORT)
    if((cmd&0xff)>=CMD_AIAO_VERI_IOCTL)
    {
        return AIAO_VERI_ProcessCmd(inode,file,cmd,arg);
    }
#endif

    /* Check parameter in this switch */
    switch (cmd)
    {
    case CMD_AO_TRACK_DESTROY:
    case CMD_AO_TRACK_START:
    case CMD_AO_TRACK_STOP:
    case CMD_AO_TRACK_PAUSE:
    case CMD_AO_TRACK_FLUSH:
    {
        if (HI_NULL == arg)
        {
            HI_ERR_AO("CMD %p Bad arg!\n", (HI_VOID*)cmd);
            return HI_ERR_AO_INVALID_PARA;
        }

        hHandle = *(HI_HANDLE *)arg & AO_TRACK_CHNID_MASK;
        CHECK_AO_TRACK(hHandle);
        break;
    }
    case CMD_AO_TRACK_GETDEFATTR:
    case CMD_AO_TRACK_SETATTR:
    case CMD_AO_TRACK_GETATTR:
    case CMD_AO_TRACK_CREATE:
    case CMD_AO_TRACK_SETWEITHT:
    case CMD_AO_TRACK_GETWEITHT:
    case CMD_AO_TRACK_SETABSGAIN:
    case CMD_AO_TRACK_GETABSGAIN:
    case CMD_AO_TRACK_SETMUTE:
    case CMD_AO_TRACK_GETMUTE:
	case CMD_AO_TRACK_SETCHANNELMODE:
	case CMD_AO_TRACK_GETCHANNELMODE:
    case CMD_AO_TRACK_SETSPEEDADJUST:
    case CMD_AO_TRACK_GETDELAYMS:
    case CMD_AO_TRACK_SETEOSFLAG:
    case CMD_AO_TRACK_SENDDATA:
    case CMD_AO_TRACK_SETPRIORITY:
    case CMD_AO_TRACK_GETPRIORITY:
    case CMD_AO_TRACK_SETFIFOBYPASS:
    case CMD_AO_TRACK_GETFIFOBYPASS:
    case CMD_AO_GETSNDDEFOPENATTR:
    case CMD_AO_TRACK_ATTACHAI:
    case CMD_AO_TRACK_DETACHAI:
    case CMD_AO_SND_OPEN:
    case CMD_AO_SND_CLOSE:
    case CMD_AO_SND_SETMUTE:
    case CMD_AO_SND_GETMUTE:
    case CMD_AO_SND_SETHDMIMODE:
    case CMD_AO_SND_GETHDMIMODE:
    case CMD_AO_SND_SETSPDIFMODE:
    case CMD_AO_SND_GETSPDIFMODE:
    case CMD_AO_SND_SETVOLUME:
    case CMD_AO_SND_GETVOLUME:
    case CMD_AO_SND_SETSAMPLERATE:
    case CMD_AO_SND_GETSAMPLERATE:
    case CMD_AO_SND_SETTRACKMODE:
    case CMD_AO_SND_GETTRACKMODE:
    case CMD_AO_SND_SETALLTRACKMUTE:
    case CMD_AO_SND_GETALLTRACKMUTE:
    case CMD_AO_SND_SETSMARTVOLUME:
    case CMD_AO_SND_GETSMARTVOLUME:
    case CMD_AO_SND_SETLOWLATENCY:
    case CMD_AO_SND_ATTACHAEF:
    case CMD_AO_SND_DETACHAEF:
    case CMD_AO_SND_SETAEFBYPASS:
    case CMD_AO_SND_GETAEFBYPASS:
    case CMD_AO_SND_SETSPDIFSCMSMODE:
    case CMD_AO_SND_GETSPDIFSCMSMODE:
    case CMD_AO_SND_SETSPDIFCATEGORYCODE:
    case CMD_AO_SND_GETSPDIFCATEGORYCODE:
    case CMD_AO_SND_GETXRUNCOUNT:
    case CMD_AO_CAST_GETDEFATTR:
    case CMD_AO_CAST_CREATE:
    case CMD_AO_CAST_DESTROY:
    case CMD_AO_CAST_SETENABLE:
    case CMD_AO_CAST_GETENABLE:
    case CMD_AO_CAST_SETINFO:
    case CMD_AO_CAST_GETINFO:
    case CMD_AO_CAST_ACQUIREFRAME:
    case CMD_AO_CAST_RELEASEFRAME:
    case CMD_AO_CAST_SETABSGAIN:
    case CMD_AO_CAST_GETABSGAIN:
    case CMD_AO_CAST_SETMUTE:
    case CMD_AO_CAST_GETMUTE:
    {
        if (HI_NULL == arg)
        {
            HI_ERR_AO("CMD %p Bad arg!\n", (HI_VOID*)cmd);
            return HI_ERR_AO_INVALID_PARA;
        }

        break;
    }
    }

    switch (cmd)
    {
        //Snd CMD TYPE(call hal_aiao)
    case CMD_AO_GETSNDDEFOPENATTR:
    {
        Ret = AOGetSndDefOpenAttr((AO_SND_OpenDefault_Param_S_PTR)arg);
        break;
    }
    case CMD_AO_SND_OPEN:
    {
        DRV_AO_STATE_S *pAOState = file->private_data;
        AO_SND_Open_Param_S_PTR pstSndParam = ( AO_SND_Open_Param_S_PTR )arg;
        enSound = pstSndParam->enSound;
        CHECK_AO_SNDCARD( enSound );

        Ret = AO_Snd_AllocHandle(enSound, file);
        if (HI_SUCCESS == Ret)
        {
            if (0 == atomic_read(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
            {
                Ret = AO_SND_Open( enSound, &pstSndParam->stAttr, NULL, HI_FALSE);
                if (HI_SUCCESS != Ret)
                {
                    AO_Snd_FreeHandle(enSound, file);
                    break;
                }
            }
        }

        atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
        atomic_inc(&pAOState->atmUserOpenCnt[enSound]);

        break;
    }
    case CMD_AO_SND_CLOSE:
    {
        DRV_AO_STATE_S *pAOState = file->private_data;
        enSound = *( HI_UNF_SND_E *)arg;
        CHECK_AO_SNDCARD_OPEN( enSound );

        if(atomic_dec_and_test(&pAOState->atmUserOpenCnt[enSound]))
        {
                if (atomic_dec_and_test(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
                {
                    Ret = AO_SND_Close( enSound, HI_FALSE );
                    if (HI_SUCCESS != Ret)
                    {
                        atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
						atomic_inc(&pAOState->atmUserOpenCnt[enSound]);
                        break;
                    }

                    AO_Snd_FreeHandle(enSound, file);
                }
        }
        else
		{
            atomic_dec(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
        }
        Ret = HI_SUCCESS;
        break;
    }
    case CMD_AO_SND_SETMUTE:
    {
        AO_SND_Mute_Param_S_PTR pstMute = (AO_SND_Mute_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMute->enSound );
        Ret = AO_SND_SetMute(pstMute->enSound, pstMute->enOutPort, pstMute->bMute);
        break;
    }

    case CMD_AO_SND_GETMUTE:
    {
        AO_SND_Mute_Param_S_PTR pstMute = (AO_SND_Mute_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMute->enSound );
        Ret = AO_SND_GetMute(pstMute->enSound, pstMute->enOutPort, &pstMute->bMute);
        break;
    }

    case CMD_AO_SND_SETHDMIMODE:
    {
        AO_SND_HdmiMode_Param_S_PTR pstMode = (AO_SND_HdmiMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_SetHdmiMode(pstMode->enSound, pstMode->enOutPort, pstMode->enMode);
        break;
    }
    case CMD_AO_SND_GETHDMIMODE:
    {
        AO_SND_HdmiMode_Param_S_PTR pstMode = (AO_SND_HdmiMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_GetHdmiMode(pstMode->enSound, pstMode->enOutPort, &pstMode->enMode);
        break;
    }

    case CMD_AO_SND_SETSPDIFMODE:
    {
        AO_SND_SpdifMode_Param_S_PTR pstMode = (AO_SND_SpdifMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_SetSpdifMode(pstMode->enSound, pstMode->enOutPort, pstMode->enMode);
        break;
    }
    case CMD_AO_SND_GETSPDIFMODE:
    {
        AO_SND_SpdifMode_Param_S_PTR pstMode = (AO_SND_SpdifMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_GetSpdifMode(pstMode->enSound, pstMode->enOutPort, &pstMode->enMode);
        break;
    }

    case CMD_AO_SND_SETVOLUME:
    {
        AO_SND_Volume_Param_S_PTR pstVolume = (AO_SND_Volume_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstVolume->enSound );
        Ret = AO_SND_SetVolume(pstVolume->enSound, pstVolume->enOutPort, pstVolume->stGain);
        break;
    }

    case CMD_AO_SND_GETVOLUME:
    {
        AO_SND_Volume_Param_S_PTR pstVolume = (AO_SND_Volume_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstVolume->enSound );
        Ret = AO_SND_GetVolume(pstVolume->enSound, pstVolume->enOutPort, &pstVolume->stGain);
        break;
    }

    case CMD_AO_SND_SETSPDIFSCMSMODE:
    {
        AO_SND_SpdifSCMSMode_Param_S_PTR pstSCMSMode = (AO_SND_SpdifSCMSMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSCMSMode->enSound );
        Ret = AO_SND_SetSpdifSCMSMode(pstSCMSMode->enSound, pstSCMSMode->enOutPort, pstSCMSMode->enSCMSMode);
        break;
    }
    case CMD_AO_SND_GETSPDIFSCMSMODE:
    {
        AO_SND_SpdifSCMSMode_Param_S_PTR pstSCMSMode = (AO_SND_SpdifSCMSMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSCMSMode->enSound );
        Ret = AO_SND_GetSpdifSCMSMode(pstSCMSMode->enSound, pstSCMSMode->enOutPort, &pstSCMSMode->enSCMSMode);
        break;
    }

    case CMD_AO_SND_SETSPDIFCATEGORYCODE:
    {
        AO_SND_SpdifCategoryCode_Param_S_PTR pstCategoryCode = (AO_SND_SpdifCategoryCode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstCategoryCode->enSound );
        Ret = AO_SND_SetSpdifCategoryCode(pstCategoryCode->enSound, pstCategoryCode->enOutPort, pstCategoryCode->enCategoryCode);
        break;
    }
    case CMD_AO_SND_GETSPDIFCATEGORYCODE:
    {
        AO_SND_SpdifCategoryCode_Param_S_PTR pstCategoryCode = (AO_SND_SpdifCategoryCode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstCategoryCode->enSound );
        Ret = AO_SND_GetSpdifCategoryCode(pstCategoryCode->enSound, pstCategoryCode->enOutPort, &pstCategoryCode->enCategoryCode);
        break;
    }
    case CMD_AO_SND_SETSAMPLERATE:
    {
        AO_SND_SampleRate_Param_S_PTR pstSampleRate = (AO_SND_SampleRate_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSampleRate->enSound );
        Ret = AO_SND_SetSampleRate(pstSampleRate->enSound, pstSampleRate->enOutPort, pstSampleRate->enSampleRate);
        break;
    }

    case CMD_AO_SND_GETSAMPLERATE:
    {
        AO_SND_SampleRate_Param_S_PTR pstSampleRate = (AO_SND_SampleRate_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSampleRate->enSound );
        Ret = AO_SND_GetSampleRate(pstSampleRate->enSound, pstSampleRate->enOutPort, &pstSampleRate->enSampleRate);
        break;
    }

    case CMD_AO_SND_SETTRACKMODE:
    {
        AO_SND_TrackMode_Param_S_PTR pstMode = (AO_SND_TrackMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_SetTrackMode(pstMode->enSound, pstMode->enOutPort, pstMode->enMode);
        break;
    }

    case CMD_AO_SND_GETTRACKMODE:
    {
        AO_SND_TrackMode_Param_S_PTR pstMode = (AO_SND_TrackMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstMode->enSound );
        Ret = AO_SND_GetTrackMode(pstMode->enSound, pstMode->enOutPort, &pstMode->enMode);
        break;
    }

    case CMD_AO_SND_SETALLTRACKMUTE:
	{
        AO_SND_AllTrackMute_Param_S_PTR pstAllMute = (AO_SND_AllTrackMute_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstAllMute->enSound );
        Ret = AO_SND_SetAllTrackMute(pstAllMute->enSound, pstAllMute->bMute);
        break;
	}
    case CMD_AO_SND_GETALLTRACKMUTE:
	{
        AO_SND_AllTrackMute_Param_S_PTR pstAllMute = (AO_SND_AllTrackMute_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstAllMute->enSound );
        Ret = AO_SND_GetAllTrackMute(pstAllMute->enSound, &pstAllMute->bMute);
        break;
	}
    case CMD_AO_SND_SETSMARTVOLUME:
    {
        AO_SND_SmartVolume_Param_S_PTR pstSmartVol = (AO_SND_SmartVolume_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSmartVol->enSound );
        Ret = AO_SND_SetSmartVolume(pstSmartVol->enSound, pstSmartVol->enOutPort, pstSmartVol->bSmartVolume);
        break;
    }

    case CMD_AO_SND_GETSMARTVOLUME:
    {
        AO_SND_SmartVolume_Param_S_PTR pstSmartVol = (AO_SND_SmartVolume_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN( pstSmartVol->enSound );
        Ret = AO_SND_GetSmartVolume(pstSmartVol->enSound, pstSmartVol->enOutPort, &pstSmartVol->bSmartVolume);
        break;
    }

    case CMD_AO_SND_SETLOWLATENCY:
    {
        AO_SND_Set_LowLatency_Param_S_PTR pstLowLatencyParam = (AO_SND_Set_LowLatency_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstLowLatencyParam->enSound);
        Ret = AO_Snd_SetLowLatency(pstLowLatencyParam->enSound,pstLowLatencyParam->eOutPort, pstLowLatencyParam->u32LatencyMs);
        break;
    }
	
    case CMD_AO_SND_GETLOWLATENCY:
    {
        AO_SND_Set_LowLatency_Param_S_PTR pstLowLatencyParam = (AO_SND_Set_LowLatency_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstLowLatencyParam->enSound);
        Ret = AO_Snd_GetLowLatency(pstLowLatencyParam->enSound,pstLowLatencyParam->eOutPort, &pstLowLatencyParam->u32LatencyMs);
        break;
    }
	
    case CMD_AO_SND_ATTACHAEF:
    {
        AO_SND_AttAef_Param_S_PTR pstSndAttAef = (AO_SND_AttAef_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstSndAttAef->enSound);
        Ret = AO_SND_AttachAef(pstSndAttAef->enSound, pstSndAttAef->u32AefId, &pstSndAttAef->u32AefProcAddr);
        break;
    }

    case CMD_AO_SND_DETACHAEF:
    {
        AO_SND_AttAef_Param_S_PTR pstSndAttAef = (AO_SND_AttAef_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstSndAttAef->enSound);
        Ret = AO_SND_DetachAef(pstSndAttAef->enSound, pstSndAttAef->u32AefId);
        break;
    }

    case CMD_AO_SND_SETAEFBYPASS:
    {
        AO_SND_AefBypass_Param_S_PTR pstAefBypass = (AO_SND_AefBypass_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstAefBypass->enSound);
        Ret = AO_SND_SetAefBypass(pstAefBypass->enSound, pstAefBypass->enOutPort, pstAefBypass->bBypass);
        break;
    }

    case CMD_AO_SND_GETAEFBYPASS:
    {
        AO_SND_AefBypass_Param_S_PTR pstAefBypass = (AO_SND_AefBypass_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstAefBypass->enSound);
        Ret = AO_SND_GetAefBypass(pstAefBypass->enSound, pstAefBypass->enOutPort, &pstAefBypass->bBypass);
        break;
    }
    case CMD_AO_SND_GETXRUNCOUNT:
    {
        AO_SND_Get_Xrun_Param_S_PTR pstXrunStatus = (AO_SND_Get_Xrun_Param_S_PTR)arg;

        CHECK_AO_SNDCARD_OPEN(pstXrunStatus->enSound);
        Ret = AO_Snd_GetXRunCount(pstXrunStatus->enSound, &pstXrunStatus->u32Count);

        break;
    }

    case CMD_AO_CAST_GETDEFATTR:
    {
        HI_UNF_SND_CAST_ATTR_S *pstDefAttr = (HI_UNF_SND_CAST_ATTR_S *)arg;
        Ret = AO_Cast_GetDefAttr(pstDefAttr);
        break;
    }

    case CMD_AO_CAST_CREATE:
    {
        AO_Cast_Create_Param_S_PTR  pstCastAttr = (AO_Cast_Create_Param_S_PTR)arg;

        //HI_ERR_AO("CMD_AO_CAST_CREATE\n");
        CHECK_AO_SNDCARD_OPEN( pstCastAttr->enSound);

        if (HI_SUCCESS == AO_Cast_AllocHandle(&hHandle, file, &pstCastAttr->stCastAttr))
        {
            Ret = AO_Cast_Create(pstCastAttr->enSound, &pstCastAttr->stCastAttr, &s_stAoDrv.astCastEntity[hHandle
                                                                                                          & AO_CAST_CHNID_MASK].stRbfMmz,
                                 hHandle);
            if (HI_SUCCESS != Ret)
            {
                AO_Cast_FreeHandle(hHandle);
                break;
            }

            AO_Cast_SaveSuspendAttr(pstCastAttr->enSound, hHandle, &pstCastAttr->stCastAttr);
            pstCastAttr->u32ReqSize = s_stAoDrv.astCastEntity[hHandle & AO_CAST_CHNID_MASK].u32ReqSize;
            pstCastAttr->hCast = hHandle;
        }
        break;
    }
    case CMD_AO_CAST_DESTROY:
    {
        HI_HANDLE  hCast = *(HI_HANDLE *)arg;
        //HI_ERR_AO("CMD_AO_CAST_DESTORY\n");

        CHECK_AO_CAST_OPEN(hCast);
        Ret = AO_Cast_Destory(hCast);
        if (HI_SUCCESS != Ret)
        {
            break;
        }
        AO_Cast_FreeHandle(hCast);
        break;
    }

    case CMD_AO_CAST_SETINFO:
    {
        AO_Cast_Info_Param_S_PTR pstInfo = (AO_Cast_Info_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstInfo->hCast);

        //HI_ERR_AO("CMD_AO_CAST_SETINFO  CastID=0x%x, u32UserVirtAddr=0x%x\n",pstInfo->hCast, pstInfo->u32UserVirtAddr);
        Ret = AO_Cast_SetInfo(pstInfo->hCast, pstInfo->u32UserVirtAddr);
        break;
    }
    case CMD_AO_CAST_GETINFO:
    {
        AO_Cast_Info_Param_S_PTR pstInfo = (AO_Cast_Info_Param_S_PTR)arg;
        //HI_ERR_AO("pstInfo->hCast=0x%x \n", pstInfo->hCast);
        CHECK_AO_CAST_OPEN(pstInfo->hCast);
        Ret = AO_Cast_GetInfo(pstInfo->hCast, pstInfo);
        //HI_ERR_AO("CMD_AO_CAST_GETINFO  CastID=0x%x, u32UserVirtAddr=0x%x Ret=0x%x\n",pstInfo->hCast, pstInfo->u32UserVirtAddr, Ret);
        break;
    }

    case CMD_AO_CAST_SETENABLE:
    {
        AO_Cast_Enable_Param_S_PTR pstEnable = (AO_Cast_Enable_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstEnable->hCast);
        //HI_ERR_AO("CMD_AO_CAST_SETENABLE  CastID=0x%x, bCastEnable=0x%x\n",pstEnable->hCast, pstEnable->bCastEnable);
        Ret = AO_Cast_SetEnable(pstEnable->hCast, pstEnable->bCastEnable);
        break;
    }

    case CMD_AO_CAST_GETENABLE:
    {
        AO_Cast_Enable_Param_S_PTR pstEnable = (AO_Cast_Enable_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstEnable->hCast);
        //HI_ERR_AO("CMD_AO_CAST_GETENABLE CastID=0x%x, bCastEnable=0x%x\n",pstEnable->hCast, pstEnable->bCastEnable);
        Ret = AO_Cast_GetEnable(pstEnable->hCast, &pstEnable->bCastEnable);
        break;
    }

    case CMD_AO_CAST_ACQUIREFRAME:
    {
        AO_Cast_Data_Param_S_PTR pstCastData = (AO_Cast_Data_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstCastData->hCast);

        Ret = AO_Cast_ReadData(pstCastData->hCast, pstCastData);
        break;
    }
    case CMD_AO_CAST_RELEASEFRAME:
    {
        AO_Cast_Data_Param_S_PTR pstCastData = (AO_Cast_Data_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstCastData->hCast);
        //HI_ERR_AO("CMD_AO_CAST_RELEASEFRAME  CastID=0x%x\n",pstCastData->hCast);
        Ret = AO_Cast_ReleseData(pstCastData->hCast, pstCastData);

        break;
    }
    case CMD_AO_CAST_SETABSGAIN:
    {
        AO_Cast_AbsGain_Param_S_PTR pstAbsGain = (AO_Cast_AbsGain_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstAbsGain->hCast);
        Ret = AO_Cast_SetAbsGain(pstAbsGain->hCast, pstAbsGain->stCastAbsGain);
        break;
    }
    case CMD_AO_CAST_GETABSGAIN:
    {
        AO_Cast_AbsGain_Param_S_PTR pstAbsGain = (AO_Cast_AbsGain_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstAbsGain->hCast);
        Ret = AO_Cast_GetAbsGain(pstAbsGain->hCast, &pstAbsGain->stCastAbsGain);
        break;
    }
    case CMD_AO_CAST_SETMUTE:
    {
        AO_Cast_Mute_Param_S_PTR pstMute = (AO_Cast_Mute_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstMute->hCast);
        Ret = AO_Cast_SetMute(pstMute->hCast, pstMute->bMute);
        break;
    }
    case CMD_AO_CAST_GETMUTE:
    {
        AO_Cast_Mute_Param_S_PTR pstMute = (AO_Cast_Mute_Param_S_PTR)arg;
        CHECK_AO_CAST_OPEN(pstMute->hCast);
        Ret = AO_Cast_GetMute(pstMute->hCast, &pstMute->bMute);
        break;
    }

    case CMD_AO_SND_ATTACHTRACK:
        break;
    case CMD_AO_SND_DETACHTRACK:
        break;

        //Track CMD TYPE (call hal_aoe)
    case CMD_AO_TRACK_GETDEFATTR:
    {
        HI_UNF_AUDIOTRACK_ATTR_S *pstDefAttr = (HI_UNF_AUDIOTRACK_ATTR_S *)arg;
        Ret = AO_Track_GetDefAttr(pstDefAttr);
        break;
    }
    case CMD_AO_TRACK_SETATTR:
    {
        AO_Track_Attr_Param_S_PTR pstTrackAttr = (AO_Track_Attr_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackAttr->hTrack);
        Ret = AO_Track_PreSetAttr(pstTrackAttr->hTrack, &pstTrackAttr->stAttr);
        break;
    }
    case CMD_AO_TRACK_GETATTR:
    {
        AO_Track_Attr_Param_S_PTR pstTrackAttr = (AO_Track_Attr_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackAttr->hTrack);
        Ret = AO_Track_GetAttr(pstTrackAttr->hTrack, &pstTrackAttr->stAttr);
        break;
    }    
    case CMD_AO_TRACK_MMAPTRACKATTR:
    {
        AO_Track_GetTrackMapInfo_Param_S_PTR pstTrackMapInfo = (AO_Track_GetTrackMapInfo_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackMapInfo->hTrack);
        Ret = AO_Track_MmapTrackAttr(pstTrackMapInfo->hTrack, &pstTrackMapInfo->u32AipRegAddr,&pstTrackMapInfo->stTrackMmapAttr);
        break;
    }

    case CMD_AO_TRACK_CREATE:
    {
        AO_Track_Create_Param_S_PTR pstTrack = (AO_Track_Create_Param_S_PTR)arg;
        Ret = AO_Track_AllocHandle(&hHandle, pstTrack->stAttr.enTrackType, file);
        if (HI_SUCCESS == Ret)
        {
            Ret = AO_Track_PreCreate(pstTrack->enSound, &pstTrack->stAttr, pstTrack->bAlsaTrack,
                                     &pstTrack->stBuf, hHandle);
            if (HI_SUCCESS != Ret)
            {
                AO_Track_FreeHandle(hHandle);
                break;
            }

            AO_TRACK_SaveSuspendAttr(hHandle, pstTrack);
            pstTrack->hTrack = hHandle;
        }

        break;
    }

    case CMD_AO_TRACK_DESTROY:
    {
        HI_HANDLE hTrack = *(HI_HANDLE *)arg;
        CHECK_AO_TRACK_OPEN(hTrack);
        Ret = AO_Track_Destory( hTrack );
        if (HI_SUCCESS != Ret)
        {
            HI_ERR_AO("AO_Track_Destory failed Ret %x\n",Ret);
            break;
        }

        AO_Track_FreeHandle(hTrack);

        break;
    }
    case CMD_AO_TRACK_START:
    {
        HI_HANDLE hTrack = *(HI_HANDLE *)arg;
        CHECK_AO_TRACK_OPEN(hTrack);
        Ret = AO_Track_Start(hTrack);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("AO_Track_Start failed %x\n",Ret);
        }
        break;
    }

    case CMD_AO_TRACK_STOP:
    {
        HI_HANDLE hTrack = *(HI_HANDLE *)arg;
        CHECK_AO_TRACK_OPEN(hTrack);
        Ret = AO_Track_Stop(hTrack);
        if(Ret != HI_SUCCESS)
        {
            HI_ERR_AO("AO_Track_Stop failed %x\n",Ret);
        }
        break;
    }

    case CMD_AO_TRACK_PAUSE:
    {
        HI_HANDLE hTrack = *(HI_HANDLE *)arg;
        CHECK_AO_TRACK_OPEN(hTrack);
        Ret = AO_Track_Pause(hTrack);
        break;
    }

    case CMD_AO_TRACK_FLUSH:
    {
        HI_HANDLE hTrack = *(HI_HANDLE *)arg;
        CHECK_AO_TRACK_OPEN(hTrack);
        Ret = AO_Track_Flush(hTrack);
        break;
    }

    case CMD_AO_TRACK_SENDDATA:
    {
        AO_Track_SendData_Param_S_PTR pstData = (AO_Track_SendData_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstData->hTrack);
        Ret = AO_Track_SendData(pstData->hTrack, &pstData->stAOFrame);
        if (HI_FAILURE== Ret)
        {
            HI_ERR_AO("AO_Track_SendData failed %x\n",Ret);
        }

        break;
    }

    case CMD_AO_TRACK_SETWEITHT:
    {
        AO_Track_Weight_Param_S_PTR pstWeight = (AO_Track_Weight_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstWeight->hTrack);
        Ret = AO_Track_SetWeight(pstWeight->hTrack, pstWeight->stTrackGain);
        break;
    }

    case CMD_AO_TRACK_GETWEITHT:
    {
        AO_Track_Weight_Param_S_PTR pstWeight = (AO_Track_Weight_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstWeight->hTrack);
        Ret = AO_Track_GetWeight(pstWeight->hTrack, &pstWeight->stTrackGain);
        break;
    }

    case CMD_AO_TRACK_SETABSGAIN:
    {
        AO_Track_AbsGain_Param_S_PTR pstAbsGain = (AO_Track_AbsGain_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstAbsGain->hTrack);
        Ret = AO_Track_SetAbsGain(pstAbsGain->hTrack, pstAbsGain->stTrackAbsGain);
        break;
    }
    case CMD_AO_TRACK_GETABSGAIN:
    {
        AO_Track_AbsGain_Param_S_PTR pstAbsGain = (AO_Track_AbsGain_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstAbsGain->hTrack);
        Ret = AO_Track_GetAbsGain(pstAbsGain->hTrack, &pstAbsGain->stTrackAbsGain);
      break;
    }
    case CMD_AO_TRACK_SETMUTE:
    {
        AO_Track_Mute_Param_S_PTR pstMute = (AO_Track_Mute_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstMute->hTrack);
        Ret = AO_Track_SetMute(pstMute->hTrack, pstMute->bMute);
        break;
    }
    case CMD_AO_TRACK_GETMUTE:
    {
        AO_Track_Mute_Param_S_PTR pstMute = (AO_Track_Mute_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstMute->hTrack);
        Ret = AO_Track_GetMute(pstMute->hTrack, &pstMute->bMute);
        break;
    }

	case CMD_AO_TRACK_SETCHANNELMODE:
	{
        AO_Track_ChannelMode_Param_S_PTR pstChannelMode = (AO_Track_ChannelMode_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstChannelMode->hTrack);
        Ret = AO_Track_SetChannelMode(pstChannelMode->hTrack, pstChannelMode->enMode);
		break;
	}
	case CMD_AO_TRACK_GETCHANNELMODE:
	{
        AO_Track_ChannelMode_Param_S_PTR pstChannelMode = (AO_Track_ChannelMode_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstChannelMode->hTrack);
        Ret = AO_Track_GetChannelMode(pstChannelMode->hTrack, &pstChannelMode->enMode);
		break;
	}
	
	case CMD_AO_TRACK_SETFIFOBYPASS:
	{
        AO_Track_FifoBypass_Param_S_PTR pstFifoBypass = (AO_Track_FifoBypass_Param_S_PTR)arg;
        HI_HANDLE hTrack = pstFifoBypass->hTrack;
        CHECK_AO_TRACK_OPEN(hTrack);
        CHECK_AO_TRACK_OPEN(pstFifoBypass->hTrack);
        Ret = AO_TrackSetAipFiFoBypass(hTrack, pstFifoBypass->bEnable);
		break;
	}

        case CMD_AO_TRACK_SETPRIORITY:
        {
        AO_Track_Priority_Param_S_PTR pstTrackPriority = (AO_Track_Priority_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackPriority->hTrack);
        Ret = AO_Track_SePriority(pstTrackPriority->hTrack, pstTrackPriority->bEnable);
        break;
        }
        case CMD_AO_TRACK_GETPRIORITY:
       {
        AO_Track_Priority_Param_S_PTR pstTrackPriority = (AO_Track_Priority_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackPriority->hTrack);
        Ret = AO_Track_GePriority(pstTrackPriority->hTrack, &pstTrackPriority->bEnable);
        break;
       }
	   
    case CMD_AO_TRACK_SETSPEEDADJUST:
    {
        AO_Track_SpeedAdjust_Param_S_PTR pstSpeed = (AO_Track_SpeedAdjust_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstSpeed->hTrack);
        Ret = AO_Track_SetSpeedAdjust(pstSpeed->hTrack, pstSpeed->enType, pstSpeed->s32Speed);
        break;
    }

    case CMD_AO_TRACK_GETDELAYMS:
    {
        AO_Track_DelayMs_Param_S_PTR pstDelayMs = (AO_Track_DelayMs_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstDelayMs->hTrack);
        Ret = AO_Track_GetDelayMs(pstDelayMs->hTrack, &pstDelayMs->u32DelayMs);
        break;
    }

    case CMD_AO_TRACK_ISBUFEMPTY:
    {
        AO_Track_BufEmpty_Param_S_PTR pstBufEmpty = (AO_Track_BufEmpty_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstBufEmpty->hTrack);
        Ret = AO_Track_IsBufEmpty(pstBufEmpty->hTrack, &pstBufEmpty->bEmpty);
        break;
    }

    case CMD_AO_TRACK_SETEOSFLAG:
    {
        AO_Track_EosFlag_Param_S_PTR pstEosFlag = (AO_Track_EosFlag_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstEosFlag->hTrack);
        Ret = AO_Track_SetEosFlag(pstEosFlag->hTrack, pstEosFlag->bEosFlag);
        break;
    }

    case CMD_AO_TRACK_ATTACHAI:
    {
        AO_Track_AttAi_Param_S_PTR pstTrackAttAi = (AO_Track_AttAi_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackAttAi->hTrack);
        Ret = AO_Track_AttachAi(pstTrackAttAi->hTrack, pstTrackAttAi->hAi);
        break;
    }

    case CMD_AO_TRACK_DETACHAI:
    {
        AO_Track_AttAi_Param_S_PTR pstTrackDetAi = (AO_Track_AttAi_Param_S_PTR)arg;
        CHECK_AO_TRACK_OPEN(pstTrackDetAi->hTrack);
        Ret = AO_Track_DetachAi(pstTrackDetAi->hTrack, pstTrackDetAi->hAi);
        break;
    }

    case CMD_AO_SND_GETPORTINFO:
    {
        AO_SND_GetPortInfo_Param_S_PTR pstPortInfoParam = (AO_SND_GetPortInfo_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstPortInfoParam->enSound);
        Ret = AO_Snd_GetPortInfo(pstPortInfoParam->enSound, pstPortInfoParam->stPortKAttr);
        break;
    }

    case CMD_AO_SND_SETDMAMODE:
    {
        AO_SND_SetDMAMode_Param_S_PTR pstParam = (AO_SND_SetDMAMode_Param_S_PTR)arg;
        CHECK_AO_SNDCARD_OPEN(pstParam->enSound);
        Ret = AO_Snd_SetDMAMode(pstParam->enSound, pstParam->bEnable, pstParam->enSampleRate);
        break;
    }

    default:
        Ret = HI_FAILURE;
        {
            HI_WARN_AO("unknown cmd: 0x%x\n", cmd);
        }
        break;
    }

    return Ret;
}

long AO_DRV_Ioctl(struct file *file, HI_U32 cmd, unsigned long arg)
{
    long s32Ret = HI_SUCCESS;

    s32Ret = down_interruptible(&g_AoMutex);

    //cmd process
    s32Ret = (long)HI_DRV_UserCopy(file->f_dentry->d_inode, file, cmd, arg, AO_ProcessCmd);

    up(&g_AoMutex);

    return s32Ret;
}

HI_S32 AO_DRV_Open(struct inode *inode, struct file  *filp)
{
    HI_S32 s32Ret;
    HI_U32 cnt;
    DRV_AO_STATE_S *pAOState = HI_NULL;

    if(!filp)
    {
        HI_FATAL_AO("file handle is null.\n");
        return HI_FAILURE;
    }

    s32Ret = down_interruptible(&g_AoMutex);

    pAOState = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(DRV_AO_STATE_S), GFP_KERNEL);
    if (!pAOState)
    {
        HI_FATAL_AO("malloc pAOState failed.\n");
        up(&g_AoMutex);
        return HI_FAILURE;
    }
    for(cnt = 0; cnt < AO_MAX_TOTAL_SND_NUM; cnt++)
	{
        atomic_set(&(pAOState->atmUserOpenCnt[cnt]), 0);
        pAOState->u32FileId[cnt] = AO_SND_FILE_NOUSE_FLAG;
	}

    if (atomic_inc_return(&s_stAoDrv.atmOpenCnt) == 1)
    {
        /* Init device */
        if (HI_SUCCESS != AO_OpenDev())
        {
            HI_FATAL_AO("AO_OpenDev err!\n" );
            goto err;
        }
    }

    filp->private_data = pAOState;

    up(&g_AoMutex);
    return HI_SUCCESS;
err:
    AUTIL_AO_FREE(HI_ID_AO, pAOState);
    atomic_dec(&s_stAoDrv.atmOpenCnt);
    up(&g_AoMutex);
    return HI_FAILURE;
}

HI_S32 AO_DRV_Release(struct inode *inode, struct file  *filp)
{
    HI_U32 i;
    HI_U32 j;

    long s32Ret = HI_SUCCESS;
    DRV_AO_STATE_S *pAOState = filp->private_data;

    s32Ret = down_interruptible(&g_AoMutex);

    /* Not the last close, only close the track & snd match with the 'filp' */
    if (atomic_dec_return(&s_stAoDrv.atmOpenCnt) != 0)
    {
        /* Free all Cast */
        for (i = 0; i < AO_MAX_CAST_NUM; i++)
        {
            if (s_stAoDrv.astCastEntity[i].u32File == ((HI_U32)filp))
            {
                if (atomic_read(&s_stAoDrv.astCastEntity[i].atmUseCnt))
                {
                    if (HI_SUCCESS != AO_Cast_Destory(i))
                    {
                        atomic_inc(&s_stAoDrv.atmOpenCnt);
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }
                    AO_Cast_FreeHandle(i);
                }
            }
        }
        /* Free all track */
        for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
        {
            if (s_stAoDrv.astTrackEntity[i].u32File == ((HI_U32)filp))
            {
                if (atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
                {
                    if (HI_SUCCESS != AO_Track_Destory(i))
                    {
                        atomic_inc(&s_stAoDrv.atmOpenCnt);
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }

                    AO_Track_FreeHandleById(i);
                }
            }
        }

        /* Free all snd */
        for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
        {
            for(j = 0; j < SND_MAX_OPEN_NUM; j++)
            {
                if (s_stAoDrv.astSndEntity[i].u32File[j] == ((HI_U32)filp))
                {
                        HI_U32 u32UserOpenCnt = 0;

                        if (s_stAoDrv.astSndEntity[i].pCard)
                        {
                           u32UserOpenCnt = atomic_read(&pAOState->atmUserOpenCnt[i]);
                            if(atomic_sub_and_test(u32UserOpenCnt, &s_stAoDrv.astSndEntity[i].atmUseTotalCnt))
                            {
                                if (HI_SUCCESS != AO_SND_Close(i, HI_FALSE))
                                {
                                    atomic_inc(&s_stAoDrv.astSndEntity[i].atmUseTotalCnt);
                                    atomic_inc(&s_stAoDrv.atmOpenCnt);
                                    up(&g_AoMutex);
                                    return HI_FAILURE;
                                }
                            }
                            AO_Snd_ResetDMAMode(i);

                            AO_Snd_FreeHandle(i, (struct file *)(s_stAoDrv.astSndEntity[i].u32File[j]));
                        }
                }
           }

        }
    }
    /* Last close */
    else
    {
        AO_CloseDev();
    }

    AUTIL_AO_FREE(HI_ID_AO, pAOState);
    up(&g_AoMutex);
    return HI_SUCCESS;
}

/* drv open  kernel intf */
HI_S32 AO_DRV_Kopen(struct file  *file)
{
    HI_S32 s32Ret;
    HI_U32 cnt;
    DRV_AO_STATE_S *pAOState = HI_NULL;

    if(!file)
    {
        HI_FATAL_AO("file handle is null.\n");
        return HI_FAILURE;
    }

    s32Ret = down_interruptible(&g_AoMutex);

    pAOState = AUTIL_AO_MALLOC(HI_ID_AO, sizeof(DRV_AO_STATE_S), GFP_KERNEL);
    if (!pAOState)
    {
        HI_FATAL_AO("malloc pAOState failed.\n");
        up(&g_AoMutex);
        return HI_FAILURE;
    }
    for(cnt = 0; cnt < AO_MAX_TOTAL_SND_NUM; cnt++)
	{
        atomic_set(&(pAOState->atmUserOpenCnt[cnt]), 0);
        pAOState->u32FileId[cnt] = AO_SND_FILE_NOUSE_FLAG;
    }

    if (atomic_inc_return(&s_stAoDrv.atmOpenCnt) == 1)
    {
       /* Init device */
        if (HI_SUCCESS != AO_OpenDev())
        {
            HI_FATAL_AO("AO_OpenDev err!\n" );
            goto err;
        }
    }

    file->private_data = pAOState;

    up(&g_AoMutex);
    return HI_SUCCESS;
err:
    AUTIL_AO_FREE(HI_ID_AO, pAOState);
    atomic_dec(&s_stAoDrv.atmOpenCnt);
    up(&g_AoMutex);
    return HI_FAILURE;
}
/*drv close kernel intf */
HI_S32 AO_DRV_Krelease(struct file  *file)
{
    HI_U32 i;
    HI_U32 j;
    long s32Ret = HI_SUCCESS;
    DRV_AO_STATE_S *pAOState = file->private_data;

    s32Ret = down_interruptible(&g_AoMutex);

    /* Not the last close, only close the track & snd match with the 'filp' */
    if (atomic_dec_return(&s_stAoDrv.atmOpenCnt) != 0)
    {
        /* Free all track */
        for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
        {
            if (s_stAoDrv.astTrackEntity[i].u32File == ((HI_U32)file))
            {
                if (atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
                {
                    if (HI_SUCCESS != AO_Track_Destory(i))
                    {
                        atomic_inc(&s_stAoDrv.atmOpenCnt);
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }

                    AO_Track_FreeHandleById(i);
                }
            }
        }

        /* Free all snd */
        for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
        {
            for(j = 0; j < SND_MAX_OPEN_NUM; j++)
            {
                if (s_stAoDrv.astSndEntity[i].u32File[j] == ((HI_U32)file))
                {
                        HI_U32 u32UserOpenCnt = 0;
                        if (s_stAoDrv.astSndEntity[i].pCard)
                        {
                           u32UserOpenCnt = atomic_read(&pAOState->atmUserOpenCnt[i]);
                            if(atomic_sub_and_test(u32UserOpenCnt, &s_stAoDrv.astSndEntity[i].atmUseTotalCnt))
                            {
                                if (HI_SUCCESS != AO_SND_Close(i, HI_FALSE))
                                {
                                    atomic_inc(&s_stAoDrv.astSndEntity[i].atmUseTotalCnt);
                                    atomic_inc(&s_stAoDrv.atmOpenCnt);
                                    up(&g_AoMutex);
                                    return HI_FAILURE;
                                }
                            }

                            AO_Snd_FreeHandle(i, (struct file *)(s_stAoDrv.astSndEntity[i].u32File[j]));
                        }
                }
           }

        }
    }
    /* Last close */
    else
    {
        AO_CloseDev();
    }

    AUTIL_AO_FREE(HI_ID_AO, pAOState);
    up(&g_AoMutex);
    return HI_SUCCESS;
}
#if defined (HI_ALSA_I2S_ONLY_SUPPORT)|| defined (HI_ALSA_HDMI_ONLY_SUPPORT)
 HI_S32 AO_DRV_Krelease(struct file  *file);
HI_S32 AOSetProcStatistics(AIAO_IsrFunc *pFunc)//only for alsa use
{
    HAL_AIAO_P_SetTxI2SDfAttr(AIAO_PORT_TX0,pFunc);  //pIsrFunc is the same for all ports
    return HI_SUCCESS;
}
 HI_S32 AOGetProcStatistics(AIAO_IsrFunc **pFunc)//only for alsa use
 {
     AIAO_PORT_USER_CFG_S pAttr;
     HAL_AIAO_P_GetTxI2SDfAttr(AIAO_PORT_TX0,&pAttr);  //pIsrFunc is the same for all ports
     *pFunc = pAttr.pIsrFunc;
     return HI_SUCCESS;
 }
HI_S32 AOGetEnport(HI_UNF_SND_E enSound,AIAO_PORT_ID_E *enPort,SND_OUTPUT_TYPE_E enOutType)  //jiaxi check
{
     HI_HANDLE        hSndOp;
     SND_OP_STATE_S   *state;
     AIAO_PORT_ID_E   enAOPort;
     SND_CARD_STATE_S *pCard;
     pCard = SND_CARD_GetCard(enSound);
     if(pCard!= HI_NULL)
     {
        if(enOutType == SND_OUTPUT_TYPE_HDMI)
           hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_HDMI);
        else
           hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_I2S);
     }
     else
     {
        goto _GET_ERR;
     }
     state = (SND_OP_STATE_S *)hSndOp;
     if(state != HI_NULL)
     {
        enAOPort = state->enPortID[state->ActiveId];
     }
     else
     {
        goto _GET_ERR;
     }
     *enPort = enAOPort;
    return HI_SUCCESS;
_GET_ERR:
        HI_FATAL_AO("Get Enpot Error\n");
        return HI_FAILURE;
}
HI_S32 AOGetHandel(HI_UNF_SND_E enSound,HI_HANDLE *hSndOp,SND_OUTPUT_TYPE_E enOutType)  //jiaxi check
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);
     if(pCard!= HI_NULL)
     {
        if(enOutType == SND_OUTPUT_TYPE_HDMI)//HI_ALSA_HDMI_ONLY_SUPPORT
           *hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_HDMI);
        else
           *hSndOp = SND_GetOpHandlebyOutType(pCard, SND_OUTPUT_TYPE_I2S);
     }
     else
     {
        goto _GET_ERR;
     }
    if(hSndOp == HI_NULL)
    {
        goto _GET_ERR;
    }
    return HI_SUCCESS;
_GET_ERR:
    HI_FATAL_AO("Get AOGetHandel Error\n");
    return HI_FAILURE;
}
HI_S32 Alsa_AO_OpenDev(struct file  *file,void *p)
{
   if (HI_SUCCESS !=AO_DRV_Kopen(file))
   {
       HI_FATAL_AO("AO_DRV_Kopen err!\n" );
       goto err;
   }
   if (HI_SUCCESS !=AO_Snd_Kopen((AO_SND_Open_Param_S*)p, file))
   {
       AO_DRV_Krelease(file);
       HI_FATAL_AO("\n AO_Snd_Kopen err\n");
       goto err;
   }
   return HI_SUCCESS;
err:
    return HI_FAILURE;
}
HI_S32 Alsa_AO_CloseDev(struct file  *file,HI_UNF_SND_E snd_idx)
{
    if (HI_SUCCESS !=AO_Snd_Kclose(snd_idx,file))
    {
        HI_FATAL_AO("AO_Snd_Kclose rr!\n" );
        goto err;
    }
    if (HI_SUCCESS !=AO_DRV_Krelease(file))
    {
        HI_FATAL_AO("AO_DRV_Krelease err!\n" );
        goto err;
    }
return HI_SUCCESS;
err:
    return HI_FAILURE;
}
#endif

HI_S32 AO_DRV_RegisterProc(AO_REGISTER_PARAM_S * pstParam)
{
    HI_U32 i;

    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    s_stAoDrv.pstProcParam = pstParam;

    /* Create proc when use, if MCE open snd , reg proc here*/
	for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
    {
        if (s_stAoDrv.astSndEntity[i].pCard)
        {
            AO_RegProc(i);
        }
    }
    return HI_SUCCESS;
}

HI_VOID AO_DRV_UnregisterProc(HI_VOID)
{

    /* Clear param */
    s_stAoDrv.pstProcParam = HI_NULL;
    return;
}

#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
static HI_S32 AO_TRACK_GetSettings(HI_HANDLE hTrack, SND_TRACK_SETTINGS_S* pstSndSettings)
{
    SND_CARD_STATE_S *pCard;

    hTrack &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(hTrack);
    if(pCard)
    {
        return TRACK_GetSetting(pCard, hTrack, pstSndSettings);
    }
    else
    {
        HI_ERR_AO("Track(%d) don't attach card!\n",hTrack);
        return HI_FAILURE;
    }
}

static HI_S32 AO_TRACK_RestoreSettings(HI_HANDLE hTrack, SND_TRACK_SETTINGS_S* pstSndSettings)
{
    SND_CARD_STATE_S *pCard;

    hTrack &= AO_TRACK_CHNID_MASK;
    pCard = TRACK_CARD_GetCard(hTrack);
    if(pCard)
    {
        return TRACK_RestoreSetting(pCard, hTrack, pstSndSettings);
    }
    else
    {
        HI_ERR_AO("Track(%d) don't attach card!\n",hTrack);
        return HI_FAILURE;
    }
}

static HI_S32 AO_SND_GetSettings(HI_UNF_SND_E enSound, SND_CARD_SETTINGS_S* pstSndSettings)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_NULL_PTR(pstSndSettings);

    pstSndSettings->bAllTrackMute = pCard->bAllTrackMute;
    if(HI_SUCCESS != SND_GetOpSetting(pCard, pstSndSettings))
    {
        return HI_FAILURE;
    }

    if(HI_SUCCESS != AEF_GetSetting(pCard, pstSndSettings))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 AO_SND_RestoreSettings(HI_UNF_SND_E enSound, SND_CARD_SETTINGS_S* pstSndSettings)
{
    SND_CARD_STATE_S *pCard = SND_CARD_GetCard(enSound);

    CHECK_AO_NULL_PTR(pCard);
    CHECK_AO_NULL_PTR(pstSndSettings);
	pCard->bAllTrackMute = pstSndSettings->bAllTrackMute; //All track mute restore in Track restore.

    if(HI_SUCCESS != SND_RestoreOpSetting(pCard, pstSndSettings))
    {
        return HI_FAILURE;
    }

    if(HI_SUCCESS != AEF_RestoreSetting(pCard, pstSndSettings))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

#endif

HI_S32 HI_DRV_AO_Init(HI_VOID)
{
    return AO_DRV_Init();
}

HI_VOID HI_DRV_AO_DeInit(HI_VOID)
{
    AO_DRV_Exit();
}

HI_S32 HI_DRV_AO_SND_Init(struct file  *pfile)
{
    struct file  *pstfilp;

    if(HI_NULL == pfile)
	{
        pstfilp = &g_filp;
    }
	else
    {
        pstfilp = pfile;
    }

	HI_INFO_AO("\nHI_DRV_AO_SND_Init file=%p\n", pfile);

    return AO_DRV_Open(NULL, pstfilp);
}

HI_S32 HI_DRV_AO_SND_DeInit(struct file  *pfile)
{
    struct file  *pstfilp;

    if(HI_NULL == pfile)
    {
        pstfilp = &g_filp;
    }
    else
    {
        pstfilp = pfile;
    }
    HI_INFO_AO("\nHI_DRV_AO_SND_DeInit file=%p\n", pfile);

    return AO_DRV_Release(NULL, pstfilp);
}

HI_S32 HI_DRV_AO_SND_GetDefaultOpenAttr(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr)
{
    HI_S32 Ret;
	AO_SND_OpenDefault_Param_S stSndDefaultAttr;
    CHECK_AO_SNDCARD( enSound );
    Ret = down_interruptible(&g_AoMutex);

	stSndDefaultAttr.enSound = enSound;
	Ret = AOGetSndDefOpenAttr(&stSndDefaultAttr);
	if(HI_SUCCESS != Ret)
    {
        HI_ERR_AO("GetDefaultAttr Failed %d\n");
        up(&g_AoMutex);
        return Ret;
    }
	memcpy(pstAttr, &stSndDefaultAttr.stAttr, sizeof(HI_UNF_SND_ATTR_S));
    up(&g_AoMutex);
	return Ret;
}

HI_S32 HI_DRV_AO_SND_Open(HI_UNF_SND_E enSound, HI_UNF_SND_ATTR_S *pstAttr, struct file  *pfile)
{
    HI_S32 Ret;
    DRV_AO_STATE_S *pAOState;
    struct file  *pstfile;
    Ret = down_interruptible(&g_AoMutex);

    if(HI_NULL == pfile)
    {
       pAOState = g_filp.private_data;
       pstfile = &g_filp;
    }
    else
    {
       pAOState = pfile->private_data;
       pstfile = pfile;
    }

    CHECK_AO_SNDCARD( enSound );

	HI_INFO_AO("\nHI_DRV_AO_SND_Open file=%p\n", pfile);

    Ret = AO_Snd_AllocHandle(enSound, pstfile);
    if (HI_SUCCESS == Ret)
    {
        if (0 == atomic_read(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
        {
                Ret = AO_SND_Open(enSound, pstAttr, NULL, HI_FALSE);
                if (HI_SUCCESS != Ret)
                {
                    HI_ERR_AO("Ao SND Open Failed\n");
                    AO_Snd_FreeHandle(enSound, pstfile);
                    up(&g_AoMutex);
                    return Ret;
                }
        }
    }

    atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
    atomic_inc(&pAOState->atmUserOpenCnt[enSound]);
    up(&g_AoMutex);

    return Ret;
}

HI_S32 HI_DRV_AO_SND_Close(HI_UNF_SND_E enSound, struct file  *pfile)
{
    HI_S32 Ret;
    DRV_AO_STATE_S *pAOState;
    struct file  *pstfilp;
    Ret = down_interruptible(&g_AoMutex);

    if(HI_NULL == pfile)
    {
       pAOState = g_filp.private_data;
       pstfilp = &g_filp;
    }
    else
    {
       pAOState = pfile->private_data;
       pstfilp = pfile;
    }

    CHECK_AO_SNDCARD_OPEN( enSound );

	HI_INFO_AO("\nHI_DRV_AO_SND_Close file=%p\n", pfile);

    if(atomic_dec_and_test(&pAOState->atmUserOpenCnt[enSound]))
    {
            if (atomic_dec_and_test(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt))
            {
                Ret = AO_SND_Close( enSound, HI_FALSE );
                if (HI_SUCCESS != Ret)
                {
                    atomic_inc(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
                    atomic_inc(&pAOState->atmUserOpenCnt[enSound]);
                    HI_ERR_AO("AO SND Close failed %d\n", Ret);
                    up(&g_AoMutex);
                    return Ret;
            }

                AO_Snd_FreeHandle(enSound, pstfilp);
            }
    }
    else
    {
        atomic_dec(&s_stAoDrv.astSndEntity[enSound].atmUseTotalCnt);
    }
    up(&g_AoMutex);

    return HI_SUCCESS;
}

 HI_S32 HI_DRV_AO_Snd_GetXRunCount(HI_UNF_SND_E enSound, HI_U32 *pu32Count)
{
    CHECK_AO_SNDCARD_OPEN(enSound);
    return AO_Snd_GetXRunCount(enSound, pu32Count);

}
HI_S32 HI_DRV_AO_SND_SetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S stGain)
{
    HI_S32 Ret = HI_SUCCESS;
    CHECK_AO_SNDCARD_OPEN( enSound );

    Ret = down_interruptible(&g_AoMutex);
    Ret = AO_SND_SetVolume(enSound, enOutPort, stGain);
    up(&g_AoMutex);
    return Ret;

}

HI_S32 HI_DRV_AO_SND_GetVolume(HI_UNF_SND_E enSound, HI_UNF_SND_OUTPUTPORT_E enOutPort, HI_UNF_SND_GAIN_ATTR_S *pstGain)
{
    HI_S32 Ret = HI_SUCCESS;
    CHECK_AO_SNDCARD_OPEN( enSound );
    Ret = down_interruptible(&g_AoMutex);
    Ret = AO_SND_GetVolume(enSound, enOutPort, pstGain);
    up(&g_AoMutex);
    return Ret;
}

HI_S32 HI_DRV_AO_Track_GetDefaultOpenAttr(HI_UNF_SND_TRACK_TYPE_E enTrackType, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr)
{
    HI_S32 Ret = HI_SUCCESS;

    Ret = down_interruptible(&g_AoMutex);

    pstAttr->enTrackType = enTrackType;
    Ret = AO_Track_GetDefAttr(pstAttr);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO("GetDefaultOpenAttr %d\n", Ret);
        up(&g_AoMutex);
        return Ret;
    }
    up(&g_AoMutex);

    return Ret;
}

HI_S32 HI_DRV_AO_Track_Create(HI_UNF_SND_E enSound, HI_UNF_AUDIOTRACK_ATTR_S *pstAttr, HI_BOOL bAlsaTrack, struct file  *pfile, HI_HANDLE *phTrack)
{
    HI_S32 Ret = HI_SUCCESS;
    HI_HANDLE hHandle = HI_INVALID_HANDLE;
    struct file  *pstfilp;
    Ret = down_interruptible(&g_AoMutex);

    if(HI_NULL == pfile)
	{
       pstfilp = &g_filp;
    }
    else
    {
       pstfilp = pfile;
    }
	HI_INFO_AO("\nHI_DRV_AO_Track_Create bAlsaTrack=%d file=%p\n", bAlsaTrack, pfile);

    Ret = AO_Track_AllocHandle(&hHandle, pstAttr->enTrackType, pstfilp);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AO("AO_Track_AllocHandle Failed \n", Ret);
        up(&g_AoMutex);
        return Ret;
    }

    Ret = AO_Track_PreCreate(enSound, pstAttr, bAlsaTrack, NULL, hHandle);
    if (HI_SUCCESS != Ret)
    {
        AO_Track_FreeHandle(hHandle);
        HI_ERR_AO("Pre Create Track Failed \n", Ret);
        up(&g_AoMutex);
        return Ret;
    }

    *phTrack = hHandle;
    up(&g_AoMutex);

    return Ret;
}

HI_S32 HI_DRV_AO_Track_Destroy(HI_HANDLE hSndTrack)
{
    HI_S32 Ret = HI_SUCCESS;
    CHECK_AO_TRACK_OPEN(hSndTrack);
    Ret = down_interruptible(&g_AoMutex);

    Ret = AO_Track_Destory(hSndTrack);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_AO("Create Destroy Failed \n", Ret);
        up(&g_AoMutex);
        return Ret;
    }

    AO_Track_FreeHandle(hSndTrack);
    up(&g_AoMutex);

    return Ret;
}

HI_S32 HI_DRV_AO_Track_Flush(HI_HANDLE hSndTrack)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_Flush(hSndTrack);
}

HI_S32 HI_DRV_AO_Track_Start(HI_HANDLE hSndTrack)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_Start(hSndTrack);
}

HI_S32 HI_DRV_AO_Track_Stop(HI_HANDLE hSndTrack)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_Stop(hSndTrack);
}

HI_S32 HI_DRV_AO_Track_GetDelayMs(HI_HANDLE hSndTrack, HI_U32 *pDelayMs)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_GetDelayMs(hSndTrack, pDelayMs);
}

HI_S32 HI_DRV_AO_Track_SendData(HI_HANDLE hSndTrack, HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_SendData(hSndTrack, pstAOFrame);
}

HI_S32 HI_DRV_AO_Track_SendAlsaData(HI_HANDLE hSndTrack, HI_UNF_AO_FRAMEINFO_S *pstAOFrame)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_SendAlsaData(hSndTrack, pstAOFrame);
}


HI_S32 HI_DRV_AO_Track_AttachAi(HI_HANDLE hSndTrack, HI_HANDLE hAi)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_AttachAi(hSndTrack, hAi);
}

HI_S32 HI_DRV_AO_Track_DetachAi(HI_HANDLE hSndTrack, HI_HANDLE hAi)
{
    CHECK_AO_TRACK_OPEN(hSndTrack);
    return AO_Track_DetachAi(hSndTrack, hAi);
}

static HI_S32 AO_CAST_GetSettings(HI_HANDLE hCast, SND_CAST_SETTINGS_S* pstCastSettings)
{
    SND_CARD_STATE_S *pCard;

    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    CAST_GetSettings(pCard, hCast, pstCastSettings);
    return HI_SUCCESS;
}

static HI_S32 AO_CAST_RestoreSettings(HI_HANDLE hCast, SND_CAST_SETTINGS_S* pstCastSettings)
{
    SND_CARD_STATE_S *pCard;

    hCast &= AO_CAST_CHNID_MASK;
    pCard = CAST_CARD_GetCard(hCast);
    CHECK_AO_NULL_PTR(pCard);

    CAST_RestoreSettings(pCard, hCast, pstCastSettings);
    return HI_SUCCESS;
}

HI_S32 AO_DRV_Suspend(PM_BASEDEV_S * pdev,
                      pm_message_t   state)
{
#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
    HI_S32 i;
    long s32Ret = HI_SUCCESS;

#ifdef HI_ALSA_AO_SUPPORT
	HI_INFO_AO("\nAO shallow suspend state.event=0x%x\n", state.event);
	if(PM_LOW_SUSPEND_FLAG == state.event && HI_NULL != hisi_snd_device)
	{
		bu32shallowSuspendActive = HI_TRUE;
		s32Ret = snd_soc_suspend(&hisi_snd_device->dev);	//shallow suspent here suspend alsa driver
		if (HI_SUCCESS != s32Ret)
		{
		   HI_ERR_AO("\nAO ALSA shallow suspend fail.\n");
		}
		HI_PRINT("AO ALSA shallow suspend OK.\n");
	}
#endif

	bSuspend2SaveThreadFlag = HI_TRUE;	//just for echo save sound pcm
	while(HI_TRUE == bSaveThread2SuspendFlag)	//wait until echo proc for save sound pcm thread exit !
	{
		msleep(2);
	}
    s32Ret = down_interruptible(&g_AoMutex);
    if (HI_TRUE == s_stAoDrv.bReady)
    {
        /* Destory all cast */
        for (i = 0; i < AO_MAX_CAST_NUM; i++)
        {
            if (atomic_read(&s_stAoDrv.astCastEntity[i].atmUseCnt))
            {
                /* Store cast settings */
                AO_CAST_GetSettings(i, &s_stAoDrv.astCastEntity[i].stSuspendAttr);

                /* Destory cast */
                s32Ret = AO_Cast_Destory(i);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_Cast_Destory fail\n");
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }
            }
        }

        /* Destory all track */
        for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
        {
            if (atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
            {
                /* Store track settings */
                AO_TRACK_GetSettings(i, &s_stAoDrv.astTrackEntity[i].stSuspendAttr);

                /* Destory track */
                s32Ret = AO_Track_Destory(i);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_Track_Destory fail\n");
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }
            }
        }

        /* Destory all snd */
        for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
        {
            if (s_stAoDrv.astSndEntity[i].pCard)
            {
                /* Store snd settings */
                AO_SND_GetSettings(i, &s_stAoDrv.astSndEntity[i].stSuspendAttr);

                /* Destory snd */
                s32Ret = AO_SND_Close(i, HI_TRUE);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_SND_Close fail\n");
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }
            }
        }

        s32Ret = HAL_AIAO_Suspend();
        if(HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AIAO Suspend fail\n");
            up(&g_AoMutex);
            return HI_FAILURE;
        }

        if (s_stAoDrv.pAdspFunc && s_stAoDrv.pAdspFunc->pfnADSP_UnLoadFirmware)
        {
            s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_UnLoadFirmware)(ADSP_CODE_AOE);
        }
    }

    up(&g_AoMutex);
#endif
    HI_PRINT("AO suspend OK\n");
    return HI_SUCCESS;
}

HI_S32 AO_DRV_Resume(PM_BASEDEV_S * pdev)
{
#if defined (HI_SND_DRV_SUSPEND_SUPPORT)
    HI_S32 i;
    long s32Ret = HI_SUCCESS;
#ifdef HI_AUDIO_AI_SUPPORT
    HI_BOOL bAiEnable;
#endif
    bSuspend2SaveThreadFlag = HI_FALSE;	//just for echo save sound pcm

    s32Ret = down_interruptible(&g_AoMutex);

    if (HI_TRUE == s_stAoDrv.bReady)
    {
        /* HAL_AOE_Init , Init aoe hardare */
        if (s_stAoDrv.pAdspFunc && s_stAoDrv.pAdspFunc->pfnADSP_LoadFirmware)
        {
            s32Ret = (s_stAoDrv.pAdspFunc->pfnADSP_LoadFirmware)(ADSP_CODE_AOE);
            if (HI_SUCCESS != s32Ret)
            {
                HI_FATAL_AO("load aoe fail\n");
                up(&g_AoMutex);
                return HI_FAILURE;
            }
        }

        s32Ret = HAL_AIAO_Resume();
        if(HI_SUCCESS != s32Ret)
        {
            HI_FATAL_AO("AIAO Resume fail\n");
            up(&g_AoMutex);
            return HI_FAILURE;
        }

        /* Restore all snd */
        for (i = 0; i < AO_MAX_TOTAL_SND_NUM; i++)
        {
            if (s_stAoDrv.astSndEntity[i].pCard)
            {
                /* Recreate snd */
                s32Ret = AO_SND_Open(i,&s_stAoDrv.astSndEntity[i].stSuspendAttr.stUserOpenParam, &s_stAoDrv.astSndEntity[i].stSuspendAttr.stUserOpenParamI2s, HI_TRUE);//#ifdef HI_ALSA_I2S_ONLY_SUPPORT  Check DO???
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_SND_Open fail\n");
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }

                /* Restore snd settings*/
                AO_SND_RestoreSettings(i, &s_stAoDrv.astSndEntity[i].stSuspendAttr);
            }
        }

        for (i = 0; i < AO_MAX_TOTAL_TRACK_NUM; i++)
        {
            if (atomic_read(&s_stAoDrv.astTrackEntity[i].atmUseCnt))
            {
                HI_UNF_SND_E enSound = s_stAoDrv.astTrackEntity[i].stSuspendAttr.enSound;
                HI_UNF_AUDIOTRACK_ATTR_S *pstAttr = &s_stAoDrv.astTrackEntity[i].stSuspendAttr.stTrackAttr;
                HI_BOOL bAlsaTrack = s_stAoDrv.astTrackEntity[i].stSuspendAttr.bAlsaTrack;
                AO_BUF_ATTR_S *pstBuf = &s_stAoDrv.astTrackEntity[i].stSuspendAttr.stBufAttr;

                /* Recreate track  */
                s32Ret = AO_Track_Create(enSound, pstAttr, bAlsaTrack, pstBuf, i);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_Track_Create(%d) fail\n", i);
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }
#ifdef HI_AUDIO_AI_SUPPORT
                if(s_stAoDrv.astTrackEntity[i].stSuspendAttr.bAttAi)
                {
                    s32Ret = AI_GetEnable(s_stAoDrv.astTrackEntity[i].stSuspendAttr.hAi, &bAiEnable);
                    if (HI_SUCCESS != s32Ret)
                    {
                        HI_FATAL_AO("AI GetEnable fail\n");
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }
                    if(HI_TRUE == bAiEnable)
                    {
                        s32Ret = AI_SetEnable(s_stAoDrv.astTrackEntity[i].stSuspendAttr.hAi, HI_FALSE, HI_TRUE);
                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_FATAL_AO("AI SetEnable failed!!\n");
                            up(&g_AoMutex);
                            return HI_FAILURE;
                        }
                    }

                    s32Ret = AO_Track_AttachAi(i, s_stAoDrv.astTrackEntity[i].stSuspendAttr.hAi);
                    if (HI_SUCCESS != s32Ret)
                    {
                        HI_FATAL_AO("AO_Track_AttachAi(%d) fail\n", i);
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }

                    if(HI_TRUE == bAiEnable)
                    {
                        s32Ret = AI_SetEnable(s_stAoDrv.astTrackEntity[i].stSuspendAttr.hAi, HI_TRUE, HI_TRUE);
                        if (HI_SUCCESS != s32Ret)
                        {
                            HI_FATAL_AO("AI SetEnable failed!!\n");
                            up(&g_AoMutex);
                            return HI_FAILURE;
                        }
                    }

                    s32Ret = AO_Track_Start(i);
                    if (HI_SUCCESS != s32Ret)
                    {
                        HI_FATAL_AO("AO_Track_Start(%d) fail\n", i);
                        up(&g_AoMutex);
                        return HI_FAILURE;
                    }
                }
#endif
                /* Restore track settings*/
                AO_TRACK_RestoreSettings(i, &s_stAoDrv.astTrackEntity[i].stSuspendAttr);
            }
        }

        /* Restore all cast */
        for (i = 0; i < AO_MAX_CAST_NUM; i++)
        {
            if (atomic_read(&s_stAoDrv.astCastEntity[i].atmUseCnt))
            {
                HI_UNF_SND_E enSound = s_stAoDrv.astCastEntity[i].stSuspendAttr.enSound;
                HI_UNF_SND_CAST_ATTR_S *pstAttr = &s_stAoDrv.astCastEntity[i].stSuspendAttr.stCastAttr;

                /* Recreate cast  */
                s32Ret = AO_Cast_Create(enSound, pstAttr, &s_stAoDrv.astCastEntity[i].stRbfMmz, i);
                if (HI_SUCCESS != s32Ret)
                {
                    HI_FATAL_AO("AO_Cast_Create(%d) fail\n", i);
                    up(&g_AoMutex);
                    return HI_FAILURE;
                }

                /* Restore cast settings*/
                AO_CAST_RestoreSettings(i, &s_stAoDrv.astCastEntity[i].stSuspendAttr);
            }
        }
    }

    up(&g_AoMutex);
#endif

    HI_PRINT("AO resume OK\n");
#ifdef HI_ALSA_AO_SUPPORT
	if(HI_NULL != hisi_snd_device && HI_TRUE == bu32shallowSuspendActive)
	{
		HI_INFO_AO("\nAO ALSA shallow resume \n");

		bu32shallowSuspendActive = HI_FALSE;
	    s32Ret = snd_soc_resume(&hisi_snd_device->dev);
	    if (HI_SUCCESS != s32Ret)
	    {
	       HI_ERR_AO("AO ALSA shallow resume fail.\n");
	    }

		HI_PRINT("AO ALSA shallow resume OK.\n");
	}
#endif

    return HI_SUCCESS;
}

HI_S32 AO_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AoMutex);
    s32Ret = HI_DRV_MODULE_Register(HI_ID_AO, AO_NAME,
                                    (HI_VOID*)&s_stAoDrv.stExtFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_AO("Reg module fail:%#x!\n", s32Ret);
        up(&g_AoMutex);
        return s32Ret;
    }

#ifdef ENA_AO_IRQ_PROC
    /* register ade ISR */
    if (0
        != request_irq(AO_IRQ_NUM, AO_IntVdmProc,
                       IRQF_DISABLED, "aiao",
                       HI_NULL))
    {
        HI_FATAL_AO("FATAL: request_irq for VDI VDM err!\n");
        up(&g_AoMutex);
        return HI_FAILURE;
    }
#endif


    up(&g_AoMutex);
    return HI_SUCCESS;
}

HI_VOID AO_DRV_Exit(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = down_interruptible(&g_AoMutex);
#ifdef ENA_AO_IRQ_PROC
    free_irq(AO_IRQ_NUM, HI_NULL);
#endif
    HI_DRV_MODULE_UnRegister(HI_ID_AO);

    up(&g_AoMutex);
    return;
}

#ifdef __cplusplus
 #if __cplusplus
 #endif
#endif /* End of #ifdef __cplusplus */
