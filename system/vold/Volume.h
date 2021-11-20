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

#ifndef _VOLUME_H
#define _VOLUME_H

#include <utils/List.h>
#include "uuid.h"

class NetlinkEvent;
class VolumeManager;

typedef enum{
    DEV_TYPE_SDCARD,
    DEV_TYPE_USB2,
    DEV_TYPE_USB3,
    DEV_TYPE_SATA,
    DEV_TYPE_FLASH,
    DEV_TYPE_UNKOWN
}DEV_TYPE;

typedef enum{
    FORMAT_TYPE_FAT,
    FORMAT_TYPE_EXT4,
    FORMAT_TYPE_YAFFS2,
    FORMAT_TYPE_NTFS,
    FORMAT_TYPE_EXFAT,
    FORMAT_TYPE_CDROM,
    FORMAT_TYPE_UNKOWN
}FORMAT_TYPE;

class Volume {
private:
    int mState;
    static char * defaultVolume;
    FORMAT_TYPE mFormat;

public:
    static const int State_Init       = -1;
    static const int State_NoMedia    = 0;
    static const int State_Idle       = 1;
    static const int State_Pending    = 2;
    static const int State_Checking   = 3;
    static const int State_Mounted    = 4;
    static const int State_Unmounting = 5;
    static const int State_Formatting = 6;
    static const int State_Shared     = 7;
    static const int State_SharedMnt  = 8;

    static const char *SECDIR;
    static const char *SEC_STGDIR;
    static const char *SEC_STG_SECIMGDIR;
    static const char *SEC_ASECDIR_EXT;
    static const char *SEC_ASECDIR_INT;
    static const char *ASECDIR;
    static const char *LOOPDIR;
    static const char *BLKID_PATH;

protected:
    char* mLabel;
    char* mUuid;
    char* mUserLabel;
    char *mMountpoint;
    VolumeManager *mVm;
    bool mDebug;
    int mPartIdx;
    int mOrigPartIdx;
    bool mRetryMount;

    char *mUUID;
    DEV_TYPE mDevType;
    char *mDiskLabel;
    int mDiskLabel_index ;
    bool mbGetLabel;
    char * ubiName;

    /*
     * The major/minor tuple of the currently mounted filesystem.
     */
    dev_t mCurrentlyMountedKdev;

public:
    Volume(VolumeManager *vm, const char *label, const char *mount_point);
    virtual ~Volume();

    int mountVol();
    int unmountVol(bool force, bool revert);
    int formatVol(bool wipe);
    void clearVolDir(const char *pDir);

    const char* getLabel() { return mLabel; }
    const char* getUuid() { return mUuid; }
    const char* getUserLabel() { return mUserLabel; }
    const char *getMountpoint() { return mMountpoint; }
    int getState() { return mState; }

    virtual int handleBlockEvent(NetlinkEvent *evt) = 0;
    virtual dev_t getDiskDevice();
    virtual dev_t getShareDevice();
    virtual void handleVolumeShared();
    virtual void handleVolumeUnshared();

    void setDebug(bool enable);
    virtual int getVolInfo(struct volume_info *v) = 0;
    int getUUIDInternal( const char * pDevPath );
    const char *getUUID() { return mUUID; }
    DEV_TYPE getDevType() { return mDevType; }
    FORMAT_TYPE getStorageType() { return mFormat; }
    virtual bool isCanRemove() { return true; }
    const char *getDiskLabel() { return mDiskLabel; }
    char * getUbiName() { return ubiName ; }
    bool setUbiName(char * pName) ;

protected:
    void setUuid(const char* uuid);
    void setUserLabel(const char* userLabel);
    void setState(int state);

    virtual int getDeviceNodes(dev_t *devs, int max) = 0;
    virtual int updateDeviceInfo(char *new_path, int new_major, int new_minor) = 0;
    virtual void revertDeviceInfo(void) = 0;
    virtual int isDecrypted(void) = 0;
    virtual int getFlags(void) = 0;

    int createDeviceNode(const char *path, int major, int minor);

private:
    int initializeMbr(const char *deviceNode);
    bool isMountpointMounted(const char *path);
    int createBindMounts();
    int doUnmount(const char *path, bool force);
    int extractMetadata(const char* devicePath);
    int doMoveMount(const char *src, const char *dst, bool force);
    void protectFromAutorunStupidity();

    static void mkdir_p( const char * pDir, mode_t mode, uid_t owner, gid_t group );
    static void rmdir_p( const char * pDir );
    bool isDefaultVolume();

    ////////////////////////////////////////// yangly added start: the functions below is for fix the bad volume without uuid //////////////////////////////////
    uint8_t *get_attr_volume_id(struct vfat_dir_entry *dir, int count);
    ssize_t safe_read(int fd, void *buf, size_t count);
    ssize_t full_read(int fd, void *buf, size_t len);
    ssize_t  safe_write(int fd, const void *buf, size_t count);
    ssize_t  full_write(int fd, const void *buf, size_t len) ;
    void volume_id_free_buffer(struct volume_id *id);
    void *volume_id_get_buffer(struct volume_id *id, uint64_t off, size_t len);
    struct volume_id* volume_id_open_node(int fd);
    void free_volume_id(struct volume_id *id);
    int setRamdomUUID(const char *device);
    ////////////////////////////////////////// yangly added end: the functions below is for fix the bad volume without uuid //////////////////////////////////
    void getPartitionLabel();
    void releasePartitionLabel();
};

typedef android::List<Volume *> VolumeCollection;

#endif