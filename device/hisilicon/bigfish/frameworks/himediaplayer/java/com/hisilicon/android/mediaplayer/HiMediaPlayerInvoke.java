package com.hisilicon.android.mediaplayer;

/**
  * HiMediaPlayerInvoke interface<br>
  */
public class HiMediaPlayerInvoke
{
    public final static int CMD_INVOKE_BASE = 5000;
    /**
       <b>Currently not implemented</b>
      */
    public final static int CMD_SET_VIDEO_FRAME_MODE = CMD_INVOKE_BASE + 0;

    /**
       <b>Currently not implemented</b>
      */
    public final static int CMD_GET_VIDEO_FRAME_MODE = CMD_INVOKE_BASE + 1;

    /**
       <br>
       Set conversion mode of AspectRatio.<br>
       <h3>Description:</h3>
       you could set letter box or full screen mode,refer to {@see com.hisilicon.android.mediaplayer.HiMediaPlayerDefine.ENUM_VIDEO_CVRS_ARG}<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_VIDEO_CVRS</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>{@see com.hisilicon.android.mediaplayer.HiMediaPlayerDefine.ENUM_VIDEO_CVRS_ARG}</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_VIDEO_CVRS = CMD_INVOKE_BASE + 2;

    /**
       <br>
       Get conversion mode of AspectRatio.<br>
       <h3>Description:</h3>
       to know the value you will get,please refer to {@see com.hisilicon.android.mediaplayer.HiMediaPlayerDefine.ENUM_VIDEO_CVRS_ARG}<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
            </tr>
            <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>Value of CMD_GET_VIDEO_CVRS</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
       <th>Parcel Index</th>
       <th>Type</th>
       <th>Value</th>
       </tr>
       <tr>
       <td>0</p></td>
       <td>int</p></td>
       <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       <tr>
       <td>1</p></td>
       <td>int</p></td>
       <td>{@see com.hisilicon.android.mediaplayer.HiMediaPlayerDefine.ENUM_VIDEO_CVRS_ARG}</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_GET_VIDEO_CVRS = CMD_INVOKE_BASE + 3;

    /**
       <br>
       Set mute.<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_AUDIO_MUTE_STATUS</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.ENUM_AUDIO_MUTE_STATUS_ARG}</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_AUDIO_MUTE_STATUS = CMD_INVOKE_BASE + 4;

    /**
       <br>
       Get mute status.<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_GET_AUDIO_MUTE_STATUS</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>{@see HiMediaPlayerDefine.ENUM_AUDIO_MUTE_STATUS_ARG}</p></td>
                </tr>
            </table>
            <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_GET_AUDIO_MUTE_STATUS  = CMD_INVOKE_BASE + 5;

    /**
       <br>
       Set audio channel mode.<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_SET_AUDIO_CHANNEL_MODE</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>{@see HiMediaPlayerDefine.ENUM_AUDIO_CHANNEL_MODE_ARG}</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
            <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_AUDIO_CHANNEL_MODE = CMD_INVOKE_BASE + 6;

    /**
       <br>
       Get audio channel mode.{@see HiMediaPlayerDefine.ENUM_AUDIO_CHANNEL_MODE_ARG}<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_GET_AUDIO_CHANNEL_MODE</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>{@see HiMediaPlayerDefine.ENUM_AUDIO_CHANNEL_MODE_ARG}</p></td>
                </tr>
            </table>
            <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_GET_AUDIO_CHANNEL_MODE = CMD_INVOKE_BASE + 7; // get audio channel mode

    /**
       <br>
       Set sync mode.{@see HiMediaPlayerDefine.ENUM_SYNC_MODE_ARG}<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
           <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_SET_AV_SYNC_MODE</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>{@see HiMediaPlayerDefine.ENUM_SYNC_MODE_ARG}</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_AV_SYNC_MODE = CMD_INVOKE_BASE + 8;

    /**
       <br>
       Get sync mode.{@see HiMediaPlayerDefine.ENUM_SYNC_MODE_ARG}<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_GET_AV_SYNC_MODE</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>{@see HiMediaPlayerDefine.ENUM_SYNC_MODE_ARG}</p></td>
                </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_GET_AV_SYNC_MODE = CMD_INVOKE_BASE + 9;       // get AV sync mode

    /**
       <br>
       Set Freeze mode.<br>
       <h3>Description:</h3>
       Set the current player frozen screen mode. once you call reset() --> setDataSource(FileDescriptor) --> prepare()
       to play next file or stream.the last frozen picture int last file displays
       until next file plays if you set frozen mode. black screen displays until
       next file plays if you set black screen mode.
        <h3>Request:</h3>
           <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_SET_VIDEO_FREEZE_MODE</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>0 - frozen screen,1 - black screen</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_VIDEO_FREEZE_MODE = CMD_INVOKE_BASE + 10; // set video freeze mode

    /**
       <br>
       Get Freeze mode.<br>
       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_SET_VIDEO_FREEZE_MODE</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>0 - frozen screen,1 - black screen</p></td>
                </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_GET_VIDEO_FREEZE_MODE = CMD_INVOKE_BASE + 11; // get video freeze mode

    /**
       <br>
       Set audio track.<br>

       <h3>Description:</h3>
       None
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
            </tr>
            <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>Value of CMD_SET_AUDIO_TRACK_PID</p></td>
            </tr>
            <tr>
            <td>1</p></td>
            <td>int</p></td>
            <td>the index number(0 based) of audio track</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
            </tr>
            <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            </table>
            <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_AUDIO_TRACK_PID = CMD_INVOKE_BASE + 12;

    /**
        <br>
        Get audio track selected currently.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_AUDIO_TRACK_PID</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>the index number selected of audio track</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_AUDIO_TRACK_PID = CMD_INVOKE_BASE + 13;

    /**
        <br>
        Seek by pos.<br>
        <h3>Description:</h3>
        if you want to seek by time(ms),you can use {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#seekTo}<br>
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SEEK_POS</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>High 32 bit of pos</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>low 32 bit of pos</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        Only support ts file.
    */
    public final static int CMD_SET_SEEK_POS = CMD_INVOKE_BASE + 15;

    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_SET_EXT_SUBTITLE_FILE = CMD_INVOKE_BASE + 16;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_GET_EXT_SUBTITLE_FILE = CMD_INVOKE_BASE + 17;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_SET_TPLAY = CMD_INVOKE_BASE + 18;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_GET_TPLAY = CMD_INVOKE_BASE + 19;

