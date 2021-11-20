#include <utils/Log.h>
#include <binder/IBinder.h>
#include <binder/IInterface.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include <binder/Parcel.h>
#include "IHiSysManagerService.h"
#include "unistd.h"
namespace android {
enum {
	UPGRADE = IBinder::FIRST_CALL_TRANSACTION + 0,
	RESET,
    UPDATELOGO,
	ENTERSMARTSTANDBY,
	QUITSMARTSTANDBY,
	SETFLASHINFO,
	GETFLASHINFO,
	ENABLEINTERFACE,
	DISABLEINTERFACE,
	ADDROUTE,
	REMOVEROUTE,
	SETDEFAULTROUTE,
	REMOVEDEFAULTROUTE,
	REMOVENETROUTE,
	SETHDMIHDCPKEY,
	GETHDMIHDCPKEY,
	SETHDCPKEY,
	GETHDCPKEY,
	DOREBOOT,
	DOQP,
	DOCLEANQP,
	DOINITSH,
	GETNETTIME,
	REGISTERINFO,
	STARTTSTEST,
	STOPTSTEST,
	USBTEST,
	SETSYNCREF,
	ADJUSTEFFECT,
	READDMESG,
	DDRTEST,
	SENDBROADCAST,
	ISSATA,
	DEBUGINFO,
	SETQPMAC,
	INSTALLQP,
	WRITERAW,
	SETHIMM,
	ENABLECAPABLE,
	RECOVERYIPTV,
	SETDRMKEY,
	GETDRMKEY,
	USERDATARESOURCEIPTV,
	SETUIASYNCCOMPOSE,
};
class BpHiSysManagerService : public BpInterface<IHiSysManagerService>
{
public:

