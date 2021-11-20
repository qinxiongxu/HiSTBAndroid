#----------------------------------------------------------------------
# Compile Security
#----------------------------------------------------------------------
SECURE_SIGN_TOOL := $(BUILD_OUT_EXECUTABLES)/secureSignTool$(BUILD_EXECUTABLE_SUFFIX)

ifeq ($(strip $(HISILICON_SECURITY_L2)),true)
include $(CLEAR_VARS)
EMMC_SECURITY_MKDIR := $(PRODUCT_OUT)/Security_L2
EMMC_SECURITY_SIGN := $(SECURITY_MAINTAIN_OUT)/fastboot.bin
SECURE_CONFIG_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/bigfish/security/secureSignTool/etc
SECURE_RSA_KEY_DIR := $(ANDROID_BUILD_TOP)/device/hisilicon/$(CHIPNAME)/security/
SECURE_BOOT_CFG_FILE := $(ANDROID_BUILD_TOP)/$(SDK_BOOTCFG_DIR)/$(EMMC_BOOT_CFG_NAME)
ifneq ($(EMMC_BOOT_REG_NAME_2),)
SECURE_BOOT_CFG_FILE_2 := $(ANDROID_BUILD_TOP)/$(SDK_BOOTCFG_DIR)/$(EMMC_BOOT_CFG_NAME_2)
endif
SECURE_INPUT_DIR := $(ANDROID_BUILD_TOP)/$(EMMC_PRODUCT_OUT)/
SECURE_OBJ_DIR := $(ANDROID_BUILD_TOP)/$(TARGET_OUT_INTERMEDIATES)/SecureSign_OBJ/
SECURE_OUTPUT_DIR := $(ANDROID_BUILD_TOP)/$(SECURITY_MAINTAIN_OUT)/

$(EMMC_SECURITY_MKDIR):
	@echo ----- Mkdir Security ------
	$(hide) mkdir -p $(SECURITY_PRODUCTION_OUT)
	$(hide) mkdir -p $(SECURITY_MAINTAIN_OUT)
	$(hide) mkdir -p $(SECURE_OBJ_DIR)
	$(hide) mkdir -p $(SECURE_OUTPUT_DIR)
	@echo ----- Mkdir Security $@ ------

include $(CLEAR_VARS)
EMMC_SECURITY_HASH := $(PRODUCT_OUT)/system/etc/system_list
$(EMMC_SECURITY_HASH): $(INSTALLED_SYSTEMIMAGE)
	@echo ----- Hash System ------
	$(hide) hash_tool 1 $(PRODUCT_OUT)/system $(SECURE_OBJ_DIR)
	$(hide) $(SECURE_SIGN_TOOL) -t 2 -c $(SECURE_CONFIG_DIR)/common_system_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_OBJ_DIR) -o $(SECURE_OBJ_DIR)
	$(hide) cp -avf $(SECURE_OBJ_DIR)/system_list $(PRODUCT_OUT)/system/etc/system_list
	$(hide) rm -rf $(PRODUCT_OUT)/system.img
	$(hide) make_ext4fs -s -S out/target/product/$(CHIPNAME)/root/file_contexts -l $(BOARD_SYSTEMIMAGE_PARTITION_SIZE) -a system out/target/product/$(CHIPNAME)/system.img out/target/product/$(CHIPNAME)/system
	$(hide) cp -avf $(PRODUCT_OUT)/system.img $(SECURITY_PRODUCTION_OUT)/system.ext4
	$(hide) cp -avf $(PRODUCT_OUT)/system.img $(SECURITY_MAINTAIN_OUT)/system.ext4
	@echo ----- Hash System $@ ------

