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

import com.hisilicon.karaoke.IRTSoundEffectsService;
import com.hisilicon.karaoke.Karaoke;
import android.content.Context;
import android.util.Log;

public class RTSoundEffectsService extends IRTSoundEffectsService.Stub {

    static final String TAG = "IRTSoundEffectsService";
    static final boolean DEBUG = true;

    private Context mContext;

    public RTSoundEffectsService(Context context) {
        if (DEBUG) {
            Log.d(TAG, "new MicphoneService");
        }
        mContext = context;
    }

    @Override
    public int setParam(int mode, int param) {
        if (DEBUG) {
            Log.d(TAG, "call setParam, param = " + param);
        }
        return setReverbMode(param);
    }

    @Override
    public int getParam(int mode) {
        if (DEBUG) {
            Log.d(TAG, "call getParam, mode = " + mode);
        }
        return getReverbMode();
    }

    @Override
    public int setReverbMode(int mode) {
        if (DEBUG) {
            Log.d(TAG, "call setReverbMode, mode = " + mode);
        }
        return Karaoke.setReverbMode(mode);
    }

    @Override
    public int getReverbMode() {
        if (DEBUG) {
            Log.d(TAG, "call start");
        }
        return Karaoke.getReverbMode();
    }
}
