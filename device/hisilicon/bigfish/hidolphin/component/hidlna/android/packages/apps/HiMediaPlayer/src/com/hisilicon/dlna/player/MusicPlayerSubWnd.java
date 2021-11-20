/**
 * music播放activity，处理音乐播放界面相关。
 * @author
 */
package com.hisilicon.dlna.player;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.security.SecureRandom;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.text.NumberFormat;

import android.app.AlertDialog;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.media.*;
import android.media.MediaPlayer.*;
import android.net.Uri;
import android.os.*;
import android.util.Log;
import android.view.*;
import android.view.View.OnKeyListener;
import android.widget.*;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.SeekBar.OnSeekBarChangeListener;

import com.hisilicon.dlna.dmp.*;
import com.hisilicon.dlna.dmr.*;
import com.hisilicon.dlna.dmr.action.*;
import com.hisilicon.dlna.exception.*;
import com.hisilicon.dlna.file.*;
import com.hisilicon.android.mediaplayer.HiMediaPlayer;
import com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke;
import com.hisilicon.dlna.util.*;
import com.hisilicon.dlna.textview.DlnaListView;

public class MusicPlayerSubWnd extends PlayerSubWnd
{
    private static final String TAG = "MusicPlayerSubWnd";
    private static final String DTCP_MEMI_KEY = "application/x-dtcp1";
    private static final int TIMEOUT = 5000;
    private static final int TIME_PROGRESS_UPDATE = 0x100;
    private static final int UPDATE_MUSIC_INFO = 0x101;
    private static final int DEVICE_NOT_FOUND = 0x102;
    private static final int UPDATE_PLAYLIST = 0x103;
    private static final int NETWORK_DOWN = 0x104;
    private static final int UPDATE_FILESIZE = 0x105;
    private static final int UPDATE_ALBUMIMAGE = 0x106;
    private static final int UNSUPPORT_FILE = 0x107;
    private static final int CHANGE_BG_SCREEN = 0x108;

    private static final long SEEK_TIMEOUT_SECONDS = 3l;
    private static final int randomMaxCount = 6;

    private IPlayerMainWnd mIPlayerMainWnd = null;
    private Context mContext = null;
    private View mParentView = null;

    private SetURLAction mSetURLAction;
    private PlayAction mPlayAction;
    private SeekAction mSeekAction;
    // for the volume control
    // 用于音量控制
    private AudioManager audioManager = null;

    // Controls on the interface layout
    // 界面布局上的控件
    private SeekBar mSeekBar = null;
    private TextView mCurrentTimeTextView = null;
    private TextView musicPlayName = null;
    private TextView musicAlbum = null;
    private TextView musicArtist = null;
    private TextView musicStyle = null;
    private TextView musicSize = null;
    private TextView listCount = null;
    private ImageView albumImageView = null;
    private ImageView miniPlayStatus = null;
    private ImageView miniPlayMode = null;
    private ImageView miniShuffleMode = null;
    private ImageButton mPlayPauseButton = null;
    private ImageButton backToList = null;
    private ImageButton playPrevious = null;
    private ImageButton playNext = null;
    private ImageButton playModeIB = null;
    private ImageButton shuffleMode = null;
    private DlnaListView playList = null;
    private TextView seektimeTextView = null;
    private AlertDialog mAlertDialog = null;

    private SimpleAdapter mSimpleAdapter = null;
    private FetchPlayListThread fetchPlayListThread = null;

    int fileType = 0;
    private int lastSelection = -1;
    private int listSum = 0;
    private String mUrl = null;
    private boolean bStageFrightUsedFlag = false;
    private boolean bHasRangNoFlag = false;
    private String fileName = "";
    private String strArtist = "";
    private String strGenre = "";
    private String strAlbum = "";
    private String strSize = "";
    private Bitmap albumImage = null;
    private Timer networkTimer;
    private Timer mUpdateCurrentPositionTimer;
    private Timer mChangeBgTimer;
    // private boolean stopNotifyFlag = false;
    // 用于记录播放器的状态
    private int dmrPreState = Constant.DMR_STATE_NO_MEDIA_PRESENT;
    private int dmrCurrentState = Constant.DMR_STATE_NO_MEDIA_PRESENT;

    // Determine whether multiple errors for single song
    // 防止一首歌曲多个错误，对此进行判断
    private String dataHandler = null;

    private SecureRandom mRandom = new SecureRandom();
    private MediaPlayer mediaPlayer = null;
    private List<DMSFile> dms_files = new ArrayList<DMSFile>();
    private List<String> playlist = new ArrayList<String>();
    private ArrayList<HashMap<String, Object>> listData = new ArrayList<HashMap<String, Object>>();
    private DMSFile mDMSFile = null;

    private boolean SEEKING = false;
    private boolean isShuffle = false;
    private boolean exceptionStopped = false;
    private boolean PlayListCreated = false;
    private boolean seekDelayFlag = false;
    private SeekAction.SeekMode seekModeHandler = SeekAction.SeekMode.DLNA_SEEK_MODE_ABS_COUNT;
    private String fileAllStringTime = null;
    private boolean isResetting = false;
    boolean playThreadIsRunning = false;
    boolean asyncPrepareIsRunning = false;

    int curIndex = 0;

    IDMRServer dmrServer;
    private Controller mController = Controller.DMP;
    private PlayMode mPlayMode = PlayMode.NORMAL;
    private boolean isPrepared = false;

    private HandlerThread mediaPlayerHandlerThread;
    private Handler mediaPlayerHandler;
    private MediaPlayerUtil.Status mediaPlayerStatus = MediaPlayerUtil.Status.Idle;
    private Lock seekLock = new ReentrantLock();
    private Condition seekCondition = seekLock.newCondition();
    private boolean isSeeking = false;
    private int mDuration;
    private boolean isPaused = false;
    private boolean isStarted = false;
    private boolean mIsInited = false;
    private String mContentType;
    private long mContentLength;
    private String titleByHiPlayer = null;
    private String artistByHiPlayer =  null;
    private String albumByHiPlayer =  null;
    private String genreByHiPlayer = null;
    private Bitmap albumartByHiPlayer = null;
    private int mCurrentBgScreenIndex = 0;
    private int mBgScreens[] = {
        R.drawable.bg_screen1,
        R.drawable.bg_screen2,
        R.drawable.bg_screen3,
        R.drawable.bg_screen4,
        R.drawable.bg_screen_end
    };

    /**
     * update UI components(TextView, ListView...)
     */
    /**
     * 更新各UI组件(TextView, ListView...)
     */
    Handler mHandler = new Handler()
    {
        @SuppressWarnings("unchecked")
        public void handleMessage(Message msg)
        {
            switch (msg.what)
            {
                case CHANGE_BG_SCREEN:
                    Resources resources = getResources();
                    Drawable btnDrawable = resources.getDrawable(mBgScreens[mCurrentBgScreenIndex++]);
                    mCurrentBgScreenIndex %= mBgScreens.length;
                    mParentView.setBackgroundDrawable(btnDrawable);
                    break;
                case TIME_PROGRESS_UPDATE:
                    // mCurrentTimeTextView
                    if (mediaPlayer != null)
                    {
                        int curPostion = mediaPlayer.getCurrentPosition();
                        if (!SEEKING)
                        {
                            mSeekBar.setProgress(Math.round((curPostion * 1.0f / mDuration * 100)));
                        }

                        String curTime = timeFromIntToString(curPostion);
                        mCurrentTimeTextView.setText(new StringBuffer(curTime).append("/")
                                .append(fileAllStringTime).toString());
                    }
                    break;
                case UPDATE_MUSIC_INFO:
                    updateMusicInfo();
                    break;
                case DEVICE_NOT_FOUND:
                    Toast.makeText(mContext, R.string.fail_get_playlist, Toast.LENGTH_LONG).show();
                    break;
                case UPDATE_PLAYLIST:
                    String[] itemType = { "name", "selection" };
                    int index = msg.arg1;
                    int[] itemPos = { R.id.music_name, R.id.music_selection };

                    listData.clear();
                    lastSelection = -1;

                    ArrayList<HashMap<String, Object>> alt = (ArrayList<HashMap<String, Object>>) msg.obj;
                    for (HashMap<String, Object> hm : alt)
                        listData.add(hm);
                    mSimpleAdapter = new SimpleAdapter(mContext, listData, R.layout.music_listitem,
                            itemType, itemPos);
                    playList.setAdapter(mSimpleAdapter);
                    playList.setSelection(index);
                    mSimpleAdapter.notifyDataSetChanged();

                    PlayListCreated = true;
                    mHandler.sendEmptyMessage(UPDATE_MUSIC_INFO);
                    if (mController != Controller.DMR)
                        restoreSettings();
                    break;
                case NETWORK_DOWN:
                    Toast.makeText(mContext, R.string.network_shutdown, Toast.LENGTH_SHORT).show();
                    break;
                case UPDATE_FILESIZE:
                    Log.d(TAG, "in case UPDATE_FILESIZE");
                    if (strSize.length() != 0)
                        musicSize.setText("　" + strSize);
                    else
                        musicSize.setText("　" + getResources().getString(R.string.unknown));
                    break;
                case UPDATE_ALBUMIMAGE:
                    if (albumImage != null)
                    {
                        albumImageView.setImageBitmap(albumImage);
                    }
                    else if (albumartByHiPlayer != null)
                    {
                        albumImageView.setImageBitmap(albumartByHiPlayer);
                    }
                    else
                    {
                        albumImageView.setImageResource(R.drawable.album);
                    }
                    break;
                case UNSUPPORT_FILE:
                    warning();
                    break;
            }
            super.handleMessage(msg);
            return;
        }
    };

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        super.onCreateView(inflater, container, savedInstanceState);
        mParentView = inflater.inflate(R.layout.musiclayout, container, false);
        Log.e(TAG, "=====22 mParentView=" + mParentView);
        mContext = inflater.getContext();

        audioManager = (AudioManager) mContext.getSystemService(Service.AUDIO_SERVICE);
        Settings.init(mContext);

        BaseAction actionClass = (BaseAction) getActivity().getIntent().getSerializableExtra(
                Constant.FILE_PLAY_PATH);
        setBaseAction(actionClass);
        String contentType = (String)this.getActivity().getIntent()
                .getSerializableExtra(Constant.FILE_CONTENT_TYPE);
        if(contentType != null)
            setContentType(contentType.toLowerCase());

        String contentLengthString = (String)this.getActivity().getIntent()
                .getSerializableExtra(Constant.FILE_CONTENT_LENGTH);
        long contentLength = 0;
        if(contentLengthString != null)
            contentLength = Long.parseLong(contentLengthString);
        Log.d(TAG," content type : " + contentType + "length : " + contentLength);
        setContentLength(contentLength);
        // this.initialView();
        mIsInited = true;
        return mParentView;
    }

    class ChangeBgTask extends TimerTask
    {
        @Override
        public void run() {
            mHandler.sendEmptyMessage(CHANGE_BG_SCREEN);
        }
    }

    public void onResume()
    {
        Log.d(TAG, "onResume " + this.toString() + ",zhl time=" + SystemClock.elapsedRealtime());
        super.onResume();

        mediaPlayer = new MediaPlayer();
        mediaPlayer.setOnPreparedListener(new OnPreparedListener());
        mediaPlayer.setOnErrorListener(new OnErrorListener());
        mediaPlayer.setOnCompletionListener(mCompletionListener);
        mediaPlayer.setOnBufferingUpdateListener(new OnBufferingUpdateListener());
        mediaPlayer.setOnInfoListener(mOnInfoListener);
        mediaPlayer.setOnSeekCompleteListener(new OnSeekCompleteListener());
        mediaPlayerHandlerThread = new HandlerThread("mediaplayer");
        mediaPlayerHandlerThread.start();
        mediaPlayerHandler = new MediaPlayerHandler(mediaPlayerHandlerThread.getLooper());
        Log.d(TAG, "onResume() end");
        mediaPlayerStatus = MediaPlayerUtil.Status.Idle;
        Message msg = mediaPlayerHandler.obtainMessage(0, Action.InitPlayer);
        mediaPlayerHandler.sendMessage(msg);

        mChangeBgTimer = new Timer("change_bg_timer");
        mChangeBgTimer.schedule(new ChangeBgTask(), 0, 5000);
    }

    public void onPause()
    {
        Log.d(TAG, "onPause " + this.toString() + ",zhl time=" + SystemClock.elapsedRealtime());
        isStarted = false;
        mIsInited = false;

        if (mChangeBgTimer != null)
        {
            mChangeBgTimer.cancel();
            mChangeBgTimer = null;
        }

        if (mUpdateCurrentPositionTimer != null)
        {
            mUpdateCurrentPositionTimer.cancel();
            mUpdateCurrentPositionTimer = null;
        }
        // if (mController == Controller.DMR && stopNotifyFlag == true) {

        stopNotify();
        if (null != dmrServer)
        {
            try
            {
                dmrServer.unregisterPlayerController();
            }
            catch (RemoteException e)
            {
                Log.e(TAG, "onPause unregisterPlayerController", e);
            }
            dmrServer = null;
        }

        mediaPlayerHandler.removeCallbacksAndMessages(null);
        if (mediaPlayerHandlerThread != null)
        {
            boolean isQuit = mediaPlayerHandlerThread.quit();
            if (isQuit)
            {
                Log.e(TAG, "mediaPlayerHandlerThread quit success");
                try
                {
                    mediaPlayerHandlerThread.join();
                }
                catch (InterruptedException e)
                {
                    Log.e(TAG, "MediaPlayerHandlerThread join interrupted", e);
                }
            }
            else
            {
                Log.e(TAG, "mediaPlayerHandlerThread quit fail");
            }
        }
        Log.d(TAG, "before mediaPlayer.release()");
        mediaPlayerStatus = MediaPlayerUtil.Status.End;
        mediaPlayer.release();
        mediaPlayer = null;

        if (fetchPlayListThread != null && fetchPlayListThread.isAlive())
        {
            fetchPlayListThread.interruptThread();
            fetchPlayListThread.registerEventCallback(null);
            fetchPlayListThread.interrupt();
        }
        fetchPlayListThread = null;

        super.onPause();

    }

    public void onDestroy()
    {
        Log.d(TAG, "onDestroy");
        super.onDestroy();
    }

    public KeyDoResult keyDownDispatch(int keyCode, KeyEvent event)
    {
        if (keyCode == KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE)
        {
            // shield the play button
            return KeyDoResult.DO_OVER;
        }
        else if (keyCode == KeyEvent.KEYCODE_DPAD_UP)
        {
            if (mSeekBar.hasFocus())
            {
                return KeyDoResult.DO_OVER;
            }
        }
        return KeyDoResult.DO_NOTHING;
    }

    public KeyDoResult keyUpDispatch(int keyCode, KeyEvent event)
    {
        Log.d(TAG, "onKeyUp keyCode:" + keyCode);
        if (!mSeekBar.hasFocus() && SEEKING)
        {
            SEEKING = false;
            seektimeTextView.setText("");
        }

        switch (keyCode)
        {
            case KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE:
                if (isPaused)
                {
                    playerResume();
                }
                else
                {
                    playerPause();
                }
                break;
            case KeyEvent.KEYCODE_PAGE_UP: // previous item
                if (mController == Controller.DMR)
                {
                    Toast.makeText(mContext, R.string.dmr_not_allow_pre, Toast.LENGTH_SHORT).show();
                    break;
                }
                if (!playThreadIsRunning)
                {
                    playPreviousItem();
                }
                break;
            case KeyEvent.KEYCODE_PAGE_DOWN: // next item
                if (mController == Controller.DMR)
                {
                    Toast.makeText(mContext, R.string.dmr_not_allow_next, Toast.LENGTH_SHORT)
                            .show();
                    break;
                }
                if (!playThreadIsRunning)
                {
                    playNextItem();
                }
                break;
            case KeyEvent.KEYCODE_MEDIA_STOP:
                // stopNotifyFlag = true;
                Log.d(TAG, "onKeyUp stop");
                closeMainActivity(false);
                break;
            default:
                break;
        }

        return KeyDoResult.DO_NOTHING;
    }


    /**
     * Play music
     */
    /**
     * 播放音乐
     */
    private void musicPlay()
    {
        if (PlayList.getinstance().getLength() > 0)
            mUrl = PlayList.getinstance().getcur();
        play(mUrl);
    }

    /**
     * OnCompletionListener of audio play
     */
    /**
     * 音频播放的onCompletionListener
     */
    MediaPlayer.OnCompletionListener mCompletionListener = new MediaPlayer.OnCompletionListener()
    {
        public void onCompletion(MediaPlayer mp)
        {
            Log.d(TAG, "onCompletion(), current playMode: " + mPlayMode + ", shuffle: " + isShuffle);
            if (networkTimer != null)
            {
                networkTimer.cancel();
                networkTimer = null;
            }

            stopNotify();
            if (mController == Controller.DMR)
            {// DTS2012120101674
                try
                {
                    dmrServer.unregisterPlayerController();
                }
                catch (Exception e)
                {
                    Log.e(TAG, "mCompletionListener dmr callback", e);
                }
            }

            if (exceptionStopped)
            {
                Log.e(TAG, "player stopped exceptionally");
                exceptionStopped = false;
                return;
            }

            // 随机播放模式
            if (isShuffle)
            {
                nextItemByShuffle(false);
                return;
            }

            if (MusicPlayerSubWnd.this.getActivity().isFinishing())
                return;

            if (mController == Controller.DMR)
            {
                Log.d(TAG, "Music Controller == DMR,exit.");
                dmrPreState = dmrCurrentState;
                dmrCurrentState = Constant.DMR_STATE_STOPPED;
                playerStop();
                return;
            }

            switch (mPlayMode)
            {
                case NORMAL:
                    if (PlayList.getinstance().getPosition() != PlayList.getinstance().getLength() - 1)
                    {
                        PlayList.getinstance().movenext();
                        musicPlay();
                    }
                    else
                    {
                        Log.d(TAG, "switch to closeMainActivity");
                        closeMainActivity(false);
                    }
                    break;
                case REPEAT_ONE:
                    musicPlay();
                    break;
                case REPEAT_ALL:
                    PlayList.getinstance().movenext();
                    musicPlay();
                    break;
            }
        }
    };

    /**
     * OnInfoListener of audio play
     */

    /**
     * 音频播放的OnInfoListener
     */
    MediaPlayer.OnInfoListener mOnInfoListener = new MediaPlayer.OnInfoListener()
    {
        public boolean onInfo(MediaPlayer mp, int what, int extra)
        {
            Log.d(TAG, "onInfo.what=" + what + ",extra=" + extra);
            // MeidaPlayer.MEDIA_INFO_NETWORK,
            if (HiMediaPlayer.MEDIA_INFO_NETWORK == what)
            {
                if ((extra == enFormatMsgNetwork.FORMAT_MSG_NETWORK_ERROR_CONNECT_FAILED.ordinal())
                        || (enFormatMsgNetwork.FORMAT_MSG_NETWORK_ERROR_DISCONNECT.ordinal() == extra)
                        || (enFormatMsgNetwork.FORMAT_MSG_NETWORK_ERROR_NOT_FOUND.ordinal() == extra)
                        || (enFormatMsgNetwork.FORMAT_MSG_NETWORK_ERROR_UNKNOWN.ordinal() == extra)
                        || (enFormatMsgNetwork.FORMAT_MSG_NETWORK_ERROR_TIMEOUT.ordinal() == extra))
                {
                    Log.d(TAG, "schedule to finish because network is down");
                    if (networkTimer == null)
                    {
                        networkTimer = new Timer();
                        networkTimer.schedule(new NetworkTimerTask(extra), TIMEOUT);
                    }
                }
                else if (enFormatMsgNetwork.FORMAT_MSG_NETWORK_NORMAL.ordinal() == extra)
                {
                    Log.d(TAG, "cancel schedule to finish");
                    if (networkTimer != null)
                    {
                        networkTimer.cancel();
                        networkTimer = null;
                    }
                }
            }
            return true;
        }
    };

    /**
     * Show a dialog that prompts the unsupported file
     */
    /**
     * 弹出对话框，提示不支持的文件
     */
    private void warning()
    {
        if (null == mAlertDialog)
        {
            mAlertDialog = new AlertDialog.Builder(mContext).setTitle(R.string.error)
                    .setMessage(R.string.unsupport_file)
                    .setPositiveButton(R.string.ok, new DialogInterface.OnClickListener()
                    {
                        public void onClick(DialogInterface dialog, int whichButton)
                        {
                            mAlertDialog.cancel();
                            if (Controller.DMR == mController)
                            {
                                Log.e(TAG, "error dmr, unspport_file finish");
                                closeMainActivity(false);
                            }
                            else
                            {
                                if (!playThreadIsRunning)
                                {
                                    playNextItem();
                                    if (exceptionStopped)
                                        focusPlayingItem();
                                }
                                exceptionStopped = false;
                            }
                        }
                    }).show();
        }
        else
        {
            mAlertDialog.show();
        }
    }

    /**
     * play the next item when shuffle
     */
    /**
     * 随机播放时获取下一首
     */
    private int getNextshuffleIndex()
    {
        int shuffleIndex = -1;
        int maxCount = PlayList.getinstance().getLength();
        switch (maxCount)
        {
            case 0:
            {
                shuffleIndex = -1;
                break;
            }
            case 1:
            {
                shuffleIndex = 0;
                break;
            }
            case 2:
            {
                int currentIndex = PlayList.getinstance().getPosition();
                shuffleIndex = (currentIndex + 1) % 2;
                break;
            }
            default:
            {
                int randomCount = 0;
                int currentIndex = PlayList.getinstance().getPosition();
                do
                {
                    shuffleIndex = mRandom.nextInt(maxCount);
                }
                while ((shuffleIndex < 0 || shuffleIndex == currentIndex)
                        && ++randomCount < randomMaxCount);
            }
        }
        return shuffleIndex;
    }

    /**
     * play the previous item
     */
    /**
     * 播放上一曲
     */
    private void playPreviousItem()
    {
        if (isShuffle)
        {
            if (PlayList.getinstance().getLength() == 0)
            {
                mCurrentTimeTextView.setText("00:00:00/00:00:00");
                mSeekBar.setProgress(0);
                List<String> playlist_shuffle = playlist;
                PlayList.getinstance().setlist(playlist_shuffle, 0);
                PlayList.getinstance().setPosition(getNextshuffleIndex());
                musicPlay();
                return;
            }
            int shuffleIndex = getNextshuffleIndex();
            if (-1 != shuffleIndex)
            {
                PlayList.getinstance().setPosition(shuffleIndex);
            }
            musicPlay();
            return;
        }
        PlayList.getinstance().moveprev();
        musicPlay();
        mPlayPauseButton.setBackgroundResource(R.drawable.pause_button);
        miniPlayStatus.setBackgroundResource(R.drawable.music_play_status);
    }

    /**
     * play the next item
     */
    /**
     * 播放下一曲
     */
    private void playNextItem()
    {
        if (PlayListCreated)
        {
            if (isShuffle)
                nextItemByShuffle(true);
            else
            {
                if (PlayList.getinstance().getLength() > 1)
                    PlayList.getinstance().movenext();
                musicPlay();
            }
            mPlayPauseButton.setBackgroundResource(R.drawable.pause_button);
            miniPlayStatus.setBackgroundResource(R.drawable.music_play_status);
        }
    }

    /**
     * play the next item in Shuffle Mode
     *
     * @param fromBtn from button or not(play end)
     */
    /**
     * 随机模式下的播放下一曲
     *
     * @param fromBtn 判断是否按键触发，还是曲终触发
     */
    private void nextItemByShuffle(boolean fromBtn)
    {
        switch (mPlayMode)
        {
            case NORMAL:
                if (PlayList.getinstance().getLength() == 0)
                {
                    if (fromBtn)
                    {
                        List<String> playlist_shuffle = playlist;
                        PlayList.getinstance().setlist(playlist_shuffle, 0);
                    }
                    else
                    {
                        Log.d(TAG, "nextItem closeMainActivity");
                        closeMainActivity(false);
                        return;
                    }
                }
                PlayList.getinstance().setPosition(getNextshuffleIndex());
                musicPlay();
                return;
            case REPEAT_ONE:
                // 随机和单曲循环模式，后者优先
                if (fromBtn)
                {
                    // DTS2013122000850
                    if (PlayList.getinstance().getLength() == 0)
                    {
                        List<String> playlist_shuffle = playlist;
                        PlayList.getinstance().setlist(playlist_shuffle, 0);
                    }
                    PlayList.getinstance().setPosition(getNextshuffleIndex());
                }
                musicPlay();
                break;
            case REPEAT_ALL:
                if (PlayList.getinstance().getLength() == 0)
                {
                    List<String> playlist_shuffle = playlist;
                    PlayList.getinstance().setlist(playlist_shuffle, 0);
                }
                PlayList.getinstance().setPosition(getNextshuffleIndex());
                musicPlay();
                return;
            default:
                break;
        }
    }

    /**
     * convert milliseconds to string
     */
    /**
     * 把毫秒值转换成字符串
     */
    private String timeFromIntToString(int millSeconds)
    {
        int hour = 0;
        int minute = 0;
        int second = 0;
        String strHour;
        String strMinute;
        String strSecond;
        NumberFormat format = NumberFormat.getInstance();

        second = millSeconds / 1000;

        if (second > 60)
        {
            minute = second / 60;
            second = second % 60;
        }

        if (minute > 60)
        {
            hour = minute / 60;
            minute = minute % 60;
        }

        format.setMaximumIntegerDigits(2);
        format.setMinimumIntegerDigits(2);
        strSecond = format.format(second);
        strMinute = format.format(minute);
        strHour = format.format(hour);

        return (strHour + ":" + strMinute + ":"  + strSecond);
    }

    long timeFormStringToInt(String timeString)
    {
        String strTimeFormat = "HH:mm:ss";
        SimpleDateFormat sdf = new SimpleDateFormat(strTimeFormat);
        try
        {
            return sdf.parse(timeString).getTime();
        }
        catch (Exception e)
        {
            Log.e(TAG, "timeFormStringToInt", e);
        }
        return 0;
    }

    /**
     * initial some controls for current activity
     */
    /**
     * 初始化一些当前activity的控件
     */
    public void initialView()
    {
        if (false == mIsInited)
        {
            mSeekBar = (SeekBar) mParentView.findViewById(R.id.musicBar_SeekBar);
            mCurrentTimeTextView = (TextView) mParentView.findViewById(R.id.MusicPlayTime);
            musicPlayName = (TextView) mParentView.findViewById(R.id.nameTextView);
            musicAlbum = (TextView) mParentView.findViewById(R.id.albumTextView);
            musicArtist = (TextView) mParentView.findViewById(R.id.artistTextView);
            musicStyle = (TextView) mParentView.findViewById(R.id.styleTextView);
            musicSize = (TextView) mParentView.findViewById(R.id.sizeTextView);
            albumImageView = (ImageView) mParentView.findViewById(R.id.CDCover);
            miniPlayStatus = (ImageView) mParentView.findViewById(R.id.miniPlayStatusImageView);
            miniPlayMode = (ImageView) mParentView.findViewById(R.id.miniPlayModeImageView);
            miniShuffleMode = (ImageView) mParentView.findViewById(R.id.miniShuffleImageView);
            mPlayPauseButton = (ImageButton) mParentView.findViewById(R.id.playBtn);
            backToList = (ImageButton) mParentView.findViewById(R.id.backBtn);
            listCount = (TextView) mParentView.findViewById(R.id.listCountTextView);
            playList = (DlnaListView) mParentView.findViewById(R.id.playListView);
            playPrevious = (ImageButton) mParentView.findViewById(R.id.previousBtn);
            playNext = (ImageButton) mParentView.findViewById(R.id.nextBtn);
            playModeIB = (ImageButton) mParentView.findViewById(R.id.playModeBtn);
            shuffleMode = (ImageButton) mParentView.findViewById(R.id.shuffleBtn);
            seektimeTextView = (TextView) mParentView.findViewById(R.id.a_seektime_textView);
        }
        mPlayPauseButton.requestFocus();
        mCurrentTimeTextView.setText("00:00:00/00:00:00");
        mSeekBar.setProgress(0);

        Log.d(TAG, "initialView 11 miniShuffleMode=" + miniShuffleMode);
        miniShuffleMode.setVisibility(View.INVISIBLE);
        Log.e(TAG, "===== initialView= 2233");
        seektimeTextView.setText("");
        if (mController == Controller.DMP)
        {
            if (mDMSFile != null)
            {
                dms_files.add(mDMSFile);
                HashMap<String, Object> map = new HashMap<String, Object>();
                map.put("name", mDMSFile.getName());
                listData.add(map);
                String[] itemType = { "name", "selection" };
                int[] itemPos = { R.id.music_name, R.id.music_selection };
                mSimpleAdapter = new SimpleAdapter(mContext, listData, R.layout.music_listitem,
                        itemType, itemPos);
                playList.setAdapter(mSimpleAdapter);
                PlayList.getinstance().setlist(playlist, 0);
                listSum = playlist.size();
                listCount.setText("1/" + listSum);

                fetchPlayListThread = new FetchPlayListThread(mContext, mDMSFile, FileType.AUDIO,
                        playlist, dms_files);
                fetchPlayListThread.registerEventCallback(new UpdatePlayListEventCallback());
                fetchPlayListThread.start();
            }
        }
        else if (mController == Controller.DMR)
        {
            playPrevious.setEnabled(false);
            playNext.setEnabled(false);
            playModeIB.setEnabled(false);
            shuffleMode.setEnabled(false);
            backToList.setNextFocusLeftId(R.id.playBtn);
            mPlayPauseButton.setNextFocusRightId(R.id.backBtn);
            mSeekBar.setNextFocusDownId(R.id.playBtn);
            listCount.setText("1/1");
        }

        if (true == mIsInited)
        {
            return;
        }

        mPlayPauseButton.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View arg0)
            {
                if (isPaused)
                {
                    playerResume();
                }
                else
                {
                    playerPause();
                }
            }
        });
        playList.setOnItemClickListener(listClickListener);
        playList.setOnItemSelectedListener(new OnItemSelectedListener()
        {
            public void onItemSelected(AdapterView<?> parent, View view, int position, long id)
            {
                // Log.d(TAG, "------listView index=" + position + "----");
                int cur = position + 1;
                listCount.setText(cur + "/" + listSum);
            }

            public void onNothingSelected(AdapterView<?> parent)
            {
                Log.d(TAG, "------nothing to sel---------");
            }
        });
        playList.setOnKeyListener(new OnKeyListener()
        {

            @Override
            public boolean onKey(View v, int keyCode, KeyEvent event)
            {
                if (event.getAction() == KeyEvent.ACTION_DOWN)
                {
                    // Do not handle Page Up/Down Key Down event in ListView
                    if (keyCode == KeyEvent.KEYCODE_PAGE_UP
                            || keyCode == KeyEvent.KEYCODE_PAGE_DOWN)
                    {
                        return true;
                    }
                }
                return false;
            }
        });
        mSeekBar.setOnSeekBarChangeListener(new OnSeekBarChangeListener()
        {
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser)
            {
                if (fromUser)
                {
                    SEEKING = true;
                    seektimeTextView.setVisibility(View.VISIBLE);
                    seektimeTextView
                            .setText(timeFromIntToString((int) (mDuration * progress * 0.01)));
                }
            }

            public void onStartTrackingTouch(SeekBar seekBar)
            {
                Log.d(TAG, "begin to seek");
                SEEKING = true;
            }

            public void onStopTrackingTouch(SeekBar seekBar)
            {
                playerSeekTo((int) (seekBar.getProgress() * 0.01 * mDuration));
                SEEKING = false;
                Log.d(TAG, "end  seek");
            }
        });

        mSeekBar.setOnClickListener(new SeekBar.OnClickListener()
        {
            public void onClick(View v)
            {
                playerSeekTo((int) (mSeekBar.getProgress() * 0.01 * mDuration));
                SEEKING = false;
                seektimeTextView.setVisibility(View.INVISIBLE);
                Log.d(TAG, "seekbar clicked.");
                dmrPreState = dmrCurrentState;
                dmrCurrentState = Constant.DMR_STATE_TRANSITIONING;
            }
        });

        backToList.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View v)
            {
                Log.d(TAG, "back to Media List.");
                // stopNotifyFlag = true;
                closeMainActivity(false);
            }
        });

        playPrevious.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View v)
            {
                if (!playThreadIsRunning)
                {
                    playPreviousItem();
                }
            }
        });

        playNext.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View v)
            {
                if (!playThreadIsRunning)
                {
                    playNextItem();
                }
            }
        });

        playModeIB.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View v)
            {
                switch (mPlayMode)
                {
                    case NORMAL:
                        setPlaymodeRepeatOne(true);
                        break;
                    case REPEAT_ONE:
                        setPlaymodeRepeatAll(true);
                        break;
                    case REPEAT_ALL:
                        setPlaymodeNormal(true);
                        break;
                }
            }
        });

        shuffleMode.setOnClickListener(new ImageButton.OnClickListener()
        {
            public void onClick(View arg0)
            {
                if (isShuffle)
                {
                    setShuffleModeOff(true);
                }
                else
                {
                    setShuffleModeOn(true);
                }
            }
        });
    }

    /**
     * restore the configuration
     */
    /**
     * 读取保存的配置文件
     */
    private void restoreSettings()
    {
        int pi = Settings.getParaInt(Settings.MUSIC_PLAYMODE);
        if (Settings.playmode_repeat_one == pi)
        {
            setPlaymodeRepeatOne(false);
        }
        else if (Settings.playmode_repeat_all == pi)
        {
            setPlaymodeRepeatAll(false);
        }

        pi = Settings.getParaInt(Settings.MUSIC_SHUFFLEMODE);
        if (Settings.shuffle_on == pi)
        {
            setShuffleModeOn(false);
        }
    }

    /**
     * set the PlayMode to normal
     *
     * @param toSave if true, saved in configuration
     */
    /**
     * 把音乐的播放模式设为normal
     *
     * @param toSave 如果为真，则保存到配置文件中
     */
    private void setPlaymodeNormal(boolean toSave)
    {
        mPlayMode = PlayMode.NORMAL;
        miniPlayMode.setVisibility(View.GONE);
        if (toSave)
            Settings.putParaInt(Settings.MUSIC_PLAYMODE, Settings.playmode_normal);
    }

    /**
     * set the PlayMode to repeat one
     *
     * @param toSave if true, saved in configuration
     */
    /**
     * 把音乐的播放模式设为单曲循环
     *
     * @param toSave 如果为真，则保存到配置文件中
     */
    private void setPlaymodeRepeatOne(boolean toSave)
    {
        mPlayMode = PlayMode.REPEAT_ONE;
        miniPlayMode.setBackgroundResource(R.drawable.repeat_one_status);
        miniPlayMode.setVisibility(View.VISIBLE);
        if (toSave)
            Settings.putParaInt(Settings.MUSIC_PLAYMODE, Settings.playmode_repeat_one);
    }

    /**
     * set the PlayMode to repeat all
     *
     * @param toSave if true, saved in configuration
     */
    /**
     * 把音乐的播放模式设为所有循环
     *
     * @param toSave 如果为真，则保存到配置文件中
     */
    private void setPlaymodeRepeatAll(boolean toSave)
    {
        mPlayMode = PlayMode.REPEAT_ALL;
        miniPlayMode.setBackgroundResource(R.drawable.repeat_all_status);
        miniPlayMode.setVisibility(View.VISIBLE);
        if (toSave)
            Settings.putParaInt(Settings.MUSIC_PLAYMODE, Settings.playmode_repeat_all);
    }

    /**
     * set the PlayMode to shuffle
     *
     * @param toSave if true, saved in configuration
     */
    /**
     * 把音乐的播放模式设为随机播放
     *
     * @param toSave 如果为真，则保存到配置文件中
     */
    private void setShuffleModeOn(boolean toSave)
    {
        List<String> playlist_shuffle = playlist;
        PlayList.getinstance().setlist(playlist_shuffle, PlayList.getinstance().getPosition());
        miniShuffleMode.setVisibility(View.VISIBLE);
        isShuffle = true;
        if (toSave)
            Settings.putParaInt(Settings.MUSIC_SHUFFLEMODE, Settings.shuffle_on);
    }

    /**
     * Turn off the shuffle PlayMode
     *
     * @param toSave if true, saved in configuration
     */
    /**
     * 取消随机播放模式
     *
     * @param toSave 如果为真，则保存到配置文件中
     */
    private void setShuffleModeOff(boolean toSave)
    {
        PlayList.getinstance().setlist(playlist, PlayList.getinstance().getPosition());
        miniShuffleMode.setVisibility(View.INVISIBLE);
        isShuffle = false;
        if (toSave)
            Settings.putParaInt(Settings.MUSIC_SHUFFLEMODE, Settings.shuffle_off);
    }

    private void getMetadataByHiPlayer()
    {
        albumartByHiPlayer = null;
        if(isDtcpType(mUrl))
        {
            Log.d(TAG, "in getMetadataByHiPlayer:dtcp return");
            return;
        }
        String playerUrl = byteRangeURL(mUrl);
        Log.d(TAG, "in getMetadataByHiPlayer:" + playerUrl);
        MediaMetadataRetriever mmr = new MediaMetadataRetriever();
        try {
            mmr.setDataSource(playerUrl, new HashMap<String, String>());
            titleByHiPlayer = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_TITLE);
            Log.d(TAG, "titleByHiPlayer:" + titleByHiPlayer);
            artistByHiPlayer = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ARTIST);
            Log.d(TAG, "artistByHiPlayer:" + artistByHiPlayer);
            albumByHiPlayer = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_ALBUM);
            Log.d(TAG, "albumByHiPlayer:" + albumByHiPlayer);
            genreByHiPlayer = mmr.extractMetadata(MediaMetadataRetriever.METADATA_KEY_GENRE);
            Log.d(TAG, "genreByHiPlayer:" + genreByHiPlayer);
            byte[] image = mmr.getEmbeddedPicture();
            if (image != null) {
                albumartByHiPlayer = BitmapFactory.decodeByteArray(image, 0, image.length);
            }
            Log.d(TAG, "albumartByHiPlayer:" + albumartByHiPlayer);
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            Log.e(TAG, "getMetadataByHiPlayer:Runtime error");
            e.printStackTrace();
        }
    }

    /**
     * Update the music information on the interface
     */
    /**
     * 更新界面上的音乐详细信息
     */
    private void updateMusicInfo()
    {
        Log.d(TAG, "updateMusicInfo");

        if (focusPlayingItem() < 0)
            return;

        fileName = getFileInfo(FileInfo.TITLE);
        strAlbum = getFileInfo(FileInfo.ALBUM);
        strArtist = getFileInfo(FileInfo.ARTIST);
        strGenre = getFileInfo(FileInfo.GENRE);
        strSize = getFileInfo(FileInfo.SIZE);
        getMetadataByHiPlayer();
        String albumImageUrl = getFileInfo(FileInfo.ALBUM_IMAGE_URL);
        if (albumImageUrl != null && albumImageUrl.length() != 0)
        {
            new GetAlbumImageThread(albumImageUrl).start();
        }
        else if (albumartByHiPlayer != null)
        {
            mHandler.sendEmptyMessage(UPDATE_ALBUMIMAGE);
        }
        else
        {
            mHandler.sendEmptyMessage(UPDATE_ALBUMIMAGE);
            Log.d(TAG,"albumImageUrl = null");
        }

        // DMR模式下，更新列表
        if (Controller.DMR == mController)
        {
            listData.clear();
            lastSelection = -1;
            if (null == fileName)
            {
                String title = null;
                if (mPlayAction != null)
                {
                    title = mPlayAction.getFileInfo().getTitle();
                }
                else if (mSetURLAction != null)
                {
                    title = mSetURLAction.getFileInfo().getTitle();
                }
                else if(mSeekAction != null)
                {
                    title = mSeekAction.getFileInfo().getTitle();
                }
                if (title == null)
                {
                    fileName = getResources().getString(R.string.unknown);
                }
                else
                {
                    fileName = title;
                }
            }
            if (null != fileName)
            {
                HashMap<String, Object> map = new HashMap<String, Object>();
                map.put("name",
                        (fileName.length() != 0) ? fileName : getResources()
                                .getString(R.string.unknown));
                listData.add(map);
                String[] itemType = { "name", "selection" };
                int[] itemPos = { R.id.music_name, R.id.music_selection };
                mSimpleAdapter = new SimpleAdapter(mContext, listData, R.layout.music_listitem,
                        itemType, itemPos);
                playList.setAdapter(mSimpleAdapter);
                listSum = 1;
            }
            else
            {
                Log.e(TAG, "filename = null,so return");
                return;
            }
        }
        Log.d(TAG, "filename=" + fileName);

        if (0 != fileName.length() && !fileName.equalsIgnoreCase("unknown"))
            musicPlayName.setText(fileName);
        else if (null != titleByHiPlayer)
            musicPlayName.setText(titleByHiPlayer);
        else
            musicPlayName.setText(this.getResources().getString(R.string.filename) + ": "
                    + getResources().getString(R.string.unknown));

        if (0 != strAlbum.length() && !strAlbum.equalsIgnoreCase("unknown"))
            musicAlbum.setText("　" + strAlbum);
        else if (null != albumByHiPlayer)
            musicAlbum.setText("　" + albumByHiPlayer);
        else
            musicAlbum.setText("　" + getResources().getString(R.string.unknown));

        if (0 != strArtist.length() && !strArtist.equalsIgnoreCase("unknown"))
            musicArtist.setText("　" + strArtist);
        else if (null != artistByHiPlayer)
            musicArtist.setText("　" + artistByHiPlayer);
        else
            musicArtist.setText("　" + getResources().getString(R.string.unknown));

        if (0 != strGenre.length() && !strGenre.equalsIgnoreCase("unknown"))
            musicStyle.setText("　" + strGenre);
        else if (null != genreByHiPlayer)
            musicStyle.setText("　" + genreByHiPlayer);
        else
            musicStyle.setText("　" + getResources().getString(R.string.unknown));
    }

    /**
     * Listener for clicking the play list
     */
    /**
     * 播放列表的监听
     */
    private OnItemClickListener listClickListener = new OnItemClickListener()
    {
        public void onItemClick(AdapterView<?> arg0, View arg1, int arg2, long arg3)
        {
            if (!playThreadIsRunning)
            {
                if (isShuffle)
                {
                    PlayList.getinstance().setlist(playlist, PlayList.getinstance().getPosition());
                }
                PlayList.getinstance().setPosition(Long.valueOf(arg3).intValue());
                musicPlay();
                mPlayPauseButton.setBackgroundResource(R.drawable.pause_button);
                miniPlayStatus.setBackgroundResource(R.drawable.music_play_status);
            }
        }
    };

    /**
     * Interface updates, focus on playing item
     *
     * @return int the index for playing item
     */
    /**
     * 界面更新，聚焦播放中的歌曲
     *
     * @return 播放歌曲的index
     */
    private int focusPlayingItem()
    {
        int idx = getPosition();
        if (idx < 0)
            return idx;

        // update selection for play list
        if (!dms_files.isEmpty())
            selectPlayingItem(idx);
        else
            selectPlayingItem(0);
        return 0;
    }

    /**
     * get the index of playing item
     *
     * @return
     */
    /**
     * 获取播放曲目的index
     *
     * @return
     */
    private int getPosition()
    {
        int idx = PlayList.getinstance().getPosition();
        if (isShuffle && mController == Controller.DMP)
        {
            idx = searchFromNameList();
        }

        if (idx < 0)
        {
            Log.e(TAG, "can't get the right index:" + idx);
            idx = -1;
        }
        return idx;
    }

    /**
     * Search in songs by url
     *
     * @return
     */
    /**
     * 用url搜索歌曲
     *
     * @return
     */
    private int searchFromNameList()
    {
        int index = 0;
        String cur_url = PlayList.getinstance().getcur();
        for (DMSFile dmsf_tmp : dms_files)
        {
            if (dmsf_tmp.getUrl() == null)// tianjia
                return -1;
            if (dmsf_tmp.getUrl().equals(cur_url))
            {
                return index;
            }
            index++;
        }
        return -1;
    }

    /*
     * Select the playing item
     */
    /*
     * 选中正在播放的歌曲
     */
    private void selectPlayingItem(int index)
    {
        if ((listData.isEmpty()) || (index >= listData.size()))
        {
            return;
        }

        HashMap<String, Object> map;
        if ((lastSelection >= 0) && (lastSelection < listData.size()))
        {
            // Log.d(TAG, "selectPlayingItem lastSelection"+lastSelection);
            map = listData.get(lastSelection);
            map.remove("selection");
            map.put("selection", R.drawable.list_noselect);
            listData.remove(lastSelection);
            listData.add(lastSelection, map);
        }

        Log.d(TAG, "selectPlayingItem index" + index);
        map = listData.get(index);
        map.remove("selection");
        map.put("selection", R.drawable.list_select);
        listData.remove(index);
        listData.add(index, map);

        mSimpleAdapter.notifyDataSetChanged();
        int cur = index + 1;
        listCount.setText(cur + "/" + listSum);
        lastSelection = index;
        if (playList.getCount() > index)
        {
            playList.setSelection(index);
            playList.setPlayItem(index);
        }
    }

    @Override
    public boolean isInited()
    {
        return mIsInited;
    }

    public void setBaseAction(BaseAction actionClass)
    {
        if (actionClass == null)
        {
            Log.e(TAG, "no SerializableExtra with name action");
            return;
        }
        if (mUpdateCurrentPositionTimer != null)
        {
            mUpdateCurrentPositionTimer.cancel();
            mUpdateCurrentPositionTimer = null;
        }

        isStarted = false;
        if (null != mediaPlayer)
        {
            mediaPlayer.stop();
            mediaPlayerStatus = MediaPlayerUtil.Status.Stopped;
            isPrepared = false;
        }
        if ((mController == Controller.DMR) && (Constant.DMR_STATE_STOPPED != dmrCurrentState))
        {
            dmrPreState = dmrCurrentState;
            dmrCurrentState = Constant.DMR_STATE_STOPPED;
            stopNotify();
        }
        if (fetchPlayListThread != null && fetchPlayListThread.isAlive())
        {
            fetchPlayListThread.interruptThread();
            fetchPlayListThread.registerEventCallback(null);
            fetchPlayListThread.interrupt();
        }
        fetchPlayListThread = null;
        playlist.clear();
        Log.d(TAG, "remove the last seek buff");
        seekDelayFlag = false; //remove the last seek buff
        Log.d(TAG, "setBaseAction = ");
        if (actionClass instanceof SetURLAction)
        {
            mSetURLAction = (SetURLAction) actionClass;
            mPlayAction = null;
            mSeekAction = null;
            mController = mSetURLAction.getController();
            Log.d(TAG, "dmrCurrentState = Constant.DMR_STATE_STOPPED");
            dmrCurrentState = Constant.DMR_STATE_STOPPED;
        }
        else if (actionClass instanceof PlayAction)
        {
            mPlayAction = (PlayAction) actionClass;
            mSetURLAction = null;
            mSeekAction = null;
            mController = mPlayAction.getController();
            Log.d(TAG, "dmrCurrentState = Constant.DMR_STATE_PLAYING");
            dmrCurrentState = Constant.DMR_STATE_PLAYING;
        }
        else if(actionClass instanceof SeekAction)
        {
            mSeekAction = (SeekAction)actionClass;
            mSetURLAction = null;
            mPlayAction = null;
            mController = mSeekAction.getController();
            Log.d(TAG, "dmrCurrentState = Constant.DMR_STATE_STOPPED");
            seekModeHandler = mSeekAction.getMode();
            dataHandler = mSeekAction.getData();
            seekDelayFlag = true;
            dmrCurrentState = Constant.DMR_STATE_STOPPED;
        }
        Log.d(TAG, "current controller: " + mController);
        if (mController == Controller.DMR)
        {
            if (ServiceManager.checkService("dmr") == null)
            {
                Toast.makeText(mContext, "dmr binder is not in ServiceManager", Toast.LENGTH_LONG).show();
                closeMainActivity(false);
            }
            else
            {
                dmrServer = IDMRServer.Stub.asInterface(ServiceManager.getService("dmr"));
            }
            if (mPlayAction != null)
            {
                mUrl = mPlayAction.getUrl();
            }
            else if(mSetURLAction != null)
            {
                mUrl = mSetURLAction.getUrl();
                fileAllStringTime = mSetURLAction.getFileInfo().getDuration();
            }
            else
            {
               mUrl = mSeekAction.getUrl();
            }
            playlist.add(mUrl);
            PlayList.getinstance().setlist(playlist, 0);
            PlayListCreated = true;

            // The default set is repeat one in DMR mode.
            // DMR模式下默认为单曲循环
            mPlayMode = PlayMode.NORMAL;
        }
        else if ((mController == Controller.DMP) && (null != mPlayAction))
        {
            mDMSFile = (DMSFile) mPlayAction.getFile();
            if (mDMSFile == null)
                mUrl = mPlayAction.getUrl();
            else
                mUrl = mDMSFile.getUrl();
            playlist.add(mUrl);
            PlayList.getinstance().setlist(playlist, 0);
        }
        else
        {
            Log.e(TAG,"error : the control is local ");
            return;
        }
        Log.d(TAG, "mUrl=" + mUrl);
        if (mUrl.contains(".mp3"))
        {
            Log.d(TAG, "bStageFrightUsedFlag=" + bStageFrightUsedFlag);
            bStageFrightUsedFlag = true;
        }
        else
        {
            bStageFrightUsedFlag = false;
        }
        if (mUrl.contains("range=no"))
        {
            Log.d(TAG, "bHasRangNoFlag=" + bHasRangNoFlag);
            bHasRangNoFlag = true;
        }
        else
        {
            bHasRangNoFlag = false;
        }
        this.initialView();
        if (null != mediaPlayerHandler)
        {
            Message msg = mediaPlayerHandler.obtainMessage(0, Action.InitPlayer);
            mediaPlayerHandler.sendMessage(msg);
        }
        mediaPlayerStatus = MediaPlayerUtil.Status.Idle;
    }

    private void seekTo(SeekAction.SeekMode mode, String data)
    {
        Log.d(TAG, "seek mode:" + mode + ",data:" + data);
        if (!isPrepared)
        {
            Log.e(TAG, "can't seek before prepare finish");
            return;
        }
        try
        {
            //  此处相对时间绝对时间反的才能正常使用
            if (mode == SeekAction.SeekMode.DLNA_SEEK_MODE_ABS_TIME)
            {
                int negative = 1;
                if (data.startsWith("-"))
                {
                    negative = -1;
                }
                String[] timeStr = data.split(":|\\.");
                int msec = Integer.parseInt(timeStr[0]) * 60 * 60 * 1000
                        + Integer.parseInt(timeStr[1]) * negative * 60 * 1000
                        + Integer.parseInt(timeStr[2]) * negative * 1000;
                if (timeStr.length == 4)
                {
                    msec += Integer.parseInt(timeStr[3]) * negative;
                }
                int nowTime = mediaPlayer.getCurrentPosition();
                playerSeekTo(nowTime + msec);
            }
            else if (mode == SeekAction.SeekMode.DLNA_SEEK_MODE_REL_TIME)
            {
                String[] timeStr = data.split(":|\\.");
                int msec = Integer.parseInt(timeStr[0]) * 60 * 60 * 1000
                        + Integer.parseInt(timeStr[1]) * 60 * 1000 + Integer.parseInt(timeStr[2])
                        * 1000;
                if (timeStr.length == 4)
                {
                    msec += Integer.parseInt(timeStr[3]);
                }
                playerSeekTo(msec);
            }
            else if (mode == SeekAction.SeekMode.DLNA_SEEK_MODE_ABS_COUNT)
            {
                long pos = Long.parseLong(data);
                seekToPosition(pos);
            }
            else if (mode == SeekAction.SeekMode.DLNA_SEEK_MODE_REL_COUNT)
            {
                // 还未找到按相对位置seek
            }
            else
            {
                Log.e(TAG, "seek mode is not found. mode=" + mode);
            }
        }
        catch (NumberFormatException e)
        {
            Log.e(TAG, "error in parseInt, seek to the begin", e);
            playerSeekTo(0);
            return;
        }
    }

    private void seekToPosition(long pos)
    {
        Log.d(TAG, "seekToPosition(" + pos + ")");
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        int low = (int) (pos & 0xFFFFFFFF);
        int high = (int) (pos >> 32);
        request.writeInterfaceToken("android.media.IMediaPlayer");
        request.writeInt(HiMediaPlayerInvoke.CMD_SET_SEEK_POS);
        request.writeInt(high);
        request.writeInt(low);
        mediaPlayer.invoke(request, reply);
        request.recycle();
        reply.recycle();
    }

    private void setVolume(int num)
    {
        AudioUtil.setVolume(audioManager, num);
    }

    private enum FileInfo
    {
        ARTIST,
        ALBUM,
        GENRE,
        TITLE,
        SIZE,
        ALBUM_IMAGE_URL,
    }

    /**
     * Get the information for audio
     *
     * @param fileInfo Info type
     * @param mediaPlayer MediaPlayer object
     * @return
     */
    /**
     * 获取文件的某个信息
     *
     * @param fileInfo 获取信息的类型
     * @param mediaPlayer MediaPlayer对象
     * @return
     */
    private String getFileInfo(FileInfo fileInfo)
    {
        String info = null;
        if (mController == Controller.DMR)
        {
            if (mSetURLAction != null)
            {
                if (mSetURLAction.getFileInfo() != null)
                {
                    switch (fileInfo)
                    {
                        case ARTIST:
                            info = mSetURLAction.getFileInfo().getArtist();
                            break;
                        case ALBUM:
                            info = mSetURLAction.getFileInfo().getAlbum();
                            break;
                        case GENRE:
                            info = mSetURLAction.getFileInfo().getGenre();
                            break;
                        case TITLE:
                            info = mSetURLAction.getFileInfo().getTitle();
                            break;
                        case SIZE:
                            new getURLConnectionLengthThread().start();
                            info = "";
                            break;
                        case ALBUM_IMAGE_URL:
                            info = mSetURLAction.getFileInfo().getAlbumURI();
                            break;
                    }
                }
            }
            if (mPlayAction != null)
            {
                if (mPlayAction.getFileInfo() != null)
                {
                    switch (fileInfo)
                    {
                        case ARTIST:
                            info = mPlayAction.getFileInfo().getArtist();
                            break;
                        case ALBUM:
                            info = mPlayAction.getFileInfo().getAlbum();
                            break;
                        case GENRE:
                            info = mPlayAction.getFileInfo().getGenre();
                            break;
                        case TITLE:
                            info = mPlayAction.getFileInfo().getTitle();
                            break;
                        case SIZE:
                            new getURLConnectionLengthThread().start();
                            info = "";
                            break;
                        case ALBUM_IMAGE_URL:
                            info = mPlayAction.getFileInfo().getAlbumURI();
                            break;
                    }
                }
            }
            if (mSeekAction != null)
            {
                if (mSeekAction.getFileInfo() != null)
                {
                    switch (fileInfo)
                    {
                        case ARTIST:
                            info = mSeekAction.getFileInfo().getArtist();
                            break;
                        case ALBUM:
                            info = mSeekAction.getFileInfo().getAlbum();
                            break;
                        case GENRE:
                            info = mSeekAction.getFileInfo().getGenre();
                            break;
                        case TITLE:
                            info = mSeekAction.getFileInfo().getTitle();
                            break;
                        case SIZE:
                            new getURLConnectionLengthThread().start();
                            info = "";
                            break;
                        case ALBUM_IMAGE_URL:
                            info = mSeekAction.getFileInfo().getAlbumURI();
                            break;
                    }
                }
            }
        }
        else if (mController == Controller.DMP)
        {
            int index = getPosition();
            if (index < 0)
            {
                info = null;
            }
            else if (dms_files != null && !dms_files.isEmpty())
            {
                try
                {
                    switch (fileInfo)
                    {
                        case ARTIST:
                            info = dms_files.get(index).getArtist();
                            break;
                        case ALBUM:
                            info = dms_files.get(index).getAlbum();
                            break;
                        case GENRE:
                            info = dms_files.get(index).getGenre();
                            break;
                        case TITLE:
                            info = dms_files.get(index).getName();
                            break;
                        case SIZE:
                            long size = dms_files.get(index).getFileSize();
                            if (size > 0)
                            {
                                DecimalFormat numFormat = new DecimalFormat("0.00");
                                info = numFormat.format(size * 1.0 / 1024 / 1024) + "M";
                                mHandler.sendEmptyMessageDelayed(UPDATE_FILESIZE, 100);
                            }
                            else
                            {
                                new getURLConnectionLengthThread().start();
                                info = "";
                            }
                            break;
                        case ALBUM_IMAGE_URL:
                            info = dms_files.get(index).getAlbumArtURI();
                            break;
                    }
                }
                catch (Exception e)
                {
                    Log.e(TAG, "getFileInfo() ", e);
                    return getResources().getString(R.string.unknown);
                }
            }
        }
        if (null == info)
        {
            //return getResources().getString(R.string.unknown);
            return "";
        }
        else
            return info;
    }

    /**
     * A thread to get the file size
     */
    /**
     * 获取文件大小的线程
     */
    class getURLConnectionLengthThread extends Thread
    {
        public void run()
        {
            String size = getURLConnectionLength();
            strSize = size;
            mHandler.sendEmptyMessage(UPDATE_FILESIZE);
        }
    }

    private String getURLConnectionLength()
    {
        String len = "";
        if(this.mContentLength == 0)
        {
            try
            {
                URL audioUrl = new URL(mUrl);

                HttpURLConnection conn;
                try
                {
                    conn = (HttpURLConnection) audioUrl.openConnection();
                    conn.setReadTimeout(1000);
                    int size = conn.getContentLength();
                    if (size < 0)
                    {
                        size = 0;
                    }
                    conn.disconnect();
                    DecimalFormat numFormat = new DecimalFormat("0.00");
                    len = numFormat.format(size * 1.0 / 1024 / 1024) + "M";
                }
                catch (IOException e)
                {
                    Log.e(TAG, "updateMusicInfo IOException");
                    e.printStackTrace();
                }
            }
            catch (MalformedURLException e)
            {
                Log.e(TAG, "updateMusicInfo MalformedURLException");
                e.printStackTrace();
            }
            return len;
        }
        else
        {
            long size = this.mContentLength;
            DecimalFormat numFormat = new DecimalFormat("0.00");
            len = numFormat.format(size * 1.0 / 1024 / 1024) + "M";
            return len;
        }

    }

    class GetAlbumImageThread extends Thread
    {
        private String albumImageUrl;

        public GetAlbumImageThread(String albumImageUrl)
        {
            super();
            this.albumImageUrl = albumImageUrl;
        }

        public void run()
        {
            albumImage = getAlbumImage(albumImageUrl);
            mHandler.sendEmptyMessage(UPDATE_ALBUMIMAGE);
        }
    }

    public Bitmap getAlbumImage(String url)
    {
        Bitmap bitmap = null;
        try
        {
            URL urlObj = new URL(url);
            HttpURLConnection conn = (HttpURLConnection) urlObj.openConnection();
            InputStream inputStream = conn.getInputStream();
            try
            {
                bitmap = BitmapFactory.decodeStream(inputStream);
            }
            catch (OutOfMemoryError e1)
            {
                Log.e(TAG, "getAlbumImage", e1);
            }
            inputStream.close();
            conn.disconnect();
        }
        catch (Exception e)
        {
            Log.e(TAG, "getAlbumImage", e);
        }
        return bitmap;
    }

    class DMRPlayerController extends IDMRPlayerController.Stub
    {
        public int dmcPlayAction(String mURL)
        {
            Log.d(TAG, "playAction");
            if (null != mIPlayerMainWnd)
            {
                mIPlayerMainWnd.cancelDelayCloseActivity();//slove play - stop - play,the activity is going to destory,play failed
            }

            if (dmrCurrentState == Constant.DMR_STATE_PAUSED_PLAYBACK)
                playerResume();
            else if (dmrCurrentState == Constant.DMR_STATE_PLAYING)
                return 0;
            else if (dmrCurrentState == Constant.DMR_STATE_STOPPED)
            {
                if (true == isPrepared)
                {
                    playerStart();
                }
                else
                {
                    Log.d(TAG, "is stop,need to init");
                    mUrl = mURL;
                    Message msg = mediaPlayerHandler
                            .obtainMessage(0, Action.InitPlayer);
                    mediaPlayerHandler.sendMessage(msg);
                }
            }
            dmrPreState = dmrCurrentState;
            dmrCurrentState = Constant.DMR_STATE_PLAYING;
            return 0;
        }

        public int dmcPauseAction()
        {
            Log.d(TAG, "pauseAction");
            playerPause();
            return 0;
        }

        public int dmcStopAction()
        {
             Log.d(TAG, "stopAction");
             if (Constant.DMR_STATE_STOPPED == dmrCurrentState)
             {
                 Log.e(TAG, " alread in stop so not stop");
                 stopNotify();
                 closeMainActivity(true);
                 return 0;
             }

             dmrPreState = dmrCurrentState;
             dmrCurrentState = Constant.DMR_STATE_STOPPED;
             stopNotify();
             playerStop();
             return 0;
        }

        public int dmcSeekAction(int mode, int type , String data , String mURL)
        {
            Log.d(TAG, "seek action");
            SeekAction.SeekMode seekMode = SeekAction.SeekMode.getSeekModeByValue(mode);

            if (dmrCurrentState == Constant.DMR_STATE_STOPPED)
            {
                seekTo(seekMode, data);
            }
            else if (dmrCurrentState == Constant.DMR_STATE_PLAYING)
            {
                seekTo(seekMode, data);
            }
            else if (dmrCurrentState == Constant.DMR_STATE_TRANSITIONING)
            {
                seekModeHandler = seekMode;
                dataHandler = data;
                seekDelayFlag = true;
            }
            else if (dmrCurrentState == Constant.DMR_STATE_PAUSED_PLAYBACK)
            {
                seekTo(seekMode, data);
            }

            if (dmrCurrentState != Constant.DMR_STATE_TRANSITIONING)
            {
                Log.d(TAG, "dmrCurrentState status " + dmrCurrentState);
                dmrPreState = dmrCurrentState;
            }
            else
            {
                Log.d(TAG, "Constant.DMR_STATE_TRANSITIONING");
            }
            dmrCurrentState = Constant.DMR_STATE_TRANSITIONING;
            return 0;
        }

        public int getDuration()
        {
            // int duration = 0;
            // if (mediaPlayer != null) {
            // duration = mediaPlayer.getDuration();
            // }
            return mDuration;
        }

        public int getCurrentPosition()
        {
            if (mediaPlayer != null && isPrepared)
            {
                return mediaPlayer.getCurrentPosition();
            }
            return 0;
        }

        public int getVolume()
        {
            return AudioUtil.getVolume(audioManager);
        }

        public int dmcSetVol(int num)
        {
            if (audioManager != null)
            {
                AudioUtil.setVolume(audioManager, num);
            }
            return 0;
        }

        public int dmcSetMute(boolean isMute)
        {
            if (audioManager != null)
            {
                AudioUtil.setMute(audioManager, isMute);
            }
            return 0;
        }
    }

    class NetworkTimerTask extends TimerTask
    {
        private int extra;

        public NetworkTimerTask(int extra)
        {
            super();
            this.extra = extra;
        }

        public void run()
        {
            Log.d(TAG, "network down, ready to finish");
            Message msg = mUIHandler.obtainMessage(extra, Action.SHOW_NETWORK_DOWN_TOAST);
            mUIHandler.sendMessage(msg);
            closeMainActivity(false);
        }
    }

    class UpdatePlayListEventCallback implements FetchPlayListThread.EventCallback
    {

        private ArrayList<HashMap<String, Object>> alt = new ArrayList<HashMap<String, Object>>();

        public void deviceNotFountNotify()
        {
            Log.e(TAG, "deviceFound false");
            mHandler.sendEmptyMessage(DEVICE_NOT_FOUND);
            dms_files.clear();
            playlist.clear();
            dms_files.add(mDMSFile);
            playlist.add(mDMSFile.getUrl());
        }

        public void fileAddedNotify(DMSFile file)
        {
            HashMap<String, Object> map = new HashMap<String, Object>();
            map.put("name", file.getName());
            if (file.getId().equals(mDMSFile.getId()))
            {
                map.put("selection", R.drawable.list_select);
            }
            else
            {
                map.put("selection", R.drawable.list_noselect);
            }
            alt.add(map);
        }

        public void currentIndexNotify(int index)
        {
            PlayList.getinstance().setlist(playlist, index);
            Message msg = mHandler.obtainMessage();
            msg.what = UPDATE_PLAYLIST;
            msg.obj = alt;
            msg.arg1 = index;
            mHandler.sendMessage(msg);
        }

        public void finishNotify()
        {
            int start_pos = 0;
            // 更新列表时判断，当前位置是否改变
            if (playlist.size() > start_pos
                    && !playlist.get(start_pos).equals(PlayList.getinstance().getcur()))
            {
                start_pos = PlayList.getinstance().getPosition();
            }
            PlayList.getinstance().setlist(playlist, start_pos);
            listSum = playlist.size();
            Message msg = mHandler.obtainMessage();
            msg.what = UPDATE_PLAYLIST;
            msg.obj = alt;
            msg.arg1 = start_pos;
            mHandler.sendMessage(msg);
        }
    }

    enum PrepareStatus
    {
        NotPrepare,
        Preparing,
        PrepareFail,
        PrepareSucces
    }

    enum Action
    {
        TimeUpdate,
        HideTitleBar,
        PausePlayer,
        ResumePlayer,
        BufferUpdate,
        SHOW_NETWORK_DOWN_TOAST,
        ShowTitleBar,
        ShowTitleBarNotHide,
        StartPlayer,
        InitPlayer,
        StopPlayer,
        GetDuration,
        SeekToPlayer,
        SHOW_BINDSERVICE_FAIL_TOAST,
    }

    private void play(String url)
    {
        isStarted = false;
        mUrl = url;
        Log.d(TAG, "play mUrl= " + mUrl);
        playList.setSelection(PlayList.getinstance().getPosition());
        playList.setPlayItem(PlayList.getinstance().getPosition());
        mediaPlayerHandler.removeCallbacksAndMessages(null);
        Message msg = mediaPlayerHandler.obtainMessage(0, Action.InitPlayer);
        mediaPlayerHandler.sendMessageDelayed(msg, 300);
    }

    private void playerPause()
    {
        Log.d(TAG, "playerPause");
        if (isPrepared && isStarted)
        {
            //  for fixed "onError what=-2147483648"
            try
            {
                Thread.sleep(600);
            }
            catch (InterruptedException e)
            {
                Log.e(TAG, "sleep", e);
            }
            Message msg = mediaPlayerHandler.obtainMessage(0, Action.PausePlayer);
            mediaPlayerHandler.sendMessage(msg);
        }
        else
        {
            Log.e(TAG, "can't pause before prepare finish");
        }
        if (mController == Controller.DMR)
        {
            dmrPreState = dmrCurrentState;
            dmrCurrentState = Constant.DMR_STATE_PAUSED_PLAYBACK;
        }
    }

    private void playerResume()
    {
        Log.d(TAG, "playerResume");
        mediaPlayerHandler.sendMessage(mediaPlayerHandler.obtainMessage(0, Action.ResumePlayer));
        if (mController == Controller.DMR)
        {
            dmrPreState = dmrCurrentState;
            dmrCurrentState = Constant.DMR_STATE_PLAYING;
        }
    }

    private void playerStart()
    {
        Log.d(TAG, "playerStart");
        Message startMessage = mediaPlayerHandler.obtainMessage(0, Action.StartPlayer);
        mediaPlayerHandler.sendMessage(startMessage);
    }

    private void playerStop()
    {
        Log.d(TAG, "playerStop");
        isStarted = false;
        //mCurrentTimeTextView.setText("00:00:00/00:00:00");
        //mSeekBar.setProgress(0);
        if (mUpdateCurrentPositionTimer != null)
        {
            mUpdateCurrentPositionTimer.cancel();
            mUpdateCurrentPositionTimer = null;
        }
        Message msg = mediaPlayerHandler.obtainMessage(0, Action.StopPlayer);
        mediaPlayerHandler.sendMessage(msg);
    }

    private void playerSeekTo(int msec)
    {
        Log.d(TAG, "playerSeekTo(" + msec + ")");
        if (isPrepared)
        {
            Message msg = mediaPlayerHandler.obtainMessage(msec, Action.SeekToPlayer);
            mediaPlayerHandler.sendMessage(msg);
        }
        else
        {
            Log.e(TAG, "can't seekTo before prepare finish");
        }
    }

    class MediaPlayerHandler extends Handler
    {

        public MediaPlayerHandler(Looper looper)
        {
            super(looper);
        }

        public void handleMessage(Message msg)
        {
            super.handleMessage(msg);
            Action action = (Action) msg.obj;
            switch (action)
            {
                case TimeUpdate:
                    if (mediaPlayer != null)
                    {
                        try
                        {
                            int pos = mediaPlayer.getCurrentPosition();
                            mUIHandler.sendMessage(mUIHandler.obtainMessage(pos,Action.TimeUpdate));
                        }
                        catch (IllegalStateException e)
                        {
                            Log.e(TAG, "mediaPlayer.getCurrentPosition()", e);
                        }
                    }
                    break;
                case PausePlayer:
                    if (mediaPlayer != null
                            && mediaPlayerStatus.validAction(MediaPlayerUtil.Action.pause))
                    {
                        mediaPlayer.pause();
                        isPaused = true;
                        mediaPlayerStatus = MediaPlayerUtil.Status.Paused;
                        mUIHandler.sendMessage(mUIHandler.obtainMessage(0, Action.PausePlayer));
                        pauseNotify();
                    }
                    else
                    {
                        Log.e(TAG, "pause() mediaPlayer==null or invalid status: "
                                + mediaPlayerStatus);
                    }
                    break;
                case ResumePlayer:
                    if (mediaPlayer != null
                            && mediaPlayerStatus.validAction(MediaPlayerUtil.Action.start))
                    {
                        mediaPlayer.start();
                        isPaused = false;
                        mediaPlayerStatus = MediaPlayerUtil.Status.Started;
                        // update ui
                        mUIHandler.sendMessage(mUIHandler.obtainMessage(0, Action.ResumePlayer));
                        isStarted = true;
                        startNotify();
                    }
                    else
                    {
                        Log.e(TAG, "start() mediaPlayer==null or invalid status: "
                                + mediaPlayerStatus);
                    }
                    break;
                case StartPlayer:
                    if (isPrepared)
                    {
                        if (mediaPlayer != null
                                && mediaPlayerStatus.validAction(MediaPlayerUtil.Action.start))
                        {
                            setHiPlayerTimerProc("before mediaPlayer start");
                            mediaPlayer.start();
                            isPaused = false;
                            mediaPlayerStatus = MediaPlayerUtil.Status.Started;
                            // update ui
                            mUIHandler
                                    .sendMessage(mUIHandler.obtainMessage(0, Action.ResumePlayer));
                            isStarted = true;
                            startNotify();
                        }
                        else
                        {
                            Log.e(TAG, "start() mediaPlayer==null or invalid status: "
                                    + mediaPlayerStatus);
                        }
                    }
                    else
                    {
                        Log.e(TAG, "can't resume before prepare finish");
                    }
                    break;
                case InitPlayer:
                    Log.d(TAG, "InitPlayer");
                    isPrepared = false;
                    isStarted = false;
                    isPaused = false;
                    mDuration = 0;
                    if (mediaPlayer == null)
                    {
                        Log.e(TAG, "mediaPlayer == null can't Init");
                        return;
                    }
                    isResetting = true;
                    setHiPlayerTimerProc("before reset");
                    mediaPlayer.reset();
                    setHiPlayerTimerProc("after reset");
                    isResetting = false;
                    mediaPlayerStatus = MediaPlayerUtil.Status.Idle;
                    String playerUrl = byteRangeURL(mUrl);
                    playerUrl = VideoPlayerSubWnd.getDtcpUrl(playerUrl);
                    try
                    {
                        Log.d(TAG, "setDataSource:" + playerUrl);
                        setHiPlayerTimerProc("playurl:"  + playerUrl);
                        mediaPlayer.setDataSource(playerUrl);
                        byteRangeInvoke();
                        mediaPlayerStatus = MediaPlayerUtil.Status.Initialized;
                    }
                    catch (IllegalArgumentException e)
                    {
                        Log.e(TAG, "IllegalArgument,mediaPlayer.setDataSource(" + playerUrl + ")");
                    }
                    catch (SecurityException e)
                    {
                        Log.e(TAG, "SecurityException, mediaPlayer.setDataSource(" + playerUrl
                                + ")");
                    }
                    catch (IllegalStateException e)
                    {
                        Log.e(TAG, "IllegalState,mediaPlayer.setDataSource(" + playerUrl + ")");
                    }
                    catch (IOException e)
                    {
                        Log.e(TAG, "IOException,mediaPlayer.setDataSource(" + playerUrl + ")");
                    }
                    if (mediaPlayerStatus.validAction(MediaPlayerUtil.Action.prepareAsync))
                    {
                        Log.d(TAG, "before prepare");
                        setHiPlayerTimerProc("before prepare");
                        mediaPlayer.prepareAsync();
                        mediaPlayerStatus = MediaPlayerUtil.Status.Preparing;
                    }
                    else
                    {
                        Log.e(TAG, "can't prepareAsync mediaPlayerStatus: " + mediaPlayerStatus);
                    }
                    break;
                case StopPlayer:
                    if (mediaPlayer != null
                            && mediaPlayerStatus.validAction(MediaPlayerUtil.Action.stop))
                    {
                        mediaPlayer.stop();
                        mediaPlayerStatus = MediaPlayerUtil.Status.Stopped;
                        isPrepared = false;
                        // stopNotify();
                    }
                    else
                    {
                        Log.e(TAG, "stop() mediaPlayer==null or invalid status: "
                                + mediaPlayerStatus);
                    }
                    closeMainActivity(true);
                    break;
                case SeekToPlayer:
                    if (mediaPlayer != null
                            && mediaPlayerStatus.validAction(MediaPlayerUtil.Action.seekTo))
                    {
                        seekLock.lock();
                        try
                        {
                            isSeeking = true;
                            setHiPlayerTimerProc("before seek");
                            mediaPlayer.seekTo(msg.what);
                            long nanoTimeouts = TimeUnit.SECONDS.toNanos(SEEK_TIMEOUT_SECONDS);
                            while (isSeeking && nanoTimeouts > 0)
                            {
                                Log.e(TAG, "wait seekComplete");
                                nanoTimeouts = seekCondition.awaitNanos(nanoTimeouts);
                            }
                            if (isSeeking)
                            {
                                Log.e(TAG, "seek timeout, time: " + SEEK_TIMEOUT_SECONDS);
                                isSeeking = false; //  timout
                            }
                        }
                        catch (InterruptedException e)
                        {
                            Log.e(TAG, "wait seekTo complete interrupted", e);
                        }
                        finally
                        {
                            seekLock.unlock();
                        }
                    }
                    else
                    {
                        Log.e(TAG, "seekTo() mediaPlayer==null or invalid status: "
                                + mediaPlayerStatus);
                    }
                    break;
                case GetDuration:
                    if (null != mediaPlayer)
                    {
                        mDuration = mediaPlayer.getDuration();
                        Log.e(TAG, "getDuration(): " + mDuration);
                        if(mDuration != 0)
                        {
                            fileAllStringTime = timeFromIntToString(mDuration);
                        }
                        else
                        {
                            mDuration = (int)timeFormStringToInt(fileAllStringTime);
                            fileAllStringTime = timeFromIntToString(mDuration);
                        }
                    }
                    break;
            }
        }
    };

    private String byteRangeURL(String mUrl)
    {
        String playerUrl = mUrl;
        String r = "?range=no";
        if (mUrl.contains(r))
        {
            playerUrl = mUrl.substring(0, mUrl.lastIndexOf(r))
                    + mUrl.substring(mUrl.lastIndexOf(r) + r.length());
            // playerUrl = mUrl.substring(0,mUrl.lastIndexOf("?range=no")) +
            // mUrl.substring(mUrl.lastIndexOf("?range=no")+"?range=no".length());
            Log.e(TAG, "contain range=no (" + playerUrl + ")");
        }

        return playerUrl;
    }

    private void byteRangeInvoke()
    {
        String r = "?range=no";

        Log.d(TAG, "call range return,url=" + mUrl);

        //fix : This is not to meet certification requirements, certification need to open
        if ((mUrl.contains(r)) && CommonDef.isSupportCertification())
        {
            Log.e(TAG, "music call Range Invoke mUrl=" + mUrl);
            Parcel requestParcel = Parcel.obtain();
            requestParcel.writeInterfaceToken("android.media.IMediaPlayer");
            requestParcel.writeInt(HiMediaPlayerInvoke.CMD_SET_NOT_SUPPORT_BYTERANGE); // CMD_SET_NOT_SUPPORT_BYTERANGE
                                                                                       // 317
            requestParcel.writeInt(1);
            Parcel replayParcel = Parcel.obtain();
            // mediaPlayer.invoke(requestParcel, replayParcel);
            try
            {
                mediaPlayerInvoke(mediaPlayer, requestParcel, replayParcel);
            }
            catch (IllegalArgumentException e)
            {
                Log.e(TAG, "MediaPlayer.invoke", e);
            }
            catch (NoSuchMethodException e)
            {
                Log.e(TAG, "MediaPlayer.invoke", e);
            }
            catch (IllegalAccessException e)
            {
                Log.e(TAG, "MediaPlayer.invoke", e);
            }
            catch (InvocationTargetException e)
            {
                Log.e(TAG, "MediaPlayer.invoke", e);
            }
            requestParcel.recycle();
            replayParcel.recycle();
            // return replayParcel.readInt();
        }

    }

    private void mediaPlayerInvoke(MediaPlayer mediaPlayer, Parcel request, Parcel reply)
            throws NoSuchMethodException, IllegalArgumentException, IllegalAccessException,
            InvocationTargetException
    {
        Class<MediaPlayer> mediaPlayerClass = MediaPlayer.class;
        Method invokeMethod = mediaPlayerClass.getMethod("invoke", Parcel.class, Parcel.class);
        invokeMethod.invoke(mediaPlayer, request, reply);
    }

    private Handler mUIHandler = new Handler()
    {

        @Override
        public void handleMessage(Message msg)
        {
            super.handleMessage(msg);
            Action action = (Action) msg.obj;
            switch (action)
            {
                case TimeUpdate:
                    int currentPosition = msg.what;
                    if (!SEEKING)
                    {
                        mSeekBar.setProgress(Math.round(currentPosition * 1.0f / mDuration * 100));
                    }
                    String currentTimeString = timeFromIntToString(currentPosition);
                    mCurrentTimeTextView.setText(currentTimeString + "/" + fileAllStringTime);
                    break;
                case PausePlayer:
                    mPlayPauseButton.setBackgroundResource(R.drawable.play_button);
                    miniPlayStatus.setBackgroundResource(R.drawable.music_pause_status);
                    break;
                case ResumePlayer:
                    mPlayPauseButton.setBackgroundResource(R.drawable.pause_button);
                    miniPlayStatus.setBackgroundResource(R.drawable.music_play_status);
                    break;
                case SHOW_NETWORK_DOWN_TOAST:
                    if (msg.what == 1)
                    {
                        Toast.makeText(mContext, R.string.network_connect_failed,
                                Toast.LENGTH_SHORT).show();
                    }
                    else if (msg.what == 2 || msg.what == 0)
                    {
                        Toast.makeText(mContext, R.string.network_timeout, Toast.LENGTH_SHORT)
                                .show();
                    }
                    else if (msg.what == 3)
                    {
                        Toast.makeText(mContext, R.string.network_disconnect, Toast.LENGTH_SHORT)
                                .show();
                    }
                    else if (msg.what == 4)
                    {
                        Toast.makeText(mContext, R.string.network_not_found, Toast.LENGTH_SHORT)
                                .show();
                    }
                    break;
                default:
                    break;
            }
        }
    };

    class OnBufferingUpdateListener implements MediaPlayer.OnBufferingUpdateListener
    {

        @Override
        public void onBufferingUpdate(MediaPlayer mp, int percent)
        {
            Log.d(TAG, "onBufferingUpdate: " + percent);
            Message msg = mUIHandler.obtainMessage(percent, Action.BufferUpdate);
            mUIHandler.sendMessage(msg);
        }

    }

    class OnPreparedListener implements MediaPlayer.OnPreparedListener
    {

        @Override
        public void onPrepared(MediaPlayer mp)
        {
            Log.d(TAG, "onPrepared() dmrCurrentState " + dmrCurrentState);
            setHiPlayerTimerProc("after prepare");
            isPrepared = true;
            mediaPlayerStatus = MediaPlayerUtil.Status.Prepared;
            mediaPlayerHandler.sendMessage(mediaPlayerHandler.obtainMessage(0, Action.GetDuration));
            mHandler.sendEmptyMessage(UPDATE_MUSIC_INFO);
            if (mController == Controller.DMR)
            {
                try
                {
                    dmrServer.registerPlayerController(new DMRPlayerController());
                }
                catch (Exception e)
                {
                    Log.e(TAG, "dmr callback", e);
                }
            }

            if (mUpdateCurrentPositionTimer == null)
            {
                mUpdateCurrentPositionTimer = new Timer();
                mUpdateCurrentPositionTimer.scheduleAtFixedRate(new TimerTask()
                {

                    @Override
                    public void run()
                    {
                        Message msg = mediaPlayerHandler.obtainMessage(0, Action.TimeUpdate);
                        mediaPlayerHandler.sendMessage(msg);
                    }
                }, 0, 1000);
            }

            openNotify();

            if (mController == Controller.DMP)
            {
                playerStart();
            }
            else
            {
                if (dmrCurrentState == Constant.DMR_STATE_PLAYING)
                {
                    playerStart();
                }
                else if (dmrCurrentState == Constant.DMR_STATE_TRANSITIONING
                        && dmrPreState == Constant.DMR_STATE_PLAYING)
                {
                    playerStart();
                }
            }

            if (seekDelayFlag == true && dataHandler != null)
            {
                seekTo(seekModeHandler, dataHandler);
            }
            seekDelayFlag = false;
            dataHandler = null;

            // fileAllStringTime = timeFromIntToString(mDuration);
        }
    }

    class OnErrorListener implements MediaPlayer.OnErrorListener
    {

        @Override
        public boolean onError(MediaPlayer mp, int what, int extra)
        {
            Log.e(TAG, "onError what=" + what + " extra=" + extra);
            if (what == MediaPlayer.MEDIA_ERROR_UNKNOWN && extra == 0)
            {
                Toast.makeText(mContext, R.string.media_error_unknow, Toast.LENGTH_SHORT).show();
            }
            if (isResetting)
            {
                return true;
            }
            else
            {
                closeMainActivity(false);
            }
            return false;
        }
    }

    private void startNotify()
    {
        Log.e(TAG, "in startNotify");
        if (mController != Controller.DMR)
        {
            return;
        }
        if (dmrServer != null)
        {
            try
            {
                dmrServer.getDMRCallback().playNotify();
            }
            catch (RemoteException e)
            {
                Log.e(TAG, "Exception playNotify", e);
            }
        }
    }

    private void stopNotify()
    {
        if (mController != Controller.DMR)
        {
            return;
        }
        if (dmrServer != null)
        {
            try
            {
                dmrServer.getDMRCallback().stopNotify();
            }
            catch (RemoteException e)
            {
                Log.e(TAG, "stopNotify", e);
            }
        }
    }

    class OnSeekCompleteListener implements MediaPlayer.OnSeekCompleteListener
    {

        @Override
        public void onSeekComplete(MediaPlayer mp)
        {
            Log.d(TAG, "onSeekComplete");
            setHiPlayerTimerProc("after seek");
            seekLock.lock();
            try
            {
                isSeeking = false;
                seekCondition.signal();
            }
            finally
            {
                seekLock.unlock();
            }

            Message msg = mediaPlayerHandler.obtainMessage(0, Action.TimeUpdate);
            mediaPlayerHandler.sendMessage(msg);

            Log.d(TAG, "onSeekComplete again ");
            if (seekDelayFlag == true && dataHandler != null)
            {
                seekTo(seekModeHandler, dataHandler);
            }
            seekDelayFlag = false;
            dataHandler = null;

            if (dmrPreState == Constant.DMR_STATE_STOPPED)
            {
                stopNotify();
                dmrCurrentState = Constant.DMR_STATE_STOPPED;
                mediaPlayerStatus = MediaPlayerUtil.Status.Prepared;
            }
            else if (dmrPreState == Constant.DMR_STATE_PLAYING)
            {
                if (bStageFrightUsedFlag == true)
                {
                    msg = mediaPlayerHandler.obtainMessage(0, Action.PausePlayer);
                    mediaPlayerHandler.sendMessage(msg);
                    startNotify();
                    dmrCurrentState = Constant.DMR_STATE_PLAYING;
                    try
                    {
                        Thread.sleep(500);
                    }
                    catch (InterruptedException e)
                    {
                        Log.e(TAG, "sleep", e);
                    }
                    msg = mediaPlayerHandler.obtainMessage(0, Action.ResumePlayer);
                    mediaPlayerHandler.sendMessage(msg);
                }
                else
                {
                    startNotify();
                    dmrCurrentState = Constant.DMR_STATE_PLAYING;
                }
                mediaPlayerStatus = MediaPlayerUtil.Status.Started;
            }
            else if (dmrPreState == Constant.DMR_STATE_PAUSED_PLAYBACK)
            {
                pauseNotify();
                dmrCurrentState = Constant.DMR_STATE_PAUSED_PLAYBACK;
                mediaPlayerStatus = MediaPlayerUtil.Status.Paused;
            }
            dmrPreState = Constant.DMR_STATE_TRANSITIONING;

            //  don't start when onSeekComplete
            // playerResume();
        }

    }

    private void pauseNotify()
    {
        if (mController != Controller.DMR)
        {
            return;
        }
        if (dmrServer != null)
        {
            try
            {
                dmrServer.getDMRCallback().pauseNotify();
            }
            catch (RemoteException e)
            {
                Log.e(TAG, "pauseNotify", e);
            }
        }
    }

    private void openNotify()
    {
        if (mController != Controller.DMR)
        {
            return;
        }
        if (dmrServer != null)
        {
            try
            {
                dmrServer.getDMRCallback().openNotify();
            }
            catch (RemoteException e)
            {
                Log.e(TAG, "pauseNotify", e);
            }
        }
    }

    private void setHiPlayerTimerProc(String action)
    {
       if (mController != Controller.DMR)
       {
           return;
       }
       if (dmrServer != null)
       {
           try
           {
               Log.d(TAG, "VideoPlayerSubWnd setHiPlayerTimerProc: " + action);
               dmrServer.getDMRCallback().setProcValue("PlayerTimer", action,
                                new SimpleDateFormat("HH:mm:ss.SSS").format(new Date()));
           }
           catch (RemoteException e)
           {
               Log.e(TAG, "setHiPlayerTimerProc", e);
           }
       }
    }

    @Override
    public FileType getSubWndType()
    {
        return null;
    }

    public KeyDoResult dispatchKeyEvent(KeyEvent event)
    {
        return KeyDoResult.DO_NOTHING;
    }

    @Override
    public void setMainWnd(IPlayerMainWnd parent)
    {
        mIPlayerMainWnd = parent;
    }

    private void closeMainActivity(boolean isDelay)
    {
        if (null != mIPlayerMainWnd)
        {
            mIPlayerMainWnd.closeActivity(isDelay);
        }
    }

    public void setContentType(String contentType)
    {
        mContentType = contentType;
    }

    public void setContentLength(long length)
    {
        mContentLength = length;
    }

    private boolean isDtcpType(String url)
    {
        if(null != mContentType && mController == Controller.DMR)
        {
            return mContentType.contains(DTCP_MEMI_KEY);
        }
        String type = DMPNative.getInstance().HI_DmpGetHead(url);
        Log.d(TAG, "type HI_DmpGetHead:" + type);
        if (null != type)
        {
            return type.contains("application/x-dtcp1");
        }
        return false;
    }
}
