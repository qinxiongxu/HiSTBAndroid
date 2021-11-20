package com.hisilicon.uvmos.monitor;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;

public class MyBroadcastReceiver extends BroadcastReceiver {

    private static final String ACTION_BOOT_COMPLETED = "android.intent.action.BOOT_COMPLETED";

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(ACTION_BOOT_COMPLETED)) {
            boolean showUvMOS = "true".equals(SystemProperties
                    .get("persist.media.hiplayer.uvmos"));
            if (showUvMOS) {
                Intent i = new Intent(Intent.ACTION_RUN);
                i.setClass(context, MonitorService.class);
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startService(i);
            }
        }
    }

}