/*
 * Copyright (C) 2007 The Android Open Source Project
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

package android.os.display;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.app.ActivityManagerNative;
import android.util.Log;

/**
* HiDisplayManager interface<br>
* CN: HiDisplayManager鎺ュ彛
*/
public class DisplayManager  {
    private static final String TAG = "CMCCDisplayManager";
    private IDisplayManager mdisplay;

    /* CMCC FMT */
    public final static int DISPLAY_STANDARD_1080P_60 = 0;
    public final static int DISPLAY_STANDARD_1080P_50 = 1;
    public final static int DISPLAY_STANDARD_1080P_30 = 2;
    public final static int DISPLAY_STANDARD_1080P_25 = 3;
    public final static int DISPLAY_STANDARD_1080P_24 = 4;
    public final static int DISPLAY_STANDARD_1080I_60 = 5;
    public final static int DISPLAY_STANDARD_1080I_50 = 6;
    public final static int DISPLAY_STANDARD_720P_60 = 7;
    public final static int DISPLAY_STANDARD_720P_50 = 8;
    public final static int DISPLAY_STANDARD_576P_50 = 9;
    public final static int DISPLAY_STANDARD_480P_60 = 10;
    public final static int DISPLAY_STANDARD_PAL = 11;
    public final static int DISPLAY_STANDARD_NTSC = 12;
    public final static int DISPLAY_STANDARD_3840_2160P_24 = 0x100;
    public final static int DISPLAY_STANDARD_3840_2160P_25 = 0x101;
    public final static int DISPLAY_STANDARD_3840_2160P_30 = 0x102;
    public final static int DISPLAY_STANDARD_3840_2160P_60 = 0x103;
    public final static int DISPLAY_STANDARD_4096_2160P_24 = 0x200;
    public final static int DISPLAY_STANDARD_4096_2160P_25 = 0x201;
    public final static int DISPLAY_STANDARD_4096_2160P_30 = 0x202;
    public final static int DISPLAY_STANDARD_4096_2160P_60 = 0x203;
    private int[] mStandard = {
        DISPLAY_STANDARD_1080P_60,
        DISPLAY_STANDARD_1080P_50,
        DISPLAY_STANDARD_1080P_30,
        DISPLAY_STANDARD_1080P_25,
        DISPLAY_STANDARD_1080P_24,
        DISPLAY_STANDARD_1080I_60,
        DISPLAY_STANDARD_1080I_50,
        DISPLAY_STANDARD_720P_60,
        DISPLAY_STANDARD_720P_50,
        DISPLAY_STANDARD_576P_50,
        DISPLAY_STANDARD_480P_60,
        DISPLAY_STANDARD_PAL,
        DISPLAY_STANDARD_NTSC,
        DISPLAY_STANDARD_3840_2160P_24,
        DISPLAY_STANDARD_3840_2160P_25,
        DISPLAY_STANDARD_3840_2160P_30,
        /*DISPLAY_STANDARD_3840_2160P_60,
        DISPLAY_STANDARD_4096_2160P_24,
        DISPLAY_STANDARD_4096_2160P_25,
        DISPLAY_STANDARD_4096_2160P_30,
        DISPLAY_STANDARD_4096_2160P_60*/
        };

    /* Hisi FMT */
    public final static int ENC_FMT_1080P_60 = 0;         /*1080p60hz*/
    public final static int ENC_FMT_1080P_50 = 1;         /*1080p50hz*/
    public final static int ENC_FMT_1080P_30 = 2;         /*1080p30hz*/
    public final static int ENC_FMT_1080P_25 = 3;         /*1080p25hz*/
    public final static int ENC_FMT_1080P_24 = 4;         /*1080p24hz*/
    public final static int ENC_FMT_1080i_60 = 5;         /*1080i60hz*/
    public final static int ENC_FMT_1080i_50 = 6;         /*1080i50hz*/
    public final static int ENC_FMT_720P_60 = 7;          /*720p60hz*/
    public final static int ENC_FMT_720P_50 = 8;          /*720p50hz*/
    public final static int ENC_FMT_576P_50 = 9;          /*576p50hz*/
    public final static int ENC_FMT_480P_60 = 10;         /*480p60hz*/
    public final static int ENC_FMT_PAL = 11;             /*BDGHIPAL*/
    public final static int ENC_FMT_NTSC = 14;            /*(M)NTSC*/
    public final static int ENC_FMT_3840X2160_24             = 0x100;
    public final static int ENC_FMT_3840X2160_25             = 0x101;
    public final static int ENC_FMT_3840X2160_30             = 0x102;
    public final static int ENC_FMT_3840X2160_50             = 0x103;
    public final static int ENC_FMT_3840X2160_60             = 0x104;
    public final static int ENC_FMT_4096X2160_24             = 0x105;
    public final static int ENC_FMT_4096X2160_25             = 0x106;
    public final static int ENC_FMT_4096X2160_30             = 0x107;
    public final static int ENC_FMT_4096X2160_50             = 0x108;
    public final static int ENC_FMT_4096X2160_60             = 0x109;

    public DisplayManager(IDisplayManager server) {
        //mdisplay = IHiDisplayManager.Stub.asInterface(ServiceManager.getService("HiDisplay"));
        mdisplay = server;
    }