    /**
       <br>
       Set volume.<br>
       <h3>Description:</h3>
       None
        <h3>Request:</h3>
           <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>Value of CMD_SET_AUDIO_VOLUME</p></td>
                </tr>
                <tr>
                    <td>1</p></td>
                    <td>int</p></td>
                    <td>The scope of value is 0--100.0 Means mute.</p></td>
                </tr>
            </table>
       <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_AUDIO_VOLUME = CMD_INVOKE_BASE + 20;
    /**
        <br>
        Get audio volume.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_AUDIO_VOLUME</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Volume value,The scope of value is 0--100.0 Means mute.</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_AUDIO_VOLUME = CMD_INVOKE_BASE + 21;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_SET_SURFACE_SIZE = CMD_INVOKE_BASE + 22;
    /**
       <b>Currently not implemented</b>
    */
    public final static int CMD_GET_SURFACE_SIZE = CMD_INVOKE_BASE + 23;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_SET_SURFACE_POSITION = CMD_INVOKE_BASE + 24;
    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_GET_SURFACE_POSITION = CMD_INVOKE_BASE + 25;

    /**
        <b>Currently not implemented</b>
    */
    public final static int CMD_SET_SURFACE_RATIO = CMD_INVOKE_BASE + 26;
    /**
       <b>Currently not implemented</b>
    */
    public final static int CMD_GET_SURFACE_RATIO = CMD_INVOKE_BASE + 27;

    /**
        <br>
        Gets the current audio and video format and file size, and metadata information.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_FILE_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>the current video coding format,<br>refer to {@see HiMediaPlayerDefine.DEFINE_VIDEO_ENCODING_FORMAT}</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>audio coding format,<br>refer to {@see HiMediaPlayerDefine.DEFINE_AUDIO_ENCODING_FORMAT}</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>long</p></td>
                <td>file size</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>source type 0:local 1:vod 2:live</p></td>
            </tr>
            <tr>
                <td>5</p></td>
                <td>String16</p></td>
                <td>Album</p></td>
            </tr>
            <tr>
                <td>6</p></td>
                <td>String16</p></td>
                <td>Title</p></td>
            </tr>
            <tr>
                <td>7</p></td>
                <td>String16</p></td>
                <td>Artist</p></td>
            </tr>
            <tr>
                <td>8</p></td>
                <td>String16</p></td>
                <td>Genre</p></td>
            </tr>
            <tr>
                <td>9</p></td>
                <td>String16</p></td>
                <td>Year</p></td>
            </tr>
            <tr>
                <td>10</p></td>
                <td>String16</p></td>
                <td>date</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_FILE_INFO = CMD_INVOKE_BASE + 28;

    /**
        <b>Currently not implemented</b><br>
    */
        public final static int CMD_GET_PLAYER_INFO = CMD_INVOKE_BASE + 29;
    /**
        <b>Currently not implemented</b><br>
    */
        public final static int CMD_GET_STREM_3DMODE = CMD_INVOKE_BASE + 30;
    /**
        <b>Currently not implemented</b><br>
    */
        public final static int CMD_SET_STREM_3DMODE = CMD_INVOKE_BASE + 31;
    /**
        <br>
        Get all audio track format info.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_AUDIO_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Audio track count</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>string</p></td>
                <td>Language of every track</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Audio format of every track {@see com.hisilicon.android.mediaplayer.HiMediaPlayerDefine.DEFINE_AUDIO_ENCODING_FORMAT}</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>Sample rate of every track</p></td>
            </tr>
            <tr>
                <td>5</p></td>
                <td>int</p></td>
                <td>Channels of every track</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        if the file has two audio track.the arrangement in parcel is:<br>
        (result)<br>
        (Audio track count)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Language1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Audio format1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Sample rate1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Channels1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Language2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Audio format2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Sample rate2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Channels2)<br>
        so you must know "Audio track count" first,then you can use for() loop to get every track info.<br>
    */
    public final static int CMD_GET_AUDIO_INFO = CMD_INVOKE_BASE + 32;        // 32 get audio info

