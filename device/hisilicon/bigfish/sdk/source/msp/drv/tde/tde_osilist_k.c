/*****************************************************************************
*             Copyright 2006 - 2014, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: tde_osilist.h
* Description:TDE osi list interface define
*
* History:
* Version   Date          Author        DefectNum       Description
*
*****************************************************************************/
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif /* __cplusplus */
#endif  /* __cplusplus */
#ifndef TDE_BOOT
#include <linux/spinlock.h>
#include <linux/sched.h>
#include <linux/semaphore.h>
#endif
#include "tde_define.h"
#include "tde_handle.h"
#include "tde_buffer.h"
#include "tde_osilist.h"
#include "tde_hal.h"
#include "wmalloc.h"
#include "tde_fence.h"

/* JOB LIST head node definition */
typedef struct hiTDE_SWJOBLIST_S
{
    struct list_head stList;
    HI_S32 s32HandleLast;                   /* job handle wait for last submit */
    HI_S32 s32HandleFinished;               /* job handle last completed */
    HI_U32 u32JobNum;                       /* job number in queue */
    #ifndef TDE_BOOT
    spinlock_t lock;
    #endif
    TDE_SWJOB_S *pstJobCommitted;           /* last submited job node pointer, which is the first job */
    TDE_SWJOB_S *pstJobToCommit;            /* job node pointer wait for submit,which is the first job */
    HI_VOID *pstJobFinished;   
    TDE_SWJOB_S *pstJobLast;                /* last job in the list */
} TDE_SWJOBLIST_S;


#ifndef TDE_BOOT
typedef HI_VOID (* TDE_WQ_CB) (HI_U32);

typedef struct 
{
    HI_U32 Count;
    TDE_WQ_CB pWQCB;
    struct work_struct work;
}TDEFREEWQ_S;

/****************************************************************************/
/*                   TDE osi list inner variable definition                 */
/****************************************************************************/
STATIC wait_queue_head_t s_TdeBlockJobWq;     /* wait queue used to block */
#endif
STATIC TDE_SWJOBLIST_S *s_pstTDEOsiJobList; /* global job list queue */

/****************************************************************************/
/*               TDE osi list inner interface definition                    */
/****************************************************************************/
STATIC HI_VOID     TdeOsiListDoFreePhyBuff(HI_U32 u32BuffNum);
STATIC INLINE HI_VOID TdeOsiListSafeDestroyJob(TDE_SWJOB_S *pstJob);
STATIC HI_VOID     TdeOsiListReleaseHandle(HI_HANDLE_MGR *pstJobHeader);
STATIC INLINE HI_VOID TdeOsiListAddJob(TDE_SWJOB_S *pstJob);
STATIC HI_VOID     TdeOsiListDestroyJob(TDE_SWJOB_S *pstJob);


/*****************************************************************************
* Function:      TdeOsiListSafeDestroyJob
* Description:   release node from FstCmd to LastCmd
* Input:         pstJob:delete job list
* Output:        none
* Return:        none
* Others:
*****************************************************************************/
STATIC INLINE HI_VOID TdeOsiListSafeDestroyJob(TDE_SWJOB_S *pstJob)
{
#ifndef TDE_BOOT
    /* if user query this job, release job in query function */
    if(pstJob->u8WaitForDoneCount!=0)
    {
        TDE_TRACE(TDE_KERN_DEBUG, "query handle %d complete!\n", pstJob->s32Handle);
        pstJob->enNotiType = TDE_JOB_NOTIFY_BUTT;
        wake_up_interruptible(&pstJob->stQuery);
    }
    else
#endif
    {
        TdeOsiListDestroyJob(pstJob);
    }
}

/*****************************************************************************
* Function:      TdeOsiListReleaseHandle
* Description:   release handle manage info
* Input:         pstJobHeader:handle manage struct
* Output:        none
* Return:        none
* Others:
*****************************************************************************/
STATIC HI_VOID  TdeOsiListReleaseHandle(HI_HANDLE_MGR *pstJobHeader)
{
    TDE_ASSERT(NULL != pstJobHeader);
    if (pstJobHeader != NULL)
    {
        if (release_handle(pstJobHeader->handle))
        {
            TDE_FREE(pstJobHeader);
        }
    }
}

/*****************************************************************************
* Function:      TdeOsiListDoFreePhyBuff
* Description:    free temporary buffer 
* Input:         u32BuffNum: the number of temporary buffer
* Output:        none
* Return:        none
* Others:
*****************************************************************************/
STATIC HI_VOID TdeOsiListDoFreePhyBuff(HI_U32 u32BuffNum)
{
    HI_U32 i;

    for(i = 0; i < u32BuffNum; i++)
    {
        TDE_FreePhysicBuff();
    }
}

