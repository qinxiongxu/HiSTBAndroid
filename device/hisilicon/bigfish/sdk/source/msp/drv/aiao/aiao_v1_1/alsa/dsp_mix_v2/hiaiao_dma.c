/*******************************************************************************
 *              Copyright 2004 - 2014, Hisilicon Tech. Co., Ltd.
 *                           ALL RIGHTS RESERVED
 * FileName: had-dma.c
 * Description: aiao alsa dma interface
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    HISI Audio Team
 ********************************************************************************/
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/err.h>
#include <linux/platform_device.h>
#include <linux/errno.h>
#include <linux/ioctl.h>
#include <linux/delay.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/kthread.h>
#include <linux/interrupt.h>
#include <linux/dma-mapping.h>
#include <asm/io.h>
#include <linux/jiffies.h>
#include <linux/time.h>
#include <linux/wait.h>
#ifdef CONFIG_PM
 #include <linux/pm.h>
#endif
#include <sound/core.h>
#include <sound/pcm.h>
#include <sound/control.h>
#include <sound/initval.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>
#include "hi_error_mpi.h"

#include "drv_ao_func.h"
#include "alsa_aiao_proc_func.h"
#include "alsa_aiao_comm.h"
#include "hi_drv_ao.h"
#ifdef HI_ALSA_AI_SUPPORT
#include "hi_drv_ai.h"
#include "drv_ai_ioctl.h"
#include "drv_ai_func.h"
#include "hi_drv_mmz.h"
#include "hi_drv_proc.h"
#include "hi_drv_dev.h"
#include "drv_ai_private.h"
#endif
#include <linux/clk.h>

//#define DUMMY_OUTPUT  //for debug

#define DMA_BUFFER_SIZE 64 * 1024
#define INITIAL_VALUE  0xffffffff

#ifndef HIGH_RES_TIMERS
#define I2SDMA_IRQ_NUM 0xffffffff  //TODO
#endif

#ifdef MUTE_FRAME_OUTPUT
#define MUTE_FRAME_TIME  15  //ms
#define PORT_POLL_TIME   5  //ms
HI_S32 DumpBuf[MUTE_FRAME_TIME * 192000 /1000];
#endif


//#define DEBUG_V
//#define DEBUG_VV
#ifdef DEBUG_V
#define ATRC              printk
#define ATRP(fmt, ...)    printk(KERN_ALERT"\nfunc:%s line:%d \n", __func__, __LINE__)
#else
#define ATRC(fmt, ...)    
#define ATRP(fmt, ...)   
#endif
#ifdef DEBUG_VV
#define ATRCC             printk
#define ATRPP(fmt, ...)   printk(KERN_ALERT"\nfunc:%s line:%d \n", __func__, __LINE__)
#else
#define ATRCC(fmt, ...)  
#define ATRPP(fmt, ...) 
#endif

#define PROC_AO_NAME "ao"
#ifdef HI_ALSA_AI_SUPPORT
#define ALSA_PROC_AI_NAME "hi_ai_data"
#endif

static const struct snd_pcm_hardware ao_hardware = {
     .info          = SNDRV_PCM_INFO_MMAP |
                      SNDRV_PCM_INFO_MMAP_VALID |
                      SNDRV_PCM_INFO_INTERLEAVED |
                      SNDRV_PCM_INFO_BLOCK_TRANSFER |
                      SNDRV_PCM_INFO_RESUME,
    .formats        = SNDRV_PCM_FMTBIT_S16_LE |
                      SNDRV_PCM_FMTBIT_S24_LE,
    .channels_min       = 2,
    .channels_max       = 2,
    .period_bytes_min   = 0x200, 
    .period_bytes_max	= 0x2000,    
    .periods_min        = 2,
    .periods_max        = 16,
    .buffer_bytes_max   = DMA_BUFFER_SIZE,
};

static const struct snd_pcm_hardware ai_hardware = {
     .info          = SNDRV_PCM_INFO_MMAP |
                      SNDRV_PCM_INFO_MMAP_VALID |
                      SNDRV_PCM_INFO_INTERLEAVED |
                      SNDRV_PCM_INFO_BLOCK_TRANSFER |
                      SNDRV_PCM_INFO_RESUME,
    .formats        = SNDRV_PCM_FMTBIT_S16_LE |
                      SNDRV_PCM_FMTBIT_S24_LE,
    .channels_min       = 2,
    .channels_max       = 2,
    .period_bytes_min   = 0x800, 
    .period_bytes_max	= 0x800,    
    .periods_min        = 2,
    .periods_max        = 8,
    .buffer_bytes_max   = 0xf000,
};


#ifdef HI_ALSA_AI_SUPPORT
static AI_ALSA_Param_S stAIAlsaAttr;
static irqreturn_t IsrAIFunc(AIAO_PORT_ID_E enPortID,HI_U32 u32IntRawStatus,void * dev_id)
{
    struct snd_pcm_substream *substream = dev_id;
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);

    unsigned int readpos = had->sthwparam_ai.period_size*had->sthwparam_ai.frame_size;
    
    had->isr_total_cnt_c++;
    hi_ai_alsa_query_writepos(had->ai_handle,&(had->ai_writepos));
    hi_ai_alsa_query_readpos(had->ai_handle,&(had->ai_readpos));
    hi_ai_alsa_update_readptr(had->ai_handle, &(readpos));
    
    #ifdef AIAO_ALSA_DEBUG
    if(had->isr_total_cnt_c <= 8)
    {
        ATRC(KERN_ALERT" get write pos is %d,and get readpos is %d,update read ptr is %d\n ",had->ai_writepos,had->ai_readpos,readpos);
    }
    #endif
    snd_pcm_period_elapsed(substream); 
    
    if(had->IsrProc)
       had->IsrProc(enPortID,u32IntRawStatus,NULL);
    
    return IRQ_HANDLED;
}
#endif

