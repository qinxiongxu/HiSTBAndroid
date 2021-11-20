/*
 **************************************************************************************
 *       Filename:  CameraHalImpl.cpp
 *    Description:  Camera HAL Impl source file
 *
 *        Version:  1.0
 *        Created:  2012-05-21 14:08:20
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
//#define LOG_NDEBUG 0
#define LOG_TAG "CameraHalImpl"
#include <utils/Log.h>

#include "CameraUtils.h"
#include "CameraVender.h"
#include "CameraHalImpl.h"

namespace android {

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::CameraHalImpl;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CameraHalImpl::CameraHalImpl(void *env)
        :   mPreviewWidth     (0),
            mPreviewHeight    (0),
            mPreviewFormat    (0),
            mSnapshotWidth    (0),
            mSnapshotHeight   (0),
            mSnapshotFormat   (0)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    mEnv  = (CameraExtendedEnv*)env;

    mPreviewBuffer = NULL;

    initCameraBuffers(mBufferPreview,  MAX_PREVIEW_BUFFERS);
    initCameraBuffers(mBufferSnapshot, MAX_SNAPSHOT_BUFFERS);
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::~CameraHalImpl;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CameraHalImpl::~CameraHalImpl()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    deinitCameraBuffers(mBufferPreview,  MAX_PREVIEW_BUFFERS);
    deinitCameraBuffers(mBufferSnapshot, MAX_SNAPSHOT_BUFFERS);

    closeCamera();

    CAMERA_HAL_LOGV("exit %s()", __FUNCTION__);
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::openCamera;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::openCamera()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    mEnv->mCameraFd = open(mEnv->mCameraDevName, O_RDWR | O_NONBLOCK);
    if (mEnv->mCameraFd < 0)
    {
        CAMERA_EVENT_LOGW("open[%s] failed, err=[%s]", CAMERA_DEV_NAME, strerror(errno));
        return mEnv->mCameraFd;
    }

    CAMERA_EVENT_LOGI("open [%s] OK", mEnv->mCameraDevName);

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::closeCamera;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::closeCamera()
{
    if(mEnv->mCameraFd >= 0)
    {
        CAMERA_EVENT_LOGI("close camera device");
        close(mEnv->mCameraFd);
        mEnv->mCameraFd = -1;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::startPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::startPreview()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i   = 0;
    int ret = 0;

    if(mEnv->mCameraFd < 0)
    {
        ret = openCamera();
        if(ret < 0)
        {
            CAMERA_EVENT_LOGE("open camera FAILED");
            return ret;
        }
    }

    initCameraBuffers(mBufferPreview, MAX_PREVIEW_BUFFERS);

    mPreviewWidth   = mEnv->mPreviewWidth;
    mPreviewHeight  = mEnv->mPreviewHeight;
    mPreviewFormat  = mEnv->mPreviewFormat;

    /*
     * if the camera if gsou, we sleep 2s when switch to the recodring mode
     * to resolve the problem of video Huaping
     */
    if(mEnv->mCameraVender == CAMERA_VENDER_GSOU)
    {
        const char *value     = mEnv->mParameters.get(CameraParameters::KEY_RECORDING_HINT);
        if( value && strcmp(value, "true") ==0 )
        {
            sleep(2);
        }
    }

    ret = cameraSetFormat(mPreviewWidth, mPreviewHeight, mPreviewFormat);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to set preview format to camera driver");
        return ret;
    }

    ret = cameraRequestBuffer(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE, MAX_PREVIEW_BUFFERS);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to request buffers from camera driver");
        return ret;
    }

    ret = cameraQueryBuffer(mEnv->mCameraFd, mBufferPreview, V4L2_BUF_TYPE_VIDEO_CAPTURE, MAX_PREVIEW_BUFFERS);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to query buffer from driver");
        return ret;
    }

    for(i = 0; i < MAX_PREVIEW_BUFFERS; i++)
    {
        ret = cameraQueueBuffer(mEnv->mCameraFd, mBufferPreview, V4L2_BUF_TYPE_VIDEO_CAPTURE, i);
        if(ret < 0)
        {
            CAMERA_HAL_LOGE("fail to queue buffer[%d] to driver", i);
            return ret;
        }
    }

    cameraSetParameter(mEnv->mCameraFd, mEnv->mPreviewFps);

    ret = cameraStreamOn(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to start preview");
        return ret;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::stopPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::stopPreview()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    deinitCameraBuffers(mBufferPreview,  MAX_PREVIEW_BUFFERS);

    int ret = cameraStreamOff(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to stop preview");
    }

    closeCamera();

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::getPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::getPreview(struct previewBuffer * buffer)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int index   = 0;
    int ret     = 0;
    struct v4l2_buffer v4l2_buf;

    memset(&v4l2_buf, 0, sizeof(v4l2_buf));
    v4l2_buf.type   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    v4l2_buf.memory = V4L2_MEMORY_MMAP;

    ret = ioctl(mEnv->mCameraFd, VIDIOC_DQBUF, &v4l2_buf);
    if (ret < 0)
    {
        CAMERA_HAL_LOGV("fail to dequeue buffer from driver:%s",strerror(errno));
        return ret;
    }

    index = v4l2_buf.index;

    memcpy(buffer, mPreviewBuffer+index, sizeof(struct previewBuffer));
    buffer->length = v4l2_buf.bytesused;

    CAMERA_HAL_LOGV("exit %s()", __FUNCTION__);

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::getPreview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::getPreview(int *index)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    struct v4l2_buffer v4l2_buf;

    memset(&v4l2_buf, 0, sizeof(v4l2_buf));
    v4l2_buf.type   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    v4l2_buf.memory = V4L2_MEMORY_MMAP;

    ret = ioctl(mEnv->mCameraFd, VIDIOC_DQBUF, &v4l2_buf);
    if (ret < 0)
    {
        CAMERA_HAL_LOGV("fail to dequeue buffer from driver:%s",strerror(errno));
        return ret;
    }

    *index = v4l2_buf.index;

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::queueFrame;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::queueFrame(int index)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct v4l2_buffer buf;

    memset(&buf, 0, sizeof (buf));
    buf.type     = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory   = V4L2_MEMORY_MMAP;
    buf.index    = index;

    if (ioctl (mEnv->mCameraFd, VIDIOC_QBUF, &buf) < 0)
    {
        CAMERA_HAL_LOGE("fail to queue buffer to driver");
        return -1;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::getPicture;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::getPicture(previewBuffer *buffer)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i           = 0;
    int ret         = 0;
    int index       = 0;
    int errorCount  = 0;
    
    initCameraBuffers(mBufferSnapshot, MAX_SNAPSHOT_BUFFERS);

    mSnapshotWidth   = mEnv->mSnapshotWidth;
    mSnapshotHeight  = mEnv->mSnapshotHeight;
    mSnapshotFormat  = mEnv->mSnapshotFormat;
    
    if(mEnv->mCameraFd < 0)
    {
        ret = openCamera();
        if(ret < 0)
        {
            CAMERA_EVENT_LOGE("open camera FAILED");
            return ret;
        }
    }

    ret = cameraSetFormat(mSnapshotWidth, mSnapshotHeight, mSnapshotFormat);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to set preview format to camera driver");
        return ret;
    }

    ret = cameraRequestBuffer(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE, MAX_SNAPSHOT_BUFFERS);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to request buffers from camera driver");
        return ret;
    }

    ret = cameraQueryBuffer(mEnv->mCameraFd, mBufferSnapshot, V4L2_BUF_TYPE_VIDEO_CAPTURE, MAX_SNAPSHOT_BUFFERS);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to query buffer from driver");
        return ret;
    }

    for(i = 0; i < MAX_SNAPSHOT_BUFFERS; i++)
    {
        ret = cameraQueueBuffer(mEnv->mCameraFd, mBufferSnapshot, V4L2_BUF_TYPE_VIDEO_CAPTURE, i);
        if(ret < 0)
        {
            CAMERA_HAL_LOGE("fail to queue buffer[%d] to driver", i);
            return ret;
        }
    }

    cameraSetParameter(mEnv->mCameraFd, mEnv->mPreviewFps);

    ret = cameraStreamOn(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to start snapshot");
        return ret;
    }

    struct v4l2_buffer v4l2_buf;
    do
    {
        memset(&v4l2_buf, 0, sizeof(v4l2_buf));
        v4l2_buf.type   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        v4l2_buf.memory = V4L2_MEMORY_MMAP;

        ret = ioctl(mEnv->mCameraFd, VIDIOC_DQBUF, &v4l2_buf);
        if (ret < 0)
        {
            errorCount++;
            CAMERA_HAL_LOGV("fail to dequeue buffer from driver");
            usleep(10*1000);
        }
        if(errorCount > MAX_ERROR_COUNT)
        {
            CAMERA_HAL_LOGE("fail to dequeue buffer from camera driver");
            return -1;
        }
    }while(ret < 0);

    //use sencond frame for jpeg encoder, and just skip first frame.
    errorCount = 0;
    do
    {
        memset(&v4l2_buf, 0, sizeof(v4l2_buf));
        v4l2_buf.type   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        v4l2_buf.memory = V4L2_MEMORY_MMAP;

        ret = ioctl(mEnv->mCameraFd, VIDIOC_DQBUF, &v4l2_buf);
        if (ret < 0)
        {
            errorCount++;
            CAMERA_HAL_LOGV("fail to dequeue buffer from driver");
            usleep(10*1000);
        }
        if(errorCount > MAX_ERROR_COUNT)
        {
            CAMERA_HAL_LOGE("fail to dequeue buffer from camera driver");
            return -1;
        }
    }while(ret < 0);

    index = v4l2_buf.index;
    ALOGI("buffer index=%d", index);

    CAMERA_HAL_LOGV("exit %s()", __FUNCTION__);

    buffer->viraddr = (char *)mBufferSnapshot[index].start;

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::stopSnapshot;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::stopSnapshot()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    deinitCameraBuffers(mBufferSnapshot, MAX_SNAPSHOT_BUFFERS);

    int ret  = cameraStreamOff(mEnv->mCameraFd, V4L2_BUF_TYPE_VIDEO_CAPTURE);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to stream off camera snapshot");
    }
    closeCamera();

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::initCameraBuffers;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::initCameraBuffers(struct cameraBuffer *buffer, int num)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    for (int i = 0; i < num; i++)
    {
        buffer[i].offset= 0;
        buffer[i].start = NULL;
        buffer[i].length= 0;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::deinitCameraBuffers;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::deinitCameraBuffers(struct cameraBuffer *buffer,int num)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    for (int i = 0; i < num; i++)
    {
        if (buffer[i].start)
        {
            if(munmap(buffer[i].start, buffer[i].length) < 0)
            {
                CAMERA_HAL_LOGV("Could not munmap base:0x%x size:%d '%s'", buffer[i].start, buffer[i].length, strerror(errno));
            }
            buffer[i].start = NULL;
        }
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraSetFormat;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraSetFormat(int width, int height, int fmt)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    struct v4l2_format format;

    format.type                 = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    format.fmt.pix.width        = width;
    format.fmt.pix.height       = height;
    format.fmt.pix.pixelformat  = fmt;

    ret = ioctl(mEnv->mCameraFd, VIDIOC_S_FMT, &format);
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to set format to camera driver : %s", strerror(errno));
        return -1;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraRequestBuffer;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraRequestBuffer(int fp, enum v4l2_buf_type type, int num)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    struct v4l2_requestbuffers req;

    memset(&req, 0, sizeof (req));
    req.count   = num;
    req.type    = type;
    req.memory  = V4L2_MEMORY_MMAP;

    if ((ret = ioctl(fp, VIDIOC_REQBUFS, &req)) < 0)
    {
        CAMERA_HAL_LOGE("fail to request buffer from camera driver : %s", strerror(errno));
        return ret;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraQueryBuffer;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraQueryBuffer(int fp, struct cameraBuffer *buffers, enum v4l2_buf_type type, int num)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i   = 0;
    int ret = 0;
    struct v4l2_buffer v4l2_buf;

    for(i = 0; i < num; i++)
    {
        memset(&v4l2_buf, 0, sizeof(v4l2_buf));
        v4l2_buf.type = type;
        v4l2_buf.index = i;

        ret = ioctl(fp , VIDIOC_QUERYBUF, &v4l2_buf);
        if(ret < 0)
        {
            CAMERA_HAL_LOGE("fail to query buffer from camera driver : %s", strerror(errno));
            return ret;
        }

        if(NULL == buffers[i].start)
        {
            buffers[i].length = (size_t) v4l2_buf.length;
            buffers[i].offset = (size_t) v4l2_buf.m.offset;
            if ((int)(buffers[i].start = (char *) mmap(NULL, buffers[i].length, \
                    PROT_READ | PROT_WRITE, MAP_SHARED, \
                    fp, v4l2_buf.m.offset)) == -1)
            {
                CAMERA_HAL_LOGE("fail to mmap buffer : %s", strerror(errno));
                return -1;
            }
        }

        if(MAX_PREVIEW_BUFFERS == num)
        {
            mPreviewBuffer[i].index     = i;
            mPreviewBuffer[i].viraddr   = buffers[i].start;
            mPreviewBuffer[i].phyaddr   = v4l2_buf.m.offset;
            mPreviewBuffer[i].flags     = 0;
            ALOGI("mPreviewBuffer[%d].viraddr=%p", i, mPreviewBuffer[i].viraddr);
            CAMERA_HAL_LOGV("mPreviewBuffer[%d].phyaddr=%08x", i, mPreviewBuffer[i].phyaddr);
        }
        else
        {
            ALOGI("mSnapshotBuffer[%d].viraddr=%p", i, buffers[i].start);
        }
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraStreamOn;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraStreamOn(int fp, enum v4l2_buf_type buf_type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    enum v4l2_buf_type type = buf_type;

    ret = ioctl(fp, VIDIOC_STREAMON, &type);
    if (ret < 0)
    {
        CAMERA_HAL_LOGE("fail to stream on camera : %s", strerror(errno));
        return ret;
    }

    return ret;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraStreamOff;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraStreamOff(int fp, enum v4l2_buf_type buf_type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    enum v4l2_buf_type type = buf_type;

    ret = ioctl(fp, VIDIOC_STREAMOFF, &type);
    if (ret < 0)
    {
        CAMERA_HAL_LOGE("fail to stream off camera : %s", strerror(errno));

        return ret;
    }

    return ret;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraQueueBuffer;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraQueueBuffer(int fp, struct cameraBuffer *buffer, enum v4l2_buf_type type, int index)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct v4l2_buffer buf;
    memset(&buf, 0, sizeof (buf));

    buf.type        = type;
    buf.memory      = V4L2_MEMORY_MMAP;
    buf.index       = index;

    if (ioctl(fp, VIDIOC_QBUF, &buf) < 0)
    {
        CAMERA_HAL_LOGE("fail to queue buffer to driver : %s", strerror(errno));
        return -1;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraDequeueBuffer;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraDequeueBuffer(int fp, enum v4l2_buf_type type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    struct v4l2_buffer v4l2_buf;

    memset(&v4l2_buf, 0, sizeof(v4l2_buf));
    v4l2_buf.type   = type;
    v4l2_buf.memory = V4L2_MEMORY_MMAP;

    ret = ioctl(fp, VIDIOC_DQBUF, &v4l2_buf);
    if (ret < 0)
    {
        CAMERA_HAL_LOGE("fail to dequeue buffer from camera driver : %s", strerror(errno));
        return ret;
    }

    return v4l2_buf.index;
}

/*
 **************************************************************************
 * FunctionName: CameraHalImpl::cameraSetCtrl;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraSetCtrl(int fp, unsigned int id, unsigned int value)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = 0;
    struct v4l2_control ctrl;

    ctrl.id     = id;
    ctrl.value  = value;

    ret = ioctl(fp, VIDIOC_S_CTRL, &ctrl);
    if (ret < 0)
    {
        CAMERA_HAL_LOGE("fail to set ctrl to camera driver : %s", strerror(errno));
        return ret;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: cameraSetParameter;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CameraHalImpl::cameraSetParameter(int fp, int fps)
{
    struct v4l2_streamparm parm;

    parm.type                                   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    parm.parm.capture.timeperframe.numerator    = 1;
    parm.parm.capture.timeperframe.denominator  = fps;

    int ret = ioctl(fp, VIDIOC_S_PARM, &parm);
    if (ret < 0)
    {
        CAMERA_HAL_LOGE("fail to call ioctl VIDIOC_S_PARM [%s]", strerror(errno));
        return -1;
    }

    ALOGI("set fps to [%d] to camera driver", fps);

    return 0;
}

}; // namespace android

/********************************** END **********************************************/