    /**
        <br>
        Get video format info.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_VIDEO_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.DEFINE_VIDEO_ENCODING_FORMAT}</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Fps Integer</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Fps Decimal</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_VIDEO_INFO = CMD_INVOKE_BASE + 33;

    /**
       <br>
       Set 3D video format timo<br>
       <h3>Description:</h3>
       Setup 3D video format through this invoke command.<br>
       <h3>Request:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
           <td>0</p></td>
           <td>int</p></td>
           <td>Value of CMD_SET_3D_FORMAT</p></td>
       </tr>
       <tr>
           <td>1</p></td>
           <td>int</p></td>
           <td>{0 = Normal frame, 1=Side by side,2=Top and bottom}</p></td>
       </tr>
       </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_3D_FORMAT = CMD_INVOKE_BASE + 34;

    /**
       <br>
       Set 3D video strategy<br>
       <h3>Description:</h3>
       Setup 3D video strategy through this invoke command.<br>
       <h3>Request:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
           <td>0</p></td>
           <td>int</p></td>
           <td>Value of CMD_SET_3D_STRATEGY</p></td>
       </tr>
       <tr>
           <td>1</p></td>
           <td>int</p></td>
           <td>{@see HiMediaDefine.h 3D setting.(DP_STRATEGY_ADAPT_MASK/DP_STRATEGY_2D_MASK/DP_STRATEGY_3D_MASK/DP_STRATEGY_24FPS_MASK)  }</p></td>
       </tr>
       </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_3D_STRATEGY = CMD_INVOKE_BASE + 35;

    /**
        <br>
        Set video display area.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Top point of area</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Left point of area</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Width of area</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Height of area</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        It is effective to HiMediaplayer mode,or local file play in android original mode.
        It is invalid for net stream play in android original mode.
    */
    public final static int CMD_SET_OUTRANGE = CMD_INVOKE_BASE + 100;

    /**
        <br>
        Set Subtitle track.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_ID</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Subtitle track index num</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>If in android original mode,you could use 'MediaPlayer.selectTrack' function instead.
    */
    public final static int CMD_SET_SUB_ID   = CMD_INVOKE_BASE + 101;         // set subtitle ID

    /**
        <br>
        Get Subtitle track selected currently.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_ID</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>The index of current display subtitle</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_SUB_ID   = CMD_INVOKE_BASE + 102;

    /**
        <br>
        Get all subtitle info.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Subtitle count</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Subtitle index(0 based)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>If Ext Subtitle</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>string</p></td>
                <td>Subtitle language(if no language info,"-" return)</p></td>
            </tr>
            <tr>
                <td>5</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        if the file has two subtitle track.the arrangement in parcel is:<br>
        (result)<br>
        (Subtitle count)<br>
        (Subtitle index1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(If Ext Subtitle1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Subtitle language1)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(format1)<br>

        &nbsp;&nbsp;&nbsp;&nbsp;(Subtitle index2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(If Ext Subtitle2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(Subtitle language2)<br>
        &nbsp;&nbsp;&nbsp;&nbsp;(format2)<br>
        so you must know "Subtitle count" first,then you can use for() loop to get every track info.<br>
    */
    public final static int CMD_GET_SUB_INFO = CMD_INVOKE_BASE + 103;         // get subtitle info, subtitle Id、external/internal、sub_TITLE

    /**
        <br>
        Set font size.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_FONT_SIZE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>font size</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_SIZE = CMD_INVOKE_BASE + 104;    // set font size

    /**
        <br>
        Get font size.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_SIZE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>font size</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_SIZE = CMD_INVOKE_BASE + 105;    // get font size

    /**
       <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_SUB_FONT_POSITION   = CMD_INVOKE_BASE + 106;  // set subtitle position

    /**
       <b>Currently not implemented.</b>
    */
    public final static int CMD_GET_SUB_FONT_POSITION   = CMD_INVOKE_BASE + 107;  // get subtitle position

    /**
        <b>Currently not implemented</b><br>
    */
    public final static int CMD_SET_SUB_FONT_HORIZONTAL = CMD_INVOKE_BASE + 108;

    /**
        <b>Currently not implemented</b><br>
    */
    public final static int CMD_GET_SUB_FONT_HORIZONTAL = CMD_INVOKE_BASE + 109;

    /**
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubVertical}<b><br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_VERTICAL  = CMD_INVOKE_BASE + 110;   // set subtitle vertical position

    /**
        <br>
        Get subtitle font vertical position.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_VERTICAL</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Y coordinate</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_VERTICAL  = CMD_INVOKE_BASE + 111;   // get subtitle vertical position

    /**
        <br>
        Set subtitle font alignment mode.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_FONT_ALIGNMENT</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.ENUM_SUB_FONT_ALIGNMENT_ARG}</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>None</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_ALIGNMENT = CMD_INVOKE_BASE + 112;   // set subtitle alignment (Left/Center/Right)

    /**
        <br>
        Get subtitle font alignment mode.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_ALIGNMENT</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.ENUM_SUB_FONT_ALIGNMENT_ARG}</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_ALIGNMENT = CMD_INVOKE_BASE + 113;   // get subtitle alignment (Left/Center/Right)

    /**
        <br>
        Set sub font color<br>
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubFontColor}<b><br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_COLOR = CMD_INVOKE_BASE + 114;

    /**
        <br>
        Get font color,only for text subtitle.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_COLOR</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>value from 0x000000 - 0xFFFFFF high byte is R,middle byte is G,low byte is B</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>it is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_COLOR = CMD_INVOKE_BASE + 115;       // get font color

    /**
       <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_SUB_FONT_BACKCOLOR = CMD_INVOKE_BASE + 116;   // set font backcolor ARGB -32Bits, only for character subtitle

    /**
       <b>Currently not implemented.</b>
    */
    public final static int CMD_GET_SUB_FONT_BACKCOLOR = CMD_INVOKE_BASE + 117;   // get font backcolor

