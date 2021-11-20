/*
 **************************************************************************************
 *       Filename:  JpegEncoderExif.cpp
 *    Description:  Jentryg Encoder Exif source file
 *
 *        Version:  1.0
 *        Created:  2015-1-27 09:57:47
 *         Author:  
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

//#define LOG_NDEBUG 0
#define LOG_TAG "JpegEncoderExif"
#include <utils/Log.h>
#include <math.h>
#include <cutils/properties.h>

#include "../capability_manager/CapabilityManager.h"
#include "JpegEncoderExif.h"

#define FLASH_ON      0
#define FLASH_OFF     1


#define MAX_EXIF_SIZE           65536
#define MAX_THUMBNAIL_SIZE      64000
#define POST_JPEG_FLAG          0x3535

#define EXIF_DEF_DENOM          10000
#define EXIF_SHUTTER_LOG2(n)    (log10((double)(n)) / log10(2.0))
#define EXIF_APERTURE_2LOG2(n)   (2 * log10((double)(n)) / log10(2.0))
namespace android
{

static char ExifAsciiPrefix[] = { 0x41, 0x53, 0x43, 0x49, 0x49, 0x0, 0x0, 0x0 };
static char ExifGPSVersion[]  = { 0x02, 0x02, 0x0 , 0x0 };

/*
 **************************************************************************
 * FunctionName: exifSetString;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetString(ExifData* data, ExifIfd ifd, ExifTag tag, const char *string)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    if(entry->data)
    {
        free (entry->data);
    }
    entry->components = strlen (string) + 1;
    entry->size = sizeof (char) * entry->components;
    entry->data = (unsigned char *)malloc(entry->size);
    if(!entry->data)
    {
        ALOGE("entry->data == NULL TAG %d", tag);
        return;
    }
    strncpy((char *)entry->data, (char *)string, entry->size);
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetUndefined;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetUndefined(ExifData* data, ExifIfd ifd, ExifTag tag, ExifBuffer* buffer)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    if (buffer!= NULL)
    {
        if(entry->data)
        {
            free(entry->data);
            entry->data = NULL;
        }
        entry->components = buffer->mSize;
        entry->size = buffer->mSize;
        entry->data = (unsigned char *)malloc(entry->size);
        if(!entry->data)
        {
            ALOGE("entry->data == NULL TAG %d", tag);
            return;
        }
        memcpy((void *)entry->data, (void *)buffer->mData, buffer->mSize);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetByte;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetByte(ExifData* data, ExifIfd ifd, ExifTag tag, ExifByte n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    unsigned char *pData;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);

    pData = (unsigned char *)(entry->data);
    if(pData)
    {
        *pData = n;
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetShort;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetShort(ExifData* data, ExifIfd ifd, ExifTag tag, ExifShort n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_short(entry->data, byteOrder, n);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetLong;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetLong(ExifData* data, ExifIfd ifd, ExifTag tag, ExifLong n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }

    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_long(entry->data, byteOrder, n);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetRational;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetRational(ExifData * data, ExifIfd ifd, ExifTag tag, ExifRational r)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_rational(entry->data, byteOrder, r);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetSbyte;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetSbyte(ExifData * data, ExifIfd ifd, ExifTag tag, ExifSByte n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    char *pData;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    pData = (char *)(entry->data);
    if(pData)
    {
        *pData = n;
    }
    else
    {
        ALOGE("pData == NULL Tag %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetSshort;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetSshort(ExifData* data, ExifIfd ifd, ExifTag tag, ExifSShort n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_sshort(entry->data, byteOrder, n);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetSlong;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetSlong(ExifData* data, ExifIfd ifd, ExifTag tag, ExifSLong n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_slong(entry->data, byteOrder, n);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetSrational;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetSrational(ExifData* data, ExifIfd ifd, ExifTag tag, ExifSRational r)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        exif_set_srational(entry->data, byteOrder, r);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix (entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetGPSCoord;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetGPSCoord(ExifData* data, ExifIfd ifd, ExifTag tag,
                                        ExifRational r1, ExifRational r2, ExifRational r3)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_gps_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if (entry->data)
    {
        exif_set_rational(entry->data, byteOrder, r1);
        exif_set_rational(entry->data + exif_format_get_size (entry->format), byteOrder, r2);
        exif_set_rational(entry->data + 2 * exif_format_get_size (entry->format), byteOrder, r3);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetGPSAltitude;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetGPSAltitude(ExifData* data, ExifIfd ifd, ExifTag tag, ExifRational r1)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_gps_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if (entry->data)
    {
        exif_set_rational(entry->data, byteOrder, r1);
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix (entry);
    exif_entry_unref (entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetGPSVersion;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetGPSVersion(ExifData* data, ExifIfd ifd, ExifTag tag,
                                        ExifByte r1, ExifByte r2, ExifByte r3, ExifByte r4)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_gps_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if (entry->data)
    {
        entry->data[0] = r1;
        entry->data[1] = r2;
        entry->data[2] = r3;
        entry->data[3] = r4;
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetGPSString;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetGPSString(ExifData* data, ExifIfd ifd, ExifTag tag, const char *string)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_gps_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);
    if(entry->data)
    {
        free (entry->data);
        entry->data = NULL;
    }
    entry->components = strlen (string) + 1;
    entry->size = sizeof (char) * entry->components;
    entry->data = (unsigned char *)malloc(entry->size);
    if(!entry->data)
    {
        ALOGE("entry->data == NULL TAG %d", tag);
        return;
    }
    strncpy((char *)entry->data, (char *)string, entry->size);
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: exifSetGPSByte;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static void exifSetGPSByte(ExifData* data, ExifIfd ifd, ExifTag tag, ExifByte n)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifEntry *entry;
    ExifByteOrder byteOrder;

    entry = exif_entry_new();
    if(entry == NULL)
    {
        ALOGE("Faile to call exif_entry_new in fun:%s!", __FUNCTION__);
        return;
    }
    exif_content_add_entry(data->ifd[ifd], entry);
    exif_entry_gps_initialize(entry, tag);
    byteOrder = exif_data_get_byte_order(entry->parent->parent);

    if(entry->data)
    {
        *entry->data = n;
    }
    else
    {
        ALOGE("entry->data == NULL TAG %d", tag);
    }
    exif_entry_fix(entry);
    exif_entry_unref(entry);
}

/*
 **************************************************************************
 * FunctionName: convertGPSInfo;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
static int convertGPSInfo(double coord, int *deg, int *min, int *sec)
{
    ALOGV("enter %s()", __FUNCTION__);

    double tmp;

    if( coord == 0 )
    {
        ALOGE("Invalid GPS coordinate");
        return -1;
    }

    *deg  = (int) floor(coord);
    tmp   = ( coord - floor(coord) ) * 60;
    *min  = (int) floor(tmp);
    tmp   = ( tmp - floor(tmp) ) * 60;
    *sec  = (int) floor(tmp);

    if( *sec >= 60 )
    {
        *sec = 0;
        *min += 1;
    }

    if( *min >= 60 )
    {
        *min = 0;
        *deg += 1;
    }

    return 0;
}

/**************************************************************************
* FunctionName: exifConvertGpsInfoToRational;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void exifConvertGpsInfoToRational(double coord, int *deg, int *min, int *sec)
{
    ALOGV("enter %s()", __FUNCTION__);

    if(coord == 0 || !deg || !min || !sec)
        return;
    *deg = int(coord);
    *min = int((coord- *deg)*60);
    *sec = (coord*3600 - *deg*3600 - *min *60)*1000000;

    ALOGV("deg:%d,min:%d,sec:%d",*deg, *min,*sec);
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::JpegEncoderExif;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
JpegEncoderExif::JpegEncoderExif(void *env)
                :CameraObject(env)
{
    ALOGV("enter %s()", __FUNCTION__);

    mEnv = ((CameraExtendedEnv*)env);
    mExifBuffer = NULL;
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::~JpegEncoderExif;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
JpegEncoderExif::~JpegEncoderExif()
{
    ALOGV("enter %s()", __FUNCTION__);
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::jpegEncoderExifInit;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
int JpegEncoderExif::jpegEncoderExifInit()
{
    ALOGV("enter %s()", __FUNCTION__);
    void* value;
    mExifBuffer = new ExifBuffer();
    if(NULL == mExifBuffer)
    {
        ALOGE("Create ExifBuffer failed");
        return -1;
    }

    mExifParams.mWidth  = mEnv->mSnapshotWidth;
    mExifParams.mHeight = mEnv->mSnapshotHeight;

    mExifParams.mThumbnailWidth  = mEnv->mThumbnailWidth;
    mExifParams.mThumbnailHeight = mEnv->mThumbnailHeight;
#if 0
    if(90 == mEnv->mRotation || 270 == mEnv->mRotation)
    {
        mExifParams.mWidth           = mEnv->mSnapshotHeight;
        mExifParams.mHeight          = mEnv->mSnapshotWidth;
        mExifParams.mThumbnailWidth  = mEnv->mThumbnailHeight;
        mExifParams.mThumbnailHeight = mEnv->mThumbnailWidth;
    }
#endif
#ifndef DSS_DEVICE_OPEN
    if(mEnv->mRotation == 0)
    {
        mExifParams.mRotation = 1;
    }
    else if(mEnv->mRotation == 90)
    {
        mExifParams.mRotation = 6;
    }
    else if(mEnv->mRotation == 180)
    {
        mExifParams.mRotation = 3;
    }
    else if(mEnv->mRotation == 270)
    {
        mExifParams.mRotation = 8;
    }
    else
    {
        mExifParams.mRotation = 1;
    }
#else
    mExifParams.mRotation = 1;
#endif

    float localLength = mEnv->mFocalLength;
    if(localLength)
    {
        mExifParams.mLocalLength.numerator = localLength * 1000;
        mExifParams.mLocalLength.denominator = 1000;
    }
    else
    {
        mExifParams.mLocalLength.numerator = 0;
        mExifParams.mLocalLength.denominator = 1000;
    }

    int zoom = mEnv->mZoom;
    int zoomRatio = mEnv->mZoomRatio;
    if(zoom >= 0)
    {
        mExifParams.mZoom.numerator   = zoom * zoomRatio + 100;
        mExifParams.mZoom.denominator = 100;
    }
    else
    {
        mExifParams.mZoom.numerator   = 100;
        mExifParams.mZoom.denominator = 100;
    }

    float exposure = (float)mEnv->mExposureCompensation;
    float step     = (float)mEnv->mEVStep;

    if(exposure > 0.0000001 && step > 0.0000001)
    {
        mExifParams.mExposure.numerator     = (int)(exposure * step * 1000000);
        mExifParams.mExposure.denominator   = 1000000;
    }
    else
    {
        mExifParams.mExposure.numerator     = 0;
        mExifParams.mExposure.denominator   = 1000000;
    }

    if(mEnv->mBrightness >= 0)
    {
        switch(mEnv->mBrightness)
        {
            case 0:
                mExifParams.mBrightness.numerator   = 2;
                mExifParams.mBrightness.denominator = -1;
                break;
            case 25:
                mExifParams.mBrightness.numerator   = 1;
                mExifParams.mBrightness.denominator = -1;
                break;
            case 50:
                mExifParams.mBrightness.numerator   = 0;
                mExifParams.mBrightness.denominator = 1;
                break;
            case 75:
                mExifParams.mBrightness.numerator   = 1;
                mExifParams.mBrightness.denominator = 1;
                break;
            case 100:
                mExifParams.mBrightness.numerator   = 2;
                mExifParams.mBrightness.denominator = 1;
                break;
            defalut:
                mExifParams.mBrightness.numerator   = 0;
                mExifParams.mBrightness.denominator = 1;
                break;
        }
    }
    else
    {
        mExifParams.mBrightness.numerator   = 0;
        mExifParams.mBrightness.denominator = 1;
    }

    double tv = EXIF_SHUTTER_LOG2(mExifParams.mExposureTime.denominator);
    mExifParams.mShutterSpeedValue.numerator   = tv * EXIF_DEF_DENOM;
    mExifParams.mShutterSpeedValue.denominator = EXIF_DEF_DENOM;
    mExifParams.mXResolution.numerator      = 72;
    mExifParams.mXResolution.denominator    = 1;
    mExifParams.mYResolution.numerator      = 72;
    mExifParams.mYResolution.denominator    = 1;

    mExifParams.mThumbnailXResolution       = mExifParams.mXResolution;
    mExifParams.mThumbnailYResolution       = mExifParams.mYResolution;

    mExifParams.mGPSLocation = NULL;
    if(mEnv->mHaveGPS)
    {
        double gpsCoord;
        struct tm* timeinfo;

        mExifParams.mGPSLocation = (GPSData *)malloc(sizeof(GPSData));

        if(mExifParams.mGPSLocation)
        {
            ALOGV("initializing gpsData");

            memset(mExifParams.mGPSLocation, 0, sizeof(GPSData));
            mExifParams.mGPSLocation->mDateStamp[0] = '\0';

            gpsCoord = mEnv->mGPSLatitude;
            exifConvertGpsInfoToRational(fabs(gpsCoord), &mExifParams.mGPSLocation->mLatDeg, &mExifParams.mGPSLocation->mLatMin,
                                                                              &mExifParams.mGPSLocation->mLatSec);
            mExifParams.mGPSLocation->mLatRef = (gpsCoord < 0) ? (char*) "S" : (char*) "N";

            gpsCoord = mEnv->mGPSLongitude;
            exifConvertGpsInfoToRational(fabs(gpsCoord),&mExifParams.mGPSLocation->mLongDeg, &mExifParams.mGPSLocation->mLongMin,
                                                                              &mExifParams.mGPSLocation->mLongSec);
            mExifParams.mGPSLocation->mLongRef = (gpsCoord < 0) ? (char*) "W" : (char*) "E";

            gpsCoord = mEnv->mGPSAltitude;
            mExifParams.mGPSLocation->mAltitude = fabs(gpsCoord) * 100;
            mExifParams.mGPSLocation->mAltitudeRef = (gpsCoord > 0) ? 0 : 1;

            if(mEnv->mGPSHaveTimestamp)
            {
                mExifParams.mGPSLocation->mTimeStamp = mEnv->mGPSTimestamp;
                timeinfo = gmtime((time_t*)&(mExifParams.mGPSLocation->mTimeStamp));
                if(timeinfo != NULL)
                {
                    strftime(mExifParams.mGPSLocation->mDateStamp, 11, "%Y:%m:%d", timeinfo);
                }
            }

            mExifParams.mGPSLocation->mVersionId    = ExifGPSVersion;
            mExifParams.mGPSLocation->mProcMethod   = mEnv->mGPSProcMethod;
        }
        else
        {
            ALOGE("Not enough memory to allocate GPSData");
            return -1;
        }
    }

    mExifParams.mApertureFactor.numerator = mEnv->mApertureFactor;
    mExifParams.mApertureFactor.denominator = 100;

    double aptureValue = mExifParams.mApertureFactor.numerator;
    if (0 == aptureValue)
    {
        mExifParams.mApertureValue.numerator = 0;
        mExifParams.mApertureValue.denominator = 0;
    }
    else
    {
        aptureValue /= 100;
        mExifParams.mApertureValue.numerator = 100 * EXIF_APERTURE_2LOG2(aptureValue);
        mExifParams.mApertureValue.denominator = 100;
    }

    mExifParams.mEquivalentFocal = mEnv->mEquivalentFocus;

    return 0;
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::setHdrFlag;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void JpegEncoderExif::setHdrFlag ( int flag )
{
    mExifParams.mHdr = flag;
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::setAllFocusFlag;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void JpegEncoderExif::setAllFocusFlag ( int flag )
{
    mExifParams.mAllFocus = flag;
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::jpegEncoderExif;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
ExifBuffer* JpegEncoderExif::jpegEncoderMakeExif(unsigned char* thumbnailBuffer, unsigned int thumbnailSize)
{
    ALOGV("enter %s()", __FUNCTION__);

    ExifData*       data;
    struct timeval  tv;
    struct tm*      time;
    int             ret;
    char *timeStr = NULL;

    data = exif_data_new();

    if(NULL == data)
    {
        ALOGE("exif_data_new failed");
        return NULL;
    }

    data->data = NULL;

    char *productInfo = (char *) malloc(PROPERTY_VALUE_MAX);
    if(productInfo == NULL)
    {
        ALOGE("Failed to allocate productInfo!");
        return NULL;
    }
    property_get("ro.product.model", productInfo, "");

    char *softVersion = (char *) malloc(PROPERTY_VALUE_MAX);
    if(softVersion == NULL)
    {
        ALOGE("Failed to allocate softVersion!");
        free(productInfo);
        productInfo = NULL;
        return NULL;
    }
    property_get("ro.build.display.id", softVersion, "");

    if(POST_JPEG_FLAG == mExifParams.mPostFlag)
    {
        exifSetString(data, EXIF_IFD_0, EXIF_TAG_DEVICE_SETTING_DESCRIPTION, "ipp");
    }
    exifSetString   (data, EXIF_IFD_0,    EXIF_TAG_MAKE,                    "HISI");
    exifSetString   (data, EXIF_IFD_0,    EXIF_TAG_MODEL,                   productInfo);
    exifSetShort    (data, EXIF_IFD_0,    EXIF_TAG_IMAGE_WIDTH,             mExifParams.mWidth);
    exifSetShort    (data, EXIF_IFD_0,    EXIF_TAG_IMAGE_LENGTH,            mExifParams.mHeight);
    exifSetRational (data, EXIF_IFD_0,    EXIF_TAG_X_RESOLUTION,            mExifParams.mXResolution);
    exifSetRational (data, EXIF_IFD_0,    EXIF_TAG_Y_RESOLUTION,            mExifParams.mYResolution);
    exifSetShort    (data, EXIF_IFD_0,    EXIF_TAG_RESOLUTION_UNIT,         2);
    exifSetString   (data, EXIF_IFD_0,    EXIF_TAG_SOFTWARE,                softVersion);
    exifSetShort    (data, EXIF_IFD_0,    EXIF_TAG_YCBCR_POSITIONING,       1);
    exifSetUndefined(data, EXIF_IFD_0,    EXIF_TAG_BITS_PER_SAMPLE,         NULL);

    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_FOCAL_LENGTH,            mExifParams.mLocalLength);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_FLASH,                   mExifParams.mFlashMode);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_ISO_SPEED_RATINGS,       mExifParams.mIso);
    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_DIGITAL_ZOOM_RATIO,      mExifParams.mZoom);
    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_BRIGHTNESS_VALUE,        mExifParams.mBrightness);
    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_EXPOSURE_BIAS_VALUE,     mExifParams.mExposure);
    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_EXPOSURE_TIME,           mExifParams.mExposureTime);
    exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_SHUTTER_SPEED_VALUE,     mExifParams.mShutterSpeedValue);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_METERING_MODE,           mExifParams.mMeteringMode);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_LIGHT_SOURCE,            mExifParams.mLightSource);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_WHITE_BALANCE,           mExifParams.mWhiteBalance);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_EXIF_VERSION,            NULL);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_FLASH_PIX_VERSION,       NULL);
    exifSetLong     (data, EXIF_IFD_EXIF, EXIF_TAG_PIXEL_X_DIMENSION,       mExifParams.mWidth);
    exifSetLong     (data, EXIF_IFD_EXIF, EXIF_TAG_PIXEL_Y_DIMENSION,       mExifParams.mHeight);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_CONTRAST,                0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_SATURATION,              0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_SHARPNESS,               0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_SUBJECT_DISTANCE_RANGE,  0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_CUSTOM_RENDERED,         1);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_EXPOSURE_MODE,           0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_SCENE_CAPTURE_TYPE,      mExifParams.mSceneMode);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_GAIN_CONTROL,            0);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_EXPOSURE_PROGRAM,        2);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_FILE_SOURCE,             NULL);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_DOCUMENT_NAME,           NULL);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_SCENE_TYPE,              NULL);
    exifSetUndefined(data, EXIF_IFD_EXIF, EXIF_TAG_COMPONENTS_CONFIGURATION,NULL);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_COLOR_SPACE,             1);
#ifdef SAVE_LOG_IN_EXIF
    if(mExifParams.mPostFlag)
    {
        char strExifDebugInfo[50];
        memset(strExifDebugInfo, 0, sizeof(strExifDebugInfo));
        snprintf(strExifDebugInfo, sizeof(strExifDebugInfo), "M[%d] [%x,%d] [%x,%x]",
            mExifParams.mPostSnapshotMode, mExifParams.mAfCode, mExifParams.mAfStatus, mExifParams.mRgain, mExifParams.mBgain);
        exifSetString(data, EXIF_IFD_EXIF, EXIF_TAG_MAKER_NOTE, strExifDebugInfo);
    }
    else
#endif
    exifSetString   (data, EXIF_IFD_EXIF, EXIF_TAG_MAKER_NOTE,              "Hisilicon");
    exifSetString   (data, EXIF_IFD_EXIF, EXIF_TAG_USER_COMMENT,            "Hisilicon");

    if (0 != mExifParams.mApertureFactor.numerator)
    {
        exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_FNUMBER,                 mExifParams.mApertureFactor);
        exifSetRational (data, EXIF_IFD_EXIF, EXIF_TAG_APERTURE_VALUE,          mExifParams.mApertureValue);
    }
    if (0 != mExifParams.mEquivalentFocal)
    {
        exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_FOCAL_LENGTH_IN_35MM_FILM, mExifParams.mEquivalentFocal);
    }
    exifSetShort    (data, EXIF_IFD_0,    EXIF_TAG_ORIENTATION,             mExifParams.mRotation);
    exifSetShort    (data, EXIF_IFD_EXIF, EXIF_TAG_SENSING_METHOD,          2);

    exifSetString   (data, EXIF_IFD_INTEROPERABILITY, EXIF_TAG_INTEROPERABILITY_INDEX,  "R98");
    exifSetUndefined(data, EXIF_IFD_INTEROPERABILITY, EXIF_TAG_INTEROPERABILITY_VERSION, NULL);

    ret = gettimeofday(&tv, NULL);
    time = localtime(&tv.tv_sec);
    if (0 == ret && NULL != time)
    {
        timeStr = (char *) malloc(20);

        if (NULL != timeStr)
        {
            snprintf(timeStr, 20, "%04d:%02d:%02d %02d:%02d:%02d",
                 time->tm_year + 1900,
                 time->tm_mon + 1,
                 time->tm_mday,
                 time->tm_hour,
                 time->tm_min,
                 time->tm_sec
                );
            exifSetString (data, EXIF_IFD_0,    EXIF_TAG_DATE_TIME,              timeStr);
            exifSetString (data, EXIF_IFD_EXIF, EXIF_TAG_DATE_TIME_ORIGINAL,     timeStr);
            exifSetString (data, EXIF_IFD_EXIF, EXIF_TAG_DATE_TIME_DIGITIZED,    timeStr);

            snprintf(timeStr, 20, "%06d", (int) tv.tv_usec);

            exifSetString (data, EXIF_IFD_EXIF, EXIF_TAG_SUB_SEC_TIME,           timeStr);
            exifSetString (data, EXIF_IFD_EXIF, EXIF_TAG_SUB_SEC_TIME_ORIGINAL,  timeStr);
            exifSetString (data, EXIF_IFD_EXIF, EXIF_TAG_SUB_SEC_TIME_DIGITIZED, timeStr);

            free (timeStr);
            timeStr = NULL;
        }
    }

    if ( NULL != mExifParams.mGPSLocation )
    {
        ExifRational r1, r2, r3, r4;

        /* gps data */
        r1.denominator = 1;
        r2.denominator = 1;
        r3.denominator = 1000000;
        r4.denominator = 100;

        r1.numerator = mExifParams.mGPSLocation->mLongDeg;
        r2.numerator = mExifParams.mGPSLocation->mLongMin;
        r3.numerator = mExifParams.mGPSLocation->mLongSec;
        exifSetGPSCoord(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_LONGITUDE, r1, r2, r3);

        r1.numerator = mExifParams.mGPSLocation->mLatDeg;
        r2.numerator = mExifParams.mGPSLocation->mLatMin;
        r3.numerator = mExifParams.mGPSLocation->mLatSec;
        exifSetGPSCoord(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_LATITUDE, r1, r2, r3);

        r3.denominator = 1;
        r4.numerator = mExifParams.mGPSLocation->mAltitude;
        exifSetGPSAltitude(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_ALTITUDE, r4);

        if (0L == mExifParams.mGpsTimeStamp)
        {
            time = gmtime((const time_t*) &mExifParams.mGPSLocation->mTimeStamp);

            if( 10 == strlen(mExifParams.mGPSLocation->mDateStamp) )
            {
                exifSetGPSString (data, EXIF_IFD_GPS, (ExifTag)EXIF_TAG_GPS_DATE_STAMP, mExifParams.mGPSLocation->mDateStamp);
            }
        }
        else
        {
            // only for refocus mode, when GPS information is OK.
            if (mExifParams.mGpsTimeStamp != mEnv->mGPSTimestamp)
            {
                mExifParams.mGpsTimeStamp = mEnv->mGPSTimestamp;
            }
            time = gmtime((const time_t*) &mExifParams.mGpsTimeStamp);
            if (NULL != time)
            {
                char dateStamp[11];
                memset(dateStamp, 0, sizeof(dateStamp));
                strftime(dateStamp, 11, "%Y:%m:%d", time);
                exifSetGPSString (data, EXIF_IFD_GPS, (ExifTag)EXIF_TAG_GPS_DATE_STAMP, dateStamp);
            }
        }
        if (NULL != time)
        {
            r1.numerator = time->tm_hour;
            r2.numerator = time->tm_min;
            r3.numerator = time->tm_sec;

            exifSetGPSCoord(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_TIME_STAMP, r1, r2, r3);
        }
        else
        {
            ALOGE("gmtime failed time: %p errno=%s", time, strerror(errno));
        }

        exifSetGPSByte(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_ALTITUDE_REF,(ExifByte)mExifParams.mGPSLocation->mAltitudeRef);

        if( NULL != mExifParams.mGPSLocation->mLatRef )
        {
            exifSetGPSString (data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_LATITUDE_REF, mExifParams.mGPSLocation->mLatRef);
        }

        if( NULL != mExifParams.mGPSLocation->mLongRef )
        {
            exifSetGPSString (data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_LONGITUDE_REF, mExifParams.mGPSLocation->mLongRef);
        }

        if( NULL != mExifParams.mGPSLocation->mProcMethod )
        {
            exifSetString(data, EXIF_IFD_GPS, (ExifTag)EXIF_TAG_GPS_PROCESSING_METHOD, mExifParams.mGPSLocation->mProcMethod);
        }

        if( NULL != mExifParams.mGPSLocation->mVersionId )
        {
            exifSetGPSVersion(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_VERSION_ID,
                                mExifParams.mGPSLocation->mVersionId[0],
                                mExifParams.mGPSLocation->mVersionId[1],
                                mExifParams.mGPSLocation->mVersionId[2],
                                mExifParams.mGPSLocation->mVersionId[3]);
        }
    }
    else
    {
        if (0L != mExifParams.mGpsTimeStamp)
        {
            // only for refocus mode, when no GPS information.
            if (mExifParams.mGpsTimeStamp != mEnv->mGPSTimestamp)
            {
                mExifParams.mGpsTimeStamp = mEnv->mGPSTimestamp;
            }
            time = gmtime((const time_t*) &mExifParams.mGpsTimeStamp);
            if (NULL != time)
            {
                ExifRational r1, r2, r3;
                r1.denominator = 1;
                r2.denominator = 1;
                r3.denominator = 1;
                r1.numerator = time->tm_hour;
                r2.numerator = time->tm_min;
                r3.numerator = time->tm_sec;
                exifSetGPSCoord(data, EXIF_IFD_GPS, (ExifTag) EXIF_TAG_GPS_TIME_STAMP, r1, r2, r3);

                char dateStamp[11];
                memset(dateStamp, 0, sizeof(dateStamp));
                strftime(dateStamp, 11, "%Y:%m:%d", time);
                exifSetGPSString (data, EXIF_IFD_GPS, (ExifTag)EXIF_TAG_GPS_DATE_STAMP, dateStamp);
            }
            else
            {
                ALOGE("get failed gps time: %p errno=%s", time, strerror(errno));
            }
        }
    }

    /* if the thumbnail size > MAX_THUMBNAIL_SIZE, the whole exif size(include  thumbnail size) must be > MAX_EXIF_SIZE*/
    if( (0 != thumbnailSize) && (NULL != thumbnailBuffer) && (MAX_THUMBNAIL_SIZE > thumbnailSize))
    {
        exifSetShort(data, EXIF_IFD_1, EXIF_TAG_COMPRESSION,                    6); /* JentryG */
        exifSetShort(data, EXIF_IFD_1, EXIF_TAG_IMAGE_WIDTH,                    mExifParams.mThumbnailWidth);
        exifSetShort(data, EXIF_IFD_1, EXIF_TAG_IMAGE_LENGTH,                   mExifParams.mThumbnailHeight);
        exifSetRational (data, EXIF_IFD_1,    EXIF_TAG_X_RESOLUTION,            mExifParams.mThumbnailXResolution);
        exifSetRational (data, EXIF_IFD_1,    EXIF_TAG_Y_RESOLUTION,            mExifParams.mThumbnailYResolution);
        exifSetShort    (data, EXIF_IFD_1,    EXIF_TAG_RESOLUTION_UNIT,         2);
        exifSetShort    (data, EXIF_IFD_1,    EXIF_TAG_ORIENTATION,             mExifParams.mRotation);

        data->data = (unsigned char *)malloc(thumbnailSize);
        if(NULL != data->data)
        {
            memcpy(data->data, thumbnailBuffer, thumbnailSize);
            data->size = thumbnailSize;
        }
    }

    /* copy data to our buffer */
    exif_data_save_data (data, &mExifBuffer->mData, &mExifBuffer->mSize);

    if(NULL != data->data)
    {
        free(data->data);
        data->data = NULL;
    }

    /* destroy exif structure */
    exif_data_unref(data);

    if(NULL != productInfo)
    {
        free(productInfo);
        productInfo = NULL;
    }

    if(NULL != softVersion)
    {
        free(softVersion);
        softVersion = NULL;
    }

    return mExifBuffer;
}

