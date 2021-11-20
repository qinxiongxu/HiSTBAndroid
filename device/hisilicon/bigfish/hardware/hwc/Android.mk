
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


LOCAL_PATH := $(call my-dir)

# HAL module implemenation stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)
include $(SDK_DIR)/Android.def

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SHARED_LIBRARIES := liblog libEGL libhardware liboverlay libhi_msp libcutils libutils
#LOCAL_SRC_FILES := HwcDebug.cpp
LOCAL_C_INCLUDES := $(HISI_PLATFORM_PATH)/hardware/gpu/android/gralloc
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)
LOCAL_C_INCLUDES += device/hisilicon/bigfish/sdk/pub/include/
LOCAL_C_INCLUDES += device/hisilicon/bigfish/sdk/source/msp/api/tde/include/
#LOCAL_C_INCLUDES += $(COMMON_DRV_INCLUDE)
#LOCAL_C_INCLUDES += $(COMMON_API_INCLUDE)
#LOCAL_C_INCLUDES += $(MSP_UNF_INCLUDE)
#LOCAL_C_INCLUDES += $(MSP_DRV_INCLUDE)
#LOCAL_C_INCLUDES += $(MSP_API_INCLUDE)
#LOCAL_C_INCLUDES += $(SDK_DIR)/pub/include
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/hifb/include
LOCAL_C_INCLUDES += $(HISI_PLATFORM_PATH)/hidolphin/external/liboverlay
LOCAL_C_INCLUDES += $(HISI_PLATFORM_PATH)/external/liboverlay
LOCAL_SRC_FILES := hwc.cpp HwcDebug.cpp tdeCompose.cpp
LOCAL_MODULE := hwcomposer.bigfish
ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)
LOCAL_CFLAGS:= -DLOG_TAG=\"hwc\"
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
