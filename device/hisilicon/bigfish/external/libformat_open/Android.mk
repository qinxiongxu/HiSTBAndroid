include $(call libfectest)
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
include device/hisilicon/bigfish/hidolphin/cfg.mak

ifneq ($(PRODUCT_TARGET),shcmcc)
LOCAL_PRELINK_MODULE := false
LOCAL_MODULE := libformat_open
ifeq (4.4,$(findstring 4.4,$(PLATFORM_VERSION)))
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
else
LOCAL_32_BIT_ONLY := true
endif
LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/../ffmpeg \
    $(LOCAL_PATH)/../ffmpeg/libavformat \
    $(LOCAL_PATH)/../ffmpeg/libavutil \
    $(LOCAL_PATH)/../libudf \
    $(LOCAL_PATH)/../libclientadp \
    $(LOCAL_PATH)/../libtermplug \
    $(LOCAL_PATH)/libfectest/

LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := $(CFG_CFLAGS)
LOCAL_CFLAGS += -DANDROID_VERSION
LOCAL_LDFLAGS += -ldl
LOCAL_SHARED_LIBRARIES := libutils liblog libcutils libavformat libavutil libavcodec libclientadp libtermplug libfec

LOCAL_RTSP_SRC_FILES := \
    rtsp.c \
    rtspdec.c \
    rtspenc.c \
    rdt.c \
    rtpproto.c \
    rtpdec.c \
    rtpdec_amr.c \
    rtpdec_asf.c \
    rtpdec_g726.c \
    rtpdec_h263.c \
    rtpdec_h264.c \
    rtpdec_latm.c \
    rtpdec_mpeg4.c \
    rtpdec_qcelp.c \
    rtpdec_qdm2.c \
    rtpdec_qt.c \
    rtpdec_svq3.c \
    rtpdec_vp8.c \
    rtpdec_xiph.c \
    rtpenc.c \
    rtpenc_vp8.c \
    rtpenc_aac.c \
    rtpenc_amr.c \
    rtpenc_h263.c \
    rtpenc_h264.c \
    rtpenc_latm.c \
    rtpenc_mpv.c \
    rtpenc_xiph.c

LOCAL_SRC_FILES := \
    svr_iso_dec.c \
    svr_udf_protocol.c \
    svr_allformat.c \
    hls_read.c \
    hls_key_decrypt.c \
    http.c \
    ftp.c \
    tcp.c \
    hirtpproto.c \
    udp.c \
    svr_utils.c \
    rtpfecproto.c

ifeq (4.0,$(CFG_HLS_VERSION))
ifneq ($(PRODUCT_TARGET),shcmcc)
    LOCAL_SRC_FILES += hls_v40.c
    LOCAL_CFLAGS += -DCONFIG_HLS_VERSION_4=1
else
    LOCAL_SRC_FILES += hls.c 
endif
else
    LOCAL_SRC_FILES += hls.c
endif

LOCAL_SRC_FILES += $(LOCAL_RTSP_SRC_FILES)

include $(BUILD_SHARED_LIBRARY)
endif
