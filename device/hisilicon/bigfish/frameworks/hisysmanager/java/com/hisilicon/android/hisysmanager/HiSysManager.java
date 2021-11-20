/*
 * Copyright (C) 2007 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.hisilicon.android.hisysmanager;
    /**
     * HiSysManager is hisi system management module, offers a variety of interfaces that require higher privileges
       Such as flash reader, key programmer to read, debug information, hardware testing, upgrade, restore factory settings.
     */

public class HiSysManager{

    private static String TAG = "HiSysManagerClient";
    private static final int DRM_KEY_OFFSET          = (128 * 1024);    // DRM KEY from bottom 128K
    private static final int HDCP_KEY_OFFSET_DEFAULT = (4 * 1024);      // HDMI KEY offset base on DRM KEY 4K
    private static final int DEVICEINFO_LEN          = (2 *1024 * 1024);// deviceinfo length 2M
    private static final int BEFORE_ENCRYPT_KEY_LEN  = 384;             // Orginal Key 384Byte lenght
    private static final int AFTER_ENCRYPT_KEY_LEN   = 332;             // after encrypt , 332Byte lenght
    static {
        System.loadLibrary("sysmangerservice_jni");
    }

    /**
     * update system.
     * <p>
     * update system.<br>
     * <br>
     * @param path updata.zip full path.
     * @return result 0: sucess,-1: failed.
     */
    public native int upgrade(String path);

    /**
     * reset factory data.
     * <p>
     * reset factory data.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
    public native int reset();

    /**
     * To reboot system.
     * <p>
     * To reboot system.<br>
     * <br>
     * @return result 0: sucess,-1: failed
     */
    public native int reboot();

    /**
     * Update logo.
     * <p>
     * Update logo with a picture. The picture will be converted into JPEG format, and then used to update logo.<br>
     * <br>
     * @param path The full path of the picture.
     * @return result 0: sucess, -1: failed.
     */
    public int updateLogo(String path)
    {
        return native_updateLogo(path);
    }

    /**
     * Iptv to private recovery.
     * <p>
     * Iptv to private recovery.<br>
     * <br>
     * @param path  file path.
     * @param file file name.
     * @return result 0: sucess,-1: failed.
     */
    public native int recoveryIPTV(String path, String file);

	public native int userDataRestoreIptv();
    /**
     * Open network side interface.
     * <p>
     * Open network side interface.<br>
     * <br>
     * @param interfacename  the name of the network interface.
     * @return result 0: sucess,-1: failed.
     */
    public native int enableInterface(String interfacename);

    /**
     * Close network side interface.
     * <p>
     * Close network side interface.<br>
     * <br>
     * @param interfacename  the name of the network interface.
     * @return result 0: sucess, -1: failed.
     */
    public native int disableInterface(String interfacename);

    /**
     * Set net route for interface.
     * <p>
     * Set net route for interface.<br>
     * <br>
     * @param interfacename the name of the network interface.
     * @param dst the destination ip address.
     * @param prefix_length the prefix_length.
     * @param gw the gateway address.
     * @return result 0: sucess,-1: failed.
     */
    public native int addRoute(String interfacename, String dst,
            int prefix_length, String gw);

    /**
     * Remove network route.
     * <p>
     * Remove network route.<br>
     * <br>
     * @param interfacename the name of the network interface.
     * @param dst destination.
     * @param prefix_length the prefix_length.
     * @param gw gateway address.
     * @return result 0: sucess,-1: failed.
     */
    public native int removeRoute(String interfacename, String dst,
            int prefix_length, String gw);

    /**
     * Set default route for interface.
     * <p>
     * Set default route for interface.<br>
     * <br>
     * @param interfacename the name of the network interface.
     * @param gw the gateway address.
     * @return result 0: sucess -1: failed.
     */
    public native int setDefaultRoute(String interfacename, int gw);

    /**
     * Remove the default route for the named interface.
     * <p>
     * Remove the default route for the named interface.<br>
     * <br>
     * @param interfacename the name of the network interface.
     * @return result 0: sucess,-1: failed.
     */
    public native int removeDefaultRoute(String interfacename);

