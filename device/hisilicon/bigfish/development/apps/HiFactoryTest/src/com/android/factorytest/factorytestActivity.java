package com.android.factorytest;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.ConnectivityManager;
import android.net.ethernet.EthernetManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.INetworkManagementService;
import android.os.Message;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.storage.IMountService;
import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.MediaController;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import com.hisilicon.android.sdkinvoke.HiSdkinvoke;
import com.hisilicon.android.hisysmanager.HiSysManager;
public class factorytestActivity extends Activity {

    private final String TAG = "Factorytest";
    private final String MAC_FILENAME = "mac_info.xml";
    private final String VIDEO_NAME = "test.wmv";
    private final String WIFI_USER = "HiABC";
    private final String WIFI_PASSWORD = "9988776655";
    private final String GPIO5_5_6_3798MV100_DIR = "0xF8004400 0x60";
    private final String GPIO5_5_6_3798MV100_CLOSE = "0xF8004180 0x60";
    private final String GPIO5_5_3798MV100_GREEN = "0xF8004180 0x20";
    private final String GPIO5_6_3798MV100_RED = "0xF8004180 0x40";
    private final int GREEN = 0;
    private final int RED = 1;

    private final int WHAT_WIFI_ADDRESS = 1;
    private final int WHAT_ETHERNET_ADDRESS = 2;
    private final int WHAT_UPGRADE_TIME = 3;

    private TextView rst_play_time;
    private TextView rst_version;
    private TextView rst_net_mac;
    private TextView rst_net_ip;
    private TextView rst_wifi_mac;
    private TextView rst_wifi_ip;
    private TextView rst_set_mac_id;
    private TextView rst_usb1;
    private TextView rst_usb2;
    private TextView rst_usb3;
    private TextView rst_usb4;
    private TextView rst_sd;
    private TextView rst_sata;
    private TextView rst_you_xian;
    private TextView rst_wifi;
    private TextView rst_set_mac;
    private TextView rst_hdmi_output;
    private TextView rst_av_output;
    private ScrollView description;

    private Button btn_change_output;

    private SurfaceView surfaceView;
    private SurfaceHolder surfaceHolder;
    private MediaPlayer player;

    private IntentFilter WifiFilter;
    private IntentFilter USBsdcardFilter;

    private List<android.os.storage.ExtraInfo> mMountList;
    private EthernetManager mEthManager;
    private TDisplayManager mTDisplay;
    private WifiInfo mWifiInfo;
    private WifiManager wifiManager;

    private SetMacInfo macinfo;

    private String[] testvideoinfo = new String[2];
    private String[] usb_numinfo = new String[10];
    private String mNew_Mac;
    private String mMacFile_Path;
    private String mMacaddr;
    private String mSystemVersion;

    private boolean yetSet = false;// 只1次自动烧录
    private boolean isHdmiMode = true;// 默认HDMI输出
    private boolean showDescription = false;

    private int wifiCount = 0;
    private int ethCount = 0;
    private int playTime = 0;

    private Timer wifitimer;
    private Timer ethtimer;
    private Timer timeTimer;

    private Handler mainHandler = new Handler() {
        public void handleMessage(Message message) {
            switch (message.what) {

            case WHAT_WIFI_ADDRESS:
                if (getwifiaddress())
                    closewifitimer(false);
                else if (wifiCount > 20)
                    closewifitimer(true);
                wifiCount++;
                break;

            case WHAT_ETHERNET_ADDRESS:
                if (getethernetAddr())
                    closeEthTimer(false);
                else if (ethCount > 20)
                    closeEthTimer(true);
                ethCount++;
                break;

            case WHAT_UPGRADE_TIME:
                if (player.isPlaying())
                    playTime++;
                rst_play_time.setText(MessageFormat.format(
                        "{0,number,00}:{1,number,00}:{2,number,00}",
                        playTime / 60 / 60, playTime / 60 % 60, playTime % 60));
                changeLight(playTime % 2);
                break;
            }
        }
    };

    private BroadcastReceiver WifiReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {

            if (WifiManager.WIFI_STATE_CHANGED_ACTION
                    .equals(intent.getAction())) {
                int wifiState = intent.getIntExtra(
                        WifiManager.EXTRA_WIFI_STATE, 0);
                Log.i(TAG, "wifiState:" + wifiState);
                switch (wifiState) {

                case WifiManager.WIFI_AP_STATE_ENABLED:
                    Log.i(TAG, "WifiManager.WIFI_STATE_ENABLED");
                    Connect(WIFI_USER, WIFI_PASSWORD);
                    break;

                case WifiManager.WIFI_STATE_DISABLED:
                    Log.i(TAG, "WifiManager.WIFI_STATE_DISABLED");
                    break;

                case WifiManager.WIFI_STATE_DISABLING:
                    break;
                }
            }

            if (WifiManager.NETWORK_STATE_CHANGED_ACTION.equals(intent
                    .getAction())) {
                Parcelable parcelableExtra = intent
                        .getParcelableExtra(WifiManager.EXTRA_NETWORK_INFO);
                if (null != parcelableExtra) {
                    NetworkInfo networkInfo = (NetworkInfo) parcelableExtra;
                    State state = networkInfo.getState();
                    boolean isConnected = state == State.CONNECTED;
                    Log.i(TAG, "isConnected:" + isConnected);
                    if (isConnected) {
                        getWifiMacAddr();
                        getwifiaddress();
                    }
                }
            }
            return;
        }
    };

    private BroadcastReceiver UsbBroadCastReceiver = new BroadcastReceiver() {
        public void onReceive(Context paramAnonymousContext,
                Intent paramAnonymousIntent) {
            String str = paramAnonymousIntent.getAction();
            if (str.equals("android.intent.action.MEDIA_MOUNTED")) {
                if (getUsbList()) {
                    getusbinfo();
                    mNew_Mac = getStringMac();
                    if (mNew_Mac != null) {
                        rst_set_mac_id.setText(mNew_Mac.toUpperCase());
                        autoSetMac();
                    }
                }
            } else if (str.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                clearMacInfo();
                getusbinfo();
            }
            return;
        }
    };

    private void factorytest() {
        videoinfo();
        getusbinfo();
        Systemversioninfo();
        getEthernetMacAddr_extern();
        getethernetAddr();
        playtimer();
    }

    private void copyToCache(String paramString, InputStream paramInputStream) {
        String str = getCacheDir().getPath() + "/" + paramString;
        BufferedOutputStream localBufferedOutputStream;

        try {
            Log.v(TAG, "start copy to cache");
            localBufferedOutputStream = new BufferedOutputStream(
                    new FileOutputStream(str));
            byte arrayOfByte[] = new byte[524288];
            int i = 0;
            int j = paramInputStream.read(arrayOfByte);
            while (j > 0) {
                localBufferedOutputStream.write(arrayOfByte, 0, j);
                j = paramInputStream.read(arrayOfByte);
            }

            if (j <= 0) {
                paramInputStream.close();
                localBufferedOutputStream.close();
                Log.v(TAG, "finish copy to cache" + i);
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
    }

    private void searchfilefordevice(File paramFile) {
        if (paramFile.getName().equals("usb1.mpg"))
            usb_numinfo[0] = "usb1";
        else if (paramFile.getName().equals("usb2.mpg"))
            usb_numinfo[1] = "usb2";
        else if (paramFile.getName().equals("usb3.mpg"))
            usb_numinfo[2] = "usb3";
        else if (paramFile.getName().equals("usb4.mpg"))
            usb_numinfo[3] = "usb4";
        else if (paramFile.getName().equals("sdcard.mpg"))
            usb_numinfo[4] = "sdcard";
        else if (paramFile.getName().equals("sata.mpg"))
            usb_numinfo[5] = "sata";

    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String chipVersion = HiSdkinvoke.getChipVersion();
        Log.i(TAG, "chipVersion:" + chipVersion);
        if (chipVersion.equals("Unknown chip ID"))
            finish();

        requestWindowFeature(1);
        getWindowManager().getDefaultDisplay();
        getWindow().setFlags(1024, 1024);

        setContentView(R.layout.main);
        init();
        initView();
        registBroadcast();
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (getUsbList()) {
            mNew_Mac = getStringMac();
            Log.i(TAG, "new macaddr=" + mNew_Mac);
            if (mNew_Mac != null) {
                rst_set_mac_id.setText(mNew_Mac.toUpperCase());
                autoSetMac();
            }
        }
        factorytest();
        Toast.makeText(this, getString(R.string.menu_introduce),
                Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onStop() {
        super.onStop();
        timeTimer.cancel();
        timeTimer = null;
        changeLight(RED);
    }
    @Override
    protected void onDestroy() {
        super.onDestroy();
        if (mEthManager != null) {
            mEthManager.setEthernetEnabled(true);// 设置有线网络可连
        }
        if (WifiReceiver != null) {
            unregisterReceiver(WifiReceiver);
            WifiReceiver = null;
        }
        if (UsbBroadCastReceiver != null) {
            unregisterReceiver(UsbBroadCastReceiver);
            UsbBroadCastReceiver = null;
        }
        if (wifitimer != null) {
            wifitimer.cancel();
        }
        if (ethtimer != null) {
            ethtimer.cancel();
        }
        if (player.isPlaying()) {
            player.stop();
        }
        player.release();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (KeyEvent.KEYCODE_MENU == keyCode) {
            showDescription = true;
            description.setVisibility(View.VISIBLE);
            btn_change_output.setFocusable(false);
        } else if (KeyEvent.KEYCODE_BACK == keyCode) {
            if (showDescription) {
                showDescription = false;
                description.setVisibility(View.GONE);
                btn_change_output.setFocusable(true);
                return true;
            } else
                finish();
        }
        return super.onKeyDown(keyCode, event);
    }

    private void initView() {

        rst_play_time = (TextView) findViewById(R.id.time);
        rst_version = (TextView) findViewById(R.id.version);
        rst_net_mac = (TextView) findViewById(R.id.netmacid);
        rst_net_ip = (TextView) findViewById(R.id.netip);
        rst_wifi_mac = (TextView) findViewById(R.id.wifimac);
        rst_wifi_ip = (TextView) findViewById(R.id.wifiip);
        rst_set_mac_id = (TextView) findViewById(R.id.set_mac_text);
        rst_usb1 = (TextView) findViewById(R.id.rst_usb1);
        rst_usb2 = (TextView) findViewById(R.id.rst_usb2);
        rst_usb3 = (TextView) findViewById(R.id.rst_usb3);
        rst_usb4 = (TextView) findViewById(R.id.rst_usb4);
        rst_sd = (TextView) findViewById(R.id.rst_sd);
        rst_sata = (TextView) findViewById(R.id.rst_sata);
        rst_you_xian = (TextView) findViewById(R.id.rst_youxian);
        rst_wifi = (TextView) findViewById(R.id.rst_wifi);
        rst_set_mac = (TextView) findViewById(R.id.rst_setMac);
        rst_hdmi_output = (TextView) findViewById(R.id.rst_hdmi_output);
        rst_av_output = (TextView) findViewById(R.id.rst_av_output);
        description = (ScrollView) findViewById(R.id.description);

        if (isHdmiMode) {
            rst_hdmi_output.setVisibility(View.VISIBLE);
        } else {
            rst_av_output.setVisibility(View.VISIBLE);
        }

        btn_change_output = (Button) findViewById(R.id.change_output);
        btn_change_output.setOnClickListener(new OnClickListener() {

            @Override
            public void onClick(View arg0) {
                changeOutputDisplay();
            }
        });
        rst_version.requestFocus();
    }

    private void init() {
        try {
            copyToCache(VIDEO_NAME, getAssets().open(VIDEO_NAME));
        } catch (IOException e) {
            e.printStackTrace();
        }

        mSystemVersion = Build.DISPLAY;
        mMacaddr = GetMacAddr();
        mTDisplay = new TDisplayManager();
        isHdmiMode = mTDisplay.isHdmiOutputMode();
        mMountList = new ArrayList<android.os.storage.ExtraInfo>();
        macinfo = new SetMacInfo();
        mEthManager = (EthernetManager) getSystemService(Context.ETHERNET_SERVICE);
        wifiManager = ((WifiManager) getSystemService("wifi"));

        ethtimer = new Timer(true);
        ethtimer.schedule(new TimerTask() {
            public void run() {
                Message localMessage = mainHandler.obtainMessage();
                localMessage.what = WHAT_ETHERNET_ADDRESS;
                mainHandler.sendMessageDelayed(localMessage, 1L);
            }
        }, 1000L, 1000L);
        writeSocket(GPIO5_5_6_3798MV100_DIR);

    }

    private void registBroadcast() {
        WifiFilter = new IntentFilter();
        WifiFilter.addAction(WifiManager.NETWORK_STATE_CHANGED_ACTION);
        WifiFilter.addAction(WifiManager.WIFI_STATE_CHANGED_ACTION);
        WifiFilter.addAction(ConnectivityManager.CONNECTIVITY_ACTION);
        registerReceiver(WifiReceiver, WifiFilter);

        USBsdcardFilter = new IntentFilter();
        USBsdcardFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        USBsdcardFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        USBsdcardFilter.addAction("android.intent.action.MEDIA_EJECT");
        USBsdcardFilter.addDataScheme("file");
        registerReceiver(UsbBroadCastReceiver, USBsdcardFilter);
    }

    private void autoSetMac() {
        if (yetSet == true) {
            return;
        }

        if (mNew_Mac != null) {
            int ret = macinfo.SetMac(mNew_Mac);
            rst_set_mac.setVisibility(View.VISIBLE);
            if (ret == 0) {
                yetSet = true;
                macinfo.saveMacAddr(mMacFile_Path);
                mNew_Mac = macinfo.getMacAddr(mMacFile_Path);
                rst_set_mac_id.setText(mNew_Mac.toUpperCase());

                rst_set_mac.setBackgroundColor(Color.parseColor("#008800"));
                rst_set_mac.setText(R.string.str_pass);
            } else if (ret == 2) {
                rst_set_mac.setBackgroundColor(Color.parseColor("#66009D"));
                rst_set_mac.setText(R.string.mac_end);
            } else {
                rst_set_mac.setBackgroundColor(Color.parseColor("#66009D"));
                rst_set_mac.setText(R.string.set_mac_faile);
            }
        }
    }

    private boolean getUsbList() {
        try {
            IBinder service = ServiceManager.getService("mount");
            if (service != null) {
                IMountService mountService = IMountService.Stub
                        .asInterface(service);
                mMountList = mountService.getAllExtraInfos();
                if (mMountList.size() > 0) {
                    Log.i(TAG, "get usb label");
                    Log.i(TAG, mMountList.get(0).mMountPoint);
                    return true;
                } else {
                    Log.i(TAG, "no usb label");
                    return false;
                }
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        return false;
    }

    private String getStringMac() {
        for (int i = 0; i < mMountList.size(); i++) {
            File file = new File(mMountList.get(i).mMountPoint);
            File files[] = file.listFiles();
            for (int j = 0; j < files.length; j++) {
                if (files[j].isDirectory()) {
                    continue;
                } else {
                    if (files[j].getName().equals(MAC_FILENAME)) {
                        Log.i(TAG, "get filepath=" + files[j].getPath());
                        mMacFile_Path = files[j].getPath();
                        return macinfo.getMacAddr(mMacFile_Path);
                    }
                }
            }
        }
        return null;
    }

    private void clearMacInfo() {
        mMountList.clear();
        mNew_Mac = null;
        mMacFile_Path = null;
        rst_set_mac_id.setText(getResources().getString(
                R.string.set_mac_address_hint));
    }

    private void videoinfo() {
        File localFile = new File("/mnt" + File.separator);

        for (int i = 0; i < 2; i++) {
            testvideoinfo[i] = "0";
        }

        Log.i(TAG, "localFile:" + localFile);

        testvideoinfo[0] = getCacheDir().getPath() + "/" + VIDEO_NAME;
        if (!testvideoinfo[0]
                .equals(getCacheDir().getPath() + "/" + VIDEO_NAME)) {
            System.out.println("CG LOG call is not test.wmv .....\n");
        } else {
            Log.i(TAG, "begin play!");
            surfaceView = (SurfaceView) findViewById(R.id.VideoView01);
            surfaceHolder = surfaceView.getHolder();
            surfaceHolder.addCallback(new Callback() {
                @Override
                public void surfaceDestroyed(SurfaceHolder arg0) {
                }
                @Override
                public void surfaceCreated(SurfaceHolder arg0) {
                    player = new MediaPlayer();
                    player.setDisplay(surfaceHolder);
                    player.setOnCompletionListener(new OnCompletionListener() {
                        @Override
                        public void onCompletion(MediaPlayer arg0) {
                            arg0.start();
                            System.out
                                    .println("CG LOG call restart testvideo .....\n");
                        }
                    });
                    player.setOnErrorListener(new OnErrorListener() {
                        @Override
                        public boolean onError(MediaPlayer arg0, int arg1,
                                int arg2) {
                            HiSdkinvoke mSDKInvoke = new HiSdkinvoke();
                            mSDKInvoke.hiBitSet(0xF8000044, 4, 3, 0x00);
                            mSDKInvoke.hiGpioBitSet(0xF8004000, 3, 1);
                            System.out
                                    .println("CG LOG call stop testvideo .....\n");
                            return true;
                        }
                    });
                    try {
                        player.setDataSource(testvideoinfo[0]);
                        player.prepare();
                        player.start();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                @Override
                public void surfaceChanged(SurfaceHolder arg0, int arg1,
                        int arg2, int arg3) {
                        }
                    });
        }
    }

    private void getusbinfo() {
        File localFile = new File("/mnt");
        for (int i = 0; i < 10; i++) {
            usb_numinfo[i] = "0";
        }

        Traversalfile(localFile);
        if (usb_numinfo[0].equals("usb1")) {
            rst_usb1.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo usb1 ok " + usb_numinfo[0]);
        }
        if (usb_numinfo[1].equals("usb2")) {
            rst_usb2.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo usb2 ok " + usb_numinfo[1]);
        }

        if (usb_numinfo[2].equals("usb3")) {
            rst_usb3.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo usb3 ok " + usb_numinfo[2]);
        }

        if (usb_numinfo[3].equals("usb4")) {
            rst_usb4.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo usb4 ok " + usb_numinfo[3]);
        }

        if (usb_numinfo[4].equals("sdcard")) {
            rst_sd.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo sdcard ok " + usb_numinfo[4]);
        }

        if (usb_numinfo[5].equals("sata")) {
            rst_sata.setVisibility(View.VISIBLE);
            Log.v(TAG, "usb_numinfo sata ok " + usb_numinfo[5]);
        }
    }

    private void Systemversioninfo() {
        rst_version.setText(mSystemVersion);
    }

    private void getEthernetMacAddr_extern() {
        rst_net_mac.setText(mMacaddr.toUpperCase());
    }

    /**
     * 获取有线网 ip地址
     */
    private boolean getethernetAddr() {
        Thread.currentThread();
        String str = getLocalIpAddress();
        if (null != str) {
            rst_net_ip.setText(str);
            rst_you_xian.setVisibility(View.VISIBLE);
            return true;
        }
        return false;
    }

    private boolean OpenWifi() {
        boolean bool = true;

        if (!wifiManager.isWifiEnabled()) {
            bool = wifiManager.setWifiEnabled(true);
        }

        return bool;
    }

    private void playtimer() {
        if (timeTimer == null) {
            timeTimer = new Timer(true);
            timeTimer.schedule(new TimerTask() {
                public void run() {
                    Message message = new Message();
                    message.what = WHAT_UPGRADE_TIME;
                    mainHandler.sendMessage(message);
                }
            }, 1000, 1000);
        }
    }

    private boolean Connect(String paramString1, String paramString2) {
        WifiConfiguration localWifiConfiguration1 = CreateWifiInfo(
                paramString1, paramString2);
        boolean bool2 = false;
        if (localWifiConfiguration1 != null) {
            WifiConfiguration localWifiConfiguration2 = IsExsits();
            if (localWifiConfiguration2 != null) {
                wifiManager.removeNetwork(localWifiConfiguration2.networkId);
            }

            int i = wifiManager.addNetwork(localWifiConfiguration1);
            bool2 = wifiManager.enableNetwork(i, true);
        }
        return bool2;
    }

    private WifiConfiguration CreateWifiInfo(String paramString1,
            String paramString2) {
        WifiConfiguration localWifiConfiguration = new WifiConfiguration();

        localWifiConfiguration.SSID = ("\"" + paramString1 + "\"");
        localWifiConfiguration.preSharedKey = ("\"" + paramString2 + "\"");
        localWifiConfiguration.hiddenSSID = true;
        localWifiConfiguration.status = 2;
        localWifiConfiguration.allowedGroupCiphers.set(2);
        localWifiConfiguration.allowedGroupCiphers.set(3);
        localWifiConfiguration.allowedKeyManagement.set(1);
        localWifiConfiguration.allowedPairwiseCiphers.set(1);
        localWifiConfiguration.allowedPairwiseCiphers.set(2);
        localWifiConfiguration.allowedProtocols.set(1);
        int i = wifiManager.addNetwork(localWifiConfiguration);
        Log.d("WifiPreference", "add Network returned " + i);
        boolean bool = wifiManager.enableNetwork(i, true);
        Log.d("WifiPreference", "enableNetwork returned " + bool);
        return localWifiConfiguration;
    }

    private WifiConfiguration IsExsits() {
        List<WifiConfiguration> localList = wifiManager.getConfiguredNetworks();

        Log.v(TAG, "existingConfigs=" + localList);
        WifiConfiguration localWifiConfiguration = null;
        if (localList != null) {
            Iterator<WifiConfiguration> localIterator = localList.iterator();
            do {
                if (!localIterator.hasNext()) {
                    break;
                }

                localWifiConfiguration = (WifiConfiguration) localIterator
                        .next();
            } while (localWifiConfiguration.status != WifiConfiguration.Status.CURRENT);
        } else {
            localWifiConfiguration = null;
        }

        return localWifiConfiguration;
    }

    private void getWifiMacAddr() {
        WifiInfo localWifiInfo = ((WifiManager) getSystemService("wifi"))
                .getConnectionInfo();

        rst_wifi_mac.setText(localWifiInfo.getMacAddress().toUpperCase());
        rst_wifi.setVisibility(View.VISIBLE);
    }

    private boolean getwifiaddress() {
        mWifiInfo = wifiManager.getConnectionInfo();
        if (!longToIP(mWifiInfo.getIpAddress()).equals("0.0.0.0")) {
            rst_wifi_ip.setText(longToIP(mWifiInfo.getIpAddress()));
            return true;
        } else {
            return false;
        }
    }

    private String longToIP(long paramLong) {
        StringBuffer localStringBuffer = new StringBuffer("");

        localStringBuffer.append(String.valueOf(paramLong & 0xFF));
        localStringBuffer.append(".");
        localStringBuffer.append(String.valueOf(0xFF & paramLong >> 8));
        localStringBuffer.append(".");
        localStringBuffer.append(String.valueOf(0xFF & paramLong >> 16));
        localStringBuffer.append(".");
        localStringBuffer.append(String.valueOf(0xFF & paramLong >> 24));
        return localStringBuffer.toString();
    }

    private String GetMacAddr() {
        String KEY_ETH_INTERFACE = "eth0";
        INetworkManagementService mNwService;
        IBinder b = ServiceManager
                .getService(Context.NETWORKMANAGEMENT_SERVICE);
        mNwService = INetworkManagementService.Stub.asInterface(b);
        String str;
        try {
            str = mNwService.getInterfaceConfig(KEY_ETH_INTERFACE)
                    .getHardwareAddress().toString();
        } catch (RemoteException remote) {
            str = null;
        }
        return str;
    }

    private String getLocalIpAddress() {
        try {
            Enumeration<NetworkInterface> en = NetworkInterface
                    .getNetworkInterfaces();
            while (en.hasMoreElements()) {
                NetworkInterface intf = (NetworkInterface) en.nextElement();
                if (intf.getName().toLowerCase().equals("eth0")) {
                    Enumeration<InetAddress> enumIpAddr = intf
                            .getInetAddresses();
                    while (enumIpAddr.hasMoreElements()) {
                        InetAddress inetAddress = (InetAddress) enumIpAddr
                                .nextElement();
                        if (!inetAddress.isLoopbackAddress()
                                && !inetAddress.isLinkLocalAddress()) {
                            return inetAddress.getHostAddress().toString();
                        }
                    }
                }
            }
        } catch (SocketException ex) {
            Log.e("IpAddress", ex.toString());
        }
        return null;
    }

    private void Traversalfile(File paramFile) {
        for (int i = 0; i < mMountList.size(); i++) {
            File file = new File(mMountList.get(i).mMountPoint);
            Log.i(TAG, "Traversalfile=" + file.getPath());
            File files[] = file.listFiles();
            for (int j = 0; j < files.length; j++) {
                if (files[j].isDirectory()) {
                    continue;
                } else {
                    searchfilefordevice(files[j]);
                }
            }
        }
    }

    private void closeEthTimer(boolean isTimeout) {
        if (isTimeout) {
            rst_net_ip.setTextColor(getResources().getColor(
                    android.R.color.holo_red_light));
            rst_net_ip.setText("FAILED");
        }
        ethtimer.cancel();
            mEthManager.setEthernetEnabled(false);
            OpenWifi();
            Connect(WIFI_USER, WIFI_PASSWORD);
        wifitimer = new Timer(true);
        wifitimer.schedule(new TimerTask() {
            public void run() {
                Message localMessage = mainHandler.obtainMessage();
                localMessage.what = WHAT_WIFI_ADDRESS;
                mainHandler.sendMessageDelayed(localMessage, 1L);
        }
        }, 1000L, 1000L);
    }

    private void closewifitimer(boolean isTimeout) {
        wifitimer.cancel();
        if (isTimeout) {
            rst_wifi_ip.setTextColor(getResources().getColor(
                    android.R.color.holo_red_light));
            rst_wifi_ip.setText("FAILED");
        }
    }

    private void changeOutputDisplay() {
        if (isHdmiMode) {
            mTDisplay.setAvOutputDispMode();
            if (!rst_av_output.isShown())
                rst_av_output.setVisibility(View.VISIBLE);
        } else {
            mTDisplay.setHDMIOutputDispMode();
            if (!rst_hdmi_output.isShown())
                rst_hdmi_output.setVisibility(View.VISIBLE);
        }

        isHdmiMode = !isHdmiMode;
    }

    private void changeLight(int color) {
        switch (color) {
        case GREEN:
            writeSocket(GPIO5_5_6_3798MV100_CLOSE);
            writeSocket(GPIO5_5_3798MV100_GREEN);
            break;
        case RED:
            writeSocket(GPIO5_5_6_3798MV100_CLOSE);
            writeSocket(GPIO5_6_3798MV100_RED);
            break;
        default:
            break;
        }
    }
    private void writeSocket(String cmd) {
       HiSysManager hisys = new HiSysManager();
       hisys.setHimm(cmd);
    }
}