/*****************************************************************************
 Prototype    : TdeOsiListInit
 Description  : initialize list manage  module
 Input        : HI_VOID
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_S32 TdeOsiListInit(HI_VOID)
{
    #ifndef TDE_BOOT
    init_waitqueue_head(&s_TdeBlockJobWq);
    #endif
    if (!initial_handle())
    {
        return HI_FAILURE;
    }

    s_pstTDEOsiJobList = (TDE_SWJOBLIST_S *) TDE_MALLOC(sizeof(TDE_SWJOBLIST_S));
    if (NULL == s_pstTDEOsiJobList)
    {        
        destroy_handle();
        return HI_FAILURE;
    }
    
    INIT_LIST_HEAD(&s_pstTDEOsiJobList->stList);
    #ifndef TDE_BOOT
    spin_lock_init(&s_pstTDEOsiJobList->lock);
    spin_lock_init(&s_TDEBuffLock);
    #endif
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : TdeOsiListFreeNode
 Description  : release node 
 Input        : pNode: node pointer
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
STATIC INLINE HI_VOID TdeOsiListFreeNode(TDE_SWNODE_S *pNode)
{
    TDE_ASSERT(NULL != pNode);
    list_del_init(&pNode->stList);
    if (NULL != pNode->stNodeBuf.pBuf)
    {
        TDE_FREE(pNode->stNodeBuf.pBuf);
    }

    TdeOsiListPutPhyBuff(pNode->u32PhyBuffNum);

    TDE_FREE(pNode);
}

/*****************************************************************************
* Function:      TdeOsiListFreeSerialCmd
* Description:   release from FstCmd to LastCmd
* Input:         pstFstCmd: first node
*                pstLastCmd:last node
* Output:        none
* Return:        none
* Others:
*****************************************************************************/
HI_VOID TdeOsiListFreeSerialCmd(TDE_SWNODE_S *pstFstCmd, TDE_SWNODE_S *pstLastCmd)
{
    TDE_SWNODE_S *pstNextCmd;
    TDE_SWNODE_S *pstCurCmd;
    
    if((NULL == pstFstCmd) || (NULL == pstLastCmd))
    {
        return ;
    }

    pstCurCmd = pstNextCmd = pstFstCmd;
    while (pstNextCmd != pstLastCmd)
    {
        pstNextCmd = list_entry(pstCurCmd->stList.next, TDE_SWNODE_S, stList);
        if(NULL == pstNextCmd)
        {
            return ;
        }
        TdeOsiListFreeNode(pstCurCmd);
        pstCurCmd = pstNextCmd;
    }

    TdeOsiListFreeNode(pstLastCmd);
}

/*****************************************************************************
 Prototype    : TdeOsiListTerm
 Description  : deinitialization of list manager module
 Input        : HI_VOID
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_VOID TdeOsiListTerm(HI_VOID)
{
    TDE_SWJOB_S *pstJob;

            
    while (!list_empty(&s_pstTDEOsiJobList->stList))
    {
        pstJob = list_entry(s_pstTDEOsiJobList->stList.next, TDE_SWJOB_S, stList);
        list_del_init(&pstJob->stList);
        TdeOsiListDestroyJob(pstJob);
    }
    
    TDE_FREE(s_pstTDEOsiJobList);
    s_pstTDEOsiJobList= NULL;
   
    destroy_handle();

    
    return;
}

#ifndef TDE_BOOT
HI_VOID TdeOsiListFlushNode(TDE_SWNODE_S *pNode)
{
	TDE_NODE_BUF_S *pNodeBufInfo = NULL;
	HI_U32 CurNodePhy = 0; /*��ǰ�ڵ��Ӧ�������ַ*/
	GFX_MMZ_BUFFER_S stFlushBuf = {0};
	TDE_ASSERT(NULL != pNode);

	pNodeBufInfo = &pNode->stNodeBuf;
	
	if (NULL != pNodeBufInfo->pBuf)
	{
	    CurNodePhy = wgetphy(pNodeBufInfo->pBuf);
		stFlushBuf.u32Size = pNodeBufInfo->u32NodeSz+TDE_NODE_HEAD_BYTE+TDE_NODE_TAIL_BYTE;
		stFlushBuf.u32StartPhyAddr = CurNodePhy;
		stFlushBuf.u32StartVirAddr = (HI_U32)pNodeBufInfo->pBuf;
		HI_GFX_Flush(&stFlushBuf);
	}
	return;
}


