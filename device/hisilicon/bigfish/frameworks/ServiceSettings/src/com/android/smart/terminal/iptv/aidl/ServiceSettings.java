package com.android.smart.terminal.iptv.aidl;

import java.net.InetAddress;
import java.net.Inet4Address;

import android.app.ActivityManagerNative;
import android.app.Service;
import android.content.Intent;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.net.NetworkUtils;
import android.net.DhcpInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.net.ethernet.EthernetManager;
import android.net.pppoe.PppoeManager;
import com.hisilicon.android.HiAoService;
import com.hisilicon.android.HiDisplayManager;
import com.hisilicon.android.DispFmt;

import com.android.smart.terminal.iptv.aidl.ServiceSettingsInfoAidl;
import android.util.Log;
import android.content.IntentFilter;
import android.os.INetworkManagementService;
import android.os.ServiceManager;
import android.provider.Settings;
import android.provider.Settings.System;
import java.util.HashMap;

import com.hisilicon.android.hisysmanager.HiSysManager;


public class ServiceSettings extends Service {
    static final String TAG = "ServiceSettings";
    private static final String ETH_CONN_MODE_DHCP = "dhcp";
    private static final String ETH_CONN_MODE_MANUAL = "manual";
    private static final String ETH_CONN_MODE_DHCPPLUS = "dhcp+";
    private static final String ETH_CONN_MODE_PPPOE = "pppoe";

    private static final String IPMODE_V4 = "ipv4";
    private static final String IPMODE_V6 = "ipv6";

    private static final String CONFIG_RESOLUTIONS = "Service/ServiceInfo/config_Resolutions";
    private static final String CONFIG_AUDIOMODES = "Service/ServiceInfo/config_AudioModes";
    private static final String CONNECTMODESTRING = "Service/ServiceInfo/ConnectModeString";
    private static final String DHCPAUTHENTIC = "Service/ServiceInfo/IsDHCPAuthentication";
    private static final String ENABLEETH = "Service/ServiceInfo/EnableEth";
    private static final String WIDTH2HEIGHT = "Service/ServiceInfo/Video_Width2Height";
    private static final String FONTSIZE = "Service/ServiceInfo/FontSize";
    private static final String HDMIPASSTHROUGH = "Service/ServiceInfo/HDMIPassThrough";
    private static final String SCREENBORDERSLEFT = "Service/ServiceInfo/ScreenBordersLeft";
    private static final String SCREENBORDERSTOP = "Service/ServiceInfo/ScreenBordersTop";
    private static final String SCREENBORDERSRIGHT = "Service/ServiceInfo/ScreenBordersRight";
    private static final String SCREENBORDERSBOTTOM = "Service/ServiceInfo/ScreenBordersBottom";
    private static final String FACTORYRESET = "restoreFactorySetting";
    private static final String IPV6_STATE = "Service/ServiceInfo/ipv6_state";
    private static final String IPV6_DHCP_STATE = "Service/ServiceInfo/ipv6_dhcp_state";
    private static final String WifiOrEth = "WifiOrEth";

    private static final String LogServer = "Service/ServiceInfo/LogServer";
    private static final String SecondIPTVauthURL = "Service/ServiceInfo/SecondIPTVauthURL";
    private static final String IPTVauthURL = "Service/ServiceInfo/IPTVauthURL";
    private static final String DHCPUserName = "Service/ServiceInfo/DHCPUserName";
    private static final String DHCPPassword = "Service/ServiceInfo/DHCPPassword";
    private static final String IPTVaccount = "Service/ServiceInfo/IPTVaccount";
    private static final String IPTVpassword = "Service/ServiceInfo/IPTVpassword";
    private static final String PPPOEUserName = "Service/ServiceInfo/PPPOEUserName";
    private static final String PPPOEPassword = "Service/ServiceInfo/PPPOEPassword";
    private static final String config_WebmasterUrl = "Service/ServiceInfo/config_WebmasterUrl";
    private static final String MANAGER_USERNAME = "Service/ServiceInfo/config_UserName";
    private static final String MANAGER_PASSWORD = "Service/ServiceInfo/config_Password";
    private static final String ServerBaseUrl = "Service/ServiceInfo/ServerBaseUrl";
    private static final String ServerNTPUrl = "Service/ServiceInfo/ServerNTPUrl";
    private static final String SPDIF_MODE = "Service/ServiceInfo/Spdif_Mode";
    private static final String PLATFORM_TYPE = "Service/ServiceInfo/PlatType";
    
    private static final String OPTFORMAT = "Service/ServiceInfo/AutoOptFormat";

    private final static float FONT_SIZE_SMALL = 0.75f;
    private final static float FONT_SIZE_NORMAL = 1f;
    private final static float FONT_SIZE_LARGE = 1.15f;
    
    
    private final static String OPT_FORMAT_ENABLE = "1";
    private final static String OPT_FORMAT_DISABLE = "0";
    private final static String ETHERNET_ENABLE = "1";
    private final static String ETHERNET_DISABLE = "0";
    private final static String IPV6_STATE_ENABLE = "1";
    private final static String IPV6_STATE_DISABLE = "0";
    private final static String IPV6_DHCP_STATE_ENABLE = "1";
    private final static String IPV6_DHCP_STATE_DISABLE = "0";
    private final static String DHCP_AUTHENTIC_ENABLE = "1";
    private final static String DHCP_AUTHENTIC_DISABLE = "0";
    private static final String PLATFORM_TYPE_GD = "GD";
    private static final String PLATFORM_TYPE_SC = "SC";
    private static final String PLATFORM_TYPE_SH3 = "SH3";
    private final String AUDIO_OUTPUT_MODE_OFF = "2";
    private final String AUDIO_OUTPUT_MODE_RAW = "1";
    private final String AUDIO_OUTPUT_MODE_LPCM = "0";
    private final Configuration mCurConfig = new Configuration();
    private HiAoService mAOService;
    private HiDisplayManager mDisplayManager;
    private EthernetManager mEthManager;
    private PppoeManager mPppoeManager;
    private String mWifiOrEth = "";
    private String mEthDevName = "";
    private String mEthUserName = "";
    private String mEthPassword = "";
    private String mPPPOEUserName = "";
    private String mPPPOEPassword = "";
    private String mConnectMode = "";
    private String mDHCPAuthornic = "";
    private IntentFilter mIntentFilter;
    private String PPPOE_INTERFACE = "ppp0";
    private Context mContext;
    private String mIpv6_state;
    private String mIpv6_DHCP_flag;
    private String mEthEnable;
    private String mPlatformType = "";

    @Override
    public IBinder onBind(Intent arg0) {
        // TODO Auto-generated method stub
        return mBinder;
    }

    public ServiceSettings() {
        // TODO Auto-generated method stub
        mIntentFilter = new IntentFilter(EthernetManager.ETHERNET_STATE_CHANGED_ACTION);
        mIntentFilter.addAction(EthernetManager.NETWORK_STATE_CHANGED_ACTION);
        mIntentFilter.addAction(PppoeManager.PPPOE_STATE_CHANGED_ACTION);
    }

    @Override
    public void onCreate() {
        // TODO Auto-generated method stub
        super.onCreate();
        mContext = getApplication().getApplicationContext();
        mAOService = new HiAoService();
        mDisplayManager = new HiDisplayManager();
        mEthManager = (EthernetManager) getSystemService(Context.ETHERNET_SERVICE);
        mPppoeManager = (PppoeManager) getSystemService(Context.PPPOE_SERVICE);
        try {
            mCurConfig.updateFrom(ActivityManagerNative.getDefault().getConfiguration());
        } catch (RemoteException e) {
            Log.w(TAG, "Unable to retrieve font size");
        }
        createEncFormat();
    }

    @Override
    public void onDestroy() {
        // TODO Auto-generated method stub
        super.onDestroy();
    }

    @Override
    public void onRebind(Intent intent) {
        // TODO Auto-generated method stub
        super.onRebind(intent);
    }

    @Override
    public boolean onUnbind(Intent intent) {
        // TODO Auto-generated method stub
        return super.onUnbind(intent);
    }

    private final ServiceSettingsInfoAidl.Stub mBinder = new ServiceSettingsInfoAidl.Stub() {
    @Override
    public boolean setValue(String key, String value) throws RemoteException {
            // TODO Auto-generated method stub
            boolean ret = false;
            Log.d(TAG, "setValue key:"+key + " value:" + value);
            if (key.equals(CONFIG_RESOLUTIONS)) {
                ret = false;
            } else if (key.equals(CONFIG_AUDIOMODES)) {
                ret = false;
            } else if (key.equals(CONNECTMODESTRING)) {
                mConnectMode = value;
                ret = true;
            } else if (key.equals(DHCPAUTHENTIC)) {
                mDHCPAuthornic = value;
                EthernetDevInfo ethernetDevInfo = getEthernetDevInfo();
                mEthManager.setDhcpOption60(true, ethernetDevInfo.username, ethernetDevInfo.password);
                ret = false;
            } else if (key.equals(ENABLEETH)) {
                boolean enable = false;
                if (ETHERNET_ENABLE.equals(value)) {
                    enable = true;
                } else {
                    enable = false;
                }
                mEthEnable = value;
                mEthManager.enableEthernet(enable);
                ret = true;
            } else if (key.equals(WIDTH2HEIGHT)) {
                int ratio = Integer.parseInt(value);
                if (ratio == 1) { //fullscreen
                    mDisplayManager.setAspectCvrs(0);
                } else if (ratio > 0) { //4:3 or 16:9
                    mDisplayManager.setAspectRatio(ratio - 1);
                    mDisplayManager.setAspectCvrs(1);
                    mDisplayManager.SaveParam();
                    ret = true;
                } else {
                }
            } else if (key.equals(FONTSIZE)) {
                Float fontsize = Float.parseFloat(value);
                if (FONT_SIZE_SMALL == fontsize
                    || FONT_SIZE_NORMAL == fontsize
                    || FONT_SIZE_LARGE == fontsize) {
                        mCurConfig.fontScale = fontsize;
                        ActivityManagerNative.getDefault().updatePersistentConfiguration(mCurConfig);
                        ret = true;
                } else {
                    Log.d(TAG, "setValue error unkown fontsize:"+ fontsize);
                    ret = false;
                }
            } else if (key.equals(HDMIPASSTHROUGH)) {
                int passthrough = Integer.parseInt(value);
                if (passthrough == 1) {
                    mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_RAW);
                } else {
                    mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                }
                ret = true;
            } else if (key.equals(SCREENBORDERSLEFT)) {
                int border_left = Integer.parseInt(value);
                Rect rect = mDisplayManager.getOutRange();
                rect.left = border_left;
                mDisplayManager.setOutRange(rect.left, rect.top, rect.right, rect.bottom);
                mDisplayManager.SaveParam();
                ret = true;
            } else if (key.equals(SCREENBORDERSTOP)) {
                int border_top = Integer.parseInt(value);
                Rect rect = mDisplayManager.getOutRange();
                rect.top = border_top;
                mDisplayManager.setOutRange(rect.left, rect.top, rect.right, rect.bottom);
                mDisplayManager.SaveParam();
                ret = true;
            } else if (key.equals(SCREENBORDERSRIGHT)) {
                int border_right = Integer.parseInt(value);
                Rect rect = mDisplayManager.getOutRange();
                rect.right = border_right;
                mDisplayManager.setOutRange(rect.left, rect.top, rect.right, rect.bottom);
                mDisplayManager.SaveParam();
                ret = true;
            } else if (key.equals(SCREENBORDERSBOTTOM)) {
                int border_bottom = Integer.parseInt(value);
                Rect rect = mDisplayManager.getOutRange();
                rect.bottom = border_bottom;
                mDisplayManager.setOutRange(rect.left, rect.top, rect.right, rect.bottom);
                mDisplayManager.SaveParam();
                ret = true;
            } else if (key.equals(FACTORYRESET)) {
                HiSysManager hiSysManager = new HiSysManager();
                hiSysManager.reset();
                sendBroadcast(new Intent("android.intent.action.MASTER_CLEAR"));
                ret = true;
            } else if (key.equals(IPV6_STATE)) {
                if (IPV6_STATE_ENABLE.equals(value)) {
                    mIpv6_state = IPV6_STATE_ENABLE;
                    mEthManager.enableIpv6(true);
                } else {
                    mEthManager.enableIpv6(false);
                    mIpv6_state = IPV6_STATE_DISABLE;
                }
                ret = true;
            } else if (key.equals(IPV6_DHCP_STATE)) {
                if (IPV6_DHCP_STATE_ENABLE.equals(value)) {
                    mEthManager.setEthernetMode6(EthernetManager.ETHERNET_CONNECT_MODE_DHCP);
                    mIpv6_DHCP_flag = IPV6_DHCP_STATE_ENABLE;
                } else {
                    mEthManager.setEthernetMode6(EthernetManager.ETHERNET_CONNECT_MODE_MANUAL);
                    mIpv6_DHCP_flag = IPV6_DHCP_STATE_DISABLE;
                }
                ret = true;
            }else if (key.equals(SPDIF_MODE)) {
                int spdifMode = 2;
                ret = true;
                if (AUDIO_OUTPUT_MODE_OFF.equals(value)) {
                    spdifMode = HiAoService.AUDIO_OUTPUT_MODE_OFF;
                } else if (AUDIO_OUTPUT_MODE_RAW.equals(value)) {
                    spdifMode = HiAoService.AUDIO_OUTPUT_MODE_RAW;
                } else if (AUDIO_OUTPUT_MODE_LPCM.equals(value)) {
                    spdifMode = HiAoService.AUDIO_OUTPUT_MODE_LPCM;
                } else {
                    Log.d(TAG, "error unkown spdifMode:" +value);
                    ret = false;
                }
                Log.d(TAG, "setSPDIFMode  spdifMode:" +spdifMode);
                if (ret) {
                   mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF, spdifMode);
               }
            }else if (key.equals(PLATFORM_TYPE)) {
                mPlatformType = value;
                Log.d(TAG, "setValue mPlatformType:"+mPlatformType);
                ret = true;
            }else if(key.equals(OPTFORMAT)) {
                int status = Integer.parseInt(value);
                if(status == 0)
                {
                    mDisplayManager.setOptimalFormatEnable(0);     
                }
                if(status == 1)
                {
                    mDisplayManager.setOptimalFormatEnable(1);
                }
                ret = true;
            }
            Log.d(TAG, "setValue key:"+key + " ret:" + ret);
            return ret;
        }

        @Override
        public boolean setResoultion(int flag) throws RemoteException {
            // TODO Auto-generated method stub
            Log.d(TAG, "setResoultion flag:"+flag );
            mDisplayManager.setFmt(mEncFormatMap.get(flag).getEncFormatValue());
            mDisplayManager.SaveParam();
            mDisplayManager.setOptimalFormatEnable(0);
            return true;
        }

        @Override
        public boolean setEthernetDevInfo(EthernetDevInfo eth)throws RemoteException {
            // TODO Auto-generated method stub
            Log.d(TAG, "setEthernetDevInfo eth.dev_name:"+eth.dev_name
                    + " eth.password:"+eth.password
                    + " eth.ipmode:"+eth.ipmode
                    + " eth.ipaddr:"+eth.ipaddr
                    + " eth.netmask:"+eth.netmask
                    + " eth.route:"+eth.route
                    + " eth.dns:"+eth.dns
                    + " eth.dns2:"+eth.dns2
                    + " eth.mode:"+eth.mode);
            if (ETH_CONN_MODE_PPPOE.equals(eth.mode)) {
                mEthManager.setInterfaceName(PPPOE_INTERFACE);
                mPppoeManager.setPppoeUsername(eth.username);
                mPppoeManager.setPppoePassword(eth.password);
                Settings.Secure.putString(mContext.getContentResolver(),Settings.Secure.PPPOE_USER_NAME, eth.username);
                Settings.Secure.putString(mContext.getContentResolver(),Settings.Secure.PPPOE_USER_PASS, eth.password);
                String ifname = null;
                if (EthernetManager.ETHERNET_CONNECT_MODE_PPPOE.equals(mEthManager.getEthernetMode())
                       && mEthManager.getEthernetState() == EthernetManager.ETHERNET_STATE_ENABLED) {
                    ifname = mEthManager.getInterfaceName();
                }
                if ((mPppoeManager.getConnectResult(ifname) == PppoeManager.PPPOE_CONNECT_RESULT_CONNECT)
                 || (mPppoeManager.getConnectResult(ifname) == PppoeManager.PPPOE_CONNECT_RESULT_CONNECTING))
                    mPppoeManager.disconnect(ifname);

                Log.d(TAG, "setEthernetDevInfo ETH_CONN_MODE_PPPOE "
                    +" dev_name:" +ifname
                    +" username:" +eth.username
                    +" password:" +eth.password );
                mPppoeManager.connect(eth.username,eth.password, ifname);
                System.putInt(mContext.getContentResolver(), "pppoe_enable", 1);
                return true;
            } else {
                if (PppoeManager.PPPOE_STATE_DISCONNECT != mPppoeManager.getPppoeState()) {
                    Log.d(TAG, "setEthernetDevInfo disconnect pppoe interface:"+mEthManager.getInterfaceName());
                    mPppoeManager.disconnect(mEthManager.getInterfaceName());
                    System.putInt(mContext.getContentResolver(), "pppoe_enable", 0);
                }

                mEthManager.setInterfaceName(mEthManager.getInterfaceName());
                Log.d(TAG, "setEthernetDevInfo dev_name:"+mEthManager.getInterfaceName());

                if (IPMODE_V6.equals(eth.ipmode)) {
                    Log.d(TAG, "setEthernetDevInfo ipv6 ");
                    if (ETH_CONN_MODE_DHCP.equals(eth.mode)) {
                        mEthManager.enableIpv6(false);
                        mEthManager.setEthernetMode6(EthernetManager.ETHERNET_CONNECT_MODE_DHCP);
                        mEthManager.enableIpv6(true);
                    } else if(ETH_CONN_MODE_MANUAL.equals(eth.mode)) {
                        mEthManager.setIpv6DatabaseInfo(eth.ipaddr, Integer.parseInt(eth.netmask), eth.route, eth.dns, eth.dns2);
                        mEthManager.enableIpv6(false);
                        mEthManager.setEthernetMode6(EthernetManager.ETHERNET_CONNECT_MODE_MANUAL);
                        mEthManager.enableIpv6(true);
                    }
                } else {
                    mEthManager.enableIpv6(false);
                }

                if (ETH_CONN_MODE_DHCPPLUS.equals(eth.mode)) {
                    //do nothing,just reboot ethernet
                    //mEthManager.setDhcpOption60(true, eth.username, eth.password);
                    mEthManager.setEthernetEnabled(false);
                    mEthManager.setEthernetMode(ETH_CONN_MODE_DHCP,null);
                    mEthManager.setEthernetEnabled(true);
                    return true;
                }

                if (IPMODE_V4.equals(eth.ipmode)){
                    if (ETH_CONN_MODE_DHCP.equals(eth.mode)){
                        mEthManager.setEthernetEnabled(false);
                        mEthManager.setEthernetMode(ETH_CONN_MODE_DHCP,null);
                        mEthManager.setEthernetEnabled(true);
                    }  else if(ETH_CONN_MODE_MANUAL.equals(eth.mode)) {
                        InetAddress ipaddr = NetworkUtils.numericToInetAddress(eth.ipaddr);
                        InetAddress getwayaddr = NetworkUtils.numericToInetAddress(eth.route);
                        InetAddress inetmask = NetworkUtils.numericToInetAddress(eth.netmask);
                        InetAddress idns1 = null;
                        InetAddress idns2 = null;
                        if (null != eth.dns) {
                            idns1 = NetworkUtils.numericToInetAddress(eth.dns);
                        }
                        if (null != eth.dns2) {
                             idns2 = NetworkUtils.numericToInetAddress(eth.dns2);
                        }
                        DhcpInfo dhcpInfo = new DhcpInfo();
                        dhcpInfo.ipAddress = NetworkUtils.inetAddressToInt((Inet4Address)ipaddr);
                        dhcpInfo.gateway = NetworkUtils.inetAddressToInt((Inet4Address)getwayaddr);
                        dhcpInfo.netmask = NetworkUtils.inetAddressToInt((Inet4Address)inetmask);
                        if (null != idns1) {
                            dhcpInfo.dns1 = NetworkUtils.inetAddressToInt((Inet4Address)idns1);
                        }
                        if (null != idns2) {
                            dhcpInfo.dns2 = NetworkUtils.inetAddressToInt((Inet4Address)idns2);
                        }
                        mEthManager.setEthernetEnabled(false);
                        mEthManager.setEthernetMode(EthernetManager.ETHERNET_CONNECT_MODE_MANUAL, dhcpInfo);
                        mEthManager.setEthernetEnabled(true);
                        Log.d(TAG, "setEthernetDevInfo ETH_CONN_MODE_MANUAL ");
                    }
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean setAudioMode(int flag) throws RemoteException {
            // TODO Auto-generated method stub
            Log.d(TAG, "setAudioMode flag:"+flag + " mPlatformType:"+mPlatformType);
            if(PLATFORM_TYPE_GD.equals(mPlatformType)){
                switch (flag) {
                    case 0:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_AUTO);
                    }break;
                    case 1:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                    }break;
                    case 2:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_RAW);
                    }break;
                    case 3:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_OFF);
                    }break;
                    default:{
                        Log.d(TAG, "setAudioMode error, unkown flag:"+flag);
                        return false;
                    }
                }
            } else if(PLATFORM_TYPE_SC.equals(mPlatformType)){
                switch (flag){
                    case 0:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                    }break;
                    case 1:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF, HiAoService.AUDIO_OUTPUT_MODE_RAW);
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                    }break;
                    case 2:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_RAW);
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                    }break;
                    default:{
                        Log.d(TAG, "setAudioMode error, unkown flag:"+flag);
                        return false;
                    }
                }
            } else if(PLATFORM_TYPE_SH3.equals(mPlatformType)){
                switch (flag){
                    case 0:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_AUTO);
                    }break;
                    case 1:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_LPCM);
                    }break;
                    case 2:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_RAW);
                    }break;
                    case 3:{
                        mAOService.setAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI, HiAoService.AUDIO_OUTPUT_MODE_OFF);
                    }break;
                    default:{
                        Log.d(TAG, "setAudioMode error, unkown flag:"+flag);
                        return false;
                    }
                }
            } else {
                Log.d(TAG, "error unkown platform type");
            }
            return true;
        }

        @Override
        public String getValue(String key, String value) throws RemoteException {
            // TODO Auto-generated method stub
            String ret = value;
            Log.d(TAG, "getValue key:"+key + " defValue:" +value);
            if (key.equals(CONFIG_RESOLUTIONS)) {
                StringBuffer sb = new StringBuffer();
                createEncFormat();
                for (int i=0; i < mEncFormatMap.size(); i++) {
                    sb.append(mEncFormatMap.get(i).getEncFormatName());
                    if (i != mEncFormatMap.size() - 1) {
                         sb.append(", ");
                    }
                }
                ret = sb.toString();
            } else if (key.equals(CONFIG_AUDIOMODES)) {
                String audiomode = "PCM";
                int iHDMIMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI);
                int iSpdifMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF);
                Log.d(TAG, "getValue iHDMIMode:"+iHDMIMode + " iSpdifMode:" +iSpdifMode);

                switch (iHDMIMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_AUTO:
                    case HiAoService.AUDIO_OUTPUT_MODE_LPCM:
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode += ",HDMI";
                    }break;
                    default:break;
                }
                switch (iSpdifMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_LPCM:
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode += ",SPDIF";
                    }break;
                    default:break;
                }
                Log.d(TAG, "getValue audiomode:"+audiomode);
                ret = audiomode;
            } else if (key.equals(CONNECTMODESTRING)) {
                String mode = mEthManager.getEthernetMode();
                ret = mode;
                if (ETH_CONN_MODE_PPPOE.equals(mode)) {
                    mConnectMode = ETH_CONN_MODE_PPPOE;
                } else if ("manual".equals(mode)) {
                    mConnectMode = ETH_CONN_MODE_MANUAL;
                } else {
                    if (mEthManager.getDhcpOption60State() == EthernetManager.ETHERNET_STATE_ENABLED) {
                        mConnectMode = ETH_CONN_MODE_DHCPPLUS;
                    } else {
                        mConnectMode = ETH_CONN_MODE_DHCP;
                    }
                }
                Log.d(TAG, " getvalue connect mode:"+mConnectMode);
                ret = mConnectMode;
            } else if (key.equals(DHCPAUTHENTIC)) {
                if (mEthManager.getDhcpOption60State() == EthernetManager.ETHERNET_STATE_ENABLED) {
                    ret = DHCP_AUTHENTIC_ENABLE;
                } else {
                    ret = DHCP_AUTHENTIC_DISABLE;
                }
            } else if (key.equals(ENABLEETH)) {
                int state = mEthManager.getEthernetState();
                Log.d(TAG, "getValue getEthernetState:"+state);
                if (state == EthernetManager.ETHERNET_STATE_ENABLED) {
                    mEthEnable = ETHERNET_ENABLE;
                } else if (state == EthernetManager.ETHERNET_STATE_DISABLED) {
                    mEthEnable = ETHERNET_DISABLE;
                }
                ret = mEthEnable;
            } else if (key.equals(WIDTH2HEIGHT)) {
                int cvrs = mDisplayManager.getAspectCvrs();
                Log.d(TAG, "getValue getAspectCvrs:" +cvrs);
                if (0 == cvrs) {//full screen
                    ret = String.valueOf(cvrs);
                } else {// 4:3 16:9
                    int ratio = mDisplayManager.getAspectRatio();
                    ret = String.valueOf(ratio + 1);
                }
            } else if (key.equals(FONTSIZE)) {
                try {
                    mCurConfig.updateFrom(ActivityManagerNative.getDefault().getConfiguration());
                } catch (RemoteException e) {
                    Log.w(TAG, "Unable to retrieve font size");
                }
                Log.d(TAG, "getValue fontScale:"+mCurConfig.fontScale + " change size:" +String.valueOf(mCurConfig.fontScale));
                ret = String.valueOf(mCurConfig.fontScale);
            } else if (key.equals(HDMIPASSTHROUGH)) {
                int outMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI);
                if (HiAoService.AUDIO_OUTPUT_MODE_RAW == outMode) {
                    ret = "1";
                } else {
                    ret = "0";
                }
            } else if (key.equals(SCREENBORDERSLEFT)) {
                Rect rect = mDisplayManager.getOutRange();
                ret = Integer.toString(rect.left);
            } else if (key.equals(SCREENBORDERSTOP)) {
                Rect rect = mDisplayManager.getOutRange();
                ret = Integer.toString(rect.top);
            } else if (key.equals(SCREENBORDERSRIGHT)) {
                Rect rect = mDisplayManager.getOutRange();
                ret = Integer.toString(rect.right);
            } else if (key.equals(SCREENBORDERSBOTTOM)) {
                Rect rect = mDisplayManager.getOutRange();
                ret = Integer.toString(rect.bottom);
            } else if (key.equals(FACTORYRESET)) {
            } else if (key.equals(IPV6_STATE)) {
                if (EthernetManager.IPV6_STATE_ENABLED == mEthManager.getIpv6PersistedState()) {
                    ret = IPV6_STATE_ENABLE;
                    mIpv6_state = IPV6_STATE_ENABLE;
                } else {
                    ret = IPV6_STATE_DISABLE;
                }
            } else if (key.equals(IPV6_DHCP_STATE)) {
                if (EthernetManager.ETHERNET_CONNECT_MODE_DHCP== mEthManager.getEthernetMode6()){
                    ret = IPV6_DHCP_STATE_ENABLE;
                    mIpv6_DHCP_flag = IPV6_DHCP_STATE_ENABLE;
                } else {
                    ret = IPV6_DHCP_STATE_DISABLE;
                    mIpv6_DHCP_flag = IPV6_DHCP_STATE_DISABLE;
                }
            }else if (key.equals(PPPOEUserName)) {
                mPPPOEUserName = Settings.Secure.getString(mContext.getContentResolver(),Settings.Secure.PPPOE_USER_NAME);
                ret = mPPPOEUserName;
            }else if (key.equals(PPPOEPassword)) {
                mPPPOEPassword = Settings.Secure.getString(mContext.getContentResolver(),Settings.Secure.PPPOE_USER_PASS);
                ret = mPPPOEPassword;
            }else if (key.equals(WifiOrEth)) {
                mWifiOrEth = value;
            }else if (key.equals(SPDIF_MODE)) {
                int iSpdifMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF);
                Log.d(TAG, "getSPDIFMode  iSpdifMode:" +iSpdifMode);
                switch (iSpdifMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_OFF:{
                        ret = AUDIO_OUTPUT_MODE_OFF;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                        ret = AUDIO_OUTPUT_MODE_RAW;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_LPCM:{
                       ret = AUDIO_OUTPUT_MODE_LPCM;
                    }break;
                    default:
                        Log.d(TAG, "error unkown iSpdifMode "+iSpdifMode);
                    break;
               }
            }else if (key.equals(OPTFORMAT)){
                int status = mDisplayManager.getOptimalFormatEnable();
                if(1 == status)
                {
                    ret = OPT_FORMAT_ENABLE;
                } 
                if(0 == status)
                {
                    ret = OPT_FORMAT_DISABLE;
                }
            }

            Log.d(TAG, "getValue key:"+key + " ret value:" +ret);
            return ret;
        }

        @Override
        public int getResoultion() throws RemoteException {
            // TODO Auto-generated method stub
            int index = 0;
            int format = mDisplayManager.getFmt();
            for (int i=0; i < mEncFormatMap.size(); i++){
                if(format == mEncFormatMap.get(i).getEncFormatValue()){
                    index = i;
                    break;
                }
            }
            Log.d(TAG, "getResoultion fmt:"+index);
            return index;
        }

        @Override
        public EthernetDevInfo getEthernetIPv6DevInfo() throws RemoteException {
            // TODO Auto-generated method stub
            Log.d(TAG, " getEthernetIPv6DevInfo ");
            EthernetDevInfo ethernetDevInfo = new EthernetDevInfo();
            String dev_name = mEthManager.getInterfaceName();
            ethernetDevInfo.dev_name = dev_name;
            String mode = mEthManager.getEthernetMode();
            ethernetDevInfo.ipmode = IPMODE_V6;
            ethernetDevInfo.mode = mode;
            Log.d(TAG, " getEthernetDevInfo mode:"+mode  +" ipmode:"+ IPMODE_V6);
            if (EthernetManager.ETHERNET_STATE_ENABLED == mEthManager.getIpv6PersistedState()) {
                if (ETH_CONN_MODE_DHCP.equals(mode)) {
                    ethernetDevInfo.ipaddr = mEthManager.getDhcpv6Ipaddress(dev_name);
                    ethernetDevInfo.netmask = mEthManager.getDhcpv6Prefixlen(dev_name);
                    ethernetDevInfo.route = mEthManager.getDhcpv6Gateway();
                    ethernetDevInfo.dns = mEthManager.getDhcpv6Dns(dev_name, 1);
                    ethernetDevInfo.dns2 = mEthManager.getDhcpv6Dns(dev_name, 2);
                } else {
                    ethernetDevInfo.ipaddr = mEthManager.getIpv6DatabaseAddress();
                    ethernetDevInfo.netmask = String.valueOf(mEthManager.getIpv6DatabasePrefixlength());
                    ethernetDevInfo.route = mEthManager.getIpv6DatabaseGateway();
                    ethernetDevInfo.dns = mEthManager.getIpv6DatabaseDns1();
                    ethernetDevInfo.dns2 = mEthManager.getIpv6DatabaseDns2();
                }
            }

            Log.d(TAG, " getEthernetIPv6DevInfo "
                    + " dev_name:" + ethernetDevInfo.dev_name
                    + " username:" + ethernetDevInfo.username
                    + " password:" + ethernetDevInfo.password
                    + " ipaddr:" + ethernetDevInfo.ipaddr
                    + " netmask:" + ethernetDevInfo.netmask
                    + " route:" + ethernetDevInfo.route
                    + " dns:" + ethernetDevInfo.dns
                    + " dns2:" + ethernetDevInfo.dns2);
            Log.d(TAG, " getEthernetIPv6DevInfo end ------");
            return ethernetDevInfo;
        }

        @Override
        public EthernetDevInfo getEthernetDevInfo() throws RemoteException {
            // TODO Auto-generated method stub
            EthernetDevInfo ethernetDevInfo = new EthernetDevInfo();
            String dev_name = mEthManager.getInterfaceName();
            ethernetDevInfo.dev_name = dev_name;
            String mode = mEthManager.getEthernetMode();
            ethernetDevInfo.ipmode = IPMODE_V4;
            Log.d(TAG, " getEthernetDevInfo mode:"+mode);

            if (ETH_CONN_MODE_PPPOE.equals(mode)) {
                ethernetDevInfo.mode = ETH_CONN_MODE_PPPOE;
                ethernetDevInfo.username = mPppoeManager.getPppoeUsername();
                ethernetDevInfo.password = mPppoeManager.getPppoePassword();
            } else if (ETH_CONN_MODE_DHCP.equals(mode)) {
                if (mEthManager.getDhcpOption60State() == EthernetManager.ETHERNET_STATE_ENABLED) {
                    ethernetDevInfo.mode = ETH_CONN_MODE_DHCPPLUS;
                    ethernetDevInfo.username = mEthManager.getDhcpOption60Login();
                    ethernetDevInfo.password = mEthManager.getDhcpOption60Password();
                } else {
                    ethernetDevInfo.mode = ETH_CONN_MODE_DHCP;
                }
            } else {
                ethernetDevInfo.mode = ETH_CONN_MODE_MANUAL;
                ethernetDevInfo.username = "";
                ethernetDevInfo.password = "";
            }

            mConnectMode = ethernetDevInfo.mode;
            if (EthernetManager.ETHERNET_STATE_ENABLED == mEthManager.getEthernetState()) {
                ethernetDevInfo.ipmode = IPMODE_V4;
                DhcpInfo dhcpInfo = mEthManager.getDhcpInfo();
                String IP = NetworkUtils.intToInetAddress(dhcpInfo.ipAddress).getHostAddress();
                String mGW = NetworkUtils.intToInetAddress(dhcpInfo.gateway).getHostAddress();
                String mNM = NetworkUtils.intToInetAddress(dhcpInfo.netmask).getHostAddress();
                String dns1 = NetworkUtils.intToInetAddress(dhcpInfo.dns1).getHostAddress();
                String dns2 = NetworkUtils.intToInetAddress(dhcpInfo.dns2).getHostAddress();
                ethernetDevInfo.ipaddr = IP;
                ethernetDevInfo.netmask = mNM;
                ethernetDevInfo.route = mGW;
                ethernetDevInfo.dns = dns1;
                ethernetDevInfo.dns2 = dns2;
            }
            Log.d(TAG, " getEthernetDevInfo "
                    + " dev_name:" + ethernetDevInfo.dev_name
                    + " username:" + ethernetDevInfo.username
                    + " password:" + ethernetDevInfo.password
                    + " ipaddr:" + ethernetDevInfo.ipaddr
                    + " netmask:" + ethernetDevInfo.netmask
                    + " route:" + ethernetDevInfo.route
                    + " dns:" + ethernetDevInfo.dns
                    + " dns2:" + ethernetDevInfo.dns2);
            return ethernetDevInfo;
        }

        @Override
        public int getAudioMode() throws RemoteException {
            // TODO Auto-generated method stub
            int audiomode = 0;
            int iHDMIMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_HDMI);
            if (PLATFORM_TYPE_GD.equals(mPlatformType)) {
                Log.d(TAG, "getAudioMode iHDMIMode:"+iHDMIMode + " mPlatformType:"+mPlatformType);

                switch (iHDMIMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_AUTO:{
                       audiomode = 0;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_LPCM:{
                       audiomode = 1;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode = 2;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_OFF:{
                       audiomode = 3;
                    }break;
                    default:break;
                }
            } else if(PLATFORM_TYPE_SC.equals(mPlatformType)){
                int iSpdifMode = mAOService.getAudioOutput(HiAoService.AUDIO_OUTPUT_PORT_SPDIF);
                Log.d(TAG, "getAudioMode iHDMIMode:"+iHDMIMode + " iSpdifMode:" +iSpdifMode);

                switch (iHDMIMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode = 2;
                       return audiomode;
                    }
                    default:break;
                }
                switch (iSpdifMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode = 1;
                    }break;
                    default:break;
                }
            } else if (PLATFORM_TYPE_SH3.equals(mPlatformType)) {
                Log.d(TAG, "getAudioMode iHDMIMode:"+iHDMIMode + " mPlatformType:"+mPlatformType);

                switch (iHDMIMode) {
                    case HiAoService.AUDIO_OUTPUT_MODE_AUTO:{
                       audiomode = 0;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_LPCM:{
                       audiomode = 1;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_RAW:{
                       audiomode = 2;
                    }break;
                    case HiAoService.AUDIO_OUTPUT_MODE_OFF:{
                       audiomode = 3;
                    }break;
                    default:break;
                }
            } else {
                Log.d(TAG, "error unkown platform type");
            }
            Log.d(TAG, "getAudioMode mode:"+audiomode);
            return audiomode;
        }
    };

    private class EncFormat{
        private int mEncFormat;
        private String mFormatStr;

        public EncFormat(int format, String formatName){
            mEncFormat = format;
            mFormatStr = formatName;
        }

        int getEncFormatValue(){
            return mEncFormat;
        }

        String getEncFormatName(){
            return mFormatStr;
        }
    }

    private HashMap<Integer, EncFormat> mEncFormatMap = new HashMap<Integer, EncFormat>();

    private void createEncFormat(){
        int index = 0;
        mEncFormatMap.clear();
        DispFmt disfmt = mDisplayManager.GetDisplayCapability();
        Log.d(TAG, "createEncFormat(): DispFmt=" + disfmt);
        if(disfmt != null) {
            Log.d(TAG, "createEncFormat(): GetDisplayCapability 2160P30HZ=" + disfmt.ENC_FMT_3840X2160_30
                + ", 2160P25HZ=" + disfmt.ENC_FMT_3840X2160_25 + ", 2160P24HZ=" + disfmt.ENC_FMT_3840X2160_24
                + ", 1080P60HZ=" + disfmt.ENC_FMT_1080P_60 + ", 1080P50HZ=" + disfmt.ENC_FMT_1080P_50
                + ", 1080P30HZ=" + disfmt.ENC_FMT_1080P_30 + ", 1080P25HZ=" + disfmt.ENC_FMT_1080P_25
                + ", 1080P24HZ=" + disfmt.ENC_FMT_1080P_24 + ", 1080I60HZ=" + disfmt.ENC_FMT_1080i_60
                + ", 1080I50HZ=" + disfmt.ENC_FMT_1080i_50 + ", 720P60HZ=" + disfmt.ENC_FMT_720P_60
                + ", 720P50HZ=" + disfmt.ENC_FMT_720P_50 + ", 576P50HZ=" + disfmt.ENC_FMT_576P_50
                + ", 480P60HZ=" + disfmt.ENC_FMT_480P_60 + ", PAL=" + disfmt.ENC_FMT_PAL
                + ", NTSC=" + disfmt.ENC_FMT_NTSC);
            if (disfmt.ENC_FMT_3840X2160_30 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_3840X2160_30, "2160P30HZ"));
            }
            if (disfmt.ENC_FMT_3840X2160_25 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_3840X2160_25, "2160P25HZ"));
            }
            if (disfmt.ENC_FMT_3840X2160_24 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_3840X2160_24, "2160P24HZ"));
            }
            if (disfmt.ENC_FMT_1080P_60 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_60, "1080P60HZ"));
            }
            if (disfmt.ENC_FMT_1080P_50 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_50, "1080P50HZ"));
            }
            if (disfmt.ENC_FMT_1080P_30 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_30, "1080P30HZ"));
            }
            if (disfmt.ENC_FMT_1080P_25 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_25, "1080P25HZ"));
            }
            if (disfmt.ENC_FMT_1080P_24 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_24, "1080P24HZ"));
            }
            if (disfmt.ENC_FMT_1080i_60 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080i_60, "1080I60HZ"));
            }
            if (disfmt.ENC_FMT_1080i_50 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080i_50, "1080I50HZ"));
            }
            if (disfmt.ENC_FMT_720P_60 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_720P_60, "720P60HZ"));
            }
            if (disfmt.ENC_FMT_720P_50 == 1) {
                mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_720P_50, "720P50HZ"));
            }
        } else {
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_60, "1080P60HZ"));
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080P_50, "1080P50HZ"));
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080i_60, "1080I60HZ"));
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_1080i_50, "1080I50HZ"));
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_720P_60, "720P60HZ"));
            mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_720P_50, "720P50HZ"));
        }
        mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_576P_50, "576P50HZ"));
        mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_480P_60, "480P60HZ"));
        mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_PAL, "PAL"));
        mEncFormatMap.put(index++, new EncFormat(HiDisplayManager.ENC_FMT_NTSC, "NTSC"));
    }
}
