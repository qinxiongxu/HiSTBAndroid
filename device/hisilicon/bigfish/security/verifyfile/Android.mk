LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := verifytool.c
LOCAL_SRC_FILES += rsa.c
LOCAL_SRC_FILES += bignum.c
LOCAL_SRC_FILES += sha256.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_MODULE:= libhiverifytool
LOCAL_MODULE_TAGS := optional
include $(BUILD_STATIC_LIBRARY)