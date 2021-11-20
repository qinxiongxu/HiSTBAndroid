###############################libCyberPlayer#################################
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional

include $(SDK_DIR)/Android.def

LOCAL_MODULE:= libCyberPlayer
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"
LOCAL_CFLAGS += $(CFG_HI_BOARD_CONFIGS)

LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(SAMPLE_DIR)/common

ifeq ($(CFG_HI_FRONTEND_SUPPORT),y)
LOCAL_CFLAGS += -DHI_FRONTEND_SUPPORT
endif

LOCAL_SHARED_LIBRARIES := libcutils libhi_sample_common liblog libhi_msp libhi_common

LOCAL_SRC_FILES := src/CyberPlayer.c

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

###############################cyberplayer_test#################################
include $(CLEAR_VARS)
include $(SDK_DIR)/$(SDK_CFGFILE)
include $(SDK_DIR)/Android.def

LOCAL_MODULE := cyberplayer_test
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := $(CFG_HI_CFLAGS) $(CFG_HI_BOARD_CONFIGS)
LOCAL_CFLAGS += -DLOG_TAG=\"$(LOCAL_MODULE)\"

LOCAL_SRC_FILES := test/main.c

LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include/
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(SAMPLE_DIR)/common
LOCAL_C_INCLUDES += $(COMPONENT_DIR)/ha_codec/include

LOCAL_SHARED_LIBRARIES := libCyberPlayer libhi_sample_common libhi_msp libhi_common

include $(BUILD_EXECUTABLE)
