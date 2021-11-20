package com.android.factorytest;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import android.util.Log;
import com.hisilicon.android.hisysmanager.HiSysManager;

public class SetMacInfo {
    private String TAG = "SetMacInfo";
    private List<String> mMacList = new ArrayList<String>();

    public int SetMac(String mac) {
        int ret = -1;
        if (compareMac(mac, mMacList.get(2))) {
            return 2;
        }
        HiSysManager hiSysManager = new HiSysManager();
        ret = hiSysManager.setFlashInfo("deviceinfo", 0, 17, mac);
        return ret;
    }

    public String getMacAddr(String path) {
        File file = new File(path);
        if (!file.exists()) {
            return null;
        } else {
            try {
                FileInputStream fis = new FileInputStream(file);
                try {
                    mMacList = XmlParser.parse(fis);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }
        if (mMacList.size() > 0)
            return mMacList.get(1);
        return null;
    }

    public void saveMacAddr(String path) {
        String newmac = MacIncrease(mMacList.get(1));
        if (newmac != null) {
            mMacList.set(1, newmac);
            if (mMacList.size() > 0) {
                String xml = XmlParser.write(mMacList);
                try {
                    writeSDFile(path, xml);
                } catch (IOException e) {
                }
            }
        }

    }

    public void writeSDFile(String fileName, String write_str)
            throws IOException {
        File file = new File(fileName);
        if (!file.exists()) {
            file.createNewFile();
        } else {
            file.delete();
            file.createNewFile();
        }
        FileOutputStream fos = new FileOutputStream(file);
        byte[] bytes = write_str.getBytes();
        fos.write(bytes);
        fos.close();

        try {
            Runtime.getRuntime().exec("sync");
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    public String MacIncrease(String smac) {
        Log.i(TAG, smac);
        String ret = null;
        int num = 0;
        char mac[] = smac.toCharArray();
        num = mac.length - 1;
        while (num >= 0) {
            if ('9' == mac[num]) {
                mac[num] = 'A';
                break;
            } else if ('F' == mac[num]||'f' == mac[num]) {
                mac[num] = '0';
                num--;
            } else if (':' == mac[num]) {
                num--;
            } else {
                mac[num]++;
                break;
            }
        }
        if (-1 == num) {
            return ret;
        } else {
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < mac.length; i++) {
                sb.append(mac[i]);
            }
            ret = sb.toString();
            return ret;
        }
    }

    public boolean compareMac(String smac1, String smac2) {
        int num = 0;
        int i = 0;
        smac1 = smac1.toLowerCase();
        smac2 = smac2.toLowerCase();
        Log.i(TAG, smac1 + " " + smac2);
        char macsrc[] = smac1.toCharArray();
        char macdes[] = smac2.toCharArray();
        num = macsrc.length - 1;
        while (i <= num) {
            if (i == num && macsrc[i] == macdes[i]) {
                return true;
            }
            if (macsrc[i] < macdes[i]) {
                return false;
            } else if (macsrc[i] == macdes[i]) {
                i++;
            } else {
                return true;
            }
        }
        return false;
    }

}