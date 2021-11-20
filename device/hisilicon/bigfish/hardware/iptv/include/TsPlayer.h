#ifndef _TSPLAYER_H_
#define _TSPLAYER_H_
#include <stdio.h>
#include <stdlib.h>
extern "C" {
#include "vformat.h"
#include "aformat.h"
#include "hi_type.h"
#include "hi_adp_search.h"
#include "hi_unf_subt.h"
}

#include <utils/threads.h>
#include <utils/RefBase.h>


#include <gui/Surface.h>

using namespace android;

#define PADPT_AUDIO_MAX_DMX_CHN           (32)        /**< sum of demux channel can be opened */
#define MAX_PROGRAM_CHAN                  (16)

#define TRICKMODE_NONE       0x00
#define TRICKMODE_I          0x01
#define TRICKMODE_FFFB       0x02

typedef struct{
    unsigned short    pid;//pid
    int               nVideoWidth;//video width
    int               nVideoHeight;//video height
    int               nFrameRate;//frame rate
    vformat_t         vFmt;//video format
    unsigned long     cFmt;//audio format
}VIDEO_PARA_T;//, *PVIDEO_PARA_T;

typedef struct{
    unsigned short    pid;//pid
    int               nChannels;//audio channel num
    int               nSampleRate;//sampling rate
    aformat_t         aFmt;//audio format
    int               nExtraSize;
    unsigned char*    pExtraData;
}AUDIO_PARA_T;// *PAUDIO_PARA_T;

typedef struct{
    HI_U32 u32SubtPID;      /* Subtitle pid for playing subtitle */
    HI_U16 u16PageID;       /* Subtitle page id */
    HI_U16 u16AncillaryID;  /* Subtitle ancillary id */
}SUBT_PARA_T;

/** PLAYER state */
typedef enum hiTS_PLAYER_STATE_E
{
    HI_TSPLAYER_STATE_INI = 0,    /**< player in init state, when the player created, it is in init state*/
    HI_TSPLAYER_STATE_DEINI,      /**< player in deinit state*/
    HI_TSPLAYER_STATE_PLAY,       /**< player play state*/
    HI_TSPLAYER_STATE_FAST,       /**< player in FF or FB state*/
    HI_TSPLAYER_STATE_PAUSE,      /**< player in Pause state*/
    HI_TSPLAYER_STATE_STOP,       /**< player in Stop state*/
    HI_TSPLAYER_STATE_BUTT
} HI_TSPLAYER_STATE_E;

/** Subtitle stream info */
typedef struct tagSUBT_INFO_S
{
    unsigned int                u32SubTitleNum;
    bool                        bExtSubTitle;
    SUBT_PARA_T                 astSubtilePara[256];
}TS_SUBT_INFO_S;

typedef struct hiTS_PROGRAM_INFO_S
{
    VIDEO_PARA_T stVidStream;                                   /**< video stream info*/
    HI_U32 u32AudStreamNum;                                     /**< audio stream number */
    AUDIO_PARA_T astAudStream[PADPT_AUDIO_MAX_DMX_CHN];         /**< audio stream info */
    HI_U32 u32SubTitleNum;                                      /**< subtitle num */
    SUBT_PARA_T astSubTitle[256];                               /**< subtitle info */
} TS_PROGRAM_INFO_S;

/** video,audio ,subtitle id attr */
typedef struct hiTS_STREAMID_S
{
    HI_U32 u32ProgramId;   /**< program id */
    HI_U32 u32VStreamId;   /**< video stream id*/
    HI_U32 u32AStreamId;   /**< audio stream id*/
    HI_U32 u32SubTitleId;  /**< subtitle id*/
} TS_STREAMID_S;

/** Media file information */
/** media file info */
typedef struct hiFORMAT_FILE_INFO_S
{
    HI_S64  s64FileSize;                    /**< File size, in the unit of byte. */
    HI_S64  s64StartTime;                   /**< Start time of playing a file, in the unit is ms.  */
    HI_S64  s64Duration;                    /**< Total duration of a file, in the unit of ms.  */
    HI_U32  u32Bps;                         /**< File bit rate, in the unit of bit/s. */
    HI_U32  u32ProgramNum;                  /**< Actual number of programs */
    TS_PROGRAM_INFO_S astProgramInfo[MAX_PROGRAM_CHAN];    /**< Program information */
} TS_FILE_INFO_S;

/** information of current pts */
typedef struct tagSVR_PADPT_CURPTS_S
{
    HI_S64 s64FirstAPts;   /**< pts of first audio frame */
    HI_S64 s64FirstVPts;   /**< pts of first video frame */
    HI_S64 s64CurAPts;     /**< pts of current audio frame */
    HI_S64 s64CurVPts;     /**< pts of current video frame */
    HI_S64 s64LocalTime;   /**< local time */
    HI_S64 s64VBufUsed;    /**< Video buffer used size */
    HI_S64 s64ABufUsed;    /**< Audio buffer used size */
} SVR_PADPT_CURPTS_S;

