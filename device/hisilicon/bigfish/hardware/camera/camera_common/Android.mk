###############################################################################
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES +=                                           \
    external/jpeg                                             \
    external/skia/src/images                                  \
    external/skia/include/core                                \
    external/skia/include/images                              \
    device/hisilicon/bigfish/hardware/camera/libexif          \
    device/hisilicon/bigfish/sdk/source/msp/api/tde/include   \
    device/hisilicon/bigfish/sdk/source/msp/api/include       \
    device/hisilicon/bigfish/sdk/source/msp/drv/include       \
    device/hisilicon/bigfish/sdk/source/common/include        \
    device/hisilicon/bigfish/sdk/source/msp/include      \
    device/hisilicon/bigfish/hardware/gpu/android/gralloc \
    system/core/include/utils                                 \
    system/media/camera/include

LOCAL_SRC_FILES :=    \
    CameraUtils.cpp   \
    PipeMessage.cpp   \
    SkJpegEncoder.cpp \
    CameraJpegDecoder.cpp \
    JpegEncoderExif.cpp \
    yuvutils.cpp

LOCAL_STATIC_LIBRARIES :=

LOCAL_SHARED_LIBRARIES :=

LOCAL_MODULE := libcamera_common

LOCAL_MODULE_TAGS := optional
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

include $(BUILD_STATIC_LIBRARY)
###############################################################################
