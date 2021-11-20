/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_fence.c
Version             : Initial Draft
Author              : 
Created             : 2014/08/06
Description         : 
Function List       : 
History             :
Date                       Author                   Modification
2014/08/06                 y00181162                Created file        
******************************************************************************/

/*********************************add include here******************************/
#include <linux/ctype.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/errno.h>
#include <linux/string.h>
#include <linux/delay.h>
#include <linux/slab.h>
#include <linux/mm.h>
#include <linux/time.h>
#include <linux/fb.h>
#include <asm/uaccess.h>
#include <linux/file.h>
#include <asm/types.h>
#include <asm/stat.h>
#include <asm/fcntl.h>

#include "hifb_comm.h"

#ifdef CFG_HIFB_FENCE_SUPPORT  
#include "hifb_fence.h"
#endif

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/


#ifdef CFG_HIFB_FENCE_SUPPORT

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
int hifb_create_fence(struct sw_sync_timeline *timeline, const char *fence_name, unsigned value)
{
	int fd;
	struct sync_fence *fence;
	struct sync_pt *pt;

	if (timeline == NULL) 
	{
		return -EINVAL;
	}
	/**
	 **��ȡ���õ��ļ��ڵ�
	 **/
	fd = get_unused_fd();
	if (fd < 0) {
		HIFB_ERROR("get_unused_fd failed!\n");
		return fd;
	}
	/**
	 **����ͬ���ڵ�
	 **/
	pt = sw_sync_pt_create(timeline, value);
	if (pt == NULL) {
		return -ENOMEM;
	}
	/**
	 **һ��ͬ���ڵ�ļ��ϣ���hal���fence��kernel��ϵ��
	 **/
	fence = sync_fence_create(fence_name, pt);
	if (fence == NULL) {
		sync_pt_free(pt);
		return -ENOMEM;
	}
	/**
	 **���豸�ڵ㰲װ��fence�У������Ϳ��Բ�������豸�ڵ���
	 **/
	sync_fence_install(fence, fd);

	return fd;
	
}


/***********************************************************************
* func		: hifb_fence_wait
* description	: �ȴ�ͬ��
* param[in] 	: GPU������fence
* param[in] 	: �ȴ���ʱʱ��
***********************************************************************/
int hifb_fence_wait(struct sync_fence *fence, long timeout)
{
	int err;

#if 0
	struct sync_fence *fence = NULL;

	fence = sync_fence_fdget(fence_fd);
	if (fence == NULL)
	{
		HIFB_ERROR("sync_fence_fdget failed!\n");
		return -EINVAL;
	}
#endif

	/**
	 **����ȴ�s_SyncInfo.u32Timeline��s_SyncInfo.u32FenceValue���
	 **���֮�����fence�̻߳ᱻ���ѣ�����ȳ�ʱ��������ֵ������ʱ��ָ����
	 **�ײ���м�¼�����������ֵֻ��Ϊ�������ʹ��
	 **/
	err = sync_fence_wait(fence, timeout);
	if (err == -ETIME)
	{/**#define MSEC_PER_SEC    1000L ��time.h��**/
		err = sync_fence_wait(fence, 10 * MSEC_PER_SEC);
	}
	if (err < 0)
	{
		HIFB_WARNING("error waiting on fence: 0x%x\n", err);
	}

#if 0
	/**
	 **˭ʹ��˭�ͷţ�hifbʹ��acquire fence������hifb���ͷţ�
	 ** hifb������release fence��GPUʹ�ã�����GPU�ͷ�realease fence��
	 **/
	sync_fence_put(fence);
#endif
    
	return 0;
	
}
#endif
