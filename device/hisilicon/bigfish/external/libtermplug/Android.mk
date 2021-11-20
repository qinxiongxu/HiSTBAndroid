LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libtermplug
ifeq (4.4,$(findstring 4.4,$(PLATFORM_VERSION)))
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
else
LOCAL_32_BIT_ONLY := true
endif

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := termplug.c

include $(BUILD_SHARED_LIBRARY)
