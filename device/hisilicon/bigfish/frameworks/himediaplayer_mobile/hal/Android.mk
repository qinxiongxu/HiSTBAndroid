LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include $(SDK_DIR)/Android.def

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libhiplayer_adapter
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
BUILD_BD := true

LOCAL_SRC_FILES +=  \
    HiMetadata.cpp \
    HiMediaSystem.cpp \
    Subtitle.cpp \
    HiSubtitleManager.cpp \
    HiSurfaceSetting.cpp \
    HiMediaPlayer.cpp \
    HiPlayerMetadata.cpp \
    HiVSink.cpp \
    HiASink.cpp \
    HiMediaLogger.cpp \

LOCAL_SRC_FILES +=      \
    iplayer/IHiPlayer.cpp

LOCAL_SHARED_LIBRARIES :=       \
    libbinder                   \
    libcutils                   \
    libdl                       \
    libgui                      \
    libmedia                    \
    libutils                    \

LOCAL_SHARED_LIBRARIES += \
    libnativehelper \
    libcharsetMgr \
    libhi_subtitle \
    libskia \
    libsubdec \
    libnetshare_client

LOCAL_SHARED_LIBRARIES += \
    libhi_common \
    libplayer \
    libicuuc \
    libhi_so \
    libhi_msp \
    libui \
    libhidisplayclient \
    libharfbuzz \
    libft2

 LOCAL_STATIC_LIBRARIES += \
    libxml2 \

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)

LOCAL_C_INCLUDES +=         \
    $(SDK_DIR)/source/common/include \
    $(SDK_DIR)/source/common/drv/include \
    $(SDK_DIR)/source/component/ha_codec/include \
    $(SDK_DIR)/source/component/subtoutput/include \
    $(SDK_DIR)/source/msp/include \
    $(SDK_DIR)/source/msp/api/include \
    $(SDK_DIR)/source/msp/drv/include \
    $(SDK_DIR)/source/component/subtitle/include/ \
    $(HISI_PLATFORM_PATH)/hidolphin/component/player_mobile/include \
    $(HISI_PLATFORM_PATH)/hidolphin/component/charset/include \
    $(HISI_PLATFORM_PATH)/frameworks/hidisplaymanager/libs/ \
    $(HISI_PLATFORM_PATH)/frameworks/hidisplaymanager/hal/ \
    $(HISI_PLATFORM_PATH)/frameworks/netshare/libs/ \
    $(TOP)/external/freetype/include \
    $(TOP)/external/harfbuzz/src     \
    $(TOP)/external/harfbuzz/contrib \
    $(TOP)/external/libxml2/include \
    $(TOP)/external/icu4c/common \
    $(TOP)/frameworks/native/include \
    $(TOP)/frameworks/av/include/media \
    $(TOP)/frameworks/av/media/libmedia \
    $(TOP)/external/skia/include/core \
    $(TOP)/device/hisilicon/bigfish/hardware/gpu/android/gralloc \

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
