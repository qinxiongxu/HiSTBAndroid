/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//#define LOG_NDEBUG 0

#define LOG_TAG "AudioRecord-JNI"

#include <jni.h>
#include <JNIHelp.h>
#include <android_runtime/AndroidRuntime.h>
#include <system/audio.h>
#include <utils/Log.h>
#include <media/AudioRecord.h>
#include <HiKaraokeAudioRecord.h>


#define CALLBACK_COND_WAIT_TIMEOUT_MS 1000
// ----------------------------------------------------------------------------

using namespace android;

// ----------------------------------------------------------------------------
static const char* const kClassPathName = "com/hisilicon/karaoke/HiKaraokeAudioRecord";

struct fields_t {
    // these fields provide access from C++ to the...
    jmethodID postNativeEventInJava; //... event post callback method
    jfieldID  nativeRecorderInJavaObj; // provides access to the C++ AudioRecord object
    jfieldID  nativeCallbackCookie;    // provides access to the AudioRecord callback data
};

static fields_t javaHiKaraokeAudioRecordFields;

struct audiorecord_callback_cookie {
    jclass      audioRecord_class;
    jobject     audioRecord_ref;
    bool        busy;
    Condition   cond;
};

// keep these values in sync with AudioFormat.java
#define ENCODING_PCM_16BIT 2
#define ENCODING_PCM_8BIT  3

static Mutex sLock;
static SortedVector <audiorecord_callback_cookie *> sAudioRecordCallBackCookies;
static SortedVector <audiorecord_callback_cookie *> sHiKaraokeAudioRecordBackCookies;
static const int KARAOKE_MIC_SOURCE = 1000;

// ----------------------------------------------------------------------------

#define AUDIORECORD_SUCCESS                         0
#define AUDIORECORD_ERROR                           -1
#define AUDIORECORD_ERROR_BAD_VALUE                 -2
#define AUDIORECORD_ERROR_INVALID_OPERATION         -3
#define AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT      -16
#define AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK -17
#define AUDIORECORD_ERROR_SETUP_INVALIDFORMAT       -18
#define AUDIORECORD_ERROR_SETUP_INVALIDSOURCE       -19
#define AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED    -20

jint android_media_translateRecorderErrorCode(int code) {
    switch (code) {
    case NO_ERROR:
        return AUDIORECORD_SUCCESS;
    case BAD_VALUE:
        return AUDIORECORD_ERROR_BAD_VALUE;
    case INVALID_OPERATION:
        return AUDIORECORD_ERROR_INVALID_OPERATION;
    default:
        return AUDIORECORD_ERROR;
    }
}


// ----------------------------------------------------------------------------
static void recorderCallback(int event, void* user, void *info) {

    audiorecord_callback_cookie *callbackInfo = (audiorecord_callback_cookie *)user;
    {
        Mutex::Autolock l(sLock);
        if (sAudioRecordCallBackCookies.indexOf(callbackInfo) < 0) {
            return;
        }
        callbackInfo->busy = true;
    }

    switch (event) {
    case AudioRecord::EVENT_MARKER: {
        JNIEnv *env = AndroidRuntime::getJNIEnv();
        if (user != NULL && env != NULL) {
            env->CallStaticVoidMethod(
                callbackInfo->audioRecord_class,
                javaHiKaraokeAudioRecordFields.postNativeEventInJava,
                callbackInfo->audioRecord_ref, event, 0,0, NULL);
            if (env->ExceptionCheck()) {
                env->ExceptionDescribe();
                env->ExceptionClear();
            }
        }
        } break;

    case AudioRecord::EVENT_NEW_POS: {
        JNIEnv *env = AndroidRuntime::getJNIEnv();
        if (user != NULL && env != NULL) {
            env->CallStaticVoidMethod(
                callbackInfo->audioRecord_class,
                javaHiKaraokeAudioRecordFields.postNativeEventInJava,
                callbackInfo->audioRecord_ref, event, 0,0, NULL);
            if (env->ExceptionCheck()) {
                env->ExceptionDescribe();
                env->ExceptionClear();
            }
        }
        } break;
    }

    {
        Mutex::Autolock l(sLock);
        callbackInfo->busy = false;
        callbackInfo->cond.broadcast();
    }
}