HI_VOID TdeOsiListFlushJob(TDE_SWJOB_S *pstJob)
{
    TDE_SWNODE_S *pstNextCmd = NULL;
    TDE_SWNODE_S *pstCurCmd = NULL;
    TDE_SWNODE_S *pstFstCmd = NULL;
    TDE_SWNODE_S *pstLastCmd = NULL;
    TDE_ASSERT(NULL != pstJob);
     
    pstFstCmd = pstJob->pstFirstCmd;
    pstLastCmd =  pstJob->pstTailNode;
       
    if((NULL == pstFstCmd) || (NULL == pstLastCmd))
    {
        return ;
    }

    pstCurCmd = pstNextCmd = pstFstCmd;
    while (pstNextCmd != pstLastCmd)
    {
        pstNextCmd = list_entry(pstCurCmd->stList.next, TDE_SWNODE_S, stList);
        TdeOsiListFlushNode(pstCurCmd);
        pstCurCmd = pstNextCmd;
    }

    TdeOsiListFlushNode(pstLastCmd);
    return;
}
#endif

/*****************************************************************************
* Function:      TdeOsiListAddJob
* Description:   add task info to task list
* Input:         pstJob: job struct
* Output:        none
* Return:        none
* Others:
*****************************************************************************/
STATIC INLINE HI_VOID TdeOsiListAddJob(TDE_SWJOB_S *pstJob)
{
    list_add_tail(&pstJob->stList, &s_pstTDEOsiJobList->stList);
    s_pstTDEOsiJobList->u32JobNum++;
    s_pstTDEOsiJobList->s32HandleLast = pstJob->s32Handle;
    s_pstTDEOsiJobList->pstJobLast = pstJob;
}

/*****************************************************************************
 Prototype    : TdeOsiListBeginJob
 Description  : create a job
 Input        : NONE
 Output       : pHandle: created job handle
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_S32 TdeOsiListBeginJob(TDE_HANDLE *pHandle)
{
    HI_HANDLE_MGR *pHandleMgr;
    TDE_SWJOB_S *pstJob;
  
    pHandleMgr = (HI_HANDLE_MGR *) TDE_MALLOC(sizeof(HI_HANDLE_MGR) + sizeof(TDE_SWJOB_S));
    if (NULL == pHandleMgr)
    {
        TDE_TRACE(TDE_KERN_INFO, "TDE BegJob Malloc Fail!\n");
        return HI_ERR_TDE_NO_MEM;
    }
    get_handle(pHandleMgr, pHandle);
    pstJob = (TDE_SWJOB_S *)((HI_U8*)pHandleMgr + sizeof(HI_HANDLE_MGR));
    pHandleMgr->res = (HI_VOID*)pstJob;
    #ifndef TDE_BOOT
    INIT_LIST_HEAD(&pstJob->stList);
    init_waitqueue_head(&pstJob->stQuery);
    #endif
    pstJob->s32Handle = *pHandle;
    pstJob->pid = current->tgid;
    
#ifdef TDE_FENCE_SUPPORT
    pstJob->s32ReleaseFenceFd = -1;
#endif

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : TdeOsiListDestroyJob
 Description  : destroy a job
 Input        : s32Handle: job handle
 Output       : NONE
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
STATIC HI_VOID TdeOsiListDestroyJob(TDE_SWJOB_S *pstJob)
{
    HI_HANDLE_MGR *pHandleMgr;
    if (!query_handle(pstJob->s32Handle, &pHandleMgr))
    {
        TDE_TRACE(TDE_KERN_DEBUG, "handle %d does not exist!\n", pstJob->s32Handle);
        return;
    }
    TdeOsiListFreeSerialCmd(pstJob->pstFirstCmd, pstJob->pstTailNode);
    TdeOsiListReleaseHandle(pHandleMgr);

    return;
}

/*****************************************************************************
* Function:      TdeOsiListCancelJob
* Description:   cancel task
* Input:         s32Handle:task handle
* Output:        none
* Return:        =0,success <0,error
* Others:
*****************************************************************************/
#ifndef TDE_BOOT
HI_S32 TdeOsiListCancelJob(TDE_HANDLE s32Handle)
{
    HI_HANDLE_MGR *pHandleMgr;
    TDE_SWJOB_S *pstJob;
    #ifndef TDE_BOOT
    HI_SIZE_T lockflags;
    #endif
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    if (!query_handle(s32Handle, &pHandleMgr))
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        return HI_SUCCESS;
    }
    pstJob = (TDE_SWJOB_S *)pHandleMgr->res;

    if(pstJob->bSubmitted)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        TDE_TRACE(TDE_KERN_INFO, "Handle %d has been submitted!\n", s32Handle);
        return HI_FAILURE;
    }

    TdeOsiListFreeSerialCmd(pstJob->pstFirstCmd, pstJob->pstTailNode);
    TdeOsiListReleaseHandle(pHandleMgr);
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
    return 0;
}
#else
/*****************************************************************************
* Function:      TdeOsiListWaitTdeIdle
* Description:   wait for completion of the task
* Input:         ?T
* Output:        ?T
* Return:        True: Idle/False: Busy
* Others:        ?T
*****************************************************************************/
HI_VOID  static TdeOsiListWaitTdeIdle(HI_VOID)
{
    
    while(1)
    {
        /* query the status interval of 10ms*/
        udelay(10*1000);

        if (TdeHalCtlIsIdleSafely())
        {
            return;
        }
    }
}
#endif


