LOCAL_PATH := $(call my-dir)

BIGFISH_MODULES := sdk \
                   etc \
                   frameworks \
                   hidolphin \
                   host \
                   prebuilts \
                   bluetooth

-include $(call all-named-subdir-makefiles,$(BIGFISH_MODULES))

define First_Makefile_Under
  $(shell build/tools/findleaves.py --prune=out --prune=.repo --prune=.git -mindepth=2 $(addprefix $(HISI_PLATFORM_PATH)/,$(1)) Android.mk)
endef

MAKEFILE_MODULES := hardware \
                    external \
                    external/libformat_open/libfectest \
                    system \
                    development \
                    packages \
                    upgrade \
                    security

-include $(call First_Makefile_Under, $(MAKEFILE_MODULES))
