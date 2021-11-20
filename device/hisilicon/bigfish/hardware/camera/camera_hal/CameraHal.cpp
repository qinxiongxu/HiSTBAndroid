/*
 **************************************************************************************
 *       Filename:  CameraHal.cpp
 *    Description:  Camera HAL source file
 *
 *        Version:  1.0
 *        Created:  2012-05-17 09:34:00
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
//#define LOG_NDEBUG 0
#define LOG_TAG "CameraHal"
#include <utils/Log.h>

#include <fcntl.h>
#include <sys/mman.h>
#include <time.h>
#include <ui/Rect.h>
#include <ui/GraphicBuffer.h>
#include <utils/threads.h>
#include <ui/GraphicBufferMapper.h>
#include <gralloc_priv.h>

#include "yuvutils.h"
#include "CameraHal.h"
#include "CameraUtils.h"
#include "SkJpegEncoder.h"
#include "JpegEncoderExif.h"
#define SWAP(a) a=((a>>8) & 0x00ff) | ((a<<8) & 0xff00)

namespace android {

/*
 **************************************************************************
 * FunctionName: CameraHal::CameraHal;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CameraHal::CameraHal(int id)
    : mPreviewWidth(0),
      mPreviewHeight(0),
      mPreviewWindow(NULL),
      mPreviewFakeRunning(false),
      mRecordEnabled(false),
      mPictureEnabled(false),
      mMJPEGDecoder(NULL)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    mInitOK = 0;
    mErrorCount = 0;
    mJpegQuality = 0;
    mMsgEnabled = 0;
    mPictureFrameSize = 0;
    mThumbnailSize = 0;
    mPreviewAlreadyStopped = false;
    mPreviewConfigured = false;
    mPreviewRunning =false;
    mSize = 0;
    mSnapshotHeight = 0;
    mSnapshotWidth = 0;
    mTakePictureWithPreviewDate= false;
    mWindowConfiged = false;
    mExtendedEnv.mCameraId = id;
    mPreviewBuffercount = 6;
    mUseMetaDataBufferMode = false;
    mPreviewUsedCount = 0;
    mEnqueuedBuffers = 0;
    minUndequeuedBuffers = 0;

    int ret = checkCameraDevice(id);
    if(ret < 0)
    {
        CAMERA_EVENT_LOGE("camera device do not exist");
        return;
    }
    else
    {
        CAMERA_EVENT_LOGI("camera device exist");
    }

    mCameraImpl     = new CameraHalImpl(&mExtendedEnv);
    if(NULL == mCameraImpl)
    {
        CAMERA_HAL_LOGE("fail to alloc memory for CameraImpl");
        return;
    }

    ret = mCameraImpl->openCamera();
    if(ret < 0)
    {
        CAMERA_EVENT_LOGE("fail to open camera");
        CAMERA_DELETE(mCameraImpl);
        return;
    }

    mParameterManager = new CapabilityManager(&mExtendedEnv);
    if(NULL == mParameterManager)
    {
        CAMERA_HAL_LOGE("fail to alloc memory for mParameterManager");
        return;
    }

    initDefaultParameters();

    mPreviewThread  = new PreviewThread(this);
    mStateThread    = new StateThread(this);
    mPictureThread  = new PictureThread(this);

    mStateThread->run("state thread", PRIORITY_URGENT_DISPLAY);

    mutexBoolWrite(&mPreviewRunning, false);
    mutexBoolWrite(&mPreviewConfigured, false);

    mTakePictureWithPreviewDate = false;
    mErrorCount                 = 0;
    mInitOK                     = 1;

    CAMERA_EVENT_LOGI("init CameraHal OK");
}

/*
 **************************************************************************
 * FunctionName: CameraHal::~CameraHal;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CameraHal::~CameraHal()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(!mInitOK)
    {
        CAMERA_EVENT_LOGI("deinit CameraHal OK");
        return;
    }

    if (mUseMetaDataBufferMode)
    {
        camera_memory_t* videoMedatadaBufferMemory;
        for (unsigned int i = 0; i < mVideoMetadataBufferMemoryMap.size();  i++)
        {
            videoMedatadaBufferMemory = (camera_memory_t*) mVideoMetadataBufferMemoryMap.valueAt(i);
            if (NULL != videoMedatadaBufferMemory)
            {
                videoMedatadaBufferMemory->release(videoMedatadaBufferMemory);
            }
        }

        mVideoMetadataBufferMemoryMap.clear();
    }
    clearCameraObject();
    deinitHeapLocked();

    CAMERA_EVENT_LOGI("deinit CameraHal OK");
}

/*
 **************************************************************************
 * FunctionName: CameraHal::clearCameraObject;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::clearCameraObject()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    sp<PreviewThread> pThread = mPreviewThread;

    /* then stop preview thread */
    if(pThread != 0)
    {
        pThread->requestExitAndWait();
    }

    mPreviewThread.clear();
    mPreviewThread = 0;

    if(mPictureThread != 0)
    {
        mPictureThread->requestExitAndWait();
    }
    mPictureThread.clear();
    mPictureThread = 0;

    int msg = CMD_KILL_STATE_THREAD;
    mMsgToStateThread.put(&msg);

    /* wait for the command to be excuted */
    mMsgFromStateThread.get(&msg);

    if(mStateThread != 0)
    {
        mStateThread->requestExitAndWait();
    }
    mStateThread.clear();
    mStateThread = 0;

    CAMERA_DELETE(mCameraImpl);
    CAMERA_DELETE(mParameterManager);
}

