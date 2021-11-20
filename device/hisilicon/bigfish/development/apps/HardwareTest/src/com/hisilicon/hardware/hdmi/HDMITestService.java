package com.hisilicon.hardware.hdmi;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.ListView;

import com.hisilicon.hardware.util.Common;
import com.hisilicon.hardwaretest.R;
import com.sample.atc.utils.SampleUtils;
import com.hisilicon.android.hisysmanager.HiSysManager;
import android.os.SystemProperties;
public class HDMITestService extends Service {

    private final String TAG = "TSPlayService";

    private final int SOUND_MODE = 0;
    private final int VIDEO_TIMING = 1;
    private final int COLOR_MODE = 2;
    private final int APECTRATE = 3;
    private final int REVERSE_COLOR = 4;
    private final int RGB_FULLRANGE = 5;
    private final int HDMI_MODE = 6;
    private final int DEEP_COLOR = 7;
    private final int XVYCC = 8;
    private final int YCBCR_FULLRANGE = 9;
    private final int HDCP = 10;
    private final int SET_DISP_3D = 11;
    private final int DISPLAY_EDIT = 12;
    private final int DISPLAY_RESET = 13;

    private final int FRESH_BUTTON_RIGHT = 1;
    private final int FRESH_BUTTON_LEFT = 2;
    private final int EXCUTE_XVYCC_FAIL = 3;
    private final int EXCUTE_SET_DISP_3D_FAIL = 4;
    private final int EXCUTE_SUCCESS = 5;
    private final int mDelayTime = 300;
    private final int SUCCESS = 0;
    private int tempPosition = -1;

    private final int TIM_1080P50 = 10;
    private final int TIM_1080P60 = 5;
    private final int DEEP_36BIT = 2;
    private ArrayList<HashMap<String, String>> list;
    private ArrayList<String[]> messages;
    private ArrayList<String[]> values;
    private ArrayList<Integer> positions;
    private HDMITestDialog tsPlayDialog;

    private SampleUtils sample;