#ifdef HIGH_RES_TIMERS
#if 0
static void pcm_elapsed(unsigned long priv)
{
	struct hiaudio_data *had = (struct hiaudio_data *)priv;
	if (atomic_read(&had->atmTrackState))
	{
        //ATRC("\nCur_Ns: %lldms , Peroid:%d \n",ktime_to_ms(hrtimer_cb_get_time(&had->hrt)), had->u32PollTimeNs);
		snd_pcm_period_elapsed(had->substream);
	}
}
#endif
static enum hrtimer_restart SndPeroidCallback(struct hrtimer *hrt)
{
    struct hiaudio_data *had =
        container_of(hrt, struct hiaudio_data, hrt);
    struct snd_pcm_substream *substream = had->substream;
    ATRPP();

    if (!atomic_read(&had->atmTrackState))
    {
        ATRC("\nCur_Ns: %lldms , Timer Disable !\n",ktime_to_ms(hrtimer_cb_get_time(&had->hrt)));
        return HRTIMER_NORESTART;
    }
    //ATRC("\nCur_Ns: %lldms , Peroid:%d \n",ktime_to_ms(hrtimer_cb_get_time(&had->hrt)), had->u32PollTimeNs);
#if 0
        tasklet_schedule(&had->tasklet2);
#else
        snd_pcm_period_elapsed(substream);
#endif
    /* case 1 get real read pos to calc offset*/
    /* choose --->  case 2 every timer cnt mean Isr*/
    had->u32SendTryCnt++;
#ifdef DUMMY_OUTPUT
    had->u32HadSent++;
    had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
    //ATRC("\n had->u32HwPointer=%d, had->u32HadSent=%d  \n", had->u32HwPointer, had->u32HadSent);
#else
    if(had->bTriggerStartOK == HI_FALSE)
    {
    	had->u32HadSent++;
        had->u32DiscardSent++;
        had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
    }
    else
    {
        HI_S32 s32Ret = HI_SUCCESS;
        had->stAOFrame.ps32PcmBuffer = had->pVirBaseAddr + had->u32HwPointer * had->stAoHwParam.period_bytes;
        s32Ret = HI_DRV_AO_Track_SendAlsaData(had->u32TrackId, &had->stAOFrame);
        if(HI_SUCCESS == s32Ret)
        {
            had->u32HadSent++;
            had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
            ATRCC("New u32HwPointer= %d", had->u32HwPointer);
        }
        else 
        {
            ATRC("ALSA Timer callback HI_DRV_AO_Track_SendData Failed 0x%x\n",s32Ret);
        }
    }
#endif
    hrtimer_forward_now(hrt, ns_to_ktime(had->u32PollTimeNs));
    
    return HRTIMER_RESTART;
}

static HI_S32 HRTimerStart(struct hiaudio_data *had)
{
    ATRP(); 
    hrtimer_start(&had->hrt, had->hrtperoid,HRTIMER_MODE_REL);
    ATRC("\nStart Cur_Ns: %lld  \n",ktime_to_ms(hrtimer_cb_get_time(&had->hrt)));
    return HI_SUCCESS;
}

