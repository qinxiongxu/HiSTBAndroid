#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../../..
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
BUILD_DIR  := $(shell pwd)/tmp
ifneq ($(ANDROID_BUILD),y)
INSTALL_DIR := $(MODULE_DIR)
STA_CFG_INSTALL_DIR := $(ROOTFS_DIR)/etc/Wireless/RT2870STA
PREALLOC_INSTALL_DIR := $(MODULE_DIR)/mtprealloc7601Usta.ko
else
INSTALL_DIR := $(ANDROID_PRODUCT_OUT)/system/lib/modules
STA_CFG_INSTALL_DIR := $(ANDROID_PRODUCT_OUT)/system/etc/Wireless/RT2870STA
PREALLOC_INSTALL_DIR := $(ANDROID_PRODUCT_OUT)/system/lib/modules/mtprealloc7601Usta.ko
endif

STA_SRC := JEDI.MP1.mt7601u.v1.4.3
STA_MODULE := mt7601Usta.ko mtprealloc.ko
STA_MODULE_PATH := $(BUILD_DIR)/$(STA_SRC)/os/linux/mt7601Usta.ko 
PREALLOC_MODULE_PATH :=  $(BUILD_DIR)/$(STA_SRC)/os/linux/mtprealloc.ko
STA_CFG := MT7601USTA.dat
STA_CFG_PATH := $(BUILD_DIR)/$(STA_SRC)/MT7601USTA.dat

MODULE_SRC = $(STA_SRC)
MODULE = $(STA_MODULE)

BUILD_MODULES = $(patsubst %,%_build,${MODULE_SRC})
UNINSTALL_MODULES = $(patsubst %,%_uninstall,${MODULE})

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall
all: $(BUILD_MODULES)

clean:
	@rm -rf $(BUILD_DIR)

install: all
	@test -d $(INSTALL_DIR) || mkdir -p $(INSTALL_DIR)
	@cp -v $(STA_MODULE_PATH) $(INSTALL_DIR)/
	@cp -v $(PREALLOC_MODULE_PATH) $(PREALLOC_INSTALL_DIR)
	@test -d $(STA_CFG_INSTALL_DIR) || mkdir -p $(STA_CFG_INSTALL_DIR)
	@cp -v $(STA_CFG_PATH) $(STA_CFG_INSTALL_DIR)/

uninstall: $(UNINSTALL_MODULES)
	@rm -f $(STA_CFG_INSTALL_DIR)/$(STA_CFG)

#==================================================================
#                          modules
#==================================================================
%_build: $(BUILD_DIR)
	@echo -e "\033[31m""Build $(patsubst %_build,%,$@) ...""\033[00m"
	@test -d $(BUILD_DIR)/$(patsubst %_build,%,$@) \
		|| tar -zxf $(patsubst %_build,%,$@).tar.gz -C $(BUILD_DIR)
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) LINUX_SRC=$(LINUX_DIR) \
		-C $(BUILD_DIR)/$(patsubst %_build,%,$@)

$(BUILD_DIR):
	@test -d $(BUILD_DIR) || mkdir -p $(BUILD_DIR)

%_uninstall:
	@rm -f $(INSTALL_DIR)/$(patsubst %_uninstall,%,$@)
