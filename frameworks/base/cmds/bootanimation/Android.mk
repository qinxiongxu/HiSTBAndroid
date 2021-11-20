LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	bootanimation_main.cpp \
	BootAnimation.cpp

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	liblog \
	libandroidfw \
	libutils \
	libbinder \
    libui \
	libskia \
    libEGL \
    libGLESv1_CM \
    libgui \
    libmedia \
    libhi_msp \
    libhiaoservice

LOCAL_C_INCLUDES := \
	$(call include-path-for, corecg graphics) \
    device/hisilicon/bigfish/frameworks/himediaplayer/hal/ \
    device/hisilicon/bigfish/sdk/source/msp/include \
    device/hisilicon/bigfish/sdk/source/common/include \
    device/hisilicon/bigfish/sdk/source/msp/api/include \
    device/hisilicon/bigfish/sdk/source/msp/drv/include \
    device/hisilicon/bigfish/sdk/source/msp/api/higo/include \
    device/hisilicon/bigfish/frameworks/hiaudio/libs/

LOCAL_MODULE:= bootanimation


include $(BUILD_EXECUTABLE)