    private ViewItem viewItem;
    private Context context;
    private ArrayList<Integer> defaultStatus;
    private boolean setVolt;
    private  final String PROPERTY_PATH = "ro.product.name";
    private HiSysManager mhisys;
    private Handler mhandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
            case FRESH_BUTTON_LEFT:
                viewItem.setLeftImageNormal();
                break;
            case FRESH_BUTTON_RIGHT:
                viewItem.setRightImageNormal();
                break;
            case EXCUTE_XVYCC_FAIL:
                showFailMessage(R.string.dialog_message_xvYcc);
                initStatus();
                refreshData();
                break;
            case EXCUTE_SET_DISP_3D_FAIL:
                showFailMessage(R.string.dialog_message_3d);
                initStatus();
                refreshData();
                break;
            case EXCUTE_SUCCESS:
                int position = msg.arg1;
                tempPosition = positions.get(position);
                initStatus();
                refreshData();
                setVolt();
                break;
            default:
                break;
            }
        }
    };

    @Override
    public void onCreate() {
        context = this;
        tsPlayDialog = new HDMITestDialog(HDMITestService.this);

        sample = new SampleUtils();
        sample.hdmiInit();
        sample.hdmiOpen();
		mhisys = new HiSysManager();
        super.onCreate();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        init();
        tsPlayDialog.showMenuDialog(new KeyListener());
        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public IBinder onBind(Intent arg0) {
        return null;
    }

    @Override
    public void onDestroy() {
        reset();
        if (setVolt)
       mhisys.adjustDevState("/proc/msp/pm_core","volt=0");

        super.onDestroy();
    }

    private void init() {
        String device = SystemProperties.get(PROPERTY_PATH);
        setVolt = "Hi3798MV100".equals(device) || "Hi3796MV100".equals(device);
        initArray();
        initMessages();
        initValues();
        initStatus();
        refreshData();
        tempPosition = positions.get(0);
    }

    private void initArray() {
        Common.title_array = getResources().getStringArray(R.array.title_array);

        Common.hi_unf_snd_mode_array = getResources().getStringArray(R.array.hi_unf_snd_mode_array);
        Common.video_timing_array = getResources().getStringArray(R.array.video_timing_array);
        Common.color_mode_array = getResources().getStringArray(R.array.color_mode_array);
        Common.apectrate_array = getResources().getStringArray(R.array.apectrate_array);
        Common.reverse_color_array = getResources().getStringArray(R.array.reverse_color_array);
        Common.rgb_fullrange_array = getResources().getStringArray(R.array.rgb_fullrange_array);
        Common.hdmi_mode_array = getResources().getStringArray(R.array.hdmi_mode_array);
        Common.deepcolor_array = getResources().getStringArray(R.array.deepcolor_array);
        Common.xvycc_array = getResources().getStringArray(R.array.xvycc_array);
        Common.ycbcrfullrange_array = getResources().getStringArray(R.array.ycbcrfullrange_array);
        Common.hdcp_array = getResources().getStringArray(R.array.hdcp_array);
        Common.set_disp_3d_array = getResources().getStringArray(R.array.set_disp_3d_array);

        Common.hi_unf_snd_mode_value_array = getResources().getStringArray(R.array.hi_unf_snd_mode_value_array);
        Common.video_timing_value_array = getResources().getStringArray(R.array.video_timing_value_array);
        Common.color_mode_value_array = getResources().getStringArray(R.array.color_mode_value_array);
        Common.apectrate_value_array = getResources().getStringArray(R.array.apectrate_value_array);
        Common.reverse_color_value_array = getResources().getStringArray(R.array.reverse_color_value_array);
        Common.rgb_fullrange_value_array = getResources().getStringArray(R.array.rgb_fullrange_value_array);
        Common.hdmi_mode_value_array = getResources().getStringArray(R.array.hdmi_mode_value_array);
        Common.deepcolor_value_array = getResources().getStringArray(R.array.deepcolor_value_array);
        Common.xvycc_value_array = getResources().getStringArray(R.array.xvycc_value_array);
        Common.ycbcrfullrange_value_array = getResources().getStringArray(R.array.ycbcrfullrange_value_array);
        Common.hdcp_value_array = getResources().getStringArray(R.array.hdcp_value_array);
        Common.set_disp_3d_value_array = getResources().getStringArray(R.array.set_disp_3d_value_array);
    }

    private void initStatus() {
        HashMap<String, String> maps = new HashMap<String, String>();

        try {
            BufferedReader reader = new BufferedReader(new FileReader(
                    Common.FILE_HDMI_INFO));
            String line = reader.readLine();
            while (null != line) {
                line = line.trim();
                if (line.contains("|") && !line.startsWith("-")) {
                    String[] keyValue = line.split("\\|");
                    for (String string : keyValue) {
                        String[] keyValue1 = string.split(": ");
                        String key = keyValue1[0].trim();
                        String value = keyValue1[1].trim();
                        maps.put(key, value);
                    }
                }
                line = reader.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            BufferedReader reader = new BufferedReader(new FileReader(
                    Common.FILE_SOUND_INFO));
            String line = reader.readLine();
            while (null != line) {
                line = line.trim();
                if (line.contains("HDMI Status")) {
                    String soundMode = line.substring(line.indexOf("(") + 1,
                            line.indexOf(")"));
                    maps.put(Common.SOUND_MODE, soundMode);
                    break;
                }
                line = reader.readLine();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        Common.hi_unf_snd_mode_position = getStringArrayPosition(maps.get(Common.SOUND_MODE), Common.hi_unf_snd_mode_array);
        Common.video_timing_position = getStringArrayPosition(maps.get(Common.VIDEO_TIMING), Common.video_timing_array);
        Common.color_mode_position = getStringArrayPosition(maps.get(Common.COLOR_MODE), Common.color_mode_array);
        Common.apectrate_position = getStringArrayPosition(maps.get(Common.APECTRATE), Common.apectrate_array);
        Common.reverse_color_position = sample.getReverseMode() == 2 ? 0 : 1;
        Common.rgb_fullrange_position = sample.getRGBMode();
        Common.hdmi_mode_position = getStringArrayPosition(maps.get(Common.HDMI_MODE), Common.hdmi_mode_array);
        Common.deepcolor_position = getStringArrayPosition(maps.get(Common.DEEPCOLOR), Common.deepcolor_array);
        Common.xvycc_position = getStringArrayPosition(maps.get(Common.XVYCC),Common.xvycc_array);
        Common.ycbcrfullrange_position = sample.getYCCMode();
        Common.hdcp_position = getStringArrayPosition(maps.get(Common.HDCP),Common.hdcp_array);
        Common.set_disp_3d_position = getStringArrayPosition(maps.get(Common.SET_DISP_3D), Common.set_disp_3d_array);
        if (null == defaultStatus) {
            saveDefaultStatus();
        }
    }
    private void saveDefaultStatus() {
        defaultStatus = new ArrayList<Integer>();
        defaultStatus.add(Common.hi_unf_snd_mode_position);
        defaultStatus.add(Common.video_timing_position);
        defaultStatus.add(Common.color_mode_position);
        defaultStatus.add(Common.apectrate_position);
        defaultStatus.add(Common.reverse_color_position);
        defaultStatus.add(Common.rgb_fullrange_position);
        defaultStatus.add(Common.hdmi_mode_position);
        defaultStatus.add(Common.deepcolor_position);
        defaultStatus.add(Common.xvycc_position);
        defaultStatus.add(Common.ycbcrfullrange_position);
        defaultStatus.add(Common.hdcp_position);
        defaultStatus.add(Common.set_disp_3d_position);
    }

    private int getStringArrayPosition(String value, String[] values) {
        if (null == value || "".equals(value) || null == values)
            return -1;
        for (int i = 0; i < values.length; i++) {
            if (values[i].contains(value))
                return i;
        }
        return -1;
    }

    private void initValues() {
        values = new ArrayList<String[]>();
        values.add(Common.hi_unf_snd_mode_value_array);
        values.add(Common.video_timing_value_array);
        values.add(Common.color_mode_value_array);
        values.add(Common.apectrate_value_array);
        values.add(Common.reverse_color_value_array);
        values.add(Common.rgb_fullrange_value_array);
        values.add(Common.hdmi_mode_value_array);
        values.add(Common.deepcolor_value_array);
        values.add(Common.xvycc_value_array);
        values.add(Common.ycbcrfullrange_value_array);
        values.add(Common.hdcp_value_array);
        values.add(Common.set_disp_3d_value_array);
    }

    private void initMessages() {
        messages = new ArrayList<String[]>();
        messages.add(Common.hi_unf_snd_mode_array);
        messages.add(Common.video_timing_array);
        messages.add(Common.color_mode_array);
        messages.add(Common.apectrate_array);
        messages.add(Common.reverse_color_array);
        messages.add(Common.rgb_fullrange_array);
        messages.add(Common.hdmi_mode_array);
        messages.add(Common.deepcolor_array);
        messages.add(Common.xvycc_array);
        messages.add(Common.ycbcrfullrange_array);
        messages.add(Common.hdcp_array);
        messages.add(Common.set_disp_3d_array);
    }

    private void initPositions() {
        positions = new ArrayList<Integer>();
        positions.add(Common.hi_unf_snd_mode_position);
        positions.add(Common.video_timing_position);
        positions.add(Common.color_mode_position);
        positions.add(Common.apectrate_position);
        positions.add(Common.reverse_color_position);
        positions.add(Common.rgb_fullrange_position);
        positions.add(Common.hdmi_mode_position);
        positions.add(Common.deepcolor_position);
        positions.add(Common.xvycc_position);
        positions.add(Common.ycbcrfullrange_position);
        positions.add(Common.hdcp_position);
        positions.add(Common.set_disp_3d_position);
        positions.add(Common.display_edit_position);
        positions.add(Common.display_reset_position);
    }

    private void refreshData() {
        initPositions();

        HashMap<String, String> map = null;
        list = new ArrayList<HashMap<String, String>>();
        int length = Common.title_array.length - 1;
        for (int i = 0; i < length; i++) {
            map = new HashMap<String, String>();
            map.put(Common.TITLE, getTitle(i));
            map.put(Common.MESSAGE, getMessage(i));
            list.add(map);
        }
        map = new HashMap<String, String>();
        map.put(Common.TITLE, "hdmi_display_edit");
        map.put(Common.MESSAGE, "");
        list.add(map);
        map = new HashMap<String, String>();
        map.put(Common.TITLE, "Reset");
        map.put(Common.MESSAGE, "");
        list.add(map);
        tsPlayDialog.refreshView(list);
    }

    private String getTitle(int position) {
        return Common.title_array[position];
    }

    private String getMessage(int position) {
        if (positions.get(position) < 0)
            return "";
        return messages.get(position)[positions.get(position)];
    }

    private String getCommand(int position) {
        StringBuffer sb = new StringBuffer();
        if (HDMI_MODE != position) {
            sb.append(getTitle(position));
            sb.append(" ");
        }
        sb.append(values.get(position)[positions.get(position)]);
        Log.i(TAG, "****************** command = " + sb.toString());
        return sb.toString();
    }

    private String getHexString(int num) {
        String result = Integer.toHexString(num);
        if (1 == result.length()) {
            result = 0 + result;
        }
        return String.format(Locale.getDefault(), "%6s", result.toUpperCase(Locale.getDefault()));
    }

    private void showFailMessage(int strId) {
        tsPlayDialog.showMessageDialog(getStrResources(R.string.dialog_title), getStrResources(strId));
    }

    private String getStrResources(int strId) {
        return context.getResources().getString(strId);
    }

    private void doEventLeft(int position) {
        switch (position) {
        case SOUND_MODE:
            Common.hi_unf_snd_mode_position--;
            if (Common.hi_unf_snd_mode_position < 0)
                Common.hi_unf_snd_mode_position = Common.hi_unf_snd_mode_array.length - 1;
            break;
        case VIDEO_TIMING:
            Common.video_timing_position--;
            if (Common.video_timing_position < 0)
                Common.video_timing_position = Common.video_timing_array.length - 1;
            break;
        case COLOR_MODE:
            Common.color_mode_position--;
            if (Common.color_mode_position < 0)
                Common.color_mode_position = Common.color_mode_array.length - 1;
            break;
        case APECTRATE:
            Common.apectrate_position--;
            if (Common.apectrate_position < 0)
                Common.apectrate_position = Common.apectrate_array.length - 1;
            break;
        case REVERSE_COLOR:
            Common.reverse_color_position--;
            if (Common.reverse_color_position < 0)
                Common.reverse_color_position = Common.reverse_color_array.length - 1;
            break;
        case RGB_FULLRANGE:
            Common.rgb_fullrange_position--;
            if (Common.rgb_fullrange_position < 0)
                Common.rgb_fullrange_position = Common.rgb_fullrange_array.length - 1;
            break;
        case HDMI_MODE:
            Common.hdmi_mode_position--;
            if (Common.hdmi_mode_position < 0)
                Common.hdmi_mode_position = Common.hdmi_mode_array.length - 1;
            break;
        case DEEP_COLOR:
            Common.deepcolor_position--;
            if (Common.deepcolor_position < 0)
                Common.deepcolor_position = Common.deepcolor_array.length - 1;
            break;
        case XVYCC:
            Common.xvycc_position--;
            if (Common.xvycc_position < 0)
                Common.xvycc_position = Common.xvycc_array.length - 1;
            break;
        case YCBCR_FULLRANGE:
            Common.ycbcrfullrange_position--;
            if (Common.ycbcrfullrange_position < 0)
                Common.ycbcrfullrange_position = Common.ycbcrfullrange_array.length - 1;
            break;
        case HDCP:
            Common.hdcp_position--;
            if (Common.hdcp_position < 0)
                Common.hdcp_position = Common.hdcp_array.length - 1;
            break;
        case SET_DISP_3D:
            Common.set_disp_3d_position--;
            if (Common.set_disp_3d_position < 0)
                Common.set_disp_3d_position = Common.set_disp_3d_array.length - 1;
            break;
        default:
            break;
        }
        viewItem.setLeftImageFocus();
        refreshData();
        mhandler.removeMessages(FRESH_BUTTON_LEFT);
        mhandler.sendEmptyMessageDelayed(FRESH_BUTTON_LEFT, mDelayTime);
    }

    private void doEventRight(int position) {
        switch (position) {
        case SOUND_MODE:
            Common.hi_unf_snd_mode_position++;
            if (Common.hi_unf_snd_mode_position > Common.hi_unf_snd_mode_array.length - 1)
                Common.hi_unf_snd_mode_position = 0;
            break;
        case VIDEO_TIMING:
            Common.video_timing_position++;
            if (Common.video_timing_position > Common.video_timing_array.length - 1)
                Common.video_timing_position = 0;
            break;
        case COLOR_MODE:
            Common.color_mode_position++;
            if (Common.color_mode_position > Common.color_mode_array.length - 1)
                Common.color_mode_position = 0;
            break;
        case APECTRATE:
            Common.apectrate_position++;
            if (Common.apectrate_position > Common.apectrate_array.length - 1)
                Common.apectrate_position = 0;
            break;
        case REVERSE_COLOR:
            Common.reverse_color_position++;
            if (Common.reverse_color_position > Common.reverse_color_array.length - 1)
                Common.reverse_color_position = 0;
            break;
        case RGB_FULLRANGE:
            Common.rgb_fullrange_position++;
            if (Common.rgb_fullrange_position > Common.rgb_fullrange_array.length - 1)
                Common.rgb_fullrange_position = 0;
            break;
        case HDMI_MODE:
            Common.hdmi_mode_position++;
            if (Common.hdmi_mode_position > Common.hdmi_mode_array.length - 1)
                Common.hdmi_mode_position = 0;
            break;
        case DEEP_COLOR:
            Common.deepcolor_position++;
            if (Common.deepcolor_position > Common.deepcolor_array.length - 1)
                Common.deepcolor_position = 0;
            break;
        case XVYCC:
            Common.xvycc_position++;
            if (Common.xvycc_position > Common.xvycc_array.length - 1)
                Common.xvycc_position = 0;
            break;
        case YCBCR_FULLRANGE:
            Common.ycbcrfullrange_position++;
            if (Common.ycbcrfullrange_position > Common.ycbcrfullrange_array.length - 1)
                Common.ycbcrfullrange_position = 0;
            break;
        case HDCP:
            Common.hdcp_position++;
            if (Common.hdcp_position > Common.hdcp_array.length - 1)
                Common.hdcp_position = 0;
            break;
        case SET_DISP_3D:
            Common.set_disp_3d_position++;
            if (Common.set_disp_3d_position > Common.set_disp_3d_array.length - 1)
                Common.set_disp_3d_position = 0;
            break;
        default:
            break;
        }
        viewItem.setRightImageFocus();
        refreshData();
        mhandler.removeMessages(FRESH_BUTTON_RIGHT);
        mhandler.sendEmptyMessageDelayed(FRESH_BUTTON_RIGHT, mDelayTime);
    }

    private void doEventUpOrDown(int keyCode, int position) {
        switch (position) {
        case SOUND_MODE:
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN)
                Common.hi_unf_snd_mode_position = tempPosition;
            break;
        case VIDEO_TIMING:
            Common.video_timing_position = tempPosition;
            break;
        case COLOR_MODE:
            Common.color_mode_position = tempPosition;
            break;
        case APECTRATE:
            Common.apectrate_position = tempPosition;
            break;
        case REVERSE_COLOR:
            Common.reverse_color_position = tempPosition;
            break;
        case RGB_FULLRANGE:
            Common.rgb_fullrange_position = tempPosition;
            break;
        case HDMI_MODE:
            Common.hdmi_mode_position = tempPosition;
            break;
        case DEEP_COLOR:
            Common.deepcolor_position = tempPosition;
            break;
        case XVYCC:
            Common.xvycc_position = tempPosition;
            break;
        case YCBCR_FULLRANGE:
            Common.ycbcrfullrange_position = tempPosition;
            break;
        case HDCP:
            Common.hdcp_position = tempPosition;
            break;
        case SET_DISP_3D:
            Common.set_disp_3d_position = tempPosition;
            break;
        default:
            break;
        }
        refreshData();
        if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN) {
            if (position < (positions.size() - 1))
                tempPosition = positions.get(position + 1);
        } else {
            if (position != (0))
                tempPosition = positions.get(position - 1);
        }
    }

    private void excuteSample(final int position) {
        if ("".equals(getMessage(position)))
            return;
        else if (SOUND_MODE == position) {
            sample.setHdmiMode(Common.hi_unf_snd_mode_position);
        } else {
            if (DEEP_COLOR == position && positions.get(position) != 2) {
                sample.hdmiTestCMD("hdmi_xvycc 0");
            }
            sample.hdmiTestCMD(getCommand(position));
        }
    }

    private void reset(){
        for (int i = 0; i < defaultStatus.size(); i++) {
            if (defaultStatus.get(i) != positions.get(i)) {
                positions.set(i, defaultStatus.get(i));
                excuteSample(i);
            }
        }
        initStatus();
        refreshData();
    }

    private void setVolt() {
        if (!setVolt)
            return;
        int timPosition = Common.video_timing_position;
        int deepPosition = Common.deepcolor_position;
        if (timPosition >= Common.video_timing_array.length - 4)
            mhisys.adjustDevState("/proc/msp/pm_core","volt=1170");
        else if (deepPosition == DEEP_36BIT
                && (timPosition == TIM_1080P50 || timPosition == TIM_1080P60)) {
            mhisys.adjustDevState("/proc/msp/pm_core","volt=1170");
        } else
            mhisys.adjustDevState("/proc/msp/pm_core","volt=0");
    }
    private void doEventCenter(final int position) {
        if (DISPLAY_RESET == position) {
            reset();
            //showFailMessage(R.string.dialog_message_reset);
        } else if (DISPLAY_EDIT == position) {
            int[] result = sample.hdmiDisplayEdit();
            String title = Common.title_array[HDMI_MODE];
            StringBuffer message = new StringBuffer();
            for (int i = 1; i <= result.length; i++) {
                message.append(getHexString(result[i - 1]));
                if (i % 16 == 0) {
                    message.append("\n");
                }
            }
            tsPlayDialog.showMessageDialog(title, message.toString());
        } else {
            int res = -1;
            if ("".equals(getMessage(position)))
                return;
            else if (SOUND_MODE == position) {
                res = sample.setHdmiMode(Common.hi_unf_snd_mode_position);
            } else if (DEEP_COLOR == position) {
                if(positions.get(position) != 2)
                    sample.hdmiTestCMD("hdmi_xvycc 0");
                res = sample.hdmiTestCMD(getCommand(position));
            } else {
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        int result = sample.hdmiTestCMD(getCommand(position));
                        Log.i(TAG, "************* result = " + result);
                        if (SUCCESS != result) {
                            if (XVYCC == position) {
                                mhandler.sendEmptyMessage(EXCUTE_XVYCC_FAIL);
                            } else if (SET_DISP_3D == position) {
                                mhandler.sendEmptyMessage(EXCUTE_SET_DISP_3D_FAIL);
                            }
                        } else {
                            Message msg = Message.obtain(mhandler, EXCUTE_SUCCESS, position, 0);
                            msg.sendToTarget();
                        }
                    }
                }).start();
            }
            if(SUCCESS == res){
                tempPosition = positions.get(position);
                initStatus();
                refreshData();
                setVolt();
            }
        }
    }

    public class KeyListener implements OnKeyListener {

        private ListView listView;

        @Override
        public boolean onKey(View v, int keyCode, KeyEvent event) {
            if (event.getAction() == KeyEvent.ACTION_UP)
                return false;

            listView = (ListView) v;
            viewItem = (ViewItem) listView.getSelectedView();
            int position = listView.getSelectedItemPosition();
            if (DISPLAY_EDIT != position && DISPLAY_RESET != position) {

                if (keyCode == KeyEvent.KEYCODE_DPAD_LEFT)
                doEventLeft(position);
                else if (keyCode == KeyEvent.KEYCODE_DPAD_RIGHT)
                doEventRight(position);
            }
            if (keyCode == KeyEvent.KEYCODE_DPAD_DOWN || keyCode == KeyEvent.KEYCODE_DPAD_UP)
                doEventUpOrDown(keyCode, position);
            else if (keyCode == KeyEvent.KEYCODE_DPAD_CENTER)
                doEventCenter(position);
            return false;
        }
    }

}