/*****************************************************************************
 Prototype    : TdeOsiListSubmitJob
 Description  : when submit job handle by user, at first add job list to global list, and then handle with according by different situation
                1.when TDE is free and no command canbe added,evaluate waited node pointer,start to software list node to hardware
                2.when TDE is not free and no command canbe added, evaluate waited node pointer
                3.when TDE is not free but command canbe added,no handle
 Input        : s32Handle: job handle
                pSwNode: node resource
                enSubmType: node type
 Output       : NONE
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_S32 TdeOsiListSubmitJob(TDE_HANDLE s32Handle, 
                           HI_U32 u32TimeOut, TDE_FUNC_CB pFuncComplCB, HI_VOID *pFuncPara,
                           TDE_NOTIFY_MODE_E enNotiType, HI_S32 *ps32ReleaseFence)
{
    TDE_SWJOB_S * pstJob;
    HI_HANDLE_MGR *pHandleMgr;
    HI_BOOL bValid;
    TDE_SWNODE_S *pstTailNode = NULL;
    HI_S32 s32Ret;
    HI_U8 *pBuf;
    #ifndef TDE_BOOT
    HI_SIZE_T lockflags;
    #endif
    HI_BOOL asynflag = 0;
    
    bValid = query_handle(s32Handle, &pHandleMgr);
    if (!bValid)
    {
        TDE_TRACE(TDE_KERN_INFO, "invalid handle %d!\n", s32Handle);
        return HI_ERR_TDE_INVALID_HANDLE;
    }
    pstJob = (TDE_SWJOB_S *)pHandleMgr->res;
    if(pstJob->bSubmitted)
    {
        TDE_TRACE(TDE_KERN_INFO, "job %d already submitted!\n", s32Handle);
        return HI_ERR_TDE_INVALID_HANDLE;
    }
    
    if(NULL == pstJob->pstFirstCmd)
    {
        TDE_TRACE(TDE_KERN_INFO, "no cmd !\n");
       
        TdeOsiListReleaseHandle(pHandleMgr);
        return HI_SUCCESS;
    }
    pstTailNode = pstJob->pstTailNode;

    pBuf = (HI_U8 *)pstTailNode->stNodeBuf.pBuf + TDE_NODE_HEAD_BYTE;
    TdeHalNodeEnableCompleteInt((HI_VOID *)pBuf);
    pstJob->bSubmitted = HI_TRUE;
    pstJob->enNotiType   = enNotiType;
    pstJob->pFuncComplCB = pFuncComplCB;
    pstJob->pFuncPara = pFuncPara;

    if(TDE_JOB_WAKE_NOTIFY != enNotiType)
    {
        if((!in_interrupt())&&(wgetfreenum() < 5))
        {
            pstJob->enNotiType = TDE_JOB_WAKE_NOTIFY;
            enNotiType = TDE_JOB_WAKE_NOTIFY;
            u32TimeOut = 1000;
            asynflag = 1;/*�ɷ�������ʽתΪ������ʽ��־λ*/
            
        }
    }

#ifdef TDE_FENCE_SUPPORT
    if ((enNotiType != TDE_JOB_WAKE_NOTIFY) && (ps32ReleaseFence != NULL))
    {
        *ps32ReleaseFence = TDE_FENCE_Create("tde");
        if (*ps32ReleaseFence < 0)
        {
            TDE_TRACE(TDE_KERN_ERR, "TDE_FENCE_Create err!\n");
            return HI_ERR_TDE_NO_MEM;
        }
        pstJob->s32ReleaseFenceFd = *ps32ReleaseFence;
    }