    public boolean isSupportStandard(int standard) {
        boolean ret = false;
        for (int i = 0; i < mStandard.length; i++) {
            if(standard == mStandard[i]){
                ret = true;
                break;
            }
        }
        return ret;
    }

    public int[] getAllSupportStandards() {
        return mStandard;
    }

    public void setDisplayStandard(int standard) {
        int hisiFmt = -1;
        int ret = -1;
        if(isSupportStandard(standard)){
            try {
                hisiFmt = covertCMCCFmtToHisi(standard);
                if (hisiFmt >= ENC_FMT_1080P_60) {
                    ret = mdisplay.setFmt(hisiFmt);
                } else {
                    Log.e(TAG,"unspecified(" + standard + ")");
                }
            } catch(Exception ex) {
                Log.e(TAG,"setDisplayStandard: " + ex);
            }
        } else {
            Log.e(TAG, "setDisplayStandard: unsupport(" + standard + ")");
        }
        Log.i(TAG, "setDisplayStandard: standard=" + standard + ", ret=" + ret);
    }

    public int getCurrentStandard() {
        int hisiFmt = -1;
        int cmccFmt = -1;
        try {
            hisiFmt = mdisplay.getFmt();
            cmccFmt = covertHisiFmtToCMCC(hisiFmt);
        } catch (RemoteException e) {
            Log.e(TAG, "getCurrentStandard: " + e);
        }
        if(isSupportStandard(cmccFmt)){
            return cmccFmt;
        } else {
            Log.e(TAG, "getCurrentStandard: CMCC unsupport(" + hisiFmt + ")");
            return -1;
        }
    }

    private int covertHisiFmtToCMCC( int standard){
        int ret = -1;
        if( standard >= ENC_FMT_1080P_60 && standard <= ENC_FMT_PAL ){
            ret = standard;
        } else if( standard == ENC_FMT_NTSC) {
            ret = DISPLAY_STANDARD_NTSC;
        } else if( standard >= ENC_FMT_3840X2160_24 && standard <= ENC_FMT_3840X2160_30 ) {
            ret = standard;
        } else if( standard == ENC_FMT_3840X2160_60) {
            ret = DISPLAY_STANDARD_3840_2160P_60;
        } else if( standard == ENC_FMT_4096X2160_24) {
            ret = DISPLAY_STANDARD_4096_2160P_24;
        } else if( standard == ENC_FMT_4096X2160_25) {
            ret = DISPLAY_STANDARD_4096_2160P_25;
        } else if( standard == ENC_FMT_4096X2160_30) {
            ret = DISPLAY_STANDARD_4096_2160P_30;
        } else if( standard == ENC_FMT_4096X2160_60) {
            ret = DISPLAY_STANDARD_4096_2160P_60;
        }
        Log.d(TAG, "covertHisiFmtToCMCC: covert [" + standard + "] to [" + ret + "]");
        return ret;
    }

    private int covertCMCCFmtToHisi( int standard){
        int ret = -1;
        if( standard >= DISPLAY_STANDARD_1080P_60 && standard <= DISPLAY_STANDARD_PAL ){
            ret = standard;
        } else if( standard == DISPLAY_STANDARD_NTSC) {
            ret = ENC_FMT_NTSC;
        } else if( standard >= DISPLAY_STANDARD_3840_2160P_24 && standard <= DISPLAY_STANDARD_3840_2160P_30 ) {
            ret = standard;
        } else if( standard == DISPLAY_STANDARD_3840_2160P_60) {
            ret = ENC_FMT_3840X2160_60;
        } else if( standard == DISPLAY_STANDARD_4096_2160P_24) {
            ret = ENC_FMT_4096X2160_24;
        } else if( standard == DISPLAY_STANDARD_4096_2160P_25) {
            ret = ENC_FMT_4096X2160_25;
        } else if( standard == DISPLAY_STANDARD_4096_2160P_30) {
            ret = ENC_FMT_4096X2160_30;
        } else if( standard == DISPLAY_STANDARD_4096_2160P_60) {
            ret = ENC_FMT_4096X2160_60;
        }
        Log.d(TAG, "covertCMCCFmtToHisi: covert [" + standard + "] to [" + ret + "]");
        return ret;
    }

    public void setScreenMargin(int left, int top, int right, int bottom) {
        try {
            mdisplay.setOutRange(left, top, right,bottom);
        } catch (RemoteException e) {
            Log.e(TAG,"setScreenMargin: " + e);
        }
    }

    public int[] getScreenMargin() {
        int left = 0;
        int top = 0;
        int right = 0;
        int bottom = 0;
        try {
            Rect rect = mdisplay.getOutRange();
            left = rect.left;
            top = rect.top;
            right = rect.width();
            bottom = rect.height();
        } catch (RemoteException e) {
            // TODO Auto-generated catch block
            Log.e(TAG,"getScreenMargin: " + e);
        }
        return new int[] { left, top, right, bottom };
    }

    public void saveParams(){
        try {
            mdisplay.saveParams();
        } catch (RemoteException e) {
            Log.e(TAG,"saveParams: " + e);
        }
    }

}