/*
 **************************************************************************
 * FunctionName: CameraHal::checkCameraDevice;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::checkCameraDevice(int id)
{
    CAMERA_HAL_LOGV("enter %s() camera_id: %d", __FUNCTION__, id);

    int ret = 0;
    struct stat buf;
    char dev[12];

    snprintf(dev, sizeof(dev), "/dev/video%d", id);

    ret = stat(dev, &buf);
    if (ret != 0) {
        snprintf(dev, sizeof(dev), "/dev/video%d", id ? 0: 1);
        ret = stat(dev, &buf);
    }

    if (ret == 0) {
        strncpy(mExtendedEnv.mCameraDevName, dev, LEN_OF_DEVICE_NAME);
    }

    return ret;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::initDefaultParameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::initDefaultParameters()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    CameraParameters p;

    mParameterManager->queryCap(p);

    ret = mParameterManager->setParam(p);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to set parameters");
        return;
    }

    ret = mParameterManager->commitParam();
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to commit parameters");
    }

    mExtendedEnv.mParameters = p;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::initHeapLocked;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::initHeapLocked()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    mSize = sizeof(struct previewBuffer);

    mHeap = new MemoryHeapBase(mSize * MAX_PREVIEW_BUFFERS);

    for (int i = 0; i < MAX_PREVIEW_BUFFERS; i++)
    {
        mBuffer[i] = new MemoryBase(mHeap, i * mSize, mSize);
    }

    mCameraImpl->mPreviewBuffer = (struct previewBuffer *)mHeap->base();
    mPreviewBuffer = mCameraImpl->mPreviewBuffer;

    mPreviewWidth   = mExtendedEnv.mPreviewWidth;
    mPreviewHeight  = mExtendedEnv.mPreviewHeight;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::deinitHeapLocked;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::deinitHeapLocked()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    for (int i = 0; i < MAX_PREVIEW_BUFFERS; i++)
    {
        if(mBuffer[i] != 0)
        {
            mBuffer[i].clear();
            mBuffer[i] = 0;
        }
    }

    if(mHeap != 0)
    {
        mHeap.clear();
        mHeap = 0;
    }

    mPreviewBuffer = NULL;

    if(mBufferVector.size() > 0)
    {
        mBufferVector.clear();
    }
}

/*
 **************************************************************************
 * FunctionName: CameraHal::mutexBoolRead;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool CameraHal::mutexBoolRead(bool *var)
{
    //CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLockVariable);

    return *var;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::mutexBoolWrite;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::mutexBoolWrite(bool *var, bool value)
{
    //CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLockVariable);

    *var = value;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::previewConfig;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::previewConfig()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mutexBoolRead(&mPreviewConfigured) == false)
    {
        initHeapLocked();
        mWindowConfiged = false;

        int ret = mCameraImpl->startPreview();
        if(ret < 0)
        {
            CAMERA_HAL_LOGE("fail to config preview");
            return ret;
        }
        mutexBoolWrite(&mPreviewConfigured, true);
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::previewDeconfig;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::previewDeconfig()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mutexBoolRead(&mPreviewConfigured) == true)
    {
        mCameraImpl->stopPreview();
        mWindowConfiged = false;
        deinitHeapLocked();
        mutexBoolWrite(&mPreviewConfigured, false);
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::previewStart;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::previewStart()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mutexBoolRead(&mPreviewConfigured) == true)
    {
        /* start preview thread */
        mPreviewThread->run("preview thread", PRIORITY_URGENT_DISPLAY);
        mutexBoolWrite(&mPreviewAlreadyStopped, false);
        mutexBoolWrite(&mPreviewRunning, true);
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::previewStop;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::previewStop()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mutexBoolRead(&mPreviewRunning) == true)
    {
        /* stop preview thread */
        mutexBoolWrite(&mPreviewRunning, false);

        /* make sure the preview thread has been stopped */
        while(mutexBoolRead(&mPreviewAlreadyStopped) == false)
        {
            CAMERA_HAL_LOGV("wait for preview thread loop exit");
            usleep(1000);
        }
    }

    mEnqueuedBuffers = 0;
    minUndequeuedBuffers = 0;

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::setPreviewWindow;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::setPreviewWindow(struct preview_stream_ops * window)
{
    CAMERA_EVENT_LOGI("set camera preview display window[%p]", window);

    Mutex::Autolock lock(mLock);

    if (mPreviewWindow == window && mutexBoolRead(&mPreviewRunning)) {
        return NO_ERROR;
    }

    mPreviewWindow = window;

    if (NULL == window) {
        if (mMJPEGDecoder != NULL) {
            CAMERA_DELETE(mMJPEGDecoder);
        }

        return NO_ERROR;
    }

    if (mMJPEGDecoder != NULL) {
        mMJPEGDecoder->cancelExternalBuffer();
        CAMERA_DELETE(mMJPEGDecoder);
    }

    mPreviewWindow->set_buffers_geometry(mPreviewWindow, mExtendedEnv.mPreviewWidth, mExtendedEnv.mPreviewHeight, HAL_PIXEL_FORMAT_YCrCb_420_SP);
    mPreviewWindow->set_buffer_count(mPreviewWindow, mPreviewBuffercount);
    mPreviewWindow->get_min_undequeued_buffer_count(mPreviewWindow, &minUndequeuedBuffers);
    CAMERA_EVENT_LOGI("get_min_undequeued_buffer_count=%d", minUndequeuedBuffers);
    if (mExtendedEnv.mPreviewFormat != V4L2_PIX_FMT_YUYV) {
        mMJPEGDecoder = new CameraJpegDecoder();
        status_t ret = mMJPEGDecoder->initJpegDecoder();
        if (ret != HI_SUCCESS) {
            CAMERA_DELETE(mMJPEGDecoder);
            mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, CAMERA_ERROR_SERVER_DIED, 0, mExtendedEnv.mUser);
            mutexBoolWrite(&mPreviewAlreadyStopped, true);
            stopPreview();
            return UNKNOWN_ERROR;
        }

        status_t status = mMJPEGDecoder->setExternalBuffer(mPreviewWindow, mExtendedEnv.mPreviewWidth, mExtendedEnv.mPreviewHeight, mPreviewBuffercount);
        if (status != OK) {
            return UNKNOWN_ERROR;
        }
    }

    return OK;
}


