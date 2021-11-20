package com.hisilicon.karaoke;

import java.lang.ref.WeakReference;
import java.io.FileDescriptor;
import java.io.IOException;

public class HiKaraokeMediaRecorder {
    static final String TAG = "HiKaraokeAudioRecord";
    static final boolean DEBUG = true;

    private long mNativeContext;

    static {
        System.loadLibrary("hikaraokemediarecorder_jni");
    }

    public void setup(String clientName) throws IllegalStateException {
        native_setup(new WeakReference<HiKaraokeMediaRecorder>(this),
            clientName);
    }

    public native void setAudioEncoder(int audio_encoder)
        throws IllegalStateException;

    public native void setOutputFormat(int output_format)
        throws IllegalStateException;

    public native void setAudioSource(int audio_source)
        throws IllegalStateException;

    public native void setParameter(String nameValuePair);

    public native void setOutputFile(FileDescriptor fd, long offset, long length)
        throws IllegalStateException, IOException;

    public native void prepare() throws IllegalStateException, IOException;

    public native void release();

    public native void start();

    public native void stop();

    private native final void native_setup(Object mediarecorder_this,
        String clientName) throws IllegalStateException;
}