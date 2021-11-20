/******************************************************************************

  Copyright (C), 2014-2024, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : vpcodec_1_0.c
  Version       : Initial Draft
  Author        : Hisilicon chengdu software group
  Created       : 2014/05/15
  Description   :
  History       :
  1.Date        : 2015/11/02
    Author      : l00214567
    Modification: Created file
 *******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <pthread.h>
#include <linux/videodev.h>
#include <errno.h>
#include <netinet/in.h>

#include "utils/Log.h"
#include "hi_osal.h"
#include "hi_unf_avplay.h"
#include "hi_unf_venc.h"
#include "hi_unf_vo.h"
#include "vp_codec_1_0.h"

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#ifdef __cplusplus
extern "C" {
#endif

#define vl_codec_handle_t long


#define VP_CODEC_VERSION    "1.0"
#define TIME_OUT_MS         200


HI_U32 in_length = 0;
HI_U32 InputAddrPhy = 0;
HI_U8 *pInAddrVir = NULL;
HI_HANDLE g_hVirWin = HI_INVALID_HANDLE;
HI_HANDLE g_hAvplay = HI_INVALID_HANDLE;
HI_HANDLE g_hVenc = HI_INVALID_HANDLE;

HI_UNF_VENC_CHN_ATTR_S g_stVencAttr;



/**
 * 获取版本信息
 *
 *@return : 版本信息
 */
const char * vl_get_version()
{
    return VP_CODEC_VERSION;
}

void fh_load_gop_bitrate(int *fh_gop, int *fh_bitrate)
{
	
	FILE *fp = fopen("/mnt/sdcard/fh_vpcodec_attr", "rb");
	char read_line[256];
	memset(read_line, 0, 256);
	if (NULL != fp) 
	{
		fgets(read_line,256,fp);
		printf("fh_load_gop_bitrate: %s\n", read_line);

		*fh_gop = strtol(read_line, NULL, 0);
		printf("fh_load_gop_bitrate: fh_gop: %d\n", *fh_gop);
		
		memset(read_line, 0, 256);
		fgets(read_line,256,fp);
		printf("fh_load_gop_bitrate: %s\n", read_line);	
		*fh_bitrate = strtol(read_line, NULL, 0);
		printf("fh_load_gop_bitrate: fh_bitrate: %d\n", *fh_bitrate);

		fclose(fp);
		fp = NULL;

		return;
	}

	return;
}


HI_S32 Transfer_Format(vl_codec_id_t  *pU, HI_UNF_VCODEC_TYPE_E *pM, HI_BOOL bu2m)
{
    if (bu2m)
    {
        switch (*pU)
        {
        case CODEC_ID_H264:
            *pM = HI_UNF_VCODEC_TYPE_H264;
            break;

        case CODEC_ID_H263:
            *pM = HI_UNF_VCODEC_TYPE_H263;
            break;

        case CODEC_ID_VP8:
        case CODEC_ID_H261:
        case CODEC_ID_H265:
        default:
            return HI_FAILURE;
        }
    }
    else
    {
        switch (*pM)
        {
        case HI_UNF_VCODEC_TYPE_H264:
            *pU = CODEC_ID_H264;
            break;

        case HI_UNF_VCODEC_TYPE_H263:
            *pU = CODEC_ID_H263;
            break;

        case HI_UNF_VCODEC_TYPE_MPEG4:
        case HI_UNF_VCODEC_TYPE_JPEG:
        default:
            return HI_FAILURE;

        }
    }

    return HI_SUCCESS;
}



/**
 * 初始化视频编码器
 *输出输入帧频等于输出帧频
 *@param : codec_id 编码类型
 *@param : width 视频宽度
 *@param : height 视频高度
 *@param : frame_rate 帧率
 *@param : bit_rate 码率
 *@param : gop GOP值:I帧最大间隔
 *@param : img_format 图像格式
 *@return : 成功返回编码器handle，失败返回 <= 0
 */