#endif
    
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    /*If the job to commit is not null,join the current job to the tail node of the last job.*/
    if (HI_NULL != s_pstTDEOsiJobList->pstJobToCommit)
    {
        TDE_SWNODE_S *pstTailNodeInJobList = s_pstTDEOsiJobList->pstJobLast->pstTailNode;
        HI_U32 *pNextNodeAddr = (HI_U32 *)pstTailNodeInJobList->stNodeBuf.pBuf +(TDE_NODE_HEAD_BYTE >> 2)+ ((pstTailNodeInJobList->stNodeBuf.u32NodeSz) >> 2);
        HI_U64 *pNextNodeUpdate = (HI_U64 *)(pNextNodeAddr + 1);

        *pNextNodeAddr = pstJob->pstFirstCmd->stNodeBuf.u32PhyAddr;

        *pNextNodeUpdate = pstJob->pstFirstCmd->stNodeBuf.u64Update;

        if (pstJob->bAqUseBuff)
        {
            s_pstTDEOsiJobList->pstJobToCommit->bAqUseBuff = HI_TRUE;
        }
        #ifdef TDE_CACH_STRATEGY 
        /*��job�еĶ�Ӧ������ hw �ڵ�flush���ڴ棬��֤Ӳ������ȷ����*/
        TdeOsiListFlushJob(s_pstTDEOsiJobList->pstJobLast);
        #endif
    }
    else
    {
        s_pstTDEOsiJobList->pstJobToCommit = pstJob;
    }

    #ifdef TDE_CACH_STRATEGY 
    /*��job�еĶ�Ӧ������ hw �ڵ�flush���ڴ棬��֤Ӳ������ȷ����*/
    TdeOsiListFlushJob(pstJob);
    #endif
    TdeOsiListAddJob(pstJob);
    
    s32Ret = TdeHalNodeExecute(s_pstTDEOsiJobList->pstJobToCommit->pstFirstCmd->stNodeBuf.u32PhyAddr,
    s_pstTDEOsiJobList->pstJobToCommit->pstFirstCmd->stNodeBuf.u64Update, \
    s_pstTDEOsiJobList->pstJobToCommit->bAqUseBuff);
    if (s32Ret == HI_SUCCESS)
    {
        s_pstTDEOsiJobList->pstJobCommitted = s_pstTDEOsiJobList->pstJobToCommit;
        s_pstTDEOsiJobList->pstJobToCommit = HI_NULL;
        s_pstTDEOsiJobList->pstJobFinished = HI_NULL;
    }
    
    #ifndef TDE_BOOT
    if (TDE_JOB_WAKE_NOTIFY == enNotiType)
    {      
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        s32Ret = wait_event_interruptible_timeout(s_TdeBlockJobWq, (TDE_JOB_NOTIFY_BUTT == pstJob->enNotiType), u32TimeOut);
        TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
        
        if (TDE_JOB_NOTIFY_BUTT == pstJob->enNotiType) 
        {
            TDE_TRACE(TDE_KERN_DEBUG, "handle:%d complete!\n", pstJob->s32Handle);
            if (pstJob->u8WaitForDoneCount == 0) 
            {                  
                TdeOsiListDestroyJob(pstJob);
            }
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
            return HI_SUCCESS;
        }
        else
        {
            pstJob->enNotiType = TDE_JOB_COMPL_NOTIFY;
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
            if ((-ERESTARTSYS) == s32Ret)
            {
                TDE_TRACE(TDE_KERN_ERR, "handle:%d interrupt!\n", pstJob->s32Handle);
                return HI_ERR_TDE_INTERRUPT;
            }
            if(1==asynflag)
            {
            /*����ɷ�������ʽתΪ������ʽ���޳�ʱ��Ϣ*/
                return HI_SUCCESS;
            }
            TDE_TRACE(TDE_KERN_ERR, "handle:%d timeout!\n", pstJob->s32Handle);
            return HI_ERR_TDE_JOB_TIMEOUT;
        }
    }
    #else
     /* to do:�ȴ�TDE������� */
    TdeOsiListWaitTdeIdle();

    /* ��������ɾ����job�ڵ�,��ֹ�ٴα������ýڵ� */
    list_del_init(&pstJob->stList);

    /* �ͷ�job */
    TdeOsiListSafeDestroyJob(pstJob);

    TDE_TRACE(TDE_KERN_DEBUG, "handle:%d complete!\n", pstJob->s32Handle);
    #endif
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
    
    return HI_SUCCESS;
}