/*
 **************************************************************************
 * FunctionName: CameraHal::setCallbacks;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::setCallbacks(camera_notify_callback notify_cb,
                    camera_data_callback data_cb,
                    camera_data_timestamp_callback data_cb_timestamp,
                    camera_request_memory get_memory,
                    void* user)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);

    mExtendedEnv.mNotifyCb          = notify_cb;
    mExtendedEnv.mDataCb            = data_cb;
    mExtendedEnv.mDataCbTimeStamp   = data_cb_timestamp;
    mExtendedEnv.mRequestMemory     = get_memory;
    mExtendedEnv.mUser              = user;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::enableMsgType;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::enableMsgType(int32_t msgType)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);
    mExtendedEnv.mMsgEnabled |= msgType;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::disableMsgType;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::disableMsgType(int32_t msgType)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);
    mExtendedEnv.mMsgEnabled &= ~msgType;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::msgTypeEnabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool CameraHal::msgTypeEnabled(int32_t msgType)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);
    return ( msgType);
}

/*
 **************************************************************************
 * FunctionName: CameraHal::stateThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::stateThread()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    bool live = true;
    int msg;

    while(live)
    {
        mMsgToStateThread.get(&msg);

        switch(msg)
        {
            case CMD_START_PREVIEW:
            {
                if(mutexBoolRead(&mPreviewRunning))
                {
                    CAMERA_HAL_LOGV("preview is already running");
                    goto ON_ERROR;
                }
                else
                {
                    if(previewConfig() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to config preview");
                        goto ON_ERROR;
                    }

                    if(previewStart() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to start preview thread");
                        goto ON_ERROR;
                    }
                }

                msg = ACK_OK;
                mMsgFromStateThread.put(&msg);
                break;
            }

            case CMD_STOP_PREVIEW:
            {
                if(mutexBoolRead(&mPreviewRunning))
                {
                    if(previewStop() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to stop preview thread");
                        goto ON_ERROR;
                    }

                    if(previewDeconfig() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to deconfig preview");
                        goto ON_ERROR;
                    }
                }
                else
                {
                    CAMERA_HAL_LOGV("preview is already stopped");
                    goto ON_ERROR;
                }

                msg = ACK_OK;
                mMsgFromStateThread.put(&msg);
                break;
            }

            case CMD_TAKE_PICTURE:
            {
                if(mutexBoolRead(&mPreviewRunning))
                {
                    if(previewStop() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to stop preview thread");
                        goto ON_ERROR;
                    }

                    if(previewDeconfig() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to deconfig preview");
                        goto ON_ERROR;
                    }

                    if(beginPictureThread() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to start picture thread");
                        goto ON_ERROR;
                    }
                }
                else
                {
                    if(beginPictureThread() < 0)
                    {
                        CAMERA_HAL_LOGE("fail to start picture thread");
                        goto ON_ERROR;
                    }
                }

                msg = ACK_OK;
                mMsgFromStateThread.put(&msg);
                break;
            }

            case CMD_KILL_STATE_THREAD:
            {
                live = false;

                msg = ACK_OK;
                mMsgFromStateThread.put(&msg);
                break;
            }

            default:
            {
                CAMERA_HAL_LOGE("unknown command!");
ON_ERROR:
                msg = ACK_ERROR;
                mMsgFromStateThread.put(&msg);
                break;
            }
        }
    }

}

/*
 **************************************************************************
 * FunctionName: CameraHal::previewThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::previewThread()
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    mErrorCount = 0;
    while(mutexBoolRead(&mPreviewRunning))
    {
        struct previewBuffer buffer;
        if(mCameraImpl->getPreview(&buffer) < 0)
        {
            CAMERA_HAL_LOGV("fail to get preview data");
            mErrorCount ++;

            if(mErrorCount == CONNECT_ERROR_COUNT)
            {
                struct stat buf;
                int ret = stat(mExtendedEnv.mCameraDevName, &buf);
                if( ret < 0 && ENOENT == errno)
                {
                    CAMERA_HAL_LOGE("[%s] is not exist, send CAMERA_ERROR_SERVER_DIED msg to camera app", mExtendedEnv.mCameraDevName);
                    goto ON_ERROR;
                }
            }

            if(mErrorCount >= MAX_ERROR_COUNT)
            {
                CAMERA_HAL_LOGE("camera maybe some thing is wrong, send CAMERA_ERROR_SERVER_DIED msg to camera app");
                goto ON_ERROR;
            }

            usleep( 5 * 1000 );
            continue;
        }

        mErrorCount = 0;
        if(!mutexBoolRead(&mPreviewRunning))
        {
            CAMERA_HAL_LOGI("preview requested stop during getPreview");
            break;
        }

        SET_OVERLAY_USE(mPreviewBuffer[buffer.index].flags);
        for(int i=mBufferVector.size()-1; i>=0; i--)
        {
            CLR_OVERLAY_USE(mBufferVector[i]->flags);

            if(0 == mBufferVector[i]->flags)
            {
                mCameraImpl->queueFrame(mBufferVector[i]->index);
                mBufferVector.removeAt(i);
            }
        }
        mBufferVector.push(&mPreviewBuffer[buffer.index]);

        if(mExtendedEnv.mPreviewFormat == V4L2_PIX_FMT_YUYV){
            OnFrameArrivedYUYV((char *)buffer.viraddr, buffer.length);
        }else{
            OnFrameArrivedMJPEG((char *)buffer.viraddr, buffer.length);
        }

    }

    /* indicate the preview thread has been already stopped */
    mutexBoolWrite(&mPreviewAlreadyStopped, true);

    CAMERA_EVENT_LOGI("====preview thread exit====");

    return;

ON_ERROR:
    mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, CAMERA_ERROR_SERVER_DIED, 0, mExtendedEnv.mUser);
    mutexBoolWrite(&mPreviewAlreadyStopped, true);
    stopPreview();

    CAMERA_EVENT_LOGI("====preview thread exit====");
}

/*
 **************************************************************************
 * FunctionName: CameraHal::startPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::startPreview()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mExtendedEnv.mShouldRestartPreview)
    {
       stopPreview();
       mExtendedEnv.mShouldRestartPreview = false;
    }

    Mutex::Autolock lock(mLock);

    /* needed by previewEnabled */
    mPreviewFakeRunning = true;

    if( mutexBoolRead(&mPreviewRunning) == false)
    {
        CAMERA_EVENT_LOGI("start preview");

        int msg = CMD_START_PREVIEW;
        mMsgToStateThread.put(&msg);

        /* wait for the command to be excuted */
        mMsgFromStateThread.get(&msg);
        if(msg == ACK_OK)
        {
            CAMERA_EVENT_LOGI("start preview OK");
            return NO_ERROR;
        }
        else
        {
            CAMERA_EVENT_LOGI("start preview FAILED");
            return INVALID_OPERATION;
        }
    }
    else
    {
        return NO_ERROR;
    }
}

/*
 **************************************************************************
 * FunctionName: CameraHal::stopPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::stopPreview()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);

    /* needed by previewEnabled */
    mPreviewFakeRunning = false;

    if(mutexBoolRead(&mPreviewRunning) == true)
    {
        CAMERA_EVENT_LOGI("stop preview");

        int msg = CMD_STOP_PREVIEW;
        mMsgToStateThread.put(&msg);

        /* wait for the command to be excuted */
        mMsgFromStateThread.get(&msg);
    }

    CAMERA_EVENT_LOGI("stop preview OK");
}

