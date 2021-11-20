/*
 **************************************************************************************
 *       Filename:  yuvutils.h
 *    Description:  yuv utils header file
 *
 *        Version:  1.0
 *        Created:  2012-05-17 10:47:28
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

#ifndef YUVUTILS_H_INCLUDED
#define YUVUTILS_H_INCLUDED

namespace android
{

struct BitmapParams
{
    BitmapParams(
        void *bits,
        size_t  width,      size_t height,
        size_t  cropLeft,   size_t cropTop,
        size_t  cropRight,  size_t cropBottom);

    size_t  cropWidth() const;
    size_t  cropHeight() const;

    void*   mBits;
    size_t  mWidth, mHeight;
    size_t  mCropLeft, mCropTop, mCropRight, mCropBottom;
};

uint8_t*    initClip();
void        deinitClip();

void        convertYUV420Planar2rgb565(char *src, char *dst, int w, int h);
void        convert_yuv422packed_to_yuv420sp(char *src, char *dst, int w, int h, int Stride);
void        convert_yuv422packed_to_yuv422sp(char *src, char *dst, int w, int h);
void        getVideoData(char* src, char* dst, int w, int h, int Stride);

bool        decodeYUV420SP_test(int * rgb, uint8_t * yuv420sp, int width, int height);

bool        convertCbYCrY(const BitmapParams &src, const BitmapParams &dst);
bool        convertTIYUV420PackedSemiPlanar(const BitmapParams &src, const BitmapParams &dst);
bool        convertYUV420Planar(const BitmapParams &src, const BitmapParams &dst);
bool        convertYUV420SemiPlanar(const BitmapParams &src, const BitmapParams &dst);

void        convert_YUYV_to_YUV420planar(char *src, char *dst, int w, int h, int Stride);
void        convert_YUYV_to_YUV420sp(char *src, char *dst, int w, int h);
void        convert_YUV420sp_to_YUV420p(char *src, char *dst, int w, int h, int Stride);
void        ConvertYUYVtoRGB565(const void *yuyv_data, void *rgb565_data, const unsigned int srcw, const unsigned int srch, const unsigned int destw, const unsigned int desth);
int         ConvertYUV420SPtoRGB565(uint64_t src_phyaddr, unsigned char **dest, unsigned int srcwidth, unsigned int srcheight, unsigned int destwidth, unsigned int destheight, int Stride);

};

#endif /*YUVUTILS_H_INCLUDED*/

/********************************* END ***********************************************/
