#----------------------------------------------------------------------
# Compile Linux Kernel
#----------------------------------------------------------------------
include $(CLEAR_VARS)
KERNEL_OUT := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ
KERNEL_IMAGE := $(KERNEL_OUT)/kernel.img

MSP_BUILTIN_KERNEL := $(shell grep "CFG_HI_MSP_BUILDIN" $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/sdk/$(SDK_CFGFILE) |cut -d =  -f2 | tr -d ' ')

ifeq ($(MSP_BUILTIN_KERNEL),y)
MSP_FLAG := CONFIG_MSP=y
else
MSP_FLAG := 
endif

ifeq ($(strip $(HISILICON_SECURITY_L2)),true)
HI_EXTRA_FLAGS := CONFIG_SUPPORT_CA=y CONFIG_CA_WARKUP_CHECK=y
HI_EXTRA_CFLAGS := "-DCONFIG_SUPPORT_CA -DCONFIG_CA_WARKUP_CHECK"
HI_EXTRA_AFLAGS := "-DCONFIG_SUPPORT_CA -DCONFIG_CA_WARKUP_CHECK"
else
HI_EXTRA_FLAGS :=
HI_EXTRA_CFLAGS :=
HI_EXTRA_AFLAGS :=
endif

ifeq ($(strip $(BOARD_QBSUPPORT)),true)
HI_EXTRA_FLAGS :=$(HI_EXTRA_FLAGS) CONFIG_HIBERNATE_CALLBACKS=y CONFIG_HIBERNATION=y CONFIG_PM_STD_PARTITION= CONFIG_PM_HIBERNATE=y CONFIG_PM_HIBERNATE_SAVENO=0 CONFIG_PM_HIBERNATE_LOADNO=0 CONFIG_PM_HIBERNATE_COMPRESS=2 CONFIG_PM_HIBERNATE_SHRINK=1 CONFIG_PM_HIBERNATE_SEPARATE=0 CONFIG_PM_HIBERNATE_SILENT=0
HI_EXTRA_CFLAGS :=$(HI_EXTRA_CFLAGS)" -DCONFIG_HIBERNATE_CALLBACKS -DCONFIG_HIBERNATION -DCONFIG_PM_STD_PARTITION= -DCONFIG_PM_HIBERNATE -DCONFIG_PM_HIBERNATE_SAVENO=0 -DCONFIG_PM_HIBERNATE_LOADNO=0 -DCONFIG_PM_HIBERNATE_COMPRESS=2 -DCONFIG_PM_HIBERNATE_SHRINK=1 -DCONFIG_PM_HIBERNATE_SEPARATE=0 -DCONFIG_PM_HIBERNATE_SILENT=0"
HI_EXTRA_AFLAGS :=$(HI_EXTRA_AFLAGS)" -DCONFIG_HIBERNATE_CALLBACKS -DCONFIG_HIBERNATION -DCONFIG_PM_STD_PARTITION= -DCONFIG_PM_HIBERNATE -DCONFIG_PM_HIBERNATE_SAVENO=0 -DCONFIG_PM_HIBERNATE_LOADNO=0 -DCONFIG_PM_HIBERNATE_COMPRESS=2 -DCONFIG_PM_HIBERNATE_SHRINK=1 -DCONFIG_PM_HIBERNATE_SEPARATE=0 -DCONFIG_PM_HIBERNATE_SILENT=0"
endif

$(info -------------BOARD_QBSUPPORT=$(BOARD_QBSUPPORT))
$(info -------------HI_EXTRA_FLAGS=$(HI_EXTRA_FLAGS))
$(info -------------HI_EXTRA_CFLAGS=$(HI_EXTRA_CFLAGS))
$(info -------------HI_EXTRA_AFLAGS=$(HI_EXTRA_AFLAGS))

kernel_prepare:
	mkdir -p $(KERNEL_OUT)
	mkdir -p $(EMMC_PRODUCT_OUT)
	mkdir -p $(NAND_PRODUCT_OUT)
	mkdir -p $(TARGET_OUT_SHARED_LIBRARIES)/modules
	$(MAKE) -C $(HISI_KERNEL_SOURCE) $(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS) distclean
	echo "build kernel config: KERNEL_CONFIG=$(ANDROID_KERNEL_CONFIG)"
	cd $(SDK_DIR);$(MAKE) linux_prepare SDK_CFGFILE=$(SDK_CFGFILE); cd -;

