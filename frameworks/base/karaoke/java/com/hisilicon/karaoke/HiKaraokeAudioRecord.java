package com.hisilicon.karaoke;

import java.lang.ref.WeakReference;

public class HiKaraokeAudioRecord {

    static final String TAG = "HiKaraokeAudioRecord";
    static final boolean DEBUG = true;

    private int mNativeRecorderInJavaObj;

    private int mNativeCallbackCookie;

    static {
        System.loadLibrary("hikaraokeaudiorecord_jni");
    }

    public int setup(Object /* AudioAttributes */obj, int source, int sampleRate,
        int channelMask, int audioFormat, int buffSizeInBytes,
        int[] sessionId) {
            return native_HiKaraokeAudioRecord_setup(obj, source,
        sampleRate, channelMask, audioFormat, buffSizeInBytes,
        sessionId);
    }

    public void finalize() {
        native_HikaraokeAudioRecord_finalize();
    }

    public void release() {
        native_HiKaraokeAudioRecord_release();
    }

    public int start(int syncEvent, int sessionId) {
        return native_HiKaraokeAudioRecord_start(syncEvent, sessionId);
    }

    public void stop() {
        native_HiKaraokeAudioRecord_stop();
    }

    public int read_in_byte_array(byte[] audioData, int offsetInBytes,
        int sizeInBytes) {
        return native_HiKaraokeAudioRecord_read_in_byte_array(audioData,
            offsetInBytes, sizeInBytes);
    }

    public int read_in_short_array(short[] audioData, int offsetInShorts,
        int sizeInShorts) {
        return native_HiKaraokeAudioRecord_read_in_short_array(audioData,
            offsetInShorts, sizeInShorts);
    }

    public int read_in_direct_buffer(Object jBuffer, int sizeInBytes) {
        return read_in_direct_buffer(jBuffer, sizeInBytes);
    }

    public int set_marker_pos(int marker) {
        return native_HiKaraokeAudioRecord_set_marker_pos(marker);
    }

    public int get_marker_pos() {
        return native_HiKaraokeAudioRecord_get_marker_pos();
    }

    public int set_pos_update_period(int updatePeriod) {
        return native_HiKaraokeAudioRecord_set_pos_update_period(updatePeriod);
    }

    public int get_pos_update_period() {
        return native_HiKaraokeAudioRecord_get_pos_update_period();
    }

    // forHikaraoke
    public native final int native_HiKaraokeAudioRecord_setup(
        Object audiorecord_this, int source,
        int sampleRate, int channelMask, int audioFormat,
        int buffSizeInBytes, int[] sessionId);

    public native final void native_HikaraokeAudioRecord_finalize();

    public native final void native_HiKaraokeAudioRecord_release();

    public native final int native_HiKaraokeAudioRecord_start(int syncEvent,
        int sessionId);

    public native final void native_HiKaraokeAudioRecord_stop();

    public native final int native_HiKaraokeAudioRecord_read_in_byte_array(
        byte[] audioData, int offsetInBytes, int sizeInBytes);

    public native final int native_HiKaraokeAudioRecord_read_in_short_array(
        short[] audioData, int offsetInShorts, int sizeInShorts);

    public native final int native_HiKaraokeAudioRecord_read_in_direct_buffer(
        Object jBuffer, int sizeInBytes);

    public native final int native_HiKaraokeAudioRecord_set_marker_pos(
        int marker);

    public native final int native_HiKaraokeAudioRecord_get_marker_pos();

    public native final int native_HiKaraokeAudioRecord_set_pos_update_period(
        int updatePeriod);

    public native final int native_HiKaraokeAudioRecord_get_pos_update_period();

}