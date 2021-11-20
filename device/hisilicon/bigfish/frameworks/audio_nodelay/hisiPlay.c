/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : hisiPlay.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2014/03/13
  Description   :
  History       :
  1.Date        : 2014/03/13
    Author      : c00187663
    Modification: Hisi低时延代码调用
******************************************************************************/

#include <stdlib.h>
#include <jni.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <pthread.h>
#include <errno.h>

#include "hi_type.h"
#include "hi_debug.h"

//#include "hi_unf_sio.h"
#include "hi_unf_sound.h"
#include "hi_adp_audio.h"
#include "hi_adp.h"

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_demux.h"
#include "HA.AUDIO.MP3.decode.h"
#include "HA.AUDIO.MP2.decode.h"
#include "HA.AUDIO.AAC.decode.h"
#include "HA.AUDIO.DRA.decode.h"
#include "HA.AUDIO.PCM.decode.h"
#include "HA.AUDIO.WMA9STD.decode.h"
#include "HA.AUDIO.AMRNB.codec.h"
#include "HA.AUDIO.TRUEHDPASSTHROUGH.decode.h"

#include "hi_mpi_ao.h"
#include <android/log.h>

#include "hisiPlay.h"

#define LOGI(...) __android_log_print(ANDROID_LOG_INFO,"hisiPlay",__VA_ARGS__)


#define CHANNELS 1//目前HME VOIP使用的都是单通道
#define SlaveOutputBufSize  1024 * 16

HI_HANDLE g_pTrack = HI_NULL;

HI_S16 PmcBuf[4096] = {0};//44100采样率，20ms数据,双通道 44100 * 0.02 * 2 * 2 单位: 字节 最大48k采样

HI_UNF_AO_FRAMEINFO_S stAOFrame;

static int HI_SND_SAMPLERATE = 44100;//采样率默认为44.1K，支持用户设置 (HiSiSnd_Init)

