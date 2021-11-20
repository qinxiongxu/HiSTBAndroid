package com.hisilicon.uvmos.monitor;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;
import android.text.TextUtils;

public class MonitorService extends Service {

    private final String DIR_PATH_1 = "/data/UV-MOS";
    private final String DIR_PATH_2 = "/data/sme";
    private final String FILE_PATH_INPUT = "/data/UV-MOS/UvMOSInputPara.log";
    private final String FILE_PATH_ENTER = "/data/sme/PlayEnterFile.log";
    private final String FILE_PATH_QUIT = "/data/sme/PlayQuitFile.log";

    private final String M_MEDIA_PLAY_ACTION = "MEDIA_PLAY_UVMOS_MONITOR_MESSAGE";
    private final String M_MESSAGE_STATUS = "PLAYER_STATUS";
    private final String M_MESSAGE_PLAY_PREPARE = "UVMOS_PLAY_PREPARE";
    private final String M_MESSAGE_PLAY_START = "UVMOS_PLAY_START";
    private final String M_MESSAGE_PLAY_COMPLETE = "UVMOS_PLAY_COMPLETE";
    private final String M_BUFFER_START = "UVMOS_BUFFER_START";
    private final String M_BUFFER_END = "UVMOS_BUFFER_END";
    private final String M_PLAYER_TYPE = "PlayerType";
    private final String M_BUFFER_START_TIME = "StallingHappenTime";
    private final String M_BUFFER_END_TIME = "StallingRestoreTime";
    private final String M_URL = "VideoURL";// string
    private final String M_START_TIME = "StartPlayTime";// int
    private final String M_STOP_TIME = "StopPlayTime";// int
    private final String M_VIDEO_RATE = "VideoRate";// long
    private final String M_PLAY_TIME = "DisplayFirstFrameTime";// int
    private final String M_MEDIA_WIDTH = "MediaWidthResolution";// long
    private final String M_MEDIA_HEIGHT = "MediaHeightResolution";// long
    private final String M_FRAME_RATE = "FrameRate";// int
    private final String M_ENCODE_TYPE = "EncodeType";// string

    private final SimpleDateFormat format = new SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault());
    private final SimpleDateFormat format2 = new SimpleDateFormat(
            "yyyy-MM-dd HH:mm:ss:SSS", Locale.getDefault());

    private String VideoURL = "";
    private String PlayerType = "";
    private String VideoRate = "";
    private String MediaWidthResolution = "";
    private String MediaHeightResolution = "";
    private String EncodeType = "";
    private String FrameRate = "";
    private String StartPlayTime = "";
    private String DisplayFirstFrameTime = "";
    private String StallingHappenTime = "";
    private String StallingRestoreTime = "";
    private Date startDate;

    private MediaReceiver receiver;

    private boolean isPrepare;

    private boolean isStart;

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        init();
        receiver = new MediaReceiver();
        IntentFilter filter = new IntentFilter();
        filter.addAction(M_MEDIA_PLAY_ACTION);
        registerReceiver(receiver, filter);
        super.onCreate();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public void onDestroy() {
        if (null != receiver) {
            unregisterReceiver(receiver);
            receiver = null;
        }
        super.onDestroy();
    }

    private void init() {
        try {
            File dirPath1 = new File(DIR_PATH_1);
            if (!dirPath1.exists()) {
                dirPath1.mkdirs();
                chmod(DIR_PATH_1);
            }

            File dirPath2 = new File(DIR_PATH_2);
            if (!dirPath2.exists()) {
                dirPath2.mkdirs();
                chmod(DIR_PATH_2);
            }

            File inputFile = new File(FILE_PATH_INPUT);
            if (inputFile.exists()) {
                inputFile.delete();
            }
            inputFile.createNewFile();
            chmod(FILE_PATH_INPUT);

            File enterFile = new File(FILE_PATH_ENTER);
            if (!enterFile.exists()) {
                enterFile.createNewFile();
                chmod(FILE_PATH_ENTER);
            }

            File quitFile = new File(FILE_PATH_QUIT);
            if (!quitFile.exists()) {
                quitFile.createNewFile();
                chmod(FILE_PATH_QUIT);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String getStrExtra(Intent intent, String key) {
        if (null == intent)
            return "";

        String result = intent.getStringExtra(key);
        if (TextUtils.isEmpty(result))
            return "";

        return result;
    }

    private String getIntExtra(Intent intent, String key) {
        if (null == intent)
            return "";
        return String.valueOf(intent.getIntExtra(key, 0));
    }

    private String getLongExtra(Intent intent, String key) {
        if (null == intent)
            return "";
        return String.valueOf(intent.getLongExtra(key, 0));
    }

    private String getTime(Intent intent, SimpleDateFormat format, String key) {
        String result = "";
        if (null != intent) {
            long time = intent.getLongExtra(key, System.currentTimeMillis());
            result = format.format(new Date(time));
        }
        return result;
    }

    private void chmod(String filePath) {
        try {
            String command = "chmod 777 " + filePath;
            Runtime runtime = Runtime.getRuntime();
            runtime.exec(command);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void checkData() {
        if (TextUtils.isEmpty(VideoURL)) {
            VideoURL = "";
        }
        if (TextUtils.isEmpty(PlayerType)) {
            PlayerType = "HiPlayer";
        }
        if (TextUtils.isEmpty(VideoRate) || VideoRate.equals("0")) {
            VideoRate = "15192788";
        }
        if (TextUtils.isEmpty(MediaWidthResolution)
                || MediaWidthResolution.equals("0")) {
            MediaWidthResolution = "3840";
        }
        if (TextUtils.isEmpty(MediaHeightResolution)
                || MediaHeightResolution.equals("0")) {
            MediaHeightResolution = "2160";
        }
        if (TextUtils.isEmpty(EncodeType)) {
            EncodeType = "H265";
        }
        if (TextUtils.isEmpty(FrameRate) || FrameRate.equals("0")) {
            FrameRate = "30";
        }
    }

    long start = 0;
    long end = 0;

    private class MediaReceiver extends BroadcastReceiver {

        @Override
        public void onReceive(Context context, Intent intent) {
            StringBuilder sb = new StringBuilder();
            String status = intent.getStringExtra(M_MESSAGE_STATUS);
            Log.i("MediaReceiver","status = "+status);
            if (!isPrepare && M_MESSAGE_PLAY_PREPARE.equals(status)) {
                PlayerType = getStrExtra(intent, M_PLAYER_TYPE);
                startDate = new Date(intent.getLongExtra(M_START_TIME,
                        System.currentTimeMillis()));
                VideoURL = getStrExtra(intent, M_URL);
                MediaWidthResolution = getLongExtra(intent, M_MEDIA_WIDTH);
                MediaHeightResolution = getLongExtra(intent, M_MEDIA_HEIGHT);
                VideoRate = getLongExtra(intent, M_VIDEO_RATE);
                FrameRate = getIntExtra(intent, M_FRAME_RATE);
                EncodeType = getStrExtra(intent, M_ENCODE_TYPE);
                StartPlayTime = format2.format(startDate);

                sb.append(StartPlayTime).append("\n");
                Common.writeFile(FILE_PATH_ENTER, sb.toString(), true);
                isPrepare = true;
                start = System.currentTimeMillis();
            } else if (isPrepare && !isStart
                    && M_MESSAGE_PLAY_START.equals(status)) {
                checkData();
                StartPlayTime = format.format(startDate);
                DisplayFirstFrameTime = getTime(intent, format, M_PLAY_TIME);
                sb.append("VideoURL=").append(VideoURL).append("\n");
                sb.append("PlayerType=").append(PlayerType).append("\n");
                sb.append("VideoRate=").append(VideoRate).append("\n");
                sb.append("MediaWidthResolution=").append(MediaWidthResolution)
                        .append("\n");
                sb.append("MediaHeightResolution=")
                        .append(MediaHeightResolution).append("\n");
                sb.append("EncodeType=").append(EncodeType).append("\n");
                sb.append("StartPlayTime=").append(StartPlayTime).append("\n");
                sb.append("DisplayFirstFrameTime=")
                        .append(DisplayFirstFrameTime).append("\n");
                sb.append("FrameRate=").append(FrameRate).append("\n");
                Common.writeFile(FILE_PATH_INPUT, sb.toString(), false);
                isStart = true;
                end = System.currentTimeMillis();
            } else if (isStart && M_BUFFER_START.equals(status)) {
                StallingHappenTime = getTime(intent, format,
                        M_BUFFER_START_TIME);
                sb.append("StallingHappenTime=");
                sb.append(StallingHappenTime);
                sb.append("\n");
                Common.writeFile(FILE_PATH_INPUT, sb.toString(), true);
            } else if (isStart && M_BUFFER_END.equals(status)) {
                StallingRestoreTime = getTime(intent, format, M_BUFFER_END_TIME);
                sb.append("StallingRestoreTime=");
                sb.append(StallingRestoreTime);
                sb.append("\n");
                Common.writeFile(FILE_PATH_INPUT, sb.toString(), true);
            } else if (isStart && M_MESSAGE_PLAY_COMPLETE.equals(status)) {
                String stopTime = getTime(intent, format2, M_STOP_TIME);
                sb.append(stopTime);
                sb.append("\n");
                Common.writeFile(FILE_PATH_QUIT, sb.toString(), true);
                isPrepare = false;
                isStart = false;
            }
        }
    }

}