    /**
        Please Use {@link #CMD_SET_SUB_FONT_STYLE}
    */
    public final static int CMD_SET_SUB_FONT_SHADOW = CMD_INVOKE_BASE + 118;      // set font shadow, only for character subtitle

    /**
        Please Use {@link #CMD_GET_SUB_FONT_STYLE}
    */
    public final static int CMD_GET_SUB_FONT_SHADOW = CMD_INVOKE_BASE + 119;      // get font shadow

    /**
        Please Use {@link #CMD_SET_SUB_FONT_STYLE}
    */
    public final static int CMD_SET_SUB_FONT_HOLLOW = CMD_INVOKE_BASE + 120;      // set font hollow, only for character subtitle

    /**
        Please Use {@link #CMD_GET_SUB_FONT_STYLE}
    */
    public final static int CMD_GET_SUB_FONT_HOLLOW = CMD_INVOKE_BASE + 121;

    /**
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubFontSpace}<b><br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_SPACE = CMD_INVOKE_BASE + 122;

    /**
        <br>
        Get space between characters in subtitle.only for text subtitle<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_SPACE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>space value between fonts</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_SPACE = CMD_INVOKE_BASE + 123;       // get font space

    /**
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubFontLineSpace}<b><br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_LINESPACE = CMD_INVOKE_BASE + 124;   // set font linespace, only for character subtitle

    /**
        <br>
        Get sub font space between lines.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_LINESPACE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>space value between lines</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type refers to {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_LINESPACE = CMD_INVOKE_BASE + 125;   // get font linespace

    /**
        <br>
        Set font file path.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_FONT_PATH</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>String</p></td>
                <td>Font Path</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_PATH   = CMD_INVOKE_BASE + 126;      // set font_file path

    /**
        <br>
        Get subtitle font file path.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_PATH</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>String</p></td>
                <td>Path of font file</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_PATH   = CMD_INVOKE_BASE + 127;      // get font_file path

    /**
        <br>
        Set sub encode.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_FONT_ENCODE</p></td>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>value of subtitle encode format<br>{@see HiMediaPlayerDefine.DEFINE_SUBT_ENCODE_FORMAT}</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
    */
    public final static int CMD_SET_SUB_FONT_ENCODE = CMD_INVOKE_BASE + 128;      // set font encode charset, only for character subtitle

    /**
        <br>
        Get subtitle encode format.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_ENCODE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>value of subtitle encode format<br>{@see HiMediaPlayerDefine.DEFINE_SUBT_ENCODE_FORMAT}</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
    */
    public final static int CMD_GET_SUB_FONT_ENCODE = CMD_INVOKE_BASE + 129;      // get font encode charset

    /**
        <br>
        Set video/audio/subtitle display time offset.<br>
        <h3>Description:</h3>
        if video,audio,subtitle is out of sync.you can adjust to sync
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_TIME_SYNC</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>video offset(ms)</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>audio offset(ms)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>subtitle offset(ms)</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_SUB_TIME_SYNC = CMD_INVOKE_BASE + 130;        // set audio/video/subtitl sync timestamp

    /**
        <br>
        Get video/audio/subtitle display time offset.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_TIME_SYNC</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>video offset(ms)</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>audio offset(ms)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>subtitle offset(ms)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_SUB_TIME_SYNC = CMD_INVOKE_BASE + 131;        // get audio/video/subtitl sync timestamp

    /**
        <br>
        Import external subtitle
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubPath}<b>
        <br>
        <b>if use MediaPlayer interface,you should use Mediaplayer.addTimedTextSource instead.<b>
    */
    public final static int CMD_SET_SUB_EXTRA_SUBNAME = CMD_INVOKE_BASE + 132;

    /**
        <br>
        Set subtitle style
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setSubFontStyle}<b>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_SET_SUB_FONT_STYLE = CMD_INVOKE_BASE + 133;

    /**
        <br>
        Get last font style setting.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_FONT_STYLE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.ENUM_SUB_FONT_STYLE_ARG}</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        only for text subtitle,subtitle type is {@see HiMediaPlayerDefine.DEFINE_SUBT_FORMAT}
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_FONT_STYLE = CMD_INVOKE_BASE + 134;

    /**
        <br>
        <b>suggest using method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#enableSubtitle}<b><br>
        <b>if you use Mediaplayer,you should use 'Mediaplayer.deselectTrack' instead<b>
    */
    public final static int CMD_SET_SUB_DISABLE  = CMD_INVOKE_BASE + 135;

