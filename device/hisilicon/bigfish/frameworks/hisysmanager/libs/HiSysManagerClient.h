#ifndef _HISYSMANAGERCLIENT_H_
#define _HISYSMANAGERCLIENT_H_

#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <binder/IPCThreadState.h>
#include <binder/IServiceManager.h>
#include <binder/ProcessState.h>
#include <binder/IMemory.h>
#include <binder/Parcel.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "IHiSysManagerService.h"

namespace android
{
class HiSysManagerClient: public RefBase
{
public:
    int upgrade(String8 path);
    int reset();
    int updateLogo(String8 path);
    int enterSmartStandby();
    int quitSmartStandby();
    int setFlashInfo(String8 warpflag,int offset,int offlen,String8 info);
    int getFlashInfo(String8 warpflag,int offset,int offlen);
    int enableInterface(String8 interfacename);
    int disableInterface(String8 interfacename);
    int addRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw);
    int removeRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw);
    int setDefaultRoute(String8 interfacename,int gw);
    int removeDefaultRoute(String8 interfacename);
    int removeNetRoute(String8 interfacename);
    int setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    int getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    int setHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    int getHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    int reboot();
    int doQbSnap();
    int cleanQbFlag();
    int doInitSh(int type);//HiRMservice doInitSh
    int getNetTime(String8 t_format);//HiRMservice getNetTime
    int registerInfo(String8 filename);//HiErrorReport
    int startTSTest(String8 path,String8 fmt);//hardwaretest
    int stopTSTest();//hardwaretest
    int usbTest();//hardwaretest
    int setSyncRef();//DualVideoTest
    int adjustDevState(String8 value,String8 device);
    int readDmesg(String8 path);
    int ddrTest(String8 cmd, String8 file);
    int sendMediaStart();
    int isSata();
    int readDebugInfo();
    int reloadMAC(String8 mac);
    int reloadAPK(String8 path);
    int writeRaw(String8 flag,String8 info);
    int setHimm(String8 info);
    int enableCapable(int type);
    int recoveryIPTV(String8 path,String8 file);
    int setDRMKey(String8 tdname,int offset,String8 filename,int datasize);
    int getDRMKey(String8 tdname,int offset,String8 filename,int datasize);
    int userDataRestoreIptv();
    int setUIAsyncCompose(int mode);
    static sp<IHiSysManagerService> & getSysManagerService();
private:
    static sp<IHiSysManagerService> mSysManagerService;
};
};
#endif
