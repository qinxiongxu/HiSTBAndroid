LOCAL_PATH:= $(call my-dir)

common_SRC_FILES := \
	RS_fec.cpp \
	extern_fec.cpp \

common_CFLAGS := -O3 -DPIC -fPIC -fexceptions -fno-rtti
#-std=gnu89 -fvisibility=hidden ## -fomit-frame-pointer

common_C_INCLUDES += 

common_COPY_HEADERS_TO := libfec
common_COPY_HEADERS := 


# For the device (shared)
# =====================================================

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_SRC_FILES := $(common_SRC_FILES)
LOCAL_CFLAGS += $(common_CFLAGS)
LOCAL_CPPFLAGS += -fuse-cxa-atexit
LOCAL_LDFLAGS += -Wl,--allow-shlib-undefined
LOCAL_C_INCLUDES += \
	$(common_C_INCLUDES) \
	bionic \
	external/stlport/stlport

LOCAL_SHARED_LIBRARIES := \
	libz \
	libc \
	liblog \
	libstdc++ \
	libstlport

LOCAL_MODULE:= libfec

LOCAL_COPY_HEADERS_TO := $(common_COPY_HEADERS_TO)
LOCAL_COPY_HEADERS := $(common_COPY_HEADERS)

include $(BUILD_SHARED_LIBRARY)