/*****************************************SOUND common interface************************************/
HI_S32 MIXENGINE_Snd_Init(HI_VOID)
{
    HI_S32 Ret;
    HI_UNF_SND_ATTR_S stAttr;

    Ret = HI_UNF_SND_Init();
    if (Ret != HI_SUCCESS)
    {
        LOGI("call HI_UNF_SND_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_GetDefaultOpenAttr(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        LOGI("call HI_UNF_SND_GetDefaultOpenAttr failed.\n");
        return Ret;
    }

    /* in order to increase the reaction of stop/start, the buf cannot too big*/
    stAttr.u32SlaveOutputBufSize = SlaveOutputBufSize;

    Ret = HI_UNF_SND_Open(HI_UNF_SND_0, &stAttr);
    if (Ret != HI_SUCCESS)
    {
        LOGI("call HI_UNF_SND_Open failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 MIXENGINE_Snd_DeInit(HI_VOID)
{
    HI_S32 Ret;

    Ret = HI_UNF_SND_Close(HI_UNF_SND_0);
    if (Ret != HI_SUCCESS)
    {
        LOGI("call HI_UNF_SND_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_SND_DeInit();
    if (Ret != HI_SUCCESS)
    {
        LOGI("call HI_UNF_SND_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

//added by chuzhengkun
HI_S32 MIXENGINE_Snd_TrackStart()
{
    HI_S32 nRet;
    HI_UNF_AUDIOTRACK_ATTR_S  stTrackAttr;

    HI_BOOL Interleaved = HI_TRUE;
    HI_U32 SampleRate = HI_SND_SAMPLERATE;//采样率
    HI_S32 PcmSamplesPerFrame = HI_SND_SAMPLERATE / 100;//10ms样点数

    HI_UNF_SND_GetDefaultTrackAttr(HI_UNF_SND_TRACK_TYPE_SLAVE, &stTrackAttr);//SLAVE最多支持8路混音

    nRet = HI_UNF_SND_CreateTrack(HI_UNF_SND_0, &stTrackAttr, &g_pTrack);
    if (HI_SUCCESS != nRet)
    {
        LOGI("HI_UNF_SND_CreateTrack err:0x%x\n", nRet);
        return nRet;
    }

    stAOFrame.s32BitPerSample = 16;//采样精度
    stAOFrame.u32Channels   = CHANNELS;//通道数
    stAOFrame.bInterleaved  = Interleaved;//默认为true即可1
    stAOFrame.u32SampleRate = SampleRate;//采样率
    stAOFrame.u32PtsMs = 0xffffffff;//
    stAOFrame.ps32BitsBuffer = HI_NULL;//
    stAOFrame.u32BitsBytesPerFrame = 0;//
    stAOFrame.u32FrameIndex = 0;//
    stAOFrame.u32PcmSamplesPerFrame = PcmSamplesPerFrame;//样点数
    stAOFrame.ps32PcmBuffer = (HI_S32*)(PmcBuf);

    memset(PmcBuf, 0, 4096 * sizeof(HI_S16));

    return HI_SUCCESS;
}

//added by chuzhengkun
HI_S32 MIXENGINE_Snd_TrackStop()
{
    HI_S32 nRet;

    nRet = HI_UNF_SND_DestroyTrack(g_pTrack);
    if (HI_SUCCESS != nRet)
    {
        LOGI("HI_UNF_SND_DestroyTrack err:0x%x\n", nRet);
        return nRet;
    }

    return HI_SUCCESS;
}

//added by chuzhengkun
HI_S32 MIXENGINE_Snd_SendTrackData(short* pstBuffer)
{
    HI_S32 nRet;
    HI_S32 iBytes;

    iBytes = stAOFrame.u32PcmSamplesPerFrame * stAOFrame.u32Channels * sizeof(HI_S16);

    memcpy(stAOFrame.ps32PcmBuffer,pstBuffer,iBytes);

    nRet = HI_UNF_SND_SendTrackData(g_pTrack, &stAOFrame);

    return nRet;
}

//初始化，打开SND设备
int HiSiSnd_Init(int SampleRate)
{
    HI_SYS_Init();
    HI_SND_SAMPLERATE = SampleRate;
    return MIXENGINE_Snd_Init();
}

//创建Track通路 ，设置相关采样率、样点数等参数
int HiSiSnd_Start()
{
    return MIXENGINE_Snd_TrackStart();
}

//销毁相应的Track通路
int HiSiSnd_Stop()
{
    return MIXENGINE_Snd_TrackStop();
}

//关闭SND设备，DeInit
int HiSiSnd_Destroy()
{
    return MIXENGINE_Snd_DeInit();
}

//获取播放时延
unsigned int HiSiSnd_GetDelay()
{
    HI_U32 u32DelayMs;
    HI_U32 Ret;

    Ret =  HI_MPI_AO_Track_GetDelayMs(g_pTrack, &u32DelayMs);
    if(HI_SUCCESS == Ret)
    {
        return u32DelayMs;
    }
    else
    {
        return 0;
    }
}

//将播放数据交给Track播放
void HiSiSnd_SendTrackData(int* src_buf)
{
    int iBytes = 0,nRet;

    iBytes = stAOFrame.u32PcmSamplesPerFrame * CHANNELS * sizeof(short);

    memcpy(stAOFrame.ps32PcmBuffer,src_buf,iBytes);

    while(1)
    {
        nRet = HI_UNF_SND_SendTrackData(g_pTrack, &stAOFrame);
        if (HI_SUCCESS == nRet)//往底层投送数据
        {
            //LOGI("SendTrackData success\n");
            break;
        }
        else if (HI_FAILURE == nRet)
        {
            //LOGI("HI_UNF_SND_Mixer_SendData err:0x%x\n", nRet);
            break;
        }
        else//往底层投送数据，底层缓冲区数据满，等待一段时间，需要重新投送
        {
            usleep(1000);
            //continue;
        }
    }
}

/*
 * 调用这个接口前先保证Track中以及有足够的数据
 *
 * bEnable = HI_TRUE   1  将Track设置为高优先级
 * bEnable = HI_FALSE  0  将Track设置为普通优先级
 */
 /*
int HiSiSnd_SetTrackPriority(int bEnable)
{
    if (HI_NULL == g_pTrack)
    {
        return HI_FAILURE;
    }

    if (bEnable != 0 && bEnable != 1)
    {
        return HI_FAILURE;
    }
    return HI_MPI_AO_Track_SetPriority(g_pTrack, (HI_BOOL)bEnable);
}
*/
#include <alsa/asoundlib.h>

#define HISI_ALSA_CONFIG_CHANNEL  1
#define HI_SI_ALSA_BUFFER_TIME 50
#define HISI_ALSA_PEROID_NUM  10
snd_pcm_t*   chandle = HI_NULL;  //capture handle

static int XrunRecoveryAndStart(snd_pcm_t* handle, int err)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (err == -EPIPE)
    {
        /* under-run */
        err = snd_pcm_prepare(handle);
        if (err < 0)
        {
            LOGI("Can't recovery from underrun, prepare failed: %s\n", snd_strerror(err));
            if (err == -ENOTTY || err == -ENODEV)
            {
                LOGI("error: %s\n", snd_strerror(err));
                //g_StopUsbMicThread = HI_TRUE;  //TODO
                return HI_FAILURE;
            }
        }
        else
        {
            s32Ret = snd_pcm_start(handle);
            if (s32Ret < 0)
            {
                LOGI("Start error: %s\n", snd_strerror(err));
                return HI_FAILURE;
            }
        }

        return 0;
    }
    else if (err == -ESTRPIPE)
    {
        while ((err = snd_pcm_resume(handle)) == -EAGAIN)
        {
            usleep(2000);    /* wait until the suspend flag is released */
        }

        if (err < 0)
        {
            err = snd_pcm_prepare(handle);
            if (err < 0)
            {
                LOGI("Can't recovery from suspend, prepare failed: %s\n", snd_strerror(err));
                if (err == -ENOTTY || err == -ENODEV)
                {
                    LOGI("error: %s\n", snd_strerror(err));
                    //g_StopUsbMicThread = HI_TRUE;  //TODO
                    return HI_FAILURE;
                }
            }
            else
            {
                s32Ret = snd_pcm_start(handle);
                if (s32Ret < 0)
                {
                    LOGI("Start error: %s\n", snd_strerror(err));
                    return HI_FAILURE;
                }
            }
        }

        return HI_SUCCESS;
    }
    else if (err == -ENOTTY || err == -ENODEV)
    {
        LOGI("error: %s\n", snd_strerror(err));
        //g_StopUsbMicThread = HI_TRUE;  //TODO
        return HI_FAILURE;
    }

    return err;
}

int hisi_alsa_deinit()
{
    if(chandle != NULL)
    {
        snd_pcm_hw_free(chandle);
        snd_pcm_close(chandle);
        chandle = HI_NULL;
    }
    return HI_SUCCESS;
}

int hisi_alsa_start()
{
    HI_S32 s32Ret = HI_SUCCESS;
    if(chandle == NULL)
    {
        return HI_FAILURE;
    }
    s32Ret = snd_pcm_start(chandle);
    if (s32Ret < 0)
    {
        LOGI("Start Error: %s\n", snd_strerror(s32Ret));
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

int hisi_alsa_init(int DesiredSampleRate)
{
    snd_pcm_hw_params_t* hardwareParams;
    unsigned int latency = 0;
    unsigned int periodTime = 0;
    unsigned int requestedRate = DesiredSampleRate;
    snd_pcm_uframes_t bufferSize = DesiredSampleRate / 1000 * HI_SI_ALSA_BUFFER_TIME;  //buffersize = 50ms
    char devName[128];
    HI_S32 Ret;
    FILE* fp = NULL;

    memset(devName, 0, 128);

    strcat (devName, "plughw:");

    if ((fp = fopen("/proc/asound/card2/pcm0c/info", "r")))
    {
        LOGI("open card2 cap proc info successful!\n");
        strcat (devName, "2");
        fclose(fp);
    }
    else
    {
        return -2;
        //strcat (devName, "0");
    }

    LOGI("RequestedRate:%d, DevName:%s\n", requestedRate, devName);

    Ret = snd_pcm_open(&chandle, devName, SND_PCM_STREAM_CAPTURE, SND_PCM_ASYNC);
    if (Ret != 0)
    {
        LOGI("snd_pcm_open failed : %s\n", snd_strerror(Ret));
        return Ret;
    }

    if (snd_pcm_hw_params_malloc(&hardwareParams) < 0)
    {
        LOGI("Failed to allocate ALSA hardware parameters!");
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params_any(chandle, hardwareParams);
    if (Ret < 0)
    {
        LOGI("Unable to configure hardware: %s", snd_strerror(Ret));
        return Ret;
    }

    // Set the interleaved read and write format.
    Ret = snd_pcm_hw_params_set_access(chandle, hardwareParams, SND_PCM_ACCESS_RW_INTERLEAVED);
    if (Ret < 0)
    {
        LOGI("Unable to configure PCM read/write format: %s", snd_strerror(Ret));
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params_set_format(chandle, hardwareParams, SND_PCM_FORMAT_S16_LE);
    if (Ret < 0)
    {
        LOGI("Unable to configure PCM format");
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params_set_channels(chandle, hardwareParams, HISI_ALSA_CONFIG_CHANNEL);
    if (Ret < 0)
    {
        LOGI("Unable to set channel count to 1: %s", snd_strerror(Ret));
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params_set_rate_near(chandle, hardwareParams, &requestedRate, 0);
    if (Ret < 0)
    {
        LOGI("Unable to set sample rate to %u: %s", requestedRate, snd_strerror(Ret));
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params_set_buffer_size_near(chandle, hardwareParams, &bufferSize);
    if (Ret < 0)
    {
        LOGI("Unable to set buffer size to %d:  %s", (int)bufferSize, snd_strerror(Ret));
        return HI_FAILURE;
    }

    // Does set_buffer_time_near change the passed value? It should.
    Ret = snd_pcm_hw_params_get_buffer_time(hardwareParams, &latency, NULL);
    if (Ret < 0)
    {
        LOGI("Unable to get the buffer time for latency: %s", snd_strerror(Ret));
        return HI_FAILURE;
    }

    periodTime = latency / HISI_ALSA_PEROID_NUM;
    Ret = snd_pcm_hw_params_set_period_time_near(chandle, hardwareParams, &periodTime, NULL);
    if (Ret < 0)
    {
        LOGI("Unable to set the period time for latency: %s", snd_strerror(Ret));
        return HI_FAILURE;
    }

    Ret = snd_pcm_hw_params(chandle, hardwareParams);
    if (Ret < 0)
    {
        LOGI("Unable to set hardware parameters: %s", snd_strerror(Ret));
        return HI_FAILURE;
    }
    return HI_SUCCESS;
}

int hisi_alsa_read(void* buf, int read_size)
{
    snd_pcm_sframes_t avail = 0;
    HI_S32 s32Ret = HI_SUCCESS;

    if (HI_NULL == buf)
    {
        return HI_FAILURE;
    }

    while (1)
    {
        /*
        while (1)
        {
            avail = snd_pcm_avail(chandle);
            if (avail < 0)
            {
                if ((s32Ret = XrunRecoveryAndStart(chandle, avail)) < 0)
                {
                    LOGI("XrunRecoveryAndStart return failure\n");
                    return HI_FAILURE;
                }
            }
            else if (avail >= read_size)
            {
                break;
            }
            usleep(1000);
        }

        if (HI_FALSE == pstAttr->bConnected)
        {
            HI_ERR_KARAOKE("USB Mic Disconnected!\n");
            return HI_FAILURE;
        }
        */
        do
        {
            avail = snd_pcm_readi(chandle, buf, read_size);
            if (avail < 0)
            {
                if ((s32Ret = XrunRecoveryAndStart(chandle, avail)) < 0)
                {
                    LOGI("XrunRecoveryAndStart return failure\n");
                    return HI_FAILURE;
                }
                continue;
            }
        } while (avail == -EAGAIN);

        if (avail >= 0 && avail < read_size)
        {
            LOGI("snd_pcm_readi read less than wanted!\n");
            continue;
        }
        /*
        if (HI_FALSE == pstAttr->bConnected)
        {
            LOGI("USB Mic Disconnected!\n");
            return HI_FAILURE;
        }
        */
        //LOGI("snd_pcm_readi success!\n");

        return HI_SUCCESS;
    }
}


#ifdef USE_I2S_AI
HI_HANDLE g_hAi = HI_NULL;

int hisi_ai_deinit()
{
    HI_UNF_AI_Destroy(g_hAi);
    HI_UNF_AI_DeInit();
    g_hAi = HI_NULL;
    return HI_SUCCESS;
}

int hisi_ai_init()
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_UNF_AI_ATTR_S stAiAttr;

    s32Ret = HI_UNF_AI_Init();
    if (HI_SUCCESS != s32Ret)
    {
        LOGI("HI_UNF_AI_Init failed.\n");
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_AI_GetDefaultAttr(HI_UNF_AI_I2S0, &stAiAttr);
    if(HI_SUCCESS != s32Ret)
    {
        LOGI("HI_UNF_AI_GetDefaultAttr Failed \n");
        goto AI_DEINIT;
    }

    stAiAttr.u32PcmSamplesPerFrame = HI_UNF_SAMPLE_RATE_48K / 1000 * 10;
    stAiAttr.unAttr.stI2sAttr.stAttr.enChannel = HI_UNF_I2S_CHNUM_1;

    s32Ret = HI_UNF_AI_Create(HI_UNF_AI_I2S0, &stAiAttr, &g_hAi);
    if(HI_SUCCESS != s32Ret)
    {
        LOGI("HI_UNF_AI_Create Failed \n");
        goto AI_DEINIT;
    }
    return HI_SUCCESS;

//AI_DESTROY:
//    HI_UNF_AI_Destroy(g_hAi);

AI_DEINIT:
    HI_UNF_AI_DeInit();
}

int hisi_ai_start()
{
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = HI_UNF_AI_SetEnable(g_hAi, HI_TRUE);
    if(HI_SUCCESS != s32Ret)
    {
        LOGI("Ai Enable Failed \n");
    }
    return s32Ret;
}

int hisi_ai_stop()
{
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = HI_UNF_AI_SetEnable(g_hAi, HI_FALSE);
    if(HI_SUCCESS != s32Ret)
    {
        LOGI("Ai Disable Failed \n");
    }
    return s32Ret;
}

int hisi_ai_read(void* buf, unsigned int read_size)
{
    HI_UNF_AO_FRAMEINFO_S  stAiFrame;
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32FrameSize = 0;

    if (HI_NULL == buf)
    {
        return HI_FAILURE;
    }

    memset(&stAiFrame, 0, sizeof(HI_UNF_AO_FRAMEINFO_S));

    s32Ret = HI_UNF_AI_AcquireFrame(g_hAi, &stAiFrame, 0);
    if (HI_SUCCESS != s32Ret)
    {
        LOGI("HI_UNF_AI_AcquireFrame failed!\n");
        return s32Ret;
    }

    u32FrameSize = stAiFrame.u32PcmSamplesPerFrame * stAiFrame.u32Channels * stAiFrame.s32BitPerSample / 8;
    if (u32FrameSize == read_size)
    {
        memcpy(buf, stAiFrame.ps32PcmBuffer, u32FrameSize);
    }
    else
    {
        LOGI("Invalid AI config!!\n");
    }

    s32Ret = HI_UNF_AI_ReleaseFrame(g_hAi, &stAiFrame);
    if (HI_SUCCESS != s32Ret)
    {
        LOGI("HI_UNF_AI_ReleaseFrame failed!\n");
        return s32Ret;
    }
    return s32Ret;
}
#endif
