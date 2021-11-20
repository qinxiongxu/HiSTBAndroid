LOCAL_PATH := $(call my-dir)
#
# libCTC_MediaProcessor
#
include $(CLEAR_VARS)
include $(SDK_DIR)/Android.def

LOCAL_SRC_FILES := CTC_MediaProcessor.cpp TsPlayer.cpp
LOCAL_C_INCLUDES := $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
LOCAL_C_INCLUDES += $(SAMPLE_DIR)/common
LOCAL_C_INCLUDES += $(COMPONENT_DIR)/ha_codec/include
LOCAL_C_INCLUDES += $(SDK_DIR)/pub/include/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include/


LOCAL_C_INCLUDES += $(COMPONENT_DIR)/subtitle/include
LOCAL_C_INCLUDES += $(COMPONENT_DIR)/subtoutput/include

LOCAL_CFLAGS := $(CFG_HI_CFLAGS) $(CFG_HI_BOARD_CONFIGS)

LOCAL_SHARED_LIBRARIES := libcutils libdl libm libhi_common libutils libhi_msp libbinder libmedia libhi_subtitle libhi_so libhi_sample_common

LOCAL_MODULE := libCTC_MediaProcessor
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
