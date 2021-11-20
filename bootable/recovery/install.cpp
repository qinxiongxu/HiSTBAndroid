/*
 * Copyright (C) 2007 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <ctype.h>
#include <errno.h>
#include <fcntl.h>
#include <limits.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <unistd.h>

#include "common.h"
#include "install.h"
#include "mincrypt/rsa.h"
#include "minui/minui.h"
#include "minzip/SysUtil.h"
#include "minzip/Zip.h"
#include "mtdutils/mounts.h"
#include "mtdutils/mtdutils.h"
#include "roots.h"
#include "verifier.h"
#include "ui.h"
#include <cutils/properties.h>
#ifdef HISILICON_SECURITY_L2
#include <stdio.h>
#include <string.h>
#include "verifytool.h"
#ifdef SUPPORT_UNIFIED_UPDATE
#include "hi_common.h"
#endif
#endif
extern RecoveryUI* ui;

#define ASSUMED_UPDATE_BINARY_NAME  "META-INF/com/google/android/update-binary"
#define PUBLIC_KEYS_FILE "/res/keys"
#define BUFLEN 1024
#ifdef HISILICON_SECURITY_L2
#define ASSUMED_FASTBOOT_NAME    "fastboot.img"
#ifdef SUPPORT_UNIFIED_UPDATE
#define ASSUMED_FASTBOOT_QFP_NAME    "fastboot-qfp.img"
#endif
#define ASSUMED_KERNEL_NAME    "boot.img"
#define RSA_KEY_LEN    (0x200)
#define KEY_AREA_TOTAL_LEN    (0x304)
#define PARAM_AREA_LEN    (0x13fc)
#define RSA2048_SIGN_LEN    (0x100)
#define SHA256_LEN    (0x20)
#define CAIMGHEAD_MAGICNUMBER    "Hisilicon_ADVCA_ImgHead_MagicNum"
#define MAGIC_NUM_LEN    (0x20)

#define PARAM_SIGN_OFFSET    (KEY_AREA_TOTAL_LEN + PARAM_AREA_LEN)//0x1700
#define BOOT_AREA_OFFSET    (PARAM_SIGN_OFFSET + RSA2048_SIGN_LEN)//0x1800

#define FLASH_ADVCA_UBOOT_BEGIN_OFFSET    (0x200)
#define FLASH_ADVCA_UBOOT_FLAG_OFFSET    (FLASH_ADVCA_UBOOT_BEGIN_OFFSET + 0x324)

#define LOCAL_FASTBOOT_PARTITION    "/dev/block/platform/hi_mci.1/by-name/fastboot"
#define LOCAL_KERNEL_PARTITION    "/dev/block/platform/hi_mci.1/by-name/kernel"

typedef struct {
    unsigned char type;
    unsigned char reserved;
    unsigned char len[2];
    unsigned char reg_base[4];
}cfg_param_head;

typedef struct hi_CAImgHead_S
{
    unsigned char u8MagicNumber[32];                    //Magic Number: "Hisilicon_ADVCA_ImgHead_MagicNum"
    unsigned char u8HeaderVersion[8];                         //version: "V000 0003"
    unsigned int u32TotalLen;                          //Total length
    unsigned int u32CodeOffset;                        //Image offset
    unsigned int u32SignedImageLen;                    //Signed Image file size
    unsigned int u32SignatureOffset;                   //Signed Image offset
    unsigned int u32SignatureLen;                      //Signature length
    unsigned int u32BlockNum;                          //Image block number
    unsigned int u32BlockOffset[5];    //Each Block offset
    unsigned int u32BlockLength[5];    //Each Block length
    unsigned int u32SoftwareVerion;                    //Software version
    unsigned int Reserverd[31];
    unsigned int u32CRC32;                             //CRC32 value
} HI_CAImgHead_S;
#endif

// Default allocation of progress bar segments to operations
static const int VERIFICATION_PROGRESS_TIME = 60;
static const float VERIFICATION_PROGRESS_FRACTION = 0.25;
static const float DEFAULT_FILES_PROGRESS_FRACTION = 0.4;
static const float DEFAULT_IMAGE_PROGRESS_FRACTION = 0.1;

static void dump_hex(const char*name, unsigned char* data, int len){
    int i;
    char temp[128] = {0};
    char temp_final[128] = {0};
    LOGI("%s length: %d\n", name, len);
    if (data == NULL) {
        LOGI("data is NULL\n");
        return;
    }

    for (i = 0; i < len; i++) {
        if( (i > 0) && (i % 16 == 0))
        {
            LOGI("%s\n", temp_final);
            memset(temp_final, 0, 128);
        }
        sprintf(temp,"%02X ", (char)data[i]);
        strcat(temp_final, temp);
    }
    LOGI("%s\n", temp_final);
    return;
}

// If the package contains an update binary, extract it and run it.
static int
try_update_binary(const char *path, ZipArchive *zip, int* wipe_cache) {
    const ZipEntry* binary_entry =
            mzFindZipEntry(zip, ASSUMED_UPDATE_BINARY_NAME);
    if (binary_entry == NULL) {
        mzCloseZipArchive(zip);
        return INSTALL_CORRUPT;
    }

    const char* binary = "/tmp/update_binary";
    unlink(binary);
    int fd = creat(binary, 0755);
    if (fd < 0) {
        mzCloseZipArchive(zip);
        LOGE("Can't make %s\n", binary);
        return INSTALL_ERROR;
    }
    bool ok = mzExtractZipEntryToFile(zip, binary_entry, fd);
    close(fd);
    mzCloseZipArchive(zip);

    if (!ok) {
        LOGE("Can't copy %s\n", ASSUMED_UPDATE_BINARY_NAME);
        return INSTALL_ERROR;
    }

    int pipefd[2];
    pipe(pipefd);

    // When executing the update binary contained in the package, the
    // arguments passed are:
    //
    //   - the version number for this interface
    //
    //   - an fd to which the program can write in order to update the
    //     progress bar.  The program can write single-line commands:
    //
    //        progress <frac> <secs>
    //            fill up the next <frac> part of of the progress bar
    //            over <secs> seconds.  If <secs> is zero, use
    //            set_progress commands to manually control the
    //            progress of this segment of the bar
    //
    //        set_progress <frac>
    //            <frac> should be between 0.0 and 1.0; sets the
    //            progress bar within the segment defined by the most
    //            recent progress command.
    //
    //        firmware <"hboot"|"radio"> <filename>
    //            arrange to install the contents of <filename> in the
    //            given partition on reboot.
    //
    //            (API v2: <filename> may start with "PACKAGE:" to
    //            indicate taking a file from the OTA package.)
    //
    //            (API v3: this command no longer exists.)
    //
    //        ui_print <string>
    //            display <string> on the screen.
    //
    //   - the name of the package zip file.
    //

    const char** args = (const char**)malloc(sizeof(char*) * 5);
    args[0] = binary;
    args[1] = EXPAND(RECOVERY_API_VERSION);   // defined in Android.mk
    char* temp = (char*)malloc(10);
    sprintf(temp, "%d", pipefd[1]);
    args[2] = temp;
    args[3] = (char*)path;
    args[4] = NULL;

    pid_t pid = fork();
    if (pid == 0) {
        close(pipefd[0]);
        execv(binary, (char* const*)args);
        fprintf(stdout, "E:Can't run %s (%s)\n", binary, strerror(errno));
        _exit(-1);
    }
    close(pipefd[1]);

    *wipe_cache = 0;

    char buffer[1024];
    FILE* from_child = fdopen(pipefd[0], "r");
    while (fgets(buffer, sizeof(buffer), from_child) != NULL) {
        char* command = strtok(buffer, " \n");
        if (command == NULL) {
            continue;
        } else if (strcmp(command, "progress") == 0) {
            char* fraction_s = strtok(NULL, " \n");
            char* seconds_s = strtok(NULL, " \n");

            float fraction = strtof(fraction_s, NULL);
            int seconds = strtol(seconds_s, NULL, 10);

            ui->ShowProgress(fraction * (1-VERIFICATION_PROGRESS_FRACTION), seconds);
        } else if (strcmp(command, "set_progress") == 0) {
            char* fraction_s = strtok(NULL, " \n");
            float fraction = strtof(fraction_s, NULL);
            ui->SetProgress(fraction);
        } else if (strcmp(command, "ui_print") == 0) {
            char* str = strtok(NULL, "\n");
            if (str) {
                ui->Print("%s", str);
            } else {
                ui->Print("\n");
            }
            fflush(stdout);
        } else if (strcmp(command, "wipe_cache") == 0) {
            *wipe_cache = 1;
        } else if (strcmp(command, "clear_display") == 0) {
            ui->SetBackground(RecoveryUI::NONE);
        } else {
            LOGE("unknown command [%s]\n", command);
        }
    }
    fclose(from_child);

    int status;
    waitpid(pid, &status, 0);
    if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
        LOGE("Error in %s\n(Status %d)\n", path, WEXITSTATUS(status));
        return INSTALL_ERROR;
    }

    return INSTALL_SUCCESS;
}

#ifdef HISILICON_SECURITY_L2
static bool check_local_fastboot_valid(){
    unsigned char param[8] = {0};
    FILE* fp = fopen(LOCAL_FASTBOOT_PARTITION, "rb");
    if (fp == NULL) {
        LOGE("Can't open %s\n", LOCAL_FASTBOOT_PARTITION);
        return false;
    }
    fseek(fp, FLASH_ADVCA_UBOOT_FLAG_OFFSET, SEEK_SET);
    fread(param, sizeof(param), 1, fp);
    //dump_hex("param", param, sizeof(param));
    fclose(fp);

    cfg_param_head *head = (cfg_param_head*)(param);
    /* valid type is : 1-INIT; 2-WAKEUP; 3-INIT | WAKEUP.
    * and reserved area always is 0. */
    if((0 < head->type) && (head->type < 4) && (head->reserved == 0))
    {
        LOGI("Find valid fastboot on flash!\n");
        return true;
    }
    LOGI("No valid fastboot on flash!\n");
    return false;
}