    /**
        <br>
        Get if subtitle disable.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_DISABLE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>>0 disable,<=0 enable</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is invalid to 'onTimedText' which use android MediaPlayer interface.<br>
        But it is valid If you set subtitle surface by {@link #CMD_SET_SUB_SURFACE}
    */
    public final static int CMD_GET_SUB_DISABLE  = CMD_INVOKE_BASE + 136;
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_SUB_LANGUAGE = CMD_INVOKE_BASE + 137;
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_GET_SUB_LANGUAGE = CMD_INVOKE_BASE + 138;
    /**
        <br>
        Check if is it bmp subtitle.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_SUB_ISBMP</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1 bmp subtitle,0 not bmp subtitle</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_SUB_ISBMP = CMD_INVOKE_BASE + 139;            // get current subtitle is picture

    /**
       <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_SUB_CONFIG_PATH = CMD_INVOKE_BASE + 140;      // set font_config_file path

    /**
        <br>
        Set Volume lock.<br>
        if lock set,you can not change volume by {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setVolume}
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_VOLUME_LOCK</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1 lock,0 unlock</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_SET_VOLUME_LOCK = CMD_INVOKE_BASE + 141;          // set mediaplayer volume lock

    /**
        <br>
        Get volume setting lock state.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_VOLUME_LOCK</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1 lock,0 unlock</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_GET_VOLUME_LOCK = CMD_INVOKE_BASE + 142;          // get mediaplayer volume lock
    //143-198 is reserved

    /**
        <br>
        stop ff/bw,resume normal speed play
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_STOP_FASTPLAY</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_STOP_FASTPLAY = CMD_INVOKE_BASE + 199;        // stop fast forword/backword

    /**
        <br>
        fast forward play operation
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_FORWORD</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Speed of fast play.2,4,8,16,32 is invalid</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
     public final static int CMD_SET_FORWORD = CMD_INVOKE_BASE + 200;              // fast forword

    /**
        <br>
        backward play operation
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_REWIND</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Speed of rewind play.2,4,8,16,32 is invalid</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_REWIND  = CMD_INVOKE_BASE + 201;              // fast backword
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_ZOOMIN  = CMD_INVOKE_BASE + 202;              // zoom in
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_ZOOMOUT = CMD_INVOKE_BASE + 203;              // zoom out
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_SLOWLY = CMD_INVOKE_BASE + 204;               // set play slowly

    /**
        <br>
        Get audio track number in current program.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_PID_NUMBER</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>audio track count number</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_PID_NUMBER = CMD_INVOKE_BASE + 205;           // get audio track count

    /**
        <br>
        Get program number.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_PROGRAM_NUMBER</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>program count number</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_PROGRAM_NUMBER = CMD_INVOKE_BASE + 206;

    /**
        <br>
        Get Stream Type of current play.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_PROGRAM_STREAM_TYPE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>0--local play file,1--vod,2--live,3--unsupported</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_PROGRAM_STREAM_TYPE = CMD_INVOKE_BASE + 207;  // get program stream type
    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_NET_SURFACE_RECT = CMD_INVOKE_BASE + 208;     // set net play surface
    //209-299 is reserved
    /**
        <br>
        Get hls stream count of multiple bit rate stream.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_HLS_STREAM_NUM</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>stream count</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_HLS_STREAM_NUM = CMD_INVOKE_BASE + 300;       // get hls streams count

    /**
        <br>
        you use methods {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#getNetworkInfo} to<br>
        get download speed.
        <br>
    */
    public final static int CMD_GET_HLS_BANDWIDTH    = CMD_INVOKE_BASE + 301;

    /**
        <br>
        Get info of the stream that you specify.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_HLS_STREAM_INFO</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>hls stream index you specify</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>stream index</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>stream bit rate</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>segment count</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>string</p></td>
                <td>stream url</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_HLS_STREAM_INFO  = CMD_INVOKE_BASE + 302;     // get specified stream info while hls

    /**
        <br>
        Get hls seg info that is downloading.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_HLS_SEGMENT_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>stream index which seg is in</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>seg total time(ms)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>bandwith of stream which the seg is in </p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>current seg index number</p></td>
            </tr>
            <tr>
                <td>5</p></td>
                <td>string</p></td>
                <td>segment url</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_HLS_SEGMENT_INFO = CMD_INVOKE_BASE + 303;

    /**
        <br>
        Get max bit rate stream info for playlist type file or stream.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_PLAYLIST_STREAM_DETAIL_INFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>playlist type.{@see HiMediaPlayerDefine.ENUM_PLAYLIST_TYPE_ARG}</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>bit rate</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>String</p></td>
                <td>stream url</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>stream index</p></td>
            </tr>
            <tr>
                <td>5</p></td>
                <td>int</p></td>
                <td>is live stream</p></td>
            </tr>
            <tr>
                <td>6</p></td>
                <td>int</p></td>
                <td>Max duration of segments(ms)</p></td>
            </tr>
            <tr>
                <td>7</p></td>
                <td>int</p></td>
                <td>Segment count</p></td>
            </tr>
            <tr>
                <td>8</p></td>
                <td>int</p></td>
                <td>*every segment starttime(ms)</p></td>
            </tr>
            <tr>
                <td>9</p></td>
                <td>int</p></td>
                <td>*every segment total time(ms)</p></td>
            </tr>
            <tr>
                <td>10</p></td>
                <td>String</p></td>
                <td>*every segment url</p></td>
            </tr>
            <tr>
                <td>11</p></td>
                <td>String</p></td>
                <td>*key info</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        you should use 'for' loop and 'Segment count' to read every sections which has '*' prefix.
        for example:if 'Segment count' is 3,so the parcel format arrange is (return value)...(Max duration of segments(ms)),Segment count(3),
        (segment starttime1),(segment total time1),(segment url1),(key info1),(segment starttime2),(segment total time2),(segment url2),(key info2),
        (segment starttime3),(segment total time3),(segment url3),(key info3)
    */
    public final static int CMD_GET_PLAYLIST_STREAM_DETAIL_INFO = CMD_INVOKE_BASE + 304;