static HI_S32 HRTimerCreat(struct hiaudio_data *had)
{
    ATRP();
    hrtimer_init(&had->hrt, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
    had->hrt.function = SndPeroidCallback;
    return HI_SUCCESS;
}

static HI_S32 HRTimerDestory(struct hiaudio_data *had)
{
    ATRP();
    hrtimer_cancel(&had->hrt);
    return HI_SUCCESS;
}
#else
static irqreturn_t DmaIsr(int irq, void * dev_id)
{
    struct snd_pcm_substream *substream = dev_id;
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    ATRPP();
    //TODO
    I2SDma_Clear(); 
    if (unlikely(!substream))
    {
        pr_err("%s: null substream\n", __func__);
        return IRQ_HANDLED;
    }
    if (!atomic_read(&had->atmTrackState))
    {
        ATRC("\nTrackstate Disable !\n");
        return IRQ_HANDLED;
    }
    snd_pcm_period_elapsed(substream);

    had->u32SendTryCnt++;
#ifdef DUMMY_OUTPUT
    had->u32HadSent++;
    had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
    //ATRC("\n had->u32HwPointer=%d, had->u32HadSent=%d  \n", had->u32HwPointer, had->u32HadSent);
#else
    if(had->bTriggerStartOK == HI_FALSE)
    {
	    had->u32HadSent++;
        had->u32DiscardSent++;
        had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
    }
    else
    {
        HI_S32 s32Ret = HI_SUCCESS;
        had->stAOFrame.ps32PcmBuffer = had->pVirBaseAddr + had->u32HwPointer * had->stAoHwParam.period_bytes;
        s32Ret = HI_DRV_AO_Track_SendData(had->u32TrackId, &had->stAOFrame);
        if(HI_SUCCESS == s32Ret)
        {
            had->u32HadSent++;
            had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
            ATRCC("New u32HwPointer= %d", had->u32HwPointer);
        }
        else 
        {
            ATRC("ALSA isr HI_DRV_AO_Track_SendData Failed 0x%x\n",s32Ret);
        }
    }
#endif
    return IRQ_HANDLED;
}
#endif

static void CmdIoTask(struct work_struct *work)
{
    struct hiaudio_data *had =
        container_of(work, struct hiaudio_data, work);
    HI_S32 s32Ret = 0;
    ATRP();

    if(INITIAL_VALUE == had->u32TrackId)
    {
        ATRP();
        return;
    }    
    if (CMD_START == had->u32Cmd)
    {
        ATRC("\nCmdIoTask strat track\n");
        had->bTriggerStartOK = HI_TRUE;
        s32Ret = HI_DRV_AO_Track_Start(had->u32TrackId);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_Start Failed 0x%x\n",s32Ret);
            had->bTriggerStartOK = HI_FALSE;
#ifdef HIGH_RES_TIMERS
            HRTimerStart(had);
#else
            I2SDma_Enable(HI_TRUE);
#endif
            return;
        }
        
        s32Ret = HI_DRV_AO_Track_Flush(had->u32TrackId);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_Flush Failed 0x%x\n",s32Ret);
        }

#ifdef MUTE_FRAME_OUTPUT
#if 1
        s32Ret = HI_DRV_AO_Track_GetDelayMs(had->u32TrackId, &had->u32PortDelayMs);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_GetDelayMs Failed 0x%x\n",s32Ret);
            had->u32PortDelayMs = 0;
        }
        if(had->u32PortDelayMs <= MUTE_FRAME_TIME)
        {
            if(had->u32PortDelayMs <= PORT_POLL_TIME)  //means empty
            {
                had->u32MuteFrameTime = MUTE_FRAME_TIME;
            }
            else    
            {
                had->u32MuteFrameTime = MUTE_FRAME_TIME - had->u32PortDelayMs + PORT_POLL_TIME;
            }
        }
        else if(had->u32PortDelayMs > MUTE_FRAME_TIME + PORT_POLL_TIME)
        {
            had->u32MuteFrameTime = 0;
        }
        else
        {
            had->u32MuteFrameTime = MUTE_FRAME_TIME + PORT_POLL_TIME - had->u32PortDelayMs;
        }
#endif
        had->stAOFrame.u32PcmSamplesPerFrame = had->u32MuteFrameTime * had->stAoHwParam.rate /1000;
        //ATRC("\nALSA trigger MUTE_FRAME_OUTPUT 0x%x\n", had->stAOFrame.u32PcmSamplesPerFrame);

        had->stAOFrame.ps32PcmBuffer = DumpBuf;
        s32Ret = HI_DRV_AO_Track_SendData(had->u32TrackId, &had->stAOFrame);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA trigger MUTE_FRAME_OUTPUT Failed 0x%x\n",s32Ret);
        }
        had->stAOFrame.u32PcmSamplesPerFrame = had->stAoHwParam.period_size;
#endif

        had->u32SendTryCnt++;
#ifdef DUMMY_OUTPUT
        had->u32HadSent++;
        had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
#else
        had->stAOFrame.ps32PcmBuffer = had->pVirBaseAddr;
        s32Ret = HI_DRV_AO_Track_SendData(had->u32TrackId, &had->stAOFrame);
        if(HI_SUCCESS == s32Ret)
        {
            had->u32HadSent++;
            had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
            atomic_set(&had->atmTrackState, 1);
#ifdef HIGH_RES_TIMERS
            HRTimerStart(had);
#else
            I2SDma_Enable(HI_TRUE);
#endif
        }
        else if(HI_ERR_AO_OUT_BUF_FULL == s32Ret)
        {
            had->u32HadSent++;
            had->u32HwPointer = had->u32HadSent%had->stAoHwParam.periods;
            atomic_set(&had->atmTrackState, 1);
            had->bTriggerStartOK = HI_FALSE;
#ifdef HIGH_RES_TIMERS
            HRTimerStart(had);
#else
            I2SDma_Enable(HI_TRUE);
#endif
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_SendData Full %d\n",s32Ret);
        }
        else
        {
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_SendData Failed 0x%x\n",s32Ret);
        }
#endif        
    }
    else if (CMD_STOP == had->u32Cmd)
    {
        ATRC("\nCmdIoTask stop track");
#ifdef HIGH_RES_TIMERS
        HRTimerDestory(had);
#endif
        s32Ret = HI_DRV_AO_Track_Stop(had->u32TrackId);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA trigger HI_DRV_AO_Track_Stop Failed 0x%x\n",s32Ret);
        }
    }
    else
    {
        HI_ERR_AO("ALSA trigger InVaild cmd: 0x%x\n", had->u32Cmd);
    }
}

