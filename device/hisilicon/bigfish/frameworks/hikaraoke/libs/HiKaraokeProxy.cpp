#define  LOG_NDEBUG 0
#define  LOG_TAG "HiKaraokeProxy"

#include <utils/Log.h>
#include <errno.h>
#include <pthread.h>

#include "HiKaraokeProxy.h"
#include "hi_unf_common.h"
#include "hi_karaoke.h"

#define MAX_LINE_SIZE (1024)

namespace android
{


    static const int MIC_STATE_DISCONNECTED = 0;
    static const int MIC_STATE_CONNECTED = 1;
    static int g_checkMicStatusThreadFlag = HI_FALSE;
    static int g_micConnectState = MIC_STATE_DISCONNECTED;

    static HI_HANDLE  g_hKaraoke = HI_NULL;
    static HI_KARAOKE_ATTR_S  g_hKaraokeAttr;
    static HI_UNF_AO_FRAMEINFO_S  g_hMicFrame;
    static uint32_t micVolume = 0;

    static int32_t g_mixFile = 0;

    static int g_stopMixThread = HI_FALSE;
    static int g_mixThreadPullFlag = HI_FALSE;

    static pthread_t g_checkThread = 0;
    static pthread_t g_mixThread = 0;
    static pthread_mutex_t g_karaokeMutex = PTHREAD_MUTEX_INITIALIZER;

    static void* mixedDataPullThread(void* param)
    {
        int ret = 0;
        unsigned int framesize = 0;
        HI_KARAOKE_MIXDATAFRAME_S  stMixFrame;
        while (!g_stopMixThread)
        {
            if (g_mixThreadPullFlag)
            {
                ret = HI_KARAOKE_AcquireMixFrame(g_hKaraoke, &stMixFrame, 0);
                // ALOGD("AcquireMixFrame ret = %d", ret);
                if (ret == 0)
                {
                    framesize = stMixFrame.stMixBufStream.u32BufLen;
                    //   ALOGD("length = %d", framesize);
                    if (framesize > 0)
                    {
                        ret = write(g_mixFile, stMixFrame.stMixBufStream.pu8Buf, framesize);
                        //  ALOGD("ret = %d", ret);

                    }
                    ret = HI_KARAOKE_ReleaseMixFrame(g_hKaraoke, &stMixFrame);
                    if (0 != ret)
                    {
                        ALOGD("Release MixFrame Failed!\n");
                        break;
                    }
                }
                else
                {
                    usleep(10000);
                }
            }
            else
            {
                //   ALOGD("g_mixThreadPullFlag = %d", g_mixThreadPullFlag);
                usleep(50000);
            }
        }
        return (void*)0;
    }

    static void* MicStatusCheckThread(void* param)
    {
        int ret = 0;
        HI_BOOL enable = HI_FALSE;
        while (g_checkMicStatusThreadFlag)
        {
            ret = HI_KARAOKE_GetEnable(g_hKaraoke, &enable);
            if (HI_SUCCESS != ret)
            {
                ALOGD("mic disconnect");
                g_micConnectState = MIC_STATE_DISCONNECTED;
                HI_KARAOKE_Destroy(g_hKaraoke);
                break;
            }
            usleep(300000);
        }
        return (void*)0;
    }

    static int checkIsUsbMicIn()
    {
        FILE* fp = NULL;
        char buf[MAX_LINE_SIZE] = {0};
        const char* pUsbTag = "USB";
        const char* pCaptrueTag = "";
        memset(buf, 0, MAX_LINE_SIZE);

        fp = fopen("/proc/asound/pcm", "r");
        if (NULL == fp)
        {
            ALOGE("can not open /proc/asound/pcm");
            return HI_FAILURE;
        }
        while (fgets(buf, MAX_LINE_SIZE, fp) != NULL)
        {
            if (strstr(buf, pUsbTag) != NULL)
            {
                ALOGD("karaoke get usb audio info: %s", buf);
                char* p = strrchr(buf, ' ');
                if (*(p + 1) == '1')
                {
                    fclose(fp);
                    return HI_SUCCESS;
                }
            }
            memset(buf, 0, MAX_LINE_SIZE);
        }
        fclose(fp);
        return HI_FAILURE;
    }

    HiKaraokeProxy::HiKaraokeProxy()
    {
        HI_KARAOKE_Init(&g_hKaraoke);
        pthread_mutex_init(&g_karaokeMutex, NULL);
    }

