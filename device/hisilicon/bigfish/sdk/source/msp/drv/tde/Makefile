#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

include $(SDK_DIR)/base.mak
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

TARGET := tde

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)              \
                -I$(MSP_DIR)/drv/jpeg/grc_cmm_inc

EXTRA_CFLAGS += -DCFG_HI_TDE_CSCTMPBUFFER_SIZE=$(CFG_HI_TDE_CSCTMPBUFFER_SIZE)
EXTRA_CFLAGS += -DHI_TDE_MEMCOUNT_SUPPORT=0
EXTRA_CFLAGS += -DHI_TDE_BUFFER=0x20000
EXTRA_CFLAGS += -DCONFIG_GFX_STB_SDK

ifeq ($(CFG_ANDROID_PRODUCT),y)
ifneq ($(CFG_HI_LOADER_SUPPORT), y)
EXTRA_CFLAGS += -I$(LINUX_DIR)/drivers/staging/android
EXTRA_CFLAGS += -DTDE_FENCE_SUPPORT
endif
endif

MOD_NAME := hi_$(TARGET)

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   :=  tde_osr.o       \
                    tde_osr_k.o     \
                    tde_handle_k.o  \
                    tde_hal_k.o     \
                    tde_osilist_k.o \
                    tde_osictl_k.o  \
                    tde_proc_k.o    \
                    wmalloc_k.o     \
                    tde_adp.o	    \
		    tde_fence.o

REMOVED_FILES := "*.o" "*.ko" "*.order" "*.symvers" "*.mod" "*.mod.*" "*.cmd" ".tmp_versions" "modules.builtin"

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

clean:
	$(AT)find ./ -name "*.d" $(foreach file, $(REMOVED_FILES), -o -name $(file)) | xargs rm -rf

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