static int hi_dma_prepare(struct snd_pcm_substream *substream)
{
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    HI_S32 s32Ret = 0;
    ATRP();

#ifdef HI_ALSA_AI_SUPPORT	 
    if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
    {
        had->last_c_pos = 0;
        had->current_c_pos = 0;
        had->ai_writepos = 0;
        had->ai_readpos = 0;
        had->isr_total_cnt_c = 0;
        had->ack_c_cnt = 0;
        return hi_ai_alsa_flush_buffer(had->ai_handle);
    }
    else
 #endif
    {
        had->u32SendTryCnt = 0;
        had->u32HadSent = 0;
        had->u32DiscardSent = 0;
		had->bTriggerStartOK = HI_TRUE;
        had->u32HwPointer = 0;
        had->u32PortDelayMs = 0;
        atomic_set(&had->atmTrackState, 0);

#ifdef CONFIG_PM
        had->u32SuspendState = 0;
#endif

#ifdef MUTE_FRAME_OUTPUT
        had->u32MuteFrameTime = 0;
#else
        had->u32MuteFrameTime = 0xffffffff;
#endif

#if 0
        s32Ret = HI_DRV_AO_Track_Flush(had->u32TrackId);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA Prepare HI_DRV_AO_Track_Flush Failed 0x%x\n",s32Ret);
        }
#endif
    }
    return s32Ret;
}

