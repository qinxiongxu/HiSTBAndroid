#ifndef __ANDROID_MEDIAPLAYER_INVOKE_H_
#define __ANDROID_MEDIAPLAYER_INVOKE_H_
#ifdef __cplusplus__
extern "c"
{
#endif

// add for invoke start
#define CHECK_FUNC_RET(func, fmt...) \
    do { \
        int ret = func; \
        if (ret != HI_SUCCESS) \
        { \
            LOGE("%s:%d call %s fail, ret is %d", __FUNCTION__, __LINE__, # func, ret); \
            if (NULL != reply) \
            {        \
                reply->writeInt32(ret); \
            } \
            return ret; \
        } \
    } while (0)

#define CMD_INVOKE_BASE 5000  //notise: if modify, need Sync "CMD_INVOKE_BASE" of HiMediaPlayer.java

typedef enum
{
    CMD_SET_VIDEO_FRAME_MODE = CMD_INVOKE_BASE + 0,  // set video frame mode
    CMD_GET_VIDEO_FRAME_MODE,          // get video frame mode
    CMD_SET_VIDEO_CVRS,                // set video CVRS: LETTERBOX /PANANDSCAN /COMBINED /...
    CMD_GET_VIDEO_CVRS,                // get video CVRS:
    CMD_SET_AUDIO_MUTE_STATUS,         // set mute status

    CMD_GET_AUDIO_MUTE_STATUS = CMD_INVOKE_BASE + 5,  // get mute status
    CMD_SET_AUDIO_CHANNEL_MODE,        // set audio channel mode Left=Right/right=left/...
    CMD_GET_AUDIO_CHANNEL_MODE,        // get audio channel mode
    CMD_SET_AV_SYNC_MODE,              // set AV sync mode
    CMD_GET_AV_SYNC_MODE,              // get AV sync mode

    CMD_SET_VIDEO_FREEZE_MODE = CMD_INVOKE_BASE + 10, // set video freeze mode
    CMD_GET_VIDEO_FREEZE_MODE,         // get video freeze mode
    CMD_SET_AUDIO_TRACK_PID,           // set audio PID
    CMD_GET_AUDIO_TRACK_PID,           // get aidop PID
    //14 is reserved

    CMD_SET_SEEK_POS = CMD_INVOKE_BASE + 15, // set seek by pos
    CMD_SET_EXT_SUBTITLE_FILE,         // set external subtitle file
    CMD_GET_EXT_SUBTITLE_FILE,         // get external subtitle file
    CMD_SET_TPLAY,                     // set TPlay
    CMD_GET_TPLAY,                     // get TPlay

    CMD_SET_AUDIO_VOLUME = CMD_INVOKE_BASE + 20, // set audio volume
    CMD_GET_AUDIO_VOLUME,              // get audio volume
    CMD_SET_SURFACE_SIZE,              // set player surface size
    CMD_GET_SURFACE_SIZE,              // get player surface size
    CMD_SET_SURFACE_POSITION,          // set player surface position

    CMD_GET_SURFACE_POSITION = CMD_INVOKE_BASE + 25, // get player surface position
    CMD_SET_SURFACE_RATIO,             // set player output ratio
    CMD_GET_SURFACE_RATIO,             // get player output ratio
    CMD_GET_FILE_INFO,                 // get media file info
    CMD_GET_PLAYER_INFO,               // set media file info

    CMD_GET_STREM_3DMODE = CMD_INVOKE_BASE + 30, // 30 get stream 3D mode
    CMD_SET_STREM_3DMODE,              // 31 set stream 3D mode
    CMD_GET_AUDIO_INFO,                // 32 get audio info
    CMD_GET_VIDEO_INFO,                // 33 get video info
    CMD_SET_3D_FORMAT,                 // 34 set 3d format
    CMD_SET_3D_STRATEGY,               // 35 set 3d strategy
    //36-99 is reserved

    CMD_SET_OUTRANGE = CMD_INVOKE_BASE + 100, // set video window range
    CMD_SET_SUB_ID,                    // set subtitle ID
    CMD_GET_SUB_ID,                    // get subtitle ID
    CMD_GET_SUB_INFO,                  // get subtitle info, subtitle Id、external/internal、sub_TITLE
    CMD_SET_SUB_FONT_SIZE,             // set font size

    CMD_GET_SUB_FONT_SIZE = CMD_INVOKE_BASE + 105, // get font size
    CMD_SET_SUB_FONT_POSITION,         // set subtitle position
    CMD_GET_SUB_FONT_POSITION,         // get subtitle position
    CMD_SET_SUB_FONT_HORIZONTAL,       // set subtitle horizontal position
    CMD_GET_SUB_FONT_HORIZONTAL,       // get subtitle horizontal position

    CMD_SET_SUB_FONT_VERTICAL = CMD_INVOKE_BASE + 110, // set subtitle vertical position
    CMD_GET_SUB_FONT_VERTICAL,         // get subtitle vertical position
    CMD_SET_SUB_FONT_ALIGNMENT,        // set subtitle alignment (Left/Center/Right)
    CMD_GET_SUB_FONT_ALIGNMENT,        // get subtitle alignment (Left/Center/Right)
    CMD_SET_SUB_FONT_COLOR,            // set font color 0xff0000ff -- ARGB, only for character subtitle

    CMD_GET_SUB_FONT_COLOR = CMD_INVOKE_BASE + 115, // get font color
    CMD_SET_SUB_FONT_BACKCOLOR,        // set font backcolor ARGB -32Bits, only for character subtitle
    CMD_GET_SUB_FONT_BACKCOLOR,        // get font backcolor
    CMD_SET_SUB_FONT_SHADOW,           // set font shadow, only for character subtitle
    CMD_GET_SUB_FONT_SHADOW,           // get font shadow

    CMD_SET_SUB_FONT_HOLLOW = CMD_INVOKE_BASE + 120, // set font hollow, only for character subtitle
    CMD_GET_SUB_FONT_HOLLOW,           // get font hollow
    CMD_SET_SUB_FONT_SPACE,            // set font space, only for character subtitle
    CMD_GET_SUB_FONT_SPACE,            // get font space
    CMD_SET_SUB_FONT_LINESPACE,        // set font linespace, only for character subtitle

    CMD_GET_SUB_FONT_LINESPACE = CMD_INVOKE_BASE + 125, // get font linespace
    CMD_SET_SUB_FONT_PATH,             // set font_file path
    CMD_GET_SUB_FONT_PATH,             // get font_file path
    CMD_SET_SUB_FONT_ENCODE,           // set font encode charset, only for character subtitle
    CMD_GET_SUB_FONT_ENCODE,           // get font encode charset

    CMD_SET_SUB_TIME_SYNC = CMD_INVOKE_BASE + 130, // set audio/video/subtitl sync timestamp
    CMD_GET_SUB_TIME_SYNC,             // get audio/video/subtitl sync timestamp
    CMD_SET_SUB_EXTRA_SUBNAME,         // set external subtitl file, can use while playing
    CMD_SET_SUB_FONT_STYLE,            // set font style, (normal, shadow, bold, hollow, italic, border), only for character subtitle
    CMD_GET_SUB_FONT_STYLE,            // set font style

    CMD_SET_SUB_DISABLE = CMD_INVOKE_BASE + 135, // set subtitle enable 1 is Open Subtitle, 0 is Close Subtitle
    CMD_GET_SUB_DISABLE,               // get subtitle enable Get Subtitle status. Check is Open or Close
    CMD_SET_SUB_LANGUAGE,              // set language, for charset recognization
    CMD_GET_SUB_LANGUAGE,              // get language
    CMD_GET_SUB_ISBMP,                 // get current subtitle is picture

    CMD_SET_SUB_CONFIG_PATH = CMD_INVOKE_BASE + 140, // set font_config_file path
    CMD_SET_VOLUME_LOCK,               // set mediaplayer volume lock
    CMD_GET_VOLUME_LOCK,               // get mediaplayer volume lock
    CMD_GET_AVPLAY_HANDLE = CMD_INVOKE_BASE + 143,       // get AVPlay handle
    //144-198 is reserved

    CMD_SET_STOP_FASTPLAY = CMD_INVOKE_BASE + 199, // stop fast forword/backword

    CMD_SET_FORWORD = CMD_INVOKE_BASE + 200, // fast forword
    CMD_SET_REWIND,                    // fast backword
    CMD_SET_ZOOMIN,                    // zoom in
    CMD_SET_ZOOMOUT,                   // zoom out
    CMD_SET_SLOWLY,                    // set play slowly

    CMD_GET_PID_NUMBER = CMD_INVOKE_BASE + 205, // get audio track count
    CMD_GET_PROGRAM_NUMBER,            // get program count
    CMD_GET_PROGRAM_STREAM_TYPE,       // get program stream type
    CMD_SET_NET_SURFACE_RECT,          // set net play surface
    //209-299 is reserved

    CMD_GET_HLS_STREAM_NUM = CMD_INVOKE_BASE + 300,            // get hls streams count
    CMD_GET_HLS_BANDWIDTH,                   // get real bandwidth while hls
    CMD_GET_HLS_STREAM_INFO,                 // get specified stream info while hls
    CMD_GET_HLS_SEGMENT_INFO,                // get downloading segment info while hls
    CMD_GET_PLAYLIST_STREAM_DETAIL_INFO,     //get hls stream detail info,include every seg info.

    CMD_SET_HLS_STREAM_ID = CMD_INVOKE_BASE + 305, // set indicated steam for playback while hls
    CMD_SET_BUFFERSIZE_CONFIG,         // set HiPlayer buffer config Kbytes
    CMD_GET_BUFFERSIZE_CONFIG,         // get HiPlayer Buffer config Kbytes
    CMD_SET_BUFFERTIME_CONFIG,         // set HiPlayer buffer config ms
    CMD_GET_BUFFERTIME_CONFIG,         // get HiPlayer Buffer config ms

    CMD_GET_BUFFER_STATUS = CMD_INVOKE_BASE + 310, // Get HiPlayer Buffer status(size Kbytes | time ms)
    CMD_GET_DOWNLOAD_SPEED,            // get DownloadSpeed bps
    CMD_SET_BUFFER_MAX_SIZE,           // set buffer maxsize Kbytes
    CMD_GET_BUFFER_MAX_SIZE,           // get buffer maxsize Kbytes

    CMD_SET_VIDEO_Z_ORDER,       // set vo z order

    CMD_SET_3D_SUBTITLE_CUT_METHOD = CMD_INVOKE_BASE + 315, // cut out tab/sbs subtitle method.Mass tab/sbs 3d file has two same
                                    // subtitle in two sides.we must cut out one sides subtitle to show
                                    // subtitle normal.but some other tab/sbs 3d file has just one subtitle,
                                    // so we should not cut out it.
    CMD_SET_BUFFER_UNDERRUN,        // set buffer underrun property
    CMD_SET_NOT_SUPPORT_BYTERANGE,
    CMD_SET_REFERER,
    CMD_SET_USER_AGENT,
    CMD_SET_DOLBY_RANGEINFO = CMD_INVOKE_BASE + 320,
    CMD_GET_DOLBYINFO,
    CMD_SET_AVSYNC_START_REGION,
    CMD_SET_DAC_DECT_ENABLE,
    CMD_SET_VIDEO_FPS,              // user request to set video's framerate
    CMD_SET_DOLBY_DRCMODE = CMD_INVOKE_BASE + 325,
    CMD_SET_VIDEO_SURFACE_OUTPUT,
    CMD_SET_WIN_FREEZE_MODE,
    CMD_SET_SUB_SURFACE  = CMD_INVOKE_BASE + 328,
    CMD_INPUT_AUDIO_CODEC_LIB,
    CMD_SET_VIDEO_FREE_RUN,         // 1: play video only, as fast as possible; 0: resume to normal play.
    CMD_SET_AUDIO_CHANNEL =  CMD_INVOKE_BASE + 331, //set the mode of audio channels.
    CMD_SET_LOW_DELAY,              // set low delay mode, should use before starting to play, 1: enable; 0:disable.
    CMD_SET_TIMESHIFT_DURATION,     // set duration of timeshift playing.
    CMD_SET_TPLAY_MODE,
    CMD_GET_IP_PORT,
    CMD_SET_TRACK_VOLUME = CMD_INVOKE_BASE + 400,
    CMD_GET_MEDIA_URL = CMD_INVOKE_BASE + 500,
    CMD_CONNECT_ID = CMD_INVOKE_BASE + 501,

    CMD_TYPE_BUTT = CMD_INVOKE_BASE + 1000,                     //unsurport ID
    CMD_YUNOS_SOURCE                   = 0x1f000000,
    CMD_YUNOS_TS_INFO                  = 0x1f000001,
    CMD_YUNOS_HTTP_DOWNLOAD_ERROR_INFO = 0x1f000002,
    CMD_YUNOS_MEDIA_INFO               = 0x1f000003,
} cmd_type_e;

typedef enum
{
    HI_VDEC_MODE_NORMAL = 0,           // Normal (IPB), all frames
    HI_VDEC_MODE_IP,                   // IP frame only
    HI_VDEC_MODE_I,                    // I frame only
    HI_VDEC_MODE_BUTT,
} frame_mode_e;

typedef enum
{
    HI_ASPECT_CVRS_FULL = 0,           // stretch/shink and full fill the window
    HI_ASPECT_CVRS_LETTERBOX,          // stretch/shink and fill black top/bottom, left/right
    HI_ASPECT_CVRS_PANANDSCAN,         // stretch/shink and crop top/bottom, left/right
    HI_ASPECT_CVRS_COMBINED,           // combined LETTERBOX & PANSCAN
    HI_ASPECT_CVRS_BUTT,
} aspect_cvrs_mode_e;

typedef enum
{
    HI_MUTE_STATUS_OFF = 0,            // Normal
    HI_MUTE_STATUS_ON,                 // Mute
    HI_MUTE_STATUS_BUTT,
} mute_status_e;

typedef enum
{
    HI_AUDIO_TRACK_MODE_STEREO = 0,    // stereo
    HI_AUDIO_TRACK_MODE_DOUBLE_MONO,   // mono
    HI_AUDIO_TRACK_MODE_DOUBLE_LEFT,   // double left: right copy from left
    HI_AUDIO_TRACK_MODE_DOUBLE_RIGHT,  // double right: left copy from right
    HI_AUDIO_TRACK_MODE_EXCHANGE,      // exchange, left to right, right to left
    HI_AUDIO_TRACK_MODE_ONLY_RIGHT,    // right only
    HI_AUDIO_TRACK_MODE_ONLY_LEFT,     // left only
    HI_AUDIO_TRACK_MODE_MUTED,         // mute
    HI_AUDIO_TRACK_MODE_BUTT,
} audio_track_mode_e;

typedef enum
{
    HI_AV_SYNC_MODE_PCR = 0,           // pcr sync mode
    HI_AV_SYNC_MODE_VIDEO,             // sync refer to video
    HI_AV_SYNC_MODE_AUDIO,             // sync refer to audio
    HI_AV_SYNC_MODE_OFF,               // free, no sync
    HI_AV_SYNC_MODE_BUTT,
} av_sync_mode_e;

typedef enum
{
    HI_VIDEO_FREEZE_MODE_LAST = 0,     // freeze, keep last frame
    HI_VIDEO_FREEZE_MODE_BLACK,        // freeze, keep black
    HI_VIDEO_FREEZE_MODE_BUTT,
} video_freeze_mode_e;

typedef enum
{
    HI_ASPECT_RATIO_UNKNOWN = 0,       // unknown
    HI_ASPECT_RATIO_4TO3,              // 4:3
    HI_ASPECT_RATIO_16TO9,             // 16:9
    HI_ASPECT_RATIO_SQUARE,            // square
    HI_ASPECT_RATIO_14TO9,             // 14:9
    HI_ASPECT_RATIO_221TO1,            // 221:100
    HI_ASPECT_RATIO_BUTT,
} aspect_ratio_e;

// add for invoke end

#ifdef __cplusplus__
}
#endif
#endif
