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
#include <string.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <sys/mount.h>
#include <sys/param.h>

#include <linux/kdev_t.h>
//#include <linux/fs.h>

#include <cutils/properties.h>

#include <diskconfig/diskconfig.h>

#include <private/android_filesystem_config.h>

#define LOG_TAG "Vold"

#include <cutils/log.h>
#include <sysutils/NetlinkEvent.h>

#include <string>

#include "Volume.h"
#include "VolumeManager.h"
#include "ResponseCode.h"
#include "Fat.h"
#include "Ext4.h"
#include "Ntfs.h"
#include "Yaffs.h"
#include "Ubifs.h"
#include "Process.h"
#include "cryptfs.h"
#include "debug.h"
#include "Exfat.h"
#include "Iso.h"
#include "Cdrom.h"

class VolLock
{
    public:
        VolLock() {
            pthread_mutex_init(&mMutex,NULL);
        }
        static VolLock * instance() {
            if ( NULL == gInstance ) {
                gInstance = new VolLock();
            }
            return gInstance;
        }
        void Lock() {
            pthread_mutex_lock(&mMutex);
        }
        void Unlock() {
            pthread_mutex_unlock(&mMutex);
        }

    private:
        static VolLock * gInstance;
        pthread_mutex_t  mMutex;
};

VolLock* VolLock::gInstance = NULL;

static void Lock() {
    VolLock * tmp = NULL;
    tmp = VolLock::instance();
    if (tmp) {
        tmp->Lock();
    }
}

static void Unlock() {
    VolLock * tmp = NULL;
    tmp = VolLock::instance();
    if (tmp) {
        tmp->Unlock();
    }
}

//unsigned int PartitionLabel[24] = {0};  //use for C:,D:,....Z:
unsigned int PartitionLabel[1024] = {0};

extern "C" void dos_partition_dec(void const *pp, struct dos_partition *d);
extern "C" void dos_partition_enc(void *pp, struct dos_partition *d);

#define NAND_DEVID 31

/*
 * Secure directory - stuff that only root can see
 */
const char *Volume::SECDIR            = "/mnt/secure";

/*
 * Secure staging directory - where media is mounted for preparation
 */
const char *Volume::SEC_STGDIR        = "/mnt/secure/staging";

/*
 * Path to the directory on the media which contains publicly accessable
 * asec imagefiles. This path will be obscured before the mount is
 * exposed to non priviledged users.
 */
const char *Volume::SEC_STG_SECIMGDIR = "/mnt/secure/staging/.android_secure";

/*
 * Path to external storage where *only* root can access ASEC image files
 */
const char *Volume::SEC_ASECDIR_EXT   = "/mnt/secure/asec";

/*
 * Path to internal storage where *only* root can access ASEC image files
 */
const char *Volume::SEC_ASECDIR_INT   = "/data/app-asec";

/*
 * Path to where secure containers are mounted
 */
const char *Volume::ASECDIR           = "/mnt/asec";

/*
 * Path to where OBBs are mounted
 */
const char *Volume::LOOPDIR           = "/mnt/obb";
char * Volume::defaultVolume = NULL;

const char *Volume::BLKID_PATH = "/system/bin/blkid";

static const char *stateToStr(int state) {
    if (state == Volume::State_Init)
        return "Initializing";
    else if (state == Volume::State_NoMedia)
        return "No-Media";
    else if (state == Volume::State_Idle)
        return "Idle-Unmounted";
    else if (state == Volume::State_Pending)
        return "Pending";
    else if (state == Volume::State_Mounted)
        return "Mounted";
    else if (state == Volume::State_Unmounting)
        return "Unmounting";
    else if (state == Volume::State_Checking)
        return "Checking";
    else if (state == Volume::State_Formatting)
        return "Formatting";
    else if (state == Volume::State_Shared)
        return "Shared-Unmounted";
    else if (state == Volume::State_SharedMnt)
        return "Shared-Mounted";
    else
        return "Unknown-Error";
}

    Volume::Volume(VolumeManager *vm, const char *label, const char *mount_point)
    : mUUID(NULL)
    , mDevType(DEV_TYPE_UNKOWN)
      , mFormat(FORMAT_TYPE_UNKOWN)
      , mDiskLabel(NULL)
      , mbGetLabel(false)
{
    mVm = vm;
    mDebug = false;
    mLabel = strdup(label);
    mMountpoint = strdup(mount_point);
    mState = Volume::State_Init;
    mCurrentlyMountedKdev = -1;
    mPartIdx = -1;
    mRetryMount = false;
    ubiName = NULL ;
}

Volume::~Volume() {
    free(mLabel);
    free(mMountpoint);
    free(mUUID);
    free(mDiskLabel);
}

bool Volume::setUbiName(char * pName) {
        if(ubiName = strdup(pName))
                return true ;
        else return false ;
}

void Volume::protectFromAutorunStupidity() {
    char filename[255];

    snprintf(filename, sizeof(filename), "%s/autorun.inf", SEC_STGDIR);
    if (!access(filename, F_OK)) {
        SLOGW("Volume contains an autorun.inf! - removing");
        /*
         * Ensure the filename is all lower-case so
         * the process killer can find the inode.
         * Probably being paranoid here but meh.
         */
        rename(filename, filename);
        Process::killProcessesWithOpenFiles(filename, 2);
        if (unlink(filename)) {
            SLOGE("Failed to remove %s (%s)", filename, strerror(errno));
        }
    }
}

void Volume::setDebug(bool enable) {
    mDebug = enable;
}

dev_t Volume::getDiskDevice() {
    return MKDEV(0, 0);
};

dev_t Volume::getShareDevice() {
    return getDiskDevice();
}

void Volume::handleVolumeShared() {
}

void Volume::handleVolumeUnshared() {
}
#if 0
int Volume::handleBlockEvent(NetlinkEvent *evt) {
    errno = ENOSYS;
    return -1;
}

void Volume::setUuid(const char* uuid) {
    char msg[256];

    if (mUuid) {
        free(mUuid);
    }

    if (uuid) {
        mUuid = strdup(uuid);
        snprintf(msg, sizeof(msg), "%s %s \"%s\"", getLabel(),
                getFuseMountpoint(), mUuid);
    } else {
        mUuid = NULL;
        snprintf(msg, sizeof(msg), "%s %s", getLabel(), getFuseMountpoint());
    }

    mVm->getBroadcaster()->sendBroadcast(ResponseCode::VolumeUuidChange, msg,
            false);
}

