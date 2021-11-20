LOCAL_PATH:= $(call my-dir)
####################################################################################

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE:= libhikaraokeservice
LOCAL_SRC_FILES:= \
    HiCircleBuf.cpp \
    HiKaraokeProxy.cpp \
    IHiKaraokeRecord.cpp \
    IHiKaraokeService.cpp \
    HikaraokeService.cpp \
    HiKaraokeMediaRecord.cpp \
    HiKaraokeAudioRecord.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := \
  libbinder \
  libutils\
  libcutils \
  libhi_karaoke

LOCAL_C_INCLUDES :=$(LOCAL_PATH) \
        $(ANDROID_BUILD_TOP)/framework/native/include/utils \
        $(LOCAL_PATH)/../../../sdk/source/common/include\
        $(LOCAL_PATH)/../../../sdk/source/msp/include \
        $(LOCAL_PATH)/../../../sdk/source/msp/api/include\
        $(LOCAL_PATH)/../../../sdk/source/msp/drv/include \
        $(LOCAL_PATH)/../../../sdk/source/component/karaoke/include

include $(BUILD_SHARED_LIBRARY)
