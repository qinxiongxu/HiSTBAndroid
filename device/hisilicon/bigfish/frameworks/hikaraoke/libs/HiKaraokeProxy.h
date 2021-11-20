#ifndef _HIKARAOKEPROXY_H_
#define _HIKARAOKEPROXY_H_

#include <utils/RefBase.h>

namespace android
{
    enum KaraokeReverbMode
    {
        REVERB_MODE_STUDIO = 1,
        REVERB_MODE_KTV,
        REVERB_MODE_CONCERT,
        REVERB_MODE_MAN,
        REVERB_MODE_WOMAN
    };

    enum KaraokeMediaRecordState
    {
        RECORD_STATE_START = 0,
        RECORD_STATE_PAUSE,
        RECORD_STATE_RESUME,
        RECORD_STATE_STOP,
        RECORD_STATE_RELEASE,
    };

    class HiKaraokeProxy : public RefBase
    {
    public:
        HiKaraokeProxy();
        virtual ~HiKaraokeProxy();

        int32_t initMic();
        int32_t startMic();
        int32_t stopMic();
        int32_t releaseMic();

        int32_t setReverbMode(uint32_t mode);
        uint32_t getReverbMode();

        uint32_t getMicNumber();

        int32_t setMicVolume(uint32_t volume);
        uint32_t getMicVolume();

        int32_t initMicRead(uint32_t sampleRate, uint32_t channelCount, uint32_t bitPerSample);
        int32_t startMicRead();
        int32_t stopMicRead();
        uint32_t readMicData(int8_t* data, uint32_t size);

        int32_t setOutputFile(int fd, int64_t offset, int64_t length);
        int32_t initMixedDataRead(int fd, uint32_t outputFormat, uint32_t audioEncoder,
                                  uint32_t sampleRate, uint32_t bitRate, uint32_t channels);
        int32_t setMixedDataRecordState(uint32_t state);

        int32_t setKarAlg(uint32_t alg, uint32_t status);
    };
};

#endif