vl_codec_handle_t vl_video_encoder_init(vl_codec_id_t codec_id, int width, int height, \
                                     int frame_rate, int bit_rate, int gop, vl_img_format_t img_format)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_VENC_CHN_ATTR_S *pstAttr = &g_stVencAttr;
    HI_HANDLE hVenc;

    ALOGE("vl_codec_id_t:codec_id=%d, wh=%dx%d, frame_rate:%3d,  bit_rate:%3d, gop;%3d, img_format:%3d \n", codec_id, width, height, frame_rate,  bit_rate, gop, img_format);

    if (HI_INVALID_HANDLE != g_hVenc)
    {
        ALOGE("vl_video_encoder_init[Repeat]  g_hVenc:%x,\n", g_hVenc);
        return g_hVenc;
    }

    HI_SYS_Init();

    HI_UNF_VENC_Init();

    memset(pstAttr, 0, sizeof(HI_UNF_VENC_CHN_ATTR_S));
    HI_UNF_VENC_GetDefaultAttr(pstAttr);

    if (HI_SUCCESS !=  Transfer_Format(&codec_id, &pstAttr->enVencType, HI_TRUE))
    {

        ALOGE("vl_codec_id_t:%d cenc not supprot\n", codec_id);
        goto ERR0;
    }

    pstAttr->u32Width  = width / 4 * 4;
    pstAttr->u32Height = height / 4 * 4;
    pstAttr->u32InputFrmRate  = frame_rate;
    pstAttr->u32TargetFrmRate = frame_rate;
    pstAttr->u32Gop = gop;
    pstAttr->bQuickEncode = HI_TRUE;
    pstAttr->bSlcSplitEn  = HI_FALSE;
    if (pstAttr->u32Width > 1280)
    {
        pstAttr->enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
        pstAttr->u32StrmBufSize   = 1920 * 1080 * 2;
        pstAttr->u32TargetBitRate = 5 * 1024 * 1024;
    }
    else if (pstAttr->u32Width > 720)
    {
        pstAttr->enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_720P;
        pstAttr->u32StrmBufSize   = 1280 * 720 * 2;
        pstAttr->u32TargetBitRate = 3 * 1024 * 1024;
    }
    else if (pstAttr->u32Width > 352)
    {
        pstAttr->enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_D1;
        pstAttr->u32StrmBufSize   = 720 * 576 * 2;
        pstAttr->u32TargetBitRate = 3 / 2 * 1024 * 1024;
    }
    else
    {
        pstAttr->enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_CIF;
        pstAttr->u32StrmBufSize   = 352 * 288 * 2;
        pstAttr->u32TargetBitRate = 800 * 1024;
    }

    pstAttr->u32TargetBitRate  = (0 >= bit_rate)? pstAttr->u32TargetBitRate : bit_rate;
	// 20141226_debug
	fh_load_gop_bitrate(&(pstAttr->u32Gop), &(pstAttr->u32TargetBitRate));
	ALOGE("*****fh_load_gop_bitrate, GOP :%d Bitrate: %d\n", pstAttr->u32Gop, pstAttr->u32TargetBitRate);

    s32Ret = HI_UNF_VENC_Create(&hVenc, pstAttr);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Create failed, ret = 0x%08x\n", s32Ret);
        goto ERR0;
    }
    s32Ret = HI_UNF_VENC_Start(hVenc);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Start failed, ret = 0x%08x\n", s32Ret);
        goto ERR1;
    }

    ALOGE("vl_video_encoder_init , hend = 0x%08x\n",hVenc );
    
    g_hVenc = hVenc;
    return hVenc;

ERR1:
    s32Ret = HI_UNF_VENC_Destroy(hVenc);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Destroy failed, ret = 0x%08x\n", s32Ret);
    }

ERR0:
    return HI_FAILURE;
}
HI_U8 *pu8Ydata=HI_NULL;

static HI_S32 Yuv_SEMIPLANAR_to_PLANAR( HI_U8 *in, HI_U8 ** out, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame)
{
    HI_U8 *ptr=in;
    HI_S32 nRet;
	HI_U8 *pu8Ydata=HI_NULL;
    HI_U32 *pu8Vdata;
    HI_U32 *pu8Udata;
    HI_U32 i, j;
    HI_U32 u32Height = pstFrame->u32Height / 2;


	pu8Ydata = *out;
    
    pu8Vdata =(pu8Ydata + pstFrame->u32Width * pstFrame->u32Height);
 
    pu8Udata =(pu8Ydata + pstFrame->u32Width * pstFrame->u32Height * 5 / 4);

     /* write Y */

    memcpy(pu8Ydata, ptr, pstFrame->u32Height*pstFrame->u32Width);
    ptr += pstFrame->u32Height*pstFrame->u32Width;

    /* U V transfer and save */
    
    u32Height = pstFrame->u32Width*u32Height/8;
    
    for (j = 0; j < u32Height; j++)
    {
        pu8Udata[j] = ptr[0] | (ptr[2]<<8) | (ptr[4]<<16) | (ptr[6]<<24);
        pu8Vdata[j] = ptr[1] | (ptr[3]<<8) | (ptr[5]<<16) | (ptr[7]<<24);
        ptr += 8;
    }
    

    * out = pu8Ydata;

    return HI_SUCCESS;

ERR0:
    return HI_FAILURE;
}