static int get_local_key_area(unsigned char* key_area){
    FILE* fp = fopen(LOCAL_FASTBOOT_PARTITION, "rb");
    if (fp == NULL) {
        LOGE("Can't open %s\n", LOCAL_FASTBOOT_PARTITION);
        return -1;
    }
    fseek(fp, FLASH_ADVCA_UBOOT_BEGIN_OFFSET, SEEK_SET);
    fread(key_area, KEY_AREA_TOTAL_LEN, 1, fp);
    fclose(fp);
    return 0;
}

#ifdef SUPPORT_UNIFIED_UPDATE
static bool is_package_QFP_type(){
    HI_CHIP_PACKAGE_TYPE_E penPackageType;
    HI_SYS_Init();
    HI_SYS_GetChipPackageType(&penPackageType);
    HI_SYS_DeInit();
    if (penPackageType == HI_CHIP_PACKAGE_TYPE_QFP_216) {
        LOGI("QFP type board!\n");
        return true;
    } else {
        return false;
    }
}
#endif

static int verify_fastboot(ZipArchive* zip, unsigned char* key_area){
    const ZipEntry* fastboot_entry = NULL;
    const char* update_fastboot = "/tmp/fastboot";
    unsigned char update_key_area[KEY_AREA_TOTAL_LEN] = {0};
    unsigned char update_param_area[PARAM_AREA_LEN] = {0};
    unsigned char* update_boot_area = NULL;
    unsigned char hash[SHA256_LEN] = {0};
    unsigned char sign[RSA2048_SIGN_LEN] = {0};
    unsigned char rsa_key[RSA_KEY_LEN] = {0};
    int fd = -1;
    bool ok = false;
    FILE* fp = NULL;
    int ret = -1;
    int boot_checked_area_offset = -1;
    int boot_checked_area_len = -1;

#ifdef SUPPORT_UNIFIED_UPDATE
    if (is_package_QFP_type()){
        fastboot_entry = mzFindZipEntry(zip, ASSUMED_FASTBOOT_QFP_NAME);
    }else{
#endif
        fastboot_entry = mzFindZipEntry(zip, ASSUMED_FASTBOOT_NAME);
#ifdef SUPPORT_UNIFIED_UPDATE
    }
#endif

    if (fastboot_entry != NULL) {
        unlink(update_fastboot);
        fd = creat(update_fastboot, 0755);
        if (fd < 0) {
            LOGE("Can't make %s\n", update_fastboot);
            return VERIFY_FAILURE;
        }
        ok = mzExtractZipEntryToFile(zip, fastboot_entry, fd);
        close(fd);
        if (!ok) {
            LOGE("Can't copy %s\n", ASSUMED_FASTBOOT_NAME);
            return VERIFY_FAILURE;
        }

        fp = fopen(update_fastboot, "rb");
        if (fp == NULL) {
            LOGE("Can't open %s\n", update_fastboot);
            return VERIFY_FAILURE;
        }
        LOGI("Verify fastboot start!\n");
        //verify keyArea
        fseek(fp, 0, SEEK_SET);
        fread(update_key_area, KEY_AREA_TOTAL_LEN, 1, fp);
        //dump_hex("update_key_area", update_key_area, KEY_AREA_TOTAL_LEN);
        if (memcmp(update_key_area, key_area, KEY_AREA_TOTAL_LEN) != 0){
            LOGE("Verify key area failed!\n");
            fclose(fp);
            return VERIFY_FAILURE;
        }
        LOGI("Verify keyArea OK!\n");

        memcpy(rsa_key, key_area, RSA_KEY_LEN);    //get rsa key

        //verify paramArea
        fseek(fp, KEY_AREA_TOTAL_LEN, SEEK_SET);
        fread(update_param_area, PARAM_AREA_LEN, 1, fp);    //read param data
        SHA256(update_param_area, PARAM_AREA_LEN, hash);    //calculate hash
        //dump_hex("param_hash", hash, SHA256_LEN);

        fseek(fp, PARAM_SIGN_OFFSET, SEEK_SET);
        fread(sign, RSA2048_SIGN_LEN, 1, fp);    //read signature
        ret = verifySignRSA(hash, sign, rsa_key);    //rsa2048 verify
        if (ret != 0){
            LOGE("Verify paramArea failed!\n");
            fclose(fp);
            return VERIFY_FAILURE;
        }
        LOGI("Verify paramArea OK!\n");

        //verify bootArea
        boot_checked_area_offset = *(int*)update_param_area;
        boot_checked_area_len = *(int *)(update_param_area + 8);

        update_boot_area = new unsigned char[boot_checked_area_len];
        fseek(fp, boot_checked_area_offset + BOOT_AREA_OFFSET, SEEK_SET);
        fread(update_boot_area, boot_checked_area_len, 1, fp);    //read boot_area data
        SHA256(update_boot_area, boot_checked_area_len, hash);    //calculate hash
        //dump_hex("boot_hash", hash, SHA256_LEN);
        delete []update_boot_area;
        update_boot_area = NULL;

        fseek(fp, boot_checked_area_offset + BOOT_AREA_OFFSET + boot_checked_area_len, SEEK_SET);
        fread(sign, RSA2048_SIGN_LEN, 1, fp);    //read signature
        ret = verifySignRSA(hash, sign, rsa_key);    //rsa2048 verify
        if (ret != 0){
            LOGE("Verify bootArea failed!\n");
            fclose(fp);
            return VERIFY_FAILURE;
        }
        LOGI("Verify fastboot OK!\n");
        fclose(fp);
    }else{
        LOGI("Can't find fastboot in update.zip, need not verify!\n");
    }
    return VERIFY_SUCCESS;
}

static int verify_kernel(ZipArchive* zip, unsigned char* key_area){
    const ZipEntry* kernel_entry = NULL;
    const char* update_kernel = "/tmp/kernel";
    HI_CAImgHead_S* kernel_head = NULL;
    unsigned char* kernel_data = NULL;
    unsigned char hash[SHA256_LEN] = {0};
    unsigned char sign[RSA2048_SIGN_LEN] = {0};
    unsigned char rsa_key[RSA_KEY_LEN] = {0};
    int fd = -1;
    bool ok = false;
    FILE* fp = NULL;
    int ret = -1;

    kernel_entry = mzFindZipEntry(zip, ASSUMED_KERNEL_NAME);
    if (kernel_entry != NULL) {
        unlink(update_kernel);
        fd = creat(update_kernel, 0755);
        if (fd < 0) {
            LOGE("Can't make %s\n", update_kernel);
            return VERIFY_FAILURE;
        }
        ok = mzExtractZipEntryToFile(zip, kernel_entry, fd);
        close(fd);
        if (!ok) {
            LOGE("Can't copy %s\n", ASSUMED_FASTBOOT_NAME);
            return VERIFY_FAILURE;
        }
        fp = fopen(update_kernel, "rb");
        if (fp == NULL) {
            LOGE("Can't open %s\n", update_kernel);
            return VERIFY_FAILURE;
        }
        LOGI("Verify kernel start!\n");
        memcpy(rsa_key, key_area, RSA_KEY_LEN);    //get rsa key
        //verify kernel
        kernel_head = new HI_CAImgHead_S;

        fseek(fp, 0, SEEK_SET);
        fread(kernel_head, sizeof(HI_CAImgHead_S), 1, fp);
        //dump_hex("kernel_head", (unsigned char*)kernel_head, sizeof(HI_CAImgHead_S));
        if (memcmp(kernel_head->u8MagicNumber, CAIMGHEAD_MAGICNUMBER, MAGIC_NUM_LEN) != 0){    //check magic number
            LOGE("Verify kernel head maigc number failed!\n");
            fclose(fp);
            delete kernel_head;
            kernel_head = NULL;
            return VERIFY_FAILURE;
        }

        kernel_data = new unsigned char[kernel_head->u32SignedImageLen];
        fseek(fp, 0, SEEK_SET);
        fread(kernel_data, kernel_head->u32SignedImageLen, 1, fp);    //read kernel image data
        SHA256(kernel_data, kernel_head->u32SignedImageLen, hash);    //calc hash
        //dump_hex("kernel_hash", hash, SHA256_LEN);
        delete []kernel_data;
        kernel_data = NULL;

        fseek(fp, kernel_head->u32SignatureOffset, SEEK_SET);
        fread(sign, RSA2048_SIGN_LEN, 1, fp);    //read signature
        //dump_hex("kernel_sign", sign, RSA2048_SIGN_LEN);
        delete kernel_head;
        kernel_head = NULL;

        ret = verifySignRSA(hash, sign, rsa_key);    //rsa2048 verify
        if (ret != 0){
            LOGE("Verify kernel failed!\n");
            fclose(fp);
            return VERIFY_FAILURE;
        }
        LOGI("Verify kernel OK!\n");
        fclose(fp);
    }else{
        LOGI("Can't find kernel in update.zip, need not verify!\n");
    }
    return VERIFY_SUCCESS;
}
#endif