void Volume::setUserLabel(const char* userLabel) {
    char msg[256];

    if (mUserLabel) {
        free(mUserLabel);
    }

    if (userLabel) {
        mUserLabel = strdup(userLabel);
        snprintf(msg, sizeof(msg), "%s %s \"%s\"", getLabel(),
                getFuseMountpoint(), mUserLabel);
    } else {
        mUserLabel = NULL;
        snprintf(msg, sizeof(msg), "%s %s", getLabel(), getFuseMountpoint());
    }

    mVm->getBroadcaster()->sendBroadcast(ResponseCode::VolumeUserLabelChange,
            msg, false);
}
#endif

void Volume::setState(int state) {
    char msg[255];
    int oldState = mState;

    if (oldState == state) {
        SLOGW("Duplicate state (%d)\n", state);
        return;
    }

    if ((oldState == Volume::State_Pending) && (state != Volume::State_Idle)) {
        mRetryMount = false;
    }

    mState = state;

    if ( State_Mounted == state ) {
        char *pUUID;
        char *pDevType;
        if (getUUID()) {
            asprintf(&pUUID, "UUID=%s", getUUID());
        }
        else {
            asprintf(&pUUID, "%s", "UUID=");
        }
        switch (getDevType()) {
            case DEV_TYPE_SDCARD:
                asprintf(&pDevType, "DevType=SDCARD");
                break;
            case DEV_TYPE_USB2:
                asprintf(&pDevType, "DevType=USB2.0");
                break;
            case DEV_TYPE_USB3:
                asprintf(&pDevType, "DevType=USB3.0");
                break;
            case DEV_TYPE_SATA:
                asprintf(&pDevType, "DevType=SATA");
                break;
            case DEV_TYPE_FLASH:
                asprintf(&pDevType, "DevType=FLASH");
                break;
            case DEV_TYPE_UNKOWN:
            default:
                asprintf(&pDevType, "DevType=UNKOWN");
                break;
        }
		if( getStorageType() == FORMAT_TYPE_CDROM ){
			snprintf(msg, sizeof(msg),
					"Volume %s %s state changed from %d (%s) to %d (%s) %s DevType=CD-ROM %d %s", getLabel(),
					getMountpoint(), oldState, stateToStr(oldState), mState,
					stateToStr(mState), pUUID, getDiskDevice(), "DVD");
			DB_LOG("msg=%s",msg);
		}else {
			snprintf(msg, sizeof(msg),
					"Volume %s %s state changed from %d (%s) to %d (%s) %s %s %d %s", getLabel(),
					getMountpoint(), oldState, stateToStr(oldState), mState,
					stateToStr(mState), pUUID, pDevType, getDiskDevice(), mDiskLabel);
			DB_LOG("msg=%s",msg);
		}
	}
    else {
        DB_LOG("Volume %s state changing %d (%s) -> %d (%s)", mLabel,
                oldState, stateToStr(oldState), mState, stateToStr(mState));
        snprintf(msg, sizeof(msg),
                "Volume %s %s state changed from %d (%s) to %d (%s)", getLabel(),
                getMountpoint(), oldState, stateToStr(oldState), mState,
                stateToStr(mState));
    }

    mVm->getBroadcaster()->sendBroadcast(ResponseCode::VolumeStateChange,
                                         msg, false);
}

int Volume::createDeviceNode(const char *path, int major, int minor) {
    mode_t mode = 0660 | S_IFBLK;
    dev_t dev = (major << 8) | minor;
    if (mknod(path, mode, dev) < 0) {
        if (errno != EEXIST) {
            return -1;
        }
    }
    if ( NAND_DEVID == major ) {
        //if it is nand flash, create a char device node for format
        mode = 0660 | S_IFCHR;
        dev = (90 << 8) | 2*minor;
        char chDev[255] = {0};
        snprintf(chDev, sizeof(chDev), "/dev/block/vold/c%d:%d", 90, 2*minor);
        if (mknod(chDev, mode, dev) < 0) {
            if (errno != EEXIST) {
                return -1;
            }
        }
    }

    char cmdStr[255] = {0};
    char resStr[255] = {0};
    FILE   *stream = NULL ;
    snprintf( cmdStr, sizeof(cmdStr), "%s %s", "/system/bin/blkid", path );

    stream = popen( cmdStr, "r" );
    if ( stream )
    {
        if ( 0 < fread( resStr, sizeof(char), sizeof(resStr),  stream) ) {
            char * pType = NULL;
            if ( pType = strstr( resStr, " TYPE=") ) {
                pType += 7;
                char * pQuote = NULL;
                if ( pQuote = strchr( pType, '"' ) ) {
                    (*pQuote) = 0;
                    if ( 0 == strncmp("ntfs", pType, sizeof("ntfs")) ){
						mFormat = FORMAT_TYPE_NTFS;
                        mbGetLabel = true;
					}else if ( 0 == strncmp("vfat", pType, sizeof("vfat")) ){
						mFormat = FORMAT_TYPE_FAT;
                        mbGetLabel = true;
					}else if ( 0 == strncmp("ext2", pType, sizeof("ext2")) ){
						mFormat = FORMAT_TYPE_EXT4;
                        mbGetLabel = true;
					}else if ( 0 == strncmp("ext3", pType, sizeof("ext3")) ){
						mFormat = FORMAT_TYPE_EXT4;
                        mbGetLabel = true;
					}else if ( 0 == strncmp("ext4", pType, sizeof("ext4")) ){
						mFormat = FORMAT_TYPE_EXT4;
                        mbGetLabel = true;
					}else if (( 0 == strncmp("udf", pType, sizeof("udf"))) ||
							( 0 == strncmp("iso9660", pType, sizeof("iso9660"))) ){
						mFormat = FORMAT_TYPE_CDROM;
						mbGetLabel = true;
					}else if ( 0 == strncmp("exfat", pType, sizeof("exfat")) ){
						mFormat = FORMAT_TYPE_EXFAT;
						mbGetLabel = true;
					}else if (NAND_DEVID == major){
						mFormat = FORMAT_TYPE_YAFFS2;
						mbGetLabel = true;
					}else {
						mFormat = FORMAT_TYPE_UNKOWN;
					}
                }
            }
        }
        pclose( stream );
    }
	if( mbGetLabel = ( mbGetLabel || 8 == major) )
	{
		getPartitionLabel();
	}

    return 0;
}