//HiKaraokeAudioRecord Start
// ----------------------------------------------------------------------------
static sp<HiKaraokeAudioRecord> getHiKaraokeAudioRecord(JNIEnv* env, jobject thiz)
{
    Mutex::Autolock l(sLock);
    HiKaraokeAudioRecord* const ar =
            (HiKaraokeAudioRecord*)env->GetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj);
    return sp<HiKaraokeAudioRecord>(ar);
}

static sp<HiKaraokeAudioRecord> setHiKaraokeAudioRecord(JNIEnv* env, jobject thiz, const sp<HiKaraokeAudioRecord>& ar)
{
    Mutex::Autolock l(sLock);
    sp<HiKaraokeAudioRecord> old =
            (HiKaraokeAudioRecord*)env->GetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj);
    if (ar.get()) {
        ar->incStrong(thiz);
    }
    if (old != 0) {
        old->decStrong(thiz);
    }
    env->SetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj, (int)ar.get());
    return old;
}

static int
android_media_HiKaraokeAudioRecord_setup(JNIEnv *env, jobject thiz, jobject weak_this,
        jint source, jint sampleRateInHertz, jint channelMask,
        jint audioFormat, jint buffSizeInBytes, jintArray jSession)
{
    //ALOGV(">> Entering android_media_AudioRecord_setup");
    //ALOGV("sampleRate=%d, audioFormat=%d, channels=%x, buffSizeInBytes=%d",
    //     sampleRateInHertz, audioFormat, channels,     buffSizeInBytes);

    if (!audio_is_input_channel(channelMask)) {
        ALOGE("Error creating AudioRecord: channel count is not 1 or 2.");
        return AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK;
    }
    uint32_t nbChannels = popcount(channelMask);

    // compare the format against the Java constants
    if ((audioFormat != ENCODING_PCM_16BIT)
        && (audioFormat != ENCODING_PCM_8BIT)) {
        ALOGE("Error creating AudioRecord: unsupported audio format.");
        return AUDIORECORD_ERROR_SETUP_INVALIDFORMAT;
    }

    int bytesPerSample = audioFormat==ENCODING_PCM_16BIT ? 2 : 1;
    audio_format_t format = audioFormat==ENCODING_PCM_16BIT ?
            AUDIO_FORMAT_PCM_16_BIT : AUDIO_FORMAT_PCM_8_BIT;

    if (buffSizeInBytes == 0) {
         ALOGE("Error creating AudioRecord: frameCount is 0.");
        return AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT;
    }
    int frameSize = nbChannels * bytesPerSample;
    size_t frameCount = buffSizeInBytes / frameSize;

    if ((uint32_t(source) >= AUDIO_SOURCE_CNT) && (uint32_t(source) != KARAOKE_MIC_SOURCE)) {
        ALOGE("Error creating AudioRecord: unknown source.");
        return AUDIORECORD_ERROR_SETUP_INVALIDSOURCE;
    }

    jclass clazz = env->GetObjectClass(thiz);
    if (clazz == NULL) {
        ALOGE("Can't find %s when setting up callback.", kClassPathName);
        return AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED;
    }

    if (jSession == NULL) {
        ALOGE("Error creating AudioRecord: invalid session ID pointer");
        return AUDIORECORD_ERROR;
    }

    jint* nSession = (jint *) env->GetPrimitiveArrayCritical(jSession, NULL);
    if (nSession == NULL) {
        ALOGE("Error creating AudioRecord: Error retrieving session id pointer");
        return AUDIORECORD_ERROR;
    }
    int sessionId = nSession[0];
    env->ReleasePrimitiveArrayCritical(jSession, nSession, 0);
    nSession = NULL;

    // create an uninitialized AudioRecord object
    sp<HiKaraokeAudioRecord> lpRecorder = new HiKaraokeAudioRecord();

    if (lpRecorder == NULL) {
        ALOGE("Error creating AudioRecord instance.");
        return AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED;
    }

    // create the callback information:
    // this data will be passed with every AudioRecord callback
    audiorecord_callback_cookie *lpCallbackData = new audiorecord_callback_cookie;
    lpCallbackData->audioRecord_class = (jclass)env->NewGlobalRef(clazz);
    // we use a weak reference so the AudioRecord object can be garbage collected.
    lpCallbackData->audioRecord_ref = env->NewGlobalRef(weak_this);
    lpCallbackData->busy = false;

    lpRecorder->set((audio_source_t) source,
        sampleRateInHertz,
        format,        // word length, PCM
        nbChannels,
        frameCount,
        recorderCallback,// callback_t
        lpCallbackData,// void* user
        0,             // notificationFrames,
        true,          // threadCanCallJava)
        sessionId);

    if (lpRecorder->initCheck() != NO_ERROR) {
        ALOGE("Error creating AudioRecord instance: initialization check failed.");
        goto native_init_failure;
    }

    nSession = (jint *) env->GetPrimitiveArrayCritical(jSession, NULL);
    if (nSession == NULL) {
        ALOGE("Error creating AudioRecord: Error retrieving session id pointer");
        goto native_init_failure;
    }
    // read the audio session ID back from AudioRecord in case a new session was created during set()
    nSession[0] = lpRecorder->getSessionId();
    env->ReleasePrimitiveArrayCritical(jSession, nSession, 0);
    nSession = NULL;

    {   // scope for the lock
        Mutex::Autolock l(sLock);
        sHiKaraokeAudioRecordBackCookies.add(lpCallbackData);
    }
    // save our newly created C++ AudioRecord in the "nativeRecorderInJavaObj" field
    // of the Java object
    setHiKaraokeAudioRecord(env, thiz, lpRecorder);

    // save our newly created callback information in the "nativeCallbackCookie" field
    // of the Java object (in mNativeCallbackCookie) so we can free the memory in finalize()
    env->SetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeCallbackCookie, (int)lpCallbackData);

    return AUDIORECORD_SUCCESS;

    // failure:
