LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_C_INCLUDES +=                                            \
    device/hisilicon/bigfish/hardware/camera/capability_manager\
    device/hisilicon/bigfish/hardware/camera/face_detection    \
    device/hisilicon/bigfish/hardware/camera/camera_common     \
    device/hisilicon/bigfish/sdk/source/common/include         \
    device/hisilicon/bigfish/sdk/source/msp/include        \
    device/hisilicon/bigfish/sdk/source/msp/drv/include        \
    device/hisilicon/bigfish/sdk/source/msp/api/include        \
    device/hisilicon/bigfish/hardware/gpu/android/gralloc \
    device/hisilicon/bigfish/hardware/camera/libexif           \
    frameworks/base/include                                    \
    external/skia/src/images                                   \
    external/skia/include/core                                 \
    external/skia/include/images                               \
    external/jpeg                                              \
    system/media/camera/include

LOCAL_SHARED_LIBRARIES :=         \
    liblog                        \
    libui                         \
    libbinder                     \
    libutils                      \
    libcutils                     \
    libcamera_client              \
    libjpeg                       \
    libskia                       \
    libhi_msp                     \
    libcutils                     \
    libgnuexif                    \
    libhi_common                  \

LOCAL_WHOLE_STATIC_LIBRARIES:=    \
    libcamera_capability_manager  \
    libcamera_common

LOCAL_SRC_FILES :=                \
    CameraHal.cpp                 \
    CameraModule.cpp              \
    CameraHalImpl.cpp

LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)

LOCAL_MODULE_TAGS := optional
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

include $(BUILD_SHARED_LIBRARY)