	BpHiSysManagerService(const sp<IBinder>& impl)
	: BpInterface<IHiSysManagerService>(impl)
	  {
	  }
	virtual int upgrade(String8 path)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(path);
		remote()->transact(UPGRADE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int reset()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(RESET, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

    virtual int updateLogo(String8 path)
    {
        Parcel data, reply;
        data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
        data.writeString8(path);
        remote()->transact(UPDATELOGO, data, &reply);
        int32_t ret = reply.readInt32();
        if(ret == 0)
        {
            ret = reply.readInt32();
        }
        else
        {
            ret = -1;
        }
        return ret;
    }

	virtual int enterSmartStandby()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(ENTERSMARTSTANDBY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int quitSmartStandby()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(QUITSMARTSTANDBY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int setFlashInfo(String8 flag,int offset,int offlen,String8 info)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(flag);
		data.writeInt32(offset);
		data.writeInt32(offlen);
		data.writeString8(info);
		remote()->transact(SETFLASHINFO, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int getFlashInfo(String8 flag,int offset,int offlen)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(flag);
		data.writeInt32(offset);
		data.writeInt32(offlen);
		remote()->transact(GETFLASHINFO, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int enableInterface(String8 interfacename)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		remote()->transact(ENABLEINTERFACE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int disableInterface(String8 interfacename)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		remote()->transact(DISABLEINTERFACE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int addRoute(String8 interfacename,String8 dst, int prefix_length,String8 gw)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		data.writeString8(dst);
		data.writeInt32(prefix_length);
		data.writeString8(gw);
		remote()->transact(ADDROUTE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int removeRoute(String8 interfacename,String8 dst, int prefix_length,String8 gw)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		data.writeString8(dst);
		data.writeInt32(prefix_length);
		data.writeString8(gw);
		remote()->transact(REMOVEROUTE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int setDefaultRoute(String8 interfacename,int gw)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		data.writeInt32(gw);
		remote()->transact(SETDEFAULTROUTE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int removeDefaultRoute(String8 interfacename)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		remote()->transact(REMOVEDEFAULTROUTE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int removeNetRoute(String8 interfacename)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(interfacename);
		remote()->transact(REMOVENETROUTE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

	virtual int setHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(SETHDMIHDCPKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int getHdmiHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(GETHDMIHDCPKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

	virtual int setHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(SETHDCPKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int getHDCPKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(GETHDCPKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int reboot()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(DOREBOOT, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int doQbSnap()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(DOQP, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int cleanQbFlag()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(DOCLEANQP, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int doInitSh(int type)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeInt32(type);
		remote()->transact(DOINITSH, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int getNetTime(String8 time)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(time);
		remote()->transact(GETNETTIME, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int registerInfo(String8 file)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(file);
		remote()->transact(REGISTERINFO, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int startTSTest(String8 path,String8 fmt)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(path);
		data.writeString8(fmt);
		remote()->transact(STARTTSTEST, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int stopTSTest()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(STOPTSTEST, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int usbTest()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(USBTEST, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int setSyncRef()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(SETSYNCREF, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int adjustDevState(String8 value,String8 device){
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(value);
		data.writeString8(device);
		remote()->transact(ADJUSTEFFECT, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

	virtual int readDmesg(String8 path)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(path);
		remote()->transact(READDMESG, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

	virtual int ddrTest(String8 cmd, String8 file)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(cmd);
		data.writeString8(file);
		remote()->transact(DDRTEST, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}

	virtual int sendMediaStart()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(SENDBROADCAST, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int isSata()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(ISSATA, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int readDebugInfo()
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		remote()->transact(DEBUGINFO, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int reloadMAC(String8 mac)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(mac);
		remote()->transact(SETQPMAC, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int reloadAPK(String8 path)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(path);
		remote()->transact(INSTALLQP, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int writeRaw(String8 flag,String8 info)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(flag);
		data.writeString8(info);
		remote()->transact(WRITERAW, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int setHimm(String8 info)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(info);
		remote()->transact(SETHIMM, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int enableCapable(int type)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeInt32(type);
		remote()->transact(ENABLECAPABLE, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int recoveryIPTV(String8 path,String8 file)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(path);
		data.writeString8(file);
		remote()->transact(RECOVERYIPTV, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int setDRMKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(SETDRMKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
	virtual int getDRMKey(String8 tdname,int offset,String8 filename,int datasize)
	{
		Parcel data, reply;
		data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
		data.writeString8(tdname);
		data.writeInt32(offset);
		data.writeString8(filename);
		data.writeInt32(datasize);
		remote()->transact(GETDRMKEY, data, &reply);
		int32_t ret = reply.readInt32();
		if(ret == 0)
		{
			ret = reply.readInt32();
		}
		else
		{
			ret = -1;
		}
		return ret;
	}
    virtual int userDataRestoreIptv()
    {
        Parcel data, reply;
        data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
        remote()->transact(USERDATARESOURCEIPTV, data, &reply);
        int32_t ret = reply.readInt32();
        if(ret == 0)
        {
            ret = reply.readInt32();
        }
        else
        {
            ret = -1;
        }
        return ret;
        }
    virtual int setUIAsyncCompose(int mode)
    {
        Parcel data, reply;
        data.writeInterfaceToken(IHiSysManagerService::getInterfaceDescriptor());
        data.writeInt32(mode);
        remote()->transact(SETUIASYNCCOMPOSE, data, &reply);
        int32_t ret = reply.readInt32();
        if(ret == 0)
        {
            ret = reply.readInt32();
        }
        else
        {
            ret = -1;
        }
        return ret;
        }
    };

IMPLEMENT_META_INTERFACE(HiSysManagerService, "android.os.HiSysManagerService");

status_t BnHiSysManagerService::onTransact( uint32_t code, const Parcel& data, Parcel* reply, uint32_t flags)
{
	int ret = -1;
	String8 path;
	String8 name;
	String8 dst;
	String8 gw;
	String8 info;
	int length;
	int offset;
	int offlen;
	int type;
	switch(code)
	{
	case UPGRADE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		ret = upgrade(path);
		reply->writeInt32(ret);
		return NO_ERROR;
	case RESET:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = reset();
		reply->writeInt32(ret);
		return NO_ERROR;
        case UPDATELOGO:
            CHECK_INTERFACE(IHiSysManagerService, data, reply);
            path = data.readString8();
            ret = updateLogo(path);
            reply->writeInt32(ret);
            return NO_ERROR;
	case ENTERSMARTSTANDBY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = enterSmartStandby();
		reply->writeInt32(ret);
		return NO_ERROR;
	case QUITSMARTSTANDBY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = quitSmartStandby();
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETFLASHINFO:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		offlen = data.readInt32();
		info = data.readString8();
		ret = setFlashInfo(name,offset,offlen,info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case GETFLASHINFO:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		offlen = data.readInt32();
		ret = getFlashInfo(name,offset,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case ENABLEINTERFACE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		ret = enableInterface(name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case DISABLEINTERFACE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		ret = disableInterface(name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case ADDROUTE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		dst = data.readString8();
		length = data.readInt32();
		gw = data.readString8();
		ret = addRoute(name,dst,length,gw);
		reply->writeInt32(ret);
		return NO_ERROR;
	case REMOVEROUTE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		dst = data.readString8();
		length = data.readInt32();
		gw = data.readString8();
		ret = removeRoute(name,dst,length,gw);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETDEFAULTROUTE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		length = data.readInt32();
		ret = setDefaultRoute(name,length);
		reply->writeInt32(ret);
		return NO_ERROR;
	case REMOVEDEFAULTROUTE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		ret = removeDefaultRoute(name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case REMOVENETROUTE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		ret = removeNetRoute(name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETHDMIHDCPKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = setHdmiHDCPKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case GETHDMIHDCPKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = getHdmiHDCPKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETHDCPKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = setHDCPKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case GETHDCPKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = getHDCPKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case DOREBOOT:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = reboot();
		reply->writeInt32(ret);
		return NO_ERROR;
	case DOQP:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = doQbSnap();
		reply->writeInt32(ret);
		return NO_ERROR;
	case DOCLEANQP:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = cleanQbFlag();
		reply->writeInt32(ret);
		return NO_ERROR;
	case DOINITSH:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		type = data.readInt32();
		ret = doInitSh(type);
		reply->writeInt32(ret);
		return NO_ERROR;
	case GETNETTIME:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		ret = getNetTime(name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case REGISTERINFO:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		ret = registerInfo(path);
		reply->writeInt32(ret);
		return NO_ERROR;
	case STARTTSTEST:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		name = data.readString8();
		ret = startTSTest(path,name);
		reply->writeInt32(ret);
		return NO_ERROR;
	case STOPTSTEST:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = stopTSTest();
		reply->writeInt32(ret);
		return NO_ERROR;
	case USBTEST:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = usbTest();
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETSYNCREF:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = setSyncRef();
		reply->writeInt32(ret);
		return NO_ERROR;
	case ADJUSTEFFECT:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		info = data.readString8();
		path = data.readString8();
		ret = adjustDevState(info,path);
		reply->writeInt32(ret);
		return NO_ERROR;
	case READDMESG:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		ret = readDmesg(path);
		reply->writeInt32(ret);
		return NO_ERROR;
	case DDRTEST:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		info = data.readString8();
		ret = ddrTest(path, info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SENDBROADCAST:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = sendMediaStart();
		reply->writeInt32(ret);
		return NO_ERROR;
	case ISSATA:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = isSata();
		reply->writeInt32(ret);
		return NO_ERROR;
	case DEBUGINFO:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		ret = readDebugInfo();
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETQPMAC:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		info = data.readString8();
		ret = reloadMAC(info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case INSTALLQP:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		ret = reloadAPK(path);
		reply->writeInt32(ret);
		return NO_ERROR;
	case WRITERAW:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		info = data.readString8();
		ret = writeRaw(path,info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETHIMM:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		info = data.readString8();
		ret = setHimm(info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case ENABLECAPABLE:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		type = data.readInt32();
		ret = enableCapable(type);
		reply->writeInt32(ret);
		return NO_ERROR;
	case RECOVERYIPTV:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		path = data.readString8();
		info = data.readString8();
		ret = recoveryIPTV(path,info);
		reply->writeInt32(ret);
		return NO_ERROR;
	case SETDRMKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = setDRMKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
	case GETDRMKEY:
		CHECK_INTERFACE(IHiSysManagerService, data, reply);
		name = data.readString8();
		offset = data.readInt32();
		path = data.readString8();
		offlen = data.readInt32();
		ret = getDRMKey(name,offset,path,offlen);
		reply->writeInt32(ret);
		return NO_ERROR;
    case USERDATARESOURCEIPTV:
        CHECK_INTERFACE(IHiSysManagerService, data, reply);
        ret = userDataRestoreIptv();
        reply->writeInt32(ret);
        return NO_ERROR;
    case SETUIASYNCCOMPOSE:
        CHECK_INTERFACE(IHiSysManagerService, data, reply);
        offlen = data.readInt32();
        ret = setUIAsyncCompose(offlen);
        reply->writeInt32(ret);
        return NO_ERROR;
	default:
		return BBinder::onTransact(code, data, reply, flags);
	}
}
};  // namespace android
