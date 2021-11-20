#include <binder/IServiceManager.h>
#include <binder/IPCThreadState.h>
#include <binder/PermissionCache.h>
#include <private/android_filesystem_config.h>
#include <utils/String16.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <linux/types.h>
#include <sys/ioctl.h>
#include <cutils/properties.h>

#include <utils/Log.h>
#include <cutils/properties.h>
#include <hardware/hardware.h>
#include <hardware/gralloc.h>
#include <hardware/fb.h>
#include <hardware/lights.h>

#include <binder/Parcel.h>
#include "HiSysManagerService.h"
#include "sysmanager.h"

#include "SkBitmap.h"
#include "SkImageDecoder.h"
#include "SkImageEncoder.h"

#define LOG_TAG "HiSysManagerService"

//extern "C"
// {
//
// }
//extern "C"
// {
//   extern int do_upgrade(const char* path);
// }

namespace android
{
HiSysManagerService::HiSysManagerService()
{

}
HiSysManagerService::~HiSysManagerService()
{
}
void HiSysManagerService::instantiate()
{
    defaultServiceManager()->addService(String16("HiSysManager"), new HiSysManagerService());
}
int HiSysManagerService::upgrade(String8 path){
    const char* mpath = path.string();
    int ret = do_upgrade(mpath);
    return ret;
}
int HiSysManagerService::reset(){
    int ret = do_reset();
    return 0;
}

int HiSysManagerService::updateLogo(String8 path) {
    const char* mpath = path.string();
    SkBitmap bitmap;
    int ret = -1;
    const char* out_path = "/data/local/tmp/logo.jpg";
    const int quality = 100;
    ret = SkImageDecoder::DecodeFile(mpath, &bitmap);
    ALOGE("SkImageDecoder::DecodeFile(%s) returns %d\n", mpath, ret);
    if (false == ret)
    {
        return -1;
    }
    ret = SkImageEncoder::EncodeFile(out_path, bitmap, SkImageEncoder::kJPEG_Type, quality);
    ALOGE("SkImageEncoder::EncodeFile(%s) returns %d\n", out_path, ret);
    if (false == ret)
    {
        return -1;
    }
    ret = do_updateLogo(out_path);
    return ret;
}

int HiSysManagerService::enterSmartStandby(){
    int ret = do_EnterSmartStandby();
    return ret;
}
int HiSysManagerService::quitSmartStandby(){
    int ret = do_QuitSmartStandby();
    return ret;
}
int HiSysManagerService::setFlashInfo(String8 warpflag,int offset,int offlen,String8 info){
    const char* mflag = warpflag.string();
    const char* minfo = info.string();
    int ret = do_setFlashInfo(mflag,offset,offlen,minfo);
    return ret;
}
int HiSysManagerService::getFlashInfo(String8 warpflag,int offset,int offlen){
    const char* mflag = warpflag.string();
    int ret = do_getFlashInfo(mflag,offset,offlen);
    return ret;
}
int HiSysManagerService::enableInterface(String8 interfacename){
    const char* mface = interfacename.string();
    int ret = do_enableInterface(mface);
    return ret;
}
int HiSysManagerService::disableInterface(String8 interfacename){
    const char* mface = interfacename.string();
    int ret = do_disableInterface(mface);
    return ret;
}
int HiSysManagerService::addRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw){
    const char* mname = interfacename.string();
    const char* mdst = dst.string();
    const char* mgw = gw.string();
    int ret = do_addRoute(mname,mdst,prefix_length,mgw);
    return ret;
}
int HiSysManagerService::removeRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw){
    const char* mname = interfacename.string();
    const char* mdst = dst.string();
    const char* mgw = gw.string();
    int ret = do_removeRoute(mname,mdst,prefix_length,mgw);
    return ret;
}
int HiSysManagerService::setDefaultRoute(String8 interfacename,int gw){
    const char* mname = interfacename.string();
    int ret = do_setDefaultRoute(mname,gw);
    return ret;
}
int HiSysManagerService::removeDefaultRoute(String8 interfacename){
    const char* mname = interfacename.string();
    int ret = do_removeDefaultRoute(mname);
    return ret;
}
int HiSysManagerService::removeNetRoute(String8 interfacename){
    const char* mname = interfacename.string();
    int ret = do_removeNetRoute(mname);
    return ret;
}

int HiSysManagerService::setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_setHdmiHDCPKey(mtdname,offset,mfilename,datasize);
}
int HiSysManagerService::getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_getHdmiHDCPKey(mtdname,offset,mfilename,datasize);
}


int HiSysManagerService::setHDCPKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_setHDCPKey(mtdname,offset,mfilename,datasize);
}
int HiSysManagerService::getHDCPKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_getHDCPKey(mtdname,offset,mfilename,datasize);
}
int HiSysManagerService::reboot(){
    const char* mcmd = "reboot";
    return system(mcmd);
}
int HiSysManagerService::doQbSnap(){
    const char* mcmd = "andsnap";
    return system(mcmd);
}
int HiSysManagerService::cleanQbFlag(){
    const char* mcmd = "/system/bin/write_raw qbflag clean";
    return system(mcmd);
}
int HiSysManagerService::doInitSh(int type){
    //1-98M 2-98C 0-other
    const char* max_freq = "echo 1000000 >/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq";
    const char* scaling_governor = "echo interactive > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor";
    const char* timer_rate = "echo 200000 > /sys/devices/system/cpu/cpufreq/interactive/timer_rate";
    const char* nandcache = "echo cache off > /proc/nandcache";
    if(type==1||type==2){
        system(max_freq);
        system(scaling_governor);
        system(timer_rate);
        system(nandcache);
    }else{
        system(scaling_governor);
    }
    return 0;
}
int HiSysManagerService::getNetTime(String8 time){
    char* head = "busybox date -s \"";
    char* tail = "\"";
    const char* mcmd = time.string();
    char cmd[1024]={0};
    strcat(cmd,head);
    strcat(cmd,mcmd);
    strcat(cmd,tail);
    return system(cmd);
}
int HiSysManagerService::registerInfo(String8 file){
    const char* filename = file.string();
    char cmd_0[1024]={"himd.l 0xf8ce0000 > "};
    char cmd_1[1024]={"himd.l 0xf8ce0100 >> "};
    char cmd_2[1024]={"himd.l 0xf8ce0200 >> "};
    char cmd_3[1024]={"himd.l 0xf8ce0300 >> "};
    char cmd_4[1024]={"himd.l 0xf8ce0400 >> "};
    char cmd_5[1024]={"himd.l 0xf8ce0500 >> "};
    char cmd_6[1024]={"himd.l 0xf8ce0600 >> "};
    char cmd_7[1024]={"himd.l 0xf8ce0700 >> "};
    char cmd_8[1024]={"himd.l 0xf8ce1800 >> "};
    char cmd_9[1024]={"himd.l 0xf8ccc000 >> "};
    char cmd_10[1024]={"himd.l 0xf8a22000 >> "};
    char cmd_11[1024]={"himd.l 0xf8a22100 >> "};
    char cmd_12[1024]={"himd.l 0xf8a22200 >> "};
    char cmd_13[1024]={"himd.l 0xf8a21000 >> "};
    char cmd_14[1024]={"himd.l 0xf8a20000 >> "};
    strcat(cmd_0,filename);
    strcat(cmd_1,filename);
    strcat(cmd_2,filename);
    strcat(cmd_3,filename);
    strcat(cmd_4,filename);
    strcat(cmd_5,filename);
    strcat(cmd_6,filename);
    strcat(cmd_7,filename);
    strcat(cmd_8,filename);
    strcat(cmd_9,filename);
    strcat(cmd_10,filename);
    strcat(cmd_11,filename);
    strcat(cmd_12,filename);
    strcat(cmd_13,filename);
    strcat(cmd_14,filename);
    system(cmd_0);
    system(cmd_1);
    system(cmd_2);
    system(cmd_3);
    system(cmd_4);
    system(cmd_5);
    system(cmd_6);
    system(cmd_7);
    system(cmd_8);
    system(cmd_9);
    system(cmd_10);
    system(cmd_11);
    system(cmd_12);
    system(cmd_13);
    return system(cmd_14);
}
int HiSysManagerService::startTSTest(String8 path,String8 fmt){
    const char* cmd_hide="echo hide > /proc/msp/hifb0";
    const char* mpath = path.string();
    const char* mfmt = fmt.string();
    char cmd[1024]={"sample_video_test_ts "};
    strcat(cmd,mpath);
    strcat(cmd," ");
    strcat(cmd,mfmt);
    strcat(cmd," &");
    system(cmd);
    return system(cmd_hide);
}
int HiSysManagerService::stopTSTest(){
    const char* cmd_kill = "busybox killall sample_video_test_ts";
    const char* cmd_show = "echo show > /proc/msp/hifb0";
    system(cmd_kill);
    return system(cmd_show);
}
int HiSysManagerService::usbTest(){
    const char* mcmd = "himm 0xf98ac2c0 0x010E0002";
    return system(mcmd);
}
int HiSysManagerService::setSyncRef(){
    const char* cmd_0 = "echo SyncRef=none > /proc/msp/sync00";
    const char* cmd_1 = "echo SyncRef=none > /proc/msp/sync01";
    const char* cmd_2 = "echo SyncRef=none > /proc/msp/sync02";
    const char* cmd_3 = "echo SyncRef=none > /proc/msp/sync03";
    system(cmd_0);
    system(cmd_1);
    system(cmd_2);
    return system(cmd_3);
}
int HiSysManagerService::adjustDevState(String8 device,String8 value){
    const char* mvalue = value.string();
    const char* mdevice = device.string();
    char cmd[1024]={"echo "};
    strcat(cmd,mvalue);
    strcat(cmd," > ");
    strcat(cmd,mdevice);
    return system(cmd);
}

int HiSysManagerService::readDmesg(String8 path){
    char cmd[1024]={"dmesg"};
    const char* mpath = path.string();
    strcat(cmd, " > ");
    strcat(cmd, mpath);
    return system(cmd);
}

int HiSysManagerService::ddrTest(String8 command, String8 filepath){
    const char* mcmd = command.string();
    const char* mfile = filepath.string();
    char cmd[1024]={" "};
    strcpy(cmd, mcmd);
    strcat(cmd," >> ");
    strcat(cmd, mfile);
    strcat(cmd, " &");
    return system(cmd);
}

int HiSysManagerService::sendMediaStart(){
    const char* mcmd = "am broadcast -a android.intent.action.MEDIASERVER_START";
    return system(mcmd);
}
int HiSysManagerService::isSata(){
    const char* mcmd = "busybox find /sys/devices/platform/hiusb-ehci.0/usb1/1-1 -name \"sd*\" >> /mnt/SATA.txt";
    return system(mcmd);
}
int HiSysManagerService::readDebugInfo(){
    const char* mcmd0 = "himd.l 0xf8ce0000 - 0xf8ce0800 > /sdcard/tmp";
    const char* mcmd = "himd.l 0xf8ce1800 - 0xf8ce18ff > /sdcard/tmp1";
    system(mcmd0);
    return system(mcmd);
}
int HiSysManagerService::reloadMAC(String8 mac){
    char cmd[1024]={"busybox ifconfig eth0 hw ether "};
    const char* mmac = mac.string();
    strcat(cmd,mmac);
    return system(cmd);
}
int HiSysManagerService::reloadAPK(String8 path){
    char cmd[1024]={"pm install -r "};
    const char* mpath = path.string();
    strcat(cmd,mpath);
    return system(cmd);
}
int HiSysManagerService::writeRaw(String8 flag,String8 info){
	const char* pflag[6]={"fastboot", "bootargs", "recovery", "baseparam", "kernel", "system"};
    char cmd[1024]={"/system/bin/write_raw "};
    const char* mflag = flag.string();
    int count = 0;
    for(count = 0;count<6;count++){
        if(strcmp(pflag[count],mflag)==0)
           return -1;
    }
    const char* minfo = info.string();
    strcat(cmd,mflag);
    strcat(cmd," ");
    strcat(cmd,minfo);
    return system(cmd);
}
int HiSysManagerService::setHimm(String8 info){
    char cmd[1024]={"himm "};
    const char* minfo = info.string();
    strcat(cmd,minfo);
    return system(cmd);
}
int HiSysManagerService::enableCapable(int type){
    char cmd0[1024]={"chmod 777 /dev/capable"};
    char cmd1[1024]={"chmod 600 /dev/capable"};
    if(type==0){
        return system(cmd0);
    }else{
        return system(cmd1);
    }
}
int HiSysManagerService::recoveryIPTV(String8 path,String8 file){
	const char* mpath = path.string();
	const char* mfile = file.string();
	char cmd0[1024]={"mkdir -p /private/iptv"};
	char cmd1[1024]={"echo "};
	char cmd2[1024]={"cp -rfp "};
	char cmd3[1024]={"echo "};
	strcat(cmd1,mpath);
	strcat(cmd1,"> /private/iptv/Path");
	strcat(cmd2,mpath);
	strcat(cmd2," /private/iptv");
	strcat(cmd3,mfile);
	strcat(cmd3," > /private/iptv/FileName");
	system(cmd0);
	system(cmd1);
	system(cmd2);
	return system(cmd3);
}
int HiSysManagerService::setDRMKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_setDRMKey(mtdname,offset,mfilename,datasize);
}
int HiSysManagerService::getDRMKey(String8 tdname,int offset,String8 filename,int datasize){
    const char* mtdname = tdname.string();
    const char* mfilename = filename.string();
    return do_getDRMKey(mtdname,offset,mfilename,datasize);
}
int HiSysManagerService::userDataRestoreIptv(){
    const char* cmd0 = "system/bin/IptvRestore.sh";
    return system(cmd0);
}
int HiSysManagerService::setUIAsyncCompose(int mode){
    if(mode){
        property_set("service.graphic.async.compose","true");
    }else{
        property_set("service.graphic.async.compose","false");
    }
    return 1;
}
};