#ifndef TDE_BOOT
/*****************************************************************************
 Prototype    : TdeOsiListReset
 Description  : Reset all state, free list space
 Input        : NONE
 Output       : NONE
 Return Value : HI_SUCCESS/HI_FAILURE
 Calls        :
 Called By    :
*****************************************************************************/
HI_VOID TdeOsiListReset(HI_VOID)
{
    TDE_SWJOB_S *pstDelJob;
    HI_SIZE_T lockflags;
    
    while(1)
    {
    	if (TdeHalCtlIsIdleSafely())
    	{
    		TdeHalResumeInit();
    		break;
    	}
    }
    TDE_TRACE(TDE_KERN_DEBUG, "TDE reset successfully!\n");
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    while(!list_empty(&s_pstTDEOsiJobList->stList))
    {
        pstDelJob = list_entry(s_pstTDEOsiJobList->stList.next, TDE_SWJOB_S, stList);
        s_pstTDEOsiJobList->u32JobNum--;

        list_del_init(&pstDelJob->stList);
        if(TDE_JOB_WAKE_NOTIFY == pstDelJob->enNotiType)
        {
            TDE_TRACE(TDE_KERN_DEBUG, "reset free handle:%d!\n", pstDelJob->s32Handle);
            
            pstDelJob->enNotiType = TDE_JOB_NOTIFY_BUTT;
            wake_up_interruptible(&s_TdeBlockJobWq);
        }
        else if (TDE_JOB_COMPL_NOTIFY == pstDelJob->enNotiType)
        {
            TDE_TRACE(TDE_KERN_DEBUG, "reset free handle:%d!\n", pstDelJob->s32Handle);

            TdeOsiListSafeDestroyJob(pstDelJob);
        }
        s_pstTDEOsiJobList->s32HandleFinished = -1;
        s_pstTDEOsiJobList->s32HandleLast = -1;

    	s_pstTDEOsiJobList->pstJobCommitted = HI_NULL;
    	s_pstTDEOsiJobList->pstJobToCommit = HI_NULL;
    	s_pstTDEOsiJobList->pstJobLast = HI_NULL;
    }
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
    return;
}

/*****************************************************************************
 Prototype    : TdeOsiListWaitAllDone
 Description  : wait for all TDE operate is completed,that is to say wait for the last job to be completed.
 Input        : none
 Output       : NONE
 Return Value : HI_SUCCESS,TDE operate completed
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5

*****************************************************************************/
HI_S32 TdeOsiListWaitAllDone(HI_VOID)
{
    TDE_HANDLE s32WaitHandle;
    HI_SIZE_T lockflags;
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    s32WaitHandle = s_pstTDEOsiJobList->s32HandleLast;
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
    if (-1 == s32WaitHandle)
    {
        return HI_SUCCESS;
    }
    return TdeOsiListWaitForDone(s32WaitHandle,0);
}


/*****************************************************************************
* Function:      TdeOsiListWaitForDone
* Description:   block to wait for job done
* Input:         s32Handle: job handle
*                u32TimeOut: timeout value
* Output:        none
* Return:        =0,successfully completed <0,error
* Others:
*****************************************************************************/
HI_S32 TdeOsiListWaitForDone(TDE_HANDLE s32Handle, HI_U32 u32TimeOut)
{
    TDE_SWJOB_S * pstJob;
    HI_HANDLE_MGR *pHandleMgr;
    HI_S32 s32Ret;
    HI_BOOL bValid;
    HI_SIZE_T lockflags;
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    bValid = query_handle(s32Handle, &pHandleMgr);
    if(!bValid)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);   
        return HI_SUCCESS;
    }
    /* AI7D02634 */
   
    pstJob = (TDE_SWJOB_S *)pHandleMgr->res;
    if(!pstJob->bSubmitted)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);   
        TDE_TRACE(TDE_KERN_ERR, "job %d has no submitted!\n", s32Handle);
        return HI_ERR_TDE_INVALID_HANDLE;
    }
    pstJob->u8WaitForDoneCount++;
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
    if(u32TimeOut)
    {
        s32Ret = wait_event_interruptible_timeout(pstJob->stQuery, (TDE_JOB_NOTIFY_BUTT == pstJob->enNotiType), u32TimeOut);
        TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
        pstJob->u8WaitForDoneCount--;
        
        if(TDE_JOB_NOTIFY_BUTT != pstJob->enNotiType)
        {
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
            if ((-ERESTARTSYS) == s32Ret)
            {
                TDE_TRACE(TDE_KERN_ERR, "query handle (%d) interrupt!\n", pstJob->s32Handle);
                return HI_ERR_TDE_INTERRUPT;
            }
            else
            {
                TDE_TRACE(TDE_KERN_ERR, "query handle (%d) time out!\n", pstJob->s32Handle);
            }
            return HI_ERR_TDE_QUERY_TIMEOUT;
        }
         
        /** complete */
        if (pstJob->u8WaitForDoneCount == 0) 
        {                  
            TdeOsiListDestroyJob(pstJob);
        }
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);   
        return HI_SUCCESS;
    }

    s32Ret = wait_event_interruptible(pstJob->stQuery, (TDE_JOB_NOTIFY_BUTT == pstJob->enNotiType));
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    pstJob->u8WaitForDoneCount--;
    if ((-ERESTARTSYS) == s32Ret)
    {
        if((TDE_JOB_NOTIFY_BUTT == pstJob->enNotiType)&&(pstJob->u8WaitForDoneCount == 0))
        {
            TdeOsiListDestroyJob(pstJob);
        }
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
        TDE_TRACE(TDE_KERN_ERR, "query handle (%d) interrupt!\n", pstJob->s32Handle);
        return HI_ERR_TDE_INTERRUPT;
    }
    
    
    if (pstJob->u8WaitForDoneCount == 0) 
    {
        TdeOsiListDestroyJob(pstJob);
    } 
    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);    
    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : TdeOsiListCompProc
 Description  : list complete interrupt servic, mainly complete switch on hardware lists
 Input        : HI_VOID
 Output       : None
 Return Value :
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_VOID TdeOsiListCompProc()
{
    HI_S32 s32Ret;
    if (s_pstTDEOsiJobList->pstJobToCommit != HI_NULL)
    {
        s32Ret = TdeHalNodeExecute(s_pstTDEOsiJobList->pstJobToCommit->pstFirstCmd->stNodeBuf.u32PhyAddr,
        s_pstTDEOsiJobList->pstJobToCommit->pstFirstCmd->stNodeBuf.u64Update, \
        s_pstTDEOsiJobList->pstJobToCommit->bAqUseBuff);
        if (s32Ret == HI_SUCCESS)
        {
            s_pstTDEOsiJobList->pstJobCommitted = s_pstTDEOsiJobList->pstJobToCommit;
            s_pstTDEOsiJobList->pstJobToCommit = HI_NULL;
            s_pstTDEOsiJobList->pstJobFinished = HI_NULL;
        }
    }

    return;    
}

