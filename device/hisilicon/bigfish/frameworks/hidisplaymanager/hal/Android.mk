LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
BASE := $(LOCAL_PATH)

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw

LOCAL_SHARED_LIBRARIES :=\
                            libhi_common\
                            libcutils \
                            libhi_msp

LOCAL_SRC_FILES :=  display.c\
                    hi_adp_hdmi.c

LOCAL_MODULE := hidisplay.bigfish
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES := \
                    $(TOP)/hardware/libhardware/include/hardware \
                    $(LOCAL_PATH)/../../../sdk/source/msp/include \
                    $(LOCAL_PATH)/../../../sdk/source/common/include \
                    $(LOCAL_PATH)/../../../sdk/source/msp/api/include/\
                    $(LOCAL_PATH)/../../../sdk/source/msp/drv/include/\
                    $(LOCAL_PATH)/../../../sdk/source/msp/drv/hifb/include/\
                    $(LOCAL_PATH)/../../../sdk/source/msp/api/higo/include/\
                    $(TOP)/system/core/include/ \
                    $(TOP)/device/hisilicon/bigfish/sdk/source/common/api/flash/include \
		    $(LOCAL_PATH)/../../../sdk/source/msp/api/hdmi/hdmi_1_4/

EXTRA_CFLAGS += -I$(LINUXROOT)/include/
include $(BUILD_SHARED_LIBRARY)
