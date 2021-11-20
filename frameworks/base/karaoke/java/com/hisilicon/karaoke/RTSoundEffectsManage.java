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
import com.cmcc.media.RTSoundEffects;
import android.os.Binder;
import android.os.IBinder;
import android.os.Bundle;
import android.os.Handler;
import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import android.os.ServiceManager;
import java.io.IOException;

public class RTSoundEffectsManage implements RTSoundEffects {

    private Context mContext = null;;
    private Handler mHandler = null;
    private IRTSoundEffectsService mIRTSoundEffectsService = null;

    public static final String TAG = "MicphoneManage";
    public static final boolean DEBUG = true;
    public static final int CALL_REMOTE_ERROR = -1;

    public RTSoundEffectsManage(Context context,
        IRTSoundEffectsService service, Handler handler) {
        if (DEBUG) {
            Log.d(TAG, "new RTSoundEffectsManage");
        }
        mContext = context;
        mHandler = handler;
        mIRTSoundEffectsService = service;
    }

    private IRTSoundEffectsService getIRTSoundEffectsService() {
        if (mIRTSoundEffectsService == null) {
            if (DEBUG) {
                Log.d(TAG, "getIMicphoneService by ServiceManager.getService");
            }
            IBinder iBinder = ServiceManager
            .getService(Context.RTSOUNDEFFECT_SERVICE);
            mIRTSoundEffectsService = IRTSoundEffectsService.Stub
            .asInterface(iBinder);
        }
        return mIRTSoundEffectsService;
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

        if (mIRTSoundEffectsService == null) {
            mIRTSoundEffectsService = getIRTSoundEffectsService();
        }

        int result = 0;
        try {
            result = mIRTSoundEffectsService.setReverbMode(mode);
        } catch (RemoteException e) {
            Log.d(TAG, "call setReverbMode RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

    @Override
    public int getReverbMode() {
        if (DEBUG) {
            Log.d(TAG, "call start");
        }

        if (mIRTSoundEffectsService == null) {
            mIRTSoundEffectsService = getIRTSoundEffectsService();
        }

        int result = 0;
        try {
            result = mIRTSoundEffectsService.getReverbMode();
        } catch (RemoteException e) {
            Log.d(TAG, "call getReverbMode RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }
}
