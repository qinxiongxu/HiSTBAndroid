#ifndef ANDROID_HIMEDIAPLAYER_H
#define ANDROID_HIMEDIAPLAYER_H

#include <utils/threads.h>
#include <gui/Surface.h>

#include "hi_type.h"
#include "hi_unf_avplay.h"
#include "hi_svr_player.h"
#include "hi_svr_proc.h"
#include "hi_unf_vo.h"
#include "hi_unf_so.h"
#include "StringArray.h"

#include "HiMediaPlayerBase.h"
#include "HiSubtitleManager.h"
#include "HiSurfaceSetting.h"
#include "HiVSink.h"
#include "HiASink.h"

#define ANDROID_LOOP_TAG "ANDROID_LOOP"
#define HIMEDIA_FREE_ALL_PROGRAMS(stFileInfo) \
    do{ \
        HI_U32 i = 0; \
        if (NULL != stFileInfo) \
        { \
            if (stFileInfo->pastProgramInfo != NULL) \
            { \
                for (i = 0; i < stFileInfo->u32ProgramNum; i++) \
                { \
                    HIMEDIA_FREE(stFileInfo->pastProgramInfo[i].pastVidStream); \
                    HIMEDIA_FREE(stFileInfo->pastProgramInfo[i].pastAudStream); \
                    HIMEDIA_FREE(stFileInfo->pastProgramInfo[i].pastSubStream); \
                } \
                HIMEDIA_FREE(stFileInfo->pastProgramInfo); \
                stFileInfo->pastProgramInfo = NULL; \
                stFileInfo->u32ProgramNum = 0; \
            } \
            HIMEDIA_FREE(stFileInfo); \
        } \
    }while(0)

namespace android
{
    typedef int (*complete_cb)(android::status_t status, void *cookie, bool cancelled);
    class AvPlayInfo
    {
        public:
          AvPlayInfo() : mAVPlayer(HI_INVALID_HANDLE), mWindow(HI_INVALID_HANDLE),
            mAudioTrack(HI_INVALID_HANDLE), mUse(false) {}

          HI_HANDLE mAVPlayer;
          HI_HANDLE mWindow;
          HI_HANDLE mAudioTrack;
          bool      mUse;
          bool      mUseVsinkWindow;
        public:
          void  setUse(bool flag)
          {
              mUse = flag;
          }
    };

    class AvPlayInstances
    {
        public:
            AvPlayInstances() : AvPlayCount(0) {}
            int AvPlayCount;
            Vector<AvPlayInfo*> mAVPlays;
    };

    struct Command
    {
public:
        enum code
        {
            CMD_PREPARE = 0,
            CMD_START,
            CMD_STOP,
            CMD_PAUSE,
            CMD_SUSPEND,
            CMD_RESUME = 5,
            CMD_SEEK,
            CMD_GETPOSITION,
            CMD_GETDURATION,
            CMD_ISPLAYING = 10,
            CMD_INVOKE,
            CMD_DESTROYPLAYER,
            CMD_SETVSINK,
        };
        Command(int t, HI_HANDLE handle, complete_cb c, void* ck = 0, int index = 0)
            : mType(t), mHandle(handle), mCb(c), mCookie(ck), mRet(HI_FAILURE), mId(index) {}
        int   getType()
        {
            return mType;
        }

        int   getRet()
        {
            return mRet;
        }

        int   getId()
        {
            return mId;
        }

        void* getCookie()
        {
            return mCookie;
        }

        HI_HANDLE getHandle()
        {
            return mHandle;
        }

        complete_cb getCb()
        {
            return mCb;
        }

        void  setRet(int ret)
        {
            mRet = ret;
        }

        void  setCookie(void* cookie)
        {
            mCookie = cookie;
        }

        void  setId(int id)
        {
            mId = id;
        }