    HiKaraokeProxy::~HiKaraokeProxy()
    {
        HI_KARAOKE_DeInit(g_hKaraoke);
        pthread_mutex_destroy(&g_karaokeMutex);
    }

    int32_t HiKaraokeProxy::initMic()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        HI_KARAOKE_ATTR_S  stAttr;
        int ret = HI_FAILURE;

        if (MIC_STATE_CONNECTED == g_micConnectState)
        {
            return HI_SUCCESS;
        }

        ret = checkIsUsbMicIn();
        if (HI_SUCCESS != ret)
        {
            ALOGE("open mic failed");
            g_micConnectState = MIC_STATE_DISCONNECTED;
            return (int)HI_FAILURE;
        }
        else
        {
            g_micConnectState = MIC_STATE_CONNECTED;
        }

        ret = HI_KARAOKE_GetDefaultKaraokeAttr(&stAttr);
        if (HI_SUCCESS != ret)
        {
            ALOGE("GetDefaultTrackAttr failed");
            return HI_FAILURE;
        }
        ret = HI_KARAOKE_Create(HI_UNF_SND_0, &stAttr, g_hKaraoke);
        if (HI_SUCCESS != ret)
        {
            ALOGE("Create failed");
            return HI_FAILURE;
        }

        g_checkMicStatusThreadFlag = HI_TRUE;
        pthread_create(&g_checkThread, HI_NULL, MicStatusCheckThread, HI_NULL);