HI_MMZ_BUF_S g_stMmzFrm={0};


static HI_S32 Transfer_buffer(HI_U8 *in, int length, HI_U32 *pu32PutAddrPhy)
{
    HI_U32 cached = 1;
    HI_U32 u32Size=0;
    HI_S32 s32Ret;
    HI_U32 u32InputAddrPhy = 0;

    s32Ret = HI_MMZ_GetPhyaddr(in, &u32InputAddrPhy, &u32Size);
    if (HI_SUCCESS == s32Ret)
    {
		*pu32PutAddrPhy = u32InputAddrPhy;
		
		return HI_SUCCESS;
		
	}
	
    if(g_stMmzFrm.bufsize < length)
    {
        if(0 != g_stMmzFrm.bufsize)
        {
            s32Ret = HI_MMZ_Free(&g_stMmzFrm);
            if (s32Ret != HI_SUCCESS)
            {
                ALOGE("HI_MMZ_Malloc failed\n");
                return s32Ret;
            }
		
    	}

		snprintf(g_stMmzFrm.bufname, sizeof(g_stMmzFrm.bufname), "vp_codec");
        g_stMmzFrm.bufsize = length;
        s32Ret = HI_MMZ_Malloc(&g_stMmzFrm);
        if (s32Ret != HI_SUCCESS)
        {
            ALOGE("HI_MMZ_Malloc failed\n");
            return s32Ret;
        }
	}
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
       HI_UNF_VIDEO_FRAME_INFO_S stFrameinfo;

       stFrameinfo.u32Width = 1280;
       stFrameinfo.u32Height = 720;
       stFrameinfo.stVideoFrameAddr[0].u32YStride = 1280;
       stFrameinfo.stVideoFrameAddr[0].u32CStride = 1280;
       pu8Ydata = g_stMmzFrm.user_viraddr;

       s32Ret=  Yuv_SEMIPLANAR_to_PLANAR(in, &in, &stFrameinfo);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("Yuv_SEMIPLANAR_to_PLANAR failed, ret = 0x%08x\n", s32Ret);
        }
#else /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
	
	memcpy(g_stMmzFrm.user_viraddr, in, length);
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
	
	if (HI_SUCCESS != HI_MMZ_Flush(0))
	{
		ALOGE("Error: MMZ Flush cached failed!\n");
		return HI_FAILURE;
	}
	
	*pu32PutAddrPhy = g_stMmzFrm.phyaddr;
	
	return HI_SUCCESS;

}


#define BUFFER_SIZE 0x80000 //512k

HI_U8 u8StreamBuffer[BUFFER_SIZE];

/**
 * 视频编码
 *
 *@param : handle 编码器handle
 *@param : type 帧类型
 *@param : in 待编码的数据
 *@param : in_size 待编码的数据长度
 *@param : out 编码后的数据,H.264需要包含(0x00，0x00，0x00，0x01)起始码，内部分配空间（即该方法在实现时分配空间）， 且必须为 I420格式
 *@return ：成功返回编码后的数据长度，失败返回 <= 0
 */
