package com.hisilicon.android.gallery3d.list;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import com.hisilicon.android.gallery3d.list.Common;
import com.hisilicon.android.gallery3d.list.FilterType;
import com.hisilicon.android.gallery3d.util.Log;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.SystemProperties;

public class ImageFileListService extends Service {
    private String TAG = "ImageFileListService";
    private IBinder binder = new MyBinder();
    private static final boolean DEBUG = false;
    private ImageModel _currImageModel = null;
    private boolean _haveGetPosition = false; // whether have get the position
    public String _currPath = null;
    private List<ImageModel> _list = null;
    private GetImageListThread _getImageListThread = null;
    private boolean _runFlag = false;
    private Object lock = new Object();
    public int _currPosition = 0; // current Music file's position

    public int getCurrPosition() {
        return _currPosition;
    }

    public void setCurrPosition(int _currPosition) {
        this._currPosition = _currPosition;
    }

    private List<MusicModel> _musicList = null;

    public boolean isHaveGetPosition() {
        synchronized (lock) {
            return this._haveGetPosition;
        }
    }

    public void setHaveGetPosition(boolean haveGetPosition) {
        synchronized (lock) {
            this._haveGetPosition = haveGetPosition;
        }
    }

    public String getCurrPath() {
        synchronized (lock) {
            return this._currPath;
        }
    }

    public void setCurrPath(String currPath) {
        synchronized (lock) {
            this._currPath = currPath;
        }
    }

    public List<MusicModel> getMusicList() {
        synchronized (lock) {
            return this._musicList;
        }
    }

    public void setMusicList(ArrayList<MusicModel> musicList) {
        synchronized (lock) {
            this._musicList = musicList;
        }
    }

    public List<ImageModel> getList() {
        synchronized (lock) {
            return this._list;
        }
    }

    public void setList(ArrayList<ImageModel> list) {
        synchronized (lock) {
            this._list = list;
        }
    }

    public GetImageListThread getThread() {
        synchronized (lock) {
            return this._getImageListThread;
        }
    }

    public void setThread(GetImageListThread t) {
        synchronized (lock) {
            this._getImageListThread = t;
        }
    }

    public boolean isRunFlag() {
        synchronized (lock) {
            return this._runFlag;
        }
    }

    public void setStopFlag(boolean runFlag) {
        synchronized (lock) {
            this._runFlag = runFlag;
        }
    }

    public ImageModel getCurrImageModel() {
        synchronized (lock) {
            return this._currImageModel;
        }
    }

    public void setCurrImageModel(ImageModel model) {
        synchronized (lock) {
            this._currImageModel = model;
        }
    }

    public class MyBinder extends Binder {
        public ImageFileListService getService() {
            return ImageFileListService.this;
        }
    }

    @Override
    public void onCreate() {
        FilterType.filterTypeImage(getApplicationContext());
        FilterType.filterTypeMusic(getApplicationContext());
        super.onCreate();
    }

    @Override
    public IBinder onBind(Intent arg0) {
        return binder;
    }

    String curMusicParentPath = "";

    @Override
    public void onStart(Intent intent, int startId) {
        Log.d(TAG, "ImageFileListService.onStart");
        super.onStart(intent, startId);
        if (getList() != null) {
            getList().clear();
        } else {
            setList(new ArrayList<ImageModel>());
        }

        if (getMusicList() != null) {
            getMusicList().clear();
        } else {
            setMusicList(new ArrayList<MusicModel>());
        }

        // setCurrPosition(0);
        setHaveGetPosition(false);
        try {
            Log.d(DEBUG, TAG, "intent=" + intent + "  intent.getData()="
                    + intent.getData());
            if (intent == null || intent.getData() == null) {
                return;
            }
            String curPath = intent.getData().getPath();
            String curMusicPath = intent.getStringExtra("path");
            boolean fromMusic = intent.getBooleanExtra("fromMusic",false);
            Log.d(DEBUG, TAG, "intent.getData().getPath()=" + curPath
                    + " curMusicPath = " + curMusicPath);
            if (curMusicPath.equals("")) {
                curMusicPath = curPath;
            }
            File fileMusic = new File(curMusicPath);
            Log.d(DEBUG, TAG, "fileMusic.isFile()=" + fileMusic.isFile()
                    + "  fileMusic.isDirectory()=" + fileMusic.isDirectory());
            if (fileMusic != null) {
                if (fileMusic.exists() && fileMusic.isFile()) {
                    curMusicParentPath = curMusicPath.substring(0,
                            curMusicPath.lastIndexOf("/"));
                } else if (fileMusic.isDirectory()) {
                    curMusicParentPath = curMusicPath;
                }
            }

            setCurrPath(curPath);

            File f = new File(curPath);
            ImageModel currImage = new ImageModel();
            currImage.setTitle(f.getName());
            currImage.setAddedTime(f.lastModified());
            currImage.setPath(f.getPath());
            currImage.setSize(f.length());
            setCurrImageModel(currImage);

            String currPathParent = getCurrPath().substring(0,
                    getCurrPath().lastIndexOf("/"));

            File file = new File(currPathParent);
            if (file.exists() && file.isDirectory()) {
                setStopFlag(true);
                if(SystemProperties.get("ro.product.target").equals("demo"))
                    waitThreadToIdle(getThread());
                setThread(new GetImageListThread(file));
                setStopFlag(false);
                getThread().start();

                Intent i = new Intent();
                Log.d(DEBUG, TAG, "intent.getData():" + intent.getData());
                i.setClassName("com.hisilicon.android.gallery3d",
                        "com.hisilicon.android.gallery3d.app.Gallery");
                i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                i.setDataAndType(intent.getData(), "image/*");
                i.putExtra("flag", true);
                i.putExtra("fromMusic",fromMusic);
                ImageFileListService.this.startActivity(i);
            }
        } catch (Exception e) {
            Log.e(TAG, "onstart error :" + e);
            this.stopSelf(startId);
        }
    }

    /**
     * get all Image file from current folder
     */
    private class GetImageListThread extends Thread {
        private File file = null;

        public GetImageListThread(File file) {
            this.file = file;
        }

        public void run() {
            Log.d(TAG, "GetImageListThread.run");
            Common.setLoadSuccess(false);
            ImageModel model = null;
            MusicModel musicModel = null;
            File[] files = file.listFiles();
            int idIndex = 0;
            int musicIdIndex = 0;
            for (int i = 0; i < files.length; i++) {
                if (!isRunFlag()) {
                    if (files[i].isFile()) {
                        String filename = files[i].getName();
                        String dex = filename.substring(
                                filename.lastIndexOf(".") + 1,
                                filename.length());
                        dex = dex.toUpperCase();
                        SharedPreferences share = getSharedPreferences("IMAGE",
                                Context.MODE_WORLD_READABLE);
                        String ImageSuffix = share.getString(dex, "");

                        if (!ImageSuffix.equals("")) {
                            model = new ImageModel();
                            if (files[i].getPath().equals(
                                    _currImageModel.getPath())) {
                                Log.d(DEBUG, TAG,
                                        "_currImageModel.setId(idIndex)="
                                                + idIndex);
                                _currImageModel.setId(idIndex);
                                _currImageModel.setPath(files[i].getPath());
                                setCurrPosition(idIndex);
                            }
                            model.setPath(Uri.fromFile(
                                    new File(files[i].getPath())).toString());
                            model.setTitle(filename);
                            model.setSize(files[i].length());
                            model.setAddedTime(files[i].lastModified());
                            Log.d(DEBUG,
                                    TAG,
                                    "ImageIdIndex=" + idIndex
                                            + " files[i].getPath()="
                                            + files[i].getPath());
                            getList().add(model);
                            idIndex++;
                        }
                    }
                } else {
                    break;
                }
            }
            File fileMusicDir = new File(curMusicParentPath);
            if (fileMusicDir != null && fileMusicDir.exists()
                    && fileMusicDir.isDirectory()) {
                File[] fileMusics = fileMusicDir.listFiles();
                for (int j = 0; j < fileMusics.length; j++) {
                    if (!isRunFlag()) {
                        if (fileMusics[j].isFile()) {
                            String filename = fileMusics[j].getName();
                            String dex = filename.substring(
                                    filename.lastIndexOf(".") + 1,
                                    filename.length());
                            dex = dex.toUpperCase();
                            SharedPreferences musicShare = getSharedPreferences(
                                    "AUDIO", Context.MODE_WORLD_READABLE);
                            String musicSuffix = musicShare.getString(dex, "");
                            if (!musicSuffix.equals("")) {
                                Log.d(DEBUG, TAG, "musicfilename=" + filename);
                                musicModel = new MusicModel();
                                musicModel.setPath(fileMusics[j].getPath());
                                musicModel.setTitle(filename);
                                musicModel.setSize(fileMusics[j].length());
                                musicModel.setAddedTime(fileMusics[j]
                                        .lastModified());
                                musicModel.setId(musicIdIndex);
                                getMusicList().add(musicModel);
                                musicIdIndex++;
                                Log.d(DEBUG, TAG, " musicIdIndex="
                                        + musicIdIndex
                                        + " fileMusics[j].getPath()="
                                        + fileMusics[j].getPath());
                            }
                        }
                    }
                }
            }
            Common.setLoadSuccess(true);
        }
    }

    @Override
    public boolean onUnbind(Intent intent) {
        setStopFlag(true);
        return super.onUnbind(intent);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    /**
     * check if the thread thrd is busy
     * @param thrd
     * @return
     */
    private static boolean threadBusy(Thread thrd) {
        if (thrd == null) {
            return false;
        }

        if ((thrd.getState() != Thread.State.TERMINATED)
                && (thrd.getState() != Thread.State.NEW)) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * before recreate a new thread, be sure the old thread is idle
     * @param thrd
     */
    private static void waitThreadToIdle(Thread thrd) {
        while (threadBusy(thrd)) {
            try {
                Thread.sleep(200);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public int getSize() {
        if (null == getList()) {
            return 0;
        } else {
            return getList().size();
        }
    }

}
