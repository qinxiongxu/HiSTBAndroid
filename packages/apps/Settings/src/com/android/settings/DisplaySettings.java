/*
 * Copyright (C) 2010 The Android Open Source Project
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

package com.android.settings;

import static android.provider.Settings.System.SCREEN_OFF_TIMEOUT;
import android.app.ActivityManagerNative;
import android.app.admin.DevicePolicyManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.database.ContentObserver;
import android.os.SystemProperties;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.IWindowManager;
import android.view.KeyEvent;
import android.view.Surface;

import java.util.*;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;

import com.android.settings.R;
import com.android.settings.video.ScopePreference;

import com.hisilicon.android.HiDisplayManager;
import com.hisilicon.android.DispFmt;
import com.hisilicon.android.sdkinvoke.HiSdkinvoke;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnCancelListener;
import android.graphics.Rect;
import android.os.*;

import android.widget.Toast;
import java.util.Calendar;
import java.util.Date;
import android.text.format.DateFormat;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.widget.TimePicker;
import android.app.Activity;
import android.app.ActivityManager;

import android.app.QbAndroidManager;

public class DisplaySettings extends SettingsPreferenceFragment implements
       Preference.OnPreferenceChangeListener {
    private static final String TAG = "DisplaySettings";

    /** If there is no setting in the provider, use this. */

    private static final String KEY_WALLPAPER = "wallpaper";
    private static final String KEY_FONT_SIZE = "font_size";
    private static final String KEY_VIRTUAL_SCREEN = "virtual_screen";
    private static final String KEY_NOTIFICATION_PULSE = "notification_pulse";
    private static final String KEY_OPTIMUM_RESOLUTION = "optimum_resolution";
    private static final String DEFAULT_DPI_IN_1080P = "default_dpi";
    private static final String DEFAULT_DPI_NONE = "0";
    private static String KEY_TV_FMT = "";

    private static final int VIRTUAL_SCREEN_STATE_720P = 0;
    private static final int VIRTUAL_SCREEN_STATE_1080P = 1;
    private static final int DPI_720P = 160;
    private static final int DPI_1080P_240 = 240;
    private static final int DPI_1080P_320 = 320;

    private CheckBoxPreference mAccelerometer;
    private PreferenceScreen mWallpaperPref;
    private ListPreference mFontSizePref;
    private ListPreference mVirtualScreenPref;
    private CheckBoxPreference mNotificationPulse;
    private CheckBoxPreference mEnableOptimumResolution;
    private AlertDialog alertDialog;

    private final Configuration mCurConfig = new Configuration();
    private HiDisplayManager display_manager;
    private DisplayListPreference formatList;//TV format list preference object.
    private int oldFmt;//store old format when set new format,for restore.
    private int screenState;
    private Timer mTimer = null;//Timer for createDialog.
    public static int FMT_DELAY_TIME = 12000;//timeout in next 12 seconds.
    private MyTask timetask = null;
    private Rect rect ;
    private MyHandler myHandler;
    private ContentObserver mAccelerometerRotationObserver = new ContentObserver(new Handler()) {
        @Override
        public void onChange(boolean selfChange) {
        }
    };
    static final String CHIP_98C = "type=HI_CHIP_TYPE_HI3798C;version=HI_CHIP_VERSION_V100";
    static final String CHIP_98M = "type=HI_CHIP_TYPE_HI3798M;version=HI_CHIP_VERSION_V100";

    private Context mContext;
    private BroadcastReceiver mReceiver;
    private IntentFilter mFilter;
    private static final int SET_UI_SIZE_MSG = 0;
    private static final int REFRESH_FORMAT_MSG = 1;

    private QbAndroidManager mQbAndroidManager;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ContentResolver resolver = getActivity().getContentResolver();
        myHandler = new MyHandler();
        addPreferencesFromResource(R.xml.display_settings);

        mWallpaperPref = (PreferenceScreen) findPreference(KEY_WALLPAPER);
        if (ActivityManager.isLowRamDeviceStatic()
            && !SystemProperties.getBoolean("persist.low_ram.wp.enable", true)) {
            boolean ret = getPreferenceScreen().removePreference(mWallpaperPref);
            Log.d(TAG, "Remove wallpaper setting UI, ret = " + ret);
        }

        mFontSizePref = (ListPreference) findPreference(KEY_FONT_SIZE);
        mFontSizePref.setOnPreferenceChangeListener(this);
        mVirtualScreenPref = (ListPreference) findPreference(KEY_VIRTUAL_SCREEN);
        mVirtualScreenPref.setOnPreferenceChangeListener(this);
        mNotificationPulse = (CheckBoxPreference) findPreference(KEY_NOTIFICATION_PULSE);
        mEnableOptimumResolution = (CheckBoxPreference) findPreference(KEY_OPTIMUM_RESOLUTION);

        if((!(CHIP_98C.equals(HiSdkinvoke.getChipVersion()))
            && !(CHIP_98M.equals(HiSdkinvoke.getChipVersion())))
            || ActivityManager.isLowRamDeviceStatic() ){
            getPreferenceScreen().removePreference(mVirtualScreenPref);
        }

        display_manager = new HiDisplayManager();
        KEY_TV_FMT = getString(R.string.tv);
        formatList = (DisplayListPreference) findPreference(KEY_TV_FMT);
        formatList.setOnPreferenceChangeListener(this);
        formatList.setValue(String.valueOf(display_manager.getFmt()));
        mEnableOptimumResolution.setChecked(display_manager.getOptimalFormatEnable()!=0);

        mTimer = new Timer(true);

        if (mNotificationPulse != null
                && getResources().getBoolean(
                    com.android.internal.R.bool.config_intrusiveNotificationLed) == false) {
            getPreferenceScreen().removePreference(mNotificationPulse);
        } else {
            try {
                mNotificationPulse.setChecked(Settings.System.getInt(resolver,
                            Settings.System.NOTIFICATION_LIGHT_PULSE) == 1);
                mNotificationPulse.setOnPreferenceChangeListener(this);
            } catch (SettingNotFoundException snfe) {
            }
        }

        mReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                Log.d(TAG, "action = " + action);
                if ((action != null)
                        && action.equals("com.hisilicon.intent.action.ACTION_FORMAT_CHANGED")) {
                    if (mHandler.hasMessages(REFRESH_FORMAT_MSG)) {
                        mHandler.removeMessages(REFRESH_FORMAT_MSG);
                    }
                    Message msg = mHandler.obtainMessage(REFRESH_FORMAT_MSG);
                    mHandler.sendMessage(msg);
                }
            }
        };
        mFilter = new IntentFilter("com.hisilicon.intent.action.ACTION_FORMAT_CHANGED");
        mContext = getActivity();
        if (mContext != null) {
            mContext.registerReceiver(mReceiver, mFilter);
        }
    }

    int floatToIndex(float val) {
        String[] indices = getResources().getStringArray(R.array.entryvalues_font_size);
        float lastVal = Float.parseFloat(indices[0]);
        for (int i=1; i<indices.length; i++) {
            float thisVal = Float.parseFloat(indices[i]);
            if (val < (lastVal + (thisVal-lastVal)*.5f)) {
                return i-1;
            }
            lastVal = thisVal;
        }
        return indices.length-1;
    }

    public void readFontSizePreference(ListPreference pref) {
        try {
            mCurConfig.updateFrom(ActivityManagerNative.getDefault().getConfiguration());
        } catch (RemoteException e) {
            Log.w(TAG, "Unable to retrieve font size");
        }

        // mark the appropriate item in the preferences list
        int index = floatToIndex(mCurConfig.fontScale);
        pref.setValueIndex(index);

        // report the current size in the summary text
        final Resources res = getResources();
        String[] fontSizeNames = res.getStringArray(R.array.entries_font_size);
        pref.setSummary(String.format(res.getString(R.string.summary_font_size),
                    fontSizeNames[index]));
    }

    public void readVirtualScreenPreference(ListPreference pref) {
        screenState = display_manager.getVirtScreen();
        pref.setValueIndex(screenState);

        final Resources res = getResources();
        String[] screenNames = res.getStringArray(R.array.entries_virtual_screen);
        pref.setSummary(String.format(res.getString(R.string.summary_virtual_screen),
                    screenNames[screenState]));

        SharedPreferences p = getPreferenceScreen().getSharedPreferences();
        if (DEFAULT_DPI_NONE.equals(p.getString(DEFAULT_DPI_IN_1080P, DEFAULT_DPI_NONE))) {
            String default_dpi = SystemProperties.get("persist.sys.screen_density", DEFAULT_DPI_NONE);
            if (DEFAULT_DPI_NONE.equals(default_dpi)) {
                default_dpi = SystemProperties.get("ro.sf.lcd_density", DEFAULT_DPI_NONE);
            }
            if (default_dpi.equals(String.valueOf(DPI_720P))) {
                default_dpi = String.valueOf(DPI_1080P_240);
            }
            SharedPreferences.Editor editor = p.edit();
            editor.putString(DEFAULT_DPI_IN_1080P, default_dpi);
            editor.commit();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        final ContentResolver cr = getActivity().getContentResolver();
        updateState();
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if ((mReceiver != null) && (mContext != null)) {
            mContext.unregisterReceiver(mReceiver);
            mReceiver = null;
        }
    }

    private void updateState() {
        readFontSizePreference(mFontSizePref);
        readVirtualScreenPreference(mVirtualScreenPref);
    }
    public void writeFontSizePreference(Object objValue) {
        try {
            mCurConfig.fontScale = Float.parseFloat(objValue.toString());
            ActivityManagerNative.getDefault().updatePersistentConfiguration(mCurConfig);
        } catch (RemoteException e) {
            Log.w(TAG, "Unable to save font size");
        }
    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mAccelerometer) {
            try {
                IWindowManager wm = IWindowManager.Stub.asInterface(
                        ServiceManager.getService(Context.WINDOW_SERVICE));
                if (mAccelerometer.isChecked()) {
                    wm.thawRotation();
                } else {
                    wm.freezeRotation(Surface.ROTATION_0);
                }
            } catch (RemoteException exc) {
                Log.w(TAG, "Unable to save auto-rotate setting");
            }
        } else if (preference == mNotificationPulse) {
            boolean value = mNotificationPulse.isChecked();
            Settings.System.putInt(getContentResolver(), Settings.System.NOTIFICATION_LIGHT_PULSE,
                    value ? 1 : 0);
            return true;
        }else if(preference == formatList){
            formatList.setValue(String.valueOf(display_manager.getFmt()));
            return true;
        }
        else if(preference == mEnableOptimumResolution)
        {
            boolean value = mEnableOptimumResolution.isChecked();
            int curfmt = display_manager.getFmt();
            display_manager.setOptimalFormatEnable(value ? 1 : 0);
            if(0 == display_manager.getDisplayDeviceType()&&value){//0 is av output
                display_manager.setFmt(curfmt);
                display_manager.SaveParam();
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    public boolean onPreferenceChange(Preference preference, Object objValue) {
        final String key = preference.getKey();
        if (KEY_FONT_SIZE.equals(key)) {
            writeFontSizePreference(objValue);
        } else if(KEY_VIRTUAL_SCREEN.equals(key)) {
            int newValue = Integer.parseInt(String.valueOf(objValue));
            if(newValue != screenState) {
                new ConfirmDialog().show(DisplaySettings.this);
            }
        }
        try
        {
            if (KEY_TV_FMT.equals(key))
            {
                oldFmt = display_manager.getFmt();
                rect = display_manager.getOutRange();
                int newfmt = Integer.parseInt((String) objValue);
                display_manager.setFmt(newfmt);
                createDialog(newfmt);
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return true;
    }

    /**
     * createDialog will create a Dialog with two choice:Cancel or OK
     * If click OK,save format and dispose the Timer
     * If click Cancel,restore old format and dispose the Timer
     * Timer is used to Cancel as a default choice if Timer timeout.
     * */
    protected void createDialog(int value)
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(R.string.exit_ask);
        builder.setTitle(R.string.info);

        /**
         * Click OK will do setPositiveButton.
         * */
        builder.setPositiveButton(R.string.sure, new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            display_manager.SaveParam();
            display_manager.setOptimalFormatEnable(0);
            mEnableOptimumResolution.setChecked(false);
            if(mTimer != null)
            {
                if(timetask!=null)
                {
                    timetask.cancel();
                }
            }
        }
    });

     /**
     * Click Cancle will do setNegativeButton.
     * */
    builder.setNegativeButton(R.string.cancel, new OnClickListener()
    {
        public void onClick(DialogInterface dialog, int which)
        {
        resetDefaultValue();
        dialog.dismiss();
        if(mTimer != null)
        {
            if(timetask!=null)
            {
               timetask.cancel();
            }
        }
        formatList.setValue(String.valueOf(oldFmt));
       }
    });

    /*
     * Now create Dialog in fact.
     */
    alertDialog = builder.create();
    alertDialog.show();
    alertDialog.getButton(AlertDialog.BUTTON_NEGATIVE).requestFocus();

    timetask= new MyTask(oldFmt);
    mTimer.schedule(timetask, FMT_DELAY_TIME);
    alertDialog.setOnKeyListener(new OnKeyListener() {
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
        if(keyCode==KeyEvent.KEYCODE_BACK){
        resetDefaultValue();
        dialog.dismiss();
        if(mTimer != null)
        {
            if(timetask!=null)
            {
               timetask.cancel();
            }
        }
        formatList.setValue(String.valueOf(oldFmt));
        }
        return false;
        }
    });
    alertDialog.setOnCancelListener(new OnCancelListener()
    {
        public void onCancel(DialogInterface dialog)
        {
        resetDefaultValue();
        if(mTimer != null)
        {
            if(timetask!=null)
            {
        timetask.cancel();
            }
        }
        if(dialog!=null){
            dialog.dismiss();
        }
        }
       });
    }

    /*
     * Restore old format.
     */
    private void resetDefaultValue()
    {
    display_manager.setFmt(oldFmt);
     if(null != rect){
         display_manager.setOutRange(rect.left,rect.top,rect.right,rect.bottom);
     }
    }

    private QbAndroidManager getQbAndroidManager()
    {
        if (mQbAndroidManager == null)
        {
            mQbAndroidManager=(QbAndroidManager)DisplaySettings.this.getSystemService(Context.QB_ANDROID_MANAGER_SERVICE);
            if (mQbAndroidManager == null)
            {
                Log.e("Qb", "mQbAndroidManager is Null.");
            }
        }
        return mQbAndroidManager;
    }

    public class ConfirmDialog extends DialogFragment {
        public void show(DisplaySettings parent) {
            if (!parent.isAdded()) return;
            final ConfirmDialog dialog = new ConfirmDialog();
            dialog.setTargetFragment(parent, 0);
            dialog.show(parent.getFragmentManager(), "OutPut Format");
        }

        @Override
            public Dialog onCreateDialog(Bundle savedInstanceState) {
                final Context context = getActivity();
                final AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setTitle(R.string.info);
                builder.setMessage(R.string.dialog_summary_virtual_screen);

                builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        final DisplaySettings target = (DisplaySettings) getTargetFragment();
                        if (target != null) {
                            Message msg = mHandler.obtainMessage(SET_UI_SIZE_MSG);
                            mHandler.sendMessage(msg);
                        }
                        }
                        });
                builder.setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        mVirtualScreenPref.setValueIndex(screenState);
                        }
                        });
                builder.setOnKeyListener(new OnKeyListener() {
                    public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
                        if(keyCode==KeyEvent.KEYCODE_BACK){
                            mVirtualScreenPref.setValueIndex(screenState);
                        }
                        return false;
                    }
                });
                return builder.create();
            }
    }

    final Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case SET_UI_SIZE_MSG:
                    screenState = 1 - screenState;
                    display_manager.setVirtScreen(screenState);
                    display_manager.SaveParam();
                    mVirtualScreenPref.setValueIndex(screenState);

                    if (screenState == 0) {
                        SystemProperties.set("persist.sys.screen_density", String.valueOf(DPI_720P));
                    } else {
                        SharedPreferences p = getPreferenceScreen().getSharedPreferences();
                        String dpi_1080p = p.getString(DEFAULT_DPI_IN_1080P, "240");//default 240 DPI
                        SystemProperties.set("persist.sys.screen_density", dpi_1080p);
                    }

                    final Resources res = getResources();
                    String[] screenNames = res.getStringArray(R.array.entries_virtual_screen);
                    mVirtualScreenPref.setSummary(String.format(res.getString(R.string.summary_virtual_screen),
                                      screenNames[screenState]));
                    if(SystemProperties.get("persist.sys.qb.enable","false").equals("true"))
                    {
                        getQbAndroidManager();
                        mQbAndroidManager.setQbEnable (true);
                    }
                    else
                    {
                        PowerManager powerManager = (PowerManager)getActivity().getSystemService(Context.POWER_SERVICE);
                        powerManager.reboot("");
                    }
                    break;
                case REFRESH_FORMAT_MSG:
                    formatList.setValue(String.valueOf(display_manager.getFmt()));
                    mEnableOptimumResolution.setChecked(display_manager.getOptimalFormatEnable() != 0);
                    Dialog dialog = formatList.getDialog();
                    Log.d(TAG, "REFRESH_FORMAT_MSG, dialog = " + dialog);
                    if ((dialog != null) && dialog.isShowing()) {
                        dialog.cancel();
                    }
                    break;
                default:
                    break;
            }
        }
    };

    /*
     * Restore old format and set old value if timeout.
     */
    class MyTask extends TimerTask
    {
    int fmt = 0;
    public MyTask(int fmt)
    {
        this.fmt = fmt;
    }
    public void run()
    {
        resetDefaultValue();
        myHandler.sendEmptyMessage(0);
    }
    }

    class MyHandler extends Handler {
        public MyHandler() {
        }

        public MyHandler(Looper L) {
            super(L);
        }
        @Override
        public void handleMessage(Message msg) {
            // TODO Auto-generated method stub
            Log.d("MyHandler", "handleMessage......");
            super.handleMessage(msg);
            formatList.setValue(String.valueOf(oldFmt));
            if(alertDialog!=null){
              alertDialog.dismiss();
            }
        }
    }
}
