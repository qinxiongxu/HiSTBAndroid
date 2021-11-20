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

import com.hisilicon.karaoke.IMicphoneService;
import com.cmcc.media.Micphone;
import android.os.Binder;
import android.os.IBinder;
import android.os.Bundle;
import android.os.Handler;
import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.io.IOException;

public class MicphoneManage implements Micphone {

    private Context mContext = null;;
    private Handler mHandler = null;
    private IMicphoneService mIMicphoneService = null;

    public static final String TAG = "MicphoneManage";
    public static final boolean DEBUG = true;
    public static final int CALL_REMOTE_ERROR = -1;

    public MicphoneManage(Context context, IMicphoneService service,
        Handler handler) {
        if (DEBUG) {
            Log.d(TAG, "new MicphoneManage");
        }
        mContext = context;
        mHandler = handler;
        mIMicphoneService = service;
    }

    private IMicphoneService getIMicphoneService() {
        if (mIMicphoneService == null) {
            if (DEBUG) {
                Log.d(TAG, "getIMicphoneService by ServiceManager.getService");
            }
            IBinder iBinder = ServiceManager
            .getService(Context.MICPHONE_SERVICE);
            mIMicphoneService = IMicphoneService.Stub.asInterface(iBinder);
        }
        return mIMicphoneService;
    }

    @Override
    public int initial() {
        if (DEBUG) {
            Log.d(TAG, "call initial");
        }
        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
                result = mIMicphoneService.initial();
            } catch (RemoteException e) {
                Log.d(TAG, "call initial RemoteException");
                result = CALL_REMOTE_ERROR;
        }
            return result;
        }

    @Override
    public int start() {
        if (DEBUG) {
            Log.d(TAG, "call start");
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.start();
        } catch (RemoteException e) {
            Log.d(TAG, "call start RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

    @Override
    public int stop() {
        if (DEBUG) {
            Log.d(TAG, "call stop");
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.stop();
        } catch (RemoteException e) {
            Log.d(TAG, "call stop RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

    @Override
    public int release() {
        if (DEBUG) {
            Log.d(TAG, "call release");
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.release();
        } catch (RemoteException e) {
            Log.d(TAG, "call release RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

    @Override
    public int getMicNumber() {
        if (DEBUG) {
            Log.d(TAG, "call getMicNumber");
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.getMicNumber();
        } catch (RemoteException e) {
            Log.d(TAG, "call getMicNumber RemoteException");
            result = CALL_REMOTE_ERROR;
        }
    return result;
    }

    @Override
    public int setVolume(int volume) {
        if (DEBUG) {
            Log.d(TAG, "call setVolume, volume = " + volume);
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.setVolume(volume);
        } catch (RemoteException e) {
            Log.d(TAG, "call setVolume RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

    @Override
    public int getVolume() {
        if (DEBUG) {
            Log.d(TAG, "call getVolume");
        }

        if (mIMicphoneService == null) {
            mIMicphoneService = getIMicphoneService();
        }

        int result = 0;
        try {
            result = mIMicphoneService.getVolume();
        } catch (RemoteException e) {
            Log.d(TAG, "call getVolume RemoteException");
            result = CALL_REMOTE_ERROR;
        }
        return result;
    }

}
