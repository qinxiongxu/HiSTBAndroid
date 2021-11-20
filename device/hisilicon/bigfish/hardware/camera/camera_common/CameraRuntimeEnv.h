/*
 **************************************************************************************
 *       Filename:  CameraRuntimeEnv.h
 *    Description:  Camera Runtime Env header file
 *
 *        Version:  1.0
 *        Created:  2012-15-16 16:39:27
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

#ifndef CAMERARUNTIMEENV_H_INCLUDED
#define CAMERARUNTIMEENV_H_INCLUDED

#include <camera/CameraParameters.h>

#define LEN_OF_DEVICE_NAME  12

namespace android
{

class CameraRuntimeEnv : public virtual RefBase
{
public:
    CameraRuntimeEnv()
    {
        mCameraId           = 0;
        mCameraFd           = -1;
        mCameraVender       = 0;
        mMsgEnabled         = 0;
        mPreviewWidth       = 0;
        mPreviewHeight      = 0;
        mPreviewFormat      = 0;
        mPreviewFps         = 0;
        mSnapshotWidth      = 0;
        mSnapshotHeight     = 0;
        mSnapshotFormat     = 0;
        mSnapshotFps        = 0;
        mJpegQuality        = 0;
        mThumbnailWidth     = 0;
        mThumbnailHeight    = 0;
        mThumbnailQuality   = 0;
        mShouldRestartPreview = false;
    }
    virtual ~CameraRuntimeEnv() {}

    int                 mCameraId;
    int                 mCameraFd;
    int                 mCameraVender;
    char                mCameraDevName[LEN_OF_DEVICE_NAME];
    int                 mMsgEnabled;

    int                 mPreviewWidth;
    int                 mPreviewHeight;
    int                 mPreviewFormat;
    int                 mPreviewFps;
    const char*         mPreviewFrameFmt;

    int                 mSnapshotWidth;
    int                 mSnapshotHeight;
    int                 mSnapshotFormat;
    int                 mSnapshotFps;
    int                 mJpegQuality;

    int                 mThumbnailWidth;
    int                 mThumbnailHeight;
    int                 mThumbnailQuality;

    int                 mRotation;
    float               mFocalLength;
    int                 mZoomRatio;
    int                 mZoom;
    int                 mMaxZoom;
    int                 mApertureFactor;
    int                 mEquivalentFocus;
    int                 mExposureCompensation;
    int                 mEVStep;
    int                 mBrightness;

    /* gps parameter */
    bool                mHaveGPS;
    double              mGPSLatitude;
    double              mGPSLongitude;
    double              mGPSAltitude;
    unsigned long       mGPSTimestamp;
    bool                mGPSHaveTimestamp;
    char                mGPSProcMethod[64+1];

    bool                mShouldRestartPreview;
    CameraParameters    mParameters;
};

}; /* namespace android */

#endif /*CAMERARUNTIMEENV_H_INCLUDED*/

/********************************* END ***********************************************/
