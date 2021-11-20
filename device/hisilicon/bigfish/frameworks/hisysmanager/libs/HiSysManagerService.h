#ifndef _HISYSMANAGERSERVICE_H_
#define _HISYSMANAGERSERVICE_H_

//#include <stdint.h>
//#include <cutils/memory.h>
//#include <utils/Log.h>
//#include <binder/IPCThreadState.h>
//#include <binder/ProcessState.h>
//#include <binder/IServiceManager.h>
//#include "IHiSysManagerService.h"
#include <cutils/memory.h>
#include <utils/Log.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include "IHiSysManagerService.h"


namespace android
{
class HiSysManagerService: public BnHiSysManagerService
{
public:
    HiSysManagerService();
    ~HiSysManagerService();
    static void instantiate();
    virtual int upgrade(String8 path);
    virtual int reset();
    virtual int updateLogo(String8 path);
    virtual int enterSmartStandby();
    virtual int quitSmartStandby();
    virtual int setFlashInfo(String8 warpflag,int offset,int offlen,String8 info);
    virtual int getFlashInfo(String8 warpflag,int offset,int offlen);
    virtual int enableInterface(String8 interfacename);
    virtual int disableInterface(String8 interfacename);
    virtual int addRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw);
    virtual int removeRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw);
    virtual int setDefaultRoute(String8 interfacename,int gw);
    virtual int removeDefaultRoute(String8 interfacename);
    virtual int removeNetRoute(String8 interfacename);
    virtual int setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int setHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int getHDCPKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int reboot();
    virtual int doQbSnap();
    virtual int cleanQbFlag();
    virtual int doInitSh(int type);//HiRMservice doInitSh
    virtual int getNetTime(String8 t_format);//HiRMservice getNetTime
    virtual int registerInfo(String8 filename);//HiErrorReport
    virtual int startTSTest(String8 path,String8 fmt);//hardwaretest
    virtual int stopTSTest();//hardwaretest
    virtual int usbTest();//hardwaretest
    virtual int setSyncRef();//DualVideoTest
    virtual int adjustDevState(String8 value,String8 device);
    virtual int readDmesg(String8 path);
    virtual int ddrTest(String8 cmd, String8 file);
    virtual int sendMediaStart();
    virtual int isSata();
    virtual int readDebugInfo();
    virtual int reloadMAC(String8 mac);
    virtual int reloadAPK(String8 path);
    virtual int writeRaw(String8 flag,String8 info);
    virtual int setHimm(String8 info);
    virtual int enableCapable(int type);
    virtual int recoveryIPTV(String8 path,String8 file);
    virtual int setDRMKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int getDRMKey(String8 tdname,int offset,String8 filename,int datasize);
    virtual int userDataRestoreIptv();
    virtual int setUIAsyncCompose(int mode);
};
};
#endif /*SysManagerService_H*/