/** SO callback info */
typedef struct tagTS_SO_CALLBACK_INFO_S
{
    TS_FILE_INFO_S      *pstFileInfo;
    TS_STREAMID_S       *pStreamID;
    HI_HANDLE            hAvplay;
    HI_BOOL             bExtSubTitle;
}TS_SO_CALLBACK_INFO_S;

typedef enum
{

    IPTV_PLAYER_EVT_STREAM_VALID=0,

    IPTV_PLAYER_EVT_FIRST_PTS,     //first frame decoded event

    IPTV_PLAYER_EVT_VOD_EOS,       //VOD EOS event

    IPTV_PLAYER_EVT_ABEND,         //under flow event

    IPTV_PLAYER_EVT_PLAYBACK_ERROR,// playback error event
}IPTV_PLAYER_EVT_e;


/*
* Note  : Struct CTC_SUBT_PARM_S used for CTC_MediaProcessor Subtitle Info
* which get from application.
* param :
* u32SubtNum --- number of subtitle in stream
* u32SubtChannelSelect --- if Multiple Subtitle ,select a Channel. Start with 0. If only one subtitle set 0.
* eSubtType  --- Type of Subtitle default 'DVB' = 0x01
* stSubtItem --- Info of Subtitle include PID , page id , ancillary id
*/
typedef struct tagCTC_SUBT_PARM_S
{
    HI_U32 u32SubtNum;
    HI_U8  u8SubtChannelSelect;
    HI_UNF_SUBT_DATA_TYPE_E eSubtType;
    HI_UNF_SUBT_ITEM_S stSubtItem[SUBT_ITEM_MAX_NUM];
}CTC_SUBT_PARM_S;


typedef void (*IPTV_PLAYER_EVT_CB)(IPTV_PLAYER_EVT_e evt, void *handler);

class CTsPlayer;

class CTC_MediaProcessor{
    public:
        CTC_MediaProcessor(){}
        virtual ~CTC_MediaProcessor(){}
    public:
        //get the play mode
        virtual int  GetPlayMode()=0;
        //set window coordinate
        virtual int  SetVideoWindow(int x,int y,int width,int height)=0;
        //display video
        virtual int  VideoShow(void)=0;
        //hide video
        virtual int  VideoHide(void)=0;
        //init video para
        virtual void InitVideo(VIDEO_PARA_T* pVideoPara)=0;
        //init audio para, pAudioParam is the track list
        virtual void InitAudio(AUDIO_PARA_T* pAudioPara)=0;
        //start play
        virtual bool StartPlay()=0;
        //put tsbuf
        virtual int WriteData(unsigned char* pBuffer, unsigned int nSize)=0;
        //pause play
        virtual bool Pause()=0;
        //resume play
        virtual bool Resume()=0;
        //trick play
        virtual bool Fast()=0;
        //stop trick play
        virtual bool StopFast()=0;
        //stop
        virtual bool Stop()=0;
        //seek
        virtual bool Seek()=0;
        //set the volume
        virtual bool SetVolume(int volume)=0;
        //get the volume
        virtual int GetVolume()=0;
        //set the window ratio
        virtual bool SetRatio(int nRatio)=0;
        //get current audio channel
        virtual int GetAudioBalance()=0;
        //set audio channel
        virtual bool SetAudioBalance(int nAudioBalance)=0;
        //get the video resolution ratio
        virtual void GetVideoPixels(int& width, int& height)=0;

        virtual bool IsSoftFit()=0;
        virtual void SetEPGSize(int w, int h)=0;
        virtual void SetSurface(Surface* pSurface)=0;
        //switch audio track, pid is the new audio PID
        virtual void SwitchAudioTrack(int pid) = 0;
        //switch subtitle, pid is the new subtitle PID,
        virtual void SwitchSubtitle(int pid) = 0;
        //setting of audio and video attr
        virtual void SetProperty(int nType, int nSub, int nValue) = 0;
        //get the play time, ms
        virtual long GetCurrentPlayTime() = 0;
        //leave channel
        virtual void leaveChannel() = 0;

        virtual void playerback_register_evt_cb(IPTV_PLAYER_EVT_CB pfunc, void *hander) = 0;
        virtual int EnableSubtitle(CTC_SUBT_PARM_S *pstSubParam) = 0;
};



