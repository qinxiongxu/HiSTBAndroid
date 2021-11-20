#define  LOG_NDEBUG 0
#define  LOG_TAG "HikaraokeService"

#include <binder/IServiceManager.h>
#include <binder/MemoryHeapBase.h>
#include <binder/MemoryBase.h>
#include <utils/Log.h>

#include "HikaraokeService.h"

#define MAX_MUTIPLE (100)


namespace android
{
    HiKaraokeService::HiKaraokeService()
    {
        ALOGD("new HiKaraokeService");
        mHiKaraokeProxy = new HiKaraokeProxy();
        mInitState = 0;
    }

    HiKaraokeService::~HiKaraokeService()
    {

    }

    void HiKaraokeService::instantiate()
    {
        defaultServiceManager()->addService(String16("hikaraokeservice"), new HiKaraokeService());
    }

    int32_t HiKaraokeService::initMic()
    {
        ALOGD("HiKaraokeService::initMic");
        int ret = mHiKaraokeProxy->initMic();
        if(ret >= 0)
        {
			mInitState = 1;
            system("echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor");
        }
        return ret;
    }

    int32_t HiKaraokeService::startMic()
    {
        ALOGD("HiKaraokeService::startMic");
        return mHiKaraokeProxy->startMic();
    }

    int32_t HiKaraokeService::stopMic()
    {
        ALOGD("HiKaraokeService::stopMic");
        return mHiKaraokeProxy->stopMic();
    }

    int32_t HiKaraokeService::releaseMic()
    {
        ALOGD("HiKaraokeService::releaseMic");
        mInitState = 0;
        int ret = mHiKaraokeProxy->releaseMic();
        if(ret >= 0)
        {
            system("echo interactive > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor");
        }
        return ret;
    }

    int32_t  HiKaraokeService::setReverbMode(uint32_t mode)
    {
        ALOGD("HiKaraokeService::setReverbMode");
        return mHiKaraokeProxy->setReverbMode(mode);
    }

    uint32_t HiKaraokeService::getReverbMode()
    {
        ALOGD("HiKaraokeService::getReverbMode");
        return mHiKaraokeProxy->getReverbMode();
    }

    uint32_t HiKaraokeService::getMicNumber()
    {
        ALOGD("HiKaraokeService::getMicNumber");
        return mHiKaraokeProxy->getMicNumber();
    }

    int32_t HiKaraokeService::setMicVolume(uint32_t volume)
    {
        ALOGD("HiKaraokeService::setMicVolume");
        return mHiKaraokeProxy->setMicVolume(volume);
    }

    uint32_t HiKaraokeService::getMicVolume()
    {
        ALOGD("HiKaraokeService::getMicVolume");
        return mHiKaraokeProxy->getMicVolume();
    }

    int32_t HiKaraokeService::setOutputFile(int fd, int64_t offset, int64_t length)
    {
        ALOGD("HiKaraokeService::setOutputFile fd = %d", fd);
        return mHiKaraokeProxy->setOutputFile(fd, offset, length);
    }
    int32_t HiKaraokeService::initHiKaraokeMediaRecord(uint32_t outputFormat,
            uint32_t audioEncoder, uint32_t sampleRate, uint32_t bitRate,
            uint32_t channels)
    {
        ALOGD("HiKaraokeService::initHiKaraokeMediaRecord");
        ALOGD("fd = %d, outputFormat = %d, audioEncoder = %d, sampleRate = %d, bitRate = %d, channels = %d",
              0, outputFormat, audioEncoder, sampleRate, bitRate, channels);
        return mHiKaraokeProxy->initMixedDataRead(0, outputFormat, audioEncoder,
                sampleRate, bitRate, channels);
    }

    int32_t HiKaraokeService::setHiKaraokeMediaRecordState(uint32_t state)
    {
        return mHiKaraokeProxy->setMixedDataRecordState(state);
    }

    sp<IHiKaraokeRecord> HiKaraokeService::openKaraokeRecord(uint32_t sampleRate,
            uint32_t channels, uint32_t frameCounts)
    {
        ALOGD("HiKaraokeService::openKaraokeRecord");
        ALOGD("sampleRate = %d, channels = %d, frameCounts = %d", sampleRate, channels, frameCounts);
        sp<KaraokeRecordHandle> recordHandle = new KaraokeRecordHandle(mHiKaraokeProxy, sampleRate,
                channels, frameCounts);
        return recordHandle;
    }

    int32_t HiKaraokeService::getInitState()
    {
        ALOGD("HiKaraokeService::getMicVolume mInitState = %d", mInitState);
        return mInitState;
    }