int vl_video_encoder_encode(vl_codec_handle_t handle, vl_frame_type_t type, char * in, int in_size, char ** out)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_VENC_CHN_ATTR_S *pstAttr = &g_stVencAttr;
    static HI_UNF_VIDEO_FRAME_INFO_S stFrame = {0};
    static HI_UNF_VENC_STREAM_S stStream = {0};
    HI_S32 i = 0;
    HI_S32 s32Len = 0;

    if ((HI_INVALID_HANDLE == handle)||(HI_NULL == in)||(HI_NULL == out)||(HI_NULL == *out)||(0 >= in_size))
    {
        ALOGE("Parameters Error! handle:%x, in:%p, out:%p, in_size:%d\n", handle, in, out, in_size);
        goto ERR0;
    }
    s32Ret = Transfer_buffer((HI_U8*)in, in_size, &stFrame.stVideoFrameAddr[0].u32YAddr);
    if (HI_SUCCESS !=  s32Ret)
    {
        ALOGE("MMZ New Error! :%d\n", s32Ret);
        goto ERR0;
    }



    /* organize cast out frame info */

    stFrame.u32Width  =  pstAttr->u32Width;
    stFrame.u32Height =  pstAttr->u32Height;
    stFrame.stVideoFrameAddr[0].u32CAddr   = stFrame.stVideoFrameAddr[0].u32YAddr + (stFrame.u32Width * stFrame.u32Height);
    stFrame.stVideoFrameAddr[0].u32YStride =  pstAttr->u32Width ;
    
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
	stFrame.stVideoFrameAddr[0].u32CrAddr = stFrame.stVideoFrameAddr[0].u32YAddr + ((stFrame.u32Width * stFrame.u32Height)*5/4);
	stFrame.stVideoFrameAddr[0].u32CStride  = stFrame.u32Width/2;
	stFrame.stVideoFrameAddr[0].u32CrStride = stFrame.u32Width/2;
    stFrame.enVideoFormat = HI_UNF_FORMAT_YUV_PLANAR_420;
#else /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    stFrame.stVideoFrameAddr[0].u32CStride =  pstAttr->u32Width ;
    stFrame.enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    stFrame.u32AspectWidth  = stFrame.u32Width;
    stFrame.u32AspectHeight = stFrame.u32Width;
    stFrame.stFrameRate.u32fpsDecimal = 0;
    stFrame.stFrameRate.u32fpsInteger = pstAttr->u32TargetFrmRate;
    stFrame.bProgressive = HI_TRUE;
    stFrame.enFieldMode = HI_UNF_VIDEO_FIELD_ALL;
    stFrame.bTopFieldFirst = HI_FALSE;
    stFrame.enFramePackingType = HI_UNF_FRAME_PACKING_TYPE_NONE;
    stFrame.u32Circumrotate   = 0;
    stFrame.bVerticalMirror   = HI_FALSE;
    stFrame.bHorizontalMirror = HI_FALSE;
    stFrame.u32DisplayWidth   = stFrame.u32Width;
    stFrame.u32DisplayHeight  = stFrame.u32Height;
    stFrame.u32DisplayCenterX = stFrame.u32Width / 2;
    stFrame.u32DisplayCenterY = stFrame.u32Height / 2;
    stFrame.u32ErrorLevel = 0;
    stFrame.u32FrameIndex++;

    s32Ret = HI_SYS_GetTimeStampMs(&stFrame.u32Pts);
    if (HI_SUCCESS != s32Ret)
    {
        stFrame.u32Pts = HI_INVALID_PTS;
    }
    stFrame.u32SrcPts = stFrame.u32Pts;

#if 1 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if (HI_NULL != stStream.pu8Addr)
    {
        s32Ret = HI_UNF_VENC_ReleaseStream(handle, &stStream);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("HI_UNF_VENC_ReleaseStream failed, ret = 0x%08x\n", s32Ret);
        }
        stStream.pu8Addr = HI_NULL;
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    if(FRAME_TYPE_I == type)
    {
        s32Ret = HI_UNF_VENC_RequestIFrame(handle);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("HI_UNF_VENC_RequestIFrame failed, ret = 0x%08x\n", s32Ret);
            goto ERR0;
        }
    }

    i=0;
    while (HI_SUCCESS != (s32Ret = HI_UNF_VENC_QueueFrame(handle, &stFrame)))
    {
        usleep(1000);
        if (TIME_OUT_MS <= i++)
        {
            ALOGE("HI_UNF_VENC_QueueFrame failed, ret = 0x%08x\n", s32Ret);
            goto ERR0;
        }
    }
    
    s32Len = 0;
    i=0;
    while (1)
    {
        if(HI_SUCCESS !=(s32Ret = HI_UNF_VENC_AcquireStream(handle, &stStream, 0)))
        {
            usleep(1000);
            if (TIME_OUT_MS <= i++)
            {
                ALOGE("HI_UNF_VENC_AcquireStream failed, ret = 0x%08x\n", s32Ret);
                s32Len = -1;
                goto EXIT0;
            }
        }
        else
        {
            if((HI_TRUE == stStream.bFrameEnd)&&(0 == s32Len))
            {
                s32Len = stStream.u32SlcLen;
                memcpy(*out, stStream.pu8Addr, stStream.u32SlcLen);
               // * out = (char *)stStream.pu8Addr;
                break;
            }

            if (BUFFER_SIZE < (s32Len + stStream.u32SlcLen))
            {
                ALOGE("buffer size error, max: %d>%d\n", BUFFER_SIZE ,(s32Len + stStream.u32SlcLen));
                s32Len = -1;
                goto EXIT0;
            }
            memcpy((*out + s32Len), stStream.pu8Addr, stStream.u32SlcLen);
            s32Len += stStream.u32SlcLen;

            s32Ret = HI_UNF_VENC_ReleaseStream(handle, &stStream);
            if (HI_SUCCESS != s32Ret)
            {
                ALOGE("HI_UNF_VENC_ReleaseStream failed, ret = 0x%08x\n", s32Ret);
            }

            stStream.pu8Addr = HI_NULL;
            if(HI_TRUE == stStream.bFrameEnd)
            {
               // * out = (char *)u8StreamBuffer;
                break;
            }

        }

    }
    //printf("@@@@[%s]line:%d,i=%d,end:%d\n",__FUNCTION__,__LINE__,i,stStream.bFrameEnd);      /*libo@201312*/
    //* out = (char *)stStream.pu8Addr;
   // ALOGE("@@@@[%s]line:%d,u32Len:%d\n",__FUNCTION__,__LINE__,u32Len);      /*libo@201312*/    