        return ret;
    }

    int32_t HiKaraokeProxy::startMic()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        uint32_t ret = HI_KARAOKE_SetEnable(g_hKaraoke, HI_TRUE);
        return ret;
    }

    int32_t HiKaraokeProxy::stopMic()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        int ret = HI_FAILURE;
        if (MIC_STATE_CONNECTED == g_micConnectState)
        {
            ret = HI_KARAOKE_SetEnable(g_hKaraoke, HI_FALSE);
        }
        return ret;
    }

    int32_t HiKaraokeProxy::releaseMic()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        if (MIC_STATE_CONNECTED == g_micConnectState)
        {
            g_checkMicStatusThreadFlag = HI_FALSE;
            pthread_join(g_checkThread, 0);
            g_checkThread = 0;
            HI_KARAOKE_Destroy(g_hKaraoke);
            g_micConnectState = MIC_STATE_DISCONNECTED;
        }
        return HI_SUCCESS;
    }

    int32_t HiKaraokeProxy::setReverbMode(uint32_t mode)
    {
        ALOGV("%s Call %s IN mode = %d", LOG_TAG, __FUNCTION__, mode);

       /* if (mode < HI_KARAOKE_REVERB_TYPE_NULL || mode > HI_KARAOKE_REVERB_TYPE_BUTT)
        {
            return HI_FAILURE;
        }*/

        uint32_t type = HI_KARAOKE_REVERB_TYPE_NULL;

        switch (mode)
        {
            case REVERB_MODE_STUDIO:
                type = HI_KARAOKE_REVERB_TYPE_NULL;
                break;
            case REVERB_MODE_KTV:
                type = HI_KARAOKE_REVERB_TYPE_KTV;
                break;
            case REVERB_MODE_CONCERT:
                type = HI_KARAOKE_REVERB_TYPE_CONCERT;
                break;
            case REVERB_MODE_MAN:
                type = HI_KARAOKE_REVERB_TYPE_THEATRE;
                break;
            case REVERB_MODE_WOMAN:
                type = HI_KARAOKE_REVERB_TYPE_HALL;
                break;
            default:
                type = HI_KARAOKE_REVERB_TYPE_NULL;
                break;
        }
        return HI_KARAOKE_SetREVERBConfig(g_hKaraoke, (HI_KARAOKE_REVERB_TYPE_E)type);
    }

    uint32_t HiKaraokeProxy::getReverbMode()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);

        HI_KARAOKE_REVERB_TYPE_E type;
        int mode, ret;

        ret = HI_KARAOKE_GetREVERBConfig(g_hKaraoke, &type);
        if (ret != HI_SUCCESS)
        {
            ALOGE("GetREVERBConfig failed");
            return HI_FAILURE;
        }

        switch (type)
        {
            case HI_KARAOKE_REVERB_TYPE_NULL:
                mode = REVERB_MODE_STUDIO;
                break;
            case HI_KARAOKE_REVERB_TYPE_KTV:
                mode = REVERB_MODE_KTV;
                break;
            case HI_KARAOKE_REVERB_TYPE_CONCERT:
                mode = REVERB_MODE_CONCERT;
                break;
            case HI_KARAOKE_REVERB_TYPE_THEATRE:
                mode = REVERB_MODE_MAN;
                break;
            case HI_KARAOKE_REVERB_TYPE_HALL:
                mode = REVERB_MODE_WOMAN;
                break;
            default:
                mode = REVERB_MODE_STUDIO;
                break;
        }
        ALOGV("%s Call %s IN mode = %d", LOG_TAG, __FUNCTION__, mode);
        return mode;
    }

    uint32_t HiKaraokeProxy::getMicNumber()
    {
        if (checkIsUsbMicIn() == HI_SUCCESS)
        {
            return 1;
        }
        return -1;
    }

    int32_t HiKaraokeProxy::setMicVolume(uint32_t volume)
    {
        ALOGV("%s  Call %s IN", LOG_TAG, __FUNCTION__);
        if (volume > 100)
        {
            ALOGE("unknown volume setting");
            return HI_FAILURE;
        }

        micVolume = volume;

#if 1
        int  DB_MAP[16] = {-81, -40, -20, -10, -4, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8};
        //int DB_MAP[] = {-81, -42, -36, -30, -24, -18, -12, -9, -6, -3, 0, 3, 6, 9, 12, 15};

#else
        //TODO    int  DB_MAP[16] = {-81 ,  -47,  -23,  -17,  -11,  -9,  -4,   0, 1,  2,  3,  4,  5, 6, 7, 8};
#endif

        unsigned int vol_user = (volume + 7 - 1) / 7;
        if (vol_user > 15)
        {
            vol_user = 15;
        }

        HI_UNF_SND_ABSGAIN_ATTR_S stAbsWeightGain;
        stAbsWeightGain.bLinearMode = HI_FALSE;
        stAbsWeightGain.s32GainL = DB_MAP[vol_user];
        stAbsWeightGain.s32GainR = DB_MAP[vol_user];

        return HI_KARAOKE_SetMicWeight(g_hKaraoke, &stAbsWeightGain);

    }

    uint32_t HiKaraokeProxy::getMicVolume()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        return micVolume;
    }

    int32_t HiKaraokeProxy::initMicRead(uint32_t sampleRate,
                                        uint32_t channelCount, uint32_t bitPerSample)
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        if (sampleRate < HI_UNF_SAMPLE_RATE_8K || sampleRate > HI_UNF_SAMPLE_RATE_192K)
        {
            ALOGE("Call %s line = %d", __FUNCTION__, __LINE__);
            return HI_FAILURE;
        }

        if (channelCount <= 0 || channelCount > 2)
        {
            ALOGE("Call %s line = %d", __FUNCTION__, __LINE__);
            return HI_FAILURE;
        }

        if (bitPerSample <= 0 || bitPerSample > 32)
        {
            ALOGE("Call %s line = %d", __FUNCTION__, __LINE__);
            return HI_FAILURE;
        }

        ALOGV("%s Call %s IN sampleRate = %d", LOG_TAG, __FUNCTION__, sampleRate);
        ALOGV("%s Call %s IN channelCount = %d", LOG_TAG, __FUNCTION__, channelCount);
        ALOGV("%s Call %s IN bitPerSample = %d", LOG_TAG, __FUNCTION__, bitPerSample);

        g_hMicFrame.s32BitPerSample = bitPerSample;
        g_hMicFrame.u32Channels = channelCount;
        g_hMicFrame.u32SampleRate = sampleRate;
        g_hMicFrame.bInterleaved = HI_TRUE;
        g_hMicFrame.u32PtsMs = 0xffffffff;
        g_hMicFrame.ps32BitsBuffer = HI_NULL;
        g_hMicFrame.u32FrameIndex = 0;
        g_hMicFrame.u32PcmSamplesPerFrame = 0;
        g_hMicFrame.ps32PcmBuffer = HI_NULL;

        return HI_SUCCESS;
    }

    int32_t HiKaraokeProxy::startMicRead()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        int32_t ret;
        pthread_mutex_lock(&g_karaokeMutex);
        ret = HI_KARAOKE_SetAcquireMicFrameEnable(g_hKaraoke, HI_TRUE);
        pthread_mutex_unlock(&g_karaokeMutex);
        return ret;
    }

    int32_t HiKaraokeProxy::stopMicRead()
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        int32_t ret;
        pthread_mutex_lock(&g_karaokeMutex);
        ret = HI_KARAOKE_SetAcquireMicFrameEnable(g_hKaraoke, HI_FALSE);
        pthread_mutex_unlock(&g_karaokeMutex);
        return ret;
    }

    uint32_t HiKaraokeProxy::readMicData(int8_t* data, uint32_t size)
    {
        int32_t count = 0;
        int32_t readSize = 0;
        int32_t ret = 0;

        count = g_hMicFrame.u32Channels * g_hMicFrame.s32BitPerSample / 8;
        g_hMicFrame.u32PcmSamplesPerFrame = size / count;
        ret = HI_KARAOKE_AcquireMicFrame(g_hKaraoke, &g_hMicFrame, 0);

        if (HI_SUCCESS == ret)
        {
            readSize = g_hMicFrame.u32PcmSamplesPerFrame * count;
            memcpy(data, g_hMicFrame.ps32PcmBuffer, readSize);
        }
        return readSize;
    }

    int32_t HiKaraokeProxy::setOutputFile(int fd, int64_t offset, int64_t length)
    {
        ALOGV("%s Call %s IN fd = %d", LOG_TAG, __FUNCTION__, fd);
        if (g_mixFile > 0)
        {
            ::close(g_mixFile);
        }
        g_mixFile = dup(fd);
        ALOGV("g_mixFile = %d", g_mixFile);
        return 0;
    }

    int32_t HiKaraokeProxy::initMixedDataRead(int fd, uint32_t outputFormat, uint32_t audioEncoder,
            uint32_t sampleRate, uint32_t bitRate, uint32_t channels)
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        ALOGV("fd = %d outputFormat = %d, audioEncoder = %d, sampleRate = %d, bitRate = %d, channels = %d",
              fd, outputFormat, audioEncoder, sampleRate, bitRate, channels);
        int32_t ret = 0;
        //   g_mixFile = fd;
        HI_KARAOKE_MIX_ATTR_S stAencAttr;
        stAencAttr.s16ChannelsIn = 2;
        stAencAttr.s16ChannelsOut = channels;
        stAencAttr.s32BitRate = bitRate;
        stAencAttr.s32SampleRate = sampleRate;

        ret = HI_KARAOKE_SetMixFrameAttr(g_hKaraoke, &stAencAttr);

        g_stopMixThread = 0;
        g_mixThreadPullFlag = 0;
        pthread_create(&g_mixThread, HI_NULL, mixedDataPullThread, HI_NULL);

        return ret;
    }

    int32_t HiKaraokeProxy::setMixedDataRecordState(uint32_t state)
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        ALOGV("setState: state = %d", state);
        switch (state)
        {
            case RECORD_STATE_START:
            case RECORD_STATE_RESUME:
                pthread_mutex_lock(&g_karaokeMutex);
                HI_KARAOKE_SetAcquireMixFrameEnable(g_hKaraoke, HI_TRUE);
                pthread_mutex_unlock(&g_karaokeMutex);
                g_mixThreadPullFlag = HI_TRUE;
                break;
            case RECORD_STATE_PAUSE:
            case RECORD_STATE_STOP:
                g_mixThreadPullFlag = HI_FALSE;
                pthread_mutex_lock(&g_karaokeMutex);
                HI_KARAOKE_SetAcquireMixFrameEnable(g_hKaraoke, HI_FALSE);
                pthread_mutex_unlock(&g_karaokeMutex);
                break;
            case RECORD_STATE_RELEASE:
                g_stopMixThread = HI_TRUE;
                if (g_mixThread)
                {
                    pthread_join(g_mixThread, 0);
                    g_mixThread = 0;
                }
                if (g_mixFile)
                {
                    close(g_mixFile);
                    g_mixFile = 0;
                }
                break;
            default:
                break;
        }
        return 0;
    }

    int32_t HiKaraokeProxy::setKarAlg(uint32_t alg, uint32_t status)
    {
        ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
        ALOGV("alg = %d status = %d", alg, status);
        return HI_KARAOKE_SetEnableKde(g_hKaraoke, alg, (HI_BOOL)status);
    }


};
