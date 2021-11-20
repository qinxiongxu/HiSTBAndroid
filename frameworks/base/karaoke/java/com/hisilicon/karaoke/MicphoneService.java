/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.hisilicon.karaoke;

import android.os.SystemProperties;

import com.hisilicon.karaoke.IMicphoneService;
import android.util.Log;
import android.content.Context;

public class MicphoneService extends IMicphoneService.Stub {

    static final String TAG = "MicphoneService";
    static final boolean DEBUG = true;

    private Context mContext;

    static {
        System.loadLibrary("karaoke_jni");
        Log.d(TAG, "load karaoke_jni lib");
    }

    public MicphoneService(Context context) {
    if (DEBUG) {
            Log.d(TAG, "new MicphoneService");
        }
        mContext = context;
    }

    @Override
    public int initial() {
        if (DEBUG) {
            Log.d(TAG, "call initial");
        }
        /*
              * String property = SystemProperties.get("persist.sys.volumecontrol",
              * "0"); Log.d(TAG, "property = "+property);
              * SystemProperties.set("persist.sys.volumecontrol", "1"); property =
              * SystemProperties.get("persist.sys.volumecontrol", "0"); Log.d(TAG,
              * "property = "+property);
              */

        return Karaoke.micInitial();
    }

    @Override
    public int start() {
        if (DEBUG) {
            Log.d(TAG, "call start");
        }
        return Karaoke.micStart();
    }

    @Override
    public int stop() {
        if (DEBUG) {
            Log.d(TAG, "call stop");
        }
        return Karaoke.micStop();
    }

    @Override
    public int release() {
        if (DEBUG) {
            Log.d(TAG, "call release");
        }
        return Karaoke.micRelease();
    }

    @Override
    public int getMicNumber() {
        if (DEBUG) {
            Log.d(TAG, "call getMicNumber");
        }
        return Karaoke.getMicNumber();
    }

    @Override
    public int setVolume(int volume) {
        if (DEBUG) {
            Log.d(TAG, "call setVolume, volume = " + volume);
        }
        return Karaoke.setMicVolume(volume);
    }

    @Override
    public int getVolume() {
        if (DEBUG) {
            Log.d(TAG, "call getVolume");
        }
        return Karaoke.getMicVolume();
    }

    @Override
    public int initMicRead(int sampleRate, int channelCount, int bitPerSample) {
        if (DEBUG) {
            Log.d(TAG, "call initMicRead");
        }
    return Karaoke.initMicRead(sampleRate, channelCount, bitPerSample);
    }

    @Override
    public int startMicRead() {
        if (DEBUG) {
            Log.d(TAG, "call startMicRead");
        }
        return Karaoke.startMicRead();
    }

    @Override
    public int stopMicRead() {
        if (DEBUG) {
            Log.d(TAG, "call stopMicRead");
        }
        return Karaoke.stopMicRead();
    }

    @Override
    public int readMicDataByByte(byte[] buf, int offSize, int size) {
        if (DEBUG) {
            // Log.d(TAG, "call readMicDataByByte");
        }
    return Karaoke.readMicDataByByte(buf, offSize, size);
    }

    @Override
    public int prepareAudioMixedDataRecord(String path, int outputFormat,
    int audioEncoder, int sampleRate, int bitRate, int channels) {
        if (DEBUG) {
            Log.d(TAG, "call prepareAudioMixedDataRecord");
        }
        return Karaoke.prepareAudioMixedDataRecord(path, outputFormat,
        audioEncoder, sampleRate, bitRate, channels);
    }

    @Override
    public int setAudioMixedDataRecordState(int state) {
        if (DEBUG) {
            Log.d(TAG, "call setAudioMixedDataRecordState");
        }
        return Karaoke.setAudioMixedDataRecordState(state);
    }

    @Override
    public int readAudioMixedDataByByte(byte[] buf, int offSize, int size) {
        if (DEBUG) {
            // Log.d(TAG, "call readAudioMixedDataByByte");
        }
        return Karaoke.readAudioMixedDataByByte(buf, offSize, size);
    }

    /*
      * @Override public int readMicDataByShort(short[] buf, int offSize, int
      * size){ if(DEBUG){ Log.d(TAG, "call readMicDataByShort"); } return
      * Karaoke.readMicDataByShort(buf, offSize, size); }
      */
    @Override
    public int isInitialized() {
        return Karaoke.isInitialized();
    }
}
