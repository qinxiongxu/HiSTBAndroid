#define LOG_NDEBUG 0

#include "utils/Log.h"

#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <unistd.h>
#include <fcntl.h>
#include <utils/threads.h>
#include <cutils/properties.h>
#include "jni.h"
#include <utils/Log.h>
#include "JNIHelp.h"
#include "HiSysManagerClient.h"
#include <android_runtime/AndroidRuntime.h>
#include "utils/Errors.h"  // for status_t
#include "utils/KeyedVector.h"
#include "utils/String8.h"
#include <binder/Parcel.h>

// ----------------------------------------------------------------------------

using namespace android;

// ----------------------------------------------------------------------------
struct fields_t {
    jfieldID    context;
};
static fields_t fields;
static jint com_hisilicon_android_hisysmanager_HiSysManager_upgrade(JNIEnv *env, jobject clazz, jstring path)
{
    //    const sp<IHiSysManagerService>& service = HiSysManagerClient::getSysManagerService();
    //    if(service==0)
    //        return -1;
    //    sp<IBinder> binder = defaultServiceManager()->getService(String16("HiSysManager"));
    //    sp<IHiSysManagerService> service = interface_cast<IHiSysManagerService>(binder);
    //    if (service.get() == NULL) {
    //        return -1;
    //    }
    const char* szStr = (env)->GetStringUTFChars(path, 0 );
    String8 mpath = String8(szStr);
    (env)->ReleaseStringUTFChars(path, szStr );
    return HiSysManagerClient().upgrade(mpath);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_reset(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().reset();
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_updateLogo(JNIEnv *env, jobject clazz, jstring path)
{
    const char* szStr = (env)->GetStringUTFChars(path, 0 );
    String8 mpath = String8(szStr);
    (env)->ReleaseStringUTFChars(path, szStr );
    return HiSysManagerClient().updateLogo(mpath);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_enterSmartStandby(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().enterSmartStandby();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_quitSmartStandby(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().quitSmartStandby();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_setFlashInfo(JNIEnv *env, jobject clazz, jstring warpflag,jint offset,jint offlen, jstring info){
    const char* c_flag = (env)->GetStringUTFChars(warpflag, 0 );
    const char* c_info = (env)->GetStringUTFChars(info, 0 );
    String8 m_flag = String8(c_flag);
    String8 m_info = String8(c_info);
    (env)->ReleaseStringUTFChars(warpflag, c_flag);
    (env)->ReleaseStringUTFChars(info, c_info);
    return HiSysManagerClient().setFlashInfo(m_flag,offset,offlen,m_info);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_getFlashInfo(JNIEnv *env, jobject clazz, jstring warpflag,jint offset,jint offlen){
    const char* c_flag = (env)->GetStringUTFChars(warpflag, 0 );
    String8 m_flag = String8(c_flag);
    (env)->ReleaseStringUTFChars(warpflag, c_flag);
    return HiSysManagerClient().getFlashInfo(m_flag,offset,offlen);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_enableInterface(JNIEnv *env, jobject clazz, jstring interfacename){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    String8 m_name = String8(c_facename);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    return HiSysManagerClient().enableInterface(m_name);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_disableInterface(JNIEnv *env, jobject clazz, jstring interfacename){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    String8 m_name = String8(c_facename);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    return HiSysManagerClient().disableInterface(m_name);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_addRoute(JNIEnv *env, jobject clazz, jstring interfacename,jstring dst,jint lenth,jstring gw){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    const char* c_dst = (env)->GetStringUTFChars(dst, 0 );
    const char* c_gw = (env)->GetStringUTFChars(gw, 0 );
    String8 m_name = String8(c_facename);
    String8 m_dst = String8(c_dst);
    String8 m_gw = String8(c_gw);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    (env)->ReleaseStringUTFChars(dst, c_dst);
    (env)->ReleaseStringUTFChars(gw, c_gw);
    return HiSysManagerClient().addRoute(m_name,m_dst,lenth,m_gw);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_removeRoute(JNIEnv *env, jobject clazz, jstring interfacename,jstring dst,jint lenth,jstring gw){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    const char* c_dst = (env)->GetStringUTFChars(dst, 0 );
    const char* c_gw = (env)->GetStringUTFChars(gw, 0 );
    String8 m_name = String8(c_facename);
    String8 m_dst = String8(c_dst);
    String8 m_gw = String8(c_gw);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    (env)->ReleaseStringUTFChars(dst, c_dst);
    (env)->ReleaseStringUTFChars(gw, c_gw);
    return HiSysManagerClient().removeRoute(m_name,m_dst,lenth,m_gw);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_setDefaultRoute(JNIEnv *env, jobject clazz, jstring interfacename, jint gw){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    String8 m_name = String8(c_facename);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    return HiSysManagerClient().setDefaultRoute(m_name,gw);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_removeDefaultRoute(JNIEnv *env, jobject clazz,jstring interfacename){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    String8 m_name = String8(c_facename);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    //return mclient->removeDefaultRoute(m_name);
    return HiSysManagerClient().removeDefaultRoute(m_name);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_removeNetRoute(JNIEnv *env, jobject clazz,jstring interfacename){
    const char* c_facename = (env)->GetStringUTFChars(interfacename, 0 );
    String8 m_name = String8(c_facename);
    (env)->ReleaseStringUTFChars(interfacename, c_facename);
    return HiSysManagerClient().removeNetRoute(m_name);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_setHdmiHDCPKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().setHdmiHDCPKey(m_tdname,offset,m_filename,datasize);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_getHdmiHDCPKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().getHdmiHDCPKey(m_tdname,offset,m_filename,datasize);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_setHDCPKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().setHDCPKey(m_tdname,offset,m_filename,datasize);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_getHDCPKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().getHDCPKey(m_tdname,offset,m_filename,datasize);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_reboot(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().reboot();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_doQbSnap(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().doQbSnap();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_cleanQbFlag(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().cleanQbFlag();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_doInitSh(JNIEnv *env, jobject clazz,jint type){
    return HiSysManagerClient().doInitSh(type);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_getNetTime(JNIEnv *env, jobject clazz,jstring t_format){
    const char* c_time = (env)->GetStringUTFChars(t_format, 0 );
    String8 m_time = String8(c_time);
    (env)->ReleaseStringUTFChars(t_format, c_time);
    return HiSysManagerClient().getNetTime(m_time);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_registerInfo(JNIEnv *env, jobject clazz,jstring filename){
    const char* c_file = (env)->GetStringUTFChars(filename, 0 );
    String8 m_file = String8(c_file);
    (env)->ReleaseStringUTFChars(filename, c_file);
    return HiSysManagerClient().registerInfo(m_file);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_startTSTest(JNIEnv *env, jobject clazz,jstring path,jstring resolution){
    const char* c_path = (env)->GetStringUTFChars(path, 0);
    const char* c_fmt = (env)->GetStringUTFChars(resolution, 0);
    String8 m_path = String8(c_path);
    String8 m_fmt = String8(c_fmt);
    (env)->ReleaseStringUTFChars(path, c_path);
    (env)->ReleaseStringUTFChars(resolution, c_fmt);
    return HiSysManagerClient().startTSTest(m_path,m_fmt);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_stopTSTest(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().stopTSTest();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_usbTest(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().usbTest();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_setSyncRef(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().setSyncRef();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_adjustDevState(JNIEnv *env, jobject clazz,jstring value,jstring device){
    const char* c_value = (env)->GetStringUTFChars(value, 0);
    const char* c_device = (env)->GetStringUTFChars(device, 0);
    String8 m_value = String8(c_value);
    String8 m_device = String8(c_device);
    (env)->ReleaseStringUTFChars(value, c_value);
    (env)->ReleaseStringUTFChars(device, c_device);
    return HiSysManagerClient().adjustDevState(m_value,m_device);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_readDmesg(JNIEnv *env,jobject clazz,jstring path){
    const char* c_info = (env)->GetStringUTFChars(path, 0);
    String8 m_info = String8(c_info);
    (env)->ReleaseStringUTFChars(path, c_info);
    return HiSysManagerClient().readDmesg(m_info);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_ddrTest(JNIEnv *env,jobject clazz,jstring cmd,jstring file){
    const char* c_cmd = (env)->GetStringUTFChars(cmd, 0);
    const char* c_file = (env)->GetStringUTFChars(file, 0);
    String8 m_cmd = String8(c_cmd);
    String8 m_file = String8(c_file);
    (env)->ReleaseStringUTFChars(cmd, c_cmd);
    (env)->ReleaseStringUTFChars(file, c_file);
    return HiSysManagerClient().ddrTest(m_cmd, m_file);
}

static jint com_hisilicon_android_hisysmanager_HiSysManager_sendMediaStart(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().sendMediaStart();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_isSata(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().isSata();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_readDebugInfo(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().readDebugInfo();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_reloadMAC(JNIEnv *env, jobject clazz ,jstring mac){
    const char* c_info = (env)->GetStringUTFChars(mac, 0);
    String8 m_mac = String8(c_info);
    (env)->ReleaseStringUTFChars(mac, c_info);
    return HiSysManagerClient().reloadMAC(m_mac);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_reloadAPK(JNIEnv *env, jobject clazz,jstring path){
    const char* c_info = (env)->GetStringUTFChars(path, 0);
    String8 m_info = String8(c_info);
    (env)->ReleaseStringUTFChars(path, c_info);
    return HiSysManagerClient().reloadAPK(m_info);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_writeRaw(JNIEnv *env, jobject clazz,jstring flag,jstring info){
    const char* c_flag = (env)->GetStringUTFChars(flag, 0);
    const char* c_info = (env)->GetStringUTFChars(info, 0);
    String8 m_flag = String8(c_flag);
    String8 m_info = String8(c_info);
    (env)->ReleaseStringUTFChars(flag, c_flag);
    (env)->ReleaseStringUTFChars(info, c_info);
    return HiSysManagerClient().writeRaw(m_flag,m_info);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_setHimm(JNIEnv *env, jobject clazz,jstring info){
    const char* c_info = (env)->GetStringUTFChars(info, 0);
    String8 m_info = String8(c_info);
    (env)->ReleaseStringUTFChars(info, c_info);
    return HiSysManagerClient().setHimm(m_info);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_enableCapable(JNIEnv *env, jobject clazz,jint type){
    return HiSysManagerClient().enableCapable(type);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_recoveryIPTV(JNIEnv *env, jobject clazz,jstring path,jstring file){
    const char* c_path = (env)->GetStringUTFChars(path, 0);
    const char* c_file = (env)->GetStringUTFChars(file, 0);
    String8 m_path = String8(c_path);
    String8 m_file = String8(c_file);
    (env)->ReleaseStringUTFChars(path, c_path);
    (env)->ReleaseStringUTFChars(file, c_file);
    return HiSysManagerClient().recoveryIPTV(m_path,m_file);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_userDataRestoreIptv(JNIEnv *env, jobject clazz){
    return HiSysManagerClient().userDataRestoreIptv();
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_setDRMKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().setDRMKey(m_tdname,offset,m_filename,datasize);
}
static jint com_hisilicon_android_hisysmanager_HiSysManager_getDRMKey(JNIEnv *env, jobject clazz,jstring tdname,jint offset,jstring filename,jint datasize){
    const char* c_tdname = (env)->GetStringUTFChars(tdname, 0 );
    const char* c_filename = (env)->GetStringUTFChars(filename, 0 );
    String8 m_tdname = String8(c_tdname);
    String8 m_filename = String8(c_filename);
    (env)->ReleaseStringUTFChars(tdname, c_tdname);
    (env)->ReleaseStringUTFChars(filename, c_filename);
    return HiSysManagerClient().getDRMKey(m_tdname,offset,m_filename,datasize);
}
static JNINativeMethod gMethods[] = {
        {"upgrade", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_upgrade},
        {"reset", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_reset},
        {"native_updateLogo", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_updateLogo},
        {"enterSmartStandby", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_enterSmartStandby},
        {"quitSmartStandby", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_quitSmartStandby},
        {"setFlashInfo", "(Ljava/lang/String;IILjava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setFlashInfo},
        {"getFlashInfo", "(Ljava/lang/String;II)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_getFlashInfo},
        {"enableInterface", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_enableInterface},
        {"disableInterface", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_disableInterface},
        {"addRoute", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_addRoute},
        {"removeRoute", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_removeRoute},
        {"setDefaultRoute", "(Ljava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setDefaultRoute},
        {"removeDefaultRoute", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_removeDefaultRoute},
        {"removeNetRoute", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_removeNetRoute},
        {"setHDCPKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setHDCPKey},
        {"getHDCPKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_getHDCPKey},
        {"native_setHdmiHDCPKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setHdmiHDCPKey},
        {"native_getHdmiHDCPKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_getHdmiHDCPKey},
        {"reboot", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_reboot},
        {"doQbSnap", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_doQbSnap},
        {"cleanQbFlag", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_cleanQbFlag},
        {"doInitSh", "(I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_doInitSh},
        {"getNetTime", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_getNetTime},
        {"registerInfo", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_registerInfo},
        {"startTSTest", "(Ljava/lang/String;Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_startTSTest},
        {"stopTSTest", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_stopTSTest},
        {"usbTest", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_usbTest},
        {"setSyncRef", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setSyncRef},
        {"adjustDevState", "(Ljava/lang/String;Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_adjustDevState},
        {"readDmesg", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_readDmesg},
        {"ddrTest", "(Ljava/lang/String;Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_ddrTest},
        {"sendMediaStart", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_sendMediaStart},
        {"isSata", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_isSata},
        {"readDebugInfo", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_readDebugInfo},
        {"reloadMAC", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_reloadMAC},
        {"reloadAPK", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_reloadAPK},
        {"writeRaw", "(Ljava/lang/String;Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_writeRaw},
        {"setHimm", "(Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setHimm},
        {"enableCapable", "(I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_enableCapable},
        {"recoveryIPTV", "(Ljava/lang/String;Ljava/lang/String;)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_recoveryIPTV},
        {"userDataRestoreIptv", "()I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_userDataRestoreIptv},
        {"setDRMKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_setDRMKey},
        {"getDRMKey", "(Ljava/lang/String;ILjava/lang/String;I)I", (void *)com_hisilicon_android_hisysmanager_HiSysManager_getDRMKey},
};

static int register_com_hisilicon_android_hisysmanagerservice(JNIEnv *env)
{
    return AndroidRuntime::registerNativeMethods(env, "com/hisilicon/android/hisysmanager/HiSysManager", gMethods, NELEM(gMethods));
}

jint JNI_OnLoad(JavaVM* vm, void* reserved)
{
    JNIEnv* env = NULL;
    jint result = -1;

    if (vm->GetEnv((void**) &env, JNI_VERSION_1_4) != JNI_OK) {
        return result;
    }

    if(register_com_hisilicon_android_hisysmanagerservice(env) < 0) {
        return result;
    }

    /* success -- return valid version number */
    result = JNI_VERSION_1_4;
    return result;
}