/*****************************************************************************
 Function:      TdeOsiListNodeComp
 Description:   node complete interrupt service, maily complete deleting node and resume suspending,free node 
 Input:         none
 Output:        none
 Return:        create job handle
 Others:        none
 Calls        :
 Called By    :

  History        :
  1.Date         : 2008/3/5
    Author       : w54130
    Modification : Created function

*****************************************************************************/
HI_VOID TdeOsiListNodeComp()
{
    HI_HANDLE_MGR *pHandleMgr;
    TDE_SWJOB_S *pstJob;
    HI_S32 s32FinishedHandle;
    TDE_SWJOB_S *pstDelJob;
    TDE_HANDLE s32Delhandle;
    HI_U32 u32RunningSwNodeAddr;
    HI_BOOL bWork = HI_TRUE;
    HI_U32 *pu32FinishHandle;
    HI_SIZE_T lockflags;
    TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
    if (TdeHalCtlIsIdleSafely())
    {
        bWork = HI_FALSE;
    }
    
    u32RunningSwNodeAddr = TdeHalCurNode();
    if (0 == u32RunningSwNodeAddr)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        return;
    }

    if(u32RunningSwNodeAddr ==(HI_U32)s_pstTDEOsiJobList->pstJobFinished)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        return;
    }
    
    pu32FinishHandle = (HI_U32 *)wgetvrt(u32RunningSwNodeAddr - TDE_NODE_HEAD_BYTE  + 4);
    if (HI_NULL == pu32FinishHandle)
    {
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        return;
    }
    
    s32FinishedHandle = *pu32FinishHandle;

    if (!bWork)
    {
        s_pstTDEOsiJobList->pstJobFinished = (HI_VOID *)u32RunningSwNodeAddr;
    }
    else
    {
        
        if(!query_handle(s32FinishedHandle, &pHandleMgr))
        {
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
            return;
        }
        pstJob = (TDE_SWJOB_S *)pHandleMgr->res;

        
        if (pstJob->stList.prev == &s_pstTDEOsiJobList->stList)
        {
            TDE_TRACE(TDE_KERN_DEBUG, "No pre Job left, finishedhandle:%d\n", s32FinishedHandle);
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
            return;
        }

        pstDelJob = list_entry(pstJob->stList.prev, TDE_SWJOB_S, stList);
        s32FinishedHandle = pstDelJob->s32Handle;
        s_pstTDEOsiJobList->pstJobFinished = HI_NULL;
    }
    TDE_TRACE(TDE_KERN_DEBUG, "finishedhandle:%d\n", s32FinishedHandle);
    if (!query_handle(s32FinishedHandle, &pHandleMgr))
    {
        TDE_TRACE(TDE_KERN_DEBUG, "handle %d already delete!\n", s32FinishedHandle);
        TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
        return;
    }

    s_pstTDEOsiJobList->s32HandleFinished = s32FinishedHandle;

    while(!list_empty(&s_pstTDEOsiJobList->stList))
    {
        pstDelJob = list_entry(s_pstTDEOsiJobList->stList.next, TDE_SWJOB_S, stList);
        s32Delhandle = pstDelJob->s32Handle;
        s_pstTDEOsiJobList->u32JobNum--;
	if(s32Delhandle==s_pstTDEOsiJobList->s32HandleLast)
	{
		s_pstTDEOsiJobList->s32HandleLast = -1;		
	}
        list_del_init(&pstDelJob->stList);
        
        if(TDE_JOB_WAKE_NOTIFY == pstDelJob->enNotiType)
        {
            
            TDE_TRACE(TDE_KERN_DEBUG, "handle:%d!\n", pstDelJob->s32Handle);
           
            pstDelJob->enNotiType = TDE_JOB_NOTIFY_BUTT;
            if (NULL != pstDelJob->pFuncComplCB)
            {
                TDE_TRACE(TDE_KERN_DEBUG, "handle:%d has callback func!\n", pstDelJob->s32Handle);
                TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
                pstDelJob->pFuncComplCB(pstDelJob->pFuncPara, &(pstDelJob->s32Handle));
                TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
            }
            if(pstDelJob->u8WaitForDoneCount!=0)
	    {
	        TDE_TRACE(TDE_KERN_DEBUG, "query handle %d complete!\n", pstDelJob->s32Handle);
	        wake_up_interruptible(&pstDelJob->stQuery);
	    }
            wake_up_interruptible(&s_TdeBlockJobWq);
        }
        else if (TDE_JOB_COMPL_NOTIFY == pstDelJob->enNotiType)
        {
            TDE_TRACE(TDE_KERN_DEBUG, "handle:%d!\n", pstDelJob->s32Handle);

            if (NULL != pstDelJob->pFuncComplCB)
            {
                TDE_TRACE(TDE_KERN_DEBUG, "handle:%d has callback func!\n", pstDelJob->s32Handle);
                TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
                pstDelJob->pFuncComplCB(pstDelJob->pFuncPara, &(pstDelJob->s32Handle));
                TDE_LOCK(&s_pstTDEOsiJobList->lock,lockflags);
            }

#ifdef TDE_FENCE_SUPPORT
            if (pstDelJob->s32ReleaseFenceFd > 0)
            {
                TDE_FENCE_WakeUp();
            }
#endif
            
            TdeOsiListSafeDestroyJob(pstDelJob);
        }
        else
        {
            TDE_TRACE(TDE_KERN_ERR, "Error Status!!\n");
        }
        
        if(s32Delhandle == s32FinishedHandle)
        {
            if (!bWork)
            {
                if (TdeHalCtlIsIdleSafely())
                {
                	TdeHalCtlIntStats();

                	TdeOsiListCompProc();
                }
            }
            TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
            return ;
        }
    }

    TDE_UNLOCK(&s_pstTDEOsiJobList->lock,lockflags);
}
#endif
/*****************************************************************************
* Function:      TdeOsiListGetPhyBuff
* Description:    get one physical buffer, to deflicker and zoom
* Input:         
* Output:        none
* Return:        created job handle
* Others:        none
*****************************************************************************/
HI_U32 TdeOsiListGetPhyBuff(HI_U32 u32CbCrOffset)
{
#ifndef TDE_BOOT    
    if (in_interrupt())
    {
        return 0;
    }
#endif
    return TDE_AllocPhysicBuff(u32CbCrOffset);
}