    /**
     * Remove net route for the named interface.
     * <p>
     * Remove net route for the named interface.<br>
     * <br>
     * @param interfacename the name of the network interface.
     * @return result 0: sucess,-1: failed.
     */
    public native int removeNetRoute(String interfacename);


    /**
     * Write data at a specified offset to the specified partition.
     * <p>
     * Write data at a specified offset to the specified partition.<br>
     * <br>
     * @param warpflag device name.
     * @param offset position.
     * @param offlen the length of data.
     * @param info data content.
     * @return result 0: sucess,-1: failed.
     */
    public native int setFlashInfo(String warpflag, int offset, int offlen,
            String info);

    /**
     * Read data at a specified offset to the specified partition.
     * <p>
     * Read data at a specified offset to the specified partition.<br>
     * <br>
     * @param warpflag device name
     * @param offset position
     * @param offlen the length of data
     * @return result 0: sucess,-1: failed.
     */
    public native int getFlashInfo(String warpflag, int offset, int offlen);




    /** ************************************************************ */
    /** @hide below api */
    /** @hide below api */
    /** @hide below api */
    /** ************************************************************ */


    /**
     * Write HDMI hdcp key to deviceinfo partition.
     * <p>
     * Get HDMI Key from user and decrypt, Then encrypt this key by root key in otp area<br>
     * <br>
     * @param OrgKeyPath: User key path.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public int setHdmiHDCPKey(String OrgKeyPath)
    {
        // default offset ( 128 + 4 ) K
        // 128K is DRM KEY
        // 4K HDMI HDCP KEY
        int default_offset = HDCP_KEY_OFFSET_DEFAULT + DRM_KEY_OFFSET;
        return native_setHdmiHDCPKey("deviceinfo", default_offset, OrgKeyPath, BEFORE_ENCRYPT_KEY_LEN);
    }

    /**
     * Set hdcp key to deviceinfo partition.
     * <p>
     * Read hdcp key to deviceinfo partition.<br>
     * <br>
     * @param tdname :Partition name.e.g:'deviceinfo'
     * @param offset :position.
     * @param filename :key file path.
     * @param datasize :key length.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */

    public native int native_setHdmiHDCPKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Get HDMI hdcp key from deviceinfo partition.
     * <p>
     * get HDMI HDCP KEY from deviceinfo, and input it into file -> KeyOutputPath<br>
     * <br>
     * @param KeyOutputPath: HDMI HDCP KEY output path.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */

    public int getHdmiHDCPKey(String KeyOutputPath)
    {
        // default offset ( 128 + 4 ) K
        // 128K is DRM KEY
        // 4K HDMI HDCP KEY
        int default_offset = HDCP_KEY_OFFSET_DEFAULT + DRM_KEY_OFFSET;
        return native_getHdmiHDCPKey("deviceinfo", default_offset, KeyOutputPath, AFTER_ENCRYPT_KEY_LEN);
    }

