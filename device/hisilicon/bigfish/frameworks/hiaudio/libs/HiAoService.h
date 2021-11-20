#ifndef AUDIOSETTINGSERVICE_H
#define  AUDIOSETTINGSERVICE_H

#include <cutils/memory.h>
#include <utils/Log.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include "IHiAoService.h"


namespace android
{
  class HiAoService: public BnHiAoService
  {
    public:
      HiAoService();
      ~HiAoService();
      static void instantiate();
      static void setAudEdidCap(int channel);
      virtual int setUnfAudioPort(int port,int mode);
      virtual int getUnfAudioPort(int port);
      virtual int setBluerayHbr(int status);
      virtual int setEnterSmartSuspend(int status);
      virtual void startCardPlay();
      virtual void stopCardPlay();
      virtual int setSndVolume(int volume);
    private:
      int isHdmiClose;
      int isSpdifClose;
  };

};

#endif

