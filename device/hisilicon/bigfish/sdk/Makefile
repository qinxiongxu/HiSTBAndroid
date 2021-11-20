#====================================================================================
#                   export
#====================================================================================
.EXPORT_ALL_VARIABLES:

SDK_DIR=${PWD}

include base.mak

CFG_HI_EXPORT_FLAG=y

PHONY: help

#====================================================================================
#                   build/rebuild
#====================================================================================
.PHONY: build rebuild
#++++++++++++++++++++++++++++++++++++++++++++++++++++
build: install
rebuild: distclean
	$(AT)make build

#====================================================================================
#                   global targets
#====================================================================================
.PHONY: all distclean clean install uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
INSTALL_OBJS :=

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
INSTALL_OBJS += hiboot_install
endif

INSTALL_OBJS += rootbox_install

all:  tools hiboot linux common msp rootfs component plugin

distclean: clean
clean: uninstall sample_clean plugin_clean component_clean rootfs_clean msp_clean common_clean linux_clean hiboot_clean tools_clean
	$(AT)rm -rf $(IMAGE_DIR)/fastboot-burn.bin
	$(AT)rm -rf $(IMAGE_DIR)/hi_kernel.bin
	$(AT)rm -rf $(IMAGE_DIR)/rootfs*
	$(AT)cd $(INCLUDE_DIR)      && rm -rf *
	$(AT)cd $(STATIC_LIB_DIR)   && rm -rf *
	$(AT)cd $(SHARED_LIB_DIR)   && rm -rf *
	$(AT)cd $(EXTERN_LIB_DIR)   && rm -rf *
	$(AT)cd $(MODULE_DIR)       && rm -rf *
	$(AT)cd $(ROOTFS_DIR)       && rm -rf *

install: $(INSTALL_OBJS)
ifeq ($(CFG_HI_FS_BUILDIN),y)
	$(AT)make -C $(KERNEL_DIR) fs_buildin
else
	$(AT)make $(IMAGES)
endif
ifeq ($(CFG_HI_LOADER_APPLOADER)_$(CFG_HI_LOADER_RECOVERY),_)
	$(AT)make -C $(SAMPLE_DIR) all
endif

uninstall: rootbox_uninstall plugin_uninstall component_uninstall msp_uninstall common_uninstall rootfs_uninstall linux_uninstall hiboot_uninstall tools_uninstall

obj=$(mod)

#====================================================================================
#                   tools
#====================================================================================
.PHONY:  tools  tools_clean  tools_install  tools_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
tools:
	$(AT)make -C $(TOOLS_DIR) all

tools_clean:
	$(AT)make -C $(TOOLS_DIR) clean

tools_install:
	$(AT)make -C $(TOOLS_DIR) install

tools_uninstall:
	$(AT)make -C $(TOOLS_DIR) uninstall

#====================================================================================
#                   hiboot
#====================================================================================
.PHONY:  hiboot  hiboot_clean  hiboot_install  hiboot_uninstall advca_programmer
#++++++++++++++++++++++++++++++++++++++++++++++++++++
hiboot:
	$(AT)make -C $(BOOT_DIR) all

hiboot_clean:
	$(AT)make -C $(BOOT_DIR) clean

hiboot_install: $(if $(findstring $(CFG_HI_ADVCA_SUPPORT),y),advca_programmer,)
	$(AT)make -C $(BOOT_DIR) install

hiboot_uninstall:
	$(AT)make -C $(BOOT_DIR) uninstall

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
advca_programmer:
	$(AT)make -C $(BOOT_DIR) clean
	$(AT)make -C $(BOOT_DIR) advca_programmer_install BOOT_ADVCA_PROGRAMMER=y
endif

#====================================================================================
#                   linux
#====================================================================================
.PHONY:  linux_prepare linux_unprepare linux linux_clean linux_install linux_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
linux:
	$(AT)make -C $(KERNEL_DIR) all

linux_clean:
	$(AT)make -C $(KERNEL_DIR) clean

linux_install:
	$(AT)make -C $(KERNEL_DIR) install

linux_uninstall:
	$(AT)make -C $(KERNEL_DIR) uninstall

