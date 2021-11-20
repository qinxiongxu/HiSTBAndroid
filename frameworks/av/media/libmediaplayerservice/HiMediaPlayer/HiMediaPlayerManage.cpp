/* mediaplayer.cpp
**
** Copyright 2006, The Android Open Source Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/

#define LOG_NDEBUG 0
#define LOG_TAG "HiMediaPlayerManage"

#include <utils/Log.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <utils/KeyedVector.h>
#include <utils/String8.h>

#include "HiMediaDefine.h"
#include "HiMediaPlayerManage.h"
#include "HiMediaPlayer.h"


namespace android
{
    HiMediaPlayerManage::HiMediaPlayerManage()
    {
        LOGV("Call %s IN", __FUNCTION__);
        mListener = NULL;
        mCookie = NULL;
        mDuration   = -1;
        mStreamType = AUDIO_STREAM_MUSIC;
        mCurrentPosition = -1;
        mSeekPosition = -1;
        mCurrentState = MEDIA_PLAYER_IDLE;
        mPrepareSync   = false;
        mPrepareStatus = NO_ERROR;
        mLoop = false;
        mLeftVolume     = mRightVolume = 1.0;
        mVideoWidth     = mVideoHeight = 0;
        mLockThreadId   = 0;
        mSendLevel  = 0;
        mIsStarting = 0;

        mVideoSurfaceX = mVideoSurfaceY = -1;
        mVideoSurfaceWidth = mVideoSurfaceHeight = -1;
        mIsSeeking = 0;

        /*create player for setting video surface*/
        sp <HiMediaPlayerBase> player = createPlayer(HI_TYPE_PLAYER, notify);
        attachNewPlayer(player);
    }

    HiMediaPlayerManage::~HiMediaPlayerManage()
    {
        LOGV("Call %s IN", __FUNCTION__);
    }

    status_t HiMediaPlayerManage::initCheck() {
        LOGV("initCheck");
        return OK;
    }

    status_t HiMediaPlayerManage::setUID(uid_t uid) {
        //mPlayer->setUID(uid);
        return OK;
    }

    status_t HiMediaPlayerManage::getTrackInfo(Parcel* reply) {

        status_t status = OK;
        if (mPlayer == NULL)
        {
            return NO_INIT;
        }

        status = mPlayer->getTrackInfo(reply);  // calling to HiMediaPlayer
        if (status != OK)
        {
            return status;
        }
        return OK;
    }

    status_t HiMediaPlayerManage::setDataSource(const char *url, const KeyedVector <String8, String8> *headers)
    {
        LOGV("Call %s IN", __FUNCTION__);
        LOGV("HiMediaPlayerManage setDataSource(%s)", url);
        status_t err = BAD_VALUE;
        if (url != NULL)
        {
            mPlayer->SetOrigAndroidPath(1);
            err = mPlayer->setDataSource(url, headers);
        }

        return err;
    }

    status_t HiMediaPlayerManage::setDataSource(int fd, int64_t offset, int64_t length)
    {
        LOGV("Call %s IN", __FUNCTION__);
        LOGV("setDataSource(%d, %lld, %lld)", fd, offset, length);
        status_t err = BAD_VALUE;
        struct stat sb;
        int ret = fstat(fd, &sb);
        if (ret != 0)
        {
            LOGE("fstat(%d) failed: %d, %s", fd, ret, strerror(errno));
            return UNKNOWN_ERROR;
        }

        LOGV("st_dev  = %llu", sb.st_dev);
        LOGV("st_mode = %u", sb.st_mode);
        LOGV("st_uid  = %lu", sb.st_uid);
        LOGV("st_gid  = %lu", sb.st_gid);
        LOGV("st_size = %llu", sb.st_size);

        if (offset >= sb.st_size)
        {
            LOGE("offset error");
            ::close(fd);
            return UNKNOWN_ERROR;
        }
        if (offset + length > sb.st_size)
        {
            length = sb.st_size - offset;
            LOGV("calculated length = %lld", length);
        }
        if (fd && mPlayer != NULL)
        {
            mPlayer->SetOrigAndroidPath(1);
            err = mPlayer->setDataSource(fd, offset, length);
        }

        return err;
    }

    status_t HiMediaPlayerManage::setDataSource(const sp<IStreamSource> &source)
    {
        /*mFirstPlay = true;
        mStreamSourceDemux = new HiMediaStreamSourceDemux(source);

        TRACE();
        strncpy(mMediaParam.aszUrl, mStreamSourceDemux->GetPath(), (size_t)HI_FORMAT_MAX_URL_LEN - 1);
        */

        return NO_ERROR;
    }

    status_t HiMediaPlayerManage::setVideoSurfaceTexture(
            const sp<IGraphicBufferProducer>& bufferProducer) {
        LOGV("setVideoSurfaceTexture");
        LOGV("HiMediaPlayerManage::setVideoSurfaceTexture:%p", bufferProducer.get());

        if (mPlayer != NULL)
            return mPlayer->setSurfaceTexture(bufferProducer);
        else
            return NO_INIT;
    }

    status_t HiMediaPlayerManage::prepare()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        mLockThreadId = getThreadId();
        if (mPrepareSync)
        {
            LOGE("%s Already prepared", LOG_TAG);
            mLockThreadId = 0;
            return -EALREADY;
        }

        mPrepareSync = true;
        status_t ret = prepareAsync_l();
        if (ret != NO_ERROR)
        {
            mLockThreadId = 0;
            LOGE("prepareAsync_l fail");
            return ret;
        }

        if (mPrepareSync)
        {
            mSignal.wait(mLock);  // wait for prepare done
            mPrepareSync = false;
        }

        LOGV(" prepare complete - status=%d", mPrepareStatus);
        mLockThreadId = 0;
        return mPrepareStatus;
    }

    // must call with lock held
    status_t HiMediaPlayerManage::prepareAsync_l()
    {
        LOGV("Call %s IN", __FUNCTION__);
        if ((mPlayer != NULL) && (mCurrentState & (MEDIA_PLAYER_INITIALIZED | MEDIA_PLAYER_STOPPED)))
        {
            //mPlayer->setAudioStreamType(mStreamType);
            mCurrentState = MEDIA_PLAYER_PREPARING;
            LOGD("TIMEDTEXT in HiMediaPlayerManage::prepareAsync_l enter, ready to update timedtextflag");
            return mPlayer->prepareAsync();
        }

        LOGV("prepareAsync called in state %d", mCurrentState);
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::prepareAsync()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        mLockThreadId = getThreadId();
        status_t Re = prepareAsync_l();
        mLockThreadId = 0;
        return Re;
    }

    status_t HiMediaPlayerManage::start()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        status_t ret = INVALID_OPERATION;
        mIsStarting = 1;
        if (mCurrentState & MEDIA_PLAYER_STARTED)
        {
            ret = NO_ERROR;
            goto RE;
        }

        if ((mPlayer != NULL) && (mCurrentState & (MEDIA_PLAYER_STOPPED | MEDIA_PLAYER_PREPARED |
                                                MEDIA_PLAYER_PLAYBACK_COMPLETE | MEDIA_PLAYER_PAUSED)))
        {
            //add for first progress report,fix camera recording block
            mLockThreadId = getThreadId();
            mPlayer->setLooping(mLoop);
            //mPlayer->setVolume(mLeftVolume, mRightVolume);
            mCurrentState = MEDIA_PLAYER_STARTED;
            ret = mPlayer->start();
            if (ret != NO_ERROR)
            {
                mCurrentState = MEDIA_PLAYER_STATE_ERROR;
            }
            else
            {
                if (mCurrentState == MEDIA_PLAYER_PLAYBACK_COMPLETE)
                {
                    LOGV("playback completed immediately following start()");
                }
            }

            /* reset the VideoSurface(x,y,w,h) after setting DataSource. */
            mLockThreadId = 0;
            goto RE;
        }
