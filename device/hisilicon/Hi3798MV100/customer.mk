#
# Copyright (C) 2011 The Android Open-Source Project
#
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
#

#Product usage selection, possible values are: shcmcc/telecom/unicom/ott/dvb/demo
#shcmcc stands for the ShangHai Mobile video base mode.
#telecom stands for the China Telecom centralized procurement mode.
#unicom stands for the China Unicom centralized procurement mode.
#ott stands for OTT or the China Mobile provincial procurement mode.
#dvb stands for dvb version.
#Please modify here before compilation
PRODUCT_TARGET := telecom

#Setup SecurityL1
HISILICON_SECURITY_L1 := false

#Setup SecurityL2
HISILICON_SECURITY_L2 := false
HISILICON_SECURITY_L2_COMMON_MODE_SIGN := false

#Setup SecurityL3
HISILICON_SECURITY_L3 := false

#Quick Boot Support
BOARD_QBSUPPORT := false

#Unified update.zip for BGA and QFP fastboots
SUPPORT_UNIFIED_UPDATE := false

# Whether fastplay should be played completely or not: true or false
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.fastplay.fullyplay=false

# Enable low RAM config or not: true or false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false

# Enable wallpaper or not for low_ram: true or false
PRODUCT_PROPERTY_OVERRIDES += \
    persist.low_ram.wp.enable=false

# Whether bootanimation should be played or not: true or false
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.bootanim.enable=true

# Enable TDE compose or not: true or false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.tde_compose=true

#set video output rate for telecom and unicom, defalt 4:3
ifeq ($(strip $(PRODUCT_TARGET)),telecom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.video.cvrs= 1
else ifeq ($(strip $(PRODUCT_TARGET)),unicom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.video.cvrs= 1
else
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.video.cvrs= 0
endif

#if thirdparty dhcp service is needed to obtain ip, please set this property true
# default value is false
PRODUCT_PROPERTY_OVERRIDES += \
    ro.thirdparty.dhcp=false

# smart_suspend, deep_launcher, deep_restart, deep_resume;
PRODUCT_PROPERTY_OVERRIDES += \
     persist.suspend.mode=deep_restart

# Output format adaption for 2D streams
# false -> disable; true -> enable
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.video.adaptformat=false

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.zygote.optimize=true \
    persist.sys.boot.optimize=true

# Whether CVBS is enabled or not when HDMI is plugged in
ifeq ($(strip $(PRODUCT_TARGET)), telecom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.cvbs.and.hdmi=true
else ifeq ($(strip $(PRODUCT_TARGET)), unicom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.cvbs.and.hdmi=true
else
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.cvbs.and.hdmi=false
endif

# Whether display format self-adaption is enabled or not when HDMI is plugged in
# 0 -> disable; 1 -> enable
ifeq ($(strip $(PRODUCT_TARGET)), telecom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.optimalfmt.enable=0
else ifeq ($(strip $(PRODUCT_TARGET)), unicom)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.optimalfmt.enable=0
else ifeq ($(strip $(PRODUCT_TARGET)), shcmcc)
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.optimalfmt.enable=0
else
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.optimalfmt.enable=1
endif

# Preferential display format: native, i50hz, p50hz, i60hz, p60hz or max_fmt
# persist.sys.optimalfmt.perfer is valid only if persist.sys.optimalfmt.enable=1
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.optimalfmt.perfer=native

# Preferential hiplayer cache setting
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.player.cache.type=time \
    persist.sys.player.cache.low=500 \
    persist.sys.player.cache.high=12000 \
    persist.sys.player.cache.total=20000 \
    persist.sys.player.bufmaxsize=80

# Preferential hiplayer buffer seek
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.player.buffer.seek=0 \
    persist.sys.player.leftbuf.min=10 \
    persist.sys.player.avsync.min=500

# Preferential hiplayer rtsp timeshift support for sichuan mobile
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.hiplayer.rtspusetcp=false