linux_prepare:
ifeq ($(CFG_HI_MSP_BUILDIN),y)
	$(AT)(cd $(LINUX_DIR)/drivers && rm -rf common && ln -s $(COMMON_DIR)/drv ./common && cd -)
	$(AT)(cd $(LINUX_DIR)/drivers && rm -rf msp && ln -s $(MSP_DIR)/drv ./msp && cd -)
endif

linux_unprepare:
ifeq ($(CFG_HI_MSP_BUILDIN),y)
	$(AT)rm -rf $(LINUX_DIR)/drivers/common
	$(AT)rm -rf $(LINUX_DIR)/drivers/msp
endif

#====================================================================================
#                   rootfs
#====================================================================================
.PHONY:  rootfs  rootfs_clean  rootfs_install  rootfs_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
rootfs:
	$(AT)make -C $(ROOTFS_SRC_DIR) all

rootfs_clean:
	$(AT)make -C $(ROOTFS_SRC_DIR) clean

rootfs_install:
	$(AT)make -C $(ROOTFS_SRC_DIR) install

rootfs_uninstall:
	$(AT)make -C $(ROOTFS_SRC_DIR) uninstall

#====================================================================================
#                   common
#====================================================================================
.PHONY:  common  common_clean  common_install  common_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
common: linux
	$(AT)make -C $(COMMON_DIR) all

common_clean:
	$(AT)make -C $(COMMON_DIR) clean

common_install: linux_install
	$(AT)make -C $(COMMON_DIR) install

common_uninstall:
	$(AT)make -C $(COMMON_DIR) uninstall

#====================================================================================
#                   msp
#====================================================================================
.PHONY:  msp  msp_clean  msp_install  msp_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
msp: linux
	$(AT)make -C $(MSP_DIR) all

msp_clean:
	$(AT)make -C $(MSP_DIR) clean

msp_install: linux_install
	$(AT)make -C $(MSP_DIR) install

msp_uninstall:
	$(AT)make -C $(MSP_DIR) uninstall

#====================================================================================
#                   component
#====================================================================================
.PHONY:  component  component_clean  component_install  component_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
component: linux
	$(AT)make -C $(COMPONENT_DIR) all

component_clean:
	$(AT)make -C $(COMPONENT_DIR) clean

component_install: linux_install
	$(AT)make -C $(COMPONENT_DIR) install

component_uninstall:
	$(AT)make -C $(COMPONENT_DIR) uninstall

#====================================================================================
#                   plugin
#====================================================================================
.PHONY:  plugin plugin_clean plugin_install plugin_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
plugin: linux
	$(AT)make -C $(PLUGIN_DIR) all

plugin_clean:
	$(AT)make -C $(PLUGIN_DIR) clean

plugin_install: linux_install
	$(AT)make -C $(PLUGIN_DIR) install

plugin_uninstall:
	$(AT)make -C $(PLUGIN_DIR) uninstall

#====================================================================================
#                   sample
#====================================================================================
.PHONY:  sample  sample_clean
#++++++++++++++++++++++++++++++++++++++++++++++++++++
sample:
	$(AT)make -C $(SAMPLE_DIR) all

sample_clean:
	$(AT)make -C $(SAMPLE_DIR) clean

#====================================================================================
#                   rootbox
#====================================================================================
include rootbox.mk

rootbox_install: tools_install rootfs_install common_install msp_install component_install plugin_install
	$(AT)make rootbox_chmod
	$(AT)echo "rootbox is ready"

rootbox_uninstall:
	-$(AT)$(SRM) -rf $(ROOTBOX_DIR)

#====================================================================================
#                   fs
#====================================================================================
.PHONY: fs cramfs squashfs jffs2 yaffs extfs ubiimg
#++++++++++++++++++++++++++++++++++++++++++++++++++++
IMAGES :=
ifeq ($(CFG_HI_ROOTFS_CRAMFS),y)
IMAGES += cramfs
endif
ifeq ($(CFG_HI_ROOTFS_SQUASHFS),y)
IMAGES += squashfs
endif
ifeq ($(CFG_HI_ROOTFS_JFFS2),y)
IMAGES += jffs2
endif
ifeq ($(CFG_HI_ROOTFS_YAFFS),y)
IMAGES += yaffs
endif
ifeq ($(CFG_HI_ROOTFS_EXT4),y)
IMAGES += extfs
endif
ifeq ($(CFG_HI_ROOTFS_UBIIMG),y)
IMAGES += ubiimg
endif