RE:
        mIsStarting = 0;
        return ret;
    }

    status_t HiMediaPlayerManage::stop()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mCurrentState & MEDIA_PLAYER_STOPPED)
        {
            return NO_ERROR;
        }

        if ((mPlayer != NULL) && (mCurrentState & (MEDIA_PLAYER_STARTED | MEDIA_PLAYER_PREPARED |
                                                MEDIA_PLAYER_PAUSED | MEDIA_PLAYER_PLAYBACK_COMPLETE)))
        {
            LOGV("Call Player Stop");
            status_t ret = mPlayer->stop();
            if (ret != NO_ERROR)
            {
                mCurrentState = MEDIA_PLAYER_STATE_ERROR;
            }
            else
            {
                mCurrentState = MEDIA_PLAYER_STOPPED;
            }

            return ret;
        }

        LOGE("stop called in state %d", mCurrentState);
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::pause()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mCurrentState & (MEDIA_PLAYER_PAUSED | MEDIA_PLAYER_PLAYBACK_COMPLETE))
        {
            return NO_ERROR;
        }

        if ((mPlayer != NULL) && (mCurrentState & MEDIA_PLAYER_STARTED))
        {
            status_t ret = mPlayer->pause();
            if (ret != NO_ERROR)
            {
                mCurrentState = MEDIA_PLAYER_STATE_ERROR;
            }
            else
            {
                mCurrentState = MEDIA_PLAYER_PAUSED;
            }

            return ret;
        }

        LOGE("pause called in state %d", mCurrentState);
        return INVALID_OPERATION;
    }

    bool HiMediaPlayerManage::isPlaying()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);

        if (mPlayer != NULL)
        {
            bool temp = false;
            temp = mPlayer->isPlaying();
            LOGV("isPlaying: %d", temp);
            if ((mCurrentState & MEDIA_PLAYER_STARTED) && !temp)
            {
                LOGE("internal/external state mismatch corrected");
                mCurrentState = MEDIA_PLAYER_PAUSED;
            }

            return temp;
        }

        LOGV("isPlaying: no active player");
        return false;
    }

    status_t HiMediaPlayerManage::seekTo_l(int msec)
    {
        LOGV("seekTo %d", msec);
        if ((mPlayer != NULL)
            && (mCurrentState
                & (MEDIA_PLAYER_STARTED | MEDIA_PLAYER_PREPARED | MEDIA_PLAYER_PAUSED | MEDIA_PLAYER_PLAYBACK_COMPLETE)))
        {
            if (msec < 0)
            {
                LOGW("Attempt to seek to invalid position: %d", msec);
                msec = 0;
            }
            else if ((mDuration > 0) && (msec > mDuration))
            {
                LOGW("Attempt to seek to past end of file: request = %d, EOF = %d", msec, mDuration);
                msec = mDuration;
            }

            // cache duration
            mCurrentPosition = msec;
            if (mSeekPosition < 0)
            {
                getDuration_l(NULL);
                mSeekPosition = msec;
                mPlayer->seekTo(msec);
                return NO_ERROR;
            }
            else
            {
                LOGV("Seek in progress - queue up seekTo[%d]", msec);
                return NO_ERROR;
            }
        }

        LOGE("Attempt to perform seekTo in wrong state: mPlayer=%p, mCurrentState=%u", mPlayer.get(), mCurrentState);
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::seekTo(int msec)
    {
        LOGV("seekTo %d", msec);
        mLockThreadId = getThreadId();
        Mutex::Autolock _l(mLock);
        mIsSeeking = 1;
        status_t result = seekTo_l(msec);
        mIsSeeking = 0;
        mLockThreadId = 0;
        return result;
    }

    status_t HiMediaPlayerManage::getCurrentPosition(int *msec)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);

        if (mPlayer != NULL)
        {
            if (mCurrentPosition >= 0)
            {
                LOGV("Using cached seek position: %d", mCurrentPosition);
                *msec = mCurrentPosition;
                return NO_ERROR;
            }

            if (mCurrentState&MEDIA_PLAYER_PLAYBACK_COMPLETE)
            {
                if (mDuration <= 0)
                {
                    mPlayer->getDuration(&mDuration);
                    LOGV("Call %s IN, Line:%d, Duration: %d", __FUNCTION__, __LINE__, mDuration);
                }

                *msec = mDuration;
                return NO_ERROR;
            }

            return mPlayer->getCurrentPosition(msec);
        }

        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::getDuration_l(int *msec)
    {
        LOGV("Call %s IN", __FUNCTION__);
        bool isValidState = (mCurrentState
                             & (MEDIA_PLAYER_PREPARED | MEDIA_PLAYER_STARTED | MEDIA_PLAYER_PAUSED
                                | MEDIA_PLAYER_STOPPED
                                | MEDIA_PLAYER_PLAYBACK_COMPLETE));
        if ((mPlayer != NULL) && isValidState)
        {
            status_t ret = NO_ERROR;
            if (mDuration <= 0)
            {
                ret = mPlayer->getDuration(&mDuration);
            }

            if (msec)
            {
                *msec = mDuration;
            }

            return ret;
        }

        LOGE("Attempt to call getDuration without a valid mediaplayer");
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::getDuration(int *msec)
    {
        Mutex::Autolock _l(mLock);

        return getDuration_l(msec);
    }

    status_t HiMediaPlayerManage::reset_l()
    {
        mLoop = false;
        if (mCurrentState == MEDIA_PLAYER_IDLE)
        {
            return NO_ERROR;
        }

        mPrepareSync = false;
        if (mPlayer != NULL)
        {
            status_t ret = mPlayer->reset();
            if (ret != NO_ERROR)
            {
                LOGE("reset() failed with return code (%d)", ret);
                mCurrentState = MEDIA_PLAYER_STATE_ERROR;
            }
            else
            {
                mCurrentState = MEDIA_PLAYER_IDLE;
            }
            return ret;
        }

        clear_l();
        return NO_ERROR;
    }

    status_t HiMediaPlayerManage::reset()
    {
        LOGV("Call %s IN", __FUNCTION__);
        mLockThreadId = getThreadId();
        Mutex::Autolock _l(mLock);
        status_t result = reset_l();
        LOGE("mLockThreadId RESET LOCAL ID IS %d", mLockThreadId);
        mLockThreadId = 0;

        return result;
    }

    status_t HiMediaPlayerManage::setLooping(int loop)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        mLoop = (loop != 0);
        if (mPlayer != NULL)
        {
            return mPlayer->setLooping(loop);
        }

        return OK;
    }

    bool HiMediaPlayerManage::isLooping()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mPlayer != NULL)
        {
            return mLoop;
        }

        LOGV("isLooping: no active player");
        return false;
    }

    player_type HiMediaPlayerManage::playerType() {
        LOGV("playerType");
        return HIMEDIA_PLAYER;
    }

    status_t HiMediaPlayerManage::invoke(const Parcel& request, Parcel *reply)
    {
        Mutex::Autolock _l(mLock);
        const bool hasBeenInitialized =
            (mCurrentState != MEDIA_PLAYER_STATE_ERROR)
       && ((mCurrentState & MEDIA_PLAYER_IDLE) != MEDIA_PLAYER_IDLE);

        int CurrentPos = request.dataPosition();
        int InvokeCmd = request.readInt32();
        // do not support android invoke now,android invoke is conflict with hiplayer invoke id
        switch (InvokeCmd)
        {
            case INVOKE_ID_GET_TRACK_INFO:
            {
                if ((mPlayer != NULL) && hasBeenInitialized)
                {
                    HiMediaPlayerManage::getTrackInfo(reply);
                    return NO_ERROR;
                }
                else
                {
                    return NO_ERROR;
                }
            }
            case INVOKE_ID_ADD_EXTERNAL_SOURCE:
            {
                LOGV("TIMEDTEXT in HiMediaPlayerManage::invoke , INVOKE_ID_ADD_EXTERNAL_SOURCE");
            }
            case INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:
            {
                if (mPlayer == NULL)
                    return NO_INIT;

                return mPlayer->AddTimedTextSource (request);

            }
            case INVOKE_ID_SELECT_TRACK:
            {
                if (mPlayer == NULL)
                    return NO_INIT;

                int tracksIndex = request.readInt32();
                return mPlayer->selectTrack(tracksIndex, true /* select */);
            }
            case INVOKE_ID_UNSELECT_TRACK:
            {
                if (mPlayer == NULL)
                    return NO_INIT;

                int tracksIndex = request.readInt32();
                return mPlayer->selectTrack(tracksIndex, false /* select */);
            }
            case INVOKE_ID_SET_VIDEO_SCALING_MODE:
            {
                if (mPlayer == NULL)
                    return NO_INIT;

                int scalingmode = request.readInt32();
                return mPlayer->setVideoScaling(scalingmode);
            }
            default:
            {
                break;
            }
        }
        request.setDataPosition(CurrentPos);
        if ((mPlayer != NULL) && hasBeenInitialized)
        {
            LOGV("invoke %d", request.dataSize());
            return mPlayer->invoke(request, reply);
        }

        LOGE("invoke failed: wrong state %X", mCurrentState);
        return INVALID_OPERATION;
    }

    void HiMediaPlayerManage::setAudioSink(const sp<AudioSink> &audioSink) {
        //MediaPlayerInterface::setAudioSink(audioSink);
        LOGV("HiMediaPlayerManage setAudioSink");
        if (mPlayer != NULL)
            mPlayer->setAudioSink(audioSink);
    }

    int getintfromString8(String8 &s,const char*pre)
    {
        int off;
        int val=0;
        if((off=s.find(pre,0))>=0){
            sscanf(s.string()+off+strlen(pre),"%d",&val);
        }
        return val;
    }

    status_t HiMediaPlayerManage::setParameter(int key, const Parcel &request)
    {
        //Mutex::Autolock autoLock(mMutex);
        LOGI("setParameter %d\n",key);
        switch(key)
        {
            case KEY_PARAMETER_VIDEO_POSITION_INFO:
                {
                int left,right,top,bottom;
                Rect newRect;
                int off;
                const String16 uri16 = request.readString16();
                String8 keyStr = String8(uri16);
                    LOGI("setParameter %d=[%s]\n",key,keyStr.string());
                left=getintfromString8(keyStr,".left=");
                top=getintfromString8(keyStr,".top=");
                right=getintfromString8(keyStr,".right=");
                bottom=getintfromString8(keyStr,".bottom=");
                newRect=Rect(left,top,right,bottom);
                LOGI("setParameter info to newrect=[%d,%d,%d,%d]\n",
                    left,top,right,bottom);

                //update surface setting
                updateVideoPosition(left,top,right-left,bottom-top);
                break;
                }
            case KEY_PARAMETER_PLAYBACK_RATE_PERMILLE:
            {
                HIMEDIA_NULL_VERIFY(mPlayer.get());
                return mPlayer->setParameter(key, request);
            }

            default:
                LOGI("unsupport setParameter value!=%d\n",key);
        }
        return OK;
    }

    status_t HiMediaPlayerManage::getParameter(int key, Parcel *reply) {
        HIMEDIA_NULL_VERIFY(mPlayer.get());
        return mPlayer->getParameter(key, reply);
    }

    status_t HiMediaPlayerManage::getMetadata(const media::Metadata::Filter& ids, Parcel *records)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock lock(mLock);
        status_t status = OK;
        //media::HiMetadata::Filter ids;
        //records->writeInt32(-1);
        if (mPlayer == NULL)
        {
            return NO_INIT;
        }

        media::HiMetadata MetadataWrapper(records);
       //MetadataWrapper.appendHeader() ;
        status = mPlayer->getMetadata(ids, records);
        if (status != OK)
        {
            MetadataWrapper.resetParcel();
            records->setDataPosition(0);
            records->writeInt32(status);
            records->setDataPosition(0);
            return status;
        }

        //MetadataWrapper.updateLength();
        //records->setDataPosition(0);
        //records->writeInt32(status);
        //records->setDataPosition(0);
        return status;
    }

    status_t HiMediaPlayerManage::dump(int fd, const Vector<String16> &args) const {
        //return mPlayer->dump(fd, args);
        return 0;
    }

    /*===============HiMedia extend begin==========================*/
    status_t HiMediaPlayerManage::updateVideoPosition(int x, int y, int width, int height)
    {
        LOGV("Call %s IN", __FUNCTION__);
        LOGV("HiMediaPlayerManage::updateVideoPosition(%d, %d, %d, %d)", x, y, width, height);

        Mutex::Autolock _l(mLock);
        if (mPlayer != NULL)
        {
            return mPlayer->updateVideoPosition(x, y, width, height);
        }

        return OK;
    }

    void HiMediaPlayerManage::notifyFunc(int msg, int ext1, int ext2, const Parcel *obj)
    {
        bool send = true;
        switch (msg)
        {
        case MEDIA_NOP: // interface test message
            break;
        case MEDIA_PREPARED:
            LOGV("prepared");
            mCurrentState = MEDIA_PLAYER_PREPARED;
            if (mPrepareSync)
            {
                LOGV("signal application thread");
                mPrepareSync   = false;
                mPrepareStatus = NO_ERROR;
                mSignal.signal();
            }

            break;
        case MEDIA_PLAYBACK_COMPLETE:
            LOGV("playback complete");
            if (mCurrentState == MEDIA_PLAYER_IDLE)
            {
                LOGE("playback complete in idle state");
            }

            if (!mLoop)
            {
                mCurrentState = MEDIA_PLAYER_PLAYBACK_COMPLETE;
            }

            break;
        case MEDIA_ERROR:

            // Always log errors.
            // ext1: Media framework error code.
            // ext2: Implementation dependant error code.
            LOGE("error (%d, %d)", ext1, ext2);
            mCurrentState = MEDIA_PLAYER_STATE_ERROR;
            if (mPrepareSync)
            {
                LOGV("signal application thread");
                mPrepareSync   = false;
                mPrepareStatus = ext1;
                mSignal.signal();
                send = false;
            }

            break;
        case MEDIA_INFO:

            // ext1: Media framework error code.
            // ext2: Implementation dependant error code.
            if (ext1 != MEDIA_INFO_VIDEO_TRACK_LAGGING)
            {
                LOGW("info/warning (%d, %d)", ext1, ext2);
            }

            // switch to android first frame time message
            if (ext1 == MEDIA_INFO_FIRST_FRAME_TIME)
            {
                ext1 = MEDIA_INFO_RENDERING_START;
            }

            break;
        case MEDIA_SEEK_COMPLETE:
            LOGV("Received seek complete");
            if (mSeekPosition != mCurrentPosition)
            {
                LOGV("Executing queued seekTo(%d)", mSeekPosition);
                mSeekPosition = -1;
                seekTo_l(mCurrentPosition);
            }
            else
            {
                LOGV("All seeks complete - return to regularly scheduled program");
                mCurrentPosition = mSeekPosition = -1;
            }

            break;
        case MEDIA_BUFFERING_UPDATE:
            LOGV("buffering %d", ext1);
            break;
        case MEDIA_SET_VIDEO_SIZE:
            LOGV("New video size %d x %d", ext1, ext2);
            mVideoWidth  = ext1;
            mVideoHeight = ext2;
            break;
        case MEDIA_TIMED_TEXT:
            LOGV("Received timed text message");
            break;
        case MEDIA_FAST_FORWORD_COMPLETE:
            LOGV("fast forward complete");
            if (!mLoop)
            {
                //while the fast backword complete, the player should start auto to play
                //reset the media player state.
                mCurrentState = MEDIA_PLAYER_PLAYBACK_COMPLETE;
            }

            break;
        case MEDIA_FAST_BACKWORD_COMPLETE:
            LOGV("fast backwork complete");
            if (!mLoop)
            {
                //while the fast backword complete, the player should start auto to play
                //reset the media player state
                mCurrentState = MEDIA_PLAYER_STARTED;
            }

            break;

        default:
            LOGV("unrecognized message: (%d, %d, %d)", msg, ext1, ext2);
            break;
        }

        sendEvent(msg, ext1, ext2, obj);
        LOGV("back from callback");
    }

    void HiMediaPlayerManage::notify(void* cookie, int msg, int ext1, int ext2, const Parcel *obj)
    {
        LOGV("message received msg=%d, ext1=%d, ext2=%d", msg, ext1, ext2);

        HiMediaPlayerManage *pthis = (HiMediaPlayerManage*)cookie;
        if (NULL == pthis)
        {
            LOGE("HiMediaPlayerManage::notify fail, pthis is NULL");
            return;
        }

        pthis->notifyFunc(msg, ext1, ext2, obj);
    }

    Hi_PLAYER_TYPE HiMediaPlayerManage::getPlayerType(const char* url)
    {
        return HI_TYPE_PLAYER;
    }

    Hi_PLAYER_TYPE HiMediaPlayerManage::getPlayerType(int fd, int64_t offset, int64_t length)
    {
        return HI_TYPE_PLAYER;
    }

    status_t HiMediaPlayerManage::attachNewPlayer(const sp <HiMediaPlayerBase>& player)
    {
        status_t err = UNKNOWN_ERROR;

        sp <HiMediaPlayerBase> p;
        {
            // scope for the lock
            Mutex::Autolock _l(mLock);

            if (!((mCurrentState & MEDIA_PLAYER_IDLE)
                   || (mCurrentState == MEDIA_PLAYER_STATE_ERROR)))
            {
                LOGE("attachNewPlayer called in state %d", mCurrentState);
                return INVALID_OPERATION;
            }

            clear_l();
            p = mPlayer;
            mPlayer = player;
            if (player != 0)
            {
                mCurrentState = MEDIA_PLAYER_INITIALIZED;
                err = NO_ERROR;
            }
            else
            {
                LOGE("Unable to to create media player");
            }
        }
        if (p != 0 && p != player)
        {
            p.clear();
        }

        return err;
    }

    sp <HiMediaPlayerBase> HiMediaPlayerManage::createPlayer(Hi_PLAYER_TYPE PlayerType, notify_callback_f notifyFunc)
    {
        sp <HiMediaPlayerBase> p = mPlayer;
        if ((p != NULL) && (p->playerType() != PlayerType))
        {
            p.clear();
        }

        if (p == NULL)
        {
            switch (PlayerType)
            {
            case HI_TYPE_PLAYER:
                LOGV("Create HiPlayer");
                p = new HiMediaPlayer();
                break;
            default:
                LOGE("Unknown player type: %d", PlayerType);
                return NULL;
            }
        }
        if (p != NULL)
        {
            if (p->initCheck() == NO_ERROR)
            {
                p->setNotifyCallback(this, notifyFunc);
            }
            else
            {
                p.clear();
            }
        }

        if (p == NULL)
        {
            LOGE("Failed to create player object");
        }
        return p;
    }

    sp <HiMediaPlayerBase> HiMediaPlayerManage::getPlayer(const char* url)
    {
        Mutex::Autolock _l(mLock);

        return mPlayer;
    }

    void HiMediaPlayerManage::clear_l()
    {
        mDuration = -1;
        mCurrentPosition = -1;
        mSeekPosition = -1;
        mVideoWidth = mVideoHeight = 0;
    }


}; // namespace android