static int hi_dma_trigger(struct snd_pcm_substream *substream, int cmd)
{
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    HI_S32 s32Ret = 0;
    ATRP();
    
    switch(cmd) 
    {
    case SNDRV_PCM_TRIGGER_RESUME:
    case SNDRV_PCM_TRIGGER_START:
    case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
        if(substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
        {
            ATRP();
            had->u32Cmd = CMD_START;
			queue_work(had->workq, &had->work);
        }
#ifdef HI_ALSA_AI_SUPPORT		
        if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
        {
          s32Ret =  hi_ai_alsa_setEnable(had->ai_handle,&had->cfile,HI_TRUE);
          if(s32Ret)
          {   
               ATRC("AI ALSA start dma Fail \n");
        }
        }
#endif
        break;
    case SNDRV_PCM_TRIGGER_SUSPEND:
    case SNDRV_PCM_TRIGGER_STOP:
    case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
        if(substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
        {
            ATRP();
            atomic_set(&had->atmTrackState, 0);
#ifndef HIGH_RES_TIMERS
            I2SDma_Enable(HI_FALSE);
#endif
            had->u32Cmd = CMD_STOP;
			queue_work(had->workq, &had->work);
        }
#ifdef HI_ALSA_AI_SUPPORT
        if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
        {
            s32Ret = hi_ai_alsa_setEnable(had->ai_handle,&had->cfile,HI_FALSE);
            if(s32Ret)
            {   
               ATRC("AI ALSA stop dma Fail \n");
            }
        }
#endif
        break;
        
    default:
        s32Ret = -EINVAL;
        break;
    }
    return s32Ret;
}

static int hi_dma_mmap(struct snd_pcm_substream *substream,
	struct vm_area_struct *vma)
{
    struct snd_pcm_runtime *runtime = substream->runtime;
    int ret;
    unsigned int size;
    ATRP();

    vma->vm_flags |= VM_IO;
    vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
    size = vma->vm_end - vma->vm_start;

    //just for kernel ddr linear area
    ret = io_remap_pfn_range(vma,
                vma->vm_start,
                runtime->dma_addr >> PAGE_SHIFT,
                size, 
                vma->vm_page_prot);

    if (ret)
        return -EAGAIN;

	return 0;
}

static snd_pcm_uframes_t hi_dma_pointer(struct snd_pcm_substream *substream)
{
    struct snd_pcm_runtime *runtime = substream->runtime;
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    snd_pcm_uframes_t frame_offset = 0;
    unsigned int bytes_offset = 0;
    //ATRP();

#ifdef HI_ALSA_AI_SUPPORT
	if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
	{
		bytes_offset = had->ai_writepos;
	    if(bytes_offset >= snd_pcm_lib_buffer_bytes(substream))
 			bytes_offset = 0;		
	}
	else
#endif
	{
        bytes_offset = had->u32HwPointer * had->stAoHwParam.period_bytes;
	}
    frame_offset = bytes_to_frames(runtime, bytes_offset);
    //ATRC("\npointer return frame:0x%x   bytes_offset: 0x%x  appl_ptr=0x%x\n", (int)frame_offset, bytes_offset, runtime->control->appl_ptr);
    return frame_offset;
}
#ifdef HI_ALSA_AI_SUPPORT
static void hi_ai_set_params(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params,struct snd_pcm_runtime *runtime)
{
     if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
     {
        stAIAlsaAttr.IsrFunc                 =(AIAO_IsrFunc*)IsrAIFunc;
        stAIAlsaAttr.substream               =(void*)substream;
        stAIAlsaAttr.stBuf.u32BufPhyAddr     = runtime->dma_addr;    // for dma buffer
        stAIAlsaAttr.stBuf.u32BufVirAddr     = (int)runtime->dma_area;
        stAIAlsaAttr.stBuf.u32BufSize        = runtime->dma_bytes;
        stAIAlsaAttr.stBuf.u32PeriodByteSize = params_buffer_bytes(params)/params_periods(params);
        stAIAlsaAttr.stBuf.u32Periods        = params_periods(params);
     }
}
#endif

static int hi_dma_hwparams(struct snd_pcm_substream *substream,
    struct snd_pcm_hw_params *params)
{
    unsigned int buffer_bytes;
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_pcm_runtime *runtime = substream->runtime;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    HI_S32 s32Ret = 0;
#ifdef HI_ALSA_AI_SUPPORT
	HI_UNF_AI_ATTR_S pstAiAttr;
	AI_Create_Param_S stAiParam;
#endif
    ATRP();

    buffer_bytes = params_buffer_bytes(params);
    if(snd_pcm_lib_malloc_pages(substream, buffer_bytes) < 0)
        return -ENOMEM;

#ifdef HI_ALSA_AI_SUPPORT
   if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   	{   
   		memset(&pstAiAttr,0,sizeof(pstAiAttr));
		memset(&stAiParam,0,sizeof(stAiParam));
   		s32Ret = hi_ai_alsa_get_attr(HI_UNF_AI_I2S0,&pstAiAttr);
		if(HI_SUCCESS != s32Ret)
		{
			s32Ret = -EINVAL;
			goto err_AllocateDma;
		}  
        pstAiAttr.enSampleRate =  params_rate(params);
        pstAiAttr.unAttr.stI2sAttr.stAttr.enChannel = params_channels(params);
         switch (params_format(params)) {
         case SNDRV_PCM_FORMAT_S16_LE:
         	pstAiAttr.unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_16;
         	break;
         case SNDRV_PCM_FMTBIT_S24_LE:
         	pstAiAttr.unAttr.stI2sAttr.stAttr.enBitDepth = HI_UNF_I2S_BIT_DEPTH_24;
         	break;
         default:
             break;
         }
       ATRC("rate : %d\n", pstAiAttr.enSampleRate);
       ATRC("channel : %d\n", pstAiAttr.unAttr.stI2sAttr.stAttr.enChannel);
       ATRC("bitdepth : %d\n", pstAiAttr.unAttr.stI2sAttr.stAttr.enBitDepth);
       s32Ret = hi_ai_alsa_get_proc_func(&had->IsrProc);//get proc func
       if(HI_SUCCESS != s32Ret)
       {
	        s32Ret = -EINVAL;
            goto err_AllocateDma;
       }

        hi_ai_set_params(substream,params,runtime);
        stAiParam.pAlsaPara = (void *)&stAIAlsaAttr;
        stAiParam.enAiPort = HI_UNF_AI_I2S0;
//		pstAiAttr.enAiPort = HI_UNF_AI_I2S0;
        memcpy(&stAiParam.stAttr, &pstAiAttr, sizeof(HI_UNF_AI_ATTR_S));    
        s32Ret = hi_ai_alsa_open(&stAiParam,&had->cfile);
        if(HI_SUCCESS != s32Ret)
        {
            s32Ret = -EINVAL;
            goto err_AllocateDma;
        }
        had->ai_handle = stAiParam.hAi; 
        ATRC("\nbuffer_bytes : 0x%x \n", buffer_bytes);
        ATRC("\n pstAiAttr.enSampleRate : 0x%d \n", (int)pstAiAttr.enSampleRate);
        ATRC("\n pstAiAttr.u32PcmFrameMaxNum : 0x%d \n", pstAiAttr.u32PcmFrameMaxNum);
        ATRC("\n pstAiAttr.u32PcmSamplesPerFrame : 0x%d \n", pstAiAttr.u32PcmSamplesPerFrame);
        //ATRC("\n pstAiAttr.enAiPort : 0x%d \n", (int)pstAiAttr.enAiPort);
        ATRC("\n pstAiAttr.bAlsaUse : 0x%d \n", stAiParam.bAlsaUse);
        ATRC("\nruntime->dma_addr : %d \n", runtime->dma_addr);
        ATRC("\(int)runtime->dma_area : %d \n", (int)runtime->dma_area);
        ATRC("\nruntime->dma_bytes : %d \n", runtime->dma_bytes);
        ATRC("\nhad->ai_handle is %d\n", had->ai_handle);
        had->sthwparam_ai.channels = params_channels(params);
    	had->sthwparam_ai.rate = params_rate(params);
    	had->sthwparam_ai.format = params_format(params);
    	had->sthwparam_ai.periods = params_periods(params);
    	had->sthwparam_ai.period_size = params_period_size(params);
    	had->sthwparam_ai.buffer_size = params_buffer_size(params);
    	had->sthwparam_ai.buffer_bytes = params_buffer_bytes(params);
    	//had->sthwparam.frame_size = frames_to_bytes(runtime, 1);

    	switch (had->sthwparam_ai.format) {
    		case SNDRV_PCM_FORMAT_S16_LE:
    			had->sthwparam_ai.frame_size = 2 * had->sthwparam_ai.channels;
    			break;
    		case SNDRV_PCM_FMTBIT_S24_LE:
    			had->sthwparam_ai.frame_size = 3 * had->sthwparam_ai.channels;
    			break;
    		default:
        		break;
    		}
    
          ATRC("\nhad->sthwparam_ai.channels : 0x%x", had->sthwparam_ai.channels);
          ATRC("\nhad->sthwparam_ai.rate : 0x%x", had->sthwparam_ai.rate);
          ATRC("\nhad->sthwparam_ai.periods : 0x%x", had->sthwparam_ai.periods);
          ATRC("\nhad->sthwparam_ai.period_size : 0x%x", (int)had->sthwparam_ai.period_size);
          ATRC("\nhad->sthwparam_ai.buffer_size : 0x%x", (int)had->sthwparam_ai.buffer_size);
          ATRC("\nhad->sthwparam_ai.frame_size : 0x%x", had->sthwparam_ai.frame_size);
   	}
   else
#endif
   	{
        had->stAoHwParam.channels = params_channels(params);
        had->stAoHwParam.rate = params_rate(params);
        had->stAoHwParam.format = params_format(params);
        had->stAoHwParam.periods = params_periods(params);
        had->stAoHwParam.period_size = params_period_size(params);
        had->stAoHwParam.period_bytes = params_period_bytes(params);

        switch (had->stAoHwParam.format) {
        case SNDRV_PCM_FORMAT_S16_LE:
        	had->stAoHwParam.frame_size = 2 * had->stAoHwParam.channels;
            had->stAOFrame.s32BitPerSample = 16;
        	break;
        case SNDRV_PCM_FMTBIT_S24_LE:
        	had->stAoHwParam.frame_size = 3 * had->stAoHwParam.channels;
            had->stAOFrame.s32BitPerSample = 24;
        	break;
        default:
            break;
        }
        
    	had->u32PollTimeNs = 1000000000 / params_rate(params) *
    				params_period_size(params);
#ifdef HIGH_RES_TIMERS
        had->hrtperoid = ns_to_ktime(had->u32PollTimeNs);
#else
        I2SDma_Set(had->u32PollTimeNs);
#endif


        ATRC("\nhad->sthwparam.channels : 0x%x", had->stAoHwParam.channels);
        ATRC("\nhad->sthwparam.rate : 0x%x", had->stAoHwParam.rate);
        ATRC("\nhad->sthwparam.periods : 0x%x", had->stAoHwParam.periods);
        ATRC("\nhad->sthwparam.buffer_size : 0x%x", (int)had->stAoHwParam.buffer_size);
        ATRC("\nhad->sthwparam.frame_size : 0x%x", had->stAoHwParam.frame_size);
        ATRC("\nhad->sthwparam.period_bytes : 0x%x", had->stAoHwParam.period_bytes);
        ATRC("\nhad->sthwparam.period_size : 0x%x", (int)had->stAoHwParam.period_size);


        had->stAOFrame.u32SampleRate = had->stAoHwParam.rate;
        had->stAOFrame.u32Channels = had->stAoHwParam.channels;
        had->stAOFrame.ps32PcmBuffer = (HI_S32 *)runtime->dma_area;
        had->stAOFrame.u32PcmSamplesPerFrame = had->stAoHwParam.period_size;
        had->pPhyBaseAddr = (HI_VOID *)runtime->dma_addr;
        had->pVirBaseAddr = (HI_VOID *)runtime->dma_area;
    }

    return s32Ret;

#ifdef HI_ALSA_AI_SUPPORT
err_AllocateDma:
   s32Ret = snd_pcm_lib_free_pages(substream);
#endif

   return HI_FAILURE;
}

static int hi_dma_hwfree(struct snd_pcm_substream *substream)
{
    ATRP();
    //todo NULL pointer when timer
	snd_pcm_lib_free_pages(substream);
    
    return HI_SUCCESS;
}
static int hi_dma_open(struct snd_pcm_substream *substream)
{
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    HI_S32 s32Ret = 0;
 
    ATRP();
    if(substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
        s32Ret = snd_soc_set_runtime_hwparams(substream, &ao_hardware);
    else
        s32Ret = snd_soc_set_runtime_hwparams(substream, &ai_hardware);
    if(s32Ret)
        return s32Ret;

    //interrupt by step
    s32Ret = snd_pcm_hw_constraint_integer(substream->runtime, SNDRV_PCM_HW_PARAM_PERIODS);
    if(substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
    {
        HI_UNF_SND_ATTR_S stSndAttr;
        HI_UNF_AUDIOTRACK_ATTR_S stTrackAttr;
        HI_HANDLE hTrack;

        memset(&had->stAoHwParam, 0, sizeof(struct aiao_hwparams));
        had->pVirBaseAddr = HI_NULL;
        had->pPhyBaseAddr = HI_NULL;

        had->u32SndOpen = 0; 
        atomic_set(&had->atmTrackState, 0);

        had->u32SendTryCnt = 0;
        had->u32HadSent = 0;
        had->u32DiscardSent = 0;
        had->u32HwPointer = 0;
        had->u32PollTimeNs = 0;
        had->u32Cmd = 0;
        had->u32MuteFrameTime = 0;    
        had->u32PortDelayMs = 0;   
        had->bTriggerStartOK = HI_TRUE;
#ifdef CONFIG_PM
        had->u32SuspendState = 0;
#endif

        had->u32IrqNum = INITIAL_VALUE;
        had->u32TrackId= INITIAL_VALUE;
#ifdef HIGH_RES_TIMERS
        had->substream = substream;
#endif 
        s32Ret = HI_DRV_AO_SND_Init(&had->file);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA HI_DRV_AO_SND_Init Failed 0x%x\n",s32Ret);
            return s32Ret;
        }
        s32Ret = HI_DRV_AO_SND_GetDefaultOpenAttr(HI_UNF_SND_0, &stSndAttr);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA HI_DRV_AO_SND_GetDefaultOpenAttr Failed 0x%x\n",s32Ret);
            goto ERR_SND_INIT_EXT;
        }
        s32Ret = HI_DRV_AO_SND_Open(HI_UNF_SND_0, &stSndAttr, &had->file);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA HI_DRV_AO_SND_Open Failed 0x%x\n",s32Ret);
            goto ERR_SND_INIT_EXT;
        }
        had->u32SndOpen++;
        
        s32Ret = HI_DRV_AO_Track_GetDefaultOpenAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA HI_DRV_AO_Track_GetDefaultOpenAttr Failed 0x%x\n",s32Ret);
            goto ERR_SND_OPEN_EXT;
        }
        //#define AO_TRACK_MASTER_MIN_BUFLEVELMS 300
        //stTrackAttr.u32BufLevelMs = 100;
        s32Ret = HI_DRV_AO_Track_Create(HI_UNF_SND_0, &stTrackAttr, HI_TRUE, &had->file, &hTrack);
        if(HI_SUCCESS != s32Ret)
        {
            HI_ERR_AO("ALSA HI_DRV_AO_Track_Create Failed 0x%x\n",s32Ret);
            goto ERR_SND_OPEN_EXT;
        }
        
        had->u32TrackId= hTrack;
        
        memset(&had->stAOFrame, 0, sizeof(HI_UNF_AO_FRAMEINFO_S));
        had->stAOFrame.s32BitPerSample = 16;  //default
        had->stAOFrame.bInterleaved = HI_TRUE;
        had->stAOFrame.u32SampleRate = 48000; 
        had->stAOFrame.u32Channels = 2;         
        //had->stAOFrame.ps32PcmBuffer = HI_NULL; 

        had->workq = create_singlethread_workqueue("hisi-alsa-ao");
        if (NULL == had->workq) {
            HI_ERR_AO("workqueue create Failed!");
            goto ERR_TRACK_CREAT_EXT;
        }
        INIT_WORK(&had->work, CmdIoTask);
#if 0
        tasklet_init(&had->tasklet2, pcm_elapsed,
                 (unsigned long)had);
#endif

#ifdef HIGH_RES_TIMERS
        atomic_set(&had->atmTrackState, 0);
        HRTimerCreat(had);
#else
        if(had->u32IrqNum == INITIAL_VALUE)
        {
            if (request_irq(I2SDMA_IRQ_NUM,DmaIsr, IRQF_DISABLED,"I2SDMA", substream) != 0)  
            {
                HI_FATAL_AO("request_irq failed irq num =%d!\n", I2SDMA_IRQ_NUM);
                goto ERR_WORKQUUE_CREAT_EXT;
            }
            had->u32IrqNum = I2SDMA_IRQ_NUM;
        }
#endif
    }
    return HI_SUCCESS;

#ifndef HIGH_RES_TIMERS
ERR_WORKQUUE_CREAT_EXT:
    destroy_workqueue(had->workq);
    had->workq = HI_NULL;
#endif
ERR_TRACK_CREAT_EXT:
    HI_DRV_AO_Track_Destroy(had->u32TrackId);
ERR_SND_OPEN_EXT:
    HI_DRV_AO_SND_Close(HI_UNF_SND_0, &had->file);
ERR_SND_INIT_EXT:
    HI_DRV_AO_SND_DeInit(&had->file);

    return s32Ret;
}