fs: $(IMAGES)

ifdef CFG_HI_SPI_BLOCK_SIZE
SPI_BLOCK_SIZE := $(CFG_HI_SPI_BLOCK_SIZE)
else
SPI_BLOCK_SIZE := 0x10000 0x20000 0x40000
endif

YAFFS_MODE := 2k-1bit 4k-1bit 4k-4byte 4k-24bit1k 8k-24bit1k 8k-40bit1k
ifdef CFG_HI_NAND_PAGE_SIZE
ifdef CFG_HI_NAND_ECC_TYPE
YAFFS_MODE :=$(CFG_HI_NAND_PAGE_SIZE)-$(CFG_HI_NAND_ECC_TYPE)
endif
endif

ifdef CFG_HI_EMMC_ROOTFS_SIZE
EMMC_SIZE     := $(shell expr $(CFG_HI_EMMC_ROOTFS_SIZE) \* 1024)
EMMC_SIZE_STR := $(CFG_HI_EMMC_ROOTFS_SIZE)M
else
EMMC_SIZE     := 40960
EMMC_SIZE_STR := 40M
endif

#++++++++++++++++++++++++++++++++++++++++++++++++++++
cramfs:
	$(MKCRAMFS) $(ROOTBOX_DIR) $(IMAGE_DIR)/rootfs.cramfs
#++++++++++++++++++++++++++++++++++++++++++++++++++++
squashfs:
	$(MKSQUASHFS) $(ROOTBOX_DIR) $(IMAGE_DIR)/rootfs.squashfs \
		-no-fragments -noappend -noI -comp xz
#++++++++++++++++++++++++++++++++++++++++++++++++++++
jffs2:
	$(AT)(for ix in $(SPI_BLOCK_SIZE) ; do ( \
		if [ "$$ix" == "0x10000" ]; then \
			NAME=64k; \
		elif [ "$$ix" == "0x20000" ];then \
			NAME=128k; \
		elif [ "$$ix" == "0x40000" ];then \
			NAME=256k; \
		fi; \
		$(MKJFFS2) -d $(ROOTBOX_DIR) -l -e $${ix} \
		-o $(IMAGE_DIR)/rootfs_$${NAME}.jffs2; \
	) done )
#++++++++++++++++++++++++++++++++++++++++++++++++++++
yaffs:
	$(AT)(for ix in $(YAFFS_MODE) ; do ( \
		NAME=`echo $$ix | sed -s 's/b.*[ket]/b/' | sed -s 's/-//'`; \
		PARAM=`echo $$ix | sed -s 's/-/ /'` ; \
		$(MKYAFFS) $(ROOTBOX_DIR) \
			$(IMAGE_DIR)/rootfs_$$NAME.yaffs $$PARAM; \
		chmod a+r $(IMAGE_DIR)/rootfs_$$NAME.yaffs; \
	) done )
#++++++++++++++++++++++++++++++++++++++++++++++++++++
ubiimg:
	cd ${SERVER_UNTILS_DIR}; \
	$(MKUBIIMG) $(CFG_HI_NAND_PAGE_SIZE) $(CFG_HI_NAND_BLOCK_SIZE) $(ROOTBOX_DIR) $(CFG_HI_UBI_PARTITION_SIZE) $(IMAGE_DIR)/rootfs_$(CFG_HI_UBI_PARTITION_SIZE).ubiimg ; \
	cd -

#++++++++++++++++++++++++++++++++++++++++++++++++++++
ROOTBOX_SIZE  := $(word 1,$(shell du -s $(ROOTBOX_DIR) 2>/dev/null))

extfs:
	$(AT)( if [ $(ROOTBOX_SIZE) -gt $(EMMC_SIZE) ]; then ( \
		echo ;\
		echo -e "\033[31m""Warning: make ext4 file system fail!""\033[0m"; \
		echo "If you not need ext4 file system(only for eMMC), please ignore this warning."; \
		echo; \
		echo "Rootfs \"$(ROOTBOX_DIR)\" size ($(ROOTBOX_SIZE))"; \
		echo "is larger than ext4 filesystem config size ($(EMMC_SIZE)).";\
		echo "Please check your rootfs or modify CFG_EMMC_ROOTFS_SIZE,";\
		echo "\"CFG_EMMC_ROOTFS_SIZE\" is define in sdk config file \"cfg.mak\"";\
		echo; \
	) else ( \
		${MKEXT4FS} -l ${EMMC_SIZE_STR} -s $(IMAGE_DIR)/rootfs_$(EMMC_SIZE_STR).ext4 $(ROOTBOX_DIR) \
	) fi )