/*
 **************************************************************************
 * FunctionName:  CameraHal::previewEnabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool CameraHal::previewEnabled()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

     Mutex::Autolock lock(mLock);

    return mPreviewFakeRunning;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::storeMetaDataInBuffers;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::storeMetaDataInBuffers(bool enable)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);
    mUseMetaDataBufferMode = enable;
    CAMERA_EVENT_LOGI("storeMetaDataInBuffers: %s", enable ? "true" : "false");

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::startRecording;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::startRecording()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLockVariable);

    CAMERA_EVENT_LOGI("start recording");
    mRecordEnabled = true;

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::stopRecording;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::stopRecording()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLockVariable);

    CAMERA_EVENT_LOGI("stop recording");
    mRecordEnabled = false;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::recordingEnabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool CameraHal::recordingEnabled()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLockVariable);

    return mRecordEnabled;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::releaseRecordingFrame;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::releaseRecordingFrame(const void *opaque)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);
    if (mUseMetaDataBufferMode)
    {
        CAMERA_HAL_LOGV("releaseRecordingFrame: opaque = 0x%x", opaque);
        mPreviewUsedCount--;
        camera_memory_t* frame = (camera_memory_t*) mVideoMetadataBufferMemoryMap.valueFor((uint32_t) opaque);
        frame->release(frame);
        mVideoMetadataBufferMemoryMap.removeItem((uint32_t)opaque);
    }
}

/*
 **************************************************************************
 * FunctionName: CameraHal::beginAutoFocusThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::beginAutoFocusThread(void *cookie)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    CameraHal *c = (CameraHal *)cookie;
    return c->autoFocusThread();
}

/*
 **************************************************************************
 * FunctionName: CameraHal::autoFocusThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::autoFocusThread()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_FOCUS)
    {
        mExtendedEnv.mNotifyCb(CAMERA_MSG_FOCUS, true, 0, mExtendedEnv.mUser);
    }
    CAMERA_EVENT_LOGI("auto focus OK");
    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::autoFocus;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::autoFocus()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);

    CAMERA_EVENT_LOGI("start auto focus");

    if (createThread(beginAutoFocusThread, this) == false)
    {
        CAMERA_EVENT_LOGI("auto focus FAILED[%s]", strerror(errno));
        return UNKNOWN_ERROR;
    }

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::cancelAutoFocus;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::cancelAutoFocus()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::beginPictureThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::beginPictureThread()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    mPictureThread->run("picture thread", PRIORITY_URGENT_DISPLAY);

    return 0;
}

int CameraHal::jpegEncoder(void* srcBuffer, void * dstBuffer, int width, int height, int quality, int *jpegSize)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    SkBitmap bm;
#ifdef SKIA5
    SkColorType ct = kRGB_565_SkColorType;
    bm.setInfo(SkImageInfo::Make(width, height, ct, kPremul_SkAlphaType), 0);
#else
    bm.setConfig(SkBitmap::kRGB_565_Config, width, height, 0);
#endif
    bm.setPixels(srcBuffer,NULL);
    SkDynamicMemoryWStream stream;
    SkJpegImageSWEncoder swencoder;

    //use soft encoder to make rgb565 to jpg
    if(swencoder.Encode(&stream, bm, quality) == true)
    {
        stream.copyTo(dstBuffer);
        *jpegSize = stream.getOffset();
        CAMERA_EVENT_LOGI("jpeg encode OK [data length=%d]", *jpegSize);
    }
    else
    {
        *jpegSize = 0;
        CAMERA_EVENT_LOGI("jpeg encode FAILED");
    }

    return 0;
}


/*
 **************************************************************************
 * FunctionName: CameraHal::pictureThread;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHal::pictureThread()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct previewBuffer buffer;
    buffer.viraddr = NULL;

    int ret = mCameraImpl->getPicture(&buffer);

    if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_SHUTTER) && mExtendedEnv.mNotifyCb)
    {
        mExtendedEnv.mNotifyCb(CAMERA_MSG_SHUTTER, 0, 0, mExtendedEnv.mUser);
    }

    if(ret < 0)
    {
        CAMERA_EVENT_LOGI("take picture FAILED");
        if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_COMPRESSED_IMAGE)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, CAMERA_ERROR_SERVER_DIED, 0, mExtendedEnv.mUser);
        }
        CAMERA_FREE(mPictureBuffer);
        mCameraImpl->stopSnapshot();
        return UNKNOWN_ERROR;
    }

    int jpegSize = 0;
    int thumbnailSize = 0;
    ConvertYUYVtoRGB565((void*)buffer.viraddr, mPictureBuffer, mSnapshotWidth, mSnapshotHeight, mSnapshotWidth, mSnapshotHeight);
    jpegEncoder(mPictureBuffer, mPictureBuffer, mSnapshotWidth, mSnapshotHeight, mJpegQuality, &jpegSize);

    if(mExtendedEnv.mThumbnailWidth != 0 && mExtendedEnv.mThumbnailHeight != 0){
        ConvertYUYVtoRGB565((void*)buffer.viraddr, mThumbnailBuffer, mSnapshotWidth, mSnapshotHeight, mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight);
        jpegEncoder(mThumbnailBuffer, mThumbnailBuffer, mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight, mExtendedEnv.mThumbnailQuality, &thumbnailSize);
    }

    JpegEncoderExif* exif      = NULL;
    ExifBuffer* exifBuffer     = NULL;

    exif = new JpegEncoderExif(&mExtendedEnv);
    if(exif == NULL)
    {
        ALOGE("failed to create JpegEncoderExif");
    }
    exif->jpegEncoderExifInit();

    exifBuffer = exif->makeExif(exif, (unsigned char*)mThumbnailBuffer, thumbnailSize);

    int totalSize = 0;
    if(exifBuffer && ( exifBuffer->mSize > 0))
    {
        totalSize = EXIF_ATTR_LEN + exifBuffer->mSize + jpegSize;
    }
    else
    {
        totalSize = jpegSize;
    }

    camera_memory_t* pictureData = mExtendedEnv.mRequestMemory(-1, totalSize, 1, NULL);
    if(!pictureData || !(pictureData->data))
    {
        ALOGE("fail to allocate memory for jpeg");
        mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, 1, 0, mExtendedEnv.mUser);
        return 0;
    }
    char* picAddr = (char*)(pictureData->data);
    char* outAddr = (char*)(mPictureBuffer);
    if(exifBuffer && ( exifBuffer->mSize > 0))
    {
        memcpy(picAddr, outAddr, JPEG_HEADER_LEN);

        unsigned short exifIdentifier = EXIF_ID;
        unsigned short exifLength = exifBuffer->mSize +2;
        unsigned short *exifStart = (unsigned short *)(picAddr + JPEG_HEADER_LEN);
        *exifStart = SWAP(exifIdentifier);
        *(exifStart+1) = SWAP(exifLength);
        memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN, exifBuffer->mData, exifBuffer->mSize);
        memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN + exifBuffer->mSize, outAddr + JPEG_HEADER_LEN, jpegSize - JPEG_HEADER_LEN);
    }
    else
    {
        memcpy(picAddr, mPictureBuffer, jpegSize);
    }

    if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE) != 0)
    {
        camera_memory_t* picture    = NULL;
        picture = mExtendedEnv.mRequestMemory(-1, mPictureFrameSize, 1, NULL);
        if(picture && picture->data)
        {
            memcpy((char *)picture->data, (char *)buffer.viraddr, mPictureFrameSize);
            CAMERA_HAL_LOGV("send CAMERA_MSG_RAW_IMAGE to app");
            mExtendedEnv.mDataCb(CAMERA_MSG_RAW_IMAGE, picture, 0, NULL, mExtendedEnv.mUser);
            picture->release(picture);
        }
    }
    else if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE_NOTIFY) != 0)
    {
        mExtendedEnv.mNotifyCb(CAMERA_MSG_RAW_IMAGE_NOTIFY, 0, 0, mExtendedEnv.mUser);
    }

    mCameraImpl->stopSnapshot();

    if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_COMPRESSED_IMAGE)
    {
        if(totalSize > 0)
        {
            if (pictureData && pictureData->data)
            {
                CAMERA_HAL_LOGV("send CAMERA_MSG_COMPRESSED_IMAGE to app");
                mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, pictureData, 0, NULL, mExtendedEnv.mUser);
                pictureData->release(pictureData);
            }
            else
            {
                CAMERA_HAL_LOGE("fail to alloc memory for picture");
            }
        }
        else
        {
            mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, 0, 0, NULL, mExtendedEnv.mUser);
        }
    }

    CAMERA_FREE(mThumbnailBuffer);
    CAMERA_FREE(mPictureBuffer);

    CAMERA_EVENT_LOGI("take picture OK");
    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::takePicture;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::takePicture()
{
#if !ENABLE_TAKE_PICTURE
    stopPreview();

    return UNKNOWN_ERROR;
#else
    CAMERA_EVENT_LOGI("start take picture [%dx%d]", mExtendedEnv.mSnapshotWidth, mExtendedEnv.mSnapshotHeight);

    mSnapshotWidth      = mExtendedEnv.mSnapshotWidth;
    mSnapshotHeight     = mExtendedEnv.mSnapshotHeight;
    mJpegQuality        = mExtendedEnv.mJpegQuality;
    mPictureFrameSize   = mSnapshotWidth * mSnapshotHeight * 2;
    mThumbnailSize      = mExtendedEnv.mThumbnailWidth*mExtendedEnv.mThumbnailHeight*2;

    mPictureBuffer = (char *)malloc(mPictureFrameSize);
    if( NULL== mPictureBuffer)
    {
        CAMERA_HAL_LOGE("fail to malloc memory for mPictureBuffer");
        return UNKNOWN_ERROR;
    }

    mThumbnailBuffer = (char *)malloc(mThumbnailSize);
    if( NULL== mThumbnailBuffer)
    {
        CAMERA_HAL_LOGE("fail to malloc memory for mThumbnailBuffer");
        return UNKNOWN_ERROR;
    }

    if(mSnapshotWidth == mPreviewWidth && mSnapshotHeight == mPreviewHeight)
    {
        CAMERA_EVENT_LOGI("picture size is the same with preview size, so use preview data for picture");
        mPreviewFakeRunning         = false;
        mTakePictureWithPreviewDate = true;
        return NO_ERROR;
    }

    stopPreview();
    Mutex::Autolock lock(mLock);

    int msg = CMD_TAKE_PICTURE;
    mMsgToStateThread.put(&msg);
    //wait for the command to be excuted
    mMsgFromStateThread.get(&msg);

    if(msg != ACK_OK)
    {
        CAMERA_HAL_LOGE("fail to send take picture command");
    }

    return NO_ERROR;
#endif
}

/*
 **************************************************************************
 * FunctionName: CameraHal::cancelPicture;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::cancelPicture()
{
    CAMERA_EVENT_LOGI("cancel snapshot");

    sp<PictureThread> pictureThread;

    { // scope for the lock
        Mutex::Autolock lock(mLock);
        pictureThread = mPictureThread;
    }

    // don't hold the lock while waiting for the thread to quit

    if (pictureThread != 0)
    {
        int ret = pictureThread->requestExitAndWait();
    }

    Mutex::Autolock lock(mLock);
    mPictureThread.clear();
    mPictureThread = 0;

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::dump;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::dump(int fd) const
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::setParameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::setParameters(const CameraParameters params)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);
    CAMERA_HAL_LOGV("params=%s", params.flatten().string());

    Mutex::Autolock lock(mLock);

    int ret = 0;

    mExtendedEnv.mParameters = params;

    ret = mParameterManager->setParam(mExtendedEnv.mParameters);
    if(ret < 0)
    {
        CAMERA_EVENT_LOGE("set parameters FAILED");
        return UNKNOWN_ERROR;
    }

    ret = mParameterManager->commitParam();
    if(ret < 0)
    {
        CAMERA_EVENT_LOGE("commit parameters FAILED");
        return UNKNOWN_ERROR;
    }

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::getParameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CameraParameters CameraHal::getParameters() const
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    Mutex::Autolock lock(mLock);

    return mExtendedEnv.mParameters;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::sendCommand;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
status_t CameraHal::sendCommand(int32_t command, int32_t arg1, int32_t arg2)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

     Mutex::Autolock lock(mLock);

    return NO_ERROR;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::release;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::release()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (mMJPEGDecoder != NULL) {
        mMJPEGDecoder->cancelExternalBuffer();
        CAMERA_DELETE(mMJPEGDecoder);
    }
}

/*
 **************************************************************************
 * FunctionName: CameraHal::OnFrameArrivedMJPEG;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */

void CameraHal::OnFrameArrivedMJPEG(char *buffer, int length)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    buffer_handle_t *native_buffer1 = NULL;
    buffer_handle_t *native_buffer2 = NULL;
    int Stride = 0;
    nsecs_t Timestamp = 0;
    if (NULL == mPreviewWindow || NULL == mMJPEGDecoder)
    {
        return;
    }

    if (!mWindowConfiged)
    {
        mWindowConfiged = true;
    }

    if (mPreviewUsedCount >= mPreviewBuffercount)
    {
        CAMERA_HAL_LOGE("====All preview window is in used, try again!====");
        return;
    }

    mMJPEGDecoder->putStream((unsigned char *)buffer, length);
    int ret = mMJPEGDecoder->receiveFrame(&native_buffer1, (uint64_t *)&(Timestamp), &Stride);
    if (ret != OK)
    {
        if(ret == -101 && mutexBoolRead(&mPreviewRunning)) {
            mMJPEGDecoder->cancelExternalBuffer();
            CAMERA_DELETE(mMJPEGDecoder);
            mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, CAMERA_ERROR_SERVER_DIED, 0, mExtendedEnv.mUser);
            mutexBoolWrite(&mPreviewAlreadyStopped, true);
            stopPreview();
        }
        return;
    }

    private_handle_t *p_private_handle = const_cast<private_handle_t*>(reinterpret_cast<const private_handle_t*>(*native_buffer1));
    uint32_t frameSize = Stride * mPreviewHeight * 3 / 2;
    uint8_t *userAddr = (uint8_t *)HI_MEM_Map(p_private_handle->ion_phy_addr, frameSize);

    ret = mPreviewWindow->enqueue_buffer(mPreviewWindow, native_buffer1);
    if(ret >= 0) {
        mEnqueuedBuffers++;
    }

    if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_VIDEO_FRAME)  && mPreviewFakeRunning)
    {
        if (mUseMetaDataBufferMode)
        {
            mPreviewUsedCount++;
            camera_memory_t* videoMedatadaBufferMemory = mExtendedEnv.mRequestMemory(-1, sizeof(video_metadata_t), 1, NULL);
            if ((NULL == videoMedatadaBufferMemory) || (NULL == videoMedatadaBufferMemory->data) || (NULL == native_buffer1))
            {
                CAMERA_HAL_LOGE("Error! Could not allocate memory for Video Metadata Buffers");
                return ;
            }
            video_metadata_t* videoMetadataBuffer = (video_metadata_t*) videoMedatadaBufferMemory->data;

            //videoMetadataBuffer->metadataBufferType = 0;
            buffer_handle_t imgBuffer = *(buffer_handle_t*)((uint8_t*)native_buffer1);
            videoMetadataBuffer->handle = (void*)imgBuffer;
            videoMetadataBuffer->offset = 0;

            CAMERA_HAL_LOGV("mDataCbTimestamp : frame->mBuffer=0x%x, videoMetadataBuffer=0x%x, videoMedatadaBufferMemory=0x%x",
                                native_buffer1, videoMetadataBuffer, videoMedatadaBufferMemory);
            mVideoMetadataBufferMemoryMap.add((uint32_t)videoMetadataBuffer, (uint32_t)(videoMedatadaBufferMemory));
            //nsecs_t timestamp = systemTime(SYSTEM_TIME_MONOTONIC);
            mExtendedEnv.mDataCbTimeStamp(Timestamp, CAMERA_MSG_VIDEO_FRAME, videoMedatadaBufferMemory, 0, mExtendedEnv.mUser);
        }
    }

    if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_PREVIEW_FRAME) && mPreviewFakeRunning)
    {
        camera_memory_t* frame = mExtendedEnv.mRequestMemory(-1, mPreviewWidth * mPreviewHeight * 3/2, 1, NULL);
        if (NULL != frame && NULL != frame->data && NULL != userAddr)
        {
            if(0 == strcmp(mExtendedEnv.mPreviewFrameFmt, CameraParameters::PIXEL_FORMAT_YUV420P)){
                convert_YUV420sp_to_YUV420p((char*)userAddr, (char *)frame->data, mPreviewWidth, mPreviewHeight, Stride);
            } else if (Stride != mPreviewWidth) {
                getVideoData((char *)userAddr, (char *)frame->data, mPreviewWidth, mPreviewHeight, Stride);
            } else {
                memcpy(frame->data, userAddr, frameSize);
            }
            CAMERA_HAL_LOGV("send CAMERA_MSG_PREVIEW_FRAME to app");
            mExtendedEnv.mDataCb(CAMERA_MSG_PREVIEW_FRAME, frame, 0, NULL, mExtendedEnv.mUser);
            frame->release(frame);
        }
        else
        {
            CAMERA_HAL_LOGE("fail to alloc memory for video preview frame");
        }
    }

    if(mTakePictureWithPreviewDate)
    {
        if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_SHUTTER) && mExtendedEnv.mNotifyCb)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_SHUTTER, 0, 0, mExtendedEnv.mUser);
        }

        if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE) != 0)
        {
            camera_memory_t* frame = mExtendedEnv.mRequestMemory(-1, mPreviewWidth * mPreviewHeight * 3/2, 1, NULL);
            if (NULL != frame && NULL != frame->data && NULL != userAddr)
            {
                if(0 == strcmp(mExtendedEnv.mPreviewFrameFmt, CameraParameters::PIXEL_FORMAT_YUV420P)){
                    convert_YUV420sp_to_YUV420p((char*)userAddr, (char *)frame->data, mPreviewWidth, mPreviewHeight, Stride);
                } else if (Stride != mPreviewWidth) {
                    getVideoData((char *)userAddr, (char *)frame->data, mPreviewWidth, mPreviewHeight, Stride);
                } else {
                    memcpy(frame->data, userAddr, frameSize);
                }
                CAMERA_HAL_LOGV("send CAMERA_MSG_RAW_IMAGE to app");
                mExtendedEnv.mDataCb(CAMERA_MSG_RAW_IMAGE, frame, 0, NULL, mExtendedEnv.mUser);
                frame->release(frame);
            }
            else
            {
                CAMERA_HAL_LOGE("fail to alloc memory for camera picture frame");
            }
        }
        else if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE_NOTIFY) != 0)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_RAW_IMAGE_NOTIFY, 0, 0, mExtendedEnv.mUser);
        }

        int jpegSize = 0;
        int thumbnailSize = 0;
        ConvertYUV420SPtoRGB565((uint64_t)p_private_handle->ion_phy_addr, (unsigned char **)(&mPictureBuffer), mSnapshotWidth, mSnapshotHeight,
                                    mSnapshotWidth, mSnapshotHeight, Stride);
        jpegEncoder(mPictureBuffer, mPictureBuffer, mSnapshotWidth, mSnapshotHeight, mJpegQuality, &jpegSize);

        if(mExtendedEnv.mThumbnailWidth != 0 && mExtendedEnv.mThumbnailHeight != 0){
            ConvertYUV420SPtoRGB565((uint64_t)p_private_handle->ion_phy_addr, (unsigned char **)(&mThumbnailBuffer), mSnapshotWidth, mSnapshotHeight,
                                        mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight, Stride);
            jpegEncoder(mThumbnailBuffer, mThumbnailBuffer, mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight, mExtendedEnv.mThumbnailQuality, &thumbnailSize);
        }

        JpegEncoderExif* exif      = NULL;
        ExifBuffer* exifBuffer     = NULL;

        exif = new JpegEncoderExif(&mExtendedEnv);
        if(exif == NULL)
        {
            ALOGE("failed to create JpegEncoderExif");
        }
        exif->jpegEncoderExifInit();

        exifBuffer = exif->makeExif(exif, (unsigned char*)mThumbnailBuffer, thumbnailSize);

        int totalSize = 0;
        if(exifBuffer && ( exifBuffer->mSize > 0))
        {
            totalSize = EXIF_ATTR_LEN + exifBuffer->mSize + jpegSize;
        }
        else
        {
            totalSize = jpegSize;
        }

        camera_memory_t* pictureData = mExtendedEnv.mRequestMemory(-1, totalSize, 1, NULL);
        if(!pictureData || !(pictureData->data))
        {
            ALOGE("fail to allocate memory for jpeg");
            mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, 1, 0, mExtendedEnv.mUser);
            CAMERA_FREE(mThumbnailBuffer);
            CAMERA_FREE(mPictureBuffer);
            return;
        }
        char* picAddr = (char*)(pictureData->data);
        char* outAddr = (char*)(mPictureBuffer);
        if(exifBuffer && ( exifBuffer->mSize > 0))
        {
            memcpy(picAddr, outAddr, JPEG_HEADER_LEN);

            unsigned short exifIdentifier = EXIF_ID;
            unsigned short exifLength = exifBuffer->mSize +2;
            unsigned short *exifStart = (unsigned short *)(picAddr + JPEG_HEADER_LEN);
            *exifStart = SWAP(exifIdentifier);
            *(exifStart+1) = SWAP(exifLength);
            memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN, exifBuffer->mData, exifBuffer->mSize);
            memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN + exifBuffer->mSize, outAddr + JPEG_HEADER_LEN, jpegSize - JPEG_HEADER_LEN);
        }
        else
        {
            memcpy(picAddr, mPictureBuffer, jpegSize);
        }

        if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_COMPRESSED_IMAGE)
        {
            if(totalSize > 0)
            {
                if (pictureData && pictureData->data)
                {
                    CAMERA_HAL_LOGV("send CAMERA_MSG_COMPRESSED_IMAGE to app");
                    mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, pictureData, 0, NULL, mExtendedEnv.mUser);
                    pictureData->release(pictureData);
                }
                else
                {
                    CAMERA_HAL_LOGE("fail to alloc memory for picture");
                }
            }
            else
            {
                mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, 0, 0, NULL, mExtendedEnv.mUser);
            }
        }

        CAMERA_FREE(mThumbnailBuffer);
        CAMERA_FREE(mPictureBuffer);

        CAMERA_EVENT_LOGI("take picture OK");
        mTakePictureWithPreviewDate = false;
    }

    if (mEnqueuedBuffers > minUndequeuedBuffers)
    {
        ret = mPreviewWindow->dequeue_buffer(mPreviewWindow, &native_buffer2, &Stride);
        if(ret < 0)
        {
            ALOGE("====fail to dequeue buffer from preview window====, ret=%d", ret);
            return;
        }
        mMJPEGDecoder->releaseFrame(native_buffer2);
        mEnqueuedBuffers--;
    }

    CAMERA_HAL_LOGV("exit %s()", __FUNCTION__);

    return;
}

