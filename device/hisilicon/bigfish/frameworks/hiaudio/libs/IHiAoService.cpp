#include <utils/Log.h>
#include <binder/IBinder.h>
#include <binder/IInterface.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include <binder/Parcel.h>
#include "IHiAoService.h"
#include <stdint.h>
namespace android
{
  enum {
    SETAUDIOPORT = IBinder::FIRST_CALL_TRANSACTION,
    GETAUDIOPORT,
    SETBLUERAYHBR,
    STARTCARDPLAY,
    STOPCARDPLAY,
    SETENTERSMAERTSUSPEND,
    SETSOUNDVOLUME,
  };

  class BpHiAoService : public BpInterface<IHiAoService>
  {
    public :

      BpHiAoService(const sp<IBinder>& impl)
        : BpInterface<IHiAoService>(impl)
      {
      }

      virtual void startCardPlay()
      {
          ALOGI("startCardPlay");
          Parcel data,reply;
          data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
          remote()->transact(STARTCARDPLAY,data, &reply,IBinder::FLAG_ONEWAY);
      }

      virtual void stopCardPlay()
      {
          Parcel data,reply;
          data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
          remote()->transact(STOPCARDPLAY,data, &reply,IBinder::FLAG_ONEWAY);
      }

      virtual int setUnfAudioPort(int port,int mode)
      {
        Parcel data,reply;
        data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
        data.writeInt32(port);
        data.writeInt32(mode);
        remote()->transact(SETAUDIOPORT,data, &reply);
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
      virtual int getUnfAudioPort(int port)
      {
        int ret = -1;
        Parcel data,reply;
        data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
        data.writeInt32(port);
        remote()->transact(GETAUDIOPORT,data,&reply);
        ret = reply.readInt32();
        return ret;
      }
      virtual int setBluerayHbr(int status)
      {
        Parcel data,reply;
        data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
        data.writeInt32(status);
        remote()->transact(SETBLUERAYHBR,data, &reply);
        int32_t ret = reply.readInt32();
        return ret;
      }

      virtual int setEnterSmartSuspend(int status)
      {
        Parcel data,reply;
        data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
        data.writeInt32(status);
        remote()->transact(SETENTERSMAERTSUSPEND,data, &reply);
        int32_t ret = reply.readInt32();
        return ret;
      }

      virtual int setSndVolume(int volume)
      {
        Parcel data,reply;
        data.writeInterfaceToken(IHiAoService::getInterfaceDescriptor());
        data.writeInt32(volume);
        remote()->transact(SETSOUNDVOLUME,data, &reply);
        int32_t ret = reply.readInt32();
        return ret;
      }


  };

   IMPLEMENT_META_INTERFACE(HiAoService, "android.os.IHiAoService");
   status_t BnHiAoService::onTransact( uint32_t code, const Parcel& data, Parcel* reply, uint32_t flags)
  {
    int ret = -1;
    int32_t value;
    int32_t port,mode;
    int32_t capability;
    int32_t status;
    switch(code)
    {
      case SETAUDIOPORT:
         CHECK_INTERFACE(IHiAoService, data, reply);
         port = data.readInt32();
         mode = data.readInt32();
         ret = setUnfAudioPort(port,mode);
         reply->writeInt32(ret);
         return NO_ERROR;
      case GETAUDIOPORT:
         CHECK_INTERFACE(IHiAoService, data, reply);
         port = data.readInt32();
         ret = getUnfAudioPort(port);
         reply->writeInt32(ret);
         return NO_ERROR;
      case SETBLUERAYHBR:
         CHECK_INTERFACE(IHiAoService, data, reply);
         status = data.readInt32();
         ret = setBluerayHbr(status);
         reply->writeInt32(ret);
         return NO_ERROR;
      case SETENTERSMAERTSUSPEND:
         CHECK_INTERFACE(IHiAoService, data, reply);
         status = data.readInt32();
         ret = setEnterSmartSuspend(status);
         reply->writeInt32(ret);
         return NO_ERROR;
      case STARTCARDPLAY:
         CHECK_INTERFACE(IHiAoService, data, reply);
         startCardPlay();
         return NO_ERROR;
      case STOPCARDPLAY:
         CHECK_INTERFACE(IHiAoService, data, reply);
         stopCardPlay();
         return NO_ERROR;
      case SETSOUNDVOLUME:
         CHECK_INTERFACE(IHiAoService, data, reply);
         value = data.readInt32();
         ret = setSndVolume(value);
         reply->writeInt32(ret);
         return ret;
      default:
         return BBinder::onTransact(code, data, reply, flags);
    }
   }
};//namespace android

