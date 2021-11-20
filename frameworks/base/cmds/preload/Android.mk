LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := preloadclass:javalib.jar

include $(BUILD_MULTI_PREBUILT)
