/*
 **************************************************************************************
 *       Filename:  CameraJpegDecoder.h
 *    Description:  Decode jpeg to YUV
 *
 *        Version:  1.0
 *        Created:  2013-12-07
 *         Author:  t00219055
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

#ifndef CAMERA_JPEG_DECODER_H_
#define CAMERA_JPEG_DECODER_H_

#include <hardware/camera.h>

#include "utils/Errors.h"
#include "hi_drv_video.h"
#include <utils/KeyedVector.h>
#include "hi_mpi_vdec.h"

extern "C" {
#include "hi_type.h"
}

namespace android {

class CameraJpegDecoder
{
public:
    CameraJpegDecoder();
    ~CameraJpegDecoder();

    status_t initJpegDecoder();
    status_t putStream(const uint8_t *data, uint32_t size);
    status_t receiveFrame(buffer_handle_t** native_buffer, uint64_t*timestamp, int *Stride);
    status_t releaseFrame(buffer_handle_t* native_buffer);

    status_t setExternalBuffer(struct preview_stream_ops* window, int w, int h, int count);
    status_t cancelExternalBuffer();

private:
    status_t getFrameIndex(const HI_DRV_VIDEO_FRAME_PACKAGE_S *framePkg, int *index);
    HI_HANDLE getBufferHandle(buffer_handle_t* native_buffer);

    HI_HANDLE mVdec;
    HI_HANDLE mPort;
    struct preview_stream_ops* mPreviewWindow;
    HI_U32 mPhysicalAddr[MAX_VDEC_EXT_BUF_NUM];

    int mDelayCount;
    int mBufferCount;
    int mStride;
    bool mCanceled;
    KeyedVector<HI_HANDLE, buffer_handle_t*> mBufMap;
    KeyedVector<buffer_handle_t*, HI_DRV_VIDEO_FRAME_S> mVideoFrameMap;

    nsecs_t mStartSystemTime; //ns
};

}; // namespace android

#endif /*CAMERA_JPEG_DECODER_H_*/

/********************************* END ***********************************************/

