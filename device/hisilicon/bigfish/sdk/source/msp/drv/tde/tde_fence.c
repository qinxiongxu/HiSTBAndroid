/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : tde_fence.c
Version             : Initial Draft
Author              :
Created             : 2016/03/17
Description         :
Function List       :
History             :
Date                       Author                   Modification
2015/08/11                 z00141204                Created file
******************************************************************************/

/*********************************add include here******************************/
#ifdef TDE_FENCE_SUPPORT

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

#include "tde_fence.h"
#include "sw_sync.h"
#include "hi_gfx_comm_k.h"
#include "tde_define.h"

/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/
static HI_U32 gs_u32FenceValue = 0;
static HI_U32 gs_u32TimelineValue  = 0;
static struct sw_sync_timeline *gs_pstTimeline = NULL;

/******************************* API declaration *****************************/

HI_VOID TDE_FENCE_Open(HI_VOID)
{
    if (NULL == gs_pstTimeline)
    {
        gs_pstTimeline = sw_sync_timeline_create("tde");
    }

    return;
}

HI_VOID TDE_FENCE_Close(HI_VOID)
{
    if (gs_pstTimeline)
    {
        sync_timeline_destroy(&gs_pstTimeline->obj);
        gs_pstTimeline = NULL;
        gs_u32FenceValue = 0;
        gs_u32TimelineValue = 0;
    }

    return;
}

HI_S32 TDE_FENCE_Create(const char *name)
{
    HI_S32 fd;
    struct sync_fence *fence = NULL;
    struct sync_pt *pt = NULL;

    if (NULL == gs_pstTimeline)
    {
        return HI_FAILURE;
    }

    /**
     **��ȡ���õ��ļ��ڵ�
     **/
    fd = get_unused_fd();
    if (fd < 0)
    {
        TDE_TRACE(TDE_KERN_ERR, "get_unused_fd failed!\n");
        return fd;
    }

    /**
     **����ͬ���ڵ�
     **/
    pt = sw_sync_pt_create(gs_pstTimeline, ++gs_u32FenceValue);
    if (NULL == pt)
    {
        gs_u32FenceValue--;
        put_unused_fd(fd);
        TDE_TRACE(TDE_KERN_ERR, "sw_sync_pt_create failed!\n");
        return -ENOMEM;
    }

    fence = sync_fence_create(name, pt);
    if (fence == NULL)
    {
        TDE_TRACE(TDE_KERN_ERR, "sync_fence_create failed!\n");
        sync_pt_free(pt);
        put_unused_fd(fd);
        return -ENOMEM;
    }

    sync_fence_install(fence, fd);

    return fd;

}

HI_VOID TDE_FENCE_Destroy(HI_S32 fd)
{
    put_unused_fd(fd);

    return;
}

#define TDE_FENCE_TIMEOUT 3000

HI_S32 TDE_FENCE_Wait(HI_S32 fd)
{
    HI_S32 s32Ret;
    struct sync_fence *fence = NULL;

    fence = sync_fence_fdget(fd);
    if (fence == NULL)
    {
        TDE_TRACE(TDE_KERN_ERR, "sync_fence_fdget failed!\n");
        return HI_FAILURE;
    }

    s32Ret = sync_fence_wait(fence, TDE_FENCE_TIMEOUT);
    if (s32Ret < 0)
    {
        TDE_TRACE(TDE_KERN_ERR, "error waiting on fence: 0x%x\n", s32Ret);
    }

    sync_fence_put(fence);

    return 0;
}

HI_S32 TDE_FENCE_WakeUp(HI_VOID)
{
    sw_sync_timeline_inc(gs_pstTimeline, 1);
    gs_u32TimelineValue++;

    return HI_SUCCESS;
}

HI_VOID TDE_FENCE_ReadProc(struct seq_file *p, HI_VOID *v)
{
    PROC_PRINT(p, "---------------------TDE Fence Info--------------------\n");
    PROC_PRINT(p, "FenceValue\t:%u\n", gs_u32FenceValue);
    PROC_PRINT(p, "TimeLineValue\t:%u\n", gs_u32TimelineValue);

    return;
}

#endif

