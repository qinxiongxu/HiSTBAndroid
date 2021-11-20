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
#include "HiMediaPlayerManage.h"
#include "HiMediaPlayerBase.h"
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
    }

    HiMediaPlayerManage::~HiMediaPlayerManage()
    {
        LOGV("Call %s IN", __FUNCTION__);
    }

    // always call with lock held
    void HiMediaPlayerManage::clear_l()
    {
        mDuration = -1;
        mCurrentPosition = -1;
        mSeekPosition = -1;
        mVideoWidth = mVideoHeight = 0;
    }

    status_t HiMediaPlayerManage::setListener(const sp <HiMediaPlayerListener>& listener)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        mListener = listener;
        return NO_ERROR;
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

    status_t HiMediaPlayerManage::setDataSource(const char *url, const KeyedVector <String8, String8> *headers)
    {
        LOGV("Call %s IN", __FUNCTION__);
        LOGV("HiMediaPlayerManage setDataSource(%s)", url);
        status_t err = BAD_VALUE;
        if (url != NULL)
        {
            Hi_PLAYER_TYPE Player_Type = getPlayerType(url);
            sp <HiMediaPlayerBase> player = createPlayer(Player_Type, notify);
            if (player == NULL)
            {
                return err;
            }
            if (NO_ERROR != player->setDataSource(url, headers))
            {
                player.clear();
            }
            err = attachNewPlayer(player);
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
        if (fd != NULL)
        {
            Hi_PLAYER_TYPE Player_Type = getPlayerType(fd, offset, length);
            sp <HiMediaPlayerBase> player = createPlayer(Player_Type, notify);
            if (player == NULL)
            {
                return err;
            }
            if (NO_ERROR != player->setDataSource(fd, offset, length))
            {
                player.clear();
            }

            err = attachNewPlayer(player);
        }

        return err;
    }

    status_t HiMediaPlayerManage::invoke(const Parcel& request, Parcel *reply)
    {
        Mutex::Autolock _l(mLock);
        const bool hasBeenInitialized =
            (mCurrentState != MEDIA_PLAYER_STATE_ERROR)
       && ((mCurrentState & MEDIA_PLAYER_IDLE) != MEDIA_PLAYER_IDLE);

        if ((mPlayer != NULL) && hasBeenInitialized)
        {
            LOGV("invoke %d", request.dataSize());
            return mPlayer->invoke(request, reply);
        }

        LOGE("invoke failed: wrong state %X", mCurrentState);
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::setMetadataFilter(const Parcel& filter)
    {
        return INVALID_OPERATION;
    }

    status_t HiMediaPlayerManage::getMetadata(bool update_only, bool apply_filter, Parcel *metadata)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock lock(mLock);
        status_t status = OK;
        media::HiMetadata::Filter ids;
        metadata->writeInt32(-1);
        if (mPlayer == NULL)
        {
            return NO_INIT;
        }

        media::HiMetadata MetadataWrapper(metadata);
        MetadataWrapper.appendHeader();
        status = mPlayer->getMetadata(ids, metadata);
        if (status != OK)
        {
            MetadataWrapper.resetParcel();
            metadata->setDataPosition(0);
            metadata->writeInt32(status);
            metadata->setDataPosition(0);
            return status;
        }

        MetadataWrapper.updateLength();
        metadata->setDataPosition(0);
        metadata->writeInt32(status);
        metadata->setDataPosition(0);
        return status;
    }

    //Save surface Position&Size
    status_t HiMediaPlayerManage::setSubSurface(const sp <Surface>& surface)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mPlayer == 0)
        {
            return NO_INIT;
        }

        if (surface != NULL)
        {
            return mPlayer->setSubSurface(surface);
        }
        else
        {
            return mPlayer->setSubSurface(NULL);
        }
    }

    status_t HiMediaPlayerManage::updateVideoPosition(int x, int y, int width, int height)
    {
        LOGV("Call %s IN", __FUNCTION__);
        LOGV("HiMediaPlayerManage::updateVideoPosition(%d, %d, %d, %d)", x, y, width, height);

        Mutex::Autolock _l(mLock);
        if (mPlayer != 0)
        {
            return mPlayer->updateVideoPosition(x, y, width, height);
        }

        return OK;
    }

    // must call with lock held
    status_t HiMediaPlayerManage::prepareAsync_l()
    {
        LOGV("Call %s IN", __FUNCTION__);
        if ((mPlayer != 0) && (mCurrentState & (MEDIA_PLAYER_INITIALIZED | MEDIA_PLAYER_STOPPED)))
        {
            //mPlayer->setAudioStreamType(mStreamType);
            mCurrentState = MEDIA_PLAYER_PREPARING;
            return mPlayer->prepareAsync();
        }

        LOGV("prepareAsync called in state %d", mCurrentState);
        return INVALID_OPERATION;
    }

    // TODO: In case of error, prepareAsync provides the caller with 2 error codes,
    // one defined in the Android framework and one provided by the implementation
    // that generated the error. The sync version of prepare returns only 1 error
    // code.
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

        if ((mPlayer != 0) && (mCurrentState & (MEDIA_PLAYER_STOPPED | MEDIA_PLAYER_PREPARED |
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

        if ((mPlayer != 0) && (mCurrentState & (MEDIA_PLAYER_STARTED | MEDIA_PLAYER_PREPARED |
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

        if ((mPlayer != 0) && (mCurrentState & MEDIA_PLAYER_STARTED))
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

        if (mPlayer != 0)
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

    status_t HiMediaPlayerManage::getVideoWidth(int *w)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mPlayer == 0)
        {
            return INVALID_OPERATION;
        }

        *w = mVideoWidth;
        return NO_ERROR;
    }

    status_t HiMediaPlayerManage::getVideoHeight(int *h)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mPlayer == 0)
        {
            return INVALID_OPERATION;
        }

        *h = mVideoHeight;
        return NO_ERROR;
    }

    status_t HiMediaPlayerManage::getCurrentPosition(int *msec)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);

        if (mPlayer != 0)
        {
            if (mCurrentPosition >= 0)
            {
                LOGV("Using cached seek position: %d", mCurrentPosition);
                *msec = mCurrentPosition;
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
        if ((mPlayer != 0) && isValidState)
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

    status_t HiMediaPlayerManage::seekTo_l(int msec)
    {
        LOGV("seekTo %d", msec);
        if ((mPlayer != 0)
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

                if (NO_ERROR != mPlayer->seekTo(msec))
                {
                    LOGV("seek fail reset seekposition");
                    mSeekPosition = mCurrentPosition = -1;
                }

                // keep the same deal method with before.return NO_ERROR always,
                // or maybe cause some app error
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

    status_t HiMediaPlayerManage::reset_l()
    {
        mLoop = false;
        if (mCurrentState == MEDIA_PLAYER_IDLE)
        {
            return NO_ERROR;
        }

        mPrepareSync = false;
        if (mPlayer != 0)
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

    status_t HiMediaPlayerManage::setAudioStreamType(int type)
    {
        LOGV("HiMediaPlayerManage::setAudioStreamType");
        return OK;
    }

    status_t HiMediaPlayerManage::setLooping(int loop)
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        mLoop = (loop != 0);
        if (mPlayer != 0)
        {
            return mPlayer->setLooping(loop);
        }

        return OK;
    }

    bool HiMediaPlayerManage::isLooping()
    {
        LOGV("Call %s IN", __FUNCTION__);
        Mutex::Autolock _l(mLock);
        if (mPlayer != 0)
        {
            return mLoop;
        }

        LOGV("isLooping: no active player");
        return false;
    }

    status_t HiMediaPlayerManage::setVolume(float leftVolume, float rightVolume)
    {
        LOGV("HiMediaPlayerManage::setVolume(%f, %f)", leftVolume, rightVolume);
        Mutex::Autolock _l(mLock);
        mLeftVolume  = leftVolume;
        mRightVolume = rightVolume;
        if (mPlayer != 0)
        {
            return mPlayer->setVolume(leftVolume, rightVolume);
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
            PrintErrorInfo(ext1, ext2);
            // invalid operation should not set the error state,or maybe next
            // valid operation can not execute
            if (ext1 != INVALID_OPERATION)
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

        sp <HiMediaPlayerListener> listener = mListener;
        // this prevents re-entrant calls into client code
        if ((listener != 0) && send)
        {
            Mutex::Autolock _l(mNotifyLock);
            LOGV("Call Notify");
            listener->notify(msg, ext1, ext2, obj);
            LOGV("back from callback");
        }
    }

    void HiMediaPlayerManage::PrintErrorInfo(int ext1, int ext2)
    {
        switch(ext1)
        {
            case INVALID_OPERATION:
            {
                LOGE("INVALID OPERATION");
                break;
            }
            case BAD_VALUE:
            {
                LOGE("BAD VALUE");
                break;
            }
            default:
            {
                LOGE("UNKNOW ERROR");
                break;
            }
        }
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

    sp <HiMediaPlayerBase> HiMediaPlayerManage::getPlayer(const char* url)
    {
        Mutex::Autolock _l(mLock);

        return mPlayer;
    }

    Hi_PLAYER_TYPE HiMediaPlayerManage::getPlayerType(const char* url)
    {
        return HI_TYPE_PLAYER;
    }

    Hi_PLAYER_TYPE HiMediaPlayerManage::getPlayerType(int fd, int64_t offset, int64_t length)
    {
        return HI_TYPE_PLAYER;
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
                p = new HiMediaPlayer(NULL);
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
    status_t HiMediaPlayerManage::SetStereoVideoFmt(int VideoFmt)
    {
        LOGV("HiMediaPlayerManage::SetStereoVideoFmt(%d)", VideoFmt);
        Mutex::Autolock _l(mLock);
        if (mPlayer != NULL)
        {
            return mPlayer->SetStereoVideoFmt(VideoFmt);
        }
        return INVALID_OPERATION;
    }

    void HiMediaPlayerManage::SetStereoStrategy(int Strategy)
    {
        LOGV("HiMediaPlayerManage::SetStereoStrategy(%d)", Strategy);
        Mutex::Autolock _l(mLock);
        if (mPlayer != NULL)
        {
            mPlayer->SetStereoStrategy(Strategy);
        }
    }

    status_t HiMediaPlayerManage::setSubFramePack(int type)
    {
        LOGV("HiMediaPlayerManage::setSubFramePack(%d)", type);
        Mutex::Autolock _l(mLock);
        if (mPlayer != NULL)
        {
            return mPlayer->setSubFramePack(type);
        }
        return INVALID_OPERATION;
    }
}; // namespace android
