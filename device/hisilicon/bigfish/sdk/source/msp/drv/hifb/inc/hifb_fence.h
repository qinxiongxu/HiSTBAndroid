/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_fence.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef __HIFB_FENCE_H__
#define __HIFB_FENCE_H__


/*********************************add include here******************************/
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 10, 0))
#include <linux/sw_sync.h>
#else
#include <sw_sync.h>
#endif

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/
typedef struct
{
	atomic_t s32RefreshCnt;
    HI_U32   u32FenceValue;
    HI_U32   u32Timeline;
    HI_U32  FrameEndFlag;
    wait_queue_head_t    FrameEndEvent;
    struct sw_sync_timeline *pstTimeline;
    HI_BOOL bFrameHit;
    HIFB_HWC_LAYERINFO_S stLayerInfo;
}HIFB_SYNC_INFO_S;

/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/


/***********************************************************************
* func		    : hifb_create_fence
* description	: ����fence�����ﴴ������release fence�����ص���
                  releaseFD��acquire fence��GPU���������ص���acquireFD��
                  HWComposerͨ��Binderͨ���͸�hifb����ļ�������
* param[in] 	: *timeline ǰ�洴����hifbʱ����
* param[in] 	: fence_nameҪ������fence���֣�"hifb_fence"
* param[in] 	: value ����fence�ĳ�ʼֵ��ǰ����timeline�ĳ�ʼֵ��
                  ��һ�δ�����ʱ��++s_SyncInfo.u32FenceValueҲ����2��
                  ���Ե�һ�δ���fence�ĳ�ʼֵΪ2
* retval		: NA
***********************************************************************/
int hifb_create_fence(struct sw_sync_timeline *timeline,const char *fence_name,unsigned value);

/***********************************************************************
* func		    : hifb_fence_wait
* description	: �ȴ�ͬ��
* param[in] 	: GPU������fence
* param[in] 	: �ȴ���ʱʱ��
***********************************************************************/
int hifb_fence_wait(struct sync_fence *fence, long timeout);

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HIFB_FENCE_H__ */