    int32_t HiKaraokeService::setKarAlg(uint32_t alg, uint32_t status)
    {
        ALOGD("HiKaraokeService::setKarAlg alg = %d status = %d", alg, status);
        return mHiKaraokeProxy->setKarAlg(alg, status);
    }

    status_t HiKaraokeService::onTransact( uint32_t code, const Parcel& data,
                                           Parcel* reply, uint32_t flags)
    {
        return BnHiKaraokeService::onTransact(code, data, reply, flags);
    }


    //KaraokeRecordHandle begin
    void* KaraokeRecordHandle::InitRecordProcess(void* param)
    {
        KaraokeRecordHandle* pRecord = (KaraokeRecordHandle*)param;
        if (pRecord)
        {
            pRecord->recordThreadProc();
        }
        return (void*)0;
    }


    uint32_t KaraokeRecordHandle::recordThreadProc()
    {
        ALOGD("KaraokeRecordHandle::recordThreadProc");
        int32_t size = 2 * mChannels * mFrameCounts;
        int32_t readSize = 0;
        int8_t* pBuf = (int8_t*)malloc(size);
        while (true)
        {
            if (mbStopFlag)
            {
                break;
            }
            readSize = mHiKaraokeProxy->readMicData(pBuf, size);
            if (readSize > 0)
            {
                mBufExeCutor->circleBufWrite(pBuf, readSize);
            }
            else
            {
                usleep(10 * 1000);
            }
        }
        free(pBuf);
        ALOGD("KaraokeRecordHandle::recordThreadProc out");
        return 0;
    }


    KaraokeRecordHandle::KaraokeRecordHandle(sp<HiKaraokeProxy>& proxy, uint32_t sampleRate,
            uint32_t channels, uint32_t frameCounts)
    {
        ALOGD("KaraokeRecordHandle::KaraokeRecordHandle");
        ALOGD("sampleRate = %d, channels = %d, frameCounts = %d", sampleRate, channels, frameCounts);
        int totalsize = channels * frameCounts * 2 * MAX_MUTIPLE + sizeof(HiCircleBufCtrl);

        //create shared memory buffer
        sp<MemoryHeapBase> memHeap = new MemoryHeapBase(totalsize, 0, "HiKaraoke Heap Base");
        if (memHeap->getHeapID() < 0)
        {
            ALOGE("new MemoryHeapBase failed");
        }
        mRecordMemory = new MemoryBase(memHeap, 0, totalsize);
        memset(mRecordMemory->pointer(), 0, totalsize);

        HiCircleBufCtrl* pCtrl = static_cast<HiCircleBufCtrl*>(mRecordMemory->pointer());
        new(pCtrl) HiCircleBufCtrl();
        pCtrl->mReadPos = 0;
        pCtrl->mWritePos = 0;
        pCtrl->mBufLenght = totalsize - sizeof(HiCircleBufCtrl);
        ALOGD("KaraokeRecordHandle::addr = 0x%p", mRecordMemory->pointer());
        int8_t* pDataBuf = (int8_t*)mRecordMemory->pointer() + sizeof(HiCircleBufCtrl);
        mBufExeCutor = new HiCircleBufExeCutor(pCtrl, pDataBuf);

        mSampleRate = sampleRate;
        mChannels = channels;
        mFrameCounts = frameCounts;



    }

    KaraokeRecordHandle::~KaraokeRecordHandle()
    {

    }

    sp<IMemory> KaraokeRecordHandle::getCblk() const
    {
        ALOGD("KaraokeRecordHandle::getCblk");
        return mRecordMemory;
    }

    int32_t KaraokeRecordHandle::start()
    {
        ALOGD("KaraokeRecordHandle::start");
        mbStopFlag = false;
        pthread_create(&mpthid, 0, InitRecordProcess, this);
        mHiKaraokeProxy->initMicRead(mSampleRate, mChannels, 16);
        return mHiKaraokeProxy->startMicRead();
    }

    int32_t KaraokeRecordHandle::stop()
    {
        ALOGD("KaraokeRecordHandle::stop");
        mbStopFlag = true;
        pthread_join(mpthid, 0);
        return mHiKaraokeProxy->stopMicRead();
    }

    uint32_t KaraokeRecordHandle::read(int8_t* data, uint32_t size)
    {
        return 0;
    }

    status_t KaraokeRecordHandle::onTransact( uint32_t code, const Parcel& data,
            Parcel* reply, uint32_t flags)
    {
        return BnHiKaraokeRecord::onTransact(code, data, reply, flags);
    }

    //KaraokeRecordHandle end

};
