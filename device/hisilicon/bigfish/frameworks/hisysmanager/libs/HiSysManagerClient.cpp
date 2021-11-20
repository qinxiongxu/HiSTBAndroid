#include <utils/Log.h>
#include <binder/IServiceManager.h>
#include <utils/threads.h>
#include <binder/IMemory.h>
#include <binder/Parcel.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IInterface.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <binder/Parcel.h>
#include "HiSysManagerClient.h"

namespace android
{
sp<IHiSysManagerService> HiSysManagerClient::mSysManagerService;

sp<IHiSysManagerService>& HiSysManagerClient::getSysManagerService()
{
    if(mSysManagerService.get() == 0)
    {
        sp<IServiceManager> sm = defaultServiceManager();
        sp<IBinder> binder ;
        do
        {
        binder = sm->getService(String16("HiSysManager"));
        if (binder != 0)
        {
        break;
        }
        usleep(500000);
        } while(true);
        mSysManagerService = interface_cast<IHiSysManagerService>(binder);
    }
    return mSysManagerService;
}

int HiSysManagerClient::upgrade(String8 path)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->upgrade(path);
    }
    return ret;
}
int HiSysManagerClient::reset()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->reset();
    }
    return ret;
}

int HiSysManagerClient::updateLogo(String8 path)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->updateLogo(path);
    }
    return ret;
}

int HiSysManagerClient::enterSmartStandby()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->enterSmartStandby();
    }
    return ret;
}
int HiSysManagerClient::quitSmartStandby()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->quitSmartStandby();
    }
    return ret;
}
int HiSysManagerClient::setFlashInfo(String8 warpflag,int offset,int offlen,String8 info)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setFlashInfo( warpflag, offset, offlen, info);
    }
    return ret;
}
int HiSysManagerClient::getFlashInfo(String8 warpflag,int offset,int offlen)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->getFlashInfo( warpflag, offset, offlen);
    }
    return ret;
}
int HiSysManagerClient::enableInterface(String8 interfacename)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->enableInterface( interfacename);
    }
    return ret;
}
int HiSysManagerClient::disableInterface(String8 interfacename)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->disableInterface( interfacename);
    }
    return ret;
}
int HiSysManagerClient::addRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->addRoute( interfacename, dst, prefix_length, gw);
    }
    return ret;
}
int HiSysManagerClient::removeRoute(String8 interfacename,String8 dst,int prefix_length,String8 gw)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->removeRoute( interfacename, dst, prefix_length, gw);
    }
    return ret;
}
int HiSysManagerClient::setDefaultRoute(String8 interfacename,int gw)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setDefaultRoute( interfacename, gw);
    }
    return ret;
}
int HiSysManagerClient::removeDefaultRoute(String8 interfacename)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->removeDefaultRoute( interfacename);
    }
    return ret;
}
int HiSysManagerClient::removeNetRoute(String8 interfacename)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->removeNetRoute( interfacename);
    }
    return ret;
}

int HiSysManagerClient::setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setHdmiHDCPKey(tdname,offset,filename,datasize);
    }
    return ret;
}
int HiSysManagerClient::getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->getHdmiHDCPKey(tdname,offset,filename,datasize);
    }
    return ret;
}

int HiSysManagerClient::setHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setHDCPKey(tdname,offset,filename,datasize);
    }
    return ret;
}
int HiSysManagerClient::getHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->getHDCPKey(tdname,offset,filename,datasize);
    }
    return ret;
}
int HiSysManagerClient::reboot()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->reboot();
    }
    return ret;
}
int HiSysManagerClient::doQbSnap()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->doQbSnap();
    }
    return ret;
}
int HiSysManagerClient::cleanQbFlag()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->cleanQbFlag();
    }
    return ret;
}
int HiSysManagerClient::doInitSh(int type)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->doInitSh(type);
    }
    return ret;
}
int HiSysManagerClient::getNetTime(String8 time)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->getNetTime(time);
    }
    return ret;
}
int HiSysManagerClient::registerInfo(String8 file)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->registerInfo(file);
    }
    return ret;
}
int HiSysManagerClient::startTSTest(String8 path,String8 fmt)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->startTSTest(path,fmt);
    }
    return ret;
}
int HiSysManagerClient::stopTSTest()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->stopTSTest();
    }
    return ret;
}
int HiSysManagerClient::setSyncRef()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setSyncRef();
    }
    return ret;
}
int HiSysManagerClient::usbTest()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->usbTest();
    }
    return ret;
}
int HiSysManagerClient::adjustDevState(String8 value,String8 device)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->adjustDevState(value,device);
    }
    return ret;
}

int HiSysManagerClient::readDmesg(String8 path)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->readDmesg(path);
    }
    return ret;
}

int HiSysManagerClient::ddrTest(String8 cmd, String8 file)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->ddrTest(cmd, file);
    }
    return ret;
}

int HiSysManagerClient::sendMediaStart()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->sendMediaStart();
    }
    return ret;
}
int HiSysManagerClient::isSata()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->isSata();
    }
    return ret;
}
int HiSysManagerClient::readDebugInfo()
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->readDebugInfo();
    }
    return ret;
}
int HiSysManagerClient::reloadMAC(String8 mac)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->reloadMAC(mac);
    }
    return ret;
}
int HiSysManagerClient::reloadAPK(String8 path)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->reloadAPK(path);
    }
    return ret;
}
int HiSysManagerClient::writeRaw(String8 flag,String8 info)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->writeRaw(flag,info);
    }
    return ret;
}
int HiSysManagerClient::setHimm(String8 info)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setHimm(info);
    }
    return ret;
}
int HiSysManagerClient::enableCapable(int type)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->enableCapable(type);
    }
    return ret;
}
int HiSysManagerClient::recoveryIPTV(String8 path,String8 file)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->recoveryIPTV(path,file);
    }
    return ret;
}
int HiSysManagerClient::setDRMKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setDRMKey(tdname,offset,filename,datasize);
    }
    return ret;
}
int HiSysManagerClient::getDRMKey(String8 tdname,int offset,String8 filename,int datasize)
{
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->getDRMKey(tdname,offset,filename,datasize);
    }
    return ret;
}
int  HiSysManagerClient::userDataRestoreIptv(){
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->userDataRestoreIptv();
    }
    return ret;
}
int  HiSysManagerClient::setUIAsyncCompose(int mode){
    int ret = -1;
    const sp<IHiSysManagerService>& ps = getSysManagerService();
    if(ps != 0)
    {
        ret = ps->setUIAsyncCompose(mode);
    }
    return ret;
}
};
//end namespace
