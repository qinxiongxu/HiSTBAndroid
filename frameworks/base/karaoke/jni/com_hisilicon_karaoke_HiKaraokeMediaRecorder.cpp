/*
 * Copyright (C) 2008 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <assert.h>
#include <fcntl.h>
#include <inttypes.h>
#include <limits.h>
#include <stdio.h>
#include <unistd.h>

#define LOG_NDEBUG 0
#define LOG_TAG "HiKaraokeMediaRecorder-JNI"
#include <media/mediarecorder.h>
#include <utils/Log.h>

#include "jni.h"
#include "JNIHelp.h"
#include "android_runtime/AndroidRuntime.h"

#include <HiKaraokeMediaRecord.h>
#include <IHiKaraokeService.h>

#include <system/audio.h>

// ----------------------------------------------------------------------------

using namespace android;

// ----------------------------------------------------------------------------

struct fields_t
{
    jfieldID    context;
    jfieldID    surface;

    jmethodID   post_event;
};
static fields_t fields;

static Mutex sLock;
//for karaoke
static const int KARAOKE_SPEAKER = 1001;


// Returns true if it throws an exception.
static bool process_media_recorder_call(JNIEnv* env, status_t opStatus, const char* exception, const char* message)
{
    ALOGV("process_media_recorder_call");
    if (opStatus == (status_t)INVALID_OPERATION)
    {
        jniThrowException(env, "java/lang/IllegalStateException", NULL);
        return true;
    }
    else if (opStatus != (status_t)OK)
    {
        jniThrowException(env, exception, message);
        return true;
    }
    return false;
}


//for karaoke
static sp<HiKaraokeMediaRecord> getHiKaraokeMediaRecorder(JNIEnv* env, jobject thiz)
{
    Mutex::Autolock l(sLock);
    HiKaraokeMediaRecord* const p = (HiKaraokeMediaRecord*)env->GetLongField(thiz, fields.context);
    return sp<HiKaraokeMediaRecord>(p);
}

static sp<HiKaraokeMediaRecord> setHiKaraokeMediaRecorder(JNIEnv* env, jobject thiz, const sp<HiKaraokeMediaRecord>& recorder)
{
    Mutex::Autolock l(sLock);
    sp<HiKaraokeMediaRecord> old = (HiKaraokeMediaRecord*)env->GetLongField(thiz, fields.context);
    if (recorder.get())
    {
        recorder->incStrong(thiz);
    }
    if (old != 0)
    {
        old->decStrong(thiz);
    }
    env->SetLongField(thiz, fields.context, (jlong)recorder.get());
    return old;
}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_setAudioSource(JNIEnv* env, jobject thiz, jint as)
{
    ALOGV("setAudioSource(%d)", as);
    if (as < AUDIO_SOURCE_DEFAULT || ((as >= AUDIO_SOURCE_CNT) && (as != KARAOKE_SPEAKER)))
    {
        jniThrowException(env, "java/lang/IllegalArgumentException", "Invalid audio source");
        return;
    }


    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->setAudioSource(as), "java/lang/RuntimeException", "setAudioSource failed.");
    return;

}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_setOutputFormat(JNIEnv* env, jobject thiz, jint of)
{
    ALOGV("setOutputFormat(%d)", of);
    if (of < OUTPUT_FORMAT_DEFAULT || of >= OUTPUT_FORMAT_LIST_END)
    {
        jniThrowException(env, "java/lang/IllegalArgumentException", "Invalid output format");
        return;
    }

    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->setOutputFormat(of), "java/lang/RuntimeException", "setOutputFormat failed.");
    return;
}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_setAudioEncoder(JNIEnv* env, jobject thiz, jint ae)
{
    ALOGV("setAudioEncoder(%d)", ae);
    if (ae < AUDIO_ENCODER_DEFAULT || ae >= AUDIO_ENCODER_LIST_END)
    {
        jniThrowException(env, "java/lang/IllegalArgumentException", "Invalid audio encoder");
        return;
    }


    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->setAudioEncoder(ae), "java/lang/RuntimeException", "setAudioEncoder failed.");
    return;
}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_setParameter(JNIEnv* env, jobject thiz, jstring params)
{
    ALOGV("setParameter()");
    if (params == NULL)
    {
        ALOGE("Invalid or empty params string.  This parameter will be ignored.");
        return;
    }

    const char* params8 = env->GetStringUTFChars(params, NULL);
    if (params8 == NULL)
    {
        ALOGE("Failed to covert jstring to String8.  This parameter will be ignored.");
        return;
    }

    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->setParameters(String8(params8)), "java/lang/RuntimeException", "setParameter failed.");
    env->ReleaseStringUTFChars(params, params8);
    return;

}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_setOutputFileFD(JNIEnv* env, jobject thiz, jobject fileDescriptor, jlong offset, jlong length)
{
    ALOGV("setOutputFile");
    if (fileDescriptor == NULL)
    {
        jniThrowException(env, "java/lang/IllegalArgumentException", NULL);
        return;
    }
    int fd = jniGetFDFromFileDescriptor(env, fileDescriptor);
    ALOGV("setOutputFile fd");
    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    ALOGV("get HiKaraokeMediaRecord mr");
    status_t opStatus = mr->setOutputFile(fd, 0, 0);
    ALOGV("setOutputFile fd over");
    process_media_recorder_call(env, opStatus, "java/io/IOException", "setOutputFile failed.");
    return;
}


static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_prepare(JNIEnv* env, jobject thiz)
{
    ALOGV("prepare");

    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->prepare(), "java/lang/RuntimeException", "prepare failed.");
    return;

}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_start(JNIEnv* env, jobject thiz)
{
    ALOGV("start");

    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->start(), "java/lang/RuntimeException", "start failed.");
    return;
}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_stop(JNIEnv* env, jobject thiz)
{
    ALOGV("stop");

    sp<HiKaraokeMediaRecord> mr = getHiKaraokeMediaRecorder(env, thiz);
    process_media_recorder_call(env, mr->stop(), "java/lang/RuntimeException", "stop failed.");
    return;
}

static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_release(JNIEnv* env, jobject thiz)
{
    ALOGV("release");
    sp<HiKaraokeMediaRecord> mr = setHiKaraokeMediaRecorder(env, thiz, 0);
    if (mr != NULL)
    {
        mr->release();
    }

}


static void
com_hisilicon_karaoke_HiKaraokeMediaRecorder_native_setup(JNIEnv* env, jobject thiz, jobject weak_this,
        jstring packageName)
{
    ALOGV("setup");

    sp<HiKaraokeMediaRecord> mr = new HiKaraokeMediaRecord();
    if (mr == NULL)
    {
        jniThrowException(env, "java/lang/RuntimeException", "Out of memory");
        return;
    }
    if (mr->initCheck() != NO_ERROR)
    {
        jniThrowException(env, "java/lang/RuntimeException", "Unable to initialize media recorder");
        return;
    }

    // create new listener and give it to MediaRecorder
    //sp<JNIMediaRecorderListener> listener = new JNIMediaRecorderListener(env, thiz, weak_this);
    //mr->setListener(listener);

    setHiKaraokeMediaRecorder(env, thiz, mr);
    return;
}

static JNINativeMethod gMethods[] =
{
    {"setAudioSource",       "(I)V",                            (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_setAudioSource},
    {"setOutputFormat",      "(I)V",                            (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_setOutputFormat},
    {"setAudioEncoder",      "(I)V",                            (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_setAudioEncoder},
    {"setParameter",         "(Ljava/lang/String;)V",           (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_setParameter},
    {"setOutputFile",       "(Ljava/io/FileDescriptor;JJ)V",   (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_setOutputFileFD},
    {"start",                "()V",                             (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_start},
    {"stop",                 "()V",                             (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_stop},
    {"prepare",              "()V",                             (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_prepare},
    {"release",              "()V",                             (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_release},
    {"native_setup",         "(Ljava/lang/Object;Ljava/lang/String;)V", (void*)com_hisilicon_karaoke_HiKaraokeMediaRecorder_native_setup},
};


static int register_com_hisilicon_karaoke_HiKaraokeMediaRecorder_method(JNIEnv* env)
{
    jclass clazz;

    clazz = env->FindClass("com/hisilicon/karaoke/HiKaraokeMediaRecorder");

    if (clazz == NULL)
    { return JNI_FALSE; }
    if (env->RegisterNatives(clazz, gMethods, NELEM(gMethods)) < 0)
    { return -1; }
    return 0;
}


int register_com_hisilicon_karaoke_HiKaraokeMediaRecorder(JNIEnv* env)
{
    jclass clazz;

    clazz = env->FindClass("com/hisilicon/karaoke/HiKaraokeMediaRecorder");
    if (clazz == NULL)
    {
        return -1;
    }

    fields.context = env->GetFieldID(clazz, "mNativeContext", "J");
    if (fields.context == NULL)
    {
        return -1;
    }

    return register_com_hisilicon_karaoke_HiKaraokeMediaRecorder_method(env);
}




jint JNI_OnLoad(JavaVM* vm, void* reserved)
{
    JNIEnv* env = NULL;
    jint result = -1;

    ALOGV("HiKaraokeMediaRecorder JNI Call\n");
    if (vm->GetEnv((void**)&env, JNI_VERSION_1_4) != JNI_OK)
    {
        ALOGE("ERROR: GetEnv failed\n");
        goto bail;
    }

    if (env == NULL)
    {
        goto bail;
    }

    if (register_com_hisilicon_karaoke_HiKaraokeMediaRecorder(env) < 0)
    {
        ALOGE("ERROR: Karaoke native registraction failed\n");
        goto bail;
    }

    result = JNI_VERSION_1_4;
bail:
    return result;
}


//karaoke end







