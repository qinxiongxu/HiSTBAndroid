#ifndef _IHISYSMANAGERSERVICE_H_
#define _IHISYSMANAGERSERVICE_H_

#include <stdint.h>
#include <string.h>
#include <sys/types.h>
#include <utils/Errors.h>
#include <binder/IInterface.h>
#include <ui/Rect.h>
#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <utils/Errors.h>
namespace android {

class IHiSysManagerService : public IInterface
{
public:
    DECLARE_META_INTERFACE(HiSysManagerService);
    virtual int upgrade(String8 path) = 0;
    virtual int reset() = 0;
    virtual int updateLogo(String8 path) = 0;
    virtual int enterSmartStandby() = 0;
    virtual int quitSmartStandby() = 0;
    virtual int setFlashInfo(String8 warpflag,int offset,int offlen,String8 info) = 0;
    virtual int getFlashInfo(String8 warpflag,int offset,int offlen) = 0;
    virtual int enableInterface(String8 interfacename) = 0;
    virtual int disableInterface(String8 interfacename) = 0;
    virtual int addRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw) = 0;
    virtual int removeRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw) = 0;
    virtual int setDefaultRoute(String8 interfacename,int gw) = 0;
    virtual int removeDefaultRoute(String8 interfacename) = 0;
    virtual int removeNetRoute(String8 interfacename) = 0;
    virtual int setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int setHDCPKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int getHDCPKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int reboot() = 0;
    virtual int doQbSnap() = 0;
    virtual int cleanQbFlag() = 0;
    virtual int doInitSh(int type) = 0;//HiRMservice doInitSh
    virtual int getNetTime(String8 t_format) = 0;//HiRMservice getNetTime
    virtual int registerInfo(String8 filename) = 0;//HiErrorReport
    virtual int startTSTest(String8 path,String8 fmt) = 0;//hardwaretest
    virtual int stopTSTest() = 0;//hardwaretest
    virtual int usbTest() = 0;//hardwaretest
    virtual int setSyncRef() = 0;//DualVideoTest
    virtual int adjustDevState(String8 value,String8 device)=0;
    virtual int readDmesg(String8 path) = 0;
    virtual int ddrTest(String8 cmd, String8 file) = 0;
    virtual int sendMediaStart() = 0;
    virtual int isSata() = 0;
    virtual int readDebugInfo() = 0;
    virtual int reloadMAC(String8 mac) = 0;
    virtual int reloadAPK(String8 path) = 0;
    virtual int writeRaw(String8 flag,String8 info) = 0;
    virtual int setHimm(String8 info) = 0;
    virtual int enableCapable(int type) = 0;
    virtual int recoveryIPTV(String8 path,String8 file) = 0;
    virtual int setDRMKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int getDRMKey(String8 tdname,int offset,String8 filename,int datasize) = 0;
    virtual int userDataRestoreIptv() = 0;
    virtual int setUIAsyncCompose(int mode) = 0;
};
class BnHiSysManagerService : public BnInterface<IHiSysManagerService>
{
public:
    virtual status_t onTransact( uint32_t code,
        const Parcel& data,
        Parcel* reply,
        uint32_t flags = 0);
};
};
#endif