native_init_failure:
    env->DeleteGlobalRef(lpCallbackData->audioRecord_class);
    env->DeleteGlobalRef(lpCallbackData->audioRecord_ref);
    delete lpCallbackData;
    env->SetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeCallbackCookie, 0);

    return AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED;
}



// ----------------------------------------------------------------------------
static int
android_media_HiKaraokeAudioRecord_start(JNIEnv *env, jobject thiz, jint event, jint triggerSession)
{
    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    if (lpRecorder == NULL ) {
        jniThrowException(env, "java/lang/IllegalStateException", NULL);
        return AUDIORECORD_ERROR;
    }

    return android_media_translateRecorderErrorCode(lpRecorder->start());
}


static void
android_media_HiKaraokeAudioRecord_stop(JNIEnv *env, jobject thiz)
{
    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    if (lpRecorder == NULL ) {
        jniThrowException(env, "java/lang/IllegalStateException", NULL);
        return;
    }

    lpRecorder->stop();
    //ALOGV("Called lpRecorder->stop()");
}

static void android_media_HiKaraokeAudioRecord_release(JNIEnv *env,  jobject thiz) {
    sp<HiKaraokeAudioRecord> lpRecorder = setHiKaraokeAudioRecord(env, thiz, 0);
    if (lpRecorder == NULL) {
        return;
    }
    ALOGV("About to delete lpRecorder: %x\n", (int)lpRecorder.get());
    lpRecorder->stop();

    audiorecord_callback_cookie *lpCookie = (audiorecord_callback_cookie *)env->GetIntField(
        thiz, javaHiKaraokeAudioRecordFields.nativeCallbackCookie);

    // reset the native resources in the Java object so any attempt to access
    // them after a call to release fails.
    env->SetIntField(thiz, javaHiKaraokeAudioRecordFields.nativeCallbackCookie, 0);

    // delete the callback information
    if (lpCookie) {
        Mutex::Autolock l(sLock);
        ALOGV("deleting lpCookie: %x\n", (int)lpCookie);
        while (lpCookie->busy) {
            if (lpCookie->cond.waitRelative(sLock,
                milliseconds(CALLBACK_COND_WAIT_TIMEOUT_MS)) !=NO_ERROR)
            {
                break;
            }
        }
        sHiKaraokeAudioRecordBackCookies.remove(lpCookie);
        env->DeleteGlobalRef(lpCookie->audioRecord_class);
        env->DeleteGlobalRef(lpCookie->audioRecord_ref);
        delete lpCookie;
    }
}

