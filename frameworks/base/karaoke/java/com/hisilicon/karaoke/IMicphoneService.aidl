package com.hisilicon.karaoke;


interface IMicphoneService {

    int initial();

    int start();

    int stop();

    int release();

    int getMicNumber();

    int setVolume(int volume);

    int getVolume();

    int initMicRead(int sampleRate, int channelCount, int bitPerSample);

    int startMicRead();

    int stopMicRead();

    int readMicDataByByte(out byte[] buf, int offSize, int size);

    int prepareAudioMixedDataRecord(String path, int outputFormat, int audioEncoder, int sampleRate, int bitRate, int channels);

    int setAudioMixedDataRecordState(int state);

    int readAudioMixedDataByByte(out byte[] buf, int offSize, int size);
    
	int isInitialized();
}
