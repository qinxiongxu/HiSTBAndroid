/**
 \file
 \brief Server (SVR) player module. CNcomment:svr playerÄ£¿éCNend
 \author HiSilicon Technologies Co., Ltd.
 \date 2008-2018
 \version 1.0
 \author
 \date 2014-04-14
 */
#ifndef __HI_SVR_VSINK_H__
#define __HI_SVR_VSINK_H__

#include <hi_type.h>

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

typedef enum hiSVR_VSINK_CMD_E
{
    /**
     * Set picture geometry
     * parameter list:
     *  HI_U32 width, HI_U32 height, HI_U32 format
     */
    HI_SVR_VSINK_SET_DIMENSIONS,
    HI_SVR_VSINK_SET_FORMAT,
    /**
     * set picture number
     * parameter list:
     *  HI_U32 count,
     */
    HI_SVR_VSINK_SET_PICNB,
    /**
     * write data to the picture according to format
     * parameter list:
     *  HI_SVR_PICTURE_S* pic, HI_U8* data
     */
    HI_SVR_VSINK_WRITE_PIC,
    /**
     * set picture crop rect
     */
    HI_SVR_VSINK_SET_CROP,
    /**
     * get mini-undequeue buffer number
     * parameter list:
     *  HI_U32*
     */
    HI_SVR_VSINK_GET_MINBUFNB,

    /**
     * check sync fence
     * parameter list:
     *  HI_SVR_PICTURE_S* pic
     */
    HI_SVR_VSINK_CHECK_FENCE,
} HI_SVR_VSINK_CMD_E;

typedef struct hiSVR_PRIV_DATA_S
{
    HI_S32    s32IsPrivFrameBufUsed;   /* Whether to use private frame buffer */
    HI_S32    s32DisplayCnt;              /*  displayer count one frame */
    HI_S32    s32PrivDataStartPos;     /* private drv metadata start positon */
} HI_SVR_PRIV_DATA_S;

typedef struct hiSVR_PICTURE_S
{
    //property for frame buffer
    HI_U32              u32Width;
    HI_U32              u32Height;
    HI_U32              u32Stride;
    HI_S32              s32FrameBufFd;
    HI_HANDLE           hBuffer;
    //property for meta data buffer
    HI_S32              s32MetadataBufFd;
    HI_HANDLE           hMetadataBuf;
    HI_U32              u32MetadataBufSize;
    HI_U32              u32RepeatCnt;

    HI_S64              s64Pts;
    HI_SVR_PRIV_DATA_S  stPrivData;
    HI_VOID*            priv;
    HI_U32              u32PrivSize;
} HI_SVR_PICTURE_S;

typedef struct hiSVR_VFORMAT_S
{
    HI_U32 u32Fmt;
} HI_SVR_VFORMAT_S;

typedef struct hiSVR_VSINK_S HI_SVR_VSINK_S;
struct hiSVR_VSINK_S
{
    /**
     * Return buffers to original pool
     */
    HI_S32 (*cancel)(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 cnt);

    /**
     * Return a pointer of internal picture pool.
     * Count just indicate user expected buffer number,
     * but it is depend on implementation.
     * caller does not need to free HI_SVR_PIC_POOL_S pointer.
     */
    HI_S32 (*dequeue)(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 cnt);

    /**
     * Prepare a picture for display
     */
    HI_S32 (*prepare)(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* picIn);

    /**
     * Display a picture
     */
    HI_S32 (*queue)(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* picIn);

    /**
     * Control on the module
     */
    HI_S32 (*control)(HI_SVR_VSINK_S* vsink, HI_U32 cmd, ...);

    /**
     * private data pointer
     */
    HI_VOID* opaque;
};

static inline HI_S32 HI_SVR_VSINK_Cancel(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 cnt)
{
    if (vsink && vsink->cancel)
    {
        return vsink->cancel(vsink, pics, cnt);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_Dequeue(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 count)
{
    if (vsink && vsink->dequeue)
    {
        return vsink->dequeue(vsink, pics, count);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_Prepare(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* picIn)
{
    if (vsink && vsink->prepare)
    {
        return vsink->prepare(vsink, picIn);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_Queue(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* picIn)
{
    if (vsink && vsink->queue)
    {
        return vsink->queue(vsink, picIn);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_SetDimensions(HI_SVR_VSINK_S* vsink,
        HI_U32 width, HI_U32 height)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_SET_DIMENSIONS, width, height);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_SetFormat(HI_SVR_VSINK_S* vsink, HI_U32 format)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_SET_FORMAT, format);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_SetPictCnt(HI_SVR_VSINK_S* vsink,
        HI_U32 count)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_SET_PICNB, count);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_WritePicture(HI_SVR_VSINK_S* vsink,
        HI_SVR_PICTURE_S* pic, HI_U8* data, HI_U32 size)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_WRITE_PIC, pic, data, size);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_SetCrop(HI_SVR_VSINK_S* vsink,
        HI_S32 left, HI_S32 top, HI_S32 right, HI_S32 bottom)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_SET_CROP, left, top, right, bottom);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_GetMinBufferNb(HI_SVR_VSINK_S* vsink,
        HI_U32* pu32MinBufferNb)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_GET_MINBUFNB, pu32MinBufferNb);
    }
    return HI_FAILURE;
}

static inline HI_S32 HI_SVR_VSINK_CheckFence(HI_SVR_VSINK_S* vsink,
        HI_SVR_PICTURE_S* pic)
{
    if (vsink && vsink->control)
    {
        return vsink->control(vsink, HI_SVR_VSINK_CHECK_FENCE, pic);
    }
    return HI_FAILURE;
}
#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */
#endif /*__HI_SVR_VSINK_H__*/
