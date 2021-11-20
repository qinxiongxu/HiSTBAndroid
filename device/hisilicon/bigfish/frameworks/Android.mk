LOCAL_PATH := $(call my-dir)

driver_modules := \
    sampleatc \
    hinetworkutils \
    hiaudio       \
    hibdinfo      \
    hidvdinfo     \
    hidisplaymanager \
    netshare      \
    hianilib      \
    sdkinvoke   \
    flashInfo    \
    hikaraoke \
    hisysmanager \
    fastbootoptimize \
    qb \
    audio_nodelay

ifneq (,$(findstring Hi379,$(CHIPNAME)))
driver_modules += hipq
endif

ifneq ($(PRODUCT_TARGET),shcmcc)
    driver_modules += himediaplayer
else
    driver_modules += himediaplayer_mobile
endif

include $(call all-named-subdir-makefiles,$(driver_modules))