kernel_config: kernel_prepare
	if [ -f $(KERNEL_OUT)/.config ]; then \
	echo "Attention:$(KERNEL_OUT)/.config exist"; \
	echo "make kernel_config: Nothing to be done!"; \
	else \
	$(MAKE) -C $(HISI_KERNEL_SOURCE) \
	SDK_CFGFILE=$(SDK_CFGFILE) \
	O=$(ANDROID_BUILD_TOP)/$(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ \
	ARCH=arm CROSS_COMPILE=arm-hisiv200-linux- \
	$(ANDROID_KERNEL_CONFIG) $(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS); \
	fi

kernel_menuconfig: kernel_config
	$(MAKE) -C $(HISI_KERNEL_SOURCE) O=$(ANDROID_BUILD_TOP)/$(KERNEL_OUT) \
		SDK_CFGFILE=$(SDK_CFGFILE) \
		ARCH=arm CROSS_COMPILE=arm-hisiv200-linux- menuconfig

ifeq ($(RAMDISK_ENABLE),false)
$(KERNEL_IMAGE): kernel_config $(INSTALLED_RAMDISK_TARGET) | $(ACP)
	$(MAKE) -C $(HISI_KERNEL_SOURCE) O=$(ANDROID_BUILD_TOP)/$(KERNEL_OUT) \
		SDK_CFGFILE=$(SDK_CFGFILE) \
		ARCH=arm CROSS_COMPILE=arm-hisiv200-linux- $(MSP_FLAG) \
		CONFIG_INITRAMFS_SOURCE=$(ANDROID_BUILD_TOP)/$(TARGET_ROOT_OUT) \
		$(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS) \
		-j 4 uImage modules
	$(hide) cp -avf $(KERNEL_OUT)/arch/arm/boot/uImage $@
	$(hide) chmod a+r $@
	$(hide) echo HI_EXTRA_FLAGS=$(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS)
	cp -avf $@ $(NAND_PRODUCT_OUT)
	cp -avf $@ $(EMMC_PRODUCT_OUT)
else
$(KERNEL_IMAGE): kernel_config $(INSTALLED_RAMDISK_TARGET) | $(ACP)
	$(MAKE) -C $(HISI_KERNEL_SOURCE) O=$(ANDROID_BUILD_TOP)/$(KERNEL_OUT) \
		SDK_CFGFILE=$(SDK_CFGFILE) \
		ARCH=arm CROSS_COMPILE=arm-hisiv200-linux- $(MSP_FLAG) \
		$(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS) \
		-j 4 uImage modules
	$(hide) echo HI_EXTRA_FLAGS=$(HI_EXTRA_FLAGS) CFLAGS_KERNEL=$(HI_EXTRA_CFLAGS) AFLAGS_KERNEL=$(HI_EXTRA_AFLAGS)
	cp -avf $(KERNEL_OUT)/arch/arm/boot/uImage $(PRODUCT_OUT)/kernel
endif

ifneq ($(findstring $(TARGET_PRODUCT), Hi3716CV200 Hi3719CV100 Hi3718CV100),)
	$(hide) echo "####################### copy modules $(TARGET_PRODUCT)"
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ohci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ehci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/ata/libahci.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/ata/libahci.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
else ifneq ($(findstring $(TARGET_PRODUCT), Hi3796CV100 Hi3798CV100 Hi3798MV100 Hi3796MV100 Hi3798MV100_A),)
	$(hide) echo "####################### copy modules $(TARGET_PRODUCT)"
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ohci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ehci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/xhci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
else
	$(hide) echo "####################### copy modules $(TARGET_PRODUCT)"
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ohci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
	$(hide) cp -avf $(KERNEL_OUT)/drivers/usb/host/ehci-hcd.ko $(TARGET_OUT_SHARED_LIBRARIES)/modules/
endif

ifeq ($(RAMDISK_ENABLE),false)
.PHONY: kernel $(KERNEL_IMAGE)
kernel: $(KERNEL_IMAGE)
else
.PHONY: kernel $(KERNEL_IMAGE) $(INSTALLED_BOOTIMAGE_TARGET)
$(INSTALLED_KERNEL_TARGET): $(KERNEL_IMAGE)
kernel: $(INSTALLED_BOOTIMAGE_TARGET)
	cp -avf $(INSTALLED_BOOTIMAGE_TARGET) $(NAND_PRODUCT_OUT)/kernel.img
	cp -avf $(INSTALLED_BOOTIMAGE_TARGET) $(EMMC_PRODUCT_OUT)/kernel.img
endif


#----------------------------------------------------------------------
# Linux Kernel End
#----------------------------------------------------------------------

#----------------------------------------------------------------------
# Update Wifi Drivers
#----------------------------------------------------------------------
WIFI_CFG := \
	CFG_HI_WIFI_DEVICE_RTL8188CUS=$(BOARD_WLAN_DEVICE_RTL8188CUS) \
	CFG_HI_WIFI_DEVICE_RTL8192CU=$(BOARD_WLAN_DEVICE_RTL8192CU) \
	CFG_HI_WIFI_DEVICE_RTL8188EUS=$(BOARD_WLAN_DEVICE_RTL8188EUS) \
	CFG_HI_WIFI_DEVICE_RTL8192EU=$(BOARD_WLAN_DEVICE_RTL8192EU) \
	CFG_HI_WIFI_DEVICE_RTL8192DU=$(BOARD_WLAN_DEVICE_RTL8192DU) \
	CFG_HI_WIFI_DEVICE_RTL8812AU=$(BOARD_WLAN_DEVICE_RTL8812AU) \
	CFG_HI_WIFI_DEVICE_RTL8723BU=$(BOARD_BLUETOOTH_WIFI_DEVICE_RTL8723BU) \
	CFG_HI_WIFI_DEVICE_RT5370=$(BOARD_WLAN_DEVICE_RT5370) \
	CFG_HI_WIFI_DEVICE_RT5572=$(BOARD_WLAN_DEVICE_RT5572) \
	CFG_HI_WIFI_DEVICE_MT7601U=$(BOARD_WLAN_DEVICE_MT7601U) \
	CFG_HI_WIFI_DEVICE_MT76X2U=$(BOARD_BLUETOOTH_WIFI_DEVICE_MT7632U) \
	CFG_HI_WIFI_DEVICE_AR9271=$(BOARD_WLAN_DEVICE_AR9271) \
	CFG_HI_WIFI_DEVICE_AR9374=$(BOARD_WLAN_DEVICE_AR9374) \
	CFG_HI_WIFI_DEVICE_QCA1021G=$(BOARD_WLAN_DEVICE_QCA1021G) \
	CFG_HI_WIFI_DEVICE_QCA1021X=$(BOARD_WLAN_DEVICE_QCA1021X) \
	CFG_HI_WIFI_MODE_STA=y CFG_HI_WIFI_MODE_AP=y

wifi: $(KERNEL_IMAGE)
	$(MAKE) -j1 -C $(SDK_DIR)/source/component/wifi/drv \
		ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- \
		ROOTFS_DIR=$(ANDROID_BUILD_TOP)/$(PRODUCT_OUT) \
		LINUX_DIR=$(ANDROID_BUILD_TOP)/$(KERNEL_OUT) \
		SDK_CFGFILE=$(SDK_CFGFILE) $(WIFI_CFG) ANDROID_BUILD=y install
	$(MAKE) -C $(SDK_DIR)/source/component/wifi/drv \
		SDK_CFGFILE=$(SDK_CFGFILE) $(WIFI_CFG) clean
ALL_DEFAULT_INSTALLED_MODULES += wifi
.PHONY: wifi
wifi: kernel
#----------------------------------------------------------------------
# Update Wifi Drivers END
#----------------------------------------------------------------------

#----------------------------------------------------------------------
# Make Bluetooth Drivers
#----------------------------------------------------------------------
BLUETOOTH_DIR := $(SDK_DIR)
ifeq ($(BOARD_BLUETOOTH_DEVICE_BCM20705),y)
   ifeq ($(BOARD_BLUETOOTH_DEVICE_CSR8510),y)
   $(error only one bluetooth could be built at the same time)
   endif
   ifeq ($(BOARD_BLUETOOTH_DEVICE_REALTEK),y)
   $(error only one bluetooth could be built at the same time)
   endif
   ifeq ($(BOARD_BLUETOOTH_WIFI_DEVICE_MT7632U),y)
   $(error only one bluetooth could be built at the same time)
   endif
endif
ifeq ($(BOARD_BLUETOOTH_DEVICE_CSR8510),y)
   ifeq ($(BOARD_BLUETOOTH_REALTEK),y)
   $(error only one bluetooth could be built at the same time)
   endif
   ifeq ($(BOARD_BLUETOOTH_WIFI_DEVICE_MT7632U),y)
   $(error only one bluetooth could be built at the same time)
   endif
endif
ifeq ($(BOARD_BLUETOOTH_REALTEK),y)
   ifeq ($(BOARD_BLUETOOTH_WIFI_DEVICE_MT7632U),y)
   $(error only one bluetooth could be built at the same time)
   endif
endif

ifeq ($(BOARD_BLUETOOTH_DEVICE_REALTEK),y)
BLUETOOTH_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/bluetooth/realtek8xxx/driver
endif

ifeq ($(BOARD_BLUETOOTH_DEVICE_BCM20705),y)
BLUETOOTH_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/bluetooth/bcm20705/driver
endif

ifeq ($(BOARD_BLUETOOTH_DEVICE_CSR8510),y)
BLUETOOTH_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/bluetooth/csr8510/driver
endif

ifeq ($(BOARD_BLUETOOTH_WIFI_DEVICE_MT7632U),y)
BLUETOOTH_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/bluetooth/mt76x2u/driver
endif

ifeq ($(BOARD_HAVE_BLUETOOTH),true)
bluetooth: $(KERNEL_IAMGE)
	$(MAKE) -j1 -C $(BLUETOOTH_DIR) \
                ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- \
		KERNEL_VERSION=$(HISI_LINUX_KERNEL) \
		CHIPNAME=$(CHIPNAME) \
		ANDROID_PRODUCT_OUT=$(ANDROID_BUILD_TOP)/$(PRODUCT_OUT) \
		SDK_CFGFILE=$(SDK_CFGFILE)

ALL_DEFAULT_INSTALLED_MODULES += bluetooth
endif

.PHONY: bluetooth
bluetooth: kernel
#----------------------------------------------------------------------
# Make Bluetooth Drivers END
#---------------------------------------------------------------------