/*
 **************************************************************************
 * FunctionName: CameraHal::OnFrameArrivedYUYV;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void CameraHal::OnFrameArrivedYUYV(char *buffer, int length)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    void* img = NULL;
    buffer_handle_t* native_buffer = NULL;
    if (NULL != mPreviewWindow)
    {
        int Stride = 0;
        if (!mWindowConfiged)
        {
            mWindowConfiged = true;
            return;
        }

        int ret = mPreviewWindow->dequeue_buffer(mPreviewWindow, &native_buffer, &Stride);
        if(ret < 0)
        {
            CAMERA_HAL_LOGE("====fail to dequeue buffer from preview window====, ret=%d", ret);
            return;
        }

        if (NULL != native_buffer)
        {
            mPreviewWindow->lock_buffer(mPreviewWindow, native_buffer);

            const Rect rect(mPreviewWidth, mPreviewHeight);
            GraphicBufferMapper& grbuffer_mapper(GraphicBufferMapper::get());
            grbuffer_mapper.lock(*native_buffer, GRALLOC_USAGE_SW_WRITE_OFTEN, rect, &img);

            convert_yuv422packed_to_yuv420sp((char*)buffer, (char *)img, mPreviewWidth, mPreviewHeight, Stride);

            if(!mutexBoolRead(&mPreviewRunning))
            {
                CAMERA_HAL_LOGI("preview requested stop during convert_yuv422packed_to_yuv420sp");
                grbuffer_mapper.unlock(*native_buffer);
                mPreviewWindow->enqueue_buffer(mPreviewWindow, native_buffer);
                return;
            }

            grbuffer_mapper.unlock(*native_buffer);
            mPreviewWindow->enqueue_buffer(mPreviewWindow, native_buffer);
        }
    }

    if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_VIDEO_FRAME)  && mPreviewFakeRunning)
    {
        if (mUseMetaDataBufferMode)
        {
            mPreviewUsedCount++;
            camera_memory_t* videoMedatadaBufferMemory = mExtendedEnv.mRequestMemory(-1, sizeof(video_metadata_t), 1, NULL);
            if ((NULL == videoMedatadaBufferMemory) || (NULL == videoMedatadaBufferMemory->data) || (NULL == native_buffer))
            {
                CAMERA_HAL_LOGE("Error! Could not allocate memory for Video Metadata Buffers");
                return ;
            }
            video_metadata_t* videoMetadataBuffer = (video_metadata_t*) videoMedatadaBufferMemory->data;

            //videoMetadataBuffer->metadataBufferType = 0;
            buffer_handle_t imgBuffer = *(buffer_handle_t*)((uint8_t*)native_buffer);
            videoMetadataBuffer->handle = (void*)imgBuffer;
            videoMetadataBuffer->offset = 0;

            CAMERA_HAL_LOGV("mDataCbTimestamp : frame->mBuffer=0x%x, videoMetadataBuffer=0x%x, videoMedatadaBufferMemory=0x%x",
                                native_buffer, videoMetadataBuffer, videoMedatadaBufferMemory);
            mVideoMetadataBufferMemoryMap.add((uint32_t)videoMetadataBuffer, (uint32_t)(videoMedatadaBufferMemory));

            nsecs_t timestamp = systemTime(SYSTEM_TIME_MONOTONIC);
            mExtendedEnv.mDataCbTimeStamp(timestamp, CAMERA_MSG_VIDEO_FRAME, videoMedatadaBufferMemory, 0, mExtendedEnv.mUser);
        }
        else
        {
            int size = mPreviewWidth * mPreviewHeight * 3 / 2;
            camera_memory_t* frame = mExtendedEnv.mRequestMemory(-1, size, 1, NULL);
            if (NULL != frame && NULL != frame->data && NULL != img)
            {
                if(0 == strcmp(mExtendedEnv.mPreviewFrameFmt, CameraParameters::PIXEL_FORMAT_YUV420P)){
                    convert_YUYV_to_YUV420planar((char*)buffer, (char *)frame->data, mPreviewWidth, mPreviewHeight, mPreviewWidth);
                }else{
                    convert_yuv422packed_to_yuv420sp((char*)buffer, (char *)frame->data, mPreviewWidth, mPreviewHeight, mPreviewWidth);
                }
                nsecs_t timestamp = systemTime(SYSTEM_TIME_MONOTONIC);
                if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_VIDEO_FRAME){
                    mExtendedEnv.mDataCbTimeStamp(timestamp, CAMERA_MSG_VIDEO_FRAME, frame, 0, mExtendedEnv.mUser);
                }
                frame->release(frame);
            }
            else
            {
                CAMERA_HAL_LOGE("fail to alloc memory for video camera frame");
            }
        }
    }

    if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_PREVIEW_FRAME) && mPreviewFakeRunning)
    {
        int size = mPreviewWidth * mPreviewHeight * 3 / 2;
        camera_memory_t* frame = mExtendedEnv.mRequestMemory(-1, size, 1, NULL);
        if (NULL != frame && NULL != frame->data && NULL != img)
        {
            if(0 == strcmp(mExtendedEnv.mPreviewFrameFmt, CameraParameters::PIXEL_FORMAT_YUV420P)){
                convert_YUYV_to_YUV420planar((char*)buffer, (char *)frame->data, mPreviewWidth, mPreviewHeight, mPreviewWidth);
            }else{
                convert_yuv422packed_to_yuv420sp((char*)buffer, (char *)frame->data, mPreviewWidth, mPreviewHeight, mPreviewWidth);
            }
            CAMERA_HAL_LOGV("send CAMERA_MSG_PREVIEW_FRAME to app");
            mExtendedEnv.mDataCb(CAMERA_MSG_PREVIEW_FRAME, frame, 0, NULL, mExtendedEnv.mUser);
            frame->release(frame);
        }
        else
        {
            CAMERA_HAL_LOGE("fail to alloc memory for video preview frame");
        }
    }

    if(mTakePictureWithPreviewDate)
    {
        if ((mExtendedEnv.mMsgEnabled & CAMERA_MSG_SHUTTER) && mExtendedEnv.mNotifyCb)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_SHUTTER, 0, 0, mExtendedEnv.mUser);
        }

        if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE) != 0)
        {
            int size = mSnapshotWidth * mSnapshotHeight * 3 / 2;
            camera_memory_t* frame = mExtendedEnv.mRequestMemory(-1, size, 1, NULL);
            if (NULL != frame && NULL != frame->data && NULL != img)
            {
                convert_yuv422packed_to_yuv420sp((char*)buffer, (char *)frame->data, mSnapshotWidth, mSnapshotHeight, mSnapshotWidth);
                CAMERA_HAL_LOGV("send CAMERA_MSG_RAW_IMAGE to app");
                mExtendedEnv.mDataCb(CAMERA_MSG_RAW_IMAGE, frame, 0, NULL, mExtendedEnv.mUser);
                frame->release(frame);
            }
            else
            {
                CAMERA_HAL_LOGE("fail to alloc memory for camera picture frame");
            }
        }
        else if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE_NOTIFY) != 0)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_RAW_IMAGE_NOTIFY, 0, 0, mExtendedEnv.mUser);
        }

        int jpegSize = 0;
        int thumbnailSize = 0;
        ConvertYUYVtoRGB565((void*)buffer, mPictureBuffer, mSnapshotWidth, mSnapshotHeight, mSnapshotWidth, mSnapshotHeight);
        jpegEncoder(mPictureBuffer, mPictureBuffer, mSnapshotWidth, mSnapshotHeight, mJpegQuality, &jpegSize);

        if(mExtendedEnv.mThumbnailWidth != 0 && mExtendedEnv.mThumbnailHeight != 0){
            ConvertYUYVtoRGB565((void*)buffer, mThumbnailBuffer, mSnapshotWidth, mSnapshotHeight, mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight);
            jpegEncoder(mThumbnailBuffer, mThumbnailBuffer, mExtendedEnv.mThumbnailWidth, mExtendedEnv.mThumbnailHeight, mExtendedEnv.mThumbnailQuality, &thumbnailSize);
        }

        JpegEncoderExif* exif      = NULL;
        ExifBuffer* exifBuffer     = NULL;

        exif = new JpegEncoderExif(&mExtendedEnv);
        if(exif == NULL)
        {
            ALOGE("failed to create JpegEncoderExif");
        }
        exif->jpegEncoderExifInit();

        exifBuffer = exif->makeExif(exif, (unsigned char*)mThumbnailBuffer, thumbnailSize);

        int totalSize = 0;
        if(exifBuffer && ( exifBuffer->mSize > 0))
        {
            totalSize = EXIF_ATTR_LEN + exifBuffer->mSize + jpegSize;
        }
        else
        {
            totalSize = jpegSize;
        }

        camera_memory_t* pictureData = mExtendedEnv.mRequestMemory(-1, totalSize, 1, NULL);
        if(!pictureData || !(pictureData->data))
        {
            ALOGE("fail to allocate memory for jpeg");
            mExtendedEnv.mNotifyCb(CAMERA_MSG_ERROR, 1, 0, mExtendedEnv.mUser);
            CAMERA_FREE(mPictureBuffer);
            CAMERA_FREE(mThumbnailBuffer);
            return;
        }
        char* picAddr = (char*)(pictureData->data);
        char* outAddr = (char*)(mPictureBuffer);
        if(exifBuffer && ( exifBuffer->mSize > 0))
        {
            memcpy(picAddr, outAddr, JPEG_HEADER_LEN);

            unsigned short exifIdentifier = EXIF_ID;
            unsigned short exifLength = exifBuffer->mSize +2;
            unsigned short *exifStart = (unsigned short *)(picAddr + JPEG_HEADER_LEN);
            *exifStart = SWAP(exifIdentifier);
            *(exifStart+1) = SWAP(exifLength);
            memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN, exifBuffer->mData, exifBuffer->mSize);
            memcpy(picAddr + JPEG_HEADER_LEN + EXIF_ATTR_LEN + exifBuffer->mSize, outAddr + JPEG_HEADER_LEN, jpegSize - JPEG_HEADER_LEN);
        }
        else
        {
            memcpy(picAddr, mPictureBuffer, jpegSize);
        }

        if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE) != 0)
        {
            camera_memory_t* picture    = NULL;
            picture = mExtendedEnv.mRequestMemory(-1, mPictureFrameSize, 1, NULL);
            if(picture && picture->data)
            {
                memcpy((char *)picture->data, (char *)buffer, mPictureFrameSize);
                CAMERA_HAL_LOGV("send CAMERA_MSG_RAW_IMAGE to app");
                mExtendedEnv.mDataCb(CAMERA_MSG_RAW_IMAGE, picture, 0, NULL, mExtendedEnv.mUser);
                picture->release(picture);
            }
        }
        else if((mExtendedEnv.mMsgEnabled & CAMERA_MSG_RAW_IMAGE_NOTIFY) != 0)
        {
            mExtendedEnv.mNotifyCb(CAMERA_MSG_RAW_IMAGE_NOTIFY, 0, 0, mExtendedEnv.mUser);
        }

        if (mExtendedEnv.mMsgEnabled & CAMERA_MSG_COMPRESSED_IMAGE)
        {
            if(totalSize > 0)
            {
                if (pictureData && pictureData->data)
                {
                    CAMERA_HAL_LOGV("send CAMERA_MSG_COMPRESSED_IMAGE to app");
                    mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, pictureData, 0, NULL, mExtendedEnv.mUser);
                    pictureData->release(pictureData);
                }
                else
                {
                    CAMERA_HAL_LOGE("fail to alloc memory for picture");
                }
            }
            else
            {
                mExtendedEnv.mDataCb(CAMERA_MSG_COMPRESSED_IMAGE, 0, 0, NULL, mExtendedEnv.mUser);
            }
        }

        CAMERA_FREE(mPictureBuffer);
        CAMERA_FREE(mThumbnailBuffer);

        CAMERA_EVENT_LOGI("take picture OK");
        mTakePictureWithPreviewDate = false;
    }

    CAMERA_HAL_LOGV("exit %s()", __FUNCTION__);

    return;
}

}; // namespace android

/********************************** END **********************************************/
