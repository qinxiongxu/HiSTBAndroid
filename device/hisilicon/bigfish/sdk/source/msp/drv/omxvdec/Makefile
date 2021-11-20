
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

#===============================================================================
# local variables
#===============================================================================

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                    \
                -I$(COMMON_API_INCLUDE)                    \
                -I$(COMMON_DRV_INCLUDE)                    \
                -I$(MSP_UNF_INCLUDE)                       \
                -I$(MSP_API_INCLUDE)                       \
                -I$(MSP_DRV_INCLUDE)                       \
                -I$(MSP_DIR)/drv/vfmw/vfmw_v4.0            \
                -I$(MSP_DIR)/drv/vfmw/vfmw_v4.0/scene/stb  \
                -I$(MSP_DIR)/drv/vdec
 
ifeq ($(CFG_HI_TVP_SUPPORT),y)
EXTRA_CFLAGS += -DHI_TVP_SUPPORT
EXTRA_CFLAGS += -I$(TEE_INCLUDE)                           \
                -I$(TVP_DIR)/libteec/inc                   \
                -I$(TVP_DIR)/libteec/sec_mmz/inc
endif

ifeq (y,$(CFG_HI_VDEC_PRE_ALLOC_VDHMMZ_SUPPORT))
EXTRA_CFLAGS += -DPRE_ALLOC_VDEC_VDH_MMZ=1
else
EXTRA_CFLAGS += -DPRE_ALLOC_VDEC_VDH_MMZ=0
endif
KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
KBUILD_EXTRA_SYMBOLS += $(MSP_DIR)/drv/vfmw/vfmw_v4.0/Module.symvers

MOD_NAME := hi_omxvdec

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   := omxvdec.o channel.o task.o message.o decoder_vfmw.o processor_vpss.o drv_omxvdec_pts_recv.o drv_omxvdec_alg_frd.o

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