#====================================================================================
#                   other
#====================================================================================
FREETYPE_DIR := $(COMPONENT_DIR)/freetype

android_prepare:
	$(AT)test -d $(KERNEL_DIR)/$(CFG_HI_KERNEL_VERSION) || tar xf $(KERNEL_DIR)/$(CFG_HI_KERNEL_VERSION).tar.bz2 -C $(KERNEL_DIR)
	$(AT)test ! -d $(KERNEL_DIR)/$(CFG_HI_KERNEL_VERSION).patch || cp -rf $(KERNEL_DIR)/$(CFG_HI_KERNEL_VERSION).patch/* $(KERNEL_DIR)/$(CFG_HI_KERNEL_VERSION)/
	$(AT)tar xf $(FREETYPE_DIR)/freetype-2.3.12.tar.gz -C $(FREETYPE_DIR)
	$(AT)cp -af $(COMMON_UNF_INCLUDE)/*.h   $(INCLUDE_DIR)
	$(AT)rm -rf $(INCLUDE_DIR)/hi_osal.h

	$(AT)cp -af $(MSP_UNF_INCLUDE)/*.h                          $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/drv/hifb/include/hifb.h              $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/jpeg/inc/inc_6b_android/*.h      $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/jpeg/inc/inc_hard/hi_jpeg_api.h  $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/jpge/include/hi_jpge_*.h         $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/tde/include/hi_tde_*.h           $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/higo/include/hi_go*.h            $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/higo/include/hi_effect.h         $(INCLUDE_DIR)
	$(AT)cp -af $(MSP_DIR)/api/gfx2d/include/hi_gfx2d_*.h       $(INCLUDE_DIR)

	$(AT)cp -af $(COMPONENT_DIR)/subtitle/include/*.h       $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/subtoutput/include/*.h     $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/teletext/include/*.h       $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/cc/include/*.h             $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/vp/include/*.h             $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/vp/rtp/rtp.h               $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/voip/include/*.h           $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/usbphone/include/*.h       $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/ha_codec/include/*.h       $(INCLUDE_DIR)
	$(AT)cp -af $(COMPONENT_DIR)/zlib/include/*.h           $(INCLUDE_DIR)
	$(AT)cp -af $(FREETYPE_DIR)/freetype-2.3.12/include/*   $(INCLUDE_DIR)
	$(AT)rm -rf $(INCLUDE_DIR)/freetype/internal

#====================================================================================
#                   cfg ops
#====================================================================================
.PHONY: defconfig menuconfig

#++++++++++++++++++++++++++++++++++++++++++++++++++++
KCONFIG_EXE = tools/linux/kconfig/himconf
KCONFIG_CFG  = scripts/kconfig/mainKconfig
#++++++++++++++++++++++++++++++++++++++++++++++++++++
$(KCONFIG_EXE):
	$(AT)make tools_install obj=kconfig
cfgfile_update:
ifneq ($(CFILE), )
	$(if $(wildcard $(CFILE)), \
		cp -f $(CFILE) $(SDK_CFGFILE), \
		$(AT)echo "$(CFILE) not exist."; exit 1 \
	)
endif
#++++++++++++++++++++++++++++++++++++++++++++++++++++
cfgfile_menu: $(KCONFIG_EXE)
	$(KCONFIG_EXE) $(KCONFIG_CFG)

menuconfig:  cfgfile_update cfgfile_menu
	$(AT)echo "make $@ over"


defconfig: cfgfile_update
	$(AT)echo "make $@ over"

#====================================================================================
#                   help
#====================================================================================
.PHONY:  help
#++++++++++++++++++++++++++++++++++++++++++++++++++++
GREEN="\e[32;1m"
NORMAL="\e[39m"
RED="\e[31m"

help:
	$(AT)echo -e ${GREEN}
	$(AT)cat Readme|less
	$(AT)echo -e ${NORMAL}