        void  setCb(complete_cb cb)
        {
            mCb = cb;
        }

private:
        int          mType; // cmd type
        HI_HANDLE    mHandle; // hiplayer handle
        complete_cb  mCb;  // cmd complete callback
        void*        mCookie; // user data
        int          mRet; // ret code;
        int          mId;  // cmd seq index
    };

    class CommandPrepare : public Command
    {
public:
        CommandPrepare(HI_HANDLE handle, HI_SVR_PLAYER_MEDIA_S& pMediaParam, complete_cb cb = 0)
                                                                                                 :Command(CMD_PREPARE,handle,cb),mParam(pMediaParam){};
        HI_SVR_PLAYER_MEDIA_S getParam() { return mParam; }

private:
        CommandPrepare();
        HI_SVR_PLAYER_MEDIA_S mParam;
    };

    class CommandStart : public Command
    {
public:
        CommandStart(HI_HANDLE handle, complete_cb cb = 0)
                                                           :Command(CMD_START,handle,cb){};
private:
        CommandStart();
    };

    class CommandStop : public Command
    {
public:
        CommandStop(HI_HANDLE handle, complete_cb cb = 0)
                                                          :Command(CMD_STOP,handle,cb){};
private:
        CommandStop();
    };

    class CommandPause  : public Command
    {
public:
        CommandPause(HI_HANDLE handle, complete_cb cb = 0)
                                                           :Command(CMD_PAUSE,handle,cb){};
private:
        CommandPause();
    };

    class CommandSuspend  : public Command
    {
public:
        CommandSuspend(HI_HANDLE handle, complete_cb cb = 0)
                                                             :Command(CMD_SUSPEND,handle,cb){};
private:
        CommandSuspend();
    };

    class CommandResume : public Command
    {
public:
        CommandResume(HI_HANDLE handle, complete_cb cb = 0)
                                                            :Command(CMD_RESUME,handle,cb){};
private:
        CommandResume();
    };

    class CommandSeek : public Command
    {
public:
        CommandSeek(HI_HANDLE handle, int pos, complete_cb cb = 0)
                                                                   :Command(CMD_SEEK,handle,cb),mPos(pos){};
        int getPosition() { return mPos; }

private:
        CommandSeek();
        int mPos;
    };

    class CommandGetPosition : public Command
    {
public:
        CommandGetPosition(HI_HANDLE handle, int* pos, complete_cb cb = 0)
                                                                           :Command(CMD_GETPOSITION,handle,cb),mPos(pos){};
        int* getPosition() { return mPos; }

private:
        CommandGetPosition();
        int *mPos;
    };

    class CommandGetDuration : public Command
    {
public:
        CommandGetDuration(HI_HANDLE handle, int* dur, complete_cb cb = 0)
                                                                           :Command(CMD_GETDURATION,handle,cb),mDur(dur){};
        int* getDuration() { return mDur; }

private:
        CommandGetDuration();
        int *mDur;
    };

    class CommandIsPlaying  : public Command
    {
public:
        CommandIsPlaying(HI_HANDLE handle, bool* playing, complete_cb cb = 0)
                                                                              :Command(CMD_ISPLAYING,handle,cb),mPlaying(playing){};
        bool* getPlaying() { return mPlaying; }

private:
        CommandIsPlaying();
        bool* mPlaying;
    };

    class CommandInvoke : public Command
    {
public:
        CommandInvoke(HI_HANDLE handle, Parcel* req, Parcel* reply, complete_cb cb = 0)
                                                                                        :Command(CMD_INVOKE,handle,cb),mReq(req),mReply(reply){};
        Parcel* getRequest() { return mReq; }

        Parcel* getReply()   { return mReply; }

private:
        CommandInvoke();
        Parcel* mReq;
        Parcel* mReply;
    };

    class CommandDestroyPlayer : public Command
    {
public:
        CommandDestroyPlayer(HI_HANDLE handle, complete_cb cb = 0)
                                                          :Command(CMD_DESTROYPLAYER, handle, cb){};
private:
        CommandDestroyPlayer();
    };