    /**
        <br>
        Set stream index you want to play in multiple bit rate stream.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_HLS_STREAM_ID</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>stream index you want to set</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_HLS_STREAM_ID = CMD_INVOKE_BASE + 305;        // set indicated steam for playback while hls

    /**
        <br>
        Setting data buffer(local buffer in network stream playback) in buffer size threshold.<br>
        <h3>Description:</h3>
        there is 4 value you can set.the 4 values are start,enough,full and timeout.<br>
        <b>start:</b>if local buffer size reach start and is less than enough threshold you set,the MEDIA_INFO_BUFFER_START message will be reported.
        MEDIA_INFO_BUFFER_START means that local buffer starts downloading,if you set {@link com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke#CMD_SET_BUFFER_UNDERRUN},
        himediaplayer will pause the playback in order to accumulate more buffer to enough state.because in start state,little media buffer data maybe cause unsmooth playback.<br>
        <b>enough:</b>when local buffer size reach enough and is less than full threshold you set, MEDIA_INFO_BUFFER_ENOUGH message
        will be reported,this message means local buffer is enough for playback,you can resume playback.if you set
        {@link com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke#CMD_SET_BUFFER_UNDERRUN},himediaplayer will resume the playback.<br>
        <b>full:</b>now full is no use,but in some reason,you must set a value,the value must obey the principle:full > enough > start<br>
        <b>timeout:</b>if do not receive data exceed timeout(ms) setting.timeout msg will reported.
        <br>
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_BUFFERSIZE_CONFIG</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>full.no use,but in some reason,you must set a value,the value must obey the principle:max > total > enough > start</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>start.Download start,with the unit of KByte</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>enough.the buffered data to meet the playback requirements, can continue to play, to KByte as a unit.</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>timeout(ms).</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_BUFFERSIZE_CONFIG = CMD_INVOKE_BASE + 306;    // set HiPlayer buffer config Kbytes

    /**
        <br>
        get buffer cache size by byte while playing network stream<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_BUFFERSIZE_CONFIG</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Total(KByte)</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Start(KByte)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Enough(KByte)</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>Timeout(ms)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_BUFFERSIZE_CONFIG = CMD_INVOKE_BASE + 307;    // get HiPlayer Buffer config Kbytes

    /**
        <br>
        set buffer cache size by time while play network stream.<br>
        <h3>Description:</h3>
        there is 4 value you can set.the 4 values are start,enough,full and timeout.<br>
        <b>start:</b>if local buffer size reach start and is less than enough threshold you set,the MEDIA_INFO_BUFFER_START message will be reported.
        MEDIA_INFO_BUFFER_START means that local buffer starts downloading,if you set {@link com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke#CMD_SET_BUFFER_UNDERRUN},
        himediaplayer will pause the playback in order to accumulate more buffer to enough state.because in start state,little media buffer data maybe cause unsmooth playback.<br>
        <b>enough:</b>when local buffer size reach enough and is less than full threshold you set, MEDIA_INFO_BUFFER_ENOUGH message
        will be reported,this message means local buffer is enough for playback,you can resume playback.if you set
        {@link com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke#CMD_SET_BUFFER_UNDERRUN},himediaplayer will resume the playback.<br>
        <b>full:</b>now full is no use,but in some reason,you must set a value,the value must obey the principle:full > enough > start<br>
        <b>timeout:</b>if do not receive data exceed timeout(ms) setting.timeout msg will reported.
        <br>
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_BUFFERTIME_CONFIG</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>full.no use,but in some reason,you must set a value,the value must obey the principle:max > total > enough > start</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>start.Download start,with the unit of ms</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>enough.the buffered data to meet the playback requirements, can continue to play, to ms as a unit.</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>timeout(ms).</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_BUFFERTIME_CONFIG = CMD_INVOKE_BASE + 308;    // set HiPlayer buffer config ms

    /**
        <br>
        get buffer cache size by time while play network stream.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_BUFFERTIME_CONFIG</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Total(ms)</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Start(ms)</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Enough(ms)</p></td>
            </tr>
            <tr>
                <td>4</p></td>
                <td>int</p></td>
                <td>Timeout(ms)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_BUFFERTIME_CONFIG = CMD_INVOKE_BASE + 309;    // get HiPlayer Buffer config ms

    /**
        <br>
        get local buffer status,when play net stream.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_BUFFER_STATUS</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Buffer size(KByte)</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Duration(ms)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_BUFFER_STATUS   = CMD_INVOKE_BASE + 310;

    /**
        <br>
        Get download speed.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_DOWNLOAD_SPEED</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Download speed(bps)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_DOWNLOAD_SPEED  = CMD_INVOKE_BASE + 311;      // get DownloadSpeed bps

    /**
        <br>
        Set max buffer cache size.<br>
        <h3>Description:</h3>
        this is only used for time buffer setting{@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferTimeConfig}.<br>
        e.g. if you set max buffer size 100MB，{@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferTimeConfig} set buffer full time 100s.
        The buffer cache can only store 100MB max,in spite of if the duration of data has 100s.
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_BUFFER_MAX_SIZE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Max buffer size(KByte)</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        you can also use {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferTimeConfig} to set max size.
        refer to {@see com.hisilicon.android.mediaplayer.BufferConfig#max}
    */
    public final static int CMD_SET_BUFFER_MAX_SIZE = CMD_INVOKE_BASE + 312;      // set buffer maxsize Kbytes