/*
 **************************************************************************
 * FunctionName: JpegEncoderExif::jpegEncoderExifDeInit;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
*/
int JpegEncoderExif::jpegEncoderExifDeInit()
{
    ALOGV("enter %s()", __FUNCTION__);

    if(NULL != mExifBuffer && NULL != mExifBuffer->mData)
    {
        free(mExifBuffer->mData);
        mExifBuffer->mData = NULL;
    }

    if(NULL != mExifParams.mGPSLocation)
    {
        free(mExifParams.mGPSLocation);
        mExifParams.mGPSLocation = NULL;
    }

    if(NULL != mExifBuffer)
    {
        delete mExifBuffer;
        mExifBuffer = NULL;
    }

    return 0;
}

void JpegEncoderExif::setGpsTime(unsigned long gpsTime)
{
    mExifParams.mGpsTimeStamp = gpsTime;
}

ExifBuffer* JpegEncoderExif::makeExif (JpegEncoderExif* exif, unsigned char* thumbnailBuffer, unsigned int thumbnailSize)
{
    ALOGV("enter %s()", __FUNCTION__);
    int ret = 0;
    ExifBuffer* exifBuffer = NULL;
    if(NULL == exif)
    {
        ALOGE("Create JpegEncoderExif failed");
        return NULL;
    }

    exif->setGpsTime();
    exif->setAllFocusFlag(0);

    exifBuffer = exif->jpegEncoderMakeExif(thumbnailBuffer, thumbnailSize);
    return exifBuffer;
}
}; /* namespace android */

/********************************** END **********************************************/
