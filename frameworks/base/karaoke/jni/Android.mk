LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)


LOCAL_MODULE:= libkaraoke_jni
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_SRC_FILES:= \
    com_android_karaoke_karaoke.cpp

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libutils \
    libbinder \
    libcutils \
    libhikaraokeservice

LOCAL_C_INCLUDES += \
    frameworks/av/include/media \
    $(JNI_H_INCLUDE) \
    $(TOP)/device/hisilicon/bigfish/frameworks/hikaraoke/libs


include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libhikaraokeaudiorecord_jni
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)


LOCAL_SRC_FILES:= \
    com_hisilicon_karaoke_HiKaraokeAudioRecord.cpp

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libutils \
    libbinder \
    libcutils \
	libnativehelper \
	libhikaraokeservice
	
LOCAL_C_INCLUDES += \
    frameworks/av/include/media \
    $(JNI_H_INCLUDE) \
    $(TOP)/device/hisilicon/bigfish/frameworks/hikaraoke/libs \
    $(TOP)/device/hisilicon/bigfish/frameworks/hikaraoke/src \
	$(TOP)/frameworks/base/core/jni \
	
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE:= libhikaraokemediarecorder_jni
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)


LOCAL_SRC_FILES:= \
    com_hisilicon_karaoke_HiKaraokeMediaRecorder.cpp

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libutils \
    libbinder \
    libcutils \
	libnativehelper \
	libhikaraokeservice
	
LOCAL_C_INCLUDES += \
    frameworks/av/include/media \
    $(JNI_H_INCLUDE) \
    $(TOP)/device/hisilicon/bigfish/frameworks/hikaraoke/src \
    $(TOP)/device/hisilicon/bigfish/frameworks/hikaraoke/libs
	
include $(BUILD_SHARED_LIBRARY)