EXIT0:
    s32Ret = HI_UNF_VENC_DequeueFrame(handle, &stFrame);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_DequeueFrame failed, ret = 0x%08x\n", s32Ret);
    }

    return  s32Len;

ERR0:
    return HI_FAILURE;

}


/**
 * 销毁编码器
 *
 *@param ：handle 视频编码器handle
 *@return ：成功返回1，失败返回0
 */
int vl_video_encoder_destory(vl_codec_handle_t handle)
{
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("vl_video_encoder_destory failed, handle = 0x%08x\n", handle);
        return s32Ret;
    }

    s32Ret = HI_UNF_VENC_Stop(handle);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Stop failed, ret = 0x%08x\n", s32Ret);
    }

    s32Ret = HI_UNF_VENC_Destroy(handle);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Destroy failed, ret = 0x%08x\n", s32Ret);
    }
    g_hVenc = HI_INVALID_HANDLE;

    s32Ret = HI_UNF_VENC_DeInit();
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VENC_Destroy failed, ret = 0x%08x\n", s32Ret);
    }

    if(0 != g_stMmzFrm.bufsize)
    {
        s32Ret = HI_MMZ_Free(&g_stMmzFrm);
        if (s32Ret != HI_SUCCESS)
        {
            ALOGE("HI_MMZ_Malloc failed\n");
            return s32Ret;
        }
    
	    memset(&g_stMmzFrm, 0, sizeof(HI_MMZ_BUF_S));
    }

    return s32Ret;
}
/**
 * 初始化解码器
 *
 *@param : codec_id 解码器类型
 *@re
 turn : 成功返回解码器handle，失败返回 <= 0
 */

