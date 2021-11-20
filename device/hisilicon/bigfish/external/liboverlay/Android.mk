LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
#LOCAL_MODULE                  := overlay.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE                  := liboverlay
ifeq (4.4,$(findstring 4.4,$(PLATFORM_VERSION)))
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
else
LOCAL_32_BIT_ONLY := true
endif
#LOCAL_MODULE_PATH             := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := hardware/libhardware/include \
                              device/hisilicon/bigfish/hardware/gpu/android/gralloc\
                              device/hisilicon/bigfish/sdk/source/msp/include \
                              device/hisilicon/bigfish/sdk/source/msp/api/include \
                              device/hisilicon/bigfish/sdk/source/msp/drv/include \
                              device/hisilicon/bigfish/sdk/source/msp/api/gfx2d/include \
                              device/hisilicon/bigfish/sdk/source/common/include \
                              hardware/libhardware/modules/gralloc \
                              frameworks/native/include/ui\
                              frameworks/native/include 
                              
LOCAL_C_INCLUDES += \
    $(HISI_PLATFORM_PATH)/frameworks/hidisplaymanager/libs/ \
    $(HISI_PLATFORM_PATH)/frameworks/hidisplaymanager/hal/

LOCAL_SHARED_LIBRARIES        := $(common_libs) libEGL \
                                 libhardware_legacy \
                                 libdl\
                                 liblog \
                                 libhardware \
                                 libion \
                                 libutils \
                                 libcutils \
                                 libsync \
                                 libhi_gfx2d \
                                 libhi_msp \
                                 libui \
                                 libhidisplayclient

LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"overlay\"
LOCAL_ADDITIONAL_DEPENDENCIES := $(common_deps)
LOCAL_SRC_FILES               := overlay.cpp

include $(BUILD_SHARED_LIBRARY)
