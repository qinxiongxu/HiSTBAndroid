/*
 **************************************************************************************
 *       Filename:  CameraJpegDecoder.cpp
 *    Description:  Decode jpeg to YUV
 *
 *        Version:  1.0
 *        Created:  2013-12-07
 *         Author:  t00219055
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

//#define LOG_NDEBUG 0
#define LOG_TAG "CameraJpegDecoder"

#include <utils/Log.h>
#include <Timers.h>
#include <gralloc_priv.h>

#include "CameraJpegDecoder.h"

extern "C" {
#include "hi_common.h"
}
namespace android {

#define VDEC_BUFF_SIZE (5 * 1024 * 1024)
#define ALIGN_DOWN(a, b) ((a) & (~((typeof(a))(b)-(typeof(a))1)))

CameraJpegDecoder::CameraJpegDecoder()
    : mVdec(HI_INVALID_HANDLE),
      mPort(HI_INVALID_HANDLE),
      mDelayCount(0),
      mCanceled(false) {
}

CameraJpegDecoder::~CameraJpegDecoder() {
    HI_S32 s32Ret = HI_MPI_VDEC_ChanStop(mVdec);

    s32Ret |= HI_MPI_VDEC_DisablePort(mVdec, mPort);

    s32Ret |= HI_MPI_VDEC_DestroyPort(mVdec, mPort);

    s32Ret |= HI_MPI_VDEC_ChanBufferDeInit(mVdec);

    s32Ret |= HI_MPI_VDEC_FreeChan(mVdec);

    s32Ret |= HI_MPI_VDEC_DeInit();
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, deinit vdec or port error = %d", s32Ret);
    }

    mPreviewWindow = NULL;

    if (mBufMap.size() > 0) {
        ALOGE("Error! May not call cancelExternalBuffer, mBufMap.size: %d", mBufMap.size());
    }
    mBufMap.clear();

    ALOGV("mVideoFrameMap.size: %d", mVideoFrameMap.size());
    mVideoFrameMap.clear();
}

status_t CameraJpegDecoder::initJpegDecoder()
{
#ifdef HI_TEE_SUPPORT
    VDEC_BUFFER_ATTR_S stVdecBufAttr = {0};
#endif
    HI_S32 s32Ret = HI_MPI_VDEC_Init();
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_Init error = %d", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_MPI_VDEC_AllocChan(&mVdec, HI_NULL);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_AllocChan error = %d", s32Ret);
        return s32Ret;
    }

    HI_UNF_VCODEC_ATTR_S stDefAttr;
    s32Ret = HI_MPI_VDEC_GetChanAttr(mVdec, &stDefAttr);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_GetChanAttr error = %d", s32Ret);
        return s32Ret;
    }

    stDefAttr.enType = HI_UNF_VCODEC_TYPE_MJPEG;
    s32Ret = HI_MPI_VDEC_SetChanAttr(mVdec, &stDefAttr);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_SetChanAttr error = %d", s32Ret);
        return s32Ret;
    }

#ifdef HI_TEE_SUPPORT
    stVdecBufAttr.u32BufSize = VDEC_BUFF_SIZE;
    stVdecBufAttr.bTvp = false;
    s32Ret = HI_MPI_VDEC_ChanBufferInit(mVdec, HI_INVALID_HANDLE, &stVdecBufAttr);
#else
    s32Ret = HI_MPI_VDEC_ChanBufferInit(mVdec, VDEC_BUFF_SIZE, HI_INVALID_HANDLE);
#endif
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_ChanBufferInit error = %d", s32Ret);
        return s32Ret;
    }

    // Vdec's output buffers use external buffers, allocated from native window.
    s32Ret = HI_MPI_VDEC_SetChanBufferMode(mVdec, VDEC_BUF_USER_ALLOC_MANAGE);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_SetChanBufferMode error = %d", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_MPI_VDEC_CreatePort(mVdec, &mPort, VDEC_PORT_HD);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_CreatePort error = %d", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_MPI_VDEC_SetPortType(mVdec, mPort, VDEC_PORT_TYPE_MASTER);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_SetPortType error = %d", s32Ret);
        return s32Ret;
    }

    HI_DRV_VPSS_PORT_CFG_S stPortCfg;
    memset(&stPortCfg, 0, sizeof(HI_DRV_VPSS_PORT_CFG_S));
    s32Ret = HI_MPI_VDEC_GetPortAttr(mVdec, mPort, &stPortCfg);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_GetPortAttr error = %d", s32Ret);
        return s32Ret;
    }

    stPortCfg.s32OutputWidth = 0;
    stPortCfg.s32OutputHeight = 0;
    s32Ret = HI_MPI_VDEC_SetPortAttr(mVdec, mPort, &stPortCfg);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_SetPortAttr error = %d", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_MPI_VDEC_EnablePort(mVdec, mPort);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_EnablePort error = %d", s32Ret);
        return s32Ret;
    }

    HI_BOOL bProgressive = HI_TRUE;
    HI_CODEC_VIDEO_CMD_S stVdecCmd;
    stVdecCmd.u32CmdID = HI_UNF_AVPLAY_SET_PROGRESSIVE_CMD;
    stVdecCmd.pPara = (HI_VOID *)&bProgressive;
    s32Ret = HI_MPI_VDEC_Invoke(mVdec, &stVdecCmd);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_Invoke error = %d", s32Ret);
        return s32Ret;
    }

    s32Ret = HI_MPI_VDEC_ChanStart(mVdec);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, HI_MPI_VDEC_ChanStart error = %d", s32Ret);
        return s32Ret;
    }

    mStartSystemTime = systemTime(SYSTEM_TIME_MONOTONIC);

    return HI_SUCCESS;
}

HI_HANDLE CameraJpegDecoder::getBufferHandle(buffer_handle_t* native_buffer)
{
    buffer_handle_t handle = *native_buffer;
    private_handle_t *p_private_handle = const_cast<private_handle_t*>(
            reinterpret_cast<const private_handle_t*>(handle));
    return (HI_HANDLE)p_private_handle->ion_phy_addr;
}

status_t CameraJpegDecoder::setExternalBuffer(struct preview_stream_ops* window, int w, int h, int count)
{
    int i = 0;
    buffer_handle_t* native_buffer = NULL;

    int stride = 0;
    VDEC_BUFFER_ATTR_S stVdecAttr;

    memset(&stVdecAttr, 0, sizeof(VDEC_BUFFER_ATTR_S));

    stVdecAttr.u32BufNum = count;

    mBufMap.clear();
    for (i = 0; i < count; i++)
    {
        int rc = window->dequeue_buffer(window, &native_buffer, &stride);
        if (rc != 0 || native_buffer == NULL) {
            ALOGE("dequeue_buffer return error: %d, native_buffer: %#x", rc, native_buffer);
            return UNKNOWN_ERROR;
        }

        stVdecAttr.u32PhyAddr[i] = getBufferHandle(native_buffer);
        ALOGV("setExternalBuffer, native_buffer: %#x, u32PhyAddr: %#x", native_buffer, stVdecAttr.u32PhyAddr[i]);

        mBufMap.add(stVdecAttr.u32PhyAddr[i], native_buffer);
        mPhysicalAddr[i] = stVdecAttr.u32PhyAddr[i];
    }

    stVdecAttr.u32Stride = stride;
    stVdecAttr.u32BufSize = stride * ALIGN_DOWN(h, 4) * 3 / 2;
    ALOGV("setExternalBuffer, bufferCount: %d, u32Stride: %d, u32BufSize: %d", stVdecAttr.u32BufNum, stVdecAttr.u32Stride, stVdecAttr.u32BufSize);

    HI_S32 s32Ret = HI_MPI_VDEC_SetExternBufferState(mVdec, VDEC_EXTBUFFER_STATE_STOP);
    s32Ret |= HI_MPI_VDEC_SetExternBuffer(mVdec, &stVdecAttr);
    s32Ret |= HI_MPI_VDEC_SetExternBufferState(mVdec, VDEC_EXTBUFFER_STATE_START);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, setExternalBuffer error = %d", s32Ret);
    }

    mPreviewWindow = window;
    mBufferCount = count;
    mStride = stride;

    return OK;
}

status_t CameraJpegDecoder::cancelExternalBuffer()
{
    ALOGV("cancelExternalBuffer.");
    if (mCanceled) {
        ALOGV("External buffers canceled.");
        return NO_ERROR;
    }

    HI_S32 s32Ret = HI_MPI_VDEC_SetExternBufferState(mVdec, VDEC_EXTBUFFER_STATE_STOP);

    for (int i = 0; i < mBufferCount; i++)
    {
        HI_S32 WaitTime = 0;
        VDEC_FRAMEBUFFER_STATE_E state = VDEC_BUF_STATE_BUTT;
        while (WaitTime < 50)
        {
            int Ret = HI_MPI_VDEC_CheckAndDeleteExtBuffer(mVdec, mPhysicalAddr[i], &state);
            if (Ret != HI_SUCCESS || (state == VDEC_BUF_STATE_IN_USE))
            {
                usleep(1000*10);
                WaitTime++;
                continue;
            }
            break;
        }

        buffer_handle_t* native_buffer = mBufMap.valueFor(mPhysicalAddr[i]);
        ALOGV("cancelExternalBuffer, native_buffer: %#x, u32PhyAddr: %#x", native_buffer, mPhysicalAddr[i]);
        int err = mPreviewWindow->cancel_buffer(mPreviewWindow, native_buffer);
        if (err != 0) {
            ALOGV("cancel buffer to native window failed");
        }
        mBufMap.removeItem(mPhysicalAddr[i]);
    }

    s32Ret |= HI_MPI_VDEC_SetExternBufferState(mVdec, VDEC_EXTBUFFER_STATE_START);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("MPI_VDEC, cancelExternalBuffer error = %d", s32Ret);
    }

    mCanceled = true;

    return OK;
}

status_t CameraJpegDecoder::putStream(const uint8_t *data, uint32_t size) {
    ALOGV("putStream.");

    if (data == NULL || size == 0 || (*data != 255) || (*(data + 1) != 216)) {
        return BAD_VALUE;
    }

    VDEC_ES_BUF_S stBuf;
    memset(&stBuf, 0, sizeof(VDEC_ES_BUF_S));
    HI_S32 s32Ret = HI_MPI_VDEC_ChanGetBuffer(mVdec, size, &stBuf);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("Call HI_MPI_VDEC_ChanGetBuffer return error: %#x", s32Ret);
        return NO_MEMORY;
    }
    memcpy((void *)((uint64_t)stBuf.pu8Addr), (void *)data, size);
    nsecs_t timestamp = systemTime(SYSTEM_TIME_MONOTONIC);
    stBuf.u64Pts = (timestamp - mStartSystemTime) / 1E6; // ms
    s32Ret = HI_MPI_VDEC_ChanPutBuffer(mVdec, &stBuf);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("Call HI_MPI_VDEC_ChanPutBuffer return error: %#x", s32Ret);
        return UNKNOWN_ERROR;
    }

    mDelayCount++;

    return OK;
}

status_t CameraJpegDecoder::getFrameIndex(const HI_DRV_VIDEO_FRAME_PACKAGE_S *framePkg, int *index) {
    if (framePkg == NULL || index == NULL) return BAD_VALUE;

    HI_U32 i = 0;
    for (i = 0; i < framePkg->u32FrmNum; i++) {
        if (framePkg->stFrame[i].hport == mPort) {
            break;
        }
    }

    if (i < framePkg->u32FrmNum) {
        *index = i;
        return OK;
    }

    ALOGE("No matched frame with mPort.");
    return UNKNOWN_ERROR;
}

status_t CameraJpegDecoder::receiveFrame(buffer_handle_t** native_buffer, uint64_t*timestamp, int *Stride) {
    HI_DRV_VIDEO_FRAME_PACKAGE_S framePackage;
    HI_S32 s32Ret = HI_MPI_VDEC_ReceiveFrame(mVdec, &framePackage);

    HI_S32 mTryCount = 0;
    while(mDelayCount > 3) {
        if(s32Ret == HI_SUCCESS) {
            mDelayCount = mDelayCount - 1;
            mTryCount--;

            int i = 0;
            status_t status = getFrameIndex(&framePackage, &i);
            if (status != OK) {
                return UNKNOWN_ERROR;
            }

            HI_DRV_VIDEO_FRAME_S *pstVideoFrame = &(framePackage.stFrame[i].stFrameVideo);
            if (pstVideoFrame != NULL) {
                HI_MPI_VDEC_ReleaseFrame(mPort, pstVideoFrame);
            }
        }
        s32Ret = HI_MPI_VDEC_ReceiveFrame(mVdec, &framePackage);
        if(s32Ret != HI_SUCCESS) {
            mTryCount++;
            usleep(1000*10);
        }
        if(mTryCount > 50) {
            ALOGE("HI_MPI_VDEC_ReceiveFrame fail, try 50 times");
            return -101;
        }
    }

    if (s32Ret != HI_SUCCESS) {
        ALOGW("Call HI_MPI_VDEC_ReceiveFrame mDelayCount: %d, return error = %d", mDelayCount, s32Ret);
        return s32Ret;
    }

    mDelayCount = (mDelayCount <= 0) ? 0 : (mDelayCount - 1);

    int i = 0;

    status_t status = getFrameIndex(&framePackage, &i);
    if (status != OK) {
        return UNKNOWN_ERROR;
    }

    buffer_handle_t *buffer = NULL;
    HI_DRV_VIDEO_FRAME_S *pstVideoFrame = &(framePackage.stFrame[i].stFrameVideo);
    if (pstVideoFrame != NULL) {
        buffer = mBufMap.valueFor(pstVideoFrame->stBufAddr[0].u32PhyAddr_Y);
        if (buffer == NULL) {
            ALOGE("Invalid picture to display");
            return UNKNOWN_ERROR;
        }

        ALOGV("receiveFrame, native_buffer: %#x, u32PhyAddr_Y: %#x", buffer, pstVideoFrame->stBufAddr[0].u32PhyAddr_Y);
        mVideoFrameMap.add(buffer, *pstVideoFrame);

        *timestamp =  (uint64_t)pstVideoFrame->u32Pts * 1E6 + mStartSystemTime;

        HI_U32 timeDelay = HI_U32((systemTime(SYSTEM_TIME_MONOTONIC) - *timestamp)/1E6);
        ALOGV("Preview Delay: %d ms (%.2f secs)", timeDelay, timeDelay/ 1E3);
    }

    if (buffer != NULL) {
        *native_buffer = buffer;
    }

    *Stride = mStride;

    /* Save YUV */
