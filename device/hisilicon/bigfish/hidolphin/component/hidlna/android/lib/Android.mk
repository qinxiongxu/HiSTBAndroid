LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

ifeq "4.4" "$(findstring 4.4,$(PLATFORM_VERSION))"
    #do nothing
else
# backup default target out
TARGET_OUT_INTERMEDIATES_BAK := $(TARGET_OUT_INTERMEDIATES)
TARGET_OUT_INTERMEDIATE_LIBRARIES_BAK := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
TARGET_OUT_SHARED_LIBRARIES_BAK := $(TARGET_OUT_SHARED_LIBRARIES)
# change to 32 target out
TARGET_OUT_INTERMEDIATES := $(PRODUCT_OUT)/obj_arm
TARGET_OUT_INTERMEDIATE_LIBRARIES := $(TARGET_OUT_INTERMEDIATES)/lib
TARGET_OUT_SHARED_LIBRARIES := $(PRODUCT_OUT)/system/lib
endif

LOCAL_MODULES_NAME := libdmr_jni  libvppdlna libimagedec
ifneq ($(HI_DLNA_DISABLE_DMP),y)
LOCAL_MODULES_NAME += libdmp_jni
endif
ifneq ($(HI_DLNA_DISABLE_DMS),y)
LOCAL_MODULES_NAME += libdms_jni
endif
ifeq ($(CFG_HI_DTCP_SUPPORT),y)
LOCAL_MODULES_NAME += libhidtcpplayer libhidtcp libdtcp
endif
define addsuffix_so_list
$(addsuffix .so, $(1))
endef

LOCAL_PREBUILT_LIBS := $(call addsuffix_so_list,$(LOCAL_MODULES_NAME))
ifeq "4.4" "$(findstring 4.4,$(PLATFORM_VERSION))"
    ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULES_NAME)
else
    include $(BUILD_MULTI_PREBUILT)

    # resume default target out
    include $(CLEAR_VARS)
    TARGET_OUT_INTERMEDIATES := $(TARGET_OUT_INTERMEDIATES_BAK)
    TARGET_OUT_INTERMEDIATE_LIBRARIES := $(TARGET_OUT_INTERMEDIATE_LIBRARIES_BAK)
    TARGET_OUT_SHARED_LIBRARIES := $(TARGET_OUT_SHARED_LIBRARIES_BAK)
endif


LOCAL_MODULE_TAGS := optional
include $(BUILD_MULTI_PREBUILT)

include $(CLEAR_VARS)
$(shell mkdir -p $(TARGET_OUT)/etc/dlna)
$(shell cp -r $(LOCAL_PATH)/../cfg/dlna_keycode.map $(TARGET_OUT)/etc/dlna/)

ifeq ($(CFG_HI_DTCP_SUPPORT),y)
$(shell mkdir -p $(TARGET_OUT)/etc)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp.crt $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp.idu $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp.pvk $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp.rng $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp.srm $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/dtcp_ip_config.cfg $(TARGET_OUT)/etc/)
$(shell cp -r $(LOCAL_PATH)/../cfg/default.dat.dtcplus $(TARGET_OUT)/etc/)

endif