static int hi_dma_close(struct snd_pcm_substream *substream)
{
    struct snd_soc_pcm_runtime *soc_rtd = substream->private_data;
    struct snd_soc_platform *platform = soc_rtd->platform;
    struct hiaudio_data *had = snd_soc_platform_get_drvdata(platform);
    HI_S32 s32Ret = 0;
    ATRP();
#ifdef HI_ALSA_AI_SUPPORT
	if(substream->stream == SNDRV_PCM_STREAM_CAPTURE)
	{
        if(INITIAL_VALUE != had->ai_handle)
		{
            s32Ret = hi_ai_alsa_destroy(had->ai_handle,&had->cfile); //jiaxi check
			if(s32Ret)
                ATRC("ai destroy fail  num =%d fail !\n", had->ai_handle);
			else 
                had->ai_handle = INITIAL_VALUE;
		}
        had->isr_total_cnt_c = 0;
	}		
    else
#endif
    {
#ifdef HIGH_RES_TIMERS    	
       //TODO
#else
        if(INITIAL_VALUE != had->u32IrqNum)
        {
            free_irq(I2SDMA_IRQ_NUM, substream);
            had->u32IrqNum = INITIAL_VALUE;
        }
#endif        
        if(had->workq)
            destroy_workqueue(had->workq);
        had->workq = HI_NULL;
#if 0	
    	tasklet_kill(&had->tasklet2);
#endif

        if(INITIAL_VALUE != had->u32TrackId)
        {
            s32Ret = HI_DRV_AO_Track_Destroy(had->u32TrackId);
            if(HI_SUCCESS != s32Ret)
            {
                HI_ERR_AO("ALSA HI_DRV_AO_Track_Destroy Failed 0x%x\n",s32Ret);
            }
            else
                had->u32TrackId = INITIAL_VALUE;
        }
        if(had->u32SndOpen)
        {
            s32Ret = HI_DRV_AO_SND_Close(HI_UNF_SND_0, &had->file);
            if(HI_SUCCESS != s32Ret)
            {
                HI_ERR_AO("ALSA HI_DRV_AO_SND_Close Failed 0x%x\n",s32Ret);
            }
            else
                had->u32SndOpen--;
        }
        HI_DRV_AO_SND_DeInit(&had->file);
    }

    snd_pcm_lib_free_pages(substream);

    return HI_SUCCESS;
}