class CTsPlayer : public CTC_MediaProcessor{
    public:
        CTsPlayer();
        virtual ~CTsPlayer();
    public:
        //get the play mode
        virtual int  GetPlayMode();
        //set window coordinate
        virtual int  SetVideoWindow(int x,int y,int width,int height);
        //display video
        virtual int  VideoShow(void);
        //hide video
        virtual int  VideoHide(void);
         //init video para
        virtual void InitVideo(VIDEO_PARA_T* pVideoPara);
        //init audio para, pAudioParam is the track list
        virtual void InitAudio(AUDIO_PARA_T* pAudioPara);
        //start to play
        virtual bool StartPlay();
        //put ts buff
        virtual int WriteData(unsigned char* pBuffer, unsigned int nSize);
        //pause play
        virtual bool Pause();
        //resume play
        virtual bool Resume();
        //trick play
        virtual bool Fast();
        //stop trick play
        virtual bool StopFast();
        //stop
        virtual bool Stop();
         //seek
        virtual bool Seek();
        //set the volume
        virtual bool SetVolume(int volume);
        //get the volume
        virtual int GetVolume();
        //set the window ratio
        virtual bool SetRatio(int nRatio);
        //get current audio channel
        virtual int GetAudioBalance();
        //set audio channel
        virtual bool SetAudioBalance(int nAudioBalance);
        //get the video resolution ratio
        virtual void GetVideoPixels(int& width, int& height);

        virtual bool IsSoftFit();
        virtual void SetEPGSize(int w, int h);
        virtual void SetSurface(Surface* pSurface);

        //switch audio track, pid is the new audio PID
        virtual void SwitchAudioTrack(int pid);
        //switch subtitle, pid is the new subtitle PID,
        virtual void SwitchSubtitle(int pid);
        //setting of audio and video attr
        virtual void SetProperty(int nType, int nSub, int nValue);
        //get the play time, ms
        virtual long GetCurrentPlayTime();
        //leave channel
        virtual void leaveChannel();
        virtual void playerback_register_evt_cb(IPTV_PLAYER_EVT_CB pfunc, void *hander);

        //hisi private interface, support set eos event
        virtual bool SetEos();
        virtual int EnableSubtitle(CTC_SUBT_PARM_S *pstSubParam);

    protected:
        int        m_bLeaveChannel;

    private:

        HI_HANDLE                    hSo;
        HI_HANDLE                    hSubt;
        HI_HANDLE                    hDmxId;
        HI_HANDLE                    hSubTitle;
        HI_HANDLE                   hTsBuf;
        HI_UNF_AVPLAY_ATTR_S        AvplayAttr;
        HI_UNF_SYNC_ATTR_S          SyncAttr;
        bool                        bVidStart;
        bool                        bAudStart;
        HI_BOOL                     bExtSubTitle;
        bool                        bIsPrepared;
        bool                        bNeedBlackDisp;
        HI_UNF_SND_GAIN_ATTR_S      stGain;
        unsigned int                u32DispWidth;
        unsigned int                u32DispHeight;
        unsigned int                u32SndPort;
        unsigned int                u32MixHeight;

        TS_FILE_INFO_S              stFileInfo;
        TS_STREAMID_S               stStreamID;

        TS_SO_CALLBACK_INFO_S       stSoCallbackInfo;

        PMT_COMPACT_TBL             *pProgTbl;

        HI_BOOL                     bUseSubtitle;

        int  MediaDeviceInit();
        bool MediaDeviceDeinit();
        bool MediaDeviceCreate();
        bool MediaDeviceDestroy();
        bool ReSetWindowAttr();

        HI_S32  SetAudStream();

        HI_S32 HIADP_VO_Init(HI_UNF_VO_DEV_MODE_E enDevMode);
        HI_S32 HIADP_VO_DeInit();

        HI_S32 HIADP_AVPlay_SetVdecAttr(HI_HANDLE hAvplay,HI_UNF_VCODEC_TYPE_E enType,HI_UNF_VCODEC_MODE_E enMode);

        HI_S32 HIADP_IPTV_Disp_Init();
        HI_S32 HIADP_IPTV_Disp_DeInit(HI_VOID);
        HI_S32 HIADP_IPTV_Snd_Init(HI_VOID);
        HI_S32 HIADP_IPTV_Snd_DeInit(HI_VOID);

        /* Subtitle Function */
        HI_S32 CreateSubtitleDecoder(CTC_SUBT_PARM_S *pstSubtitleParam);
        HI_S32 FilterDataCallback(HI_U32 u32UserData, HI_U8 *pu8Data, HI_U32 u32DataLength);
        HI_S32 SubtitlOutputInit();
        HI_S32 SubtitlOutputCreate();
        HI_S32 DeInitSubtitle();
        HI_S32 DestroySubutile();

#ifdef SUBTITLE
        HI_S32 SetTsSubStream(HI_U32 u32SubtPID, HI_U16 u16PageID, HI_U16 u16AncillaryID);
#endif
};

CTC_MediaProcessor* GetMediaProcessor();
int GetMediaProcessorVersion();

#endif