vl_codec_handle_t vl_video_decoder_init(vl_codec_id_t codec_id)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_AVPLAY_ATTR_S stAvAttr;
    HI_UNF_AVPLAY_OPEN_OPT_S stAvOpt;
    HI_UNF_VCODEC_ATTR_S stAvVdecAttr;
    HI_HANDLE hAvplay;
    HI_UNF_WINDOW_ATTR_S stVirWinAttr;
    HI_UNF_AVPLAY_LOW_DELAY_ATTR_S stLowDelay;
    
    ALOGE("vl_video_decoder_init  codec_id = %d\n", codec_id );

    if ((HI_INVALID_HANDLE != g_hAvplay)||(HI_INVALID_HANDLE != g_hVirWin))
    {
        ALOGE("vl_video_decoder_init:Repeat  g_hVirWin:%x, g_hAvplay:%x \n", g_hVirWin, g_hAvplay);
        return g_hAvplay;
    }

    
    HI_SYS_Init();
    
    s32Ret = HI_UNF_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (s32Ret != HI_SUCCESS)
    {
        ALOGE("call HI_UNF_VO_Init failed.ret = 0x%08x\n", s32Ret);
        
        return HI_FAILURE;
    }

    s32Ret = HI_UNF_AVPLAY_Init();
    if (s32Ret != HI_SUCCESS)
    {
        ALOGE("call HI_UNF_AVPLAY_Init failedret = 0x%08x.\n", s32Ret);
        
        return HI_FAILURE;
    }


    stAvVdecAttr.enType = HI_UNF_VCODEC_TYPE_H264;
    if (HI_SUCCESS !=  Transfer_Format(&codec_id, &stAvVdecAttr.enType , HI_TRUE))
    {
        ALOGE("vl_codec_id_t:%d cenc not supprot\n", codec_id);
        goto ERR0;
    }

    memset(&stAvAttr, 0, sizeof(HI_UNF_AVPLAY_ATTR_S));
    s32Ret = HI_UNF_AVPLAY_GetDefaultConfig(&stAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_ES);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_GetDefaultConfig failed, ret = 0x%08x\n", s32Ret);
        goto ERR0;
    }
    stAvAttr.stStreamAttr.u32VidBufSize = 0x300000;

    s32Ret = HI_UNF_AVPLAY_Create(&stAvAttr, &hAvplay);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_Create failed, ret = 0x%08x\n", s32Ret);
        goto ERR0;
    }

    stAvOpt.enDecType  = HI_UNF_VCODEC_DEC_TYPE_NORMAL;
    stAvOpt.enCapLevel = HI_UNF_VCODEC_CAP_LEVEL_FULLHD;
    
    if(HI_UNF_VCODEC_TYPE_H264 == stAvVdecAttr.enType)
    {
        stAvOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_H264;
    }
    else
    {
        stAvOpt.enProtocolLevel = HI_UNF_VCODEC_PRTCL_LEVEL_MPEG;
    }
    s32Ret = HI_UNF_AVPLAY_ChnOpen(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &stAvOpt);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_ChnOpen failed, ret = 0x%08x\n", s32Ret);
        goto ERR1;
    }

    s32Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &stAvVdecAttr);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_GetAttr failed, ret = 0x%08x\n", s32Ret);
        goto ERR2;
    }

    //stAvVdecAttr.enType = pstAttr->enDecType;
    stAvVdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    stAvVdecAttr.u32ErrCover  = 10;
    stAvVdecAttr.u32Priority  = 3;
    stAvVdecAttr.bOrderOutput = HI_TRUE;
    
    s32Ret = HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_VDEC, &stAvVdecAttr);
    if (s32Ret != HI_SUCCESS)
    {
        ALOGE("HI_UNF_AVPLAY_SetAttr failed, ret = 0x%08x\n", s32Ret);
        goto ERR2;
    }

    memset(&stVirWinAttr, 0, sizeof(HI_UNF_WINDOW_ATTR_S));

    stVirWinAttr.enDisp   = HI_UNF_DISPLAY1;
    stVirWinAttr.bVirtual = HI_TRUE;
    stVirWinAttr.enVideoFormat = HI_UNF_FORMAT_YUV_SEMIPLANAR_420;
    stVirWinAttr.stWinAspectAttr.enAspectCvrs = HI_UNF_VO_ASPECT_CVRS_IGNORE;
    stVirWinAttr.stWinAspectAttr.bUserDefAspectRatio = HI_FALSE;
    stVirWinAttr.stWinAspectAttr.u32UserAspectWidth  = 0;
    stVirWinAttr.stWinAspectAttr.u32UserAspectHeight = 0;
    stVirWinAttr.bUseCropRect = HI_FALSE;
    memset(&stVirWinAttr.stInputRect, 0x0, sizeof(HI_RECT_S));
    memset(&stVirWinAttr.stOutputRect, 0x0, sizeof(HI_RECT_S));

    s32Ret = HI_UNF_VO_CreateWindow(&stVirWinAttr, &g_hVirWin);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_CreateWindow failed, ret = 0x%08x\n", s32Ret);
        goto ERR3;
    }

    s32Ret = HI_UNF_VO_AttachWindow(g_hVirWin, hAvplay);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_AttachWindow failed, ret = 0x%08x\n", s32Ret);
        goto ERR4;
    }

    
    s32Ret = HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowDelay);
    stLowDelay.bEnable = HI_TRUE;
    s32Ret |= HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_LOW_DELAY, &stLowDelay);

    if (s32Ret != HI_SUCCESS)
    {
        ALOGE("HI_UNF_AVPLAY_SetAttr failed, ret = 0x%08x\n", s32Ret);
        goto ERR4;
    }
   
    s32Ret = HI_UNF_VO_SetWindowEnable(g_hVirWin, HI_TRUE);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_SetWindowEnable failed, ret = 0x%08x\n", s32Ret);
        goto ERR5;
    }

    s32Ret = HI_UNF_AVPLAY_Start(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, NULL);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_Start failed, ret = 0x%08x\n", s32Ret);
        goto ERR5;
    }
    
    ALOGE("vl_video_decoder_init, hand = 0x%08x\n", hAvplay);
    g_hAvplay = hAvplay;
    return hAvplay;
    