#if 0
    {
        uint32_t frameSize = pstVideoFrame->u32Width * pstVideoFrame->u32Height * 3 / 2; //yuv420sp
        uint8_t *userAddr = (uint8_t *)HI_MEM_Map(pstVideoFrame->stBufAddr[0].u32PhyAddr_Y, frameSize);

        static int num = 0;
        int size;
        FILE* fp = HI_NULL;

        if (num == 0)
        {
            fp = fopen("/sdcard/mjpeg.yuv", "wb+");
            if (HI_NULL == fp)
            {
                ALOGV("Open /sdcard/mjpeg.yuv fail.\n");
                return HI_SUCCESS;
            }

            size = fwrite(userAddr, 1, frameSize, fp);
            ALOGV("Write %dB to /sdcard/mjpeg.yuv.\n", frameSize);

            fclose(fp);
        }
        num++;
    }
#endif

    return OK;
}

status_t CameraJpegDecoder::releaseFrame(buffer_handle_t* native_buffer)
{
    HI_DRV_VIDEO_FRAME_S stVideoFrame = mVideoFrameMap.valueFor(native_buffer);
    ALOGV("releaseFrame, native_buffer: %#x, u32PhyAddr_Y: %#x", native_buffer, stVideoFrame.stBufAddr[0].u32PhyAddr_Y);
    HI_S32 s32Ret = HI_MPI_VDEC_ReleaseFrame(mPort, &stVideoFrame);
    if (s32Ret != HI_SUCCESS) {
        ALOGE("Call HI_MPI_VDEC_ReleaseFrame return error = %d", s32Ret);
    }
    mVideoFrameMap.removeItem(native_buffer);

    return OK;
}

}; // namespace android

/********************************** END **********************************************/