int Volume::formatVol(bool wipe) {

    if (getState() == Volume::State_NoMedia) {
        errno = ENODEV;
        return -1;
    } else if (getState() != Volume::State_Idle) {
        errno = EBUSY;
        return -1;
    }

    if (isMountpointMounted(getMountpoint())) {
        SLOGW("Volume is idle but appears to be mounted - fixing");
        setState(Volume::State_Mounted);
        // mCurrentlyMountedKdev = XXX
        errno = EBUSY;
        return -1;
    }

   FORMAT_TYPE enFormatType = mFormat;

    bool formatEntireDevice = (mPartIdx == -1);
    char devicePath[255];
    dev_t diskNode = getDiskDevice();
    dev_t partNode =
        MKDEV(MAJOR(diskNode),
              MINOR(diskNode) + (formatEntireDevice ? 1 : mPartIdx));

    setState(Volume::State_Formatting);

    int ret = -1;
    // Only initialize the MBR if we are formatting the entire device
    // not change the MBR
#if 0
    if (formatEntireDevice) {
        sprintf(devicePath, "/dev/block/vold/%d:%d",
                MAJOR(diskNode), MINOR(diskNode));

        if (initializeMbr(devicePath)) {
            SLOGE("Failed to initialize MBR (%s)", strerror(errno));
            goto err;
        }
    }
#endif
    if ( DEV_TYPE_FLASH == getDevType() ) {
        sprintf(devicePath, "/dev/block/vold/c%d:%d",
                90, 2*MINOR(diskNode));
    }
    else {
        sprintf(devicePath, "/dev/block/vold/%d:%d",
                MAJOR(diskNode), MINOR(diskNode));
    }

    DB_LOG("vold : Formatting volume %s (%s)", getLabel(), devicePath);
    if (mDebug) {
        SLOGI("Formatting volume %s (%s)", getLabel(), devicePath);
    }

    if ( DEV_TYPE_FLASH == getDevType() ) {
        if (Yaffs::format(devicePath, 0)) {
            SLOGE("Failed to format (%s)", strerror(errno));
            goto err;
        }
    }
    else {
        switch (enFormatType){
            case FORMAT_TYPE_NTFS:
                {
                    if (Ntfs::format(devicePath, 0)) {
                        SLOGE("Failed to format (%s)", strerror(errno));
                        goto err;
                    }
                }
                break;

            case FORMAT_TYPE_EXT4:
                {
                    if (Ext4::format(devicePath,getMountpoint())) {
                        SLOGE("Failed to format (%s)", strerror(errno));
                        goto err;
                    }
                }
                break;
            case FORMAT_TYPE_FAT:
            default :
                {
                    if (Fat::format(devicePath, 0, wipe)) {
                        SLOGE("Failed to format (%s)", strerror(errno));
                        goto err;
                    }
                }
                break;
        }
    }

    ret = 0;

err:
    setState(Volume::State_Idle);
    return ret;
}

bool Volume::isMountpointMounted(const char *path) {
    char device[256];
    char mount_path[256];
    char rest[256];
    FILE *fp;
    char line[1024];

    if (!(fp = fopen("/proc/mounts", "r"))) {
        SLOGE("Error opening /proc/mounts (%s)", strerror(errno));
        return false;
    }

    while(fgets(line, sizeof(line), fp)) {
        line[strlen(line)-1] = '\0';
        sscanf(line, "%255s %255s %255s\n", device, mount_path, rest);
        if (!strcmp(mount_path, path)) {
            fclose(fp);
            SLOGD("%s is Mounted!", path);
            return true;
        }
    }

    fclose(fp);
    return false;
}