    /**
        <br>
        Get max buffer cache size setting.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_BUFFER_MAX_SIZE</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Max buffer size(KByte)</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_GET_BUFFER_MAX_SIZE = CMD_INVOKE_BASE + 313;           // get buffer maxsize Kbytes

    /**
        <b>Currently not implemented.</b>
    */
    public final static int CMD_SET_VIDEO_Z_ORDER = CMD_INVOKE_BASE + 314;       // set vo z order

    /**
        <br>
        If cut out subtitle in tab/sbs 3D file.<br>
        <h3>Description:</h3>
        Mass tab/sbs 3d file has two same<br>
        subtitle in two sides.we must cut out one sides subtitle to show<br>
        subtitle normal.but some other tab/sbs 3d file has just one subtitle,<br>
        so we should not cut out it
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_3D_SUBTITLE_CUT_METHOD</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>refer to parameter description {@see HiMediaPlayerDefine.ENUM_3D_SUBTITLE_CUT_METHOD_ARG}</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_SET_3D_SUBTITLE_CUT_METHOD = CMD_INVOKE_BASE + 315;

    /**
        <br>
        Set underrun mode.<br>
        <h3>Description:</h3>
        refer to the method {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferTimeConfig} or<br>
        {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferSizeConfig}.if current buffer is less than 'start'<br>
        setting,player will pause automatic,in order to accumulate more buffer to play.when buffer<br>
        rise up to 'enough' or more,HiMediaPlayer resume play automatic.User can also disable the<br>
        inner cache buffer management mechanism,and do it in app by the buffer event come from event call back.
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_BUFFER_UNDERRUN</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1--open 0--close</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        you can refer to {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setBufferTimeConfig} to know more about buffer cache control.
    */
    public final static int CMD_SET_BUFFER_UNDERRUN = CMD_INVOKE_BASE + 316;           //set buffer underrun property

    /**
        <br>
        Setting not send 'Range: bytes' field in http request.<br>
        <h3>Description:</h3>
        In some condition,user must not send 'Range: bytes' in http request.
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_NOT_SUPPORT_BYTERANGE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1--not support 'Range:' 0--support 'Range:'</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_NOT_SUPPORT_BYTERANGE= CMD_INVOKE_BASE + 317;      //set byte-range

    /**
        <br>
        Set the referer info in http request.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_REFERER</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>String</p></td>
                <td>referer info</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_REFERER= CMD_INVOKE_BASE + 318;          //set referer

    /**
        <br>
        Set the useragent info in http request.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_USER_AGENT</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>String</p></td>
                <td>useragent info</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_USER_AGENT= CMD_INVOKE_BASE + 319;       //set user agent

    /**
        <br>
        Set dynamic range compression cut scale factor for dolby.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_DOLBY_RANGEINFO</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>range info(0--100)</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_SET_DOLBY_RANGEINFO = CMD_INVOKE_BASE + 320;

    /**
        <br>
        Get dolby info.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_DOLBYINFO</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>AC Mode</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>{@see HiMediaPlayerDefine.ENUM_DOLBYINFO_ARG}</p></td>
            </tr>
            <tr>
                <td>3</p></td>
                <td>int</p></td>
                <td>Audio decoder ID</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_GET_DOLBYINFO = CMD_INVOKE_BASE + 321;
    /**
        <br>
        Set avsync start region.<br>
        <h3>Description:</h3>
        in dolby authentication,we must set avsync start region
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_AVSYNC_START_REGION</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Plus time range during video synchronization</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>Negative time range during video synchronization</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        None
    */
    public final static int CMD_SET_AVSYNC_START_REGION = CMD_INVOKE_BASE + 322;
    public final static int CMD_SET_DAC_DECT_ENABLE = CMD_INVOKE_BASE + 323;

