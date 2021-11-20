package com.hisilicon.karaoke;


public class Karaoke {

    public static final int REVERB_MODE_STUDIO = 1;

    public static final int REVERB_MODE_KTV = 2;

    public static final int REVERB_MODE_CONCERT = 3;

    public static native int setReverbMode(int mode);

    public static native int getReverbMode();

    public static native int micInitial();

    public static native int micStart();

    public static native int micStop();

    public static native int micRelease();

    public static native int getMicNumber();

    public static native int setMicVolume(int volume);

    public static native int getMicVolume();

    public static native int initMicRead(int sampleRate, int channelCount, int bitPerSample);

    public static native int startMicRead();

    public static native int stopMicRead();

    public static native int readMicDataByByte(byte[] buf, int offSize, int size);

    public static native int readMicDataByShort(short[] buf, int offSize, int size);

    public static native int prepareAudioMixedDataRecord(String path, int outputFormat, int audioEncoder, int sampleRate, int bitRate, int channels);

    public static native int setAudioMixedDataRecordState(int state);

    public static native int readAudioMixedDataByByte(byte[] buf, int offSize, int size);

    public static native int isInitialized();
}