static void android_media_HiKaraokeAudioRecord_finalize(JNIEnv *env,  jobject thiz) {
    android_media_HiKaraokeAudioRecord_release(env, thiz);
}



// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_readInByteArray(JNIEnv *env,  jobject thiz,
                                                        jbyteArray javaAudioData,
                                                        jint offsetInBytes, jint sizeInBytes) {
    jbyte* recordBuff = NULL;
    // get the audio recorder from which we'll read new audio samples
    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    if (lpRecorder == NULL) {
        ALOGE("Unable to retrieve AudioRecord object, can't record");
        return 0;
    }

    if (!javaAudioData) {
        ALOGE("Invalid Java array to store recorded audio, can't record");
        return 0;
    }

    // get the pointer to where we'll record the audio
    // NOTE: We may use GetPrimitiveArrayCritical() when the JNI implementation changes in such
    // a way that it becomes much more efficient. When doing so, we will have to prevent the
    // AudioSystem callback to be called while in critical section (in case of media server
    // process crash for instance)
    recordBuff = (jbyte *)env->GetByteArrayElements(javaAudioData, NULL);

    if (recordBuff == NULL) {
        ALOGE("Error retrieving destination for recorded audio data, can't record");
        return 0;
    }

    // read the new audio data from the native AudioRecord object
    ssize_t recorderBuffSize = lpRecorder->frameCount()*lpRecorder->frameSize();
    ssize_t readSize = lpRecorder->read(recordBuff + offsetInBytes,
                                        sizeInBytes > (jint)recorderBuffSize ?
                                            (jint)recorderBuffSize : sizeInBytes );
    env->ReleaseByteArrayElements(javaAudioData, recordBuff, 0);

    return (jint) readSize;
}

// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_readInShortArray(JNIEnv *env,  jobject thiz,
                                                        jshortArray javaAudioData,
                                                        jint offsetInShorts, jint sizeInShorts) {

    return (android_media_HiKaraokeAudioRecord_readInByteArray(env, thiz,
                                                        (jbyteArray) javaAudioData,
                                                        offsetInShorts*2, sizeInShorts*2)
            / 2);
}

// ----------------------------------------------------------------------------

static jint android_media_HiKaraokeAudioRecord_readInDirectBuffer(JNIEnv *env,  jobject thiz,
                                                  jobject jBuffer, jint sizeInBytes) {
    // get the audio recorder from which we'll read new audio samples
    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    if (lpRecorder==NULL)
        return 0;

    // direct buffer and direct access supported?
    long capacity = env->GetDirectBufferCapacity(jBuffer);
    if (capacity == -1) {
        // buffer direct access is not supported
        ALOGE("Buffer direct access is not supported, can't record");
        return 0;
    }
    //ALOGV("capacity = %ld", capacity);
    jbyte* nativeFromJavaBuf = (jbyte*) env->GetDirectBufferAddress(jBuffer);
    if (nativeFromJavaBuf==NULL) {
        ALOGE("Buffer direct access is not supported, can't record");
        return 0;
    }

    // read new data from the recorder
    return (jint) lpRecorder->read(nativeFromJavaBuf,
                                   capacity < sizeInBytes ? capacity : sizeInBytes);
}


// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_set_marker_pos(JNIEnv *env,  jobject thiz,
        jint markerPos) {

    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    if (lpRecorder == NULL) {
        jniThrowException(env, "java/lang/IllegalStateException",
            "Unable to retrieve AudioRecord pointer for setMarkerPosition()");
        return AUDIORECORD_ERROR;
    }
    return android_media_translateRecorderErrorCode( lpRecorder->setMarkerPosition(markerPos) );
}


// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_get_marker_pos(JNIEnv *env,  jobject thiz) {

    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    uint32_t markerPos = 0;

    if (lpRecorder == NULL) {
        jniThrowException(env, "java/lang/IllegalStateException",
            "Unable to retrieve AudioRecord pointer for getMarkerPosition()");
        return AUDIORECORD_ERROR;
    }
    lpRecorder->getMarkerPosition(&markerPos);
    return (jint)markerPos;
}

// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_set_pos_update_period(JNIEnv *env,  jobject thiz,
        jint period) {

    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);

    if (lpRecorder == NULL) {
        jniThrowException(env, "java/lang/IllegalStateException",
            "Unable to retrieve AudioRecord pointer for setPositionUpdatePeriod()");
        return AUDIORECORD_ERROR;
    }
    return android_media_translateRecorderErrorCode( lpRecorder->setPositionUpdatePeriod(period) );
}


// ----------------------------------------------------------------------------
static jint android_media_HiKaraokeAudioRecord_get_pos_update_period(JNIEnv *env,  jobject thiz) {

    sp<HiKaraokeAudioRecord> lpRecorder = getHiKaraokeAudioRecord(env, thiz);
    uint32_t period = 0;

    if (lpRecorder == NULL) {
        jniThrowException(env, "java/lang/IllegalStateException",
            "Unable to retrieve AudioRecord pointer for getPositionUpdatePeriod()");
        return AUDIORECORD_ERROR;
    }
    lpRecorder->getPositionUpdatePeriod(&period);
    return (jint)period;
}

//HiKaraokeAudioRecord end

// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
static JNINativeMethod gMethods[] = {
    // name,               signature,  funcPtr
    {"native_HiKaraokeAudioRecord_start",         "(II)I",
                                        (void *)android_media_HiKaraokeAudioRecord_start},
    {"native_HiKaraokeAudioRecord_stop",          "()V",
                                        (void *)android_media_HiKaraokeAudioRecord_stop},
    {"native_HiKaraokeAudioRecord_setup",         "(Ljava/lang/Object;IIIII[I)I",
                                       (void *)android_media_HiKaraokeAudioRecord_setup},
    {"native_HikaraokeAudioRecord_finalize",      "()V",
                                        (void *)android_media_HiKaraokeAudioRecord_finalize},
    {"native_HiKaraokeAudioRecord_release",       "()V",
                                        (void *)android_media_HiKaraokeAudioRecord_release},
    {"native_HiKaraokeAudioRecord_read_in_byte_array",
                             "([BII)I", (void *)android_media_HiKaraokeAudioRecord_readInByteArray},
    {"native_HiKaraokeAudioRecord_read_in_short_array",
                             "([SII)I", (void *)android_media_HiKaraokeAudioRecord_readInShortArray},
    {"native_HiKaraokeAudioRecord_read_in_direct_buffer","(Ljava/lang/Object;I)I",
                                       (void *)android_media_HiKaraokeAudioRecord_readInDirectBuffer},
    {"native_HiKaraokeAudioRecord_set_marker_pos","(I)I",
                                        (void *)android_media_HiKaraokeAudioRecord_set_marker_pos},
    {"native_HiKaraokeAudioRecord_get_marker_pos","()I",
                                        (void *)android_media_HiKaraokeAudioRecord_get_marker_pos},
    {"native_HiKaraokeAudioRecord_set_pos_update_period",
                             "(I)I",   (void *)android_media_HiKaraokeAudioRecord_set_pos_update_period},
    {"native_HiKaraokeAudioRecord_get_pos_update_period",
                             "()I",    (void *)android_media_HiKaraokeAudioRecord_get_pos_update_period},
};