static int hi_dma_ack(struct snd_pcm_substream *substream)
{
    ATRPP();
    return 0;
}

static struct snd_pcm_ops hi_dma_ops = {
    .open = hi_dma_open,
    .close = hi_dma_close,
    .ioctl  = snd_pcm_lib_ioctl,
    .hw_params = hi_dma_hwparams,
    .hw_free = hi_dma_hwfree,
    .prepare = hi_dma_prepare,
    .trigger = hi_dma_trigger,
    .pointer = hi_dma_pointer,
    .mmap = hi_dma_mmap,
    .ack = hi_dma_ack,
};

static int hi_dma_pcm_new(struct snd_soc_pcm_runtime *rtd)
{
    struct snd_pcm *pcm = rtd->pcm;
    int ret = 0;
    if(pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream || 
        pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream)
    {
        ret = snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,NULL,
        DMA_BUFFER_SIZE, DMA_BUFFER_SIZE / 2);
        if(ret)
        {
            ATRC("dma buffer allocation fail \n");
            return ret;
        }
    }
    return ret;
}

static void hi_dma_pcm_free(struct snd_pcm *pcm)
{
    snd_pcm_lib_preallocate_free_for_all(pcm);
}

static int hi_dma_probe(struct snd_soc_platform *soc_platform)
{
    int ret = 0;
    
    struct hiaudio_data *had = dev_get_drvdata(soc_platform->dev);
    ret = hiaudio_ao_proc_init(soc_platform->card->snd_card, PROC_AO_NAME, had);
    if(ret < 0)
    {
        //ATRC("had_init_debugfs fail %d", ret);
    }
#ifdef HI_ALSA_AI_SUPPORT
    ret = hiaudio_ai_proc_init(soc_platform->card->snd_card, ALSA_PROC_AI_NAME, had);
    if(ret < 0)
    {
    }
#endif
    
    return ret;
}

