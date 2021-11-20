/*
 **************************************************************************************
 *       Filename:  yuvutils.cpp
 *    Description:  yuv utils source file
 *
 *        Version:  1.0
 *        Created:  2012-05-17 10:47:46
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
//#define LOG_NDEBUG 0
#define LOG_TAG "yuvutils"
#include <utils/Log.h>

#include "CameraUtils.h"
#include "yuvutils.h"
#include "hi_tde_api.h"
#include "hi_unf_common.h"
#include "hi_common.h"

namespace android {

static uint8_t* mClip = NULL;

/*
 **************************************************************************
 * FunctionName: BitmapParams::BitmapParams;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
BitmapParams::BitmapParams(
    void *bits,
    size_t width,       size_t height,
    size_t cropLeft,    size_t cropTop,
    size_t cropRight,   size_t cropBottom)
    : mBits(bits),
      mWidth(width),
      mHeight(height),
      mCropLeft(cropLeft),
      mCropTop(cropTop),
      mCropRight(cropRight),
      mCropBottom(cropBottom)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);
}

/*
 **************************************************************************
 * FunctionName: BitmapParams::cropWidth;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
size_t BitmapParams::cropWidth() const
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    return mCropRight - mCropLeft + 1;
}

/*
 **************************************************************************
 * FunctionName: BitmapParams::cropHeight;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
size_t BitmapParams::cropHeight() const
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    return mCropBottom - mCropTop + 1;
}

/*
 **************************************************************************
 * FunctionName: initClip;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
uint8_t* initClip()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    static const signed kClipMin = -278;
    static const signed kClipMax = 535;

    if (mClip == NULL)
    {
        mClip = new uint8_t[kClipMax - kClipMin + 1];

        for (signed i = kClipMin; i <= kClipMax; ++i)
        {
            mClip[i - kClipMin] = (i < 0) ? 0 : (i > 255) ? 255 : (uint8_t)i;
        }
    }

    return &mClip[-kClipMin];
}

/*
 **************************************************************************
 * FunctionName: deinitClip;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void deinitClip()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(mClip)
    {
        delete mClip;
        mClip = NULL;
    }
}

/*
 **************************************************************************
 * FunctionName: convertYUV420Planar2rgb565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void convertYUV420Planar2rgb565(char *src, char *dst, int w, int h)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    uint8_t *kAdjustedClip  = initClip();
    uint16_t *dst_ptr       = (uint16_t *)dst;
    const uint8_t *src_y    = (const uint8_t *)src;
    const uint8_t *src_u    = (const uint8_t *)src_y + w * h;
    const uint8_t *src_v    = src_u + (w / 2) * (h / 2);

    for (int y = 0; y < h; ++y)
    {
        for (int x = 0; x < w; x += 2)
        {
            signed y1   = (signed)src_y[x] - 16;
            signed y2   = (signed)src_y[x + 1] - 16;

            signed u    = (signed)src_u[x / 2] - 128;
            signed v    = (signed)src_v[x / 2] - 128;

            signed u_b  = u * 517;
            signed u_g  = -u * 100;
            signed v_g  = -v * 208;
            signed v_r  = v * 409;

            signed tmp1 = y1 * 298;
            signed b1   = (tmp1 + u_b) / 256;
            signed g1   = (tmp1 + v_g + u_g) / 256;
            signed r1   = (tmp1 + v_r) / 256;

            signed tmp2 = y2 * 298;
            signed b2   = (tmp2 + u_b) / 256;
            signed g2   = (tmp2 + v_g + u_g) / 256;
            signed r2   = (tmp2 + v_r) / 256;

            uint32_t rgb1 = ((kAdjustedClip[r1] >> 3) << 11)
                            | ((kAdjustedClip[g1] >> 2) << 5)
                            | (kAdjustedClip[b1] >> 3);

            uint32_t rgb2 = ((kAdjustedClip[r2] >> 3) << 11)
                            | ((kAdjustedClip[g2] >> 2) << 5)
                            | (kAdjustedClip[b2] >> 3);

            if (x + 1 < w)
            {
                *(uint32_t *)(&dst_ptr[x]) = (rgb2 << 16) | rgb1;
            }
            else
            {
                dst_ptr[x] = rgb1;
            }
        }

        src_y += w;

        if (y & 1)
        {
            src_u += w / 2;
            src_v += w / 2;
        }

        dst_ptr += w;
    }

    deinitClip();
}

/*
 **************************************************************************
 * FunctionName: convert_yuv422packed_to_yuv420sp;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void convert_yuv422packed_to_yuv420sp(char *src, char *dst, int w, int h, int Stride)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i       = 0;
    int j       = 0;
    int offset  = 0;
    int iCount  = w * h;

    for(i=0; i< w*h; i++)
    {
        *(dst++) = *(src+2*i); //copy Y data
        if(((i + 1) % w) == 0)
        {
            dst = dst + Stride - w;
        }
    }

    for ( i = 0; i < h; i = i +2 )
    {
        for ( j = 0; j < w; j = j + 2 )
        {
            offset      = (i * w + j)<<1;
            *(dst++)    = *(src + offset + 3);
            *(dst++)    = *(src + offset + 1);
        }
        dst = dst + Stride - w;
    }
}

/*
 **************************************************************************
 * FunctionName: convert_yuv422packed_to_yuv422sp;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void convert_yuv422packed_to_yuv422sp(char *src, char *dst, int w, int h)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i       = 0;
    int j       = 0;
    int offset  = 0;
    int iCount  = w * h;

    for(i = 0; i < iCount; i = i + 2)
    {
        *(dst++) = *(src+2*i);      //copy Y data
        *(dst++) = *(src+2*i + 2);  //copy Y data
    }


    for ( i = 0; i < h; i = i + 1 )
    {
        for ( j = 0; j < w; j = j + 2 )
        {
            *(dst ++) = *(src + offset + 1);
            *(dst ++) = *(src + offset + 3);
        }
    }
}

/*
 **************************************************************************
 * FunctionName: getVideoData;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void getVideoData(char* src, char* dst, int w, int h, int Stride)
{
    for(int i=0; i< w*h; i++)
    {
        *(dst++) = *(src++); //copy Y data
        if(((i + 1) % w) == 0)
        {
            src = src + Stride - w;
        }
    }

    for ( int i = 0; i < h/2; i++ )
    {
        for ( int j = 0; j < w; j++)
        {
            *(dst++) = *(src++);
        }
        src = src + Stride - w;
    }
}

/*
 **************************************************************************
 * FunctionName: decodeYUV420SP_test;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool decodeYUV420SP_test(int * rgb, uint8_t * yuv420sp, int width, int height)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int frameSize = width * height;

    for (int j = 0, ypd = 0; j < height; j += 4)
    {
        int uvp = frameSize + (j >> 1) * width, u = 0, v = 0;
        for (int i = 0; i < width; i += 4, ypd++)
        {
            int y = (0xff & ((int) yuv420sp[j * width + i])) - 16;
            if (y < 0)
            {
                y = 0;
            }

            if ((i & 1) == 0)
            {
                v   = (0xff & yuv420sp[uvp++]) - 128;
                u   = (0xff & yuv420sp[uvp++]) - 128;
                uvp += 2;  // Skip the UV values for the 4 pixels skipped in between
            }

            int y1192   = 1192 * y;
            int r       = (y1192 + 1634 * v);
            int g       = (y1192 - 833 * v - 400 * u);
            int b       = (y1192 + 2066 * u);

            if (r < 0)
            {
                r = 0;
            }
            else if (r > 262143)
            {
                r = 262143;
            }

            if (g < 0)
            {
                g = 0;
            }
            else if (g > 262143)
            {
                g = 262143;
            }

            if (b < 0)
            {
                b = 0;
            }
            else if (b > 262143)
            {
                b = 262143;
            }

            rgb[ypd] = 0xff000000 | ((r << 6) & 0xff0000) | ((g >> 2) & 0xff00) | ((b >> 10) & 0xff);
        }
    }

    return 1;
}

/*
 **************************************************************************
 * FunctionName: convertCbYCrY;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool convertCbYCrY(const BitmapParams &src, const BitmapParams &dst)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    // XXX Untested

    uint8_t *kAdjustedClip = initClip();

    if (!((src.mCropLeft & 1)   == 0
        && src.cropWidth()  == dst.cropWidth()
        && src.cropHeight() == dst.cropHeight()))
    {
        return false;
    }

    uint32_t *dst_ptr      = (uint32_t *)dst.mBits + (dst.mCropTop * dst.mWidth + dst.mCropLeft) / 2;
    const uint8_t *src_ptr = (const uint8_t *)src.mBits + (src.mCropTop * dst.mWidth + src.mCropLeft) * 2;

    for (size_t y = 0; y < src.cropHeight(); ++y)
    {
        for (size_t x = 0; x < src.cropWidth(); x += 2)
        {
            signed y1   = (signed)src_ptr[2 * x + 1] - 16;
            signed y2   = (signed)src_ptr[2 * x + 3] - 16;
            signed u    = (signed)src_ptr[2 * x] - 128;
            signed v    = (signed)src_ptr[2 * x + 2] - 128;

            signed u_b  = u * 517;
            signed u_g  = -u * 100;
            signed v_g  = -v * 208;
            signed v_r  = v * 409;

            signed tmp1 = y1 * 298;
            signed b1   = (tmp1 + u_b) / 256;
            signed g1   = (tmp1 + v_g + u_g) / 256;
            signed r1   = (tmp1 + v_r) / 256;

            signed tmp2 = y2 * 298;
            signed b2   = (tmp2 + u_b) / 256;
            signed g2   = (tmp2 + v_g + u_g) / 256;
            signed r2   = (tmp2 + v_r) / 256;

            uint32_t rgb1 = ((kAdjustedClip[r1] >> 3) << 11)
                            |((kAdjustedClip[g1] >> 2) << 5)
                            |(kAdjustedClip[b1] >> 3);

            uint32_t rgb2 = ((kAdjustedClip[r2] >> 3) << 11)
                            |((kAdjustedClip[g2] >> 2) << 5)
                            |(kAdjustedClip[b2] >> 3);

            dst_ptr[x / 2] = (rgb2 << 16) | rgb1;
        }

        src_ptr += src.mWidth * 2;
        dst_ptr += dst.mWidth / 2;
    }

    deinitClip();

    return true;
}

/*
 **************************************************************************
 * FunctionName: convertTIYUV420PackedSemiPlanar;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool convertTIYUV420PackedSemiPlanar(const BitmapParams &src, const BitmapParams &dst)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    uint8_t *kAdjustedClip = initClip();

    if (!((dst.mWidth & 3)      == 0
        && (src.mCropLeft & 1)  == 0
        && src.cropWidth()      == dst.cropWidth()
        && src.cropHeight()     == dst.cropHeight()))
    {
        return false;
    }

    uint32_t *dst_ptr       = (uint32_t *)dst.mBits + (dst.mCropTop * dst.mWidth + dst.mCropLeft) / 2;
    const uint8_t *src_y    = (const uint8_t *)src.mBits;
    const uint8_t *src_u    = (const uint8_t *)src_y + src.mWidth * (src.mHeight - src.mCropTop / 2);

    for (size_t y = 0; y < src.cropHeight(); ++y)
    {
        for (size_t x = 0; x < src.cropWidth(); x += 2)
        {
            signed y1   = (signed)src_y[x] - 16;
            signed y2   = (signed)src_y[x + 1] - 16;

            signed u    = (signed)src_u[x & ~1] - 128;
            signed v    = (signed)src_u[(x & ~1) + 1] - 128;

            signed u_b  = u * 517;
            signed u_g  = -u * 100;
            signed v_g  = -v * 208;
            signed v_r  = v * 409;

            signed tmp1 = y1 * 298;
            signed b1   = (tmp1 + u_b) / 256;
            signed g1   = (tmp1 + v_g + u_g) / 256;
            signed r1   = (tmp1 + v_r) / 256;

            signed tmp2 = y2 * 298;
            signed b2   = (tmp2 + u_b) / 256;
            signed g2   = (tmp2 + v_g + u_g) / 256;
            signed r2   = (tmp2 + v_r) / 256;

            uint32_t rgb1 = ((kAdjustedClip[r1] >> 3) << 11)
                            |((kAdjustedClip[g1] >> 2) << 5)
                            |(kAdjustedClip[b1] >> 3);

            uint32_t rgb2 = ((kAdjustedClip[r2] >> 3) << 11)
                            |((kAdjustedClip[g2] >> 2) << 5)
                            |(kAdjustedClip[b2] >> 3);

            dst_ptr[x / 2] = (rgb2 << 16) | rgb1;
        }

        src_y += src.mWidth;

        if (y & 1)
        {
            src_u += src.mWidth;
        }

        dst_ptr += dst.mWidth / 2;
    }

    deinitClip();

    return true;
}

/*
 **************************************************************************
 * FunctionName: convertYUV420Planar;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool  convertYUV420Planar(const BitmapParams &src, const BitmapParams &dst)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (!((src.mCropLeft & 1)   == 0
        && src.cropWidth()      == dst.cropWidth()
        && src.cropHeight()     == dst.cropHeight()))
    {
        return false;
    }
    uint8_t *kAdjustedClip  = initClip();
    uint16_t *dst_ptr       = (uint16_t *)dst.mBits + dst.mCropTop * dst.mWidth + dst.mCropLeft;
    const uint8_t *src_y    = (const uint8_t *)src.mBits + src.mCropTop * src.mWidth + src.mCropLeft;
    const uint8_t *src_u    = (const uint8_t *)src_y + src.mWidth * src.mHeight
                                + src.mCropTop * (src.mWidth / 2) + src.mCropLeft / 2;
    const uint8_t *src_v    = src_u + (src.mWidth / 2) * (src.mHeight / 2);

    for (size_t y = 0; y < src.cropHeight(); ++y)
    {
        for (size_t x = 0; x < src.cropWidth(); x += 2)
        {
            // B = 1.164 * (Y - 16) + 2.018 * (U - 128)
            // G = 1.164 * (Y - 16) - 0.813 * (V - 128) - 0.391 * (U - 128)
            // R = 1.164 * (Y - 16) + 1.596 * (V - 128)

            // B = 298/256 * (Y - 16) + 517/256 * (U - 128)
            // G = .................. - 208/256 * (V - 128) - 100/256 * (U - 128)
            // R = .................. + 409/256 * (V - 128)

            // min_B = (298 * (- 16) + 517 * (- 128)) / 256 = -277
            // min_G = (298 * (- 16) - 208 * (255 - 128) - 100 * (255 - 128)) / 256 = -172
            // min_R = (298 * (- 16) + 409 * (- 128)) / 256 = -223

            // max_B = (298 * (255 - 16) + 517 * (255 - 128)) / 256 = 534
            // max_G = (298 * (255 - 16) - 208 * (- 128) - 100 * (- 128)) / 256 = 432
            // max_R = (298 * (255 - 16) + 409 * (255 - 128)) / 256 = 481

            // clip range -278 .. 535
            signed y1   = (signed)src_y[x] - 16;
            signed y2   = (signed)src_y[x + 1] - 16;

            signed u    = (signed)src_u[x / 2] - 128;
            signed v    = (signed)src_v[x / 2] - 128;
            signed u_b  = u * 517;
            signed u_g  = -u * 100;
            signed v_g  = -v * 208;
            signed v_r  = v * 409;

            signed tmp1 = y1 * 298;
            signed b1   = (tmp1 + u_b) / 256;
            signed g1   = (tmp1 + v_g + u_g) / 256;
            signed r1   = (tmp1 + v_r) / 256;

            signed tmp2 = y2 * 298;
            signed b2   = (tmp2 + u_b) / 256;
            signed g2   = (tmp2 + v_g + u_g) / 256;
            signed r2   = (tmp2 + v_r) / 256;

            uint32_t rgb1 = ((kAdjustedClip[r1] >> 3) << 11)
                            |((kAdjustedClip[g1] >> 2) << 5)
                            |(kAdjustedClip[b1] >> 3);

            uint32_t rgb2 = ((kAdjustedClip[r2] >> 3) << 11)
                            |((kAdjustedClip[g2] >> 2) << 5)
                            |(kAdjustedClip[b2] >> 3);

            if (x + 1 < src.cropWidth())
            {
                *(uint32_t *)(&dst_ptr[x]) = (rgb2 << 16) | rgb1;
            }
            else
            {
                dst_ptr[x] = rgb1;
            }
        }

        src_y += src.mWidth;
        if (y & 1)
        {
            src_u += src.mWidth / 2;
            src_v += src.mWidth / 2;
        }
        dst_ptr += dst.mWidth;
    }

    deinitClip();

    return true;
}

/*
 **************************************************************************
 * FunctionName: convertYUV420SemiPlanar;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
bool  convertYUV420SemiPlanar(const BitmapParams &src, const BitmapParams &dst)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    uint8_t *kAdjustedClip = initClip();

    if (!((dst.mWidth & 3)      == 0
        && (src.mCropLeft & 1)  == 0
        && src.cropWidth()      == dst.cropWidth()
        && src.cropHeight()     == dst.cropHeight()))
    {
        return false;
    }

    uint32_t *dst_ptr    = (uint32_t *)dst.mBits +( (dst.mCropTop * dst.mWidth + dst.mCropLeft) >>1);
    const uint8_t *src_y = (const uint8_t *)src.mBits + src.mCropTop * src.mWidth + src.mCropLeft;
    const uint8_t *src_u = (const uint8_t *)src_y + src.mWidth * src.mHeight + src.mCropTop * src.mWidth + src.mCropLeft;

    ALOGI("src.cropHeight=%d,src.cropWidth()=%d",src.cropHeight(),src.cropWidth());

    for (size_t y = 0; y < src.cropHeight(); ++y)
    {
        for (size_t x = 0; x < src.cropWidth(); x += 2)
        {
            signed y1   = (signed)src_y[x] - 16;
            signed y2   = (signed)src_y[x + 1] - 16;
            signed v    = (signed)src_u[x & ~1] - 128;
            signed u    = (signed)src_u[(x & ~1) + 1] - 128;
            signed u_b  = u * 517;
            signed u_g  = -u * 100;
            signed v_g  = -v * 208;
            signed v_r  = v * 409;

            signed tmp1 = y1 * 298;
            signed b1   = (tmp1 + u_b) >>8;
            signed g1   = (tmp1 + v_g + u_g) >>8;
            signed r1   = (tmp1 + v_r) >>8;

            signed tmp2 = y2 * 298;
            signed b2   = (tmp2 + u_b) >>8;
            signed g2   = (tmp2 + v_g + u_g) >>8;
            signed r2   = (tmp2 + v_r) >>8;

            uint32_t rgb1 = ((kAdjustedClip[b1] >> 3) << 11)
                            |((kAdjustedClip[g1] >> 2) << 5)
                            |(kAdjustedClip[r1] >> 3);

            uint32_t rgb2 = ((kAdjustedClip[b2] >> 3) << 11)
                            |((kAdjustedClip[g2] >> 2) << 5)
                            |(kAdjustedClip[r2] >> 3);

            dst_ptr[x >>1] = (rgb2 << 16) | rgb1;
        }

        src_y += src.mWidth;

        if (y & 1)
        {
            src_u += src.mWidth;
        }

        dst_ptr += dst.mWidth>>1;
    }

    deinitClip();

    return true;
}

/*
 **************************************************************************
 * FunctionName: convert_YUYV_to_YUV420planar;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void convert_YUYV_to_YUV420planar(char *src, char *dst, int w, int h, int Stride)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i, j;

    for(i=0; i<w*h; i++)
    {
        *(dst++) = *(src+(i<<1));              //copy Y data
        if(((i + 1) % w) == 0)
        {
            dst = dst + Stride - w;
        }
    }
    char *line = src;
    char *linen = line + (w<<1);
    int hw = w>>1;
    int hh = h>>1;
    for(i=0; i<hh; i++)
    {
        for(j=0;j<hw;j++)
        {
            *(dst++) = (*(line+(j<<2)+3)+*(linen+(j<<2)+3))>>1;    //copy U data
        }
        line += w<<2;
        linen += w<<2;
        dst = dst + (Stride>>1) - hw;
    }

    line = src;
    linen = line + (w<<1);
    for(i=0; i<hh; i++)
    {
        for(j=0;j<hw;j++)
        {
            *(dst++) = (*(line+(j<<2)+1)+*(linen+(j<<2)+1))>>1;    //copy V data
        }
        line += w<<2;
        linen += w<<2;
        dst = dst + (Stride>>1) - hw;
    }
}

/*
 **************************************************************************
 * FunctionName: convert_YUYV_to_YUV420sp;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void convert_YUYV_to_YUV420sp(char *src, char *dst, int w, int h)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i, line;

    for(i=0; i<w*h; i++)
    {
        *(dst++) = *(src+2*i); //copy Y data
    }

    for(i=0; i<w*h; i++)
    {
        line  = i/w;
        if(line % 2 == 0)
        {                       //even line
            *(dst++) = *(src+2*i+1);
        }
    }
}

void convert_YUV420sp_to_YUV420p(char *src, char *dst, int w, int h, int Stride)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int i, j;

    for(i=0; i<w*h; i++)
    {
        *(dst++) = *(src++); //copy Y data
        if((i+1) % w == 0)
        {
            src = src + Stride - w;
        }
    }

    char *temp = src;
    int hh = h>>1;
    int hw = w>>1;

    for(i=0; i<hh; i++)
    {
        for(j=0;j<hw;j++)
        {
            *(dst++) = *(src+2*j);    //copy U data
        }

        src = src + Stride;
    }

    for(i=0; i<hh; i++)
    {
        for(j=0;j<hw;j++)
        {
            *(dst++) = *(temp+2*j+1);    //copy V data
        }

        temp = temp + Stride;
    }
}

static const signed short redAdjust[] = {
    -161,-160,-159,-158,-157,-156,-155,-153,
    -152,-151,-150,-149,-148,-147,-145,-144,
    -143,-142,-141,-140,-139,-137,-136,-135,
    -134,-133,-132,-131,-129,-128,-127,-126,
    -125,-124,-123,-122,-120,-119,-118,-117,
    -116,-115,-114,-112,-111,-110,-109,-108,
    -107,-106,-104,-103,-102,-101,-100, -99,
     -98, -96, -95, -94, -93, -92, -91, -90,
     -88, -87, -86, -85, -84, -83, -82, -80,
     -79, -78, -77, -76, -75, -74, -72, -71,
     -70, -69, -68, -67, -66, -65, -63, -62,
     -61, -60, -59, -58, -57, -55, -54, -53,
     -52, -51, -50, -49, -47, -46, -45, -44,
     -43, -42, -41, -39, -38, -37, -36, -35,
     -34, -33, -31, -30, -29, -28, -27, -26,
     -25, -23, -22, -21, -20, -19, -18, -17,
     -16, -14, -13, -12, -11, -10,  -9,  -8,
      -6,  -5,  -4,  -3,  -2,  -1,   0,   1,
       2,   3,   4,   5,   6,   7,   9,  10,
      11,  12,  13,  14,  15,  17,  18,  19,
      20,  21,  22,  23,  25,  26,  27,  28,
      29,  30,  31,  33,  34,  35,  36,  37,
      38,  39,  40,  42,  43,  44,  45,  46,
      47,  48,  50,  51,  52,  53,  54,  55,
      56,  58,  59,  60,  61,  62,  63,  64,
      66,  67,  68,  69,  70,  71,  72,  74,
      75,  76,  77,  78,  79,  80,  82,  83,
      84,  85,  86,  87,  88,  90,  91,  92,
      93,  94,  95,  96,  97,  99, 100, 101,
     102, 103, 104, 105, 107, 108, 109, 110,
     111, 112, 113, 115, 116, 117, 118, 119,
     120, 121, 123, 124, 125, 126, 127, 128,
};

static const signed short greenAdjust1[] = {
     34,  34,  33,  33,  32,  32,  32,  31,
     31,  30,  30,  30,  29,  29,  28,  28,
     28,  27,  27,  27,  26,  26,  25,  25,
     25,  24,  24,  23,  23,  23,  22,  22,
     21,  21,  21,  20,  20,  19,  19,  19,
     18,  18,  17,  17,  17,  16,  16,  15,
     15,  15,  14,  14,  13,  13,  13,  12,
     12,  12,  11,  11,  10,  10,  10,   9,
      9,   8,   8,   8,   7,   7,   6,   6,
      6,   5,   5,   4,   4,   4,   3,   3,
      2,   2,   2,   1,   1,   0,   0,   0,
      0,   0,  -1,  -1,  -1,  -2,  -2,  -2,
     -3,  -3,  -4,  -4,  -4,  -5,  -5,  -6,
     -6,  -6,  -7,  -7,  -8,  -8,  -8,  -9,
     -9, -10, -10, -10, -11, -11, -12, -12,
    -12, -13, -13, -14, -14, -14, -15, -15,
    -16, -16, -16, -17, -17, -17, -18, -18,
    -19, -19, -19, -20, -20, -21, -21, -21,
    -22, -22, -23, -23, -23, -24, -24, -25,
    -25, -25, -26, -26, -27, -27, -27, -28,
    -28, -29, -29, -29, -30, -30, -30, -31,
    -31, -32, -32, -32, -33, -33, -34, -34,
    -34, -35, -35, -36, -36, -36, -37, -37,
    -38, -38, -38, -39, -39, -40, -40, -40,
    -41, -41, -42, -42, -42, -43, -43, -44,
    -44, -44, -45, -45, -45, -46, -46, -47,
    -47, -47, -48, -48, -49, -49, -49, -50,
    -50, -51, -51, -51, -52, -52, -53, -53,
    -53, -54, -54, -55, -55, -55, -56, -56,
    -57, -57, -57, -58, -58, -59, -59, -59,
    -60, -60, -60, -61, -61, -62, -62, -62,
    -63, -63, -64, -64, -64, -65, -65, -66,
};

static const signed short greenAdjust2[] = {
     74,  73,  73,  72,  71,  71,  70,  70,
     69,  69,  68,  67,  67,  66,  66,  65,
     65,  64,  63,  63,  62,  62,  61,  60,
     60,  59,  59,  58,  58,  57,  56,  56,
     55,  55,  54,  53,  53,  52,  52,  51,
     51,  50,  49,  49,  48,  48,  47,  47,
     46,  45,  45,  44,  44,  43,  42,  42,
     41,  41,  40,  40,  39,  38,  38,  37,
     37,  36,  35,  35,  34,  34,  33,  33,
     32,  31,  31,  30,  30,  29,  29,  28,
     27,  27,  26,  26,  25,  24,  24,  23,
     23,  22,  22,  21,  20,  20,  19,  19,
     18,  17,  17,  16,  16,  15,  15,  14,
     13,  13,  12,  12,  11,  11,  10,   9,
      9,   8,   8,   7,   6,   6,   5,   5,
      4,   4,   3,   2,   2,   1,   1,   0,
      0,   0,  -1,  -1,  -2,  -2,  -3,  -4,
     -4,  -5,  -5,  -6,  -6,  -7,  -8,  -8,
     -9,  -9, -10, -11, -11, -12, -12, -13,
    -13, -14, -15, -15, -16, -16, -17, -17,
    -18, -19, -19, -20, -20, -21, -22, -22,
    -23, -23, -24, -24, -25, -26, -26, -27,
    -27, -28, -29, -29, -30, -30, -31, -31,
    -32, -33, -33, -34, -34, -35, -35, -36,
    -37, -37, -38, -38, -39, -40, -40, -41,
    -41, -42, -42, -43, -44, -44, -45, -45,
    -46, -47, -47, -48, -48, -49, -49, -50,
    -51, -51, -52, -52, -53, -53, -54, -55,
    -55, -56, -56, -57, -58, -58, -59, -59,
    -60, -60, -61, -62, -62, -63, -63, -64,
    -65, -65, -66, -66, -67, -67, -68, -69,
    -69, -70, -70, -71, -71, -72, -73, -73,
};

static const signed short blueAdjust[] = {
    -276,-274,-272,-270,-267,-265,-263,-261,
    -259,-257,-255,-253,-251,-249,-247,-245,
    -243,-241,-239,-237,-235,-233,-231,-229,
    -227,-225,-223,-221,-219,-217,-215,-213,
    -211,-209,-207,-204,-202,-200,-198,-196,
    -194,-192,-190,-188,-186,-184,-182,-180,
    -178,-176,-174,-172,-170,-168,-166,-164,
    -162,-160,-158,-156,-154,-152,-150,-148,
    -146,-144,-141,-139,-137,-135,-133,-131,
    -129,-127,-125,-123,-121,-119,-117,-115,
    -113,-111,-109,-107,-105,-103,-101, -99,
     -97, -95, -93, -91, -89, -87, -85, -83,
     -81, -78, -76, -74, -72, -70, -68, -66,
     -64, -62, -60, -58, -56, -54, -52, -50,
     -48, -46, -44, -42, -40, -38, -36, -34,
     -32, -30, -28, -26, -24, -22, -20, -18,
     -16, -13, -11,  -9,  -7,  -5,  -3,  -1,
       0,   2,   4,   6,   8,  10,  12,  14,
      16,  18,  20,  22,  24,  26,  28,  30,
      32,  34,  36,  38,  40,  42,  44,  46,
      49,  51,  53,  55,  57,  59,  61,  63,
      65,  67,  69,  71,  73,  75,  77,  79,
      81,  83,  85,  87,  89,  91,  93,  95,
      97,  99, 101, 103, 105, 107, 109, 112,
     114, 116, 118, 120, 122, 124, 126, 128,
     130, 132, 134, 136, 138, 140, 142, 144,
     146, 148, 150, 152, 154, 156, 158, 160,
     162, 164, 166, 168, 170, 172, 175, 177,
     179, 181, 183, 185, 187, 189, 191, 193,
     195, 197, 199, 201, 203, 205, 207, 209,
     211, 213, 215, 217, 219, 221, 223, 225,
     227, 229, 231, 233, 235, 238, 240, 242,
};

/*
 **************************************************************************
 * FunctionName: yuv2rgb565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static inline void yuv2rgb565(const int y, const int u, const int v, unsigned short &rgb565)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int r, g, b;

    r = y + redAdjust[v];
    g = y + greenAdjust1[u] + greenAdjust2[v];
    b = y + blueAdjust[u];

#define CLAMP(x) if (x < 0) x = 0 ; else if (x > 255) x = 255
    CLAMP(r);
    CLAMP(g);
    CLAMP(b);
#undef CLAMP
    rgb565 = (unsigned short)(((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3));
}

/*
 **************************************************************************
 * FunctionName: Software_ConvertYUYVtoRGB565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void Software_ConvertYUYVtoRGB565(const void *yuyv_data, void *rgb565_data, const unsigned int w, const unsigned int h)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const unsigned char *src = (unsigned char *)yuyv_data;
    unsigned short *dst      = (unsigned short *)rgb565_data;

    for (unsigned int i = 0, j = 0; i < w * h * 2; i += 4, j += 2)
    {
        int y, u, v;
        unsigned short rgb565;

        y = src[i + 0];
        u = src[i + 1];
        v = src[i + 3];
        yuv2rgb565(y, u, v, rgb565);
        dst[j + 0] = rgb565;

        y = src[i + 2];
        yuv2rgb565(y, u, v, rgb565);
        dst[j + 1] = rgb565;
    }
}

/*
 **************************************************************************
 * FunctionName: convert_yuyv_to_uyvy;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
//z00180556 add YUV2RGB USE TDE
void convert_yuyv_to_uyvy(unsigned char * dest, unsigned char * source, int width, int height)
{
    int i = 0;

    //dec [0,1,2,3] src[1,0,3,2]
    for (i=0;i<width*height*2;i=i+4)
    {
        *(dest+i+0) = *(source+i+1);
        *(dest+i+1) = *(source+i+0);
        *(dest+i+2) = *(source+i+3);
        *(dest+i+3) = *(source+i+2);
    }
}

/*
 **************************************************************************
 * FunctionName: TDE_ConvertYUYVtoRGB565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int TDE_ConvertYUYVtoRGB565(unsigned char *src, unsigned char **dest, unsigned int srcwidth, unsigned int srcheight, unsigned int destwidth, unsigned int destheight)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    HI_S32 s32Ret = 0;
    TDE2_SURFACE_S pict_s,pict_d;
    TDE2_RECT_S rect_s,rect_d;
    TDE_HANDLE s32Handle = NULL;

    void* psrcvaddr = NULL;
    void* pdesvaddr = NULL;
    uint64_t src_phyaddr = 0;
    uint64_t des_phyaddr = 0;

    s32Ret = HI_TDE2_Open();
    if (HI_SUCCESS != s32Ret)
    {
        CAMERA_HAL_LOGE("open tde failed");
        return -1;
    }

    src_phyaddr = (uint64_t)HI_MMZ_New(srcwidth*srcheight*2, 32, NULL, (HI_CHAR *)"camera_src");
    if (0==src_phyaddr)
    {
        CAMERA_HAL_LOGE("HI_MMZ_New src  failed!");
        goto OVER;
    }
    psrcvaddr = HI_MMZ_Map(src_phyaddr, 1);

    //convert data to physical memory
    convert_yuyv_to_uyvy((unsigned char*)psrcvaddr, src, srcwidth, srcheight);

    HI_MMZ_Flush(src_phyaddr);
    HI_MMZ_Unmap(src_phyaddr);

    des_phyaddr = (uint64_t)HI_MMZ_New(destwidth*destheight*2, 32, NULL, (HI_CHAR *)"camera_des");
    if(0==des_phyaddr)
    {
        CAMERA_HAL_LOGE("HI_MMZ_New dest failed!");
        goto OVER;
    }

    //source picture
    pict_s.u32PhyAddr       = src_phyaddr;
    pict_s.enColorFmt       = TDE2_COLOR_FMT_YCbCr422;
    pict_s.u32Height        = srcheight;
    pict_s.u32Width         = srcwidth;
    pict_s.u32Stride        = srcwidth*2;
    pict_s.pu8ClutPhyAddr   = NULL;
    pict_s.bYCbCrClut       = HI_FALSE ;
    pict_s.bAlphaMax255     = HI_TRUE;
    pict_s.bAlphaExt1555    = HI_FALSE;
    pict_s.u8Alpha1         = 0;
    pict_s.u32CbCrPhyAddr   = 0;
    pict_s.u32CbCrStride    = 0;
    rect_s.s32Xpos          = 0;
    rect_s.s32Ypos          = 0;
    rect_s.u32Width         = srcwidth;
    rect_s.u32Height        = srcheight;

    //target picture
    pict_d.u32PhyAddr       = des_phyaddr;
    pict_d.enColorFmt       = TDE2_COLOR_FMT_RGB565  ;
    pict_d.u32Height        = destheight;
    pict_d.u32Width         = destwidth;
    pict_d.u32Stride        = destwidth*2;
    pict_d.pu8ClutPhyAddr   = NULL;
    pict_d.bYCbCrClut       = HI_FALSE ;
    pict_d.bAlphaMax255     = HI_TRUE;
    pict_d.bAlphaExt1555    = HI_FALSE;
    pict_d.u8Alpha1         = 0;
    pict_d.u32CbCrPhyAddr   = 0;
    pict_d.u32CbCrStride    = 0;
    rect_d.s32Xpos          = 0;
    rect_d.s32Ypos          = 0;
    rect_d.u32Width         = destwidth;
    rect_d.u32Height        = destheight;

    //TDE convert
    s32Handle = HI_TDE2_BeginJob();
    if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
    {
        CAMERA_HAL_LOGE("begin job failed");
        goto OVER;
    }

    s32Ret =HI_TDE2_QuickResize ( s32Handle, &pict_s, &rect_s, &pict_d, &rect_d);
    if (HI_SUCCESS != s32Ret)
    {
        CAMERA_HAL_LOGE("Mbblit failed  s32Ret=%d", s32Ret);
        HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 10);
        goto OVER;
    }
    s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 10);
    if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
    {
        CAMERA_HAL_LOGE("end job failed  s32Ret=%d", s32Ret);
        goto OVER;
    }

    pdesvaddr = HI_MMZ_Map(des_phyaddr, 1);

    if(pdesvaddr != NULL)
    {
        memcpy(*dest, pdesvaddr, destwidth*destheight*2);
    }

    HI_MMZ_Unmap(des_phyaddr);

    HI_TDE2_Close();
    HI_MMZ_Delete(des_phyaddr);
    HI_MMZ_Delete(src_phyaddr);

    return 0;

OVER:
    HI_TDE2_Close();
    HI_MMZ_Delete(des_phyaddr);
    HI_MMZ_Delete(src_phyaddr);

    return -1;
}

/*
 **************************************************************************
 * FunctionName: ConvertYUYVtoRGB565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
void ConvertYUYVtoRGB565(const void *yuyv_data, void *rgb565_data, const unsigned int srcw, const unsigned int srch, const unsigned int destw, const unsigned int desth)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (0 != TDE_ConvertYUYVtoRGB565((unsigned char*)yuyv_data, (unsigned char**)(&rgb565_data), srcw, srch, destw, desth))
    {
        Software_ConvertYUYVtoRGB565(yuyv_data, rgb565_data, srcw, srch);
    }
}

/*
 **************************************************************************
 * FunctionName: ConvertYUV420SPtoRGB565;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int ConvertYUV420SPtoRGB565(uint64_t src_phyaddr, unsigned char **dest, unsigned int srcwidth, unsigned int srcheight, unsigned int destwidth, unsigned int destheight, int Stride)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    HI_S32 s32Ret = 0;
    TDE2_MB_S pict_s;
    TDE2_SURFACE_S pict_d;
    TDE2_RECT_S rect_s,rect_d;
    TDE_HANDLE s32Handle = NULL;

    void* pdesvaddr = NULL;
    uint64_t des_phyaddr = 0;

    s32Ret = HI_TDE2_Open();
    if (HI_SUCCESS != s32Ret)
    {
        CAMERA_HAL_LOGE("open tde failed");
        return -1;
    }

    des_phyaddr = (uint64_t)HI_MMZ_New(destwidth*destheight*2, 32, NULL, (HI_CHAR *)"camera_des");
    if(0==des_phyaddr)
    {
        CAMERA_HAL_LOGE("HI_MMZ_New dest failed!");
        goto OVER;
    }

    //source picture
    pict_s.u32YPhyAddr      = src_phyaddr;
    pict_s.enMbFmt          = TDE2_MB_COLOR_FMT_JPG_YCbCr420MBP;
    pict_s.u32YHeight       = srcheight;
    pict_s.u32YWidth        = srcwidth;
    pict_s.u32YStride       = Stride;
    pict_s.u32CbCrPhyAddr   = src_phyaddr+Stride*srcheight;
    pict_s.u32CbCrStride    = Stride;
    rect_s.s32Xpos          = 0;
    rect_s.s32Ypos          = 0;
    rect_s.u32Width         = srcwidth;
    rect_s.u32Height        = srcheight;

    //target picture
    pict_d.u32PhyAddr       = des_phyaddr;
    pict_d.enColorFmt       = TDE2_COLOR_FMT_RGB565;
    pict_d.u32Height        = destheight;
    pict_d.u32Width         = destwidth;
    pict_d.u32Stride        = destwidth*2;
    pict_d.pu8ClutPhyAddr   = NULL;
    pict_d.bYCbCrClut       = HI_FALSE ;
    pict_d.bAlphaMax255     = HI_TRUE;
    pict_d.bAlphaExt1555    = HI_FALSE;
    pict_d.u8Alpha1         = 0;
    pict_d.u32CbCrPhyAddr   = 0;
    pict_d.u32CbCrStride    = 0;
    rect_d.s32Xpos          = 0;
    rect_d.s32Ypos          = 0;
    rect_d.u32Width         = destwidth;
    rect_d.u32Height        = destheight;

    //TDE convert
    s32Handle = HI_TDE2_BeginJob();
    if (s32Handle == HI_ERR_TDE_INVALID_HANDLE)
    {
        CAMERA_HAL_LOGE("begin job failed");
        goto OVER;
    }

    TDE2_MBOPT_S pstMbOpt;
    memset(&pstMbOpt, 0, sizeof(TDE2_MBOPT_S));

    pstMbOpt.enClipMode = TDE2_CLIPMODE_INSIDE;
    pstMbOpt.stClipRect.s32Xpos=0;
    pstMbOpt.stClipRect.s32Ypos=0;
    pstMbOpt.stClipRect.u32Width=srcwidth;
    pstMbOpt.stClipRect.u32Height=srcheight;
    pstMbOpt.enResize = TDE2_MBRESIZE_QUALITY_HIGH;

    s32Ret =HI_TDE2_MbBlit(s32Handle, &pict_s, &rect_s, &pict_d, &rect_d, &pstMbOpt);
    if (HI_SUCCESS != s32Ret)
    {
        CAMERA_HAL_LOGE("Mbblit failed  s32Ret=%x", s32Ret);
        HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 10);
        goto OVER;
    }
    s32Ret = HI_TDE2_EndJob(s32Handle, HI_FALSE, HI_TRUE, 10);
    if ((HI_SUCCESS != s32Ret) && (HI_ERR_TDE_JOB_TIMEOUT != s32Ret))
    {
        CAMERA_HAL_LOGE("end job failed  s32Ret=%d", s32Ret);
        goto OVER;
    }

    pdesvaddr = HI_MMZ_Map(des_phyaddr, 1);

    if(pdesvaddr != NULL)
    {
        memcpy(*dest, pdesvaddr, destwidth*destheight*2);
    }

    HI_MMZ_Unmap(des_phyaddr);

    HI_TDE2_Close();
    HI_MMZ_Delete(des_phyaddr);

    return 0;

OVER:
    HI_TDE2_Close();
    HI_MMZ_Delete(des_phyaddr);

    return -1;
}
}; // namespace android

/********************************** END **********************************************/