    class CommandSetVsink : public Command
    {
public:
        CommandSetVsink(HI_HANDLE handle, sp<HiVSink>& oldVsink, sp<HiVSink>& newVsink, complete_cb cb = 0)
                                                          :Command(CMD_SETVSINK, handle, cb), mNewVsink(newVsink), mOldVsink(oldVsink){};
        HiVSink* getVsink() { return mNewVsink.get(); }
        void clearVsink() {
            mNewVsink.clear();
            mOldVsink.clear();
        };
private:
        sp<HiVSink> mNewVsink;
        sp<HiVSink> mOldVsink;
        CommandSetVsink();
    };

    class HiMediaPlayer : public HiMediaPlayerBase
    {
public:
        class CommandQueue : public RefBase
        {
public:

            enum state
            {
                STATE_IDLE,
                STATE_INIT,
                STATE_PLAY,
                STATE_FWD,
                STATE_REW,
                STATE_STOP,
                STATE_PAUSE,
                STATE_DESTROY,
                STATE_ERROR,
            };
            CommandQueue(HiMediaPlayer* player);
            ~CommandQueue();
            int enqueueCommand(Command * cmd);
            int dequeueCommand();
            int run();
            sp <HiMediaPlayer> getPlayer() { return mPlayer; };
            int wait();
            int signal();
            void          setState(int state) { mState = (int)state;}

            Command*        getCurCmd() { return mCurCmd; }
            HI_S32          getFileInfoWrapper(HI_HANDLE hPlayer);
            void            ReleaseFileInfoWrapper()
            {
                HIMEDIA_FREE_ALL_PROGRAMS(mpWrapperFileInfo);
            }
private:
            Vector <Command*>  mQueue;
            Command*      mCurCmd;
            Mutex mLock;         //for sched_thread and command complete sync
            Mutex mSubtitleLock; //for subTitle sync
            Mutex mCallbackLock; //for hiplayer async invoke callback
            Condition mSyncCond;     //for sync command complete
            Condition mCallbackCond; //for hiplayer async invoke sync
            Condition mThreadCond;   //for sched_thread and the main thread sync
            bool mExcuting;
            bool mIsPlayerDestroyed;
            int mCmdId;
            HiMediaPlayer*     mPlayer;
            int mState;
            int mCurSeekPoint;
            status_t mSyncStatus;
            int mSuspendState;
            HI_FORMAT_FILE_INFO_S *mpWrapperFileInfo; // fileinfo to user,e.g. delete the substream info for truehd
            int SetOutPutSettings();
            int completeCommand(Command * cmd);
            int doPrepare(Command * cmd);
            int doStart(Command * cmd);
            int doStop(Command * cmd);
            int doPause(Command * cmd);
            int doResume(Command * cmd);
            int doGetPosition(Command * cmd);
            int doGetDuration(Command * cmd);
            int doSeek(Command * cmd);
            int doIsPlaying(Command * cmd);
            int doInvoke(Command * cmd);
            int doDestroyPlayer(Command * cmd);
            int doSetVsink(Command* cmd);
            status_t setTrueHDSetting(HI_HANDLE handle);
            HI_U32 getTrueHDBySubAc3(HI_HANDLE handle, HI_U32 id);
            static int syncComplete(status_t status, void *cookie, bool cancelled);
            static int sched_thread(void* cookie);
            int AllocCopyFileInfo(HI_FORMAT_FILE_INFO_S *pDstFileInfo, HI_FORMAT_FILE_INFO_S * pSrcFileInfo);
            HI_VOID *HIMEDIA_MALLOCZ(HI_U32 size)
            {
                HI_VOID *ptr = malloc(size);

                if (ptr)
                {
                    memset(ptr, 0, size);
                }

                return ptr;
            }
        };

        class FdDelegate : public RefBase {
        public:
            FdDelegate(int fd) : mFd(dup(fd)) {}
            int getFd() {
                return mFd;
            }
            ~FdDelegate() {
                close(mFd);
            }
        private:
            FdDelegate() {};
            int mFd;
        };

        int setProcInfo(HI_U32 itime, HI_SVR_PLAYER_PROC_SWITCHPG_INFOTYPE_E etype);
        HI_SVR_PLAYER_PROC_SWITCHPG_S mProcInfo;

        HiMediaPlayer();
        HiMediaPlayer(void* userData);
        ~HiMediaPlayer();

        // HiMediaPlayerBase
        status_t DealPreInvokeSetting(const Parcel& request, Parcel *reply, int& HasDeal);
        virtual status_t  initCheck();
        virtual status_t  setDataSource( const char *uri,
                                           const KeyedVector <String8, String8> *headers);
        virtual status_t  setDataSource(int fd, int64_t offset, int64_t length);
        virtual status_t  prepare();
        virtual status_t  prepareAsync();
        virtual status_t  start();
        virtual status_t  stop();
        virtual status_t  pause();
        virtual bool      isPlaying();
        virtual status_t  seekTo(int msec);
        virtual status_t  getCurrentPosition(int* msec);
        virtual status_t  getDuration(int* msec);
        virtual status_t  reset();
        virtual status_t  setLooping(int loop);
        virtual status_t  setVolume(float leftVolume, float rightVolume);
        virtual Hi_PLAYER_TYPE playerType() { return HI_TYPE_PLAYER; }

        virtual status_t  suspend();
        virtual status_t  resume();
        virtual status_t  invoke(const Parcel& request, Parcel *reply);
        virtual status_t  getMetadata(const media::HiMetadata::Filter& ids, Parcel *records);
        virtual status_t  setSurfaceTexture(const sp<IGraphicBufferProducer> &bufferProducer);
        virtual status_t  getTrackInfo(Parcel* reply);
        virtual void      setAudioSink(const sp<MediaPlayerBase::AudioSink> &audioSink);


        // Hisi External Subtitle display surface
        virtual status_t  setSubSurface(const sp <Surface>& surface);
        virtual status_t  setSubSurface(ANativeWindow* pNativeWindow, bool isXBMC = false);
        virtual status_t  getSubString(unsigned char* pSubString);

        // Hisi Video Output Surface Attr Control
        virtual status_t  updateVideoPosition(int x, int y, int w, int h);
        virtual status_t  setOutRange(int left, int top, int width, int height);
        status_t          resetOutRange();
        virtual status_t  setVideoRatio(int width, int height);
        virtual status_t  setVideoScaling(int scalingmode);
        virtual status_t  setVideoCvrs(int cvrs);
        virtual status_t  setVideoZOrder(int ZOrder);
        virtual status_t  setWindowFreezeStatus(int flag);
        int               prepare_l(int, bool);
        virtual status_t  SetStereoVideoFmt(int VideoFmt);
        virtual void      SetStereoStrategy(int Strategy);
        virtual status_t  getParameter(int key, Parcel *reply);
        virtual status_t  setParameter(int key, const Parcel &request);
        int               getTrueHDSetting();
        status_t          setSubFramePack(int type);
        Vector< sp<FdDelegate> > mFdDelegates;
        sp <CommandQueue> mCmdQueue;
        HI_HANDLE         mAVPlayer;
        bool              mUseExtAVPlay;
        int               mUnderrun;

        HI_HANDLE         mSoHandle;
        bool              mReset;

        bool              mIsTimedTextTrackEnable;
        bool              mIsSubtitleDataTrackEnable;
        int               mPrepareResult;
        virtual status_t  AddTimedTextSource(const Parcel& request);
        virtual status_t  selectTrack(int trackIndex, bool select);
        status_t          selectAudioTrack(int trackIndex);
        status_t          selectSubtitleTrack(int trackIndex);
        virtual int       SetOrigAndroidPath(int flags);
        int               AddExtTimedTextStream(const char *pTimedTextFilePath);
        static status_t   getAudioCodecFormat(HI_S32 s32AudioFormat, HI_CHAR * pszAudioCodec);
        status_t          getVideoCodecFormat(HI_S32 s32VideoFormat, HI_CHAR * pszVideoCodec);
        static status_t   getAudioChannelString(HI_S32 s32AudioChannel, HI_CHAR * pszAudioChannel);

        HI_HANDLE getHandle()
        {
            return mHandle;
        };

        static HI_S32   destroyStaticAVPlayer();
private:
        bool mSetdatasourcePrepare;
        bool mHasPrepared;
        bool mOrigAndroidPath;
        StringArray mTimedTextStringArray;
        int mTotalTrackCount;
        int mAudioTrackCount;
        int mVideoTrackCount;
        int mSubtitleTrackCount;
        int mCurAudioTrackID;
        int mState;
        bool mLoop;
        HI_HANDLE mHandle;
        HI_HANDLE mWindow;
        HI_HANDLE mAudioTrack;
        HI_U64 mDuration;
        int mPosition;
        HI_SVR_PLAYER_MEDIA_S mMediaParam;// to store the media source url
        HI_FORMAT_FILE_INFO_S* mpFileInfo;
        bool mPrepareAsync;              // to detect which type prepare API Called
        Condition mCondition;
        bool mFirstPlay;
        bool mStaticAvplay;
        int mTureHD;
        int mVolumeLock;             // volume adjustable
        HI_UNF_SND_GAIN_ATTR_S stGain;
        int  mIsNotSupportByteRange;  //http protocol must not has byte range info in the http request in some condition
        char *mstrUserAgent;
        char *mstrReferer;
        bool mIsPrepared;
        HI_UNF_WINDOW_FREEZE_MODE_E mWndFreezeMode;
        bool mIsBufferStart;
        int mPreOutputFormat;
        bool mUseStaticResource;
        int mTimeShiftDuration;
        int mYunosSource;
        HI_S32 mS32ErrorCode;
        char mUUID[HI_FORMAT_TITLE_MAX_LEN];
        /* subtitle type, SUB_DEFAULT_FRAME_PACK:auto recognise,  0:normal 2d subtitle, 1:sbs subtitle, 2:tab subtitle */
        int mSubFramePackType;

        /* Value is:
               * DP_STRATEGY_ADAPT_MASK : 0x0001
               * DP_STRATEGY_2D_MASK      : 0x0002
               * DP_STRATEGY_3D_MASK      : 0x0004
               * DP_STRATEGY_24FPS_MASK : 0x0008
               */
        int mDisplayStrategy;
        sp<ANativeWindow> mNativeWindow;
        sp<ANativeWindow> mSubTitleNativeWindow;
        int setSubtitleNativeWindow(const Parcel& subSurface);
        sp<HiVSink> mVSink;
        sp<HiASink> mASink;
        bool mNonVSink;
        sp <Surface> mSurface;
        sp <surfaceSetting>  mSurfaceSetting;
        status_t setNativeWindow_l(const sp<ANativeWindow> &native);
        bool          AppendStringMeta(int key, char *val, Parcel *records);
        bool          AppendByteMeta(int key, char *val, int size, Parcel *records);
        sp <surfaceSetting> getSurfaceSetting();
        sp <subManager>  mSubManager;
        sp <subManager> getSubManager();

        int           dumpFileInfo(HI_FORMAT_FILE_INFO_S *pstFileInfo);
        int           findValidSndPortId();
        int           clearValidSndPortId(int index);