int Volume::mountVol() {
    dev_t deviceNodes[4];
    int n, i, rc = 0;
    char * pName = NULL ;
    char errmsg[255];
    bool primaryStorage = isDefaultVolume();
    char decrypt_state[PROPERTY_VALUE_MAX];
    char crypto_state[PROPERTY_VALUE_MAX];
    char encrypt_progress[PROPERTY_VALUE_MAX];
    int flags;

    property_get("vold.decrypt", decrypt_state, "");
    property_get("vold.encrypt_progress", encrypt_progress, "");

    /* Don't try to mount the volumes if we have not yet entered the disk password
     * or are in the process of encrypting.
     */
    if ((getState() == Volume::State_NoMedia) ||
            ((!strcmp(decrypt_state, "1") || encrypt_progress[0]) && primaryStorage)) {
        snprintf(errmsg, sizeof(errmsg),
                "Volume %s %s mount failed - no media",
                getLabel(), getMountpoint());
        mVm->getBroadcaster()->sendBroadcast(
                ResponseCode::VolumeMountFailedNoMedia,
                errmsg, false);
        errno = ENODEV;
        return -1;
    } else if (getState() != Volume::State_Idle) {
        errno = EBUSY;
        if (getState() == Volume::State_Pending) {
            mRetryMount = true;
        }
        return -1;
    }
#if 0
    if (isMountpointMounted(getMountpoint())) {
        SLOGW("Volume is idle but appears to be mounted - fixing");
        setState(Volume::State_Mounted);
        // mCurrentlyMountedKdev = XXX
        return 0;
    }
#endif
    n = getDeviceNodes((dev_t *) &deviceNodes, 4);
    if (!n) {
        SLOGE("Failed to get device nodes (%s)\n", strerror(errno));
        return -1;
    }

    /* If we're running encrypted, and the volume is marked as encryptable and nonremovable,
     * and vold is asking to mount the primaryStorage device, then we need to decrypt
     * that partition, and update the volume object to point to it's new decrypted
     * block device
     */
    property_get("ro.crypto.state", crypto_state, "");
    flags = getFlags();
    if (primaryStorage &&
            ((flags & (VOL_NONREMOVABLE | VOL_ENCRYPTABLE))==(VOL_NONREMOVABLE | VOL_ENCRYPTABLE)) &&
            !strcmp(crypto_state, "encrypted") && !isDecrypted()) {
        char new_sys_path[MAXPATHLEN];
        char nodepath[256];
        int new_major, new_minor;

        if (n != 1) {
            /* We only expect one device node returned when mounting encryptable volumes */
            SLOGE("Too many device nodes returned when mounting %d\n", getMountpoint());
            return -1;
        }

        if (cryptfs_setup_volume(getLabel(), MAJOR(deviceNodes[0]), MINOR(deviceNodes[0]),
                    new_sys_path, sizeof(new_sys_path),
                    &new_major, &new_minor)) {
            SLOGE("Cannot setup encryption mapping for %d\n", getMountpoint());
            return -1;
        }
        /* We now have the new sysfs path for the decrypted block device, and the
         * majore and minor numbers for it.  So, create the device, update the
         * path to the new sysfs path, and continue.
         */
        snprintf(nodepath,
                sizeof(nodepath), "/dev/block/vold/%d:%d",
                new_major, new_minor);
        if (createDeviceNode(nodepath, new_major, new_minor)) {
            SLOGE("Error making device node '%s' (%s)", nodepath,
                    strerror(errno));
        }

        // Todo: Either create sys filename from nodepath, or pass in bogus path so
        //       vold ignores state changes on this internal device.
        updateDeviceInfo(nodepath, new_major, new_minor);

        /* Get the device nodes again, because they just changed */
        n = getDeviceNodes((dev_t *) &deviceNodes, 4);
        if (!n) {
            SLOGE("Failed to get device nodes (%s)\n", strerror(errno));
            return -1;
        }
    }

    for (i = 0; i < n; i++) {
        char devicePath[255];

        sprintf(devicePath, "/dev/block/vold/%d:%d", MAJOR(deviceNodes[i]),
                MINOR(deviceNodes[i]));

        if (isMountpointMounted(getMountpoint())) {
            SLOGW("Volume is idle but appears to be mounted - fixing");
            setState(Volume::State_Mounted);
            // mCurrentlyMountedKdev = XXX
            return 0;
        }

        errno = 0;
        setState(Volume::State_Checking);

//        getPartitionLabel();

        //move fsck from here to Fat/Ext4/Yaffs2
#if 0
        if (Fat::check(devicePath)) {
            if (errno == ENODATA) {
                SLOGW("%s does not contain a FAT filesystem\n", devicePath);
                continue;
            }
            errno = EIO;
            /* Badness - abort the mount */
            SLOGE("%s failed FS checks (%s)", devicePath, strerror(errno));
            setState(Volume::State_Idle);
            return -1;
        }
#endif

        /*
         * Mount the device on our internal staging mountpoint so we can
         * muck with it before exposing it to non priviledged users.
         */
        errno = 0;
        int gid;
		DB_LOG("this type=%d",getStorageType());
		if (primaryStorage) {
#ifdef HISI_FUSE_SDCARD
			char buf_fuse[1024] = {0};
			sprintf(buf_fuse,"sdcard -u 1023 -g 1023 -l /data/media /mnt/shell/emulated &");
			system(buf_fuse);
			symlink(getMountpoint(),"/mnt/sdcard");
#else
			gid = AID_SDCARD_RW;
			mkdir_p( (const char *)getMountpoint(), 0777, AID_SYSTEM, gid);
			symlink(getMountpoint(),"/mnt/sdcard");
			DB_LOG("getMountpoint=(%s),ubiName=(%s)",getMountpoint(),getUbiName());
			if ( NULL != getUbiName()) {
				pName = strstr(getUbiName(), "Ubifs=");
				pName += 6 ;
				memset(devicePath,0,sizeof(devicePath));
				snprintf( devicePath, sizeof(devicePath), "%s%s", "/dev/", pName );
				if (Ubifs::doMount(devicePath, "/mnt/secure/staging", false, false, false,
							AID_SYSTEM, gid, 0000, true)) {
					SLOGE("%s failed to mount ubifs (%s)\n", devicePath, strerror(errno));
					continue;
				}
				mbGetLabel = true;
			}
			else {
				switch(getStorageType()){
					case FORMAT_TYPE_NTFS:
						if(!Ntfs::doMount(devicePath, "/mnt/secure/staging", false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_FAT:
						if(!Fat::doMount(devicePath, "/mnt/secure/staging", false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_EXT4:
						if(!Ext4::doMount(devicePath, "/mnt/secure/staging", false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_EXFAT:
						if(!Exfat::doMount(devicePath, "/mnt/secure/staging", false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_YAFFS2:
						if(!Yaffs::doMount(devicePath, "/mnt/secure/staging", false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					default :
						if (Exfat::doMount(devicePath, "/mnt/secure/staging", false, false, false,
									AID_SYSTEM, gid, 0000, true)) {
							if (Ext4::doMount(devicePath, "/mnt/secure/staging", false, false,
										AID_SYSTEM, gid, 0000, true)) {
								SLOGE("%s failed to mount all type (/mnt/secure/staging)\n", devicePath);
								continue;
							}else {
								mFormat = FORMAT_TYPE_EXT4;
								mbGetLabel = true;
							}
						}else {
							mFormat = FORMAT_TYPE_EXFAT;
							mbGetLabel = true;
						}
				}
			}

			DB_LOG("Device %s, target %s mounted @ /mnt/secure/staging", devicePath, getMountpoint());

			if (primaryStorage && createBindMounts()) {
				SLOGE("Failed to create bindmounts (%s)", strerror(errno));
				umount("/mnt/secure/staging");
				setState(Volume::State_Idle);
				goto err_mount;
			}

			if (doMoveMount("/mnt/secure/staging", getMountpoint(), false)) {
				SLOGE("Failed to move mount (%s)", strerror(errno));
				umount("/mnt/secure/staging");
				setState(Volume::State_Idle);
				goto err_mount;
			}
#endif
		} else {
			// For secondary external storage we keep things locked up.
			gid = AID_SDCARD_RW;
			DB_LOG("getMountpoint=(%s),ubiName=(%s)",getMountpoint(),getUbiName());
			mkdir_p( (const char *)getMountpoint(), 0777, AID_SYSTEM, gid);
			if ( NULL != getUbiName()) {
				pName = strstr(getUbiName(), "Ubifs=");
				pName += 6 ;
				memset(devicePath,0,sizeof(devicePath));
				snprintf( devicePath, sizeof(devicePath), "%s%s", "/dev/", pName );
				if (Ubifs::doMount(devicePath, getMountpoint(), false, false, false,
							AID_SYSTEM, gid, 0000, true)) {
					SLOGE("%s failed to mount ubifs (%s)\n", devicePath, strerror(errno));
					continue;
				}
				mbGetLabel = true;
			}else {
				switch(getStorageType()){
					case FORMAT_TYPE_NTFS:
						if(!Ntfs::doMount(devicePath, getMountpoint(), false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_FAT:
						if(!Fat::doMount(devicePath, getMountpoint(), false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_EXT4:
						if(!Ext4::doMount(devicePath, getMountpoint(), false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_EXFAT:
						if(!Exfat::doMount(devicePath, getMountpoint(), false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					case FORMAT_TYPE_CDROM:
						if(!Cdrom::doMount(devicePath, getMountpoint())){
							break;
						}else
							continue;

					case FORMAT_TYPE_YAFFS2:
						if(!Yaffs::doMount(devicePath, getMountpoint(), false, false, false,
									AID_SYSTEM, gid, 0000, true)){
							break;
						}else
							continue;

					default :
						if (Exfat::doMount(devicePath, getMountpoint(), false, false, false,
									AID_SYSTEM, gid, 0000, true)) {
							if (Ext4::doMount(devicePath, getMountpoint(), false, false,
										AID_SYSTEM, gid, 0000, true)) {
								if (Cdrom::doMount(devicePath, getMountpoint())) {
									SLOGE("%s failed to mount all type (%s)\n", devicePath, strerror(errno));
									continue;
								}else {
									mFormat = FORMAT_TYPE_CDROM;
									mbGetLabel = true;
								}
							}else {
								mFormat = FORMAT_TYPE_EXT4;
								mbGetLabel = true;
							}
						}else {
							mFormat = FORMAT_TYPE_EXFAT;
							mbGetLabel = true;
						}
				}
			}
		}
		getPartitionLabel();
		setState(Volume::State_Mounted);
        mCurrentlyMountedKdev = deviceNodes[i];
        return 0;
    }

    SLOGE("Volume %s found no suitable devices for mounting :(\n", getLabel());
    setState(Volume::State_Idle);

err_mount:
    rmdir_p( (const char *)getMountpoint() );
    releasePartitionLabel();

    return -1;
}

int Volume::createBindMounts() {
    unsigned long flags;

    /*
     * Rename old /android_secure -> /.android_secure
     */
    if (!access("/mnt/secure/staging/android_secure", R_OK | X_OK) &&
         access(SEC_STG_SECIMGDIR, R_OK | X_OK)) {
        if (rename("/mnt/secure/staging/android_secure", SEC_STG_SECIMGDIR)) {
            SLOGE("Failed to rename legacy asec dir (%s)", strerror(errno));
        }
    }

    /*
     * Ensure that /android_secure exists and is a directory
     */
    if (access(SEC_STG_SECIMGDIR, R_OK | X_OK)) {
        if (errno == ENOENT) {
            if (mkdir(SEC_STG_SECIMGDIR, 0777)) {
                SLOGE("Failed to create %s (%s)", SEC_STG_SECIMGDIR, strerror(errno));
                return -1;
            }
        } else {
            SLOGE("Failed to access %s (%s)", SEC_STG_SECIMGDIR, strerror(errno));
            return -1;
        }
    } else {
        struct stat sbuf;

        if (stat(SEC_STG_SECIMGDIR, &sbuf)) {
            SLOGE("Failed to stat %s (%s)", SEC_STG_SECIMGDIR, strerror(errno));
            return -1;
        }
        if (!S_ISDIR(sbuf.st_mode)) {
            SLOGE("%s is not a directory", SEC_STG_SECIMGDIR);
            errno = ENOTDIR;
            return -1;
        }
    }

    /*
     * Bind mount /mnt/secure/staging/android_secure -> /mnt/secure/asec so we'll
     * have a root only accessable mountpoint for it.
     */
    if (mount(SEC_STG_SECIMGDIR, SEC_ASECDIR_EXT, "", MS_BIND, NULL)) {
        SLOGE("Failed to bind mount points %s -> %s (%s)",
                SEC_STG_SECIMGDIR, SEC_ASECDIR_EXT, strerror(errno));
        return -1;
    }

    /*
     * Mount a read-only, zero-sized tmpfs  on <mountpoint>/android_secure to
     * obscure the underlying directory from everybody - sneaky eh? ;)
     */
    if (mount("tmpfs", SEC_STG_SECIMGDIR, "tmpfs", MS_RDONLY, "size=0,mode=000,uid=0,gid=0")) {
        SLOGE("Failed to obscure %s (%s)", SEC_STG_SECIMGDIR, strerror(errno));
        umount("/mnt/asec_secure");
        return -1;
    }

    return 0;
}

int Volume::doMoveMount(const char *src, const char *dst, bool force) {
    unsigned int flags = MS_MOVE;
    int retries = 5;

    while(retries--) {
        if (!mount(src, dst, "", flags, NULL)) {
            if (mDebug) {
                SLOGD("Moved mount %s -> %s sucessfully", src, dst);
            }
            return 0;
        } else if (errno != EBUSY) {
            SLOGE("Failed to move mount %s -> %s (%s)", src, dst, strerror(errno));
            return -1;
        }
        int action = 0;

        if (force) {
            if (retries == 1) {
                action = 2; // SIGKILL
            } else if (retries == 2) {
                action = 1; // SIGHUP
            }
        }
        SLOGW("Failed to move %s -> %s (%s, retries %d, action %d)",
                src, dst, strerror(errno), retries, action);
        Process::killProcessesWithOpenFiles(src, action);
        usleep(1000*250);
    }

    errno = EBUSY;
    SLOGE("Giving up on move %s -> %s (%s)", src, dst, strerror(errno));
    return -1;
}

int Volume::doUnmount(const char *path, bool force) {
    int retries = 10;

    if (mDebug) {
        SLOGD("Unmounting {%s}, force = %d", path, force);
    }

    while (retries--) {
        if (!umount(path) || errno == EINVAL || errno == ENOENT) {
            SLOGI("%s sucessfully unmounted", path);
            return 0;
        }

        int action = 0;

        if (force) {
            if (retries == 1) {
                action = 2; // SIGKILL
            } else if (retries == 2) {
                action = 1; // SIGHUP
            }
        }

        SLOGW("Failed to unmount %s (%s, retries %d, action %d)",
                path, strerror(errno), retries, action);

        Process::killProcessesWithOpenFiles(path, action);
        usleep(1000*1000);
    }
    errno = EBUSY;
    SLOGE("Giving up on unmount %s (%s)", path, strerror(errno));
    return -1;
}

int Volume::unmountVol(bool force, bool revert) {
    int i, rc;

    if (getState() != Volume::State_Mounted) {
        SLOGE("Volume %s unmount request when not mounted", getLabel());
        errno = EINVAL;
        return UNMOUNT_NOT_MOUNTED_ERR;
    }

    setState(Volume::State_Unmounting);
    usleep(1000 * 1000); // Give the framework some time to react

    if (isDefaultVolume()) {
        /*
         * First move the mountpoint back to our internal staging point
         * so nobody else can muck with it while we work.
         */
    if (doUnmount(Volume::SEC_ASECDIR_EXT, force)) {
        SLOGE("Failed to remove bindmount on %s (%s)", SEC_ASECDIR_EXT, strerror(errno));
        goto fail_remount_tmpfs;
    }

    /*
     * Unmount the tmpfs which was obscuring the asec image directory
     * from non root users
     */
    char secure_dir[PATH_MAX];
    snprintf(secure_dir, PATH_MAX, "%s/.android_secure", getMountpoint());
    if (doUnmount(secure_dir, force)) {
        SLOGE("Failed to unmount tmpfs on %s (%s)", secure_dir, strerror(errno));
        goto fail_republish;
    }

    if (doUnmount(getMountpoint(), force)) {
        SLOGE("Failed to unmount %s (%s)", getMountpoint(), strerror(errno));
        goto fail_recreate_bindmount;
    }
    /*
     * Finally, unmount the actual block device from the staging dir
     */
    }
    else {
        if (doUnmount(getMountpoint(), force)) {
            SLOGE("Failed to unmount %s (%s)", getMountpoint(), strerror(errno));
            goto fail_recreate_bindmount;
        }
    }

    SLOGI("%s unmounted sucessfully", getMountpoint());

    /* If this is an encrypted volume, and we've been asked to undo
     * the crypto mapping, then revert the dm-crypt mapping, and revert
     * the device info to the original values.
     */
    if (revert && isDecrypted()) {
        cryptfs_revert_volume(getLabel());
        revertDeviceInfo();
        SLOGI("Encrypted volume %s reverted successfully", getMountpoint());
    }

    rmdir_p( (const char *)getMountpoint() );
    setState(Volume::State_Idle);
    mCurrentlyMountedKdev = -1;

    releasePartitionLabel();

    return 0;

    /*
     * Failure handling - try to restore everything back the way it was
     */
fail_recreate_bindmount:
    if (mount(SEC_STG_SECIMGDIR, SEC_ASECDIR_EXT, "", MS_BIND, NULL)) {
        SLOGE("Failed to restore bindmount after failure! - Storage will appear offline!");
        goto out_nomedia;
    }
fail_remount_tmpfs:
    if (mount("tmpfs", SEC_STG_SECIMGDIR, "tmpfs", MS_RDONLY, "size=0,mode=0,uid=0,gid=0")) {
        SLOGE("Failed to restore tmpfs after failure! - Storage will appear offline!");
        goto out_nomedia;
    }
fail_republish:
    if (doMoveMount(SEC_STGDIR, getMountpoint(), force)) {
        SLOGE("Failed to republish mount after failure! - Storage will appear offline!");
        goto out_nomedia;
    }

    setState(Volume::State_Mounted);
    return -1;

out_nomedia:
    setState(Volume::State_NoMedia);
    return -1;
}
int Volume::initializeMbr(const char *deviceNode) {
    struct disk_info dinfo;

    memset(&dinfo, 0, sizeof(dinfo));

    if (!(dinfo.part_lst = (struct part_info *) malloc(MAX_NUM_PARTS * sizeof(struct part_info)))) {
        SLOGE("Failed to malloc prt_lst");
        return -1;
    }

    memset(dinfo.part_lst, 0, MAX_NUM_PARTS * sizeof(struct part_info));
    dinfo.device = strdup(deviceNode);
    dinfo.scheme = PART_SCHEME_MBR;
    dinfo.sect_size = 512;
    dinfo.skip_lba = 2048;
    dinfo.num_lba = 0;
    dinfo.num_parts = 1;

    struct part_info *pinfo = &dinfo.part_lst[0];

    pinfo->name = strdup("android_sdcard");
    pinfo->flags |= PART_ACTIVE_FLAG;
    pinfo->type = PC_PART_TYPE_FAT32;
    pinfo->len_kb = -1;

    int rc = apply_disk_config(&dinfo, 0);

    if (rc) {
        SLOGE("Failed to apply disk configuration (%d)", rc);
        goto out;
    }

 out:
    free(pinfo->name);
    free(dinfo.device);
    free(dinfo.part_lst);

    return rc;
}

/*
 * Use blkid to extract UUID and label from device, since it handles many
 * obscure edge cases around partition types and formats. Always broadcasts
 * updated metadata values.
 */
int Volume::extractMetadata(const char* devicePath) {
    int res = 0;

    std::string cmd;
    cmd = BLKID_PATH;
    cmd += " -c /dev/null ";
    cmd += devicePath;

    FILE* fp = popen(cmd.c_str(), "r");
    if (!fp) {
        ALOGE("Failed to run %s: %s", cmd.c_str(), strerror(errno));
        res = -1;
        goto done;
    }

    char line[1024];
    char value[128];
    if (fgets(line, sizeof(line), fp) != NULL) {
        ALOGD("blkid identified as %s", line);

        char* start = strstr(line, "UUID=");
        if (start != NULL && sscanf(start + 5, "\"%127[^\"]\"", value) == 1) {
            setUuid(value);
        } else {
            setUuid(NULL);
        }

        start = strstr(line, "LABEL=");
        if (start != NULL && sscanf(start + 6, "\"%127[^\"]\"", value) == 1) {
            setUserLabel(value);
        } else {
            setUserLabel(NULL);
        }
    } else {
        ALOGW("blkid failed to identify %s", devicePath);
        res = -1;
    }

    pclose(fp);

done:
    if (res == -1) {
        setUuid(NULL);
        setUserLabel(NULL);
    }
    return res;
}

void Volume::mkdir_p( const char * pDir, mode_t mode, uid_t owner, gid_t group ) {
    if ( pDir ){
        char * slash = (char *)pDir;
        while (1) {
            slash = strchr ( slash + 1, '/' );
            if ( NULL == slash ) {
                if ( 0 != mkdir (pDir, mode) ) {
                    SLOGE("mkdir error. pDir = %s, errno = %d", pDir, errno);
                }
                else {
                    chown(pDir, owner, group);
                }
                break;
            }
            else {
                slash[0] = 0;
                if ( 0 != mkdir (pDir, mode) ) {
                    if ( EEXIST != errno ) {
                        SLOGE("mkdir error. pDir = %s, errno = %d", pDir, errno);
                        break;
                    }
                }
                else {
                    chown(pDir, owner, group);
                }
                slash[0] = '/';
            }
        }
    }
    return;
}

void Volume::clearVolDir(const char *pDir)
{
    rmdir_p( pDir);
}

void Volume::rmdir_p( const char * pDir ) {
    if ( NULL == pDir )
        return;

    char * pTemp = strdup(pDir);
    if ( NULL == pTemp )
        return;

    if ( 0 == rmdir( pTemp ) ) {
        //delete the parent dir if possible
        char * slash = NULL;
        while (1) {
            slash = strrchr (pTemp, '/');
            if (slash == NULL)
                break;
            while (slash > pTemp && *slash == '/')
                --slash;
            slash[1] = 0;

            if ( rmdir( pTemp ) )
                break;
        }
    }

    delete( pTemp );

    return;
}

int Volume::getUUIDInternal( const char * pDevPath ) {
    int iRet = 0;

    if ( pDevPath )
    {
        char cmdStr[255] = {0};
        char resStr[255] = {0};
        char pSrcPath[100]  = {0};
        FILE   *stream      = NULL ;
        int loopnum         = 0;

        strncpy(pSrcPath,pDevPath,100);

        sleep(2);
        snprintf( cmdStr, sizeof(cmdStr), "%s %s", "/system/bin/blkid", pDevPath );

        do
        {
            char * pUUID = NULL;
            stream = popen( cmdStr, "r" );
            DB_LOG("getUUIDInternal   start check");

            if ( stream )
            {
                fread( resStr, sizeof(char), sizeof(resStr),  stream);

                if ( (pUUID = strstr( resStr, "UUID=")) )
                {
                    pUUID += 6;
                    char * pQuote = NULL;
                    if ( (pQuote = strchr( pUUID, '"' )) )
                    {
                        (*pQuote) = 0;
                        mUUID = strdup( pUUID );
                        SLOGD("the UUID is %s\n", mUUID);
                    }
                }
                pclose( stream );
            }

            if((NULL == pUUID)||(0 != loopnum)){
                loopnum = 0;
                break;
            }else if(!strcmp(pUUID,"0000-0000")){
                if( 0 != setRamdomUUID(pSrcPath))
                    loopnum = 1; //set the uuid success, try to get the uuid again.
                else
                    loopnum = 0;
            }
        }while(loopnum );
        DB_LOG("getUUIDInternal  end");
    }

    return iRet;
}

bool Volume::isDefaultVolume() {
    bool bRet = false;
    if ( NULL == defaultVolume ) {
        char cmd[256] = {0};
        char line[1024];
        char *ptrstart = NULL;
        char *ptrend = NULL;
        FILE *fp = NULL;
        char *tmpVolume = new char[128];
        if ( NULL == tmpVolume )
            return false;
        memset(tmpVolume, 0, 128);
        const char * pathXml = getenv("EXTERNAL_STORAGE_VOLD_PATH");

        if ((pathXml != NULL) && (fp = fopen(pathXml, "r"))) {
            while(fgets(line, sizeof(line), fp)) {
                char *next = line;

                line[strlen(line)-1] = '\0';

                if((ptrstart=strstr(next,"externalStorage"))){

                    ptrend = strstr(next,"/mnt");

                    if (ptrstart && ptrend) {
                        strncpy(tmpVolume, (ptrstart+17), (ptrend-(ptrstart+17)));
                    }
                    break;
                }
                else{
                    continue;
                }
            }
        }
        if ( fp ) {
            fclose(fp);
        }
        defaultVolume = tmpVolume;
    }

    const char * pTmpUUID = getUUID();
    if ( 0 == defaultVolume[0] || 0 == strcmp("null", defaultVolume)) {
        char * pExStorage = NULL;
        pExStorage = getenv("EXTERNAL_STORAGE_VOLD");
        if ( pExStorage && 0 == strcmp( pExStorage, getMountpoint() ) ) {
            bRet = true;
        }
    }
    else {
        if ( NULL != pTmpUUID ) {
            if ( 0 == strcmp(pTmpUUID, defaultVolume) ) {
                bRet = true;
            }
        }
    }

	if (bRet)
		DB_LOG("defaultStorage=%s",getMountpoint());

    return bRet;
}


////////////////////////////////////////// yangly added start: the functions below is for fix the bad volume without uuid //////////////////////////////////
uint8_t *Volume::get_attr_volume_id(struct vfat_dir_entry *dir, int count)
{
    for (;--count >= 0; dir++) {
        /* end marker */
        if (dir->name[0] == 0x00) {
            SLOGD("end of dir");
            break;
        }

        /* empty entry */
        if (dir->name[0] == FAT_ENTRY_FREE)
            continue;

        /* long name */
        if ((dir->attr & FAT_ATTR_MASK) == FAT_ATTR_LONG_NAME)
            continue;

        if ((dir->attr & (FAT_ATTR_VOLUME_ID | FAT_ATTR_DIR)) == FAT_ATTR_VOLUME_ID) {
            /* labels do not have file data */
            if (dir->cluster_high != 0 || dir->cluster_low != 0)
                continue;

            DB_LOG("found ATTR_VOLUME_ID id in root dir");
            return dir->name;
        }

        DB_LOG("skip dir entry");
    }

    return NULL;
}


ssize_t Volume::safe_read(int fd, void *buf, size_t count)
{
    ssize_t n;

    do {
        n = read(fd, buf, count);
    } while (n < 0 && errno == EINTR);

    return n;
}

ssize_t Volume::full_read(int fd, void *buf, size_t len)
{
    ssize_t cc;
    ssize_t total;

    total = 0;

    while (len) {
        cc = safe_read(fd, buf, len);

        if (cc < 0) {
            if (total) {
                /* we already have some! */
                /* user can do another read to know the error code */
                return total;
            }
            return cc; /* read() returns -1 on failure. */
        }
        if (cc == 0)
            break;
        buf = ((char *)buf) + cc;
        total += cc;
        len -= cc;
    }

    return total;
}

ssize_t  Volume::safe_write(int fd, const void *buf, size_t count)
{
    ssize_t n;

    do {
        n = write(fd, buf, count);
    } while (n < 0 && errno == EINTR);

    return n;
}

ssize_t  Volume::full_write(int fd, const void *buf, size_t len)
{
    ssize_t cc;
    ssize_t total;
    total = 0;

    while (len) {
        cc = safe_write(fd, buf, len);

        if (cc < 0) {
            if (total) {
                /* we already wrote some! */
                /* user can do another write to know the error code */
                return total;
            }
            return cc;      /* write() returns -1 on failure. */
        }

        total += cc;
        buf = ((const char *)buf) + cc;
        len -= cc;
    }

    return total;
}

void Volume::volume_id_free_buffer(struct volume_id *id)
{
    free(id->sbbuf);
    id->sbbuf = NULL;
    id->sbbuf_len = 0;
    free(id->seekbuf);
    id->seekbuf = NULL;
    id->seekbuf_len = 0;
    id->seekbuf_off = 0; /* paranoia */
}

void * Volume::volume_id_get_buffer(struct volume_id *id, uint64_t off, size_t len)
{
    uint8_t *dst;
    unsigned small_off;
    ssize_t read_len;

    DB_LOG("get buffer off 0x%llx(%llu), len 0x%zx",
        (unsigned long long) off, (unsigned long long) off, len);

    /* check if requested area fits in superblock buffer */
    if (off + len <= SB_BUFFER_SIZE ) {
        if (id->sbbuf == NULL) {
            DB_LOG("########malloc");
            id->sbbuf = (uint8_t*)malloc(SB_BUFFER_SIZE);
        }
        small_off = off;
        dst = id->sbbuf;

        /* check if we need to read */
        len += off;
        if (len <= id->sbbuf_len)
            goto ret; /* we already have it */

        DB_LOG("read sbbuf len:0x%x", (unsigned) len);
        id->sbbuf_len = len;
        off = 0;
        goto do_read;
    }

    if (len > SEEK_BUFFER_SIZE) {
        SLOGD("seek buffer too small %d", SEEK_BUFFER_SIZE);
        return NULL;
    }
    dst = id->seekbuf;

    /* check if we need to read */
    if ((off >= id->seekbuf_off)
     && ((off + len) <= (id->seekbuf_off + id->seekbuf_len))
    ) {
        small_off = off - id->seekbuf_off; /* can't overflow */
        goto ret; /* we already have it */
    }

    id->seekbuf_off = off;
    id->seekbuf_len = len;
    id->seekbuf = (uint8_t*)realloc(id->seekbuf, len);
    small_off = 0;
    dst = id->seekbuf;
    DB_LOG("read seekbuf off:0x%llx len:0x%zx",
                (unsigned long long) off, len);
 do_read:
    if (lseek(id->fd, off, SEEK_SET) != (int)off) {
        SLOGE("seek(0x%llx) failed", (unsigned long long) off);
        //  goto err;
    }
    DB_LOG("seek return %x", lseek(id->fd, off, SEEK_SET));
    read_len = full_read(id->fd, dst, len);
    //SLOGD(dst);
    if ((unsigned int)read_len != len) {
        DB_LOG("requested 0x%x bytes, got 0x%x bytes",
                (unsigned) len, (unsigned) read_len);
 err:
        if (off < 64*1024)
            id->error = 1;
        volume_id_free_buffer(id);
        return NULL;
    }
ret:
    return dst + small_off;
}



/* open volume by device node */
struct volume_id* Volume::volume_id_open_node(int fd)
{
    struct volume_id *id;

    id = (volume_id *)malloc(sizeof(struct volume_id));
    memset(id,0,sizeof(struct volume_id));
    id->fd = fd;
    return id;
}
void Volume::free_volume_id(struct volume_id *id)
{
    if (id == NULL)
        return;
    close(id->fd);
    volume_id_free_buffer(id);
#ifdef UNUSED_PARTITION_CODE
    free(id->partitions);
#endif
    free(id);
}


int Volume::setRamdomUUID(const char *device)
{
    int fd;
    struct stat st;
    char *buf = NULL;
    int offset = 0;
    int writenum = 0;
    struct vfat_super_block *vs;
    int retVal = 0;

    DB_LOG("setRamdomUUID is called \n");

    buf=(char *)malloc(5);
    if(buf == NULL)
    {
        DB_LOG("setRamdomUUID  malloc is failed \n");
        return retVal;
    }

    buf[0] = random() /256;
    buf[1] = random() /256;
    buf[2] = random() /256;
    buf[3] = random() /256;
    buf[4] = 0x00;

    fd = open(device,  O_EXCL | O_RDWR);
    if (fd < 0)
    {
        free(buf);
        DB_LOG("open device  failed: %s \n",device);
        return retVal;
    }

    struct volume_id *vid = NULL;

    /* fd is owned by vid now */
    vid = volume_id_open_node(fd);
    if(vid == NULL)
    {
        DB_LOG("alloc vid  failed \n");
        goto uuidExit;
    }

    vs = (vfat_super_block *)volume_id_get_buffer(vid, 0, 0x200);
    if (vs == NULL)
    {
        DB_LOG("alloc vs  failed \n");
        goto uuidExit;
    }

    if (memcmp(vs->type.fat32.magic, "FAT32   ", 8) != 0)
    {
        DB_LOG("not FAT32 type \n");
        goto uuidExit;
    }

    DB_LOG("setRamdomUUID,ID is %x,%x,%x,%x",buf[0],buf[1],buf[2],buf[3]);

    offset = ((int)  &((struct vfat_super_block *)0)->type.fat32.serno);

    DB_LOG("setRamdomUUID,offset is %x",offset);

    if (lseek(fd, offset, SEEK_SET) != offset) {
        DB_LOG("seek(0x%llx) failed", (unsigned long long) offset);
    }

    DB_LOG("seek return %x", lseek(fd, offset, SEEK_SET));
    writenum = write(fd, buf, 4);
    DB_LOG("write num : %d",writenum);
    retVal = 1;

uuidExit:
    free_volume_id(vid);
    close(fd);
    sync();
    free(buf);
    return retVal;
}

////////////////////////////////////////// yangly added end: the functions above is for fix the bad volume without uuid //////////////////////////////////

    void Volume::getPartitionLabel() {
        if ( false == mbGetLabel || mDiskLabel )
            return;

        char result[32] = {0};

        int i = 0;
        char * pExStorage = NULL;
        pExStorage = getenv("EXTERNAL_STORAGE_VOLD");
        if ( pExStorage && 0 == strcmp( pExStorage, getMountpoint() ) ) {
            mDiskLabel = strdup("C");
            return ;
        }
        Lock();
        for ( i = 0; i < 1023; i ++ ) {
            if ( 0 == PartitionLabel[i] )
                break;
        }

        if ( i < 23 ) {
            snprintf( result, sizeof(result), "%c", i + 0x44 );
            mDiskLabel = strdup( result );
            PartitionLabel[i] = 1;
        }
        if(i>=23 && i<1023){
            snprintf( result, sizeof(result), "sdb%d", i - 22);
            mDiskLabel = strdup( result );
            PartitionLabel[i] = 1;
            mDiskLabel_index = i ;
        }
        Unlock();

        return;
    }

void Volume::releasePartitionLabel() {
    if ( NULL != mDiskLabel ) {
        if ( mDiskLabel[0] >= 0x44 && mDiskLabel[0] <= 0x5a ) {
            Lock();
            PartitionLabel[mDiskLabel[0] - 0x44] = 0;
            Unlock();
        }
        else{
            Lock();
            PartitionLabel[mDiskLabel_index] = 0;
            Unlock();
        }
        free(mDiskLabel);
        mDiskLabel = NULL;
    }

    return;
}