ERR5:
    HI_UNF_VO_SetWindowEnable(g_hVirWin, HI_FALSE);
    
ERR4:
    HI_UNF_VO_DetachWindow(g_hVirWin, hAvplay);
    
ERR3:
    HI_UNF_VO_DestroyWindow(g_hVirWin);
    g_hVirWin = HI_INVALID_HANDLE;

ERR2:
    HI_UNF_AVPLAY_ChnClose(hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    
ERR1:
    HI_UNF_AVPLAY_Destroy(hAvplay);
    hAvplay = HI_INVALID_HANDLE;
ERR0:
    HI_UNF_AVPLAY_DeInit();
    HI_UNF_VO_DeInit();
    
    return HI_FAILURE;
}


/**
 * 视频解码
 *
 *@param : handle 视频解码器handle
 *@param : in 待解码的数据
 *@param : in_size 待解码的数据长度
 *@param : out 解码后的数据，内部分配空间
 *@return ：成功返回解码后的数据长度，失败返回 <= 0
 */
int vl_video_decoder_decode(vl_codec_handle_t handle, char * in, int in_size, char ** out)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_U32 u32PtsMs;
    HI_S32 u32Size = -1;
    HI_U32 i;
    static HI_U8 *pBufVirAddr = HI_NULL;
    HI_UNF_STREAM_BUF_S stAvplayBuf ;
    static HI_UNF_VIDEO_FRAME_INFO_S stFrameinfo;
    int size = in_size;
    static const char g_zero_delay[] = {0x00, 0x00, 0x01, 0x1e,
                                       0x48, 0x53, 0x50, 0x49,
                                       0x43, 0x45, 0x4e, 0x44,
                                       0x00, 0x00, 0x01, 0x00};
    in_size +=  sizeof(g_zero_delay);
    
    if ((HI_INVALID_HANDLE == g_hVirWin)||(HI_INVALID_HANDLE == handle)||(HI_NULL == out)||(HI_NULL == *out))
    {
        ALOGE("Parameters Error!  g_hVirWin:%x, handle:%x \n", g_hVirWin, handle);
        return s32Ret;
    }
    
    if(HI_NULL != pBufVirAddr)
    {
        s32Ret = HI_MUNMAP(pBufVirAddr);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("HI_MUNMAP failed, ret = 0x%08x\n", s32Ret);
        }
        pBufVirAddr = HI_NULL; 
        s32Ret = HI_UNF_VO_ReleaseFrame(g_hVirWin, &stFrameinfo);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("HI_UNF_VO_ReleaseFrame failed, ret = 0x%08x\n", s32Ret);
        }
    }

    
    s32Ret = HI_UNF_AVPLAY_GetBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_VID, in_size, &stAvplayBuf, 0/*TIME_OUT_MS*/);
    if (HI_SUCCESS == s32Ret)
    {
        if (HI_SUCCESS != s32Ret)
        {
            u32PtsMs = HI_INVALID_PTS;
        }

        memcpy((HI_VOID*)stAvplayBuf.pu8Data, (HI_VOID*)in, size);
        memcpy((HI_VOID*)&stAvplayBuf.pu8Data[size], (HI_VOID*)g_zero_delay,  sizeof(g_zero_delay));
        s32Ret = HI_UNF_AVPLAY_PutBuf(handle, HI_UNF_AVPLAY_BUF_ID_ES_VID, in_size, u32PtsMs);
        if (HI_SUCCESS != s32Ret)
        {
            ALOGE("HI_UNF_AVPLAY_PutBuf failed, ret = 0x%08x\n", s32Ret);
            goto ERR0;
        }
    }
    else
    {
        ALOGE("HI_UNF_AVPLAY_GetBuf failed, ret = 0x%08x\n", s32Ret);
    }
    i=0;
    while (HI_SUCCESS != (s32Ret = HI_UNF_VO_AcquireFrame(g_hVirWin, &stFrameinfo, 0/*TIME_OUT_MS*/)))
    {
        usleep(1000);
        if (TIME_OUT_MS <= i++)
        {
            ALOGE("HI_UNF_VO_AcquireFrame failed, ret = 0x%08x\n", s32Ret);
            goto ERR0;
        }
    }
    //ALOGE("@addr:%x-%x=%d==%d\n",stFrameinfo.stVideoFrameAddr[0].u32YAddr,stFrameinfo.stVideoFrameAddr[0].u32CAddr,stFrameinfo.stVideoFrameAddr[0].u32YAddr-stFrameinfo.stVideoFrameAddr[0].u32CAddr,stFrameinfo.u32Width * stFrameinfo.u32Height);        /*libo@201312*/    
    
    //ALOGE("@@@@[%s]line:%d,%dx%d,%d\n",__FUNCTION__,__LINE__,stFrameinfo.u32Width , stFrameinfo.u32Height, stFrameinfo.enVideoFormat);      /*libo@201312*/    

    u32Size = stFrameinfo.u32Width * stFrameinfo.u32Height * 3 / 2;

    pBufVirAddr = (HI_U8*)HI_MMAP(stFrameinfo.stVideoFrameAddr[0].u32YAddr, u32Size);
    if (HI_NULL == pBufVirAddr)
    {
        ALOGE("HI_MMAP failed, PHY_addr: 0x%08x\n", stFrameinfo.stVideoFrameAddr[0].u32YAddr);
        goto ERR1;
    }
    
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
   s32Ret=  Yuv_SEMIPLANAR_to_PLANAR(pBufVirAddr, out, &stFrameinfo);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("Yuv_SEMIPLANAR_to_PLANAR failed, ret = 0x%08x\n", s32Ret);
        goto ERR1;
    }