// field names found in android/media/AudioRecord.java
#define JAVA_POSTEVENT_CALLBACK_NAME  "postEventFromNative"
#define JAVA_NATIVERECORDERINJAVAOBJ_FIELD_NAME  "mNativeRecorderInJavaObj"
#define JAVA_NATIVECALLBACKINFO_FIELD_NAME       "mNativeCallbackCookie"

// ----------------------------------------------------------------------------
int register_com_hisilicon_karaoke_AudioRecord(JNIEnv *env)
{

    javaHiKaraokeAudioRecordFields.postNativeEventInJava = NULL;
    javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj = NULL;
    javaHiKaraokeAudioRecordFields.nativeCallbackCookie = NULL;


    // Get the AudioRecord class
    jclass hiKaraokeAudioRecordClass = env->FindClass(kClassPathName);
    if (hiKaraokeAudioRecordClass == NULL) {
        ALOGE("Can't find %s", kClassPathName);
        return -1;
    }
    // Get the postEvent method
    /*javaHiKaraokeAudioRecordFields.postNativeEventInJava = env->GetStaticMethodID(
            hiKaraokeAudioRecordClass,
            JAVA_POSTEVENT_CALLBACK_NAME, "(Ljava/lang/Object;IIILjava/lang/Object;)V");
    if (javaHiKaraokeAudioRecordFields.postNativeEventInJava == NULL) {
        ALOGE("Can't find AudioRecord.%s", JAVA_POSTEVENT_CALLBACK_NAME);
        return -1;
    }*/

    // Get the variables
    //    mNativeRecorderInJavaObj
    javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj =
        env->GetFieldID(hiKaraokeAudioRecordClass,
                        JAVA_NATIVERECORDERINJAVAOBJ_FIELD_NAME, "I");
    if (javaHiKaraokeAudioRecordFields.nativeRecorderInJavaObj == NULL) {
        ALOGE("Can't find AudioRecord.%s", JAVA_NATIVERECORDERINJAVAOBJ_FIELD_NAME);
        return -1;
    }
    //     mNativeCallbackCookie
    javaHiKaraokeAudioRecordFields.nativeCallbackCookie = env->GetFieldID(
            hiKaraokeAudioRecordClass,
            JAVA_NATIVECALLBACKINFO_FIELD_NAME, "I");
    if (javaHiKaraokeAudioRecordFields.nativeCallbackCookie == NULL) {
        ALOGE("Can't find AudioRecord.%s", JAVA_NATIVECALLBACKINFO_FIELD_NAME);
        return -1;
    }

    return AndroidRuntime::registerNativeMethods(env,
            kClassPathName, gMethods, NELEM(gMethods));
}

// ----------------------------------------------------------------------------
jint JNI_OnLoad(JavaVM* vm, void* reserved)
{
    JNIEnv* env = NULL;
    jint result = -1;

    ALOGV("HiKaraokeAudioRecord JNI Call\n");
    if (vm->GetEnv((void**)&env, JNI_VERSION_1_4) != JNI_OK)
    {
        ALOGE("ERROR: GetEnv failed\n");
        goto bail;
    }

    if (env == NULL)
    {
        goto bail;
    }

    if (register_com_hisilicon_karaoke_AudioRecord(env) < 0)
    {
        ALOGE("ERROR: Karaoke native registraction failed\n");
        goto bail;
    }

    result = JNI_VERSION_1_4;
bail:
    return result;
}