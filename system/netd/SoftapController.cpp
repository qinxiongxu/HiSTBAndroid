/*
 * Copyright (C) 2008 The Android Open Source Project
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

#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>

#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/wait.h>

#include <netinet/in.h>
#include <arpa/inet.h>

#include <linux/wireless.h>

#include <openssl/evp.h>
#include <openssl/sha.h>

#define LOG_TAG "SoftapController"
#include <cutils/log.h>
#include <netutils/ifc.h>
#include <private/android_filesystem_config.h>
#include "wifi.h"
#include "ResponseCode.h"

#include "SoftapController.h"

static const char HOSTAPD_CONF_FILE[]    = "/data/misc/wifi/hostapd.conf";
static const char HOSTAPD_BIN_FILE[]    = "/system/bin/hostapd";

SoftapController::SoftapController() {
    mPid = 0;
    mSock = socket(AF_INET, SOCK_DGRAM, 0);
    if (mSock < 0)
        ALOGE("Failed to open socket");
    memset(mIface, 0, sizeof(mIface));
}

SoftapController::~SoftapController() {
}

int SoftapController::startSoftap() {
    pid_t pid = 1;

    int wifi_device = wifi_get_device_id();
    if (WIFI_RALINK_RT3070 == wifi_device || WIFI_RALINK_RT5370 == wifi_device
      || WIFI_RALINK_RT5372 == wifi_device || WIFI_RALINK_RT5572 == wifi_device)
        return 0;

    if (mPid) {
        ALOGE("SoftAP is already running");
        return ResponseCode::SoftapStatusResult;
    }

    if ((pid = fork()) < 0) {
        ALOGE("fork failed (%s)", strerror(errno));
        return ResponseCode::ServiceStartFailed;
    }

    if (!pid) {
        ensure_entropy_file_exists();
        if (execl(HOSTAPD_BIN_FILE, HOSTAPD_BIN_FILE,
                  "-e", WIFI_ENTROPY_FILE,
                  HOSTAPD_CONF_FILE, (char *) NULL)) {
            ALOGE("execl failed (%s)", strerror(errno));
        }
        ALOGE("SoftAP failed to start");
        return ResponseCode::ServiceStartFailed;
    } else {
        mPid = pid;
        ALOGD("SoftAP started successfully");
        usleep(AP_BSS_START_DELAY);
    }
    return ResponseCode::SoftapStatusResult;
}

int SoftapController::stopSoftap() {

    int wifi_device = wifi_get_device_id();
    if (WIFI_RALINK_RT3070 == wifi_device || WIFI_RALINK_RT5370 == wifi_device
      || WIFI_RALINK_RT5372 == wifi_device || WIFI_RALINK_RT5572 == wifi_device) {
        struct ifreq ifr;
        int  s;

        /* configure WiFi interface down */
        memset(&ifr, 0, sizeof(struct ifreq));
        strcpy(ifr.ifr_name, mIface);

        if((s = socket(AF_INET, SOCK_DGRAM, 0)) >= 0) {
            if(ioctl(s, SIOCGIFFLAGS, &ifr) >= 0) {
                ifr.ifr_flags = (ifr.ifr_flags & (~IFF_UP));
                ioctl(s, SIOCSIFFLAGS, &ifr);
            }
            close(s);
        }
        usleep(200000);
        return 0;
    }

    if (mPid == 0) {
        ALOGE("SoftAP is not running");
        return ResponseCode::SoftapStatusResult;
    }

    ALOGD("Stopping the SoftAP service...");
    kill(mPid, SIGTERM);
    waitpid(mPid, NULL, 0);

    mPid = 0;
    ALOGD("SoftAP stopped successfully");
    usleep(AP_BSS_STOP_DELAY);
    return ResponseCode::SoftapStatusResult;
}

bool SoftapController::isSoftapStarted() {
    return (mPid != 0);
}

/* configure softap by sending private ioctls to driver directly */
int SoftapController::ap_config_with_iwpriv_cmd(int s, char *ifname, char **argv)
{
    char tBuf[4096];
    struct iwreq wrq;
    struct iw_priv_args *priv_ptr;
    int i, j;
    int cmd = 0, sub_cmd = 0;
    int device_id;
    char mBuf[256];
    int hidden_ssid = 0;

    device_id = wifi_get_device_id();

    /* get all private commands that driver supported */
    strncpy(wrq.ifr_name, ifname, sizeof(wrq.ifr_name));
    wrq.u.data.pointer = tBuf;
    wrq.u.data.length = sizeof(tBuf) / sizeof(struct iw_priv_args);
    wrq.u.data.flags = 0;
    if (ioctl(s, SIOCGIWPRIV, &wrq) < 0) {
        return -1;
    }

    /* if driver don't support 'set' command, return failure */
    priv_ptr = (struct iw_priv_args *)wrq.u.data.pointer;
    for(i = 0; i < wrq.u.data.length; i++) {
        if (strcmp(priv_ptr[i].name, "set") == 0) {
            cmd = priv_ptr[i].cmd;
            break;
        }
    }
    if (i == wrq.u.data.length) {
        return -1;
    }

    /* get the 'set' command's ID */
    if (cmd < SIOCDEVPRIVATE) {
        for(j = 0; j < i; j++) {
            if ((priv_ptr[j].set_args == priv_ptr[i].set_args)
                && (priv_ptr[j].get_args == priv_ptr[i].get_args)
                && (priv_ptr[j].name[0] == '\0'))
                break;
        }
        if (j == i) {
            return -1;
        }
        sub_cmd = cmd;
        cmd = priv_ptr[j].cmd;
    }

    /* configure AP, order should be as follow
     *   1. Channel
     *   2. AuthMode
     *   3. EncrypType
     * for WPAPSK/WPA2PSK:
     *   4.Hidden/Broadcast SSID
     *   5. SSID (must after AuthMode and before Password)
     *   6. Password
     */
    strncpy(wrq.ifr_name, ifname, sizeof(wrq.ifr_name));
    wrq.u.data.pointer = mBuf;
    wrq.u.data.flags = sub_cmd;

    /* configure Channel */
    sprintf(mBuf, "Channel=%s", argv[2]);
    wrq.u.data.length = strlen(mBuf) + 1;
    if(ioctl(s, cmd, &wrq) < 0)
        return -1;

    /* configure AuthMode */
    if(!strcmp(argv[3], "wpa-psk"))
        sprintf(mBuf, "AuthMode=WPAPSK");
    else if (!strcmp(argv[3], "wpa2-psk"))
        sprintf(mBuf, "AuthMode=WPA2PSK");
    else
        sprintf(mBuf, "AuthMode=OPEN");
    wrq.u.data.length = strlen(mBuf) + 1;
    if(ioctl(s, cmd, &wrq) < 0)
        return -1;

    /* configure EncrypType */
    if (!strcmp(argv[3], "wpa-psk"))
        sprintf(mBuf, "EncrypType=AES");
    else if (!strcmp(argv[3], "wpa2-psk"))
        sprintf(mBuf, "EncrypType=AES");
    else
        sprintf(mBuf, "EncrypType=NONE");
    wrq.u.data.length = strlen(mBuf) + 1;
    if(ioctl(s, cmd, &wrq) < 0)
        return -1;

    /* configure hide SSID */
    if (!strcmp(argv[1], "hidden"))
        hidden_ssid = 1;
    sprintf(mBuf, "HideSSID=%d", hidden_ssid);
    wrq.u.data.length = strlen(mBuf) + 1;
    if(ioctl(s, cmd, &wrq) < 0)
        return -1;

    /* configure SSID */
    sprintf(mBuf, "SSID=%s", argv[0]);
    wrq.u.data.length = strlen(mBuf) + 1;
    if(ioctl(s, cmd, &wrq) < 0)
        return -1;

    /* configure password of WPAPSK/WPA2PSK */
    if (strcmp(argv[3], "open")) {
        sprintf(mBuf, "WPAPSK=%s", argv[4]);
        wrq.u.data.length = strlen(mBuf) + 1;
        if(ioctl(s, cmd, &wrq) < 0)
            return -1;

        if (device_id == WIFI_RALINK_MT7601U) {
            /* for MT7601U, configure SSID again */
            sprintf(mBuf, "SSID=%s", argv[0]);
            wrq.u.data.length = strlen(mBuf) + 1;
            if(ioctl(s, cmd, &wrq) < 0)
                return -1;
        }
    }

    return 0;
}

/*
 * Arguments:
 *  argv[2] - wlan interface
 *  argv[3] - SSID
 *  argv[4] - Broadcast/Hidden
 *  argv[5] - Channel
 *  argv[6] - Security
 *  argv[7] - Key
 */
int SoftapController::setSoftap(int argc, char *argv[]) {
    char psk_str[2*SHA256_DIGEST_LENGTH+1];
    int ret = ResponseCode::SoftapStatusResult;
    int i = 0;
    int fd;
    int hidden = 0;
    int channel = AP_CHANNEL_DEFAULT;
    int wifi_device;
    char hw_mode;
    char ht40_capab[32];
    char *wbuf = NULL;
    char *fbuf = NULL;

    if (argc < 5) {
        ALOGE("Softap set is missing arguments. Please use:");
        ALOGE("softap <wlan iface> <SSID> <hidden/broadcast> <channel> <wpa2?-psk|open> <passphrase>");
        return ResponseCode::CommandSyntaxError;
    }

    wifi_device = wifi_get_device_id();

    if (!strcasecmp(argv[4], "hidden")) {
        if (WIFI_ATHEROS_QCA1021X == wifi_device || WIFI_ATHEROS_QCA1021G == wifi_device
            || WIFI_ATHEROS_AR9374 == wifi_device)
            hidden = 2;
        else
            hidden = 1;
    }

    if (argc >= 5) {
        channel = atoi(argv[5]);
        if (channel <= 0)
            channel = AP_CHANNEL_DEFAULT;
    }

    memset(ht40_capab, 0, sizeof(ht40_capab));
    if (channel >= 36) {
        int ht40plus[] = {36, 44, 52, 60, 100, 108, 116, 124,
                             132, 149, 157};
        int ht40minus[] = {40, 48, 56, 64, 104, 112, 120, 128,
                              136, 153, 161};

        hw_mode = 'a';

        for (i = 0; i < sizeof(ht40plus)/sizeof(ht40plus[0]); i++)
            if (channel == ht40plus[i]) {
                strcpy(ht40_capab, "[SHORT-GI-40][HT40+]");
                break;
            }

        for (i = 0; i < sizeof(ht40minus)/sizeof(ht40minus[0]); i++)
            if (channel == ht40minus[i]) {
                strcpy(ht40_capab, "[SHORT-GI-40][HT40-]");
                break;
            }
    } else {
        hw_mode = 'g';

        if (channel > 7)
            strcpy(ht40_capab, "[SHORT-GI-40][HT40-]");
        else
            strcpy(ht40_capab, "[SHORT-GI-40][HT40+]");
    }

    char *ssid, *iface;

    if (mSock < 0) {
        ALOGE("Softap set - failed to open socket");
        return -1;
    }

    strncpy(mIface, argv[2], sizeof(mIface));
    iface = argv[2];

    if (WIFI_RALINK_RT3070 == wifi_device || WIFI_RALINK_RT5370 == wifi_device
       || WIFI_RALINK_RT5372 == wifi_device || WIFI_RALINK_RT5572 == wifi_device) {
        struct ifreq ifr;
        int s;

        /* RT3070/5370/5372/MT7601U don't use hostapd, driver reads RT2870AP.dat
         * and configures WiFi to AP mode while intialize. After initialization
         * complete, configure WiFi interface up will startup AP. Then
         * reconfigure AP by private commands.
         */
        memset(&ifr, 0, sizeof(struct ifreq));
        strcpy(ifr.ifr_name, iface);

        if((s = socket(AF_INET, SOCK_DGRAM, 0)) >= 0) {
            if(ioctl(s, SIOCGIFFLAGS, &ifr) >= 0) {
                ifr.ifr_flags = (ifr.ifr_flags | IFF_UP);
                if (ioctl(s, SIOCSIFFLAGS, &ifr) >= 0) {
                    ret = ap_config_with_iwpriv_cmd(s, iface, argv + 3);
                }
            }
            close(s);
        }
        return 0;
    }

    if (argc < 4) {
        ALOGE("Softap set - missing arguments");
        return -1;
    }

    if (argc > 3) {
        ssid = argv[3];
    } else {
        ssid = (char *)"AndroidAP";
    }

    if (WIFI_RALINK_MT7601U == wifi_device) {
        asprintf(&wbuf, "interface=%s\ndriver=nl80211\nctrl_interface="
                "/data/misc/wifi/hostapd\nssid=%s\nchannel=%d\nieee80211n=1\n"
                "hw_mode=%c\nht_capab=[SHORT-GI-20]\nignore_broadcast_ssid=%d\n",
                argv[2], argv[3], channel, hw_mode, hidden);
    } else {
        asprintf(&wbuf, "interface=%s\ndriver=nl80211\nctrl_interface="
                "/data/misc/wifi/hostapd\nssid=%s\nchannel=%d\nieee80211n=1\n"
                "hw_mode=%c\nht_capab=[SHORT-GI-20]%s\nignore_broadcast_ssid=%d\n",
                argv[2], argv[3], channel, hw_mode, ht40_capab, hidden);
    }

    if (argc > 7) {
        if (!strcmp(argv[6], "wpa-psk")) {
            generatePsk(argv[3], argv[7], psk_str);
            asprintf(&fbuf, "%swpa=1\nwpa_pairwise=TKIP CCMP\nwpa_psk=%s\n", wbuf, psk_str);
        } else if (!strcmp(argv[6], "wpa2-psk")) {
            generatePsk(argv[3], argv[7], psk_str);
            asprintf(&fbuf, "%swpa=2\nrsn_pairwise=CCMP\nwpa_psk=%s\n", wbuf, psk_str);
        } else if (!strcmp(argv[6], "open")) {
            asprintf(&fbuf, "%s", wbuf);
        }
    } else if (argc > 6) {
        if (!strcmp(argv[6], "open")) {
            asprintf(&fbuf, "%s", wbuf);
        }
    } else {
        asprintf(&fbuf, "%s", wbuf);
    }

    fd = open(HOSTAPD_CONF_FILE, O_CREAT | O_TRUNC | O_WRONLY | O_NOFOLLOW, 0660);
    if (fd < 0) {
        ALOGE("Cannot update \"%s\": %s", HOSTAPD_CONF_FILE, strerror(errno));
        free(wbuf);
        free(fbuf);
        return ResponseCode::OperationFailed;
    }
    if (write(fd, fbuf, strlen(fbuf)) < 0) {
        ALOGE("Cannot write to \"%s\": %s", HOSTAPD_CONF_FILE, strerror(errno));
        ret = ResponseCode::OperationFailed;
    }
    free(wbuf);
    free(fbuf);

    /* Note: apparently open can fail to set permissions correctly at times */
    if (fchmod(fd, 0660) < 0) {
        ALOGE("Error changing permissions of %s to 0660: %s",
                HOSTAPD_CONF_FILE, strerror(errno));
        close(fd);
        unlink(HOSTAPD_CONF_FILE);
        return ResponseCode::OperationFailed;
    }

    if (fchown(fd, AID_SYSTEM, AID_WIFI) < 0) {
        ALOGE("Error changing group ownership of %s to %d: %s",
                HOSTAPD_CONF_FILE, AID_WIFI, strerror(errno));
        close(fd);
        unlink(HOSTAPD_CONF_FILE);
        return ResponseCode::OperationFailed;
    }

    close(fd);
    return ret;
}

/*
 * Arguments:
 *	argv[2] - interface name
 *	argv[3] - AP or P2P or STA
 */
int SoftapController::fwReloadSoftap(int argc, char *argv[])
{
    int i = 0;
    char *fwpath = NULL;
    char *iface;
    return 0;

    if (argc < 4) {
        ALOGE("SoftAP fwreload is missing arguments. Please use: softap <wlan iface> <AP|P2P|STA>");
        return ResponseCode::CommandSyntaxError;
    }

    if (strcmp(argv[3], "AP") == 0) {
        fwpath = (char *)wifi_get_fw_path(WIFI_GET_FW_PATH_AP);
    } else if (strcmp(argv[3], "P2P") == 0) {
        fwpath = (char *)wifi_get_fw_path(WIFI_GET_FW_PATH_P2P);
    } else if (strcmp(argv[3], "STA") == 0) {
        fwpath = (char *)wifi_get_fw_path(WIFI_GET_FW_PATH_STA);
    }
    if (!fwpath)
        return ResponseCode::CommandParameterError;
    if (wifi_change_fw_path((const char *)fwpath)) {
        ALOGE("Softap fwReload failed");
        return ResponseCode::OperationFailed;
    }
    else {
        ALOGD("Softap fwReload - Ok");
    }
    return ResponseCode::SoftapStatusResult;
}

void SoftapController::generatePsk(char *ssid, char *passphrase, char *psk_str) {
    unsigned char psk[SHA256_DIGEST_LENGTH];
    int j;
    // Use the PKCS#5 PBKDF2 with 4096 iterations
    PKCS5_PBKDF2_HMAC_SHA1(passphrase, strlen(passphrase),
            reinterpret_cast<const unsigned char *>(ssid), strlen(ssid),
            4096, SHA256_DIGEST_LENGTH, psk);
    for (j=0; j < SHA256_DIGEST_LENGTH; j++) {
        sprintf(&psk_str[j*2], "%02x", psk[j]);
    }
}