#ifndef TDE_BOOT
void TdeOsiListFreevmem(struct work_struct *work)
{
    TDEFREEWQ_S *pWQueueInfo = container_of(work, TDEFREEWQ_S, work);
   
    pWQueueInfo->pWQCB(pWQueueInfo->Count);
    TDE_FREE(pWQueueInfo);
}

void TdeOsiListHsr(void* pstFunc, void* data)
{
    TDEFREEWQ_S *pstWQ = NULL;

    pstWQ = TDE_MALLOC(sizeof(TDEFREEWQ_S));
    if(HI_NULL == pstWQ)
    {
        TDE_TRACE(TDE_KERN_INFO, "Malloc TDEFREEWQ_S failed!\n");
        return;
    }
    pstWQ->Count = (HI_U32)data;
    pstWQ->pWQCB = (TDE_WQ_CB)pstFunc;
    INIT_WORK(&pstWQ->work, TdeOsiListFreevmem);
    schedule_work(&pstWQ->work);
    return;
}
#endif
/*****************************************************************************
* Function:      TdeOsiListPutPhyBuff
* Description:   put back physical buffer
* Input:         u32BuffNum 
* Output:        none
* Return:        none
* Others:        none
*****************************************************************************/
HI_VOID  TdeOsiListPutPhyBuff(HI_U32 u32BuffNum)
{
    if (0 == u32BuffNum)
    {
        return;
    }
    #ifndef TDE_BOOT
    TdeOsiListHsr((HI_VOID *)TdeOsiListDoFreePhyBuff, (HI_VOID *)u32BuffNum);
    #else
    TdeOsiListDoFreePhyBuff(u32BuffNum);
    #endif
}



#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */

