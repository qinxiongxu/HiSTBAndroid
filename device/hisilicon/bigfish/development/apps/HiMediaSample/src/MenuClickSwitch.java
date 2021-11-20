package com.HiMediaSample;
import android.util.Log;
import com.HiMediaSample.InvokeTestCase;
import java.lang.reflect.Method;
import java.lang.Class;
import android.os.Parcel;
import android.media.MediaPlayer;
import android.content.Context;

public class MenuClickSwitch
{
    InvokeTestCase mInvokeTest = null;
    private String LOG_TAG = "HiMediaPlayerTest";
    private Context mContext = null;
    public MenuClickSwitch(MediaPlayer Player, Context context)
    {
        mInvokeTest = new InvokeTestCase(Player, context);
        mContext = context;
    }

    public void MenuClickPerform(int positon)
    {
        switch (positon)
        {
            case 0:
                mInvokeTest.TestFFPlay();
                break;

            case 1:
                mInvokeTest.TestGetAudioTrackNum();
                break;
            case 2:
                mInvokeTest.StopFastPlay();
                break;
            case 3:
                mInvokeTest.TestRWPlay();
                break;
            case 4:
                mInvokeTest.TestGetProgramNum();
                break;
            case 5:
                mInvokeTest.TestGetSourceType();
                break;
            case 6:
                mInvokeTest.TestGetHlsStreamNum();
                break;
            case 7:
                mInvokeTest.TestGetHlsBandwith();
                break;
            case 8:
                mInvokeTest.TestGetHlsStreamInfo();
                break;
            case 9:
                mInvokeTest.TestGetHlsSegmentInfo();
                break;
            case 10:
                mInvokeTest.TestGetHlsStreamDetailInfo();
                break;
            case 11:
                mInvokeTest.TestSetHlsIdx();
                break;
            case 12:
                mInvokeTest.Test_2D_SBS_To_3D_SBS();
                break;
            case 13:
                mInvokeTest.Test_3D_SBS_To_2D_SBS();
                break;
            case 14:
                mInvokeTest.Test_2D_SBS_To_2D();
                break;
            case 15:
                mInvokeTest.Test_2D_To_2DSBS();
                break;
            case 16:
                mInvokeTest.Test_2D_TAB_To_3D_TAB();
                break;
            case 17:
                mInvokeTest.Test_3D_TAB_To_2D_TAB();
                break;
            case 18:
                mInvokeTest.Test_2D_TAB_To_2D();
                break;
            case 19:
                mInvokeTest.Test_2D_To_2D_TAB();
                break;
            case 20:
                mInvokeTest.TestSetFontSize();
                break;
            case 21:
                mInvokeTest.TestGetSubFontSize();
                break;
            case 22:
                mInvokeTest.TestSetFontVertical();
                break;
            case 23:
                mInvokeTest.TestGetSubFontVertical();
                break;
            case 24:
                mInvokeTest.TestSetFontAlignment();
                break;
            case 25:
                mInvokeTest.TestGetSubFontAlignment();
                break;
            case 26:
                mInvokeTest.TestSetFontColor();
                break;
            case 27:
                mInvokeTest.TestGetSubFontColor();
                break;
            case 28:
                mInvokeTest.TestSetFontDisable();
                break;
            case 29:
                mInvokeTest.TestGetSubFontDisable();
                break;
            case 30:
                mInvokeTest.TestSetFontStyle();
                break;
            case 31:
                mInvokeTest.TestGetSubFontStyle();
                break;
            case 32:
                mInvokeTest.TestSetFontLineSpace();
                break;
            case 33:
                mInvokeTest.TestGetSubFontLineSpace();
                break;
            case 34:
                mInvokeTest.TestSetFontSpace();
                break;
            case 35:
                mInvokeTest.TestGetSubFontSpace();
                break;
            case 36:
                mInvokeTest.TestSetFontPath();
                break;
            case 37:
                mInvokeTest.TestGetSubFontPath();
            default:
                break;
        }
    }

    public void MenuClickPerform2(int positon)
    {
        switch (positon)
        {
            case 0: //CMD_SET_VIDEO_CVRS
                mInvokeTest.TestSetCvrs();
                break;
            case 1: //CMD_SET_VIDEO_CVRS
                mInvokeTest.TestGetCvrs();
                break;
            case 2: //CMD_SET_AUDIO_VOLUME
                mInvokeTest.TestSetVolume();
                break;
            case 3: //CMD_SET_AUDIO_VOLUME
                mInvokeTest.TestGetVolume();
                break;
            case 4: //CMD_GET_FILE_INFO
                mInvokeTest.TestGetFileInfo();
                break;
            case 5: //CMD_SET_AUDIO_CHANNEL_MODE
                mInvokeTest.TestSetAudioChMode();
                break;
            case 6: //CMD_GET_AUDIO_CHANNEL_MODE
                mInvokeTest.TestGetAudioChMode();
                break;
            case 7: //CMD_SET_AV_SYNC_MODE
                mInvokeTest.TestSetAVSyncMode();
                break;
            case 8: //CMD_GET_AV_SYNC_MODE
                mInvokeTest.TestGetAVSyncMode();
                break;
            case 9: //CMD_SET_VIDEO_FREEZE_MODE
                mInvokeTest.TestSetVideoFreezeMode();
                break;
            case 10: //CMD_GET_VIDEO_FREEZE_MODE
                mInvokeTest.TestGetVideoFreezeMode();
                break;
            case 11: //CMD_SET_AUDIO_TRACK_PID
                mInvokeTest.TestSetAudioTrackPid();
                break;
            case 12: //CMD_GET_AUDIO_TRACK_PID
                mInvokeTest.TestGetAudioTrackPid();
                break;
            case 13: //CMD_SET_SEEK_POS
                mInvokeTest.TestSetSeekPos();
                break;
            case 14: //CMD_SET_VIDEO_FRAME_MODE
                mInvokeTest.TestSetVideoFrameMode();
                break;
            case 15: //CMD_GET_VIDEO_FRAME_MODE
                mInvokeTest.TestGetVideoFrameMode();
                break;
            case 16: //CMD_SET_VIDEO_FPS
                mInvokeTest.TestSetVideoFPS();
                break;
            case 17: //CMD_SET_AVSYNC_START_REGION
                mInvokeTest.TestSetAVSyncStartRegion();
                break;
            case 18: //CMD_SET_BUFFER_UNDERRUN
                mInvokeTest.TestSetBufferUnderRun();
                break;
            case 19: //CMD_SET_3D_SUBTITLE_CUT_METHOD
                mInvokeTest.TestSet3DSubtitleCutMethod();
                break;
            case 20: //CMD_SET_AUDIO_MUTE_STATUS
                mInvokeTest.TestSetAudioMuteStatus();
                break;
            case 21: //CMD_GET_AUDIO_MUTE_STATUS
                mInvokeTest.TestGetAudioMuteStatus();
                break;
            default:
                break;
        }
    }

    public void MenuClickPerform3(int positon)
    {
        switch (positon)
        {
            case 0:
                mInvokeTest.TestCMD_GET_AUDIO_INFO();
                break;
            case 1:
                mInvokeTest.TestCMD_GET_VIDEO_INFO();
                break;
            case 2:
                mInvokeTest.TestSet3DFormat();
                break;
            case 3:
                mInvokeTest.TestCMD_SET_OUTRANGE();
                break;
            case 4:
                mInvokeTest.TestCMD_SET_SUB_ID();
                //set subid
                break;
            case 5:
                mInvokeTest.TestCMD_GET_SUB_ID();
                //get subid
                break;
            case 6:
                mInvokeTest.TestCMD_GET_SUB_INFO();
                break;
            case 7:
                mInvokeTest.TestCMD_SET_SUB_FONT_ENCODE();
                break;
            case 8:
                mInvokeTest.TestCMD_GET_SUB_FONT_ENCODE();
                break;
            case 9:
                mInvokeTest.TestCMD_SET_SUB_TIME_SYNC();
                break;
            case 10:
                mInvokeTest.TestCMD_GET_SUB_TIME_SYNC();
                break;
            case 11:
                mInvokeTest.TestCMD_SET_SUB_EXTRA_SUBNAME();
                break;
            case 12:
                mInvokeTest.TestCMD_SET_SUB_DISABLE();
                break;
            case 13:
                mInvokeTest.TestCMD_GET_SUB_DISABLE();
                break;
            case 14:
                mInvokeTest.TestCMD_GET_SUB_ISBMP();
                break;
            case 15:
                mInvokeTest.TestCMD_SET_BUFFER_MAX_SIZE();
                break;
            case 16:
                mInvokeTest.TestCMD_GET_BUFFER_MAX_SIZE();
                break;
            case 17:
                mInvokeTest.TestCMD_GET_DOWNLOAD_SPEED();
                break;
            case 18:
                mInvokeTest.TestCMD_GET_BUFFER_STATUS();
                break;
            case 19:
                mInvokeTest.TestCMD_SET_BUFFERSIZE_CONFIG();
                break;
            case 20:
                mInvokeTest.TestCMD_GET_BUFFERSIZE_CONFIG();
                break;
            case 21:
                mInvokeTest.TestCMD_SET_BUFFERTIME_CONFIG();
                break;
            case 22:
                mInvokeTest.TestCMD_GET_BUFFERTIME_CONFIG();
                break;
            case 23:
                mInvokeTest.TestCMD_GET_IP_PORT();
                break;
            default:
                break;
        }
    }

}