#else
    memcpy((HI_VOID*)*out, (HI_VOID*)pBufVirAddr, u32Size);

   // *out = pBufVirAddr;

#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    
    return u32Size;
    
ERR1:  
    s32Ret = HI_UNF_VO_ReleaseFrame(g_hVirWin, &stFrameinfo);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_ReleaseFrame failed, ret = 0x%08x\n", s32Ret);
        goto ERR0;
    }
ERR0:
    return HI_FAILURE;
}





/**
 * 销毁解码器
 *@param : handle 视频解码器handle
 *@return ：成功返回1，失败返回0
 */
int vl_video_decoder_destory(vl_codec_handle_t handle)
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_AVPLAY_STOP_OPT_S Stop;

    
    ALOGE("Parameters  g_hVirWin:%x, handle:%x \n", g_hVirWin, handle);
    if ((HI_INVALID_HANDLE == g_hVirWin)||(HI_INVALID_HANDLE == handle))
    {
        ALOGE("Parameters Error!  g_hVirWin:%x, handle:%x \n", g_hVirWin, handle);
        return s32Ret;
    }
    
    Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    Stop.u32TimeoutMs = 0;

    s32Ret = HI_UNF_AVPLAY_Stop(handle, HI_UNF_AVPLAY_MEDIA_CHAN_VID, &Stop);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_Stop failed, ret = 0x%08x\n", s32Ret);
    }

    s32Ret = HI_UNF_VO_SetWindowEnable(g_hVirWin, HI_FALSE);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_SetWindowEnable failed, ret = 0x%08x\n", s32Ret);
    }
    
    s32Ret = HI_UNF_VO_DetachWindow(g_hVirWin, handle);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_VO_DetachWindow failed, ret = 0x%08x\n", s32Ret);
    }
    
    HI_UNF_VO_DestroyWindow(g_hVirWin);
    g_hVirWin = HI_INVALID_HANDLE;
    
    s32Ret = HI_UNF_AVPLAY_ChnClose(handle, HI_UNF_AVPLAY_MEDIA_CHAN_VID);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_ChnClose failed, ret = 0x%08x\n", s32Ret);
    }
    
    s32Ret = HI_UNF_AVPLAY_Destroy(handle);
    if (HI_SUCCESS != s32Ret)
    {
        ALOGE("HI_UNF_AVPLAY_Destroy failed, ret = 0x%08x\n", s32Ret);
    }
    
    g_hAvplay = HI_INVALID_HANDLE;
     
    HI_UNF_AVPLAY_DeInit();    
    HI_UNF_VO_DeInit();

    return s32Ret;
}



#ifdef __cplusplus
}
#endif
