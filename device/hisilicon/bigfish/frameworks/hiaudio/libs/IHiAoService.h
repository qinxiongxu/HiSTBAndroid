#ifndef _IAudioSettingService_H
#define _IAudioSettingService_H

#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <utils/Errors.h>
namespace android
{
  class IHiAoService : public IInterface
  {
    public:
      DECLARE_META_INTERFACE(HiAoService);
      virtual int setUnfAudioPort(int port,int mode) = 0;
      virtual int getUnfAudioPort(int port) = 0;
      virtual int setBluerayHbr(int status) = 0;
      virtual int setEnterSmartSuspend(int status) = 0;
      virtual void startCardPlay() = 0;
      virtual void stopCardPlay() = 0;
      virtual int setSndVolume(int volume) = 0;
  };

  class BnHiAoService : public BnInterface<IHiAoService>
  {
    public:
      virtual status_t onTransact( uint32_t code,
          const Parcel& data,
          Parcel* reply,
          uint32_t flags = 0);
  };
};
#endif

