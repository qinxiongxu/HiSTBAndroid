#define LOG_NDEBUG 0
#define LOG_TAG "Karaoke-JNI"

#include "JNIHelp.h"
#include <android_runtime/AndroidRuntime.h>

#include <android_runtime/AndroidRuntime.h>
#include <utils/RefBase.h>
#include <IHiKaraokeService.h>
#include <binder/IServiceManager.h>

using namespace android;

/*
static sp<IHiKaraokeService>& getKaraokeService()
{
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService;
}*/


static jint com_hisilicon_karaoke_Karaoke_setReverbMode(JNIEnv *env, jobject thiz, jint mode)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->setReverbMode(mode);
}

static jint com_hisilicon_karaoke_Karaoke_getReverbMode(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->getReverbMode();
}

static jint com_hisilicon_karaoke_Karaoke_micInitial(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->initMic();
}

static jint com_hisilicon_karaoke_Karaoke_micStart(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->startMic();
}

static jint com_hisilicon_karaoke_Karaoke_micStop(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->stopMic();
}

static jint com_hisilicon_karaoke_Karaoke_micRelease(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->releaseMic();
}

static jint com_hisilicon_karaoke_Karaoke_getMicNumber(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->getMicNumber();
}

static jint com_hisilicon_karaoke_Karaoke_setMicVolume(JNIEnv *env, jobject thiz, jint volume)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->setMicVolume(volume);
}

static jint com_hisilicon_karaoke_Karaoke_getMicVolume(JNIEnv *env, jobject thiz)
{
    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->getMicVolume();
}

static jint com_hisilicon_karaoke_Karaoke_initMicRead(JNIEnv *env, jobject thiz, jint sampleRate,
        jint channelCount, jint bitPerSample)
{
    return 0;
}

static jint com_hisilicon_karaoke_Karaoke_startMicRead(JNIEnv *env, jobject thiz)
{

    return 0;
}

static jint com_hisilicon_karaoke_Karaoke_stopMicRead(JNIEnv *env, jobject thiz)
{
    return 0;
}

static jint com_hisilicon_karaoke_Karaoke_readMicDataByByte(JNIEnv *env,  jobject thiz,
                                                        jbyteArray javaAudioData,
                                                        jint offsetInBytes, jint sizeInBytes)
{
    return 0;
}

static jint com_hisilicon_karaoke_Karaoke_readMicDataByShort(JNIEnv *env,  jobject thiz,
                                                        jshortArray javaAudioData,
                                                        jint offsetInBytes, jint sizeInBytes)
{
    return 0;
}


static jint com_hisilicon_karaoke_Karaoke_prepareAudioMixedDataRecord(JNIEnv *env,  jobject thiz,jstring path,
                                                                jint outputFormat, jint audioEncoder,
                                                                jint sampleRate, jint bitRate, jint channels)
{
    return 0;

}

static jint com_hisilicon_karaoke_Karaoke_setAudioMixedDataRecordState(JNIEnv *env,  jobject thiz, jint state)
{
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->setHiKaraokeMediaRecordState(state);
}


static jint com_hisilicon_karaoke_Karaoke_readAudioMixedDataByByte(JNIEnv *env,  jobject thiz,
                                                        jbyteArray javaAudioData,
                                                        jint offsetInBytes, jint sizeInBytes)
{
//    ALOGV("%s Call %s IN", LOG_TAG, __FUNCTION__);


    return 0;

}

static jint com_hisilicon_karaoke_Karaoke_isInitialized(JNIEnv *env,  jobject thiz)
{
    sp<IBinder> binder = defaultServiceManager()->getService(String16("hikaraokeservice"));
    sp<IHiKaraokeService> mKaraokeService = interface_cast<IHiKaraokeService>(binder);
    if (mKaraokeService.get() == NULL)
    {
        ALOGE("Cannot connect to the hikaraoke Service.");
    }
    return mKaraokeService->getInitState();
}


const static JNINativeMethod gMethods[] =
{
    { "setReverbMode", "(I)I", (void*)com_hisilicon_karaoke_Karaoke_setReverbMode },
    { "getReverbMode", "()I", (void*)com_hisilicon_karaoke_Karaoke_getReverbMode },
    { "micInitial", "()I", (void*)com_hisilicon_karaoke_Karaoke_micInitial },
    { "micStart", "()I", (void*)com_hisilicon_karaoke_Karaoke_micStart },
    { "micStop", "()I", (void*)com_hisilicon_karaoke_Karaoke_micStop },
    { "micRelease", "()I", (void*)com_hisilicon_karaoke_Karaoke_micRelease },
    { "getMicNumber", "()I", (void*)com_hisilicon_karaoke_Karaoke_getMicNumber },
    { "setMicVolume", "(I)I", (void*)com_hisilicon_karaoke_Karaoke_setMicVolume },
    { "getMicVolume", "()I", (void*)com_hisilicon_karaoke_Karaoke_getMicVolume },
    { "initMicRead", "(III)I", (void*)com_hisilicon_karaoke_Karaoke_initMicRead },
    { "startMicRead", "()I", (void*)com_hisilicon_karaoke_Karaoke_startMicRead },
    { "stopMicRead", "()I", (void*)com_hisilicon_karaoke_Karaoke_stopMicRead },
    { "readMicDataByByte", "([BII)I", (void*)com_hisilicon_karaoke_Karaoke_readMicDataByByte},
    { "readMicDataByShort", "([SII)I", (void*)com_hisilicon_karaoke_Karaoke_readMicDataByShort},
    { "prepareAudioMixedDataRecord", "(Ljava/lang/String;IIIII)I", (void*)com_hisilicon_karaoke_Karaoke_prepareAudioMixedDataRecord },
    { "setAudioMixedDataRecordState", "(I)I", (void*)com_hisilicon_karaoke_Karaoke_setAudioMixedDataRecordState },
    { "readAudioMixedDataByByte", "([BII)I", (void*)com_hisilicon_karaoke_Karaoke_readAudioMixedDataByByte },
    { "isInitialized", "()I", (void*)com_hisilicon_karaoke_Karaoke_isInitialized }
};

static int register_com_hisilicon_karaoke_method(JNIEnv *env)
{
    jclass clazz;

    clazz = env->FindClass("com/hisilicon/karaoke/Karaoke");

    if (clazz == NULL)
        return JNI_FALSE;
    if (env->RegisterNatives(clazz, gMethods, NELEM(gMethods)) < 0)
        return JNI_FALSE;
    return JNI_TRUE;
}

jint JNI_OnLoad(JavaVM *vm, void *reserved)
{
    JNIEnv *env = NULL;
    jint result = -1;

    ALOGV("Karaoke JNI Call\n");
    if (vm->GetEnv((void**)&env, JNI_VERSION_1_4) != JNI_OK)
    {
        ALOGE("ERROR: GetEnv failed\n");
        goto bail;
    }

    if(env == NULL)
    {
        goto bail;
    }

    if (register_com_hisilicon_karaoke_method(env) < 0)
    {
        ALOGE("ERROR: Karaoke native registraction failed\n");
        goto bail;
    }

    result = JNI_VERSION_1_4;
bail:
    return result;
}
