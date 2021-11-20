/*
 **************************************************************************************
 *       Filename:  JpegEncoderExif.h
 *    Description:  Jpeg Encoder Exif header file
 *
 *        Version:  1.0
 *        Created:  2015-1-27 09:55:16
 *         Author:  
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

#ifndef JPEGENCODEREXIF_H_INCLUDED
#define JPEGENCODEREXIF_H_INCLUDED


#include <string.h>
#include <stdlib.h>

#include "libexif/exif-entry.h"
#include "libexif/exif-data.h"
#include "libexif/exif-ifd.h"
#include "libexif/exif-loader.h"
#include "CameraExtendedEnv.h"

#define SAVE_LOG_IN_EXIF
#define JPEG_HEADER_LEN 20
#define EXIF_ATTR_LEN   4
#define EXIF_ID         0xffe1

namespace android
{

class ExifBuffer
{
public:
    unsigned char*  mData;
    unsigned int    mSize;
};

class GPSData
{
public:
    int     mLongDeg;
    int     mLongMin;
    int     mLongSec;
    int     mLatDeg;
    int     mLatMin;
    int     mLatSec;
    int     mAltitude;
    int     mAltitudeRef;
    char*   mLongRef;
    char*   mLatRef;
    char*   mVersionId;
    char*   mProcMethod;
    char    mDateStamp[11];
    unsigned long mTimeStamp;
};

class ExifParams
{
public:
    ExifParams()
    {
        mWidth = 0;
        mHeight = 0;
        mThumbnailWidth = 0;
        mThumbnailHeight = 0;
        mIso = 0;
        mFlashMode = 0;
        mMeteringMode = 0;
        mLightSource = 0;
        mWhiteBalance = 0;
        mSceneMode = 0;
        mHdr = 0;
        mAllFocus = 0;
        mEquivalentFocal = 0;
        mRotation = 0;
        mBrightness.numerator = 0;
        mBrightness.denominator = 1;
        mLocalLength.numerator = 0;
        mLocalLength.denominator = 1;
        mExposure.numerator = 0;
        mExposure.denominator = 1;
        mExposureTime.numerator = 1;
        mExposureTime.denominator = 60;
        mShutterSpeedValue.numerator = 0;
        mShutterSpeedValue.denominator = 1;
        mZoom.numerator = 0;
        mZoom.denominator = 1;
        mXResolution.numerator = 0;
        mXResolution.denominator = 1;
        mYResolution.numerator = 0;
        mYResolution.denominator = 1;
        mApertureFactor.numerator = 0;
        mApertureFactor.denominator = 1;
        mApertureValue.numerator = 0;
        mApertureValue.denominator = 1;
        mThumbnailXResolution.numerator = 0;
        mThumbnailXResolution.denominator = 1;
        mThumbnailYResolution.numerator = 0;
        mThumbnailYResolution.denominator = 1;
        mGPSLocation = NULL;
        mPostFlag = 0;
        mPostSnapshotMode = 0;
        mAfCode = 0;
        mAfStatus = 0;
        mRgain = 0;
        mBgain = 0;
        mGpsTimeStamp = 0L;
    }
    ~ExifParams(){}
    int             mWidth;
    int             mHeight;
    int             mThumbnailWidth;
    int             mThumbnailHeight;
    int             mIso;
    int             mFlashMode;
    int             mMeteringMode;
    int             mLightSource;
    int             mWhiteBalance;
    int             mSceneMode;
    int             mHdr;
    int             mAllFocus;
	int				mEquivalentFocal;
    int             mRotation;
    ExifRational    mBrightness;
    ExifRational    mLocalLength;
    ExifRational    mExposure;
    ExifRational    mExposureTime;
    ExifRational    mShutterSpeedValue;
    ExifRational    mZoom;
    ExifRational    mXResolution;
    ExifRational    mYResolution;
	ExifRational	mApertureFactor;
	ExifRational	mApertureValue;
    ExifRational    mThumbnailXResolution;
    ExifRational    mThumbnailYResolution;
    GPSData*        mGPSLocation;
    int             mPostFlag;
    int             mPostSnapshotMode;
    int             mAfCode;
    int             mAfStatus;
    int             mRgain;
    int             mBgain;
    unsigned long   mGpsTimeStamp;
};

class JpegEncoderExif : public CameraObject
{
public:
    JpegEncoderExif(void *env);
    ~JpegEncoderExif();

    int         jpegEncoderExifInit();
    ExifBuffer* jpegEncoderMakeExif(unsigned char* thumbnailBuffer, unsigned int thumbnaiSize);
    int         jpegEncoderExifDeInit();
    void        setHdrFlag(int flag);
    void        setAllFocusFlag(int flag);
    void        setGpsTime(unsigned long gpsTime = 0L);
	ExifBuffer* makeExif (JpegEncoderExif* exif, unsigned char* thumbnailBuffer, unsigned int thumbnailSize);
    ExifParams* getExifParams(){ return &mExifParams; }
private:
    CameraExtendedEnv*  mEnv;
    ExifBuffer*         mExifBuffer;
    ExifParams          mExifParams;
};

}; /* namespace android */


#endif /*JPEGENCODEREXIF_H_INCLUDED*/

/********************************* END ***********************************************/