static int hi_dma_suspend(struct snd_soc_dai *dai)
{
	struct snd_pcm_runtime *runtime = dai->runtime;
    //struct hiaudio_data *had = snd_soc_platform_get_drvdata(dai->platform);
    ATRP();

	if (!runtime)
		return 0;
	return 0;
}
static int hi_dma_resume(struct snd_soc_dai *dai)
{
    ATRP();
	return 0;
}
static struct snd_soc_platform_driver aiao_soc_platform_drv =
{
    .ops         = &hi_dma_ops,
    .pcm_new   = hi_dma_pcm_new,
    .pcm_free   = hi_dma_pcm_free,
    .probe      = hi_dma_probe,
#ifdef CONFIG_PM
	.suspend	= hi_dma_suspend,
	.resume		= hi_dma_resume,
#endif	
};


static int __init soc_snd_platform_probe(struct platform_device *pdev)
{
    struct hiaudio_data *had;
    int ret = -EINVAL;

    had = kzalloc(sizeof(struct hiaudio_data), GFP_KERNEL);
    if(had == NULL)
        return -ENOMEM;

    dev_set_drvdata(&pdev->dev, had);

    had->u32IrqNum = INITIAL_VALUE;
    had->u32TrackId = INITIAL_VALUE;
#ifdef HI_ALSA_AI_SUPPORT
    had->ack_c_cnt = 0;
	had->last_c_pos = 0;
    had->current_c_pos = 0;
	had->ai_writepos = 0;
    had->ai_readpos = 0;
	had->ai_handle = INITIAL_VALUE;
    had->isr_total_cnt_c = 0;
#endif

#ifdef MUTE_FRAME_OUTPUT
    memset(DumpBuf, 0, MUTE_FRAME_TIME * 192000 /1000);
#endif

    ret = snd_soc_register_platform(&pdev->dev, &aiao_soc_platform_drv);
    if (ret < 0)
        goto err;

    return ret;
err:
    kfree(had);
    return ret;
}

static int __exit soc_snd_platform_remove(struct platform_device *pdev)
{
    struct hiaudio_data *had = dev_get_drvdata(&pdev->dev);
    if(had)
        kfree(had);

#ifdef CONFIG_AIAO_ALSA_PROC_SUPPORT
    hiaudio_proc_cleanup();
#endif

    snd_soc_unregister_platform(&pdev->dev);

    return 0;
}

static struct platform_driver hiaudio_dma_driver = {
    .driver = {
        .name = "hisi-audio",
        .owner = THIS_MODULE,
    },
    .probe = soc_snd_platform_probe,
    .remove = __exit_p(soc_snd_platform_remove),
};

static struct platform_device *hiaudio_dma_device;

int hiaudio_dma_init(void)
{
    int ret =0;

    hiaudio_dma_device = platform_device_alloc("hisi-audio", -1);
    if (!hiaudio_dma_device) {
    	ATRCC(KERN_ERR "hiaudio-dma SoC platform device: Unable to register\n");
    	return -ENOMEM;
    }
    
    ret = platform_device_add(hiaudio_dma_device);
    if (ret) {
    	ATRCC(KERN_ERR "hiaudio-dma SoC platform device: Unable to add\n");
    	platform_device_put(hiaudio_dma_device);
       return ret;
    }

    return platform_driver_register(&hiaudio_dma_driver);
}

void hiaudio_dma_deinit(void)
{
    platform_device_unregister(hiaudio_dma_device);
    platform_driver_unregister(&hiaudio_dma_driver);
}
