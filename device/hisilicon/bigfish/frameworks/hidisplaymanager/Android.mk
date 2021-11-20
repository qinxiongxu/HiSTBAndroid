LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call find-other-java-files, java)
LOCAL_SRC_FILES += java/com/hisilicon/android/IHiDisplayManager.aidl
LOCAL_SRC_FILES += com/hisilicon/android/DispFmt.java
LOCAL_SRC_FILES += com/hisilicon/android/ManufactureInfo.java


LOCAL_NO_STANDARD_LIBRARIES := true
LOCAL_JAVA_LIBRARIES := framework core ext
LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := DisplaySetting
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
include $(BUILD_STATIC_JAVA_LIBRARY)

#include $(BUILD_MULTI_PREBUILT)

include $(call first-makefiles-under,$(LOCAL_PATH))