    /**
     * Read hdcp key from deviceinfo partition.
     * <p>
     * Read hdcp key from deviceinfo partition.<br>
     * <br>
     * @param tdname :Partition name.
     * @param offset :position.
     * @param filename :get key and write in this file path.
     * @param datasize :key length.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int native_getHdmiHDCPKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Write hdcp key to deviceinfo partition.
     * <p>
     * Write hdcp key to deviceinfo partition.<br>
     * <br>
     * @param tdname device name.
     * @param offset position.
     * @param filename device address.
     * @param datasize address length.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int setHDCPKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Read hdcp key from deviceinfo partition.
     * <p>
     * Read hdcp key from deviceinfo partition.<br>
     * <br>
     * @param tdname device name.
     * @param offset position.
     * @param filename device address.
     * @param datasize address length.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int getHDCPKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Write DRM key to deviceinfo partition.
     * <p>
     * Write DRM key to deviceinfo partition.<br>
     * <br>
     * @param tdname device name.
     * @param offset position.
     * @param filename device address.
     * @param datasize address length.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int setDRMKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Read DRM key from deviceinfo partition.
     * <p>
     * Read DRM key from deviceinfo partition.<br>
     * <br>
     * @param tdname device name.
     * @param offset position.
     * @param filename device address.
     * @param datasize address length.
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int getDRMKey(String tdname, int offset, String filename,
            int datasize);

    /**
     * Enter smart standby mode.
     * <p>
     * Enter smart standby mode.<br>
     * <br>
     * @return 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int enterSmartStandby();

    /**
     * Quit smart standby mode.
     * <p>
     * Quit smart standby mode.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int quitSmartStandby();

    /**
     * Make quick boot image.
     * <p>
     * Make quick boot image.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int doQbSnap();

    /**
     * Clean quick boot flag.
     * <p>
     * Clean quick boot flag.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int cleanQbFlag();

    /**
     * Init RMService.
     * <p>
     * Init RMService.<br>
     * <br>
     * @param type 0:98M 1:98C 0:other platform
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int doInitSh(int type);// HiRMservice doInitSh

    /**
     * Get net time to sync system time.
     * <p>
     * Get net time to sync system time.<br>
     * <br>
     * @param t_format time format.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int getNetTime(String t_format);// HiRMservice getNetTime

    /**
     * HiErrorReport get himd.l information.
     * <p>
     * HiErrorReport get himd.l information.<br>
     * <br>
     * @param filename to save file name.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int registerInfo(String filename);// HiErrorReport

    /**
     * Start hardwaretest CVBS test.
     * <p>
     * Start hardwaretest CVBS test.<br>
     * <br>
     * @param path test file.
     * @param resolution  test resolution.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int startTSTest(String path, String resolution);// hardwaretest

    /**
     * Stop hardwaretest CVBS test.
     * <p>
     * Stop hardwaretest CVBS test.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int stopTSTest();// hardwaretest

    /**
     * hardwaretest usb test.
     * <p>
     * hardwaretest usb test.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int usbTest();// hardwaretest

    /**
     * DualVideoTest init test data.
     * <p>
     * DualVideoTest init test data.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int setSyncRef();// DualVideoTest

    /**
     * Adjust value for device state.
     * <p>
     * Adjust value for device state.<br>
     * <br>
     * @param device device state path.
     * @param value  device state.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int adjustDevState(String device, String value);

    /**
     * Get dmesg info.
     * <p>
     * Read all messages from kernel ring buffer.<br>
     * <br>
     * @param file The file to which dmesg info will be dumped.
     * @return 0 sucess, -1 failed.
     */
     /** {@hide} this api is for internal use only */
    public native int readDmesg(String file);

    /**
     * Test DDR.
     * <p>
     * Do DDR testing.<br>
     * <br>
     * @param cmd The testing command.
     * @param file The file to hold the testing results.
     * @return 0 sucess, -1 failed.
     */
     /** {@hide} this api is for internal use only */
    public native int ddrTest(String cmd, String file);

    /**
     * Send MediaStart broadcast.
     * <p>
     * Send MediaStart broadcast.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int sendMediaStart();

    /**
     * HiFileManager determining external usb devices are hardware or U disk.
     * <p>
     * HiFileManager determining external usb devices are hardware or U disk.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int isSata();

    /**
     * HiDebugKit read debugging information.
     *
     * <p>
     * HiDebugKit read debugging information.<br>
     * <br>
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int readDebugInfo();

    /**
     * Quick boot to reset mac.
     * <p>
     * Quick boot to reset mac.<br>
     * <br>
     * @param mac mac info.
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int reloadMAC(String mac);

    /**
     * Quick boot to install apk.
     * <p>
     * Quick boot to install apk.<br>
     * <br>
     * @param path the apk path.
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int reloadAPK(String path);

    /**
     * update device(Except fastboot, bootargs, recovery, baseparam, kernel, system device).
     * <p>
     * update device(Except fastboot, bootargs, recovery, baseparam, kernel, system device).<br>
     * <br>
     * @param flag device name.
     * @param info file path.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int writeRaw(String flag, String info);

    /**
     * Set himm info.
     * <p>
     * Set himm info.<br>
     * <br>
     * @param info himm value.
     * @return result 0: sucess,-1: failed.
     */
     /** {@hide} this api is for internal use only */
    public native int setHimm(String info);

    /**
     * Change /dev/capable permissions.
     * <p>
     * Change /dev/capable permissions.<br>
     * <br>
     * @param type 0:write 1:read
     * @return result 0: sucess,-1: failed.
     */
    /** {@hide} this api is for internal use only */
    public native int enableCapable(int type);
    private native final int native_updateLogo(String path);
}
