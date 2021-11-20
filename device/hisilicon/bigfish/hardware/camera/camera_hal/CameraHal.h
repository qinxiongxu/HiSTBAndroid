/*
 **************************************************************************************
 *       Filename:  CameraHal.h
 *    Description:  Camera HAL head file
 *
 *        Version:  1.0
 *        Created:  2012-05-17 09:33:34
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
#ifndef CAMERAHAL_H_INCLUDED
#define CAMERAHAL_H_INCLUDED

#include <hardware/camera.h>
#include <linux/videodev2.h>
#include <binder/MemoryBase.h>
#include <binder/MemoryHeapBase.h>
#include <camera/CameraParameters.h>

#include "CameraUtils.h"
#include "CameraHalImpl.h"
#include "PipeMessage.h"
#include "CameraExtendedEnv.h"
#include "CapabilityManager.h"
#include "CameraJpegDecoder.h"

#define ENABLE_TAKE_PICTURE 1

#define OVERLAY_IN_USE  0x1
#define RECORD_IN_USE   0x2

#define SET_OVERLAY_USE(flag) (flag = (flag | OVERLAY_IN_USE))
#define SET_RECORD_USE(flag)  (flag = (flag | RECORD_IN_USE))
#define CLR_OVERLAY_USE(flag) (flag = (flag & (~OVERLAY_IN_USE)))
#define CLR_RECORD_USE(flag)  (flag = (flag & (~RECORD_IN_USE)))
#define CLR_ALL_USE(flag)     (flag = (flag & 0x0))
#ifndef VIDEO_METADATA_H
#define VIDEO_METADATA_H

/* This structure is used to pass buffer offset from Camera-Hal to Encoder component
 * for specific algorithms like VSTAB & VNF
 */

typedef struct
{
    //int metadataBufferType;
    int offset;
    void* handle;
}
video_metadata_t;

#endif

namespace android {

class CameraHal
{
public:
                        CameraHal(int id);
    virtual             ~CameraHal();

    virtual void        setCallbacks(camera_notify_callback notify_cb,
                                    camera_data_callback data_cb,
                                    camera_data_timestamp_callback data_cb_timestamp,
                                    camera_request_memory get_memory,
                                    void* user);

    virtual void        enableMsgType(int32_t msgType);
    virtual void        disableMsgType(int32_t msgType);
    virtual bool        msgTypeEnabled(int32_t msgType);
    virtual status_t    storeMetaDataInBuffers(bool enable);

    virtual status_t    startPreview();
    virtual void        stopPreview();
    virtual bool        previewEnabled();

    virtual status_t    startRecording();
    virtual void        stopRecording();
    virtual bool        recordingEnabled();
    virtual void        releaseRecordingFrame(const void *opaque);

    virtual status_t    autoFocus();
    virtual status_t    cancelAutoFocus();

    virtual status_t    takePicture();
    virtual status_t    cancelPicture();

    virtual status_t    dump(int fd) const;

    virtual status_t    setParameters(const CameraParameters params);
    CameraParameters    getParameters() const;
    virtual status_t    sendCommand(int32_t command, int32_t arg1, int32_t arg2);
    virtual void        release();

    static              sp<CameraHal> createInstance();
    int                 setPreviewWindow(struct preview_stream_ops*  window);

public:
    int     mInitOK;

private:
    class StateThread : public Thread
    {
        CameraHal* mHardware;
        public:
            StateThread(CameraHal* hw) :
            Thread(false),
            mHardware(hw) { }

        virtual status_t readyToRun()
        {
            CAMERA_EVENT_LOGI("thread [state thread ] started [thread id = %d]", getCurrentThreadId());
            return NO_ERROR;
        }

        virtual ~StateThread()
        {
            CAMERA_EVENT_LOGI("====state thread exit====");
        }

        virtual bool threadLoop()
        {
            mHardware->stateThread();
            return false;
        }
    };