include $(CLEAR_VARS)
ifneq ($(EMMC_BOOT_REG_NAME_2),)
$(EMMC_SECURITY_SIGN): $(INSTALLED_SYSTEMIMAGE) $(INSTALLED_USERDATAIMAGE_TARGET) $(KERNEL_IMAGE) $(RECOVERY_IMAGE) $(EMMC_HIBOOT_IMG) $(EMMC_HIBOOT_IMG_2) $(UPDATE_TOOLS) $(EMMC_SECURITY_MKDIR) $(L2_EMMC_PRODUCT_IMG) | $(SECURE_SIGN_TOOL)
else
$(EMMC_SECURITY_SIGN): $(INSTALLED_SYSTEMIMAGE) $(INSTALLED_USERDATAIMAGE_TARGET) $(KERNEL_IMAGE) $(RECOVERY_IMAGE) $(EMMC_HIBOOT_IMG) $(UPDATE_TOOLS) $(EMMC_SECURITY_MKDIR) $(L2_EMMC_PRODUCT_IMG) | $(SECURE_SIGN_TOOL)
endif
	@echo ----- Sign Security Image ------
	$(hide) cp -avf $(ANDROID_BUILD_TOP)/$(EMMC_PRODUCT_OUT)/* $(SECURITY_PRODUCTION_OUT)
	$(hide) cp -avf $(ANDROID_BUILD_TOP)/$(EMMC_PRODUCT_OUT)/pq_param.bin $(SECURITY_MAINTAIN_OUT)
	$(hide) $(SECURE_SIGN_TOOL) -t 0 -c $(SECURE_CONFIG_DIR)/Signboot_config.cfg -b $(SECURE_BOOT_CFG_FILE) -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
	$(hide) cp -arv $(SECURE_OBJ_DIR)/fastboot.bin $(SECURE_OUTPUT_DIR)/fastboot.bin
ifneq ($(EMMC_BOOT_REG_NAME_2),)
	$(hide) $(SECURE_SIGN_TOOL) -t 0 -c $(SECURE_CONFIG_DIR)/Signboot_config_2.cfg -b $(SECURE_BOOT_CFG_FILE_2) -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
	$(hide) cp -arv $(SECURE_OBJ_DIR)/fastboot-qfp.bin $(SECURE_OUTPUT_DIR)/fastboot-qfp.bin
endif
	$(hide) $(SECURE_SIGN_TOOL) -t 2 -c $(SECURE_CONFIG_DIR)/common_bootargs_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
	$(hide) cp -arv $(SECURE_OBJ_DIR)/bootargs.bin $(SECURE_OUTPUT_DIR)/bootargs.bin
ifeq ($(strip $(HISILICON_SECURITY_L2_COMMON_MODE_SIGN)),true)
	$(hide) $(SECURE_SIGN_TOOL) -t 2 -c $(SECURE_CONFIG_DIR)/common_recovery_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
else
	$(hide) $(SECURE_SIGN_TOOL) -t 3 -c $(SECURE_CONFIG_DIR)/special_recovery_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
endif
	$(hide) cp -arv $(SECURE_OBJ_DIR)/recovery.img $(SECURE_OUTPUT_DIR)/recovery.img
ifeq ($(strip $(HISILICON_SECURITY_L2_COMMON_MODE_SIGN)),true)
	$(hide) $(SECURE_SIGN_TOOL) -t 2 -c $(SECURE_CONFIG_DIR)/common_kernel_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
else
	$(hide) $(SECURE_SIGN_TOOL) -t 3 -c $(SECURE_CONFIG_DIR)/special_kernel_config.cfg -k $(SECURE_RSA_KEY_DIR) -r $(SECURE_INPUT_DIR) -o $(SECURE_OBJ_DIR)
endif
	$(hide) cp -arv $(SECURE_OBJ_DIR)/kernel.img $(SECURE_OUTPUT_DIR)/kernel.img
	@echo ----- Sign Security Image: $@ --------

.PHONY: security-emmc
security-emmc: $(EMMC_SECURITY_SIGN)

#----------------------------------------------------------------------
# Security End
#----------------------------------------------------------------------

#----------------------------------------------------------------------
# Generate The Security Update Package
# 1: emmc update.zip
#----------------------------------------------------------------------

include $(CLEAR_VARS)

EMMC_SECURITY_UPDATE_PACKAGE :=$(SECURITY_MAINTAIN_OUT)/update.zip

ifneq ($(EMMC_BOOT_REG_NAME_2),)
$(EMMC_SECURITY_UPDATE_PACKAGE): $(INSTALLED_SYSTEMIMAGE) $(INSTALLED_USERDATAIMAGE_TARGET) $(KERNEL_IMAGE) $(RECOVERY_IMAGE) $(L2_EMMC_MAINTAIN_IMG) $(EMMC_HIBOOT_IMG) $(EMMC_HIBOOT_IMG_2) $(UPDATE_TOOLS) $(EMMC_SECURITY_MKDIR) $(EMMC_SECURITY_SIGN) $(EXT4_IMG) $(EMMC_SECURITY_HASH)
else
$(EMMC_SECURITY_UPDATE_PACKAGE): $(INSTALLED_SYSTEMIMAGE) $(INSTALLED_USERDATAIMAGE_TARGET) $(KERNEL_IMAGE) $(RECOVERY_IMAGE) $(L2_EMMC_MAINTAIN_IMG) $(EMMC_HIBOOT_IMG) $(UPDATE_TOOLS) $(EMMC_SECURITY_MKDIR) $(EMMC_SECURITY_SIGN) $(EXT4_IMG) $(EMMC_SECURITY_HASH)
endif
	@echo ----- Making security update package ------
	$(hide) rm -rf $(SECURITY_MAINTAIN_OUT)/update
	$(hide) mkdir -p $(SECURITY_MAINTAIN_OUT)/update
	$(hide) mkdir -p $(SECURITY_MAINTAIN_OUT)/update/file
	$(hide) mkdir -p $(SECURITY_MAINTAIN_OUT)/update/file/META
	$(hide) cp -af $(call include-path-for, recovery)/etc/recovery.emmc.fstab $(SECURITY_MAINTAIN_OUT)/update/file/META/recovery.fstab
	$(hide) cp -a $(PRODUCT_OUT)/bootargs_emmc.txt $(SECURITY_MAINTAIN_OUT)/update/file/META/bootargs.txt
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/fastboot.bin $(SECURITY_MAINTAIN_OUT)/update/file/fastboot.img
ifneq ($(EMMC_BOOT_REG_NAME_2),)
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/fastboot-qfp.bin $(SECURITY_MAINTAIN_OUT)/update/file/fastboot-qfp.img
endif
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/recovery.img $(SECURITY_MAINTAIN_OUT)/update/file/recovery.img
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/bootargs.bin $(SECURITY_MAINTAIN_OUT)/update/file/bootargs.img
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/kernel.img $(SECURITY_MAINTAIN_OUT)/update/file/boot.img
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/baseparam.img $(SECURITY_MAINTAIN_OUT)/update/file/baseparam.img
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/logo.img $(SECURITY_MAINTAIN_OUT)/update/file/logo.img
ifneq ($(strip $(BOARD_QBSUPPORT)),true)
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/fastplay.img $(SECURITY_MAINTAIN_OUT)/update/file/fastplay.img
endif
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/pq_param.bin $(SECURITY_MAINTAIN_OUT)/update/file/pq_param.img
ifeq ($(strip $(BOARD_QBSUPPORT)),true)
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/userapi.bin $(SECURITY_MAINTAIN_OUT)/update/file/userapi.img
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/hibdrv.bin $(SECURITY_MAINTAIN_OUT)/update/file/hibdrv.img
endif
	$(hide) mkdir -p $(SECURITY_MAINTAIN_OUT)/update/file/META-INF/com/google/android
	$(hide) cp -a $(PRODUCT_OUT)/system/bin/updater $(SECURITY_MAINTAIN_OUT)/update/file/META-INF/com/google/android/update-binary
	$(hide) cp -af $(PRODUCT_OUT)/system $(SECURITY_MAINTAIN_OUT)/update/file/system
	$(hide) cp -af $(PRODUCT_OUT)/data $(SECURITY_MAINTAIN_OUT)/update/file/userdata
	$(hide) cp -a $(call include-path-for, recovery)/etc/META-INF/com/google/android/updater-script-emmc $(SECURITY_MAINTAIN_OUT)/update/file/META-INF/com/google/android/updater-script
	$(hide) echo "recovery_api_version=$(RECOVERY_API_VERSION)" >$(SECURITY_MAINTAIN_OUT)/update/file/META/misc_info.txt
	$(hide) echo "fstab_version=$(RECOVERY_FSTAB_VERSION)" >> $(SECURITY_MAINTAIN_OUT)/update/file/META/misc_info.txt
	$(hide) (cd $(SECURITY_MAINTAIN_OUT)/update/file && zip -qry ../sor_update.zip .)
	zipinfo -1 $(SECURITY_MAINTAIN_OUT)/update/sor_update.zip | awk '/^system\// {print}' | $(HOST_OUT_EXECUTABLES)/fs_config > $(SECURITY_MAINTAIN_OUT)/update/file/META/filesystem_config.txt
	$(hide) (cd $(SECURITY_MAINTAIN_OUT)/update/file && zip -q ../sor_update.zip META/*)
	java -jar $(SIGNAPK_JAR) -w  $(DEFAULT_SYSTEM_DEV_CERTIFICATE).x509.pem $(DEFAULT_SYSTEM_DEV_CERTIFICATE).pk8 $(SECURITY_MAINTAIN_OUT)/update/sor_update.zip $(SECURITY_MAINTAIN_OUT)/update/update.zip
	$(hide) cp -a $(SECURITY_MAINTAIN_OUT)/update/update.zip  $(SECURITY_MAINTAIN_OUT)/
	$(hide) rm -rf $(SECURITY_MAINTAIN_OUT)/update
	$(hide) cp -avf $(SECURITY_MAINTAIN_OUT)/update.zip $(SECURITY_PRODUCTION_OUT)/update.zip
	@echo ----- Make security update package: $@ --------


.PHONY: updatezip-security-emmc
updatezip-security-emmc: $(EMMC_SECURITY_UPDATE_PACKAGE)
endif
#----------------------------------------------------------------------
# Generate The Security Update Package End
#----------------------------------------------------------------------