    /**
       <br>
       Set video framerate<br>
       <h3>Description:</h3>
       You could setup video's framerate by this invoke<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_VIDEO_FPS</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>The FPS value you want to assign in integer part.</p></td>
            </tr>
            <tr>
                <td>2</p></td>
                <td>int</p></td>
                <td>The FPS value you want to assign in decimal part.</p></td>
            </tr>

            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_VIDEO_FPS = CMD_INVOKE_BASE + 324;    //user request to set video framerate
    /**
       <br>
       Set dolby drcmode<br>
       <h3>Description:</h3>
       this is for dolby authentication<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_DOLBY_DRCMODE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>The value of drcmode.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       <br>It is valid to HiMediaplayer interface.
    */
    public final static int CMD_SET_DOLBY_DRCMODE = CMD_INVOKE_BASE + 325;
    /**
       <br>
       Set video output surface mode<br>
       <h3>Description:</h3>
       this is for video surface mode,if you call this invoke,player output video by hisi private video layer.<br>
       default player output video by android graphic layer(SurfaceFlinger).<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_VIDEO_SURFACE_OUTPUT</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_VIDEO_SURFACE_OUTPUT = CMD_INVOKE_BASE + 326;

    /**
       <br>
       Freeze window or unfreeze window <br>
       <h3>Description:</h3>
       this is for window freeze or unfreeze dispose<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_WIN_FREEZE_MODE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>The value of freeze or unfreeze flag.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       None
    */
    public final static int CMD_SET_WIN_FREEZE_MODE = CMD_INVOKE_BASE + 327;
    /**
       <br>
       Set Subtitle surface <br>
       <h3>Description:</h3>
       In android mediaplayer interface,if set subtitle surface,hisi-player draw the subtitle on the surface,if you <br>
       do not set the surface,subtitle will be displayed by on onTimedText drawn by app<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_SUB_SURFACE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>The surface,subtitle drawn on.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_SET_SUB_SURFACE  = CMD_INVOKE_BASE + 328;
    /**
       <br>
       input audio lib<br>
       <h3>Description:</h3>
       you can input audio codec lib before call any mediaplayer interface.<br>
       after you call this method,the audio codec lib was register to hisi system,until<br>
       the mediaservere is killed,and you can play audio file with the audio codec lib.<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_INPUT_AUDIO_CODEC_LIB</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>String</p></td>
                <td>The file path of the audio codec lib.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_INPUT_AUDIO_CODEC_LIB  = CMD_INVOKE_BASE + 329;
    /**
       <br>
       set video free run<br>
       <h3>Description:</h3>
       you can set video free run mode to play video only, as fast as possible.<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_VIDEO_FREE_RUN</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1--enable video free run mode, 0--disable video free run mode.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_SET_VIDEO_FREE_RUN = CMD_INVOKE_BASE + 330; // 1: play video only, as fast as possible; 0: resume to normal play.
    /**
       <br>
       set audio channel<br>
       <h3>Description:</h3>
        set the mode of audio channels  <br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of audio channels</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td></p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_SET_AUDIO_CHANNEL =  CMD_INVOKE_BASE + 331;
    /**
       <br>
       set low delay<br>
       <h3>Description:</h3>
       you can set low delay after prepared before start.<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_LOW_DELAY</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>1--enable low delay, 0--disable low delay.</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_SET_LOW_DELAY = CMD_INVOKE_BASE + 332; // set low delay mode, should use before starting to play, 1: enable; 0:disable.
    /**
       <br>
       set timeshift duration<br>
       <h3>Description:</h3>
       you can set duration of timeshift playing.<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_TIMESHIFT_DURATION</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>Duration</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
            <th>Value</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int CMD_SET_TIMESHIFT_DURATION = CMD_INVOKE_BASE + 333;
    /**
        <br>
        Set  mode for tplay.<br>
        <h3>Description:</h3>
        you can set different mode to play video only.:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_SET_TPLAY_MODE</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
                <td>0 : smooth tplay mode  1: I frame tplay mode. </p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
                <tr>
                    <th>Parcel Index</th>
                    <th>Type</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>0</p></td>
                    <td>int</p></td>
                    <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
                </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        you can also use {@see com.hisilicon.android.mediaplayer.HiMediaPlayer#setTplayMode} to set mode type.
        refer to {@see com.hisilicon.android.mediaplayer.setTplayMode#mode}
    */
    public final static int CMD_SET_TPLAY_MODE = CMD_INVOKE_BASE + 334; // 0 : smooth tplay mode  1: I frame tplay mode.
    /**
        <br>
        Get mediaplayer ip address and port.<br>
        <h3>Description:</h3>
        None
        <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
                <td>Value of CMD_GET_IP_PORT</p></td>
            </tr>
            </table>
        <h3>Reply:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>String</p></td>
                <td>ip adrress and port, example: ip=10.29.22.9&port=8080</p></td>
            </tr>
            </table>
        <br>
        <h3>Attention:</h3>
        This is valid for android mediaplayer interface.
    */
    public final static int CMD_GET_IP_PORT = CMD_INVOKE_BASE + 335;
    /**
       <br>
       get mediaplayer url<br>
       <h3>Description:</h3>
        get mediaplayer url <br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int INVOKE_ID_CMD_GET_MEDIA_URL = CMD_INVOKE_BASE + 500;
    /**
       <br>
       get mediaplayer connect id<br>
       <h3>Description:</h3>
        get mediaplayer connect id<br>
       <h3>Request:</h3>
            <table border="1" cellspacing="0" cellpadding="0">
            <tr>
                <th>Parcel Index</th>
                <th>Type</th>
            </tr>
            <tr>
                <td>0</p></td>
                <td>int</p></td>
            </tr>
            <tr>
                <td>1</p></td>
                <td>int</p></td>
            </tr>
            </table>
       <h3>Reply:</h3>
       <table border="1" cellspacing="0" cellpadding="0">
       <tr>
            <th>Parcel Index</th>
            <th>Type</th>
       </tr>
       <tr>
            <td>0</p></td>
            <td>int</p></td>
            <td>return value<br>status code see system/core/include/utils/Errors.h</p></td>
       </tr>
       </table>
       <br>
       <h3>Attention:</h3>
       This is valid for android mediaplayer interface.
    */
    public final static int INVOKE_ID_GET_CMD_CONNECT_ID = CMD_INVOKE_BASE + 501;
    /**
            <b>Unsurport ID.</b>
        */
    public final static int CMD_TYPE_BUTT = CMD_INVOKE_BASE + 1000;        //unsurport ID
}