        static int      mInstCount;
        static Mutex    mInstMutex;
        static Mutex    mCreateAvplayMutex;
        static int      hiPlayerEventCallback(HI_HANDLE hPlayer, HI_SVR_PLAYER_EVENT_S *pstruEvent);
        static KeyedVector <HI_HANDLE, HiMediaPlayer*>  mInstances;
        friend  class   CommandQueue;
        static HI_S32   streamIFrameErrorCB(HI_HANDLE hAvPlayer, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 u32Para);
        static HI_S32   streamNormSwitchCB(HI_HANDLE hAvPlayer, HI_UNF_AVPLAY_EVENT_E enEvent, HI_U32 u32Para);
        static HiMediaPlayer* getHiMediaPlayerByAVPlayer(HI_HANDLE hAvPlayer);
        int             createHiplayer();
        void            destroyHiPlayer();
        int             initResource();
        int             reCreateAvplay();
        int             mallocAvPlayResource();
        int             createAVPlay();
        int             destroyAVPlay();
        status_t        storeTimedTextData(const char * data, int size, int timeMs, Parcel * parcel);
        status_t        transStringcode(HI_CHAR * ps8In, HI_S32 s32InLen, HI_CHAR * ps8Out, HI_S32 * ps32OutLen);
        bool            IsMustASyncPrepareUrl(char *uri);
        bool            IsUseVsinkWindow();
        status_t        SendPrepareMessage();
        status_t        CreateAsinkAudioTrack();
        void            SetDatasourcePrepare(char *uri);
        int             storeSubtitleData(HI_HANDLE handle, const char * data, int size, int durationMs, int64_t n64Start, Parcel * parcel);
        enum {
                // These keys must be in sync with the keys in TimedText.java
                KEY_DISPLAY_FLAGS                 = 1, // int
                KEY_STYLE_FLAGS                   = 2, // int
                KEY_BACKGROUND_COLOR_RGBA         = 3, // int
                KEY_HIGHLIGHT_COLOR_RGBA          = 4, // int
                KEY_SCROLL_DELAY                  = 5, // int
                KEY_WRAP_TEXT                     = 6, // int
                KEY_START_TIME                    = 7, // int
                KEY_STRUCT_BLINKING_TEXT_LIST     = 8, // List<CharPos>
                KEY_STRUCT_FONT_LIST              = 9, // List<Font>
                KEY_STRUCT_HIGHLIGHT_LIST         = 10, // List<CharPos>
                KEY_STRUCT_HYPER_TEXT_LIST        = 11, // List<HyperText>
                KEY_STRUCT_KARAOKE_LIST           = 12, // List<Karaoke>
                KEY_STRUCT_STYLE_LIST             = 13, // List<Style>
                KEY_STRUCT_TEXT_POS               = 14, // TextPos
                KEY_STRUCT_JUSTIFICATION          = 15, // Justification
                KEY_STRUCT_TEXT                   = 16, // Text

                KEY_GLOBAL_SETTING                = 101,
                KEY_LOCAL_SETTING                 = 102,
                KEY_START_CHAR                    = 103,
                KEY_END_CHAR                      = 104,
                KEY_FONT_ID                       = 105,
                KEY_FONT_SIZE                     = 106,
                KEY_TEXT_COLOR_RGBA               = 107,
            };

        static int      TimedTextOndraw(int u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, void *pArg);
        static int      TimedTextOnclear(int u32UserData, void *pArg);
        static AvPlayInstances mAVPlayInstances;
    };
    enum{
          HA_AUD_CH_MONO = 1,
          HA_AUD_CH_STEREO,
          HA_AUD_CH_3_0,
          HA_AUD_CH_4_0,
          HA_AUD_CH_5_0,
          HA_AUD_CH_5_1,
          HA_AUD_CH_7_1,
         };

    enum ANDROID_ERROR_EXTRA_Mobaihe
    {
        /* for adapting mobaihe event info  */
        MEDIA_INFO_EXTEND_BUFFER_LENGTH = 5000,
        MEDIA_INFO_EXTEND_FIRST_FRAME_TIME = 5001,
    };

}; // namespace
#endif