static int
really_install_package(const char *path, int* wipe_cache)
{
    char buffer[BUFLEN];
    property_get("ro.product.target", buffer, "ott");
    if(buffer != NULL && (strcmp(buffer,"shcmcc")==0)) {
        ui->SetBackground(RecoveryUI::INSTALLING_UPDATE_MOBILE);
    } else {
        ui->SetBackground(RecoveryUI::INSTALLING_UPDATE);
    }
    ui->Print("Finding update package...\n");
    // Give verification half the progress bar...
    ui->SetProgressType(RecoveryUI::DETERMINATE);
    ui->ShowProgress(VERIFICATION_PROGRESS_FRACTION, VERIFICATION_PROGRESS_TIME);
    LOGI("Update location: %s\n", path);

    if (ensure_path_mounted(path) != 0) {
        LOGE("Can't mount %s\n", path);
        return INSTALL_CORRUPT;
    }

    ui->Print("Opening update package...\n");

    int numKeys;
    Certificate* loadedKeys = load_keys(PUBLIC_KEYS_FILE, &numKeys);
    if (loadedKeys == NULL) {
        LOGE("Failed to load keys\n");
        return INSTALL_CORRUPT;
    }
    LOGI("%d key(s) loaded from %s\n", numKeys, PUBLIC_KEYS_FILE);

    ui->Print("Verifying update package...\n");

    int err;
    err = verify_file(path, loadedKeys, numKeys);
    free(loadedKeys);
    LOGI("verify_file returned %d\n", err);
    if (err != VERIFY_SUCCESS) {
        LOGE("signature verification failed\n");
        return INSTALL_CORRUPT;
    }

    /* Try to open the package.
     */
    ZipArchive zip;
    err = mzOpenZipArchive(path, &zip);
    if (err != 0) {
        LOGE("Can't open %s\n(%s)\n", path, err != -1 ? strerror(err) : "bad");
        return INSTALL_CORRUPT;
    }
    /* Verify and install the contents of the package.*/
#ifdef HISILICON_SECURITY_L2
    if (check_local_fastboot_valid()){
        unsigned char key_area[KEY_AREA_TOTAL_LEN] = {0};
        err = get_local_key_area(key_area);
        if (err != 0){
            LOGE("Get keyArea on flash failed!\n");
            mzCloseZipArchive(&zip);
            return INSTALL_CORRUPT;
        }
        //dump_hex("key_area", key_area, KEY_AREA_TOTAL_LEN);

        err = verify_fastboot(&zip, key_area);
        if (err != VERIFY_SUCCESS){
            LOGE("Verify fastboot failed!\n");
            mzCloseZipArchive(&zip);
            return INSTALL_CORRUPT;
        }

        err = verify_kernel(&zip, key_area);
        if (err != VERIFY_SUCCESS){
            LOGE("Verify kernel failed!\n");
            mzCloseZipArchive(&zip);
            return INSTALL_CORRUPT;
        }
    }
#endif

    ui->Print("Installing update...\n");
    return try_update_binary(path, &zip, wipe_cache);
}

int
install_package(const char* path, int* wipe_cache, const char* install_file)
{
    FILE* install_log = fopen_path(install_file, "w");
    if (install_log) {
        fputs(path, install_log);
        fputc('\n', install_log);
    } else {
        LOGE("failed to open last_install: %s\n", strerror(errno));
    }
    int result;
	/*
    if (setup_install_mounts() != 0) {
        LOGE("failed to set up expected mounts for install; aborting\n");
        result = INSTALL_ERROR;
    } else {
        result = really_install_package(path, wipe_cache);
    }
	*/
	result = really_install_package(path, wipe_cache);
    if (install_log) {
        fputc(result == INSTALL_SUCCESS ? '1' : '0', install_log);
        fputc('\n', install_log);
        fclose(install_log);
    }
    return result;
}