    class PreviewThread : public Thread {
        CameraHal* mHardware;
        public:
        PreviewThread(CameraHal* hw) :
            Thread(false),
            mHardware(hw) { }

        virtual status_t readyToRun()
        {
            CAMERA_EVENT_LOGI("thread [preview thread ] started [thread id = %d]", getCurrentThreadId());
            return NO_ERROR;
        }

        virtual bool threadLoop()
        {
            mHardware->previewThread();
            return false;
        }
    };

    class PictureThread : public Thread
    {
        CameraHal* mHardware;
        public:
            PictureThread(CameraHal* hw) :
            Thread(false),
            mHardware(hw) { }

        virtual status_t readyToRun()
        {
            CAMERA_EVENT_LOGI("thread [picture thread ] started [thread id = %d]", getCurrentThreadId());
            return NO_ERROR;
        }

        virtual bool threadLoop()
        {
             mHardware->pictureThread();
            return false;
        }
    };

    int         checkCameraDevice(int id);
    void        clearCameraObject();
    void        initDefaultParameters();
    void        initHeapLocked();
    void        deinitHeapLocked();

    bool        mutexBoolRead(bool *var);
    void        mutexBoolWrite(bool *var, bool value);

    int         previewConfig();
    int         previewDeconfig();
    int         previewStart();
    int         previewStop();
    void        previewThread();
    void        stateThread();

    int         pictureStart();
    int         pictureStop();

    static int  beginAutoFocusThread(void *cookie);
    int         autoFocusThread();

    int         beginPictureThread();
    int         pictureThread();
    int         jpegEncoder(void* srcBuffer, void * dstBuffer, int width, int height, int quality, int *jpegSize);

    void        OnFrameArrivedYUYV(char *buffer, int length);
    void        OnFrameArrivedMJPEG(char *buffer, int length);

private:
    mutable Mutex           mLock;
    mutable Mutex           mLockVariable;

    int                     mSize;
    sp<MemoryHeapBase>      mHeap;
    sp<IMemory>             mBuffer[MAX_PREVIEW_BUFFERS];

    Vector<previewBuffer*>  mBufferVector;
    struct previewBuffer*   mPreviewBuffer;

    //Keeps list of Gralloc handles and associated Video Metadata Buffers
    KeyedVector<uint32_t, uint32_t> mVideoMetadataBufferMemoryMap;
    bool                    mWindowConfiged;
    int                     mPreviewWidth;
    int                     mPreviewHeight;

    int                     mSnapshotWidth;
    int                     mSnapshotHeight;
    int                     mJpegQuality;
    int                     mPictureFrameSize;
    int                     mThumbnailSize;
    char*                   mPictureBuffer;
    char*                   mThumbnailBuffer;

    preview_stream_ops*     mPreviewWindow;
    bool                    mPreviewConfigured;
    bool                    mPreviewAlreadyStopped;
    bool                    mPreviewFakeRunning;
    bool                    mPreviewRunning;

    int32_t                 mMsgEnabled;
    bool                    mRecordEnabled;
    bool                    mPictureEnabled;

    sp<PreviewThread>       mPreviewThread;
    sp<StateThread>         mStateThread;
    sp<PictureThread>       mPictureThread;

    PipeMessage             mMsgToStateThread;
    PipeMessage             mMsgFromStateThread;

    CapabilityManager*      mParameterManager;
    CameraExtendedEnv       mExtendedEnv;
    CameraHalImpl*          mCameraImpl;
    CameraJpegDecoder*      mMJPEGDecoder;

    int                     mErrorCount;
    bool                    mTakePictureWithPreviewDate;
    bool                    mUseMetaDataBufferMode;
    unsigned int            mPreviewBuffercount;
    int                     mPreviewUsedCount;
    int                     mEnqueuedBuffers;
    int                     minUndequeuedBuffers;
};

}; // namespace android

#endif /* CAMERAHAL_H_INCLUDED*/

/********************************** END **********************************************/
