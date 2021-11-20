/***********************************************************************************
*              Copyright 2004 - 2014, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName   :  drv_demux_func.c
* Description:  Define interfaces of demux hardware abstract layer.
*
* History:
* Version      Date         Author        DefectNum    Description
* main\1    20090927    y00106256      NULL      Create this file.
***********************************************************************************/

#include <linux/kernel.h>

#include "hi_type.h"
#include "hi_module.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mem.h"
#include "hi_drv_sys.h"
#include "hi_kernel_adapt.h"

#include "demux_debug.h"
#include "hal_demux.h"
#include "drv_demux_reg.h"
#include "drv_demux_func.h"
#include "drv_demux_scd.h"
#include "drv_demux_index.h"
#include "drv_demux_sw.h"
#include "drv_demux_osal.h"
#include <asm/div64.h>
#ifdef DMX_DESCRAMBLER_SUPPORT
#include "drv_descrambler.h"
#include "drv_descrambler_func.h"
#endif

#include "drv_sync_ext.h"

#define DMX_GET_REGION_ID(DmxId)            ((0 == (DmxId)) ? 0 : ((4 == (DmxId)) ? 2 : 1))

#define DMX_PES_CHANNEL_MIN_SIZE            0x10000

#define DMX_RAM_PORT_AUTO_REGION            60

#define DMX_RAM_PORT_AUTO_STEP_1            0
#define DMX_RAM_PORT_AUTO_STEP_2            1
#define DMX_RAM_PORT_AUTO_STEP_4            2
#define DMX_RAM_PORT_AUTO_STEP_8            3

#define DMX_FQ_VID_BLOCK_SIZE               8192
#define DMX_FQ_AUD_BLOCK_SIZE               1280

#define DMX_REC_MIN_BUF_SIZE                (256 * 1024)

#define DMX_REC_VID_SCD_BUF_SIZE            (56 * 1024)
#define DMX_REC_AUD_SCD_BUF_SIZE            (28 * 1024)

#define DMX_REC_TS_PACKETS_UNIT             (4 * 188)


#define DMX_REC_VID_TS_PACKETS_PER_BLOCK    (64 * DMX_REC_TS_PACKETS_UNIT)
#define DMX_REC_AUD_TS_PACKETS_PER_BLOCK    (32 * DMX_REC_TS_PACKETS_UNIT)

#define DMX_REC_TS_WITH_TIMESTAMP_UNIT      (4 * 192)
#define DMX_REC_VID_TS_WITH_TIMESTAMP_BLOCK_SIZE    (64 * DMX_REC_TS_WITH_TIMESTAMP_UNIT)
#define DMX_REC_AUD_TS_WITH_TIMESTAMP_BLOCK_SIZE    (32 * DMX_REC_TS_WITH_TIMESTAMP_UNIT)

#define DMX_REC_SOFT_INDEX_TIME_GAP         (100)    /*for scrambled stream ,we generate soft index, the min_time gap is 500ms*/
#define DMX_REC_VID_SCD_NUM_PER_BLOCK       (8 * 28)
/*
fqdepth == DMX_REC_AUD_SCD_BUF_SIZE/DMX_REC_AUD_SCD_PER_BLOCK  >= 1023 , so ,the min DMX_REC_AUD_SCD_PER_BLOCK should be 28
*/
#define DMX_REC_AUD_SCD_NUM_PER_BLOCK       (4 * 28)
#define DMX_REC_SCD_INVALID_CHANNEL         0x7F

#define DMX_MAX_SCR_MS                      (47721858)  // scd wrap around value in ms: 0x100000000 / 90

#define DMX_FQ_DESC_SIZE                    0x8
#define DMX_OQ_DESC_SIZE                    0x10

#define MIN_MMZ_BUF_SIZE                    4096

#define DMX_TS_BUFFER_EMPTY                 2048
#define FQ_BP_TSO_PERSENT                   20
DMX_DEV_OSI_S *g_pDmxDevOsi = HI_NULL;

SYNC_EXPORT_FUNC_S      *g_pSyncFunc    = HI_NULL;

#ifdef CHIP_TYPE_hi3716m
HI_BOOL Hi3716MV300Flag = HI_FALSE;
#endif

static HI_U32 s_u32DMXCRCErr[DMX_CHANNEL_CNT] = {0};
static HI_U32 s_u32DMXTEIErr[DMX_CHANNEL_CNT] = {0};
static HI_U32 s_u32DMXCCDiscErr[DMX_CHANNEL_CNT] = {0};
static HI_U32 s_u32DMXPesLenErr[DMX_CHANNEL_CNT] = {0};
HI_U32 s_u32DMXDropCnt[DMX_CHANNEL_CNT] = {0};

static HI_U32 s_u32DMXChanDatafl[DMX_CHANNEL_CNT] = {0};
static HI_U32 s_u32DMXBufEop[DMX_OQ_CNT] = {0};
static HI_U32 s_u32DMXBufData = 0;

static DMX_ERRMSG_S psErrMsg[DMX_MAX_ERRLIST_NUM];
static wait_queue_head_t AllChnWaitQueue;
static wait_queue_head_t *s_pAllChnWatchWaitQueue = HI_NULL;

#ifdef HI_DEMUX_PROC_SUPPORT
DMX_Proc_Global_Info_S GlobalProcInfo;
#endif


#define IsDmxDevInit()                                      \
    do                                                      \
    {                                                       \
        if (!g_pDmxDevOsi)                                  \
        {                                                   \
            HI_FATAL_DEMUX("global is not exist!\n");       \
            return HI_ERR_DMX_NOT_INIT;                     \
        }                                                   \
    } while (0)

extern HI_VOID DMX_OsrSaveEs(HI_U32 type, HI_U8 *buf, HI_U32 len,HI_U32 chnid);
static HI_VOID DMXOsiOQGetReadWrite(HI_U32 OQId, HI_U32 *BlockWrite, HI_U32 *BlockRead);

HI_VOID CheckChnTimeoutProc(HI_LENGTH_T TimerPara);
DEFINE_TIMER(CheckChnTimeoutTimer, CheckChnTimeoutProc, 0, 0);

static HI_U32 GetQueueLenth(const HI_U32 Read, const HI_U32 Write, const HI_U32 Size)
{
    HI_U32 ret;

    if (Read > Write)
    {
        ret = Size + Write - Read;
    }
    else
    {
        ret = Write - Read;
    }

    return ret;
}

static HI_VOID DMXConfigIPPortRate(HI_U32 PortId)
{
    HI_U8 i = 0;
    HI_U32 IPRate = DMX_DEFAULT_IP_SPEED;
    HI_U32 TSOClk = 150;
    HI_U32 DmxClk;
    HI_UNF_DMX_TSO_PORT_ATTR_S PortAttr;

    DmxClk = DmxHalGetDmxClk();
	
    /*Attention: now we do not support MV300 TSO */
    for ( i = 0 ; i < DMX_TSOPORT_CNT; i++ )
    {
        DMX_OsiTSOPortGetAttr(i, &PortAttr);
        if ( (PortAttr.enTSSource  == PortId + HI_UNF_DMX_PORT_RAM_0))
        {
            switch ( PortAttr.enClk )
            {
                case HI_UNF_DMX_TSO_CLK_100M :
                    TSOClk = 100;
                    break;
                case HI_UNF_DMX_TSO_CLK_150M :
                    TSOClk = 150;
                    break;
                case HI_UNF_DMX_TSO_CLK_1200M :
                    TSOClk = 1200;
                    break;
                case HI_UNF_DMX_TSO_CLK_1500M :
                    TSOClk = 1500;
                    break;
                case HI_UNF_DMX_TSO_CLK_BUTT :
                    HI_ERR_DEMUX("TSO clk invalid\n");
                    break;
            }

            TSOClk = TSOClk/PortAttr.u32ClkDiv;

            if ( !PortAttr.bSerial )
            {
                TSOClk = TSOClk*8;
            }
            /*
            IPClk = DmxClk*8/(IPRate+1) < TSOClk; so IPRate >  DmxClk*8/TSOClk -1 ;
            */
            IPRate =  DmxClk*8/TSOClk ;
			
            /* experiment tune value for decrease ram port dispatch rate */
            IPRate += 3;
        }
    }
	
    DmxHalIPPortRateSet(PortId, IPRate);
}

static HI_VOID DMXCheckBPTsoRamStatus(DMX_Sub_DevInfo_S *DmxInfo, HI_U32 FQId)
{  
    HI_U32 RmaPortID = 0;
    HI_U32  AvaliablePersent = 0;
    DMX_TunerPort_Info_S* Tsi ;

    if (DmxInfo->PortId < DMX_TUNERPORT_CNT)
    {
        Tsi = &g_pDmxDevOsi->TunerPortInfo[DmxInfo->PortId];

        if ( Tsi->BPRamPort )
        {
            RmaPortID = Tsi->BPRamPort - HI_UNF_DMX_PORT_RAM_0; 
            if ( DmxHalGetIPBPStatus(RmaPortID))
            {
                HI_U32 FQ_WPtr, FQ_RPtr, ValidDes, tmp;
                DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;

                DmxHalGetFQWORDx(FQId, DMX_FQ_SZWR_OFFSET, &tmp);
                FQ_WPtr = tmp & 0xffff;
                DmxHalGetFQWORDx(FQId, DMX_FQ_RDVD_OFFSET, &tmp);
                FQ_RPtr = tmp & 0xffff;

                if (FQ_WPtr >= FQ_RPtr)
                {
                    ValidDes = FQ_WPtr - FQ_RPtr;
                }
                else
                {
                    ValidDes = (pDmxDevOsi->DmxFqInfo[FQId].u32FQDepth) - FQ_RPtr + FQ_WPtr;
                }
                AvaliablePersent = ValidDes * 100 / (pDmxDevOsi->DmxFqInfo[FQId].u32FQDepth) ;
                /*BP range: */
                if (AvaliablePersent >= 50)
                {            
                    DmxHalClrIPFqBPStatus(RmaPortID, FQId);
                }
            }
        }    
    }
}

static HI_VOID DMXCheckFQBPStatus(DMX_Sub_DevInfo_S *DmxInfo, HI_U32 FQId)
{
    if (DMX_PORT_MODE_RAM == DmxInfo->PortMode)
    {
        HI_U32 FQ_WPtr, FQ_RPtr, ValidDes, tmp;
        DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;

        if (DmxHalGetIPBPStatus(DmxInfo->PortId))
        {
            DmxHalGetFQWORDx(FQId, DMX_FQ_SZWR_OFFSET, &tmp);
            FQ_WPtr = tmp & 0xffff;
            DmxHalGetFQWORDx(FQId, DMX_FQ_RDVD_OFFSET, &tmp);
            FQ_RPtr = tmp & 0xffff;

            if (FQ_WPtr >= FQ_RPtr)
            {
                ValidDes = FQ_WPtr - FQ_RPtr;
            }
            else
            {
                ValidDes = (pDmxDevOsi->DmxFqInfo[FQId].u32FQDepth) - FQ_RPtr + FQ_WPtr;
            }

            if (ValidDes >= (pDmxDevOsi->DmxFqInfo[FQId].u32FQDepth / 10))
            {
                DmxHalClrIPFqBPStatus(DmxInfo->PortId, FQId);
            }
        }
    }
}

static HI_S32 DmxFlushChannel(HI_U32 ChanId, DMX_FLUSH_TYPE_E FlushType)
{
    HI_S32  ret = HI_SUCCESS;
    HI_U32  i;

    DmxHalFlushChannel(ChanId, FlushType);

    for (i = 0; i < DMX_MAX_FLUSH_WAIT; i++)
    {
        if (DmxHalIsFlushChannelDone())
        {
            break;
        }
    }

    if (DMX_MAX_FLUSH_WAIT == i)
    {
        HI_ERR_DEMUX("flush channel %u failed\n", ChanId);

        ret = HI_FAILURE;
    }

    return ret;
}

static HI_S32 DmxFlushOq(HI_U32 OqId, DMX_OQ_CLEAR_TYPE_E ClearType)
{
    HI_S32  ret = HI_SUCCESS;
    HI_U32  i;

    DmxHalClearOq(OqId, ClearType);

    for (i = 0; i < DMX_MAX_FLUSH_WAIT; i++)
    {
        if (DmxHalIsClearOqDone())
        {
            break;
        }
    }

    if (DMX_MAX_FLUSH_WAIT == i)
    {
        HI_ERR_DEMUX("clear oq %u failed\n", OqId);

        ret = HI_FAILURE;
    }

    return ret;
}

//enable oq recive
//close channel dmx ->  disable oq -> flush dmx channel
//-> clear oq reg infor -> enable oq -> set channel dmx
static HI_S32 DMXOsiEnableOQRecive(HI_U32 ChanId, HI_U32 OqId)
{
    HI_U32  DmxId;
    HI_U32  Word;

    DmxHalGetChannelPlayDmxid(ChanId, &DmxId);
    DmxHalSetChannelPlayDmxid(ChanId, DMX_INVALID_DEMUX_ID);
    DmxHalDisableOQRecive(OqId);

    DmxFlushChannel(ChanId, DMX_FLUSH_TYPE_REC_PLAY);

    DmxHalSetOQWORDx(OqId, DMX_OQ_EOPWR_OFFSET, 0 );
    DmxHalGetOQWORDx(OqId, DMX_OQ_RSV_OFFSET, &Word);
    Word &= 0xffffff00;
    DmxHalSetOQWORDx(OqId, DMX_OQ_RSV_OFFSET, Word);
    DmxHalGetOQWORDx(OqId, DMX_OQ_CTRL_OFFSET, &Word);
    Word &= 0x80;
    DmxHalSetOQWORDx(OqId, DMX_OQ_CTRL_OFFSET, Word);

    DmxHalEnableOQRecive(OqId);
    DmxHalSetChannelPlayDmxid(ChanId, DmxId);

    return 0;
}

static HI_S32 ResetOQ(HI_U32 u32DmxId, DMX_OQ_Info_S *pstOQInfo)
{
    HI_U32 i, u32PvrCtrl;
    HI_U32 u32WriteBlk, u32OqRead, u32OqWrite;
    HI_U32 u32CurrentBlk, u32BufPhyAddr, u32BlkSize, u32BlkNum;
    HI_S32 s32OQEnableStatus;
    FQ_DescInfo_S* FQ_Desc;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo;
    HI_SIZE_T u32LockFlag;

    IsDmxDevInit();

    s32OQEnableStatus = DmxHalGetOQEnableStatus(pstOQInfo->u32OQId);
    DmxHalDisableOQRecive(pstOQInfo->u32OQId);
    DMXOsiOQGetReadWrite(pstOQInfo->u32OQId, &u32OqWrite, &u32OqRead);

    if (!pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId].u32FQVirAddr)
    {
        HI_ERR_DEMUX("fq not valid \n");

        DMXOsiEnableOQRecive(pstOQInfo->u32AttachId,pstOQInfo->u32OQId);
        return HI_FAILURE;
    }

    FqInfo = &pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId];

    spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);

    u32WriteBlk = DmxHalGetFQWritePtr(pstOQInfo->u32FQId);

    u32BlkNum = GetQueueLenth(u32OqRead, u32OqWrite, pstOQInfo->u32OQDepth);
    for (i = 0; i < u32BlkNum; i++)
    {
        u32CurrentBlk = pstOQInfo->u32OQVirAddr + u32OqRead * DMX_OQ_DESC_SIZE;
        u32BufPhyAddr = *(HI_U32 *)u32CurrentBlk;
        u32BlkSize = *(HI_U32 *)(u32CurrentBlk + 4) & 0xffff;
        u32CurrentBlk = pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId].u32FQVirAddr
                        + u32WriteBlk * DMX_FQ_DESC_SIZE;
        FQ_Desc = (FQ_DescInfo_S*)u32CurrentBlk;
        FQ_Desc->start_addr = u32BufPhyAddr;
        FQ_Desc->buflen = u32BlkSize;
        DMXINC(u32WriteBlk, pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId].u32FQDepth);
        DMXINC(u32OqRead, pstOQInfo->u32OQDepth);
    }

    DmxHalGetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_CTRL_OFFSET, &u32PvrCtrl);
    if (u32PvrCtrl & DMX_MASK_BIT_7)
    {
        DmxHalGetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_SADDR_OFFSET, &u32BufPhyAddr);
        DmxHalGetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_SZUS_OFFSET, &u32BlkSize);
        u32BlkSize  >>= 16;
        u32CurrentBlk = pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId].u32FQVirAddr
                        + u32WriteBlk * DMX_FQ_DESC_SIZE;
        FQ_Desc = (FQ_DescInfo_S*)u32CurrentBlk;
        FQ_Desc->start_addr = u32BufPhyAddr;
        FQ_Desc->buflen = u32BlkSize;

        DMXINC(u32WriteBlk, pDmxDevOsi->DmxFqInfo[pstOQInfo->u32FQId].u32FQDepth);
    }

    DmxHalSetFQWritePtr(pstOQInfo->u32FQId, u32WriteBlk);

    DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[u32DmxId], pstOQInfo->u32FQId); //CLR BP STATUS

    spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);

    pstOQInfo->u32ProcsBlk = 0;
    pstOQInfo->u32ProcsOffset = 0;
    pstOQInfo->u32ReleaseBlk = 0;
    pstOQInfo->u32ReleaseOffset = 0;

    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_RSV_OFFSET, 0);
    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_CTRL_OFFSET, 0);
    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_EOPWR_OFFSET, 0 );
    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_SZUS_OFFSET, 0);
    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_SADDR_OFFSET, 0);
    DmxHalSetOQWORDx(pstOQInfo->u32OQId, DMX_OQ_RDWR_OFFSET, 0);

    //reset oq ts counter
    DmxHalResetOqCounter(pstOQInfo->u32OQId);
    if (s32OQEnableStatus)
    {
        DMXOsiEnableOQRecive(pstOQInfo->u32AttachId,pstOQInfo->u32OQId);
    }

    return HI_SUCCESS;
}

static HI_VOID TsBufferConfig(const HI_U32 PortId, const HI_BOOL Enable, const HI_U32 DescPhyAddr, const HI_U32 DescDepth)
{
    DmxHalIPPortDescSet(PortId, DescPhyAddr, DescDepth);

    DMXConfigIPPortRate(PortId);

    DmxHalIPPortSetOutInt(PortId, Enable);

    DmxHalIPPortStartStream(PortId, Enable);
}

static HI_U32 DmxFqIdAcquire(HI_U32 MinFqId, HI_U32 MaxFqId)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = DmxMgr->DmxFqInfo;
    HI_U32          FqId    = DMX_INVALID_FQ_ID;
    HI_U32          i;
    HI_SIZE_T       u32LockFlag;

    for (i = MinFqId; i < MaxFqId && i < DMX_FQ_CNT; i++)
    {
        spin_lock_irqsave(&FqInfo[i].LockFq, u32LockFlag);
        if (0 == FqInfo[i].u32IsUsed)
        {
            FqInfo[i].u32IsUsed = 1;

            FqId = i;
        }
        spin_unlock_irqrestore(&FqInfo[i].LockFq, u32LockFlag);

        if (DMX_INVALID_FQ_ID != FqId)
        {
            break;
        }
    }

    return FqId;
}

static HI_VOID DmxFqIdRelease(HI_U32 FqId)
{
    HI_SIZE_T       u32LockFlag;
    if (FqId < DMX_FQ_CNT)
    {
        DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
        DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[FqId];
        spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);
        FqInfo->u32IsUsed = 0;
        spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);
    }
}

static HI_VOID DmxFqStart(HI_U32 FqId)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[FqId];
    FQ_DescInfo_S  *FqDesc  = (FQ_DescInfo_S*)FqInfo->u32FQVirAddr;
    HI_U32          PhyAddr = FqInfo->u32BufPhyAddr;
    HI_U32          i;

    for (i = 0; i < FqInfo->u32FQDepth - 1; i++)
    {
        FqDesc->start_addr  = PhyAddr;
        FqDesc->buflen      = FqInfo->u32BlockSize;

        PhyAddr += (FqInfo->u32BlockSize + DMX_BUF_INTERVAL);

        ++FqDesc;
    }

    FqDesc->start_addr  = 0;
    FqDesc->buflen      = 0;

    DmxHalSetFQWORDx(FqId, DMX_FQ_CTRL_OFFSET, DMX_FQ_ALOVF_CNT << 24);
    DmxHalSetFQWORDx(FqId, DMX_FQ_RDVD_OFFSET, 0);
    DmxHalSetFQWORDx(FqId, DMX_FQ_SZWR_OFFSET, (FqInfo->u32FQDepth << 16) | ((FqInfo->u32FQDepth - 1) & 0xffff));
    DmxHalSetFQWORDx(FqId, DMX_FQ_START_OFFSET, FqInfo->u32FQPhyAddr);

    FqInfo->FqOverflowCount = 0;
    DmxHalFQClearOverflowInt(FqId);
    DmxHalFQSetOverflowInt(FqId, DMX_ENABLE);
    
    DmxHalFQEnableRecive(FqId, DMX_ENABLE);
}

static HI_VOID DmxFqStop(HI_U32 FqId)
{
    DmxHalFQEnableRecive(FqId, DMX_DISABLE);

    DmxHalFQSetOverflowInt(FqId, DMX_DISABLE);
    DmxHalFQClearOverflowInt(FqId);

    DmxHalSetFQWORDx(FqId, DMX_FQ_CTRL_OFFSET, 0);
    DmxHalSetFQWORDx(FqId, DMX_FQ_RDVD_OFFSET, 0);
    DmxHalSetFQWORDx(FqId, DMX_FQ_SZWR_OFFSET, 0);
    DmxHalSetFQWORDx(FqId, DMX_FQ_START_OFFSET, 0);
}

static HI_VOID DmxFqCheckOverflowInt(HI_U32 FqId)
{
    if (!DmxHalFQIsEnableOverflowInt(FqId))
    {
        DmxHalFQSetOverflowInt(FqId, DMX_ENABLE);
    }
}

static HI_VOID DmxOqStart(HI_U32 OqId)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[OqId];

    memset((HI_VOID*)OqInfo->u32OQVirAddr, 0, OqInfo->u32OQDepth * DMX_OQ_DESC_SIZE);

    OqInfo->u32ProcsBlk         = 0;
    OqInfo->u32ProcsOffset      = 0;
    OqInfo->u32ReleaseBlk       = 0;
    OqInfo->u32ReleaseOffset    = 0;

    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_RSV_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_CTRL_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_EOPWR_OFFSET, 0 );
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_SZUS_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_SADDR_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_RDWR_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_CFG_OFFSET, DMX_OQ_OUTINT_CNT << 26 |
                     OqInfo->u32OQDepth << 16 | (DMX_OQ_ALOVF_CNT & 0xff) << 8 | OqInfo->u32FQId);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_START_OFFSET, OqInfo->u32OQPhyAddr);

    DmxHalResetOqCounter(OqInfo->u32OQId);

    DmxHalEnableOQRecive(OqInfo->u32OQId);
}

static HI_VOID DmxOqStop(HI_U32 OqId)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[OqId];

    DmxHalOQEnableOutputInt(OqInfo->u32OQId, HI_FALSE);

    DmxHalDisableOQRecive(OqInfo->u32OQId);

    DmxHalResetOqCounter(OqInfo->u32OQId);

    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_RSV_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_CTRL_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_EOPWR_OFFSET, 0 );
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_SZUS_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_SADDR_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_RDWR_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_CFG_OFFSET, 0);
    DmxHalSetOQWORDx(OqInfo->u32OQId, DMX_OQ_START_OFFSET, 0);
}

 HI_S32 DmxOQRelease(HI_U32 FqId, HI_U32 OqId, HI_U32 PhyAddr, HI_U32 len)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[FqId];
    DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[OqId];
    OQ_DescInfo_S  *OqDesc;
    FQ_DescInfo_S  *FqDesc;
    HI_U32          OqRead;
    HI_U32          FqWrite;
    HI_SIZE_T       u32LockFlag;

    DMXOsiOQGetReadWrite(OqInfo->u32OQId, HI_NULL, &OqRead);

    OqDesc = (OQ_DescInfo_S*)(OqInfo->u32OQVirAddr + OqRead * DMX_OQ_DESC_SIZE);

    if ((DMX_OQ_MODE_REC == OqInfo->enOQBufMode) || (DMX_OQ_MODE_SCD == OqInfo->enOQBufMode))
    {
        HI_U32 DataLen = OqDesc->pvrctrl_datalen & 0xffff;

        if ((PhyAddr != OqDesc->start_addr) || (DataLen != len))
        {
            HI_ERR_DEMUX("buf %d release wrong data block\n", OqInfo->u32OQId);

            return HI_ERR_DMX_INVALID_PARA;
        }
        /*Delete the following code, because:
        Customers demands that rec data can be acquire several times then release them one by one.
        so we changed the DMX_DRV_REC_AcquireRecData and use the OqInfo->u32ProcsBlk to judge wether there
        have data in Rec buf. and ,every time after acquired a block of rec data (47K),
        the OqInfo->u32ProcsBlk++ , so .at here ,it can not  be added again*/
        DMXINC(OqInfo->u32ProcsBlk, OqInfo->u32OQDepth);
        OqInfo->u32ProcsOffset = 0;
    }

    DMXINC(OqRead, OqInfo->u32OQDepth);

    DmxHalSetOQReadPtr(OqInfo->u32OQId, OqRead);
    spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);

    FqWrite = DmxHalGetFQWritePtr(FqId);

    FqDesc = (FQ_DescInfo_S*)(FqInfo->u32FQVirAddr + FqWrite * DMX_FQ_DESC_SIZE);

    FqDesc->start_addr  = OqDesc->start_addr;
    FqDesc->buflen      = OqDesc->cactrl_buflen & 0xffff;

    DMXINC(FqWrite, FqInfo->u32FQDepth);

    DmxHalSetFQWritePtr(FqId, FqWrite);

    spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);

    DmxFqCheckOverflowInt(FqId);

    return HI_SUCCESS;
}

 HI_S32 DmxOQReleaseByBlockCnt(HI_U32 FqId, HI_U32 OqId, HI_U32 BlockCnt)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[FqId];
    DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[OqId];
    OQ_DescInfo_S  *OqDesc;
    FQ_DescInfo_S  *FqDesc;
    HI_U32          OqRead;
    HI_U32          FqWrite;
    HI_SIZE_T       u32LockFlag;
    HI_U32 i = 0;

    DMXOsiOQGetReadWrite(OqInfo->u32OQId, HI_NULL, &OqRead);
    FqWrite = DmxHalGetFQWritePtr(FqId);

    for ( i = 0 ; i < BlockCnt ; i++ )
    {
        OqDesc = (OQ_DescInfo_S*)(OqInfo->u32OQVirAddr + OqRead * DMX_OQ_DESC_SIZE);
        FqDesc = (FQ_DescInfo_S*)(FqInfo->u32FQVirAddr + FqWrite * DMX_FQ_DESC_SIZE);
        FqDesc->start_addr  = OqDesc->start_addr;
        FqDesc->buflen      = OqDesc->cactrl_buflen & 0xffff;
        DMXINC(OqRead, OqInfo->u32OQDepth);
        DMXINC(FqWrite, FqInfo->u32FQDepth);
    }

    DmxHalSetOQReadPtr(OqInfo->u32OQId, OqRead);
    spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);
    DmxHalSetFQWritePtr(FqId, FqWrite);
    spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);

    DmxFqCheckOverflowInt(FqId);
    
    return HI_SUCCESS;
}
 
static HI_VOID DmxSetChannel(HI_U32 ChanId)
{
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
        DmxHalSetChannelPlayBufId(ChanId, ChanInfo->ChanOqId);
    }

    if ((HI_UNF_DMX_CHAN_TYPE_SEC == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_ECM_EMM == ChanInfo->ChanType))
    {
        DmxHalSetChannelDataType(ChanId, DMX_CHAN_DATA_TYPE_SEC);
    }
    else
    {
        DmxHalSetChannelDataType(ChanId, DMX_CHAN_DATA_TYPE_PES);
    }

    DmxHalSetChannelPusiCtrl(ChanId, DMX_DISABLE);

    if (HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType)
    {
        DmxHalSetChannelAttr(ChanId, DMX_CH_AUDIO);
    }
    else  if (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType)
    {
        DmxHalSetChannelAttr(ChanId, DMX_CH_VIDEO);
    }
    else if (HI_UNF_DMX_CHAN_TYPE_PES == ChanInfo->ChanType)
    {
        DmxHalSetChannelAttr(ChanId, DMX_CH_PES);
    }
    else
    {
        DmxHalSetChannelAttr(ChanId, DMX_CH_GENERAL);
        if (HI_UNF_DMX_CHAN_TYPE_POST == ChanInfo->ChanType)
        {
            DmxHalSetChannelTsPostMode(ChanId, DMX_ENABLE);
            DmxHalSetChannelTsPostThresh(ChanId, DMX_DEFAULT_POST_TH);
            DmxHalSetChannelPusiCtrl(ChanId, DMX_ENABLE);    // receive the ts packet do not have pusi
        }
    }

    DmxHalSetChannelCRCMode(ChanId, ChanInfo->ChanCrcMode);
    DmxHalSetChannelAFMode(ChanId, DMX_AF_DISCARD);
    DmxHalSetChannelCCDiscon(ChanId, DMX_DISABLE);
    DmxHalSetChannelCCRepeatCtrl(ChanId, DMX_ENABLE);
    DmxHalSetChannelPid(ChanId, ChanInfo->ChanPid);
}

static HI_VOID DmxRecFlush(HI_U32 RecId)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    HI_U32          DmxId   = RecInfo->DmxId;
    HI_U32          i;

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &DmxMgr->DmxChanInfo[i];

        if (ChanInfo->DmxId == DmxId)
        {
            if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC & ChanInfo->ChanOutMode)
            {
                DmxFlushChannel(ChanInfo->ChanId, DMX_FLUSH_TYPE_REC);
            }
        }
    }

    DmxFlushOq(RecInfo->RecOqId, DMX_OQ_CLEAR_TYPE_REC);

    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType)
    {
        DmxHalFlushScdBuf(RecInfo->ScdId);
        DmxHalClrScdCnt(RecInfo->ScdId);
        DmxFlushOq(RecInfo->ScdOqId, DMX_OQ_CLEAR_TYPE_SCD);
    }
}

static HI_S32 ParsePesHeader(
        DMX_ChanInfo_S *pChanInfo,
        HI_U32          u32ParserAddr,
        HI_U32          PESLength,
        HI_U32         *pPESHeadLen,
        Disp_Control_t *pDispController
    )
{
    HI_U8 *pData;
    HI_U32 PTSFlag;
    HI_U32 PesHeaderLength;

    HI_U32 PTSLow, StreamId;

    pData = (HI_U8*)(u32ParserAddr);
    if ((pData[0] != 0x00) || (pData[1] != 0x00) || (pData[2] != 0x01))
    {
        HI_WARN_DEMUX("pes start byte =0x%x%x%x\n", pData[2], pData[1], pData[0]);
        return HI_FAILURE;
    }

    /* Get StreamId */
    StreamId = pData[3];

    //del pes header according to 13818-1
    if ((StreamId != 0xbc) //1011 1100  1   program_stream_map
        && (StreamId != 0xbe) //1011 1110       padding_stream
        && (StreamId != 0xbf) //1011 1111   3   private_stream_2
        && (StreamId != 0xf0) //1111 0000   3   ECM_stream
        && (StreamId != 0xf1) //1111 0001   3   EMM_stream
        && (StreamId != 0xff) //1111 1111   4   program_stream_directory
        && (StreamId != 0xf2) //1111 0010   5   ITU-T Rec. H.222.0 | ISO/IEC 13818-1 Annex A or ISO/IEC 13818-6_DSMCC_stream
        && (StreamId != 0xf8)) //1111 1000  6   ITU-T Rec. H.222.1 type E
    {
        /*      if (PTS_DTS_flags =='10' ) {
            '0010'  4   bslbf
            PTS [32..30]    3   bslbf
            marker_bit  1   bslbf
            PTS [29..15]    15  bslbf
            marker_bit  1   bslbf
            PTS [14..0] 15  bslbf
            marker_bit  1   bslbf
        }
                if (PTS_DTS_flags =='11' )  {
            '0011'
            PTS [32..30]
            marker_bit
            PTS [29..15]
            marker_bit
            PTS [14..0]
            marker_bit
            '0001'
            DTS [32..30]
            marker_bit
            DTS [29..15]
            marker_bit
            DTS [14..0]
            marker_bit
        }
         */
        PTSFlag = (pData[7] & 0x80) >> 7;
        PesHeaderLength = pData[8];

        *pPESHeadLen = DMX_PES_HEADER_LENGTH + PesHeaderLength;

        if (PTSFlag && (PESLength > *pPESHeadLen))
        {
            PTSLow = (((pData[9] & 0x06) >> 1) << 30)
                     | ((pData[10]) << 22)
                     | (((pData[11] & 0xfe) >> 1) << 15)
                     | ((pData[12]) << 7)
                     | (((pData[13] & 0xfe)) >> 1);
            if (pData[9] & 0x08)
            {
                pChanInfo->LastPts = (PTSLow / 90) + 0x2D82D83; //(1 << 32) / 90 ,使用科学计算器计算结果是0x2D82D83 (0x2D82D83);
            }
            else
            {
                pChanInfo->LastPts = (PTSLow / 90);
            }
        }
        else
        {
            pChanInfo->LastPts = INVALID_PTS;
        }
        //add by yangchun 201302234
        if ((0xee == StreamId) && ( PESLength > 24))
        {
            if( (0x70 == pData[13]) && (0x76 == pData[14]) && (0x72 == pData[15]) && (0x63 == pData[16]))
            {
                if( (0x75 == pData[17]) && (0x72 == pData[18]) && (0x74 == pData[19]) && (0x6d == pData[20]))
                {
                    pDispController->u32DispTime = *(HI_U32 *)&pData[21];
                    pDispController->u32DispEnableFlag = *(HI_U32 *)&pData[25];
                    pDispController->u32DispFrameDistance = *(HI_U32 *)&pData[29];
                    pDispController->u32DistanceBeforeFirstFrame = *(HI_U32 *)&pData[33];
                    pDispController->u32GopNum = *(HI_U32 *)&pData[37];
                    *pPESHeadLen = 184;
                    return -2;
                }
            }
        }

        return HI_SUCCESS;
    }
    else
    {
        HI_ERR_DEMUX("streamID:%x did not del the pes header!\n", StreamId);
        return HI_FAILURE;
    }
}

static HI_S32 DMXCheckBuffer(  HI_U32 u32BufStartAddr,
                               HI_U32 u32BufLen,
                               HI_U32 u32Offset)
{
    HI_U32 u32SecLen, u32PhyAddr, u32BufLenTmp;

    u32BufLenTmp = u32BufLen - u32Offset;
    while (u32BufLenTmp > 3)
    {
        u32SecLen  = 3;
        u32PhyAddr = u32BufStartAddr + u32Offset;
        if (u32BufLen < u32Offset)
        {
            HI_ERR_DEMUX("invalide offset,u32BufLen:%d,u32Offset:%d!\n",u32BufLen,u32Offset);
            return -1;
        }

        u32SecLen += (((*(HI_U8 *)(u32PhyAddr + 1)) & 0xF) << 8);
        u32SecLen += *(HI_U8 *)(u32PhyAddr + 2);
        if ((u32SecLen > u32BufLenTmp) || (u32SecLen > DMX_MAX_SEC_LEN))
        {
            HI_ERR_DEMUX("invalid u32SecLen, u32SecLen:%d,u32BufLenTmp:%d!\n",u32SecLen,u32BufLenTmp);
            return -1;
        }

        u32Offset    += u32SecLen;
        u32BufLenTmp -= u32SecLen;
    }

    return 0;
}

HI_U32 GetSectionLength(HI_U32 u32BufStartAddr, HI_U32 u32BufLen, HI_U32 u32Offset)
{
    HI_U32 u32PacketLen = 0;
    HI_U32 u32BufAddr, u32EndAddr;

    if (0 == u32BufStartAddr)
    {
        HI_ERR_DEMUX("Buffer start addr is 0!\n");
        return 0;
    }

    if (0 == u32BufLen)
    {
        HI_ERR_DEMUX("Buffer len is 0!\n");
        return 0;
    }

    if (u32Offset >= u32BufLen)
    {
        HI_ERR_DEMUX("u32Offset is larger than buflen,%x!\n", u32Offset);
        return 0;
    }

    if (DMXCheckBuffer(u32BufStartAddr, u32BufLen, u32Offset) != 0)
    {
        return 0;
    }

    if (u32BufLen >= 3)
    {
        u32PacketLen = 3;
        u32BufAddr = u32BufStartAddr + u32Offset;
        u32EndAddr = u32BufStartAddr + u32BufLen;
        if (u32BufAddr >= u32EndAddr)
        {
            HI_ERR_DEMUX("u32Offset is larger than buflen!\n");
            return 0;
        }

        u32PacketLen += (((*(HI_U8 *)(u32BufAddr + 1)) & 0xF) << 8);
        if (u32BufAddr >= u32EndAddr)
        {
            HI_ERR_DEMUX("u32Offset is larger than buflen!\n");
            return 0;
        }

        u32PacketLen += *(HI_U8 *)(u32BufAddr + 2);
        if ((u32BufLen - u32Offset) < u32PacketLen)
        {
            u32PacketLen = 0;
        }
    }

    return u32PacketLen;
}

static HI_S32 RamPortClean(HI_U32 PortId)
{
    HI_U32              i;
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];

    for (i = 0; i < DMX_CNT; i++)
    {
        if (DMX_PORT_MODE_TUNER == g_pDmxDevOsi->SubDevInfo[i].PortMode)
        {
            continue;
        }

        if (PortId == g_pDmxDevOsi->SubDevInfo[i].PortId)
        {
            /* Select the dmx port to invalid, to flush remain data*/
            DmxHalSetDemuxPortId(i, DMX_PORT_MODE_BUTT, DMX_INVALID_PORT_ID);
        }
    }

    DmxHalSetFlushIPPort(PortId);
    DmxHalClrIPBPStatus(PortId);

    udelay(10);

    for (i = 0; i < DMX_CNT; i++)
    {
        if (DMX_PORT_MODE_TUNER == g_pDmxDevOsi->SubDevInfo[i].PortMode)
        {
            continue;
        }

        if (PortId == g_pDmxDevOsi->SubDevInfo[i].PortId)
        {
            /* Select the dmx port to set back*/
            DmxHalSetDemuxPortId(i, DMX_PORT_MODE_RAM, PortId);
        }
    }

    PortInfo->Read  = 0;
    PortInfo->Write = 0;

    PortInfo->DescWrite     = 0;
    PortInfo->DescCurrAddr  = (HI_U32*)PortInfo->DescKerAddr;

    PortInfo->GetCount      = 0;
    PortInfo->GetValidCount = 0;
    PortInfo->PutCount      = 0;

    return HI_SUCCESS;
}

/*
1. check the avaliable space in ts buffer head part (Head) and tail part (Tail)
2. if Tail is enough for ReqLen, return Tail sapce, otherwise ,retuen Head space.
3. if both not enough ,return
PortInfo->ReqAddr   = 0;
PortInfo->ReqLen    = 0;
*/
static HI_VOID GetIPBufLen(const HI_U32 PortId, const HI_U32 ReqLen)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];
    HI_U32              Head;/*the avaliable space in ts buffer head part*/
    HI_U32              Tail;/*the avaliable space in ts buffer tail part*/

    PortInfo->ReqAddr   = 0;
    PortInfo->ReqLen    = 0;

    if (PortInfo->Read < PortInfo->Write)
    {
        Head = PortInfo->Read;
        Tail = PortInfo->BufSize - PortInfo->Write;

        Head = (Head <= DMX_TS_BUFFER_GAP) ? 0 : (Head - DMX_TS_BUFFER_GAP);
        Tail = (Tail <= DMX_TS_BUFFER_GAP) ? 0 : (Tail - DMX_TS_BUFFER_GAP);

        if (Tail >= ReqLen)
        {
            PortInfo->ReqAddr = PortInfo->PhyAddr + PortInfo->Write;
        }
        else if (Head >= ReqLen)
        {
            PortInfo->ReqAddr = PortInfo->PhyAddr;
        }
    }
    else if (PortInfo->Read > PortInfo->Write)
    {
        Head = PortInfo->Read - PortInfo->Write;
        if (Head > DMX_TS_BUFFER_GAP)
        {
            Head -= DMX_TS_BUFFER_GAP;

            if (Head >= ReqLen)
            {
                PortInfo->ReqAddr = PortInfo->PhyAddr + PortInfo->Write;
            }
        }
    }
    else
    {
        if (0 == PortInfo->Read)
        {
            PortInfo->ReqAddr = PortInfo->PhyAddr;
        }
    }

    if (PortInfo->ReqAddr)
    {
        PortInfo->ReqLen = ReqLen;
    }
}

/**
1. check wether TS buffer have enough space for user to get (u32DataSize)
2. check wether Desc queue have enough free Desc to description the (u32DataSize) TS buffer ,
each Desc can descript 64K block of buffer.
 */
static HI_BOOL CheckIPBuf(const HI_U32 PortId, const HI_U32 ReqLen)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];
    HI_U32              DescRead;
    HI_U32              AddDesc;
    HI_U32              FreeDesc;
    HI_SIZE_T           LockFlag;
    /*the number of Desc should add into the Desc queue */
    AddDesc  = ReqLen / DMX_MAX_IP_BLOCK_SIZE + 2;

    DescRead = DmxHalIPPortDescGetRead(PortId);

    FreeDesc = PortInfo->DescDepth - GetQueueLenth(DescRead, PortInfo->DescWrite, PortInfo->DescDepth);
    if (AddDesc >= FreeDesc)
    {
        HI_WARN_DEMUX("no free desc. add=0x%x, free=0x%x, r=0x%x, w=0x%x, Size=0x%x\n",
            AddDesc, FreeDesc, DescRead, PortInfo->DescWrite, ReqLen);

        return HI_TRUE;
    }

    spin_lock_irqsave(&PortInfo->LockRamPort, LockFlag);
/*
call GetIPBufLen
1. check the avaliable space in ts buffer head part (Head) and tail part (Tail)
2. if Tail is enough for ReqLen, return Tail sapce, otherwise ,retuen Head space.
3. if both not enough ,return
PortInfo->ReqAddr   = 0;
PortInfo->ReqLen    = 0;
*/
    GetIPBufLen(PortId, ReqLen);
    spin_unlock_irqrestore(&PortInfo->LockRamPort, LockFlag);

    if (0 == PortInfo->ReqAddr)
    {
        HI_WARN_DEMUX("buffer not enough, r=0x%x, w=0x%x, size=0x%x\n",
            PortInfo->Read, PortInfo->Write, PortInfo->BufSize);

        return HI_TRUE;
    }

    return HI_FALSE;
}

HI_S32 DMX_OsiResetChannel(HI_U32 ChanId, DMX_FLUSH_TYPE_E eFlushType)
{
    DMX_DEV_OSI_S  *pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo;
    DMX_OQ_Info_S  *OqInfo;
    HI_S32 s32OQEnableStatus;

    IsDmxDevInit();
    pDmxDevOsi = g_pDmxDevOsi;

    ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    OqInfo      = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    if (DMX_FLUSH_TYPE_REC & eFlushType)
    {
        DmxFlushChannel(ChanId, DMX_FLUSH_TYPE_REC);

        /*if only close rec channel and flush rec*/
        if (DMX_FLUSH_TYPE_REC == eFlushType)
        {
            return HI_SUCCESS;
        }
    }

    s32OQEnableStatus = DmxHalGetOQEnableStatus(ChanInfo->ChanOqId);
    DmxHalDisableOQRecive(ChanInfo->ChanOqId);
    DmxFlushChannel(ChanId, eFlushType);
    DmxFlushOq(ChanInfo->ChanOqId, DMX_OQ_CLEAR_TYPE_PLAY);

    if(s32OQEnableStatus)
    {
        DmxHalEnableOQRecive(ChanInfo->ChanOqId);
    }

    ResetOQ(ChanInfo->DmxId, OqInfo);

    DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[ChanInfo->DmxId], OqInfo->u32FQId);

    //DMXCheckOQEnableStatus(pChanInfo->stChBuf.u32OQId, pChanInfo->stChBuf.u32OQDepth);
    return HI_SUCCESS;
}

/**
 \brief
 \attention

 \param[in] u32Read
 \param[in] u32Write
 \param[in] IsAddrValid

 \retval none
 \return HI_SUCCESS
 \return HI_FAILURE


 \see
 \li ::
 */
static HI_S32 IsAddrValid( HI_U32 u32Read, HI_U32 u32Write, HI_U32 u32Addr)
{
    if (u32Read == u32Write)
    {
        HI_WARN_DEMUX("Read == Write,No Data, R=0x%x, W=0x%x, J=0x%x!\n", u32Read, u32Write, u32Addr);
        return HI_FAILURE;
    }

    if (u32Read < u32Write)
    {
        if ((u32Read < u32Addr) && (u32Write >= u32Addr))
        {
            return HI_SUCCESS;
        }
        else
        {
            HI_ERR_DEMUX("Addr is out of range, R=0x%x, W=0x%x, J=0x%x!\n", u32Read, u32Write, u32Addr);
            return HI_FAILURE;
        }
    }
    else
    {
        if ((u32Read < u32Addr) || (u32Write >= u32Addr))
        {
            return HI_SUCCESS;
        }
        else
        {
            HI_ERR_DEMUX("Addr is out of range, R=0x%x, W=0x%x, J=0x%x!\n", u32Read, u32Write, u32Addr);
            return HI_FAILURE;
        }
    }
}

static HI_U32 DMXOsiGetCurEopaddr(DMX_ChanInfo_S *ChanInfo);
static HI_S32 DMXOsiFindPes(DMX_ChanInfo_S * pChanInfo,
                            DMX_UserMsg_S* psMsgList,
                            HI_U32         u32AcqNum,
                            HI_U32 *       pu32AcqedNum);
static HI_U32 GetPesChnFlag(DMX_ChanInfo_S * pChanInfo)
{
#if 0
    HI_U32 u32CurrentBlk,u32BufPhyAddr,u32PvrCtrl;
    HI_U8 *pu8BufVirAddr;
    HI_U32 u32WriteBlk,u32ReadBlk;
    OQ_DescInfo_S* oq_desc;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    HI_U32 u32OQlen,u32ValidLen = 0;
    HI_U32 u32PesLen = DMX_PES_MAX_SIZE;
    HI_S32 s32PesStartPos = -1;
    HI_U32 i;
    HI_U32 u32DropTimes = 0;

    DMXOsiOQGetReadWrite(pChanInfo->stChBuf.u32OQId, &u32WriteBlk, &u32ReadBlk);

    u32OQlen = GetQueueLenth(u32ReadBlk,u32WriteBlk,pChanInfo->stChBuf.u32OQDepth);
    for ( i = 0 ; i <  u32OQlen; i++ )
    {
        u32CurrentBlk = pChanInfo->stChBuf.u32OQVirAddr + u32ReadBlk * DMX_OQ_DESC_SIZE;
        oq_desc = (OQ_DescInfo_S*)u32CurrentBlk;
        u32BufPhyAddr = oq_desc->start_addr;
        u32PvrCtrl = oq_desc->pvrctrl_datalen;
        u32ValidLen++;
        if (u32PvrCtrl & DMX_MASK_BIT_18)//sop
        {
            if (s32PesStartPos > 0)
            {
                return 1;//reach 2nd sop
            }
            else if (u32ValidLen > 1)
            {
                return 1;//last pes end
            }
            s32PesStartPos = i;
            u32ValidLen = 1;
            pu8BufVirAddr = (HI_U8 *)(u32BufPhyAddr
            - pDmxDevOsi->DmxFqInfo[pChanInfo->stChBuf.u32FQId].u32BufPhyAddr
            + pDmxDevOsi->DmxFqInfo[pChanInfo->stChBuf.u32FQId].u32BufVirAddr);
            u32PesLen = ((HI_U32)pu8BufVirAddr[4] << 8) | pu8BufVirAddr[5];
            if (u32PesLen)
            {
                u32PesLen += 6;
            }
            else
            {
                u32PesLen = DMX_PES_MAX_SIZE;
            }
        }
        else if (u32PvrCtrl & DMX_MASK_BIT_19)//drop
        {
            if (s32PesStartPos > 0)//reach 2nd sop
            {
                s32PesStartPos= -1;
            }
            u32PesLen = DMX_PES_MAX_SIZE;
            u32ValidLen = 0;
            u32DropTimes++;
            if (u32DropTimes > 10)
            {
                return 1;
            }
        }
        if (u32ValidLen * DMX_FQ_COM_BLKSIZE >= u32PesLen)
        {
            return 1;
        }
        DMXINC(u32ReadBlk, pChanInfo->stChBuf.u32OQDepth);
    }

    return 0;
#else
    DMX_ChanInfo_S stTmpChanInfo;
    HI_U32 u32AcqedNum;
    HI_U32 u32CurDropCnt;
    DMX_UserMsg_S stMsgList[16];
    HI_S32 s32Ret;
    u32CurDropCnt = s_u32DMXDropCnt[pChanInfo->ChanId];
    memcpy(&stTmpChanInfo,pChanInfo,sizeof(DMX_ChanInfo_S));
    pChanInfo->u32ChnResetLock = 1;
    s32Ret = DMXOsiFindPes(&stTmpChanInfo,stMsgList,16, &u32AcqedNum);
    if (u32CurDropCnt != s_u32DMXDropCnt[pChanInfo->ChanId])//drop occurs
    {
        pChanInfo->u32PesBlkCnt   = 0;
        pChanInfo->u32PesLength   = 0;
        pChanInfo->u32ProcsOffset = 0;
    }
    pChanInfo->u32ChnResetLock = 0;
    if (HI_SUCCESS == s32Ret)
    {
        return 1;
    }
    return 0;
#endif
}

HI_U32 DMX_OsiGetChnDataFlag(HI_U32 ChanId)
{
    HI_U32 u32OqId, u32OqRead, u32OqWrite, u32CurProcsBlk;
    HI_U32 u32LastEopAddr;
    DMX_DEV_OSI_S  *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo;
    DMX_OQ_Info_S  *OqInfo;
    HI_U32 u32CurrentBlk, u32DataLen;
    OQ_DescInfo_S* oq_dsc;

    ChanInfo = &pDmxDevOsi->DmxChanInfo[ChanId];
    if (ChanInfo->DmxId >= DMX_CNT)
    {
        return 0;
    }

    if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
    {
        return 0;   // do not receive vid and aud channel
    }

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY != (ChanInfo->ChanOutMode & HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY))
    {
        return 0;   // do not receive rec channel
    }

    OqInfo = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    u32OqId = ChanInfo->ChanOqId;
    u32CurProcsBlk = OqInfo->u32ProcsBlk;
    DMXOsiOQGetReadWrite(u32OqId, &u32OqWrite, &u32OqRead);

    u32LastEopAddr = DMXOsiGetCurEopaddr(ChanInfo);

    if (u32OqRead != u32OqWrite)
    {
        if (HI_UNF_DMX_CHAN_TYPE_PES == ChanInfo->ChanType) //pes channel just care about read and write ptr
        {
            if (GetPesChnFlag(ChanInfo))
            {
                return 1;
            }
            return 0;
        }

        if (u32OqWrite != u32CurProcsBlk)
        {
            DMXINC(u32CurProcsBlk, OqInfo->u32OQDepth);
            if (u32OqWrite == u32CurProcsBlk)
            {
                u32CurrentBlk = OqInfo->u32OQVirAddr
                                + OqInfo->u32ProcsBlk * DMX_OQ_DESC_SIZE;
                oq_dsc = (OQ_DescInfo_S*)u32CurrentBlk;
                if (!oq_dsc)
                {
                    HI_ERR_DEMUX("DMXOsiGetSecNum oqdsc error\n");
                    return 0;
                }

                u32DataLen = oq_dsc->pvrctrl_datalen & 0xffff;
                if (OqInfo->u32ProcsOffset < u32DataLen)
                {
                    return 1;
                }
                else if (u32LastEopAddr)
                {
                    return 1;
                }
            }
            else
            {
                return 1;
            }
        }
    }

    if (HI_UNF_DMX_CHAN_TYPE_PES != ChanInfo->ChanType)
    {
        if ((u32LastEopAddr != OqInfo->u32ProcsOffset) && (u32LastEopAddr != 0))
        {
            return 1;
        }
    }

    return 0;
}

static HI_VOID DMXOsiOQGetReadWrite(HI_U32 OQId, HI_U32 *BlockWrite, HI_U32 *BlockRead)
{
    HI_U32 Value;

    DmxHalGetOQWORDx(OQId, DMX_OQ_RDWR_OFFSET, &Value);

    if (BlockWrite)
    {
        *BlockWrite = Value & DMX_OQ_DEPTH;
    }

    if (BlockRead)
    {
        *BlockRead = (Value >> 16) & DMX_OQ_DEPTH;
    }
}

static HI_S32 DMXOsiOQGetBbsAddrSize(HI_U32 OqId, HI_U32 OqWrite, HI_U32 *BbsAddr, HI_U32 *Size, HI_U32 *PvrCtrl)
{
    HI_S32  ret= HI_FAILURE;
    HI_U32  Value;
    HI_U32  CurrWrite;
    HI_U32  PhyAddr;
    HI_U32  len;

    *BbsAddr    = 0;
    *Size       = 0;
    *PvrCtrl    = 0;

    DmxHalGetOQWORDx(OqId, DMX_OQ_CTRL_OFFSET, &Value);

    Value &= 0xff;

    DmxHalGetOQWORDx(OqId, DMX_OQ_SADDR_OFFSET, &PhyAddr);

    DmxHalGetOQWORDx(OqId, DMX_OQ_EOPWR_OFFSET, &len);

    len &= 0xffff;

    DmxHalGetOQWORDx(OqId, DMX_OQ_RDWR_OFFSET, &CurrWrite);

    CurrWrite &= DMX_OQ_DEPTH;

    if ((OqWrite == CurrWrite) && (Value & DMX_MASK_BIT_7) && PhyAddr && len)
    {
        *BbsAddr    = PhyAddr;
        *Size       = len;
        *PvrCtrl    = Value;

        ret = HI_SUCCESS;
    }

    return ret;
}

static HI_VOID DMXOsiRelaseOQ(DMX_OQ_Info_S *pstChPlayBuf, HI_U32 u32ReadBlk, HI_U32 u32Num)
{
    HI_U32  u32CurrentBlk;
    HI_U32  FqId;
    HI_U32  fqwrite, oqread;
    OQ_DescInfo_S* oq_desc;
    FQ_DescInfo_S* fq_desc;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo;
    HI_SIZE_T u32LockFlag;

    FqId = pstChPlayBuf->u32FQId;

    FqInfo = &pDmxDevOsi->DmxFqInfo[FqId];

    spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
    fqwrite = DmxHalGetFQWritePtr(FqId);

    oqread = u32ReadBlk;
    while (u32Num)
    {
        u32CurrentBlk = pstChPlayBuf->u32OQVirAddr + oqread * DMX_OQ_DESC_SIZE;
        oq_desc = (OQ_DescInfo_S*)u32CurrentBlk;
        u32CurrentBlk = pDmxDevOsi->DmxFqInfo[FqId].u32FQVirAddr + fqwrite * DMX_FQ_DESC_SIZE;
        fq_desc = (FQ_DescInfo_S*)u32CurrentBlk;
        fq_desc->start_addr = oq_desc->start_addr;
        fq_desc->buflen = oq_desc->cactrl_buflen & 0xffff;
        DMXINC(oqread, pstChPlayBuf->u32OQDepth);
        DMXINC(fqwrite, pDmxDevOsi->DmxFqInfo[FqId].u32FQDepth);
        u32Num--;
    }

    DmxHalSetOQReadPtr(pstChPlayBuf->u32OQId, oqread);
    pstChPlayBuf->u32ReleaseBlk = oqread;
    DmxHalSetFQWritePtr(FqId, fqwrite);
    spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
}

static HI_S32 DMXOsiFindPes(DMX_ChanInfo_S * pChanInfo,
                            DMX_UserMsg_S* psMsgList,
                            HI_U32         u32AcqNum,/*u32AcqNum = DMX_PES_MAX_SIZE*/
                            HI_U32 *       pu32AcqedNum)
{
    HI_U32 u32CurrentBlk;
    HI_U32 u32BufPhyAddr, u32PvrCtrl, u32DataLen;
    HI_U8 *pu8BufVirAddr;
    HI_U32 u32WriteBlk, u32ReadBlk, u32CurReadBlk;
    HI_U32 u32CurBlkNum, u32ProcsBlk;
    HI_U32 u32PesHead = 0;
    HI_U32 u32Offset, u32PesLen;
    HI_U32 u32DropTimes = 0;
    OQ_DescInfo_S* oq_desc;
    DMX_DEV_OSI_S  *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_OQ_Info_S  *OqInfo      = &pDmxDevOsi->DmxOqInfo[pChanInfo->ChanOqId];

    //always get new write
    DMXOsiOQGetReadWrite(pChanInfo->ChanOqId, &u32WriteBlk, &u32ReadBlk);
    /*Count of PES block alreadly be acquired by user,after finishing acquire a whole PES packet,it will be set 0*/
    u32ProcsBlk = pChanInfo->u32PesBlkCnt;

    /* only for pes, The offset of Current PES packet alreadly been acquired,
    each time after DMXOsiFindPes return ,it will recorded the added datalen .
    it will be set 0 after finishing acquire a whole PES packet*/
    u32Offset = pChanInfo->u32ProcsOffset;

    /*Current PES packet's len,The value been set when each time a new PES header come and parser it get the length.
    The value been set zeor when initialize or after inishing acquire a whole PES packet ""*/
    u32PesLen = pChanInfo->u32PesLength;
    u32CurReadBlk = u32ReadBlk;
    u32CurBlkNum  = 0;
    *pu32AcqedNum = 0;

    while (u32ReadBlk != u32WriteBlk)
    {
        u32CurrentBlk = OqInfo->u32OQVirAddr + u32ReadBlk * DMX_OQ_DESC_SIZE;
        oq_desc = (OQ_DescInfo_S*)u32CurrentBlk;
        u32BufPhyAddr = oq_desc->start_addr;
        u32PvrCtrl = oq_desc->pvrctrl_datalen;
        u32DataLen = oq_desc->pvrctrl_datalen & 0xffff;

        /*if current OQ descriptor have the flag of SOP (PVR CTRL bit2),it means one of the following events happens:
        event 1. a new PES packet start at this block and  we know last PES packet have alreadly finished (by (u32ProcsBlk = pChanInfo->u32PesBlkCnt) == 0)
        event 2. we do not know the last PES packet acquiring finished ((u32ProcsBlk = pChanInfo->u32PesBlkCnt) != 0) ,however a new PES packet start at this block ,
                 so ,last PES packet must finished.
                 (for PES packet with length fild = 0,it means the PES length uncertain ,we only can use 'SOP flag appearing' judge the last PES finished) */
        if (u32PvrCtrl & DMX_MASK_BIT_18)
        {
            /*event 1 happen*/
            if (u32ProcsBlk == 0)
            {
                pu8BufVirAddr = (HI_U8 *)(u32BufPhyAddr
                                          - pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId].u32BufPhyAddr
                                          + pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId].u32BufVirAddr);

                //according to protocol
                u32PesLen = ((HI_U32)pu8BufVirAddr[4] << 8) | pu8BufVirAddr[5];
                if (u32PesLen)
                {
                    u32PesLen += 6;
                }

                u32PesHead = 1;
                pChanInfo->u32PesLength = u32PesLen;
            }
            /*event 2 happen*/
            else
            {
                if (u32CurBlkNum)
                {
                    if (pChanInfo->u32PesBlkCnt)
                    {
                        /*pay attentaion: we use: 'psMsgList[u32CurBlkNum - 1]' instead of  'psMsgList[u32CurBlkNum]'
                        because we now change the last BB's data type . the last BB is the end of the last PES packet*/
                        psMsgList[u32CurBlkNum - 1].enDataType = HI_UNF_DMX_DATA_TYPE_TAIL;
                    }
                    else
                    {
                        psMsgList[u32CurBlkNum - 1].enDataType = HI_UNF_DMX_DATA_TYPE_WHOLE;
                    }

                    pChanInfo->u32PesLength   = 0;
                    pChanInfo->u32ProcsOffset = 0;
                    pChanInfo->u32PesBlkCnt = 0;
                    *pu32AcqedNum = u32CurBlkNum;
                    return HI_SUCCESS;
                }
                /*
                situation such as: 64K PES with len fild = 0,
                --------------------1PES-----------------------|------------------2PES-------------------------
                |sop(8k)| 8k  |  8k  | 8k |8k  |  8k  | 8k |8k | sop(8k)| 8k  |  8k  | 8k |8k  |  8k  | 8k |8k |
                when the second time meet BB with SOP ,now : u32ProcsBlk == 8, u32CurBlkNum == 0, will enter this else
                pay attentaion: in this situation ,the last time DMXOsiFindPes return ,may be the psMsgList[7].enDataType is BODY,
                acturally it should be Tail. but we have no idea how to change it before user use it.
                so ,just let it be ,you should know this may be error.
                */
                else
                {
                    u32ProcsBlk = 0;
                    pChanInfo->u32PesBlkCnt = 0;
                    pChanInfo->u32PesLength   = 0;
                    pChanInfo->u32ProcsOffset = 0;
                    continue;
                }
            }
        }

        /*if current OQ descriptor have the flag of DROP (PVR CTRL bit3),
        it means a PES packet have not finish but may be (FQ/OQ)overflow happened,
        in order to make sure the PES user got are entire, the before OQ descriptor -> buffer block should be backward,
        OQ read pointer should be backward*/
        if (u32PvrCtrl & DMX_MASK_BIT_19)
        {
            DMXOsiRelaseOQ(OqInfo, u32CurReadBlk, u32CurBlkNum + 1);/*release "u32CurBlkNum + 1" OQ desc*/
            DMXOsiOQGetReadWrite(pChanInfo->ChanOqId, &u32WriteBlk, &u32ReadBlk);
            u32CurReadBlk = u32ReadBlk;
            u32CurBlkNum = 0;
            u32ProcsBlk = 0;
            pChanInfo->u32PesBlkCnt   = 0;
            pChanInfo->u32PesLength   = 0;
            pChanInfo->u32ProcsOffset = 0;
            u32Offset = 0;
            u32DropTimes++;
            s_u32DMXDropCnt[pChanInfo->ChanId]++;
            if (u32DropTimes > 10)
            {
                return HI_FAILURE;
            }
            else
            {
                continue;
            }
        }

        /*
        1.get current psMsgList's addr and len;
        2.get current psMsgList's data type;
        3.added u32ReadBlk;
        4.store the u32ReadBlk into gloable sturucture OqInfo
        :&pDmxDevOsi->DmxOqInfo[pChanInfo->ChanOqId]
        */

        u32Offset += u32DataLen;
        psMsgList[u32CurBlkNum].u32BufStartAddr = u32BufPhyAddr;
        psMsgList[u32CurBlkNum].u32MsgLen = u32DataLen;
        if (u32PesHead)
        {
            psMsgList[u32CurBlkNum].enDataType = HI_UNF_DMX_DATA_TYPE_HEAD;
            u32PesHead = 0;
        }
        else
        {
            psMsgList[u32CurBlkNum].enDataType = HI_UNF_DMX_DATA_TYPE_BODY;
        }
        DMXINC(u32ReadBlk, OqInfo->u32OQDepth);
        OqInfo->u32ProcsBlk = u32ReadBlk;

        if ((u32Offset == u32PesLen) && u32PesLen)
        {
            if (u32ProcsBlk == 0)
            {
                psMsgList[u32CurBlkNum].enDataType = HI_UNF_DMX_DATA_TYPE_WHOLE;
            }
            else
            {
                psMsgList[u32CurBlkNum].enDataType = HI_UNF_DMX_DATA_TYPE_TAIL;
            }

            pChanInfo->u32PesLength   = 0;
            pChanInfo->u32ProcsOffset = 0;/*set to 0 at here, means a PES packet acquiring finished (next BB with SOP appears ,meas event1 happen,see line 1489)*/
            pChanInfo->u32PesBlkCnt = 0;
            *pu32AcqedNum = u32CurBlkNum + 1;
            return HI_SUCCESS;
        }

        u32ProcsBlk++;
        u32CurBlkNum++;

        /* if reach 64k and still not find next sop */
        if ((u32CurBlkNum == DMX_PES_MAX_SIZE) || (u32CurBlkNum == u32AcqNum))/*acturally ,u32AcqNum = DMX_PES_MAX_SIZE ,so this condition is unneed*/
        {
            break;
        }
    }
    /*1 . acturally ,u32AcqNum = DMX_PES_MAX_SIZE ,so this condition (u32CurBlkNum == u32AcqNum) is unneed
      2.  it seems can put this if into line 1609*/
    if ((DMX_PES_MAX_SIZE == u32CurBlkNum) || (u32CurBlkNum == u32AcqNum))
    {
        *pu32AcqedNum = u32CurBlkNum;
        pChanInfo->u32PesBlkCnt   += u32CurBlkNum;
        pChanInfo->u32ProcsOffset += u32Offset;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 DMXOsiAddErrMSG(HI_U32 u32BufStartAddr)
{
    HI_U32 i = 0;

    for (i = 0; i < DMX_MAX_ERRLIST_NUM; i++)
    {
        if ((psErrMsg[i].u32UsedFlag == 1) && (psErrMsg[i].psMsg.u32BufStartAddr == u32BufStartAddr))
        {
            return 0;
        }
    }

    for (i = 0; i < DMX_MAX_ERRLIST_NUM; i++)
    {
        if (psErrMsg[i].u32UsedFlag == 0)
        {
            psErrMsg[i].psMsg.u32BufStartAddr = u32BufStartAddr;
            psErrMsg[i].u32UsedFlag = 1;
            return 0;
        }
    }

    return -1;
}

static HI_S32 DMXOsiRelErrMSG(HI_U32 u32BufStartAddr)
{
    HI_U32 i = 0;

    for (i = 0; i < DMX_MAX_ERRLIST_NUM; i++)
    {
        if ((psErrMsg[i].u32UsedFlag == 1) && (psErrMsg[i].psMsg.u32BufStartAddr == u32BufStartAddr))
        {
            psErrMsg[i].u32UsedFlag = 0;
            return 0;
        }
    }

    return -1;
}

static HI_S32 DMXOsiCheckErrMSG(HI_U32 u32BufStartAddr)
{
    HI_U32 i = 0;

    for (i = 0; i < DMX_MAX_ERRLIST_NUM; i++)
    {
        if ((psErrMsg[i].u32UsedFlag == 1) && (psErrMsg[i].psMsg.u32BufStartAddr == u32BufStartAddr))
        {
            return 1;
        }
    }

    return 0;
}

static HI_S32 DMXOsiParseSection(HI_U32 *pu32Parsed, HI_U32 u32AcqNum, HI_U32 *pu32Offset,
                                 HI_U32 u32BufPhyAddr, HI_U32 u32BufLen, DMX_ChanInfo_S *pChanInfo,
                                 DMX_UserMsg_S* psMsgList,DMX_OQ_Info_S  *OqInfo)
{
    HI_U32 i;
    HI_U32 u32Seclen;
    HI_U32 u32BufVirAddr;
    DMX_DEV_OSI_S  *pDmxDevOsi  = g_pDmxDevOsi;

    u32BufVirAddr = u32BufPhyAddr
                    - pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId].u32BufPhyAddr
                    + pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId].u32BufVirAddr;
    if (*pu32Offset >= u32BufLen)
    {
        return HI_FAILURE;
    }

    for (i = *pu32Parsed; i < u32AcqNum;)
    {
        if (HI_UNF_DMX_CHAN_TYPE_POST == pChanInfo->ChanType)
        {
            u32Seclen = DMX_TS_PACKET_LEN;
            if (*(HI_U8 *)(u32BufVirAddr + *pu32Offset) != 0x47)
            {
                DMXOsiAddErrMSG(u32BufPhyAddr);
                s_u32DMXDropCnt[pChanInfo->ChanId]++;
                *pu32Offset += u32Seclen;
                if (*pu32Offset >= u32BufLen)
                {
                    break;
                }
                continue;
            }
        }
        #ifdef DMX_USE_ECM
        else if (pChanInfo->u32SwFlag)
        {
            u32Seclen = DMX_TS_PACKET_LEN;
        }
        #endif
        else
        {
            u32Seclen = GetSectionLength(u32BufVirAddr, u32BufLen, *pu32Offset);
        }

        if ((0 == u32Seclen) || (u32Seclen > DMX_MAX_SEC_LEN))
        {
        #ifdef DMX_USE_ECM
            HI_S32 s32Ret;
        #endif

            DMXOsiAddErrMSG(u32BufPhyAddr);
            s_u32DMXDropCnt[pChanInfo->ChanId]++;

            HI_ERR_DEMUX("section error. ChanId=%u, Pid=0x%x, seclen:%x, phyaddr:%x, BufLen:%x, offset:%x\n",
                pChanInfo->ChanId, pChanInfo->ChanPid, u32Seclen, u32BufPhyAddr, u32BufLen, *pu32Offset);

            *pu32Offset = u32BufLen; //jump the error section

        #ifdef DMX_USE_ECM
            s32Ret = DMX_OsiCloseChannel(pChanInfo->ChanId);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_DEMUX("close channel error:%x!\n",s32Ret);
            }
            s32Ret = HI_DMX_SwNewChannel(pChanInfo->ChanId);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_DEMUX("create sw channel error:%x!\n",s32Ret);
            }
        #endif

            break;
        }
        else if (u32Seclen < 7)
        {
            HI_U32 section_syntax_indicator = (*(HI_U8 *)(u32BufVirAddr + *pu32Offset + 1)) & 0x80;

            if (   (HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_DISCARD == pChanInfo->ChanCrcMode)
                || ((HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD == pChanInfo->ChanCrcMode) &&  section_syntax_indicator) )
            {
                if (!*pu32Offset)   //add err addr, only when at the begin of the buffer
                {
                    DMXOsiAddErrMSG(u32BufPhyAddr);
                }

                s_u32DMXDropCnt[pChanInfo->ChanId]++;
                *pu32Offset += u32Seclen;
                if (*pu32Offset >= u32BufLen)
                {
                    break;
                }
                continue;
            }
        }

    #ifndef DMX_FILTER_DEPTH_SUPPORT
        if (u32Seclen < DMX_FILTER_MAX_DEPTH + SECTION_LENGTH_FIELD_SIZE)
        {
            HI_U32              FilterId;
            DMX_FilterInfo_S   *FilterInfo  = g_pDmxDevOsi->DmxFilterInfo;
            HI_U32              ChanId      = pChanInfo->ChanId;
            HI_U8              *sect        = (HI_U8*)(u32BufVirAddr + *pu32Offset);
            HI_BOOL             pass        = HI_FALSE;

            for (FilterId = 0; FilterId < DMX_FILTER_CNT; FilterId++)
            {
                HI_U32  len     = 0;
                HI_U32  Depth   = FilterInfo[FilterId].Depth;
                HI_U8  *match   = FilterInfo[FilterId].Match;
                HI_U8  *mask    = FilterInfo[FilterId].Mask;
                HI_U8  *negate  = FilterInfo[FilterId].Negate;
                HI_U32  j;

                if (ChanId != FilterInfo[FilterId].ChanId)
                {
                    continue;
                }

                if (0 == Depth)
                {
                    pass = HI_TRUE;

                    break;
                }

                if (u32Seclen < Depth + SECTION_LENGTH_FIELD_SIZE)
                {
                    continue;
                }

                for (j = 0; j < Depth; j++)
                {
                    if (len == u32Seclen)
                    {
                        break;
                    }

                    if (negate[j])
                    {
                        if ((match[j] & ~mask[j]) == (sect[len] & ~mask[j]))
                        {
                            break;
                        }
                    }
                    else
                    {
                        if ((match[j] & ~mask[j]) != (sect[len] & ~mask[j]))
                        {
                            break;
                        }
                    }

                    if (0 == j)
                    {
                        len = 3;
                    }
                    else
                    {
                        ++len;
                    }
                }

                if (j == Depth)
                {
                    pass = HI_TRUE;

                    break;
                }
            }

            if (!pass)
            {
                DMXOsiAddErrMSG(u32BufPhyAddr);
                s_u32DMXDropCnt[pChanInfo->ChanId]++;
                *pu32Offset += u32Seclen;
                if (*pu32Offset >= u32BufLen)
                {
                    break;
                }
                continue;
            }
        }
    #endif

        psMsgList[i].u32BufStartAddr = u32BufPhyAddr + *pu32Offset;
        psMsgList[i].u32MsgLen = u32Seclen;
        *pu32Offset += u32Seclen;
        DMXOsiRelErrMSG(u32BufPhyAddr);
        if (*pu32Offset >= u32BufLen)
        {
            i++;
            break;
        }
        i++;
    }

    if (i == *pu32Parsed)
    {
        return HI_FAILURE;
    }

    *pu32Parsed = i;
    return HI_SUCCESS;
}

#ifdef DMX_USE_ECM
static HI_U32 DMXOsiGetChnSwFlag(HI_U32 ChanId)
{
    DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[ChanId];

    if (ChanInfo->DmxId >= DMX_CNT)
    {
        return 0;
    }

    return ChanInfo->u32SwFlag;
}
#endif

static HI_S32 DMXOsiIsr(int irq, void* devId)
{
    DMX_DEV_OSI_S  *pDmxDevOsi = g_pDmxDevOsi;
    DMX_OQ_Info_S  *OqInfo;
    HI_U32          DmxId;
    HI_U32          OqId;
    HI_U32          ChanId = 0;
    HI_U32          PortId;
    HI_U32          IntStatus;
    HI_U32          i;
    HI_U32          j;

    DmxHalDisableAllPVRInt();

    if (DmxHalGetTotalTeiIntStatus())
    {
        DmxHalGetTeiIntInfo(&DmxId, &ChanId);
        DmxHalClrTeiIntStatus();
        s_u32DMXTEIErr[ChanId]++;
    }

    if (DmxHalGetTotalPcrIntStatus())
    {
        IntStatus = DmxHalGetPcrIntStatus();

        for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
        {
            DMX_PCR_Info_S *PcrInfo;

            if (0 == (IntStatus & (1 << i)))
            {
                continue;
            }

            PcrInfo = &pDmxDevOsi->DmxPcrInfo[i];
            if (PcrInfo->DmxId < DMX_CNT)
            {
                DmxHalGetPcrValue(i, &PcrInfo->PcrValue);
                DmxHalGetScrValue(i, &PcrInfo->ScrValue);

#ifndef MINI_SYS_SURPORT
                if ((DMX_INVALID_SYNC_HANDLE != PcrInfo->SyncHandle) && g_pSyncFunc && g_pSyncFunc->pfnSYNC_PcrProc)
                {
                    HI_U32 Pcr1Khz = 0;

                    /* dmx pcr is sample with the freq of 90khz, but the sync module need the freq of 1khz
                     * so divide 90 here
                     */
                    Pcr1Khz = (HI_U32)((PcrInfo->PcrValue >> 1) & 0xffffffff);  // divide 2
                    Pcr1Khz /= 45;

                    (g_pSyncFunc->pfnSYNC_PcrProc)(PcrInfo->SyncHandle, Pcr1Khz);
                }
#endif
            }

            DmxHalClrPcrIntStatus(i);
        }
    }

    if (DmxHalGetTotalDiscIntStatus())
    {
        for (i = 0; i < DMX_CHANNEL_REGION_NUM; i++)
        {
            IntStatus = DmxHalGetDiscIntStatus(i);
            if (IntStatus)
            {
                for (j = 0; j < DMX_CHANNEL_NUM_PER_REGION; j++)
                {
                    if (IntStatus & (1 << j))
                    {
                        ChanId = i * DMX_CHANNEL_NUM_PER_REGION + j;

                        DmxHalClearDiscIntStatus(ChanId);
                        s_u32DMXCCDiscErr[ChanId]++;
                    }
                }
            }
        }
    }

    if (DmxHalGetTotalCrcIntStatus())
    {
        for (i = 0; i < DMX_CHANNEL_REGION_NUM; i++)
        {
            IntStatus = DmxHalGetCrcIntStatus(i);
            if (IntStatus)
            {
                for (j = 0; j < DMX_CHANNEL_NUM_PER_REGION; j++)
                {
                    if (IntStatus & (1 << j))
                    {
                        ChanId = i * DMX_CHANNEL_NUM_PER_REGION + j;

                        DmxHalClearCrcIntStatus(ChanId);
                        s_u32DMXCRCErr[ChanId]++;
                    }
                }
            }
        }
    }

    if (DmxHalGetTotalPenLenIntStatus())
    {
        for (i = 0; i < DMX_CHANNEL_REGION_NUM; i++)
        {
            IntStatus = DmxHalGetPesLenIntStatus(i);
            if (IntStatus)
            {
                for (j = 0; j < DMX_CHANNEL_NUM_PER_REGION; j++)
                {
                    if (IntStatus & (1 << j))
                    {
                        ChanId = i * DMX_CHANNEL_NUM_PER_REGION + j;

                        DmxHalClearPesLenIntStatus(ChanId);
                        s_u32DMXPesLenErr[ChanId]++;
                    }
                }
            }
        }
    }

    IntStatus = DmxHalFQGetAllOverflowIntStatus();
    if (IntStatus)
    {
        HI_U32 FqId;

        for (i = 0; i < DMX_FQ_REGION_NUM; i++)
        {
            FqId = i * DMX_FQ_NUM_PER_REGION;

            if (IntStatus & (1 << i))
            {
                HI_U32 FqIntStatus;
                HI_U32 FqIntType;

                FqIntStatus = DmxHalFQGetOverflowIntStatus(i);
                FqIntType = DmxHalFQGetOverflowIntType(i);

                for (j = 0; (j < DMX_FQ_NUM_PER_REGION) && FqIntStatus && (FqId < DMX_FQ_CNT); j++, FqId++)
                {
                    if (0 == (FqIntStatus & (1 << j)))
                    {
                        continue;
                    }
                    
                    FqIntStatus &= ~(1 << j);

                    /*  1:overflow, 0:almost overflow. only record overflow int, usually we not care about "almost overflow". */
                    if ( FqIntType & (1 << j) )
                    {
                        pDmxDevOsi->DmxFqInfo[FqId].FqOverflowCount++;
                    }

                    DmxHalFQSetOverflowInt(FqId, DMX_DISABLE);

                    DmxHalFQClearOverflowInt(FqId);
                }
            }
        }
    }

    IntStatus = DmxHalOQGetAllOverflowIntStatus();
    if (IntStatus)
    {
        for (i = 0; i < DMX_OQ_REGION_NUM; i++)
        {
            if (IntStatus & (1 << i))
            {
                for (j = 0; j < DMX_OQ_NUM_PER_REGION; j++)
                {
                    OqId = i * DMX_OQ_NUM_PER_REGION + j;

                    if (DmxHalOQGetOverflowIntStatus(OqId))
                    {
                        DmxHalOQClearOverflowInt(OqId);
                    }
                }
            }
        }
    }

    IntStatus = DmxHalOQGetAllEopIntStatus();
    if (IntStatus)
    {
        for (i = 0; i < DMX_OQ_REGION_NUM; i++)
        {
            if (0 == (IntStatus & (1 << i)))
            {
                continue;
            }

            for (j = 0; j < DMX_OQ_NUM_PER_REGION; j++)
            {
                OqId = i * DMX_OQ_NUM_PER_REGION + j;

                if (!DmxHalGetOQEopIntStatus(OqId))
                {
                    continue;
                }

                DmxHalClearOQEopIntStatus(OqId);

                OqInfo = &pDmxDevOsi->DmxOqInfo[OqId];

                wake_up_interruptible(&g_pDmxDevOsi->DmxWaitQueue);
                s_u32DMXBufEop[OqId] = 1;

                wake_up_interruptible(&OqInfo->OqWaitQueue);

                if (OqInfo->pWatchWaitQueue || s_pAllChnWatchWaitQueue)
                {
                    ChanId = OqId;
                    if (ChanId < DMX_CHANNEL_CNT)
                    {
                        HI_U32 u32DataFlag;
#ifdef DMX_USE_ECM
                        if (DMXOsiGetChnSwFlag(ChanId))
                        {
                            u32DataFlag = HI_DMX_SwGetChannelDataStatus(ChanId);
                        }
                        else
                        {
#endif
                            u32DataFlag = DMX_OsiGetChnDataFlag(ChanId);
#ifdef DMX_USE_ECM
                        }
#endif
                        if (u32DataFlag)
                        {
                            s_u32DMXBufData = 1;
                            if (OqInfo->pWatchWaitQueue)
                            {
                                wake_up_interruptible(OqInfo->pWatchWaitQueue);
                            }
                            else if (s_pAllChnWatchWaitQueue)
                            {
                                wake_up_interruptible(s_pAllChnWatchWaitQueue);
                            }
                        }
                    }
                }
            }
        }
    }

    IntStatus = DmxHalOQGetAllOutputIntStatus();

    for (i = 0; (i < DMX_OQ_REGION_NUM) && IntStatus; i++)
    {
        HI_U32 OqOutInt;

        if (0 == (IntStatus & (1 << i)))
        {
            continue;
        }

        IntStatus &= ~(1 << i);

        OqOutInt = DmxHalOQGetOutputIntStatus(i);

        for (j = 0; (j < DMX_OQ_NUM_PER_REGION) && OqOutInt; j++)
        {
            DMX_OQ_Info_S *OqInfo;

            if (0 == (OqOutInt & (1 << j)))
            {
                continue;
            }

            OqOutInt &= ~(1 << j);

            OqId = i * DMX_OQ_NUM_PER_REGION + j;

            DmxHalOQEnableOutputInt(OqId, HI_FALSE);

            OqInfo = &pDmxDevOsi->DmxOqInfo[OqId];
            if (OqInfo)
            {
                OqInfo->OqWakeUp = HI_TRUE;

                wake_up_interruptible(&OqInfo->OqWaitQueue);
            }
        }
    }

    for (PortId = 0; PortId < DMX_RAMPORT_CNT; PortId++)
    {
        if (DmxHalIPPortGetOutIntStatus(PortId))
        {
            DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];
            HI_SIZE_T           LockFlag;

            spin_lock_irqsave(&PortInfo->LockRamPort, LockFlag);
            if (0 != PortInfo->Write)
            {
                HI_U32  DescRead;
                HI_U32 *ReadAddr;
                /*DmxHalIPPortDescGetRead return the Desc logic is reading */
                DescRead = DmxHalIPPortDescGetRead(PortId);
                if (0 == DescRead)
                {
                    DescRead = PortInfo->DescDepth - 1;
                }
                else
                {
                    --DescRead;/*it means the Desc which logic alreadly finished read it*/
                }

                ReadAddr = (HI_U32*)(PortInfo->DescKerAddr + (DescRead << 4));
                /*PortInfo->Read is the ts buffer read offset*/
                PortInfo->Read = *ReadAddr - PortInfo->PhyAddr;
                if (PortInfo->Read == PortInfo->Write)
                {
                    PortInfo->Read  = 0;
                    PortInfo->Write = 0;
                }
            }
            spin_unlock_irqrestore(&PortInfo->LockRamPort, LockFlag);

            DmxHalIPPortClearOutIntStatus(PortId);
            /*
            in DMX_OsiTsBufferGet,
            if have not enough space ,the PortInfo->WaitLen will be give value ,and wait the interupt of
            DmxHalIPPortGetOutIntStatus (new Desc be readed by logic,so there may be new space avaliable),
            every time in DmxHalIPPortGetOutIntStatus ,will call GetIpFreeDescAndBufLen again , if return HI_FALSE,
            will wake up
            */
            if (PortInfo->WaitLen)
            {
                if (!CheckIPBuf(PortId, PortInfo->WaitLen))
                {
                    PortInfo->WakeUp    = HI_TRUE;
                    PortInfo->WaitLen   = 0;

                    wake_up_interruptible(&PortInfo->WaitQueue);
                }
            }
        }
    }

    DmxHalEnableAllPVRInt();

    return IRQ_HANDLED;
}

static HI_VOID DMXOsiGetDataFlag(HI_U32 *pu32WatchCh, HI_U32 u32WatchNum, HI_U32 *pu32Flag)
{
    HI_U32 i;
    HI_U32 ChanId;

    for (i = 0; i < u32WatchNum; i++)
    {
        ChanId = pu32WatchCh[i];
#ifdef DMX_USE_ECM
        if (DMXOsiGetChnSwFlag(ChanId))
        {
            if (HI_DMX_SwGetChannelDataStatus(ChanId))
            {
                pu32Flag[ChanId >> 5] |= 1 << (ChanId & 0x1F);
            }

            continue;
        }
#endif

        if (DMX_OsiGetChnDataFlag(ChanId))
        {
            pu32Flag[ChanId >> 5] |= 1 << (ChanId & 0x1F);
        }
    }
}

static HI_S32 DMXOsiChannelWaitTimeOut(DMX_ChanInfo_S *ChanInfo, HI_U32 u32TimeOutMs)
{
    HI_S32          ret;
    DMX_OQ_Info_S  *OqInfo  = &g_pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    s_u32DMXBufEop[ChanInfo->ChanOqId] = 0;
    DmxHalEnableOQEopInt(ChanInfo->ChanOqId);
    ret = wait_event_interruptible_timeout(OqInfo->OqWaitQueue,
                                           (s_u32DMXBufEop[ChanInfo->ChanOqId]),
                                           msecs_to_jiffies(u32TimeOutMs));
    DmxHalDisableOQEopInt(ChanInfo->ChanOqId);
    return ret;
}

/**
 \brief

 \attention

 \param[in] pChanInfo
 \param[in] u32AcqNum
 \param[out] pu32AcqedNum
 \param[out] psMsgList
 \param[in] u32TimeOutMs

 \retval none
 \return none

 \see
 \li ::
 */
static HI_S32 DMXOsiReadPes(DMX_ChanInfo_S * pChanInfo,
                            HI_U32         u32AcqNum, /*u32AcqNum = DMX_PES_MAX_SIZE*/
                            HI_U32 *       pu32AcqedNum,
                            DMX_UserMsg_S* psMsgList,
                            HI_U32         u32TimeOutMs)
{
    HI_S32 ret;

    u32TimeOutMs = (u32TimeOutMs * HZ) / 1000;

    ret = DMXOsiFindPes(pChanInfo, psMsgList, u32AcqNum, pu32AcqedNum);
    if (ret == HI_SUCCESS)
    {
        pChanInfo->u32HitAcq++;
        return ret;
    }

    if (u32TimeOutMs)
    {
        ret = DMXOsiChannelWaitTimeOut(pChanInfo, u32TimeOutMs);
        if (ret != 0)
        {
            ret = DMXOsiFindPes(pChanInfo, psMsgList, u32AcqNum, pu32AcqedNum);
            if (ret == HI_SUCCESS)
            {
                pChanInfo->u32HitAcq++;
                return ret;
            }
        }
        else
        {
            *pu32AcqedNum = 0;
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }
    }

    //no availibale data
    *pu32AcqedNum = 0;
    return HI_ERR_DMX_NOAVAILABLE_DATA;
}

static HI_S32 DMXOsiGetSecNum(DMX_ChanInfo_S * pChanInfo,
                              HI_U32*        pu32BlkNum,
                              HI_U32         u32AcqNum,
                              DMX_UserMsg_S* psMsgList,
                              DMX_OQ_Info_S* OqInfo)
{
    HI_U32 u32CurrentBlk, u32BufPhyAddr, u32DataLen;
    HI_U32 u32Offset;
    HI_U32 u32WriteBlk, u32ReadBlk, u32ProcsBlk;
    HI_S32 s32Ret;
    OQ_DescInfo_S  *oq_dsc;

    /*get current OQ Desc write pointer in register*/
    DMXOsiOQGetReadWrite(pChanInfo->ChanOqId, &u32WriteBlk, HI_NULL);

    u32Offset   = OqInfo->u32ProcsOffset;
    /*we not directly using the read pointer in register but use the backup in software because the read pointer in register
    will only updated after the DMX_OsiReleaseReadData be called in order to avoid these buffer be writen by hardware*/
    u32ReadBlk  = OqInfo->u32ProcsBlk;/*the current OQ Desc now be processing (software is reading the data of the correlative buffer block)*/
    u32ProcsBlk = u32ReadBlk;
    *pu32BlkNum = 0;
    /*process block one by one ,until the u32ReadBlk == u32WriteBlk*/
    while (u32ReadBlk != u32WriteBlk)
    {
        u32CurrentBlk = OqInfo->u32OQVirAddr + u32ReadBlk * DMX_OQ_DESC_SIZE;
        oq_dsc = (OQ_DescInfo_S*)u32CurrentBlk;
        if (!oq_dsc)
        {
            HI_ERR_DEMUX("DMXOsiGetSecNum oqdsc error,check it!!!\n");
            break;
        }

        u32BufPhyAddr = oq_dsc->start_addr;
        u32DataLen = oq_dsc->pvrctrl_datalen & 0xffff;
        /*if finished read the data of the current read  OQ Desc -> Buffer block  */
        if (u32Offset >= u32DataLen)
        {
            DMXINC(u32ReadBlk, OqInfo->u32OQDepth);
            DMXINC(u32ProcsBlk, OqInfo->u32OQDepth);
            OqInfo->u32ProcsBlk = u32ProcsBlk;
            OqInfo->u32ProcsOffset = 0;
            u32Offset = 0;
            continue;
        }

        s32Ret = DMXOsiParseSection(pu32BlkNum, u32AcqNum, &u32Offset, u32BufPhyAddr, u32DataLen, pChanInfo, psMsgList, OqInfo);
        if (s32Ret != HI_SUCCESS)
        {
            continue;
        }
        else
        {
            if (u32Offset >= u32DataLen)
            {
                DMXINC(u32ProcsBlk, OqInfo->u32OQDepth);
                u32Offset = 0;
            }

            if (*pu32BlkNum >= u32AcqNum)
            {
                break;
            }
        }

        DMXINC(u32ReadBlk, OqInfo->u32OQDepth);
    }

    if (*pu32BlkNum > 0)
    {
        OqInfo->u32ProcsBlk = u32ProcsBlk;
        OqInfo->u32ProcsOffset = u32Offset;
    }

    return HI_SUCCESS;
}

static HI_U32 DMXOsiGetCurEopaddr(DMX_ChanInfo_S *ChanInfo)
{
    HI_U32 EopAddr = 0;
    HI_U32 PvrCtrl;

    DmxHalGetOQWORDx(ChanInfo->ChanOqId, DMX_OQ_CTRL_OFFSET, &PvrCtrl);

    if (PvrCtrl & DMX_MASK_BIT_7)
    {
        HI_U32 Value;

        DmxHalGetOQWORDx(ChanInfo->ChanOqId, DMX_OQ_EOPWR_OFFSET, &Value);

        if (HI_UNF_DMX_CHAN_TYPE_POST != ChanInfo->ChanType)
        {
            EopAddr = Value >> DMX_SHIFT_16BIT;
        }
        else
        {
            EopAddr = Value & 0xffff;
        }

#ifdef DMX_USE_ECM
        if (ChanInfo->u32SwFlag)
        {
            EopAddr = Value & 0xffff;
        }
#endif
    }

    return EopAddr;
}

static HI_S32 DMXOsiGetCurSAddr(DMX_ChanInfo_S *pChanInfo, HI_U32* pu32BufPhyAddr, HI_U32* pu32EopAddr,DMX_OQ_Info_S  *OqInfo)
{
    HI_U32 u32ReadBlk, u32WriteBlk;
    HI_U32 u32OQId;

    u32OQId = pChanInfo->ChanOqId;
    u32ReadBlk   = OqInfo->u32ProcsBlk;
    *pu32EopAddr = DMXOsiGetCurEopaddr(pChanInfo);
    DmxHalGetOQWORDx(u32OQId, DMX_OQ_SADDR_OFFSET, pu32BufPhyAddr);
    DMXOsiOQGetReadWrite(u32OQId, &u32WriteBlk, HI_NULL);

    if (u32WriteBlk == u32ReadBlk)
    {
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 DmxOsiReadToMsgBuffer(DMX_ChanInfo_S *pChanInfo, HI_U32 u32AcqNum,
                                    HI_U32 *pu32AcqedNum, DMX_UserMsg_S* psMsgList,DMX_OQ_Info_S* OqInfo)
{
    HI_U32 u32BlkNum = 0;
    HI_S32 s32Ret;

    s32Ret = DMXOsiGetSecNum(pChanInfo, &u32BlkNum, u32AcqNum, psMsgList,OqInfo);
    if ((HI_SUCCESS == s32Ret) && (u32BlkNum > 0))
    {
        *pu32AcqedNum = u32BlkNum;
        return HI_SUCCESS;
    }

    *pu32AcqedNum = 0;

    return HI_ERR_DMX_NOAVAILABLE_DATA;
}

static HI_S32 DMXOsiReadSec(DMX_ChanInfo_S * pChanInfo,
                            HI_U32         u32AcqNum,
                            HI_U32 *       pu32AcqedNum,
                            DMX_UserMsg_S* psMsgList,
                            DMX_OQ_Info_S* OqInfo,
                            HI_U32         u32TimeOutMs)
{
    HI_S32 ret;
    HI_U32 u32BufPhyAddr;
    HI_U32* pu32Offset;
    HI_U32 u32EopAddr;
    HI_U32 u32BlkNum = 0;

    u32EopAddr = DMXOsiGetCurEopaddr(pChanInfo);

    /*step1 . "DmxOsiReadToMsgBuffer" is used to read at least one whole buffer block,
    if there is no a whole block data, the pu32AcqedNum will == 0 */
    ret = DmxOsiReadToMsgBuffer(pChanInfo, u32AcqNum, pu32AcqedNum, psMsgList,OqInfo);
    if ((ret == HI_SUCCESS) && (*pu32AcqedNum > 0))
    {
    #ifdef DMX_USE_ECM
        if (!pChanInfo->u32SwFlag)
    #endif
        {
            pChanInfo->u32HitAcq++;
        }

        return HI_SUCCESS;
    }
    /*step2 . if there is no whole buffer block of data ,judge whether the current block (read==write)
    have some data or not ,if not ,wait untile time out*/
    pu32Offset = &OqInfo->u32ProcsOffset;
    if (*pu32Offset == u32EopAddr)
    {
        if (!u32TimeOutMs)
        {
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }
        /*wait untile interupt happened. see DmxHalOQGetAllEopIntStatus*/
        ret = DMXOsiChannelWaitTimeOut(pChanInfo, u32TimeOutMs);
        if (0 == ret)
        {
            HI_DBG_DEMUX("OQ %d wait time out!\n", pChanInfo->ChanOqId);
            return HI_ERR_DMX_TIMEOUT;
        }
        
        ret = DmxOsiReadToMsgBuffer(pChanInfo, u32AcqNum, pu32AcqedNum, psMsgList,OqInfo);
        if (ret == HI_SUCCESS)
        {
        #ifdef DMX_USE_ECM
            if (!pChanInfo->u32SwFlag)
        #endif
            {
                pChanInfo->u32HitAcq++;
            }

            return HI_SUCCESS;
        }
    }

    /*step3 . if after wait wake up, we still not get a whole buffer block of data ,
    judge whether the current buffer block (read==write) have data or not ,if it does ,read it*/

    /*get current block's u32BufPhyAddr ,the following function DMXOsiParseSection will use it*/
    if (DMXOsiGetCurSAddr(pChanInfo, &u32BufPhyAddr, &u32EopAddr,OqInfo) != HI_SUCCESS)
    {
        /*most possiblily, the DMXOsiGetCurBufblockSAddr return failure because of the "u32WriteBlk != u32ReadBlk" ,
        so we call DmxOsiReadToMsgBuffer to read whole buffer again*/
        ret = DmxOsiReadToMsgBuffer(pChanInfo, u32AcqNum, pu32AcqedNum, psMsgList,OqInfo);
        if (ret == HI_SUCCESS)
        {
        #ifdef DMX_USE_ECM
            if (!pChanInfo->u32SwFlag)
        #endif
            {
                pChanInfo->u32HitAcq++;
            }

            return HI_SUCCESS;
        }

        //read eop again,if not success return
        if (DMXOsiGetCurSAddr(pChanInfo, &u32BufPhyAddr, &u32EopAddr,OqInfo) != HI_SUCCESS)
        {
            HI_WARN_DEMUX("OQ %d no new eop with eop interrupt,rec addr:%x ,eop addr :%x!\n",
                          pChanInfo->ChanOqId, *pu32Offset, u32EopAddr);

            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }
    }
    else /*read==write*/
    {
        DMXOsiParseSection(&u32BlkNum, u32AcqNum, pu32Offset, u32BufPhyAddr, u32EopAddr, pChanInfo, psMsgList, OqInfo);
    }

    if (0 == u32BlkNum)
    {
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }

#ifdef DMX_USE_ECM
    if (!pChanInfo->u32SwFlag)
#endif
    {
        pChanInfo->u32HitAcq++;
    }

    *pu32AcqedNum = u32BlkNum;

    return HI_SUCCESS;
}

HI_U32 FilterGetValidDepth(const HI_UNF_DMX_FILTER_ATTR_S *FilterAttr)
{
    HI_U32 Depth = FilterAttr->u32FilterDepth;

    while (Depth)
    {
        if (0xff == FilterAttr->au8Mask[Depth - 1])
        {
            --Depth;
        }
        else
        {
            break;
        }
    }

    return Depth;
}

/**
\brief get channel buffer status
\attention
none
\param[in] u32ChanId

\retval none
\return 0  channel can't (or no need to)  reset
        1  channel buffer is < 20% of pool buffer,and it's buffer is > 1
        2  channel buffer is > 20% of pool buffer
\see
\li ::
*/
static HI_S32 GetChnDataStatus(HI_U32 ChanId)
{
    HI_U32 u32OqId, u32OqRead, u32OqWrite,u32FQId;
    HI_U32 u32FqDepth,u32ValDes;
    DMX_DEV_OSI_S  *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_OQ_Info_S  *OqInfo      = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    if ((ChanInfo->DmxId >= DMX_CNT) || OqInfo->u32FQId != DMX_FQ_COMMOM)
    {
        return 0; //not usded channel,and not common channel,do not process
    }

    u32OqId = ChanInfo->ChanOqId;
    DMXOsiOQGetReadWrite(u32OqId, &u32OqWrite, &u32OqRead);

    if (OqInfo->u32ProcsBlk != u32OqRead)//there's buffer not released
    {
        return 0;
    }

    u32FQId = OqInfo->u32FQId;
    u32FqDepth = pDmxDevOsi->DmxFqInfo[u32FQId].u32FQDepth;
    u32ValDes = GetQueueLenth(u32OqRead, u32OqWrite, OqInfo->u32OQDepth);
    if(u32ValDes > (u32FqDepth*DMX_CHN_RESET_PERSENT/100))// > 20% of pool buffer
    {
        return 2;
    }

    if (u32ValDes > 1)//have buffer more than 1 block
    {
        return 1;
    }

    HI_DRV_SYS_GetTimeStampMs(&ChanInfo->u32AcqTime);   //if channel buffer is < 1,flush the acquire time

    return 0;
}
/**
\brief get channel acquire time status
\attention
none
\param[in] u32ChanId

\retval none
\return 0: do not care
        1: last acquire time - now > 2s
        2: last acquire time - now > 5s

\see
\li ::
*/
static HI_S32 GetChnAcqTimeStatus(HI_U32 ChanId)
{
    DMX_DEV_OSI_S  *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_OQ_Info_S  *OqInfo      = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];
    HI_U32 u32AcqTime,u32TimeNow;

    if ((ChanInfo->DmxId >= DMX_CNT) || OqInfo->u32FQId != DMX_FQ_COMMOM)
    {
        return 0; //not usded channel,and not common channel,do not process
    }

    HI_DRV_SYS_GetTimeStampMs(&u32TimeNow);

    u32TimeNow += 10;   //add 10ms, void situation 1999ms < 2000

    u32AcqTime = ChanInfo->u32AcqTime;
    if ((u32TimeNow - u32AcqTime) > DMX_RESETCHN_TIME2)// > 5s
    {
        return 2;
    }

    if ((u32TimeNow - u32AcqTime) > DMX_RESETCHN_TIME1)// > 2s
    {
        return 1;
    }
    return 0;
}
/**
\brief get fq status
\attention
none
\param[in] u32FQId

\retval none
\return 0:do not care
        1: fq used des > 80% of fq buffer size

\see
\li ::
*/
static HI_S32 GetFQStatus(HI_U32 u32FQId)
{
    HI_U32 FQ_WPtr, FQ_RPtr, ValidDes,UsedDes,tmp;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;

    DmxHalGetFQWORDx(u32FQId, DMX_FQ_SZWR_OFFSET, &tmp);
    FQ_WPtr = tmp & 0xffff;
    DmxHalGetFQWORDx(u32FQId, DMX_FQ_RDVD_OFFSET, &tmp);
    FQ_RPtr = tmp & 0xffff;

    if (FQ_WPtr >= FQ_RPtr)
    {
        ValidDes = FQ_WPtr - FQ_RPtr;
    }
    else
    {
        ValidDes = (pDmxDevOsi->DmxFqInfo[u32FQId].u32FQDepth) - FQ_RPtr + FQ_WPtr;
    }
    UsedDes = pDmxDevOsi->DmxFqInfo[u32FQId].u32FQDepth - ValidDes;

    if (UsedDes >= (pDmxDevOsi->DmxFqInfo[u32FQId].u32FQDepth)* DMX_CHECK_START_PERSENT/ 100)
    {
       return 1;
    }

    return 0;
}

static  HI_VOID ResetPoolBuf(HI_VOID)
{
    HI_U32 i = 0;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S*  pstDmxChn;
    HI_SIZE_T           LockFlag;

    spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), LockFlag);
    DmxFqStop(DMX_FQ_COMMOM);

    for ( i = 0 ; i < DMX_CHANNEL_CNT; i++ )
    {
        pstDmxChn = &pDmxDevOsi->DmxChanInfo[i];
        if ( (pstDmxChn->ChanOutMode & HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY)  == HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY )
        {
            if ( (pstDmxChn->ChanType == HI_UNF_DMX_CHAN_TYPE_SEC) ||
                (pstDmxChn->ChanType == HI_UNF_DMX_CHAN_TYPE_PES) ||
                (pstDmxChn->ChanType == HI_UNF_DMX_CHAN_TYPE_POST) )
            {
                DmxOqStop(pstDmxChn->ChanOqId);
                DmxFlushChannel(pstDmxChn->ChanId, DMX_FLUSH_TYPE_PLAY);
                DmxFlushOq(pstDmxChn->ChanOqId, DMX_OQ_CLEAR_TYPE_PLAY);
                DmxOqStart(pstDmxChn->ChanOqId);
            }
        }
    }

    DmxFqStart(DMX_FQ_COMMOM);
    spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), LockFlag);

    GlobalProcInfo.ErrInfo.ResetPoolbufCount++;
}

static  HI_VOID UpdateProcRef(HI_S32 ref)
{
    GlobalProcInfo.Ref = ref;
    if ( ref >=  GlobalProcInfo.MaxRef)
    {
        GlobalProcInfo.MaxRef = ref;
    }
}


HI_VOID CheckChnTimeoutProc(HI_LENGTH_T TimerPara)
{
    HI_S32 s32Ret;
    HI_U32 i;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S*  pstDmxChn;

    del_timer(&CheckChnTimeoutTimer);
    //check all channel
    if (GetFQStatus(DMX_FQ_COMMOM))//dmx pool buffer used > 80%
    {
        for ( i = 0 ; i < DMX_CHANNEL_CNT; i++ )
        {
            pstDmxChn = &pDmxDevOsi->DmxChanInfo[i];
            if (pstDmxChn->u32ChnResetLock)
            {
                continue;
            }

            s32Ret = GetChnDataStatus(i);
            if (s32Ret == 2)//channel buffer > 20% of dmx pool buffer
            {
                if (GetChnAcqTimeStatus(i) >= 1)
                {
                    DMX_OsiResetChannel(i, DMX_FLUSH_TYPE_REC_PLAY);//reset channel
                    HI_DRV_SYS_GetTimeStampMs(&pstDmxChn->u32AcqTime);

                    pDmxDevOsi->DmxFqInfo[DMX_FQ_COMMOM].FqOverflowCount++;
                }
            }
            else if (s32Ret == 1)//channel buffer < 20% of dmx pool buffer,> 1 blk
            {
                if (GetChnAcqTimeStatus(i) == 2)// > 5s not receive data
                {
                    DMX_OsiResetChannel(i, DMX_FLUSH_TYPE_REC_PLAY);//reset channel
                    HI_DRV_SYS_GetTimeStampMs(&pstDmxChn->u32AcqTime);

                    pDmxDevOsi->DmxFqInfo[DMX_FQ_COMMOM].FqOverflowCount++;
                }
            }
        }
    }
    CheckChnTimeoutTimer.expires = jiffies + DMX_CHECKCHN_TIMEOUT * HZ / 1000;
    add_timer(&CheckChnTimeoutTimer);
    return;
}

#ifdef CHIP_TYPE_hi3716m
static HI_VOID DmxGetHi3716MV300Flag(HI_VOID)
{
     HI_CHIP_VERSION_E Version;

     HI_DRV_SYS_GetChipVersion(HI_NULL, &Version);

     Hi3716MV300Flag = (HI_CHIP_VERSION_V300 == Version) ? HI_TRUE : HI_FALSE;
}
#endif

static HI_S32 DmxReset(HI_VOID)
{
    HI_S32 ret;

    DmxHalConfigHardware();

    ret = DmxHalGetInitStatus();
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_DEMUX("status error\n");

        return ret;
    }

    DmxHalIPPortAutoClearBP();

#ifdef DMX_FILTER_DEPTH_SUPPORT
    DmxHalFilterEnableDepth();
#endif

#ifdef CHIP_TYPE_hi3716m
    DmxGetHi3716MV300Flag();

    if (Hi3716MV300Flag)
    {
        DmxHalFilterSetSecStuffCtrl(HI_TRUE);
    }
#else
    #ifdef DMX_SECTION_PARSE_NOPUSI_SUPPORT
    DmxHalFilterSetSecStuffCtrl(HI_TRUE);
    #endif
#endif

    DmxHalEnableRamClkAutoCtl();

    return HI_SUCCESS;
}

/*
 * simple dynamic tune dmx clock rule(range: [0 ~ 31]):
 * 1. no demux attached to any port, reduce = 31;
 * 2. 1 demux attached to any port, reduce = 10;
 * 3. more than 2 demux attached to any port, reduce = 0;
 * 4. ram port need external bandwidth, so we increase using count.
 * see actual dmx clk from offset 0x2320.
 */
static HI_VOID DMX_DynamicTuneDmxClk(HI_VOID)
{
    HI_U32 ActiveCnt = 0;
    HI_U32 index;

    for (index = 0; index < DMX_CNT; index++)
    {
        DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[index];
        
        if (DMX_INVALID_PORT_ID != DmxInfo->PortId)
        {  
            ActiveCnt ++;

            if (DMX_PORT_MODE_RAM == DmxInfo->PortMode)
            {
                ActiveCnt ++ ;
            }
        }
    }

    switch(ActiveCnt)
    {
        case 0:
            DmxHalDynamicTuneDmxClk(31);
            break;
        case 1:
            DmxHalDynamicTuneDmxClk(10);
            break;
        default:
            DmxHalDynamicTuneDmxClk(0);
            break;
    }
}

extern uint DmxPoolBufSize;
extern uint DmxBlockSize;

static HI_S32 __DMX_StartAllDmx(HI_VOID)
{
    HI_UNF_DMX_PORT_ATTR_S  PortAttr;
    HI_UNF_DMX_TSO_PORT_ATTR_S  TSOPortAttr;
    DMX_FQ_Info_S          *FqInfo;
    HI_U32                  BufSize;
    HI_U32                  FqDepth;
    HI_U32                  FqBufSize;
    MMZ_BUFFER_S            MmzBuf;
    HI_U32                  i;

    if (HI_SUCCESS != DmxReset())
    {
        return HI_ERR_DMX_BUSY;
    }

    if (0 != request_irq(DMX_INT_NUM, (irq_handler_t) DMXOsiIsr, IRQF_DISABLED, "hi_dmx_irq", HI_NULL))
    {
        HI_ERR_DEMUX("request_irq(%d) error.\n", DMX_INT_NUM);
        return HI_FAILURE;
    }

    BufSize     = (DmxPoolBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;
    FqDepth     = BufSize / (DmxBlockSize + DMX_BUF_INTERVAL) + 1;
    FqBufSize   = FqDepth * DMX_FQ_DESC_SIZE;

    if (HI_SUCCESS != HI_DRV_MMZ_AllocAndMap("DMX_PoolBuf", MMZ_OTHERS, BufSize + FqBufSize, 0, &MmzBuf))
    {
        HI_FATAL_DEMUX("memory allocate failed\n");

        free_irq(DMX_INT_NUM, HI_NULL);

        return HI_ERR_DMX_ALLOC_MEM_FAILED;
    }

    FqInfo = &g_pDmxDevOsi->DmxFqInfo[DMX_FQ_COMMOM];

    FqInfo->u32IsUsed       = 1;
    FqInfo->u32BufPhyAddr   = MmzBuf.u32StartPhyAddr;
    FqInfo->u32BufVirAddr   = MmzBuf.u32StartVirAddr;
    FqInfo->u32BufSize      = BufSize;
    FqInfo->u32BlockSize    = DmxBlockSize;
    FqInfo->u32FQDepth      = FqDepth;
    FqInfo->u32FQPhyAddr    = FqInfo->u32BufPhyAddr + BufSize;
    FqInfo->u32FQVirAddr    = FqInfo->u32BufVirAddr + BufSize;

    DmxFqStart(DMX_FQ_COMMOM);

    for (i = 0; i < DMX_TUNERPORT_CNT; i++)
    {
        PortAttr.enPortMod              = (i < DMX_IFPORT_CNT)?HI_UNF_DMX_PORT_MODE_INTERNAL:HI_UNF_DMX_PORT_MODE_EXTERNAL;
        PortAttr.enPortType             = HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188;
        PortAttr.u32SyncLostTh          = 1;
        PortAttr.u32SyncLockTh          = 5;
        PortAttr.u32TunerInClk          = 0;
        PortAttr.u32SerialBitSelector   = 0;
        PortAttr.u32TunerErrMod         = 0;
        PortAttr.u32UserDefLen1         = 0;
        PortAttr.u32UserDefLen2         = 0;

        DMX_OsiTunerPortSetAttr(i, &PortAttr);

        DmxHalDvbPortSetTsCountCtrl(i, TS_COUNT_CRTL_START);
        DmxHalDvbPortSetErrTsCountCtrl(i, TS_COUNT_CRTL_START);
    }

    for (i = 0; i < DMX_RAMPORT_CNT; i++)
    {
        DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[i];

        init_waitqueue_head(&PortInfo->WaitQueue);

        PortAttr.enPortMod              = HI_UNF_DMX_PORT_MODE_RAM;
    #ifdef DMX_RAM_PORT_AUTO_SCAN_SUPPORT
        PortAttr.enPortType             = HI_UNF_DMX_PORT_TYPE_AUTO;
    #else
        PortAttr.enPortType             = HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188_204;
    #endif
        PortAttr.u32SyncLostTh          = 3;
        PortAttr.u32SyncLockTh          = 7;
        PortAttr.u32TunerInClk          = 0;
        PortAttr.u32SerialBitSelector   = 0;
        PortAttr.u32TunerErrMod         = 0;
        PortAttr.u32UserDefLen1         = 0;
        PortAttr.u32UserDefLen2         = 0;

        DMX_OsiRamPortSetAttr(i, &PortAttr);

        DmxHalIPPortEnableInt(i);
        DmxHalIPPortSetIntCnt(i, DMX_DEFAULT_INT_CNT);

        DmxHalIPPortSetTsCountCtrl(i, HI_TRUE);
    }

    for ( i = 0 ; i < DMX_TSOPORT_CNT; i++ )
    {
        TSOPortAttr.bEnable         = HI_TRUE;
        TSOPortAttr.bClkReverse     = HI_TRUE;
        TSOPortAttr.enTSSource      = HI_UNF_DMX_PORT_IF_0;
        TSOPortAttr.enClkMode       = HI_UNF_DMX_TSO_CLK_MODE_NORMAL;
        TSOPortAttr.enValidMode     = HI_UNF_DMX_TSO_VALID_ACTIVE_OUTPUT;
        TSOPortAttr.bBitSync        = HI_TRUE;
        TSOPortAttr.bSerial         = HI_TRUE;
        TSOPortAttr.enBitSelector   = HI_UNF_DMX_TSO_SERIAL_BIT_0;
        TSOPortAttr.bLSB            = HI_FALSE;

        DmxHalGetTSOClkCfg(i,&TSOPortAttr.bClkReverse,(HI_U32*)&TSOPortAttr.enClk,&TSOPortAttr.u32ClkDiv);
        DMX_OsiTSOPortSetAttr(i, &TSOPortAttr);
    }

#ifdef DMX_TAG_DEAL_SUPPORT
    {
        DMX_TagDeal_Info_S *TagDealInfo = &g_pDmxDevOsi->TagDealInfo;

        TagDealInfo->bEnabled = HI_FALSE;
        TagDealInfo->enSyncMod = HI_UNF_DMX_TAG_HEAD_SYNC;
        TagDealInfo->u32TagLen = DMX_DEFAULT_TAG_LENGTH; /* bytes */
        TagDealInfo->u32TSPortId = DMX_INVALID_PORT_ID;
        
        for (i = 0; i < DMX_TAG_MAX_TS_WAY ; i++)
        {
            TagDealInfo->TagPortAttrs[i].bEnabled = HI_FALSE;
            TagDealInfo->TagPortAttrs[i].enSyncMod = TagDealInfo->enSyncMod;
            TagDealInfo->TagPortAttrs[i].u32TagLen = TagDealInfo->u32TagLen;

            memset(&(TagDealInfo->TagPortAttrs[i].au8Tag[0]), 0, sizeof(TagDealInfo->TagPortAttrs[i].au8Tag));
        }

        for ( i = 0 ; i < DMX_CNT ; i++ )
        {
            TagDealInfo->DmxAttachedPortID[i] = DMX_INVALID_PORT_ID;
        }

        /* disable TS port tag deal mode default */
        DmxHalSetTagDealCtl(DMX_INVALID_PORT_ID, TagDealInfo->bEnabled, TagDealInfo->enSyncMod, TagDealInfo->u32TagLen);
    }
#endif

    for (i = 0; i < DMX_CNT; i++)
    {
        DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[i];
        DMX_RecInfo_S      *RecInfo = &g_pDmxDevOsi->DmxRecInfo[i];

        DmxInfo->PortMode   = DMX_PORT_MODE_BUTT;
        DmxInfo->PortId     = DMX_INVALID_PORT_ID;

        RecInfo->DmxId      = DMX_INVALID_DEMUX_ID;
#ifndef DMX_DATAINDEX_V1_SUPPORT
        INIT_LIST_HEAD(&RecInfo->head);   
        RecInfo->RemIdxCnt = 0;
#endif

        HI_INIT_MUTEX(&RecInfo->LockRec);

        DmxHalSetSpsRefRecCh(i, 0xff);
    }

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[i];

        ChanInfo->DmxId             = DMX_INVALID_DEMUX_ID;
        ChanInfo->ChanPid           = DMX_INVALID_PID;
        ChanInfo->ChanId            = DMX_INVALID_CHAN_ID;
        ChanInfo->KeyId             = DMX_INVALID_KEY_ID;
        ChanInfo->u32ChnResetLock   = 0;
    #ifdef DMX_USE_ECM
        ChanInfo->u32SwFlag         = 0;
    #endif

        DmxHalSetChannelPlayDmxid(i, DMX_INVALID_DEMUX_ID);
        DmxHalSetChannelRecDmxid(i, DMX_INVALID_DEMUX_ID);
        DmxHalSetChannelPid(i, DMX_INVALID_PID);
    }

    for (i = 0; i < DMX_FILTER_CNT; i++)
    {
        DMX_FilterInfo_S *FilterInfo = &g_pDmxDevOsi->DmxFilterInfo[i];

        FilterInfo->ChanId      = DMX_INVALID_CHAN_ID;
        FilterInfo->FilterId    = DMX_INVALID_FILTER_ID;
        FilterInfo->Depth       = 0;
    }

#ifdef DMX_DESCRAMBLER_SUPPORT
    for (i = 0; i < DMX_KEY_CNT; i++)
    {
        DescramblerReset(i, &g_pDmxDevOsi->DmxKeyInfo[i]);
    }
#endif

    for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
    {
        g_pDmxDevOsi->DmxPcrInfo[i].DmxId = DMX_INVALID_DEMUX_ID;
    }

    for (i = 0; i < DMX_OQ_CNT; i++)
    {
        DMX_OQ_Info_S  *OqInfo = &g_pDmxDevOsi->DmxOqInfo[i];

        OqInfo->u32OQId     = i;
        OqInfo->OqWakeUp    = HI_FALSE;

        init_waitqueue_head(&OqInfo->OqWaitQueue);
    }

    for (i = 0; i < DMX_FQ_CNT; i++)
    {
        DMX_FQ_Info_S  *FqInfo = &g_pDmxDevOsi->DmxFqInfo[i];

        spin_lock_init(&FqInfo->LockFq);
    }

    // default global set
    DmxHalEnableAllDavInt();
    DmxHalEnableAllChEopInt();
    DmxHalEnableAllChEnqueInt();

    DmxHalFQEnableAllOverflowInt();
    
#ifdef HI_DEMUX_PROC_SUPPORT
    memset(&GlobalProcInfo,0x0,sizeof(DMX_Proc_Global_Info_S));
#endif

    DmxHalSetFlushMaxWaitTime(0x2400);
    DmxHalSetDataFakeMod(DMX_ENABLE);
    init_waitqueue_head(&g_pDmxDevOsi->DmxWaitQueue);

#ifdef DMX_DESCRAMBLER_SUPPORT
#ifdef CHIP_TYPE_hi3716m
    if (Hi3716MV300Flag)
    {
        DescInitHardFlag();
    }
#else
    #ifdef DMX_DESCRAMBLER_VERSION_1
    DescInitHardFlag();
    #endif
#endif
#endif

#ifdef DMX_USE_ECM
    HI_DMX_SwInit();
#endif
    init_waitqueue_head(&AllChnWaitQueue);
    memset(&psErrMsg, 0, sizeof(DMX_ERRMSG_S) * DMX_MAX_ERRLIST_NUM);

    DmxHalEnableAllPVRInt();

    DMX_DynamicTuneDmxClk();

    del_timer(&CheckChnTimeoutTimer);
    CheckChnTimeoutTimer.expires = jiffies + DMX_CHECKCHN_TIMEOUT * HZ / 1000;
    add_timer(&CheckChnTimeoutTimer);

    return HI_SUCCESS;
}

HI_S32 DMX_StartAllDmx(HI_VOID)
{
    HI_S32 ret = HI_FAILURE;

    BUG_ON(!g_pDmxDevOsi);

    if (DMX_DEV_ACTIVED == g_pDmxDevOsi->State)
    {
        ret = HI_SUCCESS;
        goto out;
    }

    g_pDmxDevOsi->State = DMX_DEV_ACTIVED;

    ret = __DMX_StartAllDmx();

out:
    return ret;
}

/***********************************************************************************
* Function      : DMX_OsiInit
* Description   : Initialize demux module
* Input         :
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:     system error or allocated dma buffer size beyonds limit
* Others:
***********************************************************************************/
HI_S32 DMX_OsiInit(HI_VOID)
{
    DMX_DEV_OSI_S          *pDmxDevOsi;
    HI_U32                  ProcessID;

    if (HI_NULL != g_pDmxDevOsi)
    {
        g_pDmxDevOsi->Reference++;
        UpdateProcRef(g_pDmxDevOsi->Reference);
        ProcessID = __task_pid_nr_ns(current, PIDTYPE_PID, NULL);
        HI_INFO_DEMUX("Process (ID : 0x%x )call DMX_OsiInit , g_pDmxDevOsi->Reference= %d\n",ProcessID,g_pDmxDevOsi->Reference);
        return HI_SUCCESS;
    }

    pDmxDevOsi = HI_KMALLOC(HI_ID_DEMUX, sizeof(DMX_DEV_OSI_S), GFP_KERNEL);
    if (HI_NULL == pDmxDevOsi)
    {
        HI_FATAL_DEMUX("memory allocate failed\n");

        return HI_ERR_DMX_ALLOC_MEM_FAILED;
    }

    memset((HI_VOID*)pDmxDevOsi, 0, sizeof(DMX_DEV_OSI_S));

    pDmxDevOsi->State = DMX_DEV_INACTIVED;
    
    HI_INIT_MUTEX(&pDmxDevOsi->lock_Channel);
    HI_INIT_MUTEX(&pDmxDevOsi->lock_Filter);
    HI_INIT_MUTEX(&pDmxDevOsi->lock_Key);
    HI_INIT_MUTEX(&pDmxDevOsi->lock_AVChan);
    
    spin_lock_init(&pDmxDevOsi->splock_OqBuf);

    g_pDmxDevOsi = pDmxDevOsi;

    g_pDmxDevOsi->ResumeCnt = 0;

    g_pDmxDevOsi->Reference++;
    UpdateProcRef(g_pDmxDevOsi->Reference);
    ProcessID = __task_pid_nr_ns(current, PIDTYPE_PID, NULL);
    HI_INFO_DEMUX("Process (ID : 0x%x )call DMX_OsiInit , g_pDmxDevOsi->Reference= %d\n", ProcessID, g_pDmxDevOsi->Reference);

    return HI_SUCCESS;
}

static HI_S32 __DMX_StopAllDmx(HI_VOID)
{
    DMX_FQ_Info_S  *FqInfo = HI_NULL;
    MMZ_BUFFER_S    MmzBuf;
    HI_U32          i;

    FqInfo = &g_pDmxDevOsi->DmxFqInfo[DMX_FQ_COMMOM];

    DmxHalDisableAllPVRInt();
    
    free_irq(DMX_INT_NUM, HI_NULL);

    del_timer(&CheckChnTimeoutTimer);

    for (i = 0; i < DMX_RAMPORT_CNT; i++)
    {
        if (0 != g_pDmxDevOsi->RamPortInfo[i].DescPhyAddr)
        {
            MMZ_BUFFER_S MmzBuf;

            MmzBuf.u32StartPhyAddr = g_pDmxDevOsi->RamPortInfo[i].DescPhyAddr;
            MmzBuf.u32StartVirAddr = g_pDmxDevOsi->RamPortInfo[i].DescKerAddr;

            HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);
        }

        DmxHalIPPortDisableInt(i);
        DmxHalIPPortSetTsCountCtrl(i, HI_FALSE);
    }

    for (i = 0; i < DMX_TUNERPORT_CNT; i++)
    {
        DmxHalDvbPortSetTsCountCtrl(i, TS_COUNT_CRTL_STOP);
        DmxHalDvbPortSetTsCountCtrl(i, TS_COUNT_CRTL_RESET);

        DmxHalDvbPortSetErrTsCountCtrl(i, TS_COUNT_CRTL_STOP);
        DmxHalDvbPortSetErrTsCountCtrl(i, TS_COUNT_CRTL_RESET);
    }

    DmxFqStop(DMX_FQ_COMMOM);

    MmzBuf.u32StartPhyAddr  = FqInfo->u32BufPhyAddr;
    MmzBuf.u32StartVirAddr  = FqInfo->u32BufVirAddr;

    HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);

    return HI_SUCCESS;
}

HI_S32 DMX_StopAllDmx(HI_VOID)
{
    HI_S32 ret = HI_FAILURE;
    
    BUG_ON(!g_pDmxDevOsi);
        
    if (DMX_DEV_INACTIVED == g_pDmxDevOsi->State)
    {
        ret = HI_SUCCESS;
        goto out;
    }

    g_pDmxDevOsi->State = DMX_DEV_INACTIVED; 

    __DMX_StopAllDmx();

    ret = HI_SUCCESS;

out:
    return ret;
}

/***********************************************************************************
* Function      : DMX_OsiDeInit
* Description   : destroy demux module
* Input         :
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiDeInit(HI_VOID)
{
    HI_U32 ProcessID;

    if ( g_pDmxDevOsi )
    {
        g_pDmxDevOsi->Reference--;
        UpdateProcRef(g_pDmxDevOsi->Reference);
        ProcessID = __task_pid_nr_ns(current, PIDTYPE_PID, NULL);
        HI_INFO_DEMUX("Process (ID : 0x%x )call DMX_OsiDeInit , g_pDmxDevOsi->Reference= %d\n",ProcessID,g_pDmxDevOsi->Reference);

        if ( 0 == g_pDmxDevOsi->Reference )
        {
            DMX_StopAllDmx();

            HI_KFREE(HI_ID_DEMUX, g_pDmxDevOsi);
            g_pDmxDevOsi = HI_NULL;
        }
    }

    return HI_SUCCESS;
}
/*add a parameter: HI_U32 *VirAddr, according to  chipset test team's requirement(by xunrenyun 00214461)*/
HI_S32 DMX_OsiGetPoolBufAddr(HI_U32 *VirAddr, HI_U32 *PhyAddr, HI_U32 *BufSize)
{
    DMX_FQ_Info_S  *FqInfo = &g_pDmxDevOsi->DmxFqInfo[DMX_FQ_COMMOM];

    *VirAddr = FqInfo->u32BufVirAddr;
    *PhyAddr = FqInfo->u32BufPhyAddr;
    *BufSize = FqInfo->u32BufSize;

    return HI_SUCCESS;
}

HI_VOID DMX_OsiSetNoPusiEn(HI_BOOL bNoPusiEn)
{
        DmxHalFilterSetSecStuffCtrl(bNoPusiEn);
}

HI_VOID DMX_OsiSetTei(HI_U32 u32DmxId,HI_BOOL bTei)
{
        DmxHalSetTei(u32DmxId,bTei);
}

HI_VOID DMX_OsiTSIAttashTSO(HI_U32 TunerPortID,HI_UNF_DMX_TSO_PORT_E TSO)
{
    DMX_TunerPort_Info_S* Tsi = &g_pDmxDevOsi->TunerPortInfo[TunerPortID];
    HI_UNF_DMX_TSO_PORT_ATTR_S* Tso;
    Tsi->bAttachWithTSO = HI_TRUE;
    Tsi->AttachedTSO = TSO;

    Tso = &g_pDmxDevOsi->TSOPortInfo[Tsi->AttachedTSO];

    if ( (Tso->enTSSource >= HI_UNF_DMX_PORT_RAM_0) && (Tso->enTSSource < HI_UNF_DMX_PORT_RAM_0 + DMX_RAMPORT_CNT))
    {
        Tsi->BPRamPort = Tso->enTSSource; 
    }
    /*if attached TSO's source is not RAM port, should reset the Tsi->BPRamPort  as 0*/
    else
    {
        Tsi->BPRamPort = 0;
    }
}

HI_BOOL DMX_OsiIsTSIAttachTSO(HI_U32 PortId, HI_UNF_DMX_TSO_PORT_E* TSO)
{
    DMX_TunerPort_Info_S* Tsi = &g_pDmxDevOsi->TunerPortInfo[PortId];
    *TSO = Tsi->AttachedTSO;
    return Tsi->bAttachWithTSO;
}

HI_S32  DMX_OsiGetResumeCount(HI_U32 *pCount)
{
    *pCount = g_pDmxDevOsi->ResumeCnt;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiAttachPort(const HI_U32 DmxId, const DMX_PORT_MODE_E PortMode, const HI_U32 PortId)
{
    DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];

    DmxInfo->PortMode   = PortMode;
    DmxInfo->PortId     = PortId;
    
    /*
    * data will be into demux immediately after DmxHalSetDemuxPortId succeed.
    * tune clk in advance.
    */
    DMX_DynamicTuneDmxClk();

    DmxHalSetDemuxPortId(DmxId, PortMode, PortId);

    if (DMX_PORT_MODE_RAM == PortMode)
    {
        HI_U32 i;

        for (i = 0;  i < DMX_CHANNEL_CNT; i++)
        {
            DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[i];

            if (ChanInfo->DmxId == DmxId)
            {
                if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY != (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
                {
                    continue;
                }

                if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
                {
                    DMX_OQ_Info_S *OqInfo = &g_pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

                    DmxHalAttachIPBPFQ(DmxInfo->PortId, OqInfo->u32FQId);
                }
            }
        }
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiDetachPort(const HI_U32 DmxId)
{
    DMX_Sub_DevInfo_S *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];

    if ((DMX_PORT_MODE_RAM == DmxInfo->PortMode) && (DmxInfo->PortId < DMX_RAMPORT_CNT))
    {
        HI_U32 i;

        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[i];

            if (ChanInfo->DmxId == DmxId)
            {
                if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY != (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
                {
                    continue;
                }

                if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
                {
                    DMX_OQ_Info_S *OqInfo = &g_pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

                    DmxHalDetachIPBPFQ(DmxInfo->PortId, OqInfo->u32FQId);
                    DmxHalClrIPFqBPStatus(DmxInfo->PortId, OqInfo->u32FQId);
                }
            }
        }
    }

    DmxInfo->PortMode   = DMX_PORT_MODE_BUTT;
    DmxInfo->PortId     = DMX_INVALID_PORT_ID;

    DmxHalSetDemuxPortId(DmxId, DMX_PORT_MODE_BUTT, DMX_INVALID_PORT_ID);

    DMX_DynamicTuneDmxClk();

    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetPortId(const HI_U32 DmxId, DMX_PORT_MODE_E *PortMode, HI_U32 *PortId)
{
    HI_S32              ret     = HI_ERR_DMX_NOATTACH_PORT;
    DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];

    if (DMX_INVALID_PORT_ID != DmxInfo->PortId)
    {
        *PortMode   = DmxInfo->PortMode;
        *PortId     = DmxInfo->PortId;

        ret = HI_SUCCESS;
    }
    else
    {
        HI_WARN_DEMUX("the demux not attach with any port, DmxId=%d.\n", DmxId);
    }

    return ret;
}

HI_S32 DMX_OsiTSOPortGetAttr(const HI_U32 PortId, HI_UNF_DMX_TSO_PORT_ATTR_S *PortAttr)
{
    HI_UNF_DMX_TSO_PORT_ATTR_S *PortInfo = &g_pDmxDevOsi->TSOPortInfo[PortId];

    PortAttr->bEnable         = PortInfo->bEnable;
    PortAttr->bClkReverse     = PortInfo->bClkReverse;
    PortAttr->enTSSource      = PortInfo->enTSSource;
    PortAttr->enClkMode       = PortInfo->enClkMode;
    PortAttr->enValidMode     = PortInfo->enValidMode;
    PortAttr->bBitSync        = PortInfo->bBitSync;
    PortAttr->bSerial         = PortInfo->bSerial;
    PortAttr->enBitSelector   = PortInfo->enBitSelector;
    PortAttr->bLSB            = PortInfo->bLSB;
    PortAttr->enClk           = PortInfo->enClk;
    PortAttr->u32ClkDiv       = PortInfo->u32ClkDiv;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTSOPortSetAttr(const HI_U32 PortId, const HI_UNF_DMX_TSO_PORT_ATTR_S *PortAttr)
{
    HI_UNF_DMX_TSO_PORT_ATTR_S *PortInfo = &g_pDmxDevOsi->TSOPortInfo[PortId];

    if ((PortAttr->enClkMode >=  HI_UNF_DMX_TSO_CLK_MODE_BUTT) ||
        (PortAttr->enValidMode >=  HI_UNF_DMX_TSO_VALID_ACTIVE_BUTT ) ||
        (PortAttr->enClk >=  HI_UNF_DMX_TSO_CLK_BUTT ) )
    {
        HI_ERR_DEMUX("enClkMode or enValidMode or enClk is invalid\n");
        return HI_ERR_DMX_INVALID_PARA;
    }

    if ( (PortAttr->u32ClkDiv < 2) || (PortAttr->u32ClkDiv > 32) || (PortAttr->u32ClkDiv%2 != 0 ) )
    {
        HI_ERR_DEMUX("u32ClkDiv = %d is invalid\n",PortAttr->u32ClkDiv );
        return HI_ERR_DMX_INVALID_PARA;
    }

    if ( (PortAttr->enClkMode == HI_UNF_DMX_TSO_CLK_MODE_NORMAL) && (PortAttr->enValidMode == HI_UNF_DMX_TSO_VALID_ACTIVE_HIGH) )
    {
            HI_ERR_DEMUX("invalid tso port attr , can not config  (enClkMode == HI_UNF_DMX_TSO_CLK_MODE_NORMAL) \
                while (enValidMode == HI_UNF_DMX_TSO_VALID_ACTIVE_HIGH)\n");
            return HI_ERR_DMX_INVALID_PARA;
    }

    if ( PortAttr->enTSSource < HI_UNF_DMX_PORT_TSI_0 )
    {
        if ( DMX_IFPORT_CNT == 0 )
        {
            HI_ERR_DEMUX("this chipset have no IF port ,so can not choose enTSSource as IF port\n");
            return HI_ERR_DMX_INVALID_PARA;
        }
        else if ( PortAttr->enTSSource - HI_UNF_DMX_PORT_IF_0 >= DMX_IFPORT_CNT )
        {
            HI_ERR_DEMUX("if enTSSource is HI_UNF_DMX_PORT_IF_x , must less than 0x%x\n",DMX_IFPORT_CNT);
            return HI_ERR_DMX_INVALID_PARA;
        }
    }
    else if ( (PortAttr->enTSSource >= HI_UNF_DMX_PORT_TSI_0) && (PortAttr->enTSSource <= HI_UNF_DMX_PORT_TSI_7)  )
    {
        if ( PortAttr->enTSSource - HI_UNF_DMX_PORT_TSI_0 >= DMX_TSIPORT_CNT )
        {
            HI_ERR_DEMUX("if enTSSource is HI_UNF_DMX_PORT_TS_x , must less than 0x%x\n",HI_UNF_DMX_PORT_TSI_0 + DMX_TSIPORT_CNT);
            return HI_ERR_DMX_INVALID_PARA;
        }
    }
    else if ( (PortAttr->enTSSource >= HI_UNF_DMX_PORT_RAM_0) && (PortAttr->enTSSource <= HI_UNF_DMX_PORT_RAM_7) )
    {
        if ( PortAttr->enTSSource - HI_UNF_DMX_PORT_RAM_0 >= DMX_RAMPORT_CNT )
        {
            HI_ERR_DEMUX("if enTSSource is HI_UNF_DMX_PORT_RAM_x , must less than 0x%x\n",HI_UNF_DMX_PORT_RAM_0 + DMX_RAMPORT_CNT);
            return HI_ERR_DMX_INVALID_PARA;
        }
    }
    else
    {
        HI_ERR_DEMUX("enTSSource is invalid\n");
        return HI_ERR_DMX_INVALID_PARA;
    }

    PortInfo->bEnable         = PortAttr->bEnable;
    PortInfo->bClkReverse     = PortAttr->bClkReverse;
    PortInfo->enTSSource      = PortAttr->enTSSource;
    PortInfo->enClkMode       = PortAttr->enClkMode;
    PortInfo->enValidMode     = PortAttr->enValidMode;
    PortInfo->bBitSync        = PortAttr->bBitSync;
    PortInfo->bSerial         = PortAttr->bSerial;
    PortInfo->enBitSelector   = PortAttr->enBitSelector;
    PortInfo->bLSB            = PortAttr->bLSB;
    PortInfo->enClk           = PortAttr->enClk;
    PortInfo->u32ClkDiv       = PortAttr->u32ClkDiv;

    DmxHalTSOPortSetAttr(PortId,PortInfo);
    DmxHalCfgTSOClk(PortId,PortInfo->bClkReverse,(HI_U32)PortInfo->enClk,PortInfo->u32ClkDiv);

    if ( PortInfo->enTSSource >=  HI_UNF_DMX_PORT_RAM_0)
    {
        DMXConfigIPPortRate(PortInfo->enTSSource - HI_UNF_DMX_PORT_RAM_0);
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTunerPortGetAttr(const HI_U32 PortId, HI_UNF_DMX_PORT_ATTR_S *PortAttr)
{
    DMX_TunerPort_Info_S *PortInfo = &g_pDmxDevOsi->TunerPortInfo[PortId];

    PortAttr->enPortMod             = (PortId < DMX_IFPORT_CNT)?HI_UNF_DMX_PORT_MODE_INTERNAL:HI_UNF_DMX_PORT_MODE_EXTERNAL;
    PortAttr->enPortType            = PortInfo->PortType;
    PortAttr->u32SyncLostTh         = PortInfo->SyncLostTh;
    PortAttr->u32SyncLockTh         = PortInfo->SyncLockTh;
    PortAttr->u32TunerInClk         = PortInfo->TunerInClk;
    PortAttr->u32SerialBitSelector  = PortInfo->BitSelector;
    PortAttr->u32TunerErrMod        = 0;
    PortAttr->u32UserDefLen1        = 0;
    PortAttr->u32UserDefLen2        = 0;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTunerPortSetAttr(const HI_U32 PortId, const HI_UNF_DMX_PORT_ATTR_S *PortAttr)
{
    DMX_TunerPort_Info_S *PortInfo = &g_pDmxDevOsi->TunerPortInfo[PortId];

    switch (PortAttr->enPortType)
    {
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_BURST :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_VALID :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188 :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_204 :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188_204 :
        case HI_UNF_DMX_PORT_TYPE_SERIAL :
            break;

        case HI_UNF_DMX_PORT_TYPE_SERIAL2BIT :
        case HI_UNF_DMX_PORT_TYPE_SERIAL_NOSYNC :
        case HI_UNF_DMX_PORT_TYPE_SERIAL2BIT_NOSYNC :
    #ifdef DMX_TUNER_PORT_SERIAL_2BIT_AND_SERIAL_NOSYNC_SUPPORT
            break;
    #else
            return HI_ERR_DMX_NOT_SUPPORT;
    #endif

        case HI_UNF_DMX_PORT_TYPE_USER_DEFINED :
        case HI_UNF_DMX_PORT_TYPE_AUTO :
            return HI_ERR_DMX_NOT_SUPPORT;

        default :
            HI_ERR_DEMUX("Port %u set invalid port type %d\n", PortId, PortAttr->enPortType);

            return HI_ERR_DMX_INVALID_PARA;
    }

    if (PortAttr->u32TunerInClk > 1)
    {
        HI_ERR_DEMUX("Port %u set invalid tunner in clock %d\n", PortId, PortAttr->u32TunerInClk);

        return HI_ERR_DMX_INVALID_PARA;
    }

    if (PortAttr->u32SerialBitSelector > 1)
    {
        HI_ERR_DEMUX("Port %u set invalid Serial Bit Selector %d\n", PortId, PortAttr->u32SerialBitSelector);

        return HI_ERR_DMX_INVALID_PARA;
    }

    PortInfo->PortType      = PortAttr->enPortType;
    PortInfo->SyncLockTh    = PortAttr->u32SyncLockTh > DMX_MAX_LOCK_TH ? DMX_MAX_LOCK_TH : PortAttr->u32SyncLockTh;
    PortInfo->SyncLostTh    = PortAttr->u32SyncLostTh > DMX_MAX_LOST_TH ? DMX_MAX_LOST_TH : PortAttr->u32SyncLostTh;
    PortInfo->BitSelector   = PortAttr->u32SerialBitSelector;

    DmxHalDvbPortSetAttr(PortId, PortInfo->PortType, PortInfo->SyncLockTh,
            PortInfo->SyncLostTh, PortInfo->TunerInClk, PortInfo->BitSelector);

    if (PortId >= DMX_IFPORT_CNT)
    {
        PortInfo->TunerInClk = PortAttr->u32TunerInClk;

        DmxHalDvbPortSetClkInPol(PortId, PortInfo->TunerInClk);
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiRamPortGetAttr(const HI_U32 PortId, HI_UNF_DMX_PORT_ATTR_S *PortAttr)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];

    PortAttr->enPortMod             = HI_UNF_DMX_PORT_MODE_RAM;
    PortAttr->enPortType            = PortInfo->PortType;
    PortAttr->u32SyncLostTh         = PortInfo->SyncLostTh;
    PortAttr->u32SyncLockTh         = PortInfo->SyncLockTh;
    PortAttr->u32TunerInClk         = 0;
    PortAttr->u32SerialBitSelector  = 0;
    PortAttr->u32TunerErrMod        = 0;
    PortAttr->u32UserDefLen1        = PortInfo->MinLen;
    PortAttr->u32UserDefLen2        = PortInfo->MaxLen;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiRamPortSetAttr(const HI_U32 PortId, const HI_UNF_DMX_PORT_ATTR_S *PortAttr)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];

#ifdef CHIP_TYPE_hi3716m
    if (!Hi3716MV300Flag)
    {
        if (HI_UNF_DMX_PORT_TYPE_USER_DEFINED == PortAttr->enPortType)
        {
            return HI_ERR_DMX_NOT_SUPPORT;
        }
    }
#endif

    switch (PortAttr->enPortType)
    {
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188 :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_204 :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_NOSYNC_188_204 :
            PortInfo->MinLen = 0;
            PortInfo->MaxLen = 0;

            break;

        case HI_UNF_DMX_PORT_TYPE_AUTO :
    #ifdef DMX_RAM_PORT_AUTO_SCAN_SUPPORT
            PortInfo->MinLen = 0;
            PortInfo->MaxLen = 0;

            break;
    #else
            HI_ERR_DEMUX("do not support auto scan!\n");
            return HI_ERR_DMX_NOT_SUPPORT;
    #endif

        case HI_UNF_DMX_PORT_TYPE_USER_DEFINED :
    #ifdef DMX_RAM_PORT_SET_LENGTH_SUPPORT
            if (   (PortAttr->u32UserDefLen1 < DMX_RAM_PORT_MIN_LEN)
                || (PortAttr->u32UserDefLen1 > DMX_RAM_PORT_MAX_LEN)
                || (PortAttr->u32UserDefLen2 < DMX_RAM_PORT_MIN_LEN)
                || (PortAttr->u32UserDefLen2 > DMX_RAM_PORT_MAX_LEN) )
            {
                HI_ERR_DEMUX("set len error. len1=%u, len2=%u\n", PortAttr->u32UserDefLen1, PortAttr->u32UserDefLen2);

                return HI_ERR_DMX_INVALID_PARA;
            }

            PortInfo->MinLen = PortAttr->u32UserDefLen1;
            PortInfo->MaxLen = PortAttr->u32UserDefLen2;

            break;
    #else
            return HI_ERR_DMX_NOT_SUPPORT;
    #endif

        case HI_UNF_DMX_PORT_TYPE_PARALLEL_BURST :
        case HI_UNF_DMX_PORT_TYPE_PARALLEL_VALID :
        case HI_UNF_DMX_PORT_TYPE_SERIAL :
        case HI_UNF_DMX_PORT_TYPE_SERIAL2BIT :
        case HI_UNF_DMX_PORT_TYPE_SERIAL_NOSYNC :
        case HI_UNF_DMX_PORT_TYPE_SERIAL2BIT_NOSYNC :
            return HI_ERR_DMX_NOT_SUPPORT;

        default :
            HI_ERR_DEMUX("Invalid type %u\n", PortAttr->enPortType);

            return HI_ERR_DMX_INVALID_PARA;
    }

    PortInfo->PortType      = PortAttr->enPortType;
    PortInfo->SyncLockTh    = PortAttr->u32SyncLockTh > DMX_MAX_LOCK_TH ? DMX_MAX_LOCK_TH : PortAttr->u32SyncLockTh;
    PortInfo->SyncLostTh    = PortAttr->u32SyncLostTh > DMX_MAX_LOST_TH ? DMX_MAX_LOST_TH : PortAttr->u32SyncLostTh;

    DmxHalIPPortSetAttr(PortId, PortInfo->PortType, PortInfo->SyncLockTh, PortInfo->SyncLostTh);

#ifdef CHIP_TYPE_hi3716m
    if (Hi3716MV300Flag)
    {
        if (HI_UNF_DMX_PORT_TYPE_USER_DEFINED == PortAttr->enPortType)
        {
            DmxHalIPPortSetSyncLen(PortId, PortInfo->MinLen, PortInfo->MaxLen);
        }
        else
        {
            DmxHalIPPortSetSyncLen(PortId, DMX_TS_PACKET_LEN, DMX_TS_PACKET_LEN_204);
        }
    }
#else
    #ifdef DMX_RAM_PORT_SET_LENGTH_SUPPORT
    if (HI_UNF_DMX_PORT_TYPE_USER_DEFINED == PortAttr->enPortType)
    {
        DmxHalIPPortSetSyncLen(PortId, PortInfo->MinLen, PortInfo->MaxLen);
    }
    else
    {
        DmxHalIPPortSetSyncLen(PortId, DMX_TS_PACKET_LEN, DMX_TS_PACKET_LEN_204);
    }
    #endif
#endif

#ifdef DMX_RAM_PORT_AUTO_SCAN_SUPPORT
    if (HI_UNF_DMX_PORT_TYPE_AUTO == PortAttr->enPortType)
    {
        DmxHalIPPortSetAutoScanRegion(PortId, DMX_RAM_PORT_AUTO_REGION, DMX_RAM_PORT_AUTO_STEP_4);
    }
#endif

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTunerPortGetPacketNum(const HI_U32 PortId, HI_U32 *TsPackCnt, HI_U32 *ErrTsPackCnt)
{
    *TsPackCnt      = DmxHalDvbPortGetTsPackCount(PortId);
    *ErrTsPackCnt   = DmxHalDvbPortGetErrTsPackCount(PortId);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiRamPortGetPacketNum(const HI_U32 PortId, HI_U32 *TsPackCnt)
{
    *TsPackCnt = DmxHalIPPortGetTsPackCount(PortId);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTsBufferCreate(const HI_U32 PortId, const HI_U32 Size, DMX_MMZ_BUF_S *TsBuf)
{
    HI_S32              ret;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];
    HI_CHAR             BufName[16] = "DMX_TsBuf[0]";
    HI_U32              BufSize     = Size / 0x1000 * 0x1000;
    HI_U32              DescDepth;
    HI_U32              DescBufSize;
    MMZ_BUFFER_S        MmzBuf;

    if (PortInfo->PhyAddr)
    {
        HI_ERR_DEMUX("TSBuffer has been used by other process:PortId=%u\n", PortId);

        return HI_ERR_DMX_RECREAT_TSBUFFER;
    }

    if ((Size > DMX_MAX_TS_BUFFER_SIZE) || (Size < DMX_MIN_TS_BUFFER_SIZE))
    {
        HI_ERR_DEMUX("TsBuffer size 0x%x invalid, bigger than 0x%x, or less than 0x%x\n",
            Size, DMX_MAX_TS_BUFFER_SIZE, DMX_MIN_TS_BUFFER_SIZE);

        return HI_ERR_DMX_INVALID_PARA;
    }

#if 0
    DescDepth = (BufSize / 0x100000) * 0x3ff;
    if (DescDepth < DMX_MIN_IP_DESC_DEPTH)
    {
        DescDepth = DMX_MIN_IP_DESC_DEPTH;
    }
    else if (DescDepth > DMX_MAX_IP_DESC_DEPTH)
    {
        DescDepth = DMX_MAX_IP_DESC_DEPTH;
    }
#else
    DescDepth = DMX_MAX_IP_DESC_DEPTH;
#endif

    DescBufSize = (DescDepth + 1) * DMX_PER_DESC_LEN;

    BufName[10] = '0' + PortId;

    ret = HI_DRV_MMZ_AllocAndMap(BufName, HI_NULL, BufSize + DescBufSize, 0, &MmzBuf);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_DEMUX("malloc 0x%x failed\n", BufSize + DescBufSize);

        return HI_ERR_DMX_ALLOC_MEM_FAILED;
    }

    PortInfo->PhyAddr       = MmzBuf.u32StartPhyAddr;
    PortInfo->KerAddr       = MmzBuf.u32StartVirAddr;
    PortInfo->BufSize       = BufSize;
    PortInfo->Read          = 0;
    PortInfo->Write         = 0;

    PortInfo->ReqAddr       = 0;
    PortInfo->ReqLen        = 0;

    PortInfo->DescPhyAddr   = PortInfo->PhyAddr + BufSize;
    PortInfo->DescKerAddr   = PortInfo->KerAddr + BufSize;
    PortInfo->DescCurrAddr  = (HI_U32*)PortInfo->DescKerAddr;
    PortInfo->DescDepth     = DescDepth;
    PortInfo->DescWrite     = 0;

    spin_lock_init(&PortInfo->LockRamPort );

    memset((HI_VOID*)PortInfo->DescKerAddr, 0, DescBufSize);
    /*config the register*/
    TsBufferConfig(PortId, HI_TRUE, PortInfo->DescPhyAddr, DescDepth);

    TsBuf->u32BufPhyAddr    = PortInfo->PhyAddr;
    TsBuf->u32BufKerVirAddr = PortInfo->KerAddr;
    TsBuf->u32BufSize       = PortInfo->BufSize;

    HI_INFO_DEMUX("port %d attach ip buffer success, buffer size=0x%x\n", PortId, PortInfo->BufSize);

    return ret;
}

HI_S32 DMX_OsiTsBufferDestroy(const HI_U32 PortId)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (PortInfo->PhyAddr)
    {
        MMZ_BUFFER_S MmzBuf;

        TsBufferConfig(PortId, HI_FALSE, 0, 0);

        MmzBuf.u32StartPhyAddr = PortInfo->PhyAddr;
        MmzBuf.u32StartVirAddr = PortInfo->KerAddr;

        HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);

        PortInfo->PhyAddr       = 0;
        PortInfo->DescPhyAddr   = 0;

        RamPortClean(PortId);

        ret = HI_SUCCESS;
    }
    else
    {
        HI_ERR_DEMUX("invalid PhyAddr!\n");
    }

    return ret;
}

HI_S32 DMX_OsiTsBufferGet(const HI_U32 PortId, const HI_U32 ReqLen, DMX_DATA_BUF_S *Buf, const HI_U32 Timeout)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (0 == PortInfo->PhyAddr)
    {
        HI_ERR_DEMUX("TSbuffer phy addr is 0, port id=%d.\n", PortId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (0 == ReqLen)
    {
        HI_ERR_DEMUX("port %d get buf len is 0\n", PortId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (ReqLen > PortInfo->BufSize)
    {
        HI_ERR_DEMUX("error, ReqLen(0x%x) > BufSize(0x%x)\n", ReqLen, PortInfo->BufSize);
        return HI_ERR_DMX_INVALID_PARA;
    }

    ++PortInfo->GetCount;
/**
call GetIpFreeDescAndBufLen
1. check wether TS buffer have enough space for user to get (u32DataSize)
2. check wether Desc queue have enough free Desc to description the (u32DataSize) TS buffer ,
each Desc can descript 64K block of buffer.
3. if this return HI_TRUE,
the space of PortInfo->ReqAddr and PortInfo->ReqLen will have right value (be writen in this function )
 */
    if (CheckIPBuf(PortId, ReqLen))
    {
        HI_S32 ret;

        if (0 == Timeout)
        {
            return HI_ERR_DMX_NOAVAILABLE_BUF;
        }
        /*if have not enough space ,the PortInfo->WaitLen will be give value ,and wait the interupt of
        DmxHalIPPortGetOutIntStatus (new Desc be readed by logic,so there may be new space avaliable),
        every time in DmxHalIPPortGetOutIntStatus ,will call GetIpFreeDescAndBufLen again , if return HI_FALSE,
        will wake up*/
        PortInfo->WakeUp    = HI_FALSE;
        PortInfo->WaitLen   = ReqLen;

        ret = wait_event_interruptible_timeout(PortInfo->WaitQueue, PortInfo->WakeUp, msecs_to_jiffies(Timeout));
        if (!PortInfo->WakeUp || (0 == PortInfo->ReqAddr))
        {
            HI_WARN_DEMUX("timeout\n");

            return HI_ERR_DMX_TIMEOUT;
        }
    }

    Buf->BufPhyAddr = PortInfo->ReqAddr;
    Buf->BufKerAddr = PortInfo->KerAddr + (PortInfo->ReqAddr - PortInfo->PhyAddr);
    Buf->BufLen     = ReqLen;

    ++PortInfo->GetValidCount;

    return HI_SUCCESS;
}

extern HI_VOID DMX_OsrSaveIPTs(HI_U8 *buf, HI_U32 len,HI_U32 u32PortID);

HI_S32 DMX_OsiTsBufferPut(const HI_U32 PortId, const HI_U32 DataLen, const HI_U32 StartPos)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];
    HI_U32              BufferAddr;
    HI_U32              BufferLen;
    HI_U32              Offset;
    HI_SIZE_T           LockFlag;

    if (0 == PortInfo->PhyAddr)
    {
        HI_ERR_DEMUX("put phyaddr is 0!");
        return HI_ERR_DMX_INVALID_PARA;
    }

    if ((0 == PortInfo->ReqLen) || (0 == DataLen))
    {
        return HI_SUCCESS;
    }

    if (PortInfo->ReqLen < StartPos + DataLen)
    {
        HI_ERR_DEMUX("port %u put buf len %u, request len %u\n", PortId, DataLen, PortInfo->ReqLen);

        return HI_ERR_DMX_INVALID_PARA;
    }

    spin_lock_irqsave(&PortInfo->LockRamPort, LockFlag);
    Offset = PortInfo->ReqAddr - PortInfo->PhyAddr;

    PortInfo->Write = Offset + DataLen + StartPos;

    BufferAddr  = PortInfo->ReqAddr + StartPos;
    BufferLen   = DataLen;

    PortInfo->ReqLen    = 0;
    PortInfo->ReqAddr   = 0;
    spin_unlock_irqrestore(&PortInfo->LockRamPort, LockFlag);

#ifdef HI_DEMUX_PROC_SUPPORT
    DMX_OsrSaveIPTs((HI_U8*)(PortInfo->KerAddr + Offset + StartPos), DataLen, PortId);

    ++PortInfo->PutCount;
#endif

    do
    {
        HI_U32 len = (BufferLen >= DMX_MAX_IP_BLOCK_SIZE) ? DMX_MAX_IP_BLOCK_SIZE : BufferLen;

        // set ip descriptor
        *PortInfo->DescCurrAddr++ = BufferAddr;
        *PortInfo->DescCurrAddr++ = len;
        *PortInfo->DescCurrAddr++ = len;
        *PortInfo->DescCurrAddr++ = 0;

        if (++PortInfo->DescWrite >= PortInfo->DescDepth)
        {
            PortInfo->DescWrite     = 0;
            PortInfo->DescCurrAddr  = (HI_U32*)PortInfo->DescKerAddr;
        }
        /*the last time ,BufferLen == 0,will add a desc with len==0, this is OK,we need do it,
        Because
        1.when Desc read pointer updated , may be logic is reading the block ,not finished ,if at that time ,
        DMX_OsiTsBufferGet be called , then buffer may be covered.
        2. if we put a ZERO Desc ,then ,every time when Desc read pointer updated ,the logic must finished read the block*/
        DmxHalIPPortDescAdd(PortId, 1);

        if (0 == len)
        {
            break;
        }

        BufferAddr  += len;
        BufferLen   -= len;
    } while (1);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTsBufferReset(const HI_U32 PortId)
{
    DMX_RamPort_Info_S *PortInfo = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (PortInfo->PhyAddr)
    {
        RamPortClean(PortId);
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiTsBufferGetStatus(const HI_U32 PortId, HI_UNF_DMX_TSBUF_STATUS_S *Status)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];
    HI_U32              Head;
    HI_U32              Tail;
    HI_SIZE_T           LockFlag;

    spin_lock_irqsave(&PortInfo->LockRamPort, LockFlag);
    if (PortInfo->PhyAddr)
    {
        Status->u32BufSize  = PortInfo->BufSize;
        Status->u32UsedSize = PortInfo->BufSize;

        if (PortInfo->Read < PortInfo->Write)
        {
            Head = PortInfo->Read;
            Tail = PortInfo->BufSize - PortInfo->Write;

            Head = (Head <= DMX_TS_BUFFER_GAP) ? 0 : (Head - DMX_TS_BUFFER_GAP);
            Tail = (Tail <= DMX_TS_BUFFER_GAP) ? 0 : (Tail - DMX_TS_BUFFER_GAP);

            if (Head < Tail)
            {
                Status->u32UsedSize = PortInfo->BufSize - Tail;
            }
            else
            {
                Status->u32UsedSize = PortInfo->BufSize - Head;
            }
        }
        else if (PortInfo->Read > PortInfo->Write)
        {
            Head = PortInfo->Read - PortInfo->Write;
            if (Head > DMX_TS_BUFFER_GAP)
            {
                Status->u32UsedSize = DMX_TS_BUFFER_GAP + PortInfo->BufSize - Head;
            }
        }
        else
        {
            if (0 == PortInfo->Read)
            {
                Status->u32UsedSize = DMX_TS_BUFFER_GAP;
            }
        }

        ret = HI_SUCCESS;
    }
    spin_unlock_irqrestore(&PortInfo->LockRamPort, LockFlag);

    return ret;
}

/***********************************************************************************
* Function      : DMX_OsiNewFilter
* Description   : apply a new filter
* Input         : DmxId
* Output        : FilterId
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiNewFilter(const HI_U32 DmxId, HI_U32 *FilterId)
{
    HI_S32              ret         = HI_ERR_DMX_NOFREE_FILTER;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
#ifdef DMX_REGION_SUPPORT
    DMX_Sub_DevInfo_S  *DmxInfo     = &DmxDevOsi->SubDevInfo[DmxId];
#endif
    DMX_FilterInfo_S   *FilterInfo  = DmxDevOsi->DmxFilterInfo;
    HI_U32              RegionBegin = 0;
    HI_U32              RegionEnd   = DMX_FILTER_CNT;
    HI_U32              i;

#ifdef DMX_REGION_SUPPORT
    if (DmxInfo->DmxFilterCount >= DMX_REGION_FILTER_COUNT)
    {
        return HI_ERR_DMX_NOFREE_FILTER;
    }

    RegionBegin = DMX_GET_REGION_ID(DmxId) * DMX_REGION_FILTER_COUNT;
    RegionEnd   = RegionBegin + DMX_REGION_FILTER_COUNT;
#endif

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        for (i = RegionBegin; i < RegionEnd; i++)
        {
            if (DMX_INVALID_FILTER_ID == FilterInfo[i].FilterId)
            {
                FilterInfo[i].FilterId  = i;
                FilterInfo[i].ChanId    = DMX_INVALID_CHAN_ID;
                FilterInfo[i].Depth     = 0;

                *FilterId = i;

            #ifdef DMX_REGION_SUPPORT
                FilterInfo[i].DmxId = DmxId;

                ++DmxInfo->DmxFilterCount;
            #endif

                ret = HI_SUCCESS;

                break;
            }
        }

        up(&DmxDevOsi->lock_Filter);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

/***********************************************************************************
* Function      :  DMX_OsiDeleteFilter
* Description   :  delete a filter
* Input         :  FilterId
* Output        :
* Return        :  HI_SUCCESS:     success
*                  HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiDeleteFilter(const HI_U32 FilterId)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];
    DMX_ChanInfo_S     *Chan        = HI_NULL;

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        if (DMX_INVALID_FILTER_ID != Filter->FilterId)
        {
        #ifdef DMX_REGION_SUPPORT
            DMX_Sub_DevInfo_S  *DmxInfo = &DmxDevOsi->SubDevInfo[Filter->DmxId];

            --DmxInfo->DmxFilterCount;
        #endif

            if (DMX_INVALID_CHAN_ID != Filter->ChanId)
            {
                Chan = &DmxDevOsi->DmxChanInfo[Filter->ChanId];

                DmxHalDetachFilter(FilterId, Filter->ChanId);
            }

            Filter->FilterId    = DMX_INVALID_FILTER_ID;
            Filter->ChanId      = DMX_INVALID_CHAN_ID;

            ret = HI_SUCCESS;
        }

        up(&DmxDevOsi->lock_Filter);

        if (Chan)
        {
            if (0 == down_interruptible(&DmxDevOsi->lock_Channel))
            {
                --Chan->FilterCount;

                up(&DmxDevOsi->lock_Channel);
            }
            else
            {
                HI_ERR_DEMUX("down_interruptible failed!\n");
                ret = HI_ERR_DMX_BUSY;
            }
        }
    }
    else
    {
        ret = HI_ERR_DMX_BUSY;
        HI_ERR_DEMUX("down_interruptible failed!\n");
    }

    return ret;
}

/***********************************************************************************
* Function      :  DMX_OsiSetFilterAttr
* Description   :  set filter attr
* Input         :  FilterId, FilterAttr
* Output        :
* Return        :  HI_SUCCESS:     success
*                  HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiSetFilterAttr(const HI_U32 FilterId, const HI_UNF_DMX_FILTER_ATTR_S *FilterAttr)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];
    HI_U32              i;

    if (FilterAttr->u32FilterDepth > DMX_FILTER_MAX_DEPTH)
    {
        HI_ERR_DEMUX("filter %u set depth is %u too long\n", FilterId, FilterAttr->u32FilterDepth);

        return HI_ERR_DMX_INVALID_PARA;
    }

    for (i = 0; i < FilterAttr->u32FilterDepth; i++)
    {
        if (FilterAttr->au8Negate[i] > 1)
        {
            HI_ERR_DEMUX("filter %u set negate is invalid\n", FilterId);

            return HI_ERR_DMX_INVALID_PARA;
        }
    }

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        if (DMX_INVALID_FILTER_ID != Filter->FilterId)
        {
            Filter->Depth = FilterGetValidDepth(FilterAttr);

            for (i = 0; i < DMX_FILTER_MAX_DEPTH; i++)
            {
                if (i < FilterAttr->u32FilterDepth)
                {
                    HI_U32 Negate = FilterAttr->au8Negate[i];

                    if (0xff == FilterAttr->au8Mask[i])
                    {
                        Negate = 0;
                    }

                    Filter->Match[i]   = FilterAttr->au8Match[i];
                    Filter->Mask[i]    = FilterAttr->au8Mask[i];
                    Filter->Negate[i]  = Negate;

                    DmxHalSetFilter(FilterId, i, Filter->Match[i], Negate, Filter->Mask[i]);
                }
                else
                {
                    Filter->Match[i]   = 0;
                    Filter->Mask[i]    = 0xff;
                    Filter->Negate[i]  = 0;

                    DmxHalSetFilter(FilterId, i, 0, 0, 0xff);
                }
            }

        #ifdef DMX_FILTER_DEPTH_SUPPORT
            DmxHalFilterSetDepth(FilterId, Filter->Depth);
        #endif

            ret = HI_SUCCESS;
        }

        up(&DmxDevOsi->lock_Filter);
    }
    else
    {
        ret = HI_ERR_DMX_BUSY;
        HI_ERR_DEMUX("down_interruptible failed!\n");
    }

    return ret;
}

/***********************************************************************************
* Function      :  DMX_OsiGetFilterAttr
* Description   :  get filter attr
* Input         :  FilterId
* Output        :  FilterAttr
* Return        :  HI_SUCCESS:     success
*                  HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiGetFilterAttr(const HI_U32 FilterId, HI_UNF_DMX_FILTER_ATTR_S *FilterAttr)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        if (DMX_INVALID_FILTER_ID != Filter->FilterId)
        {
            FilterAttr->u32FilterDepth = Filter->Depth;

            memcpy(FilterAttr->au8Match,    Filter->Match,  DMX_FILTER_MAX_DEPTH);
            memcpy(FilterAttr->au8Mask,     Filter->Mask,   DMX_FILTER_MAX_DEPTH);
            memcpy(FilterAttr->au8Negate,   Filter->Negate, DMX_FILTER_MAX_DEPTH);

            ret = HI_SUCCESS;
        }

        up(&DmxDevOsi->lock_Filter);
    }
    else
    {
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

/***********************************************************************************
* Function      :  DMX_OsiAttachFilter
* Description   :  attach filter to channel
* Input         :  FilterId ChanId
* Output        :
* Return        :  HI_SUCCESS:     success
*                  HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiAttachFilter(const HI_U32 FilterId, const HI_U32 ChanId)
{
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_ChanInfo_S     *Chan        = &DmxDevOsi->DmxChanInfo[ChanId];
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];

    if ((DMX_INVALID_CHAN_ID == Chan->ChanId) || (DMX_INVALID_FILTER_ID == Filter->FilterId))
    {
        HI_ERR_DEMUX("ChanId:%d or FilterId:%d invalid!\n",Chan->ChanId,Filter->FilterId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (DMX_INVALID_CHAN_ID != Filter->ChanId)
    {
        HI_ERR_DEMUX("filter already attached!\n");
        return HI_ERR_DMX_ATTACHED_FILTER;
    }

    if (   (HI_UNF_DMX_CHAN_TYPE_SEC    != Chan->ChanType)
        && (HI_UNF_DMX_CHAN_TYPE_ECM_EMM!= Chan->ChanType)
        && (HI_UNF_DMX_CHAN_TYPE_PES    != Chan->ChanType) )
    {
        HI_ERR_DEMUX("invalid channel type\n");

        return HI_ERR_DMX_NOT_SUPPORT;
    }

    if (Chan->FilterCount >= DMX_MAX_FILTER_NUM_PER_CHANNEL)
    {
        HI_ERR_DEMUX("channel %u has maximum filters\n", ChanId);

        return HI_ERR_DMX_NOT_SUPPORT;
    }

#ifdef DMX_REGION_SUPPORT
    if (DMX_GET_REGION_ID(Chan->DmxId) != DMX_GET_REGION_ID(Filter->DmxId))
    {
        HI_ERR_DEMUX("filter(%u) and chan(%u) must in the same region\n", FilterId, ChanId);

        return HI_ERR_DMX_INVALID_PARA;
    }
#endif

    if (0 != down_interruptible(&DmxDevOsi->lock_Channel))
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        return HI_ERR_DMX_BUSY;
    }

    ++Chan->FilterCount;

    up(&DmxDevOsi->lock_Channel);

    if (0 != down_interruptible(&DmxDevOsi->lock_Filter))
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        return HI_ERR_DMX_BUSY;
    }

    Filter->ChanId = ChanId;

    up(&DmxDevOsi->lock_Filter);

    DmxHalAttachFilter(FilterId, ChanId);

    return HI_SUCCESS;
}

/***********************************************************************************
* Function      : DMX_OsiDetachFilter
* Description   : detach filter from a channel
* Input         : FilterId, ChanId
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiDetachFilter(const HI_U32 FilterId, const HI_U32 ChanId)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_ChanInfo_S     *Chan        = &DmxDevOsi->DmxChanInfo[ChanId];
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        if (DMX_INVALID_FILTER_ID != Filter->FilterId)
        {
            if (DMX_INVALID_CHAN_ID != Filter->ChanId)
            {
                if (ChanId == Filter->ChanId)
                {
                    DmxHalDetachFilter(FilterId, ChanId);

                    Filter->ChanId = DMX_INVALID_CHAN_ID;

                    ret = HI_SUCCESS;
                }
                else
                {
                    ret = HI_ERR_DMX_UNMATCH_FILTER;
                }
            }
            else
            {
                ret = HI_ERR_DMX_NOATTACH_FILTER;
            }
        }

        up(&DmxDevOsi->lock_Filter);

        if (HI_SUCCESS == ret)
        {
            if (0 == down_interruptible(&DmxDevOsi->lock_Channel))
            {
                --Chan->FilterCount;

                up(&DmxDevOsi->lock_Channel);
            }
            else
            {
                ret = HI_ERR_DMX_BUSY;
            }
        }
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

/***********************************************************************************
* Function      :   DMX_OsiGetFilterChannel
* Description   :  Get  filter attached channel
* Input         : FilterId
* Output        : pChanId
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiGetFilterChannel(const HI_U32 FilterId, HI_U32 *ChanId)
{
    HI_S32              ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_FilterInfo_S   *Filter      = &DmxDevOsi->DmxFilterInfo[FilterId];

    if (0 == down_interruptible(&DmxDevOsi->lock_Filter))
    {
        if (DMX_INVALID_FILTER_ID != Filter->FilterId)
        {
            if (DMX_INVALID_CHAN_ID != Filter->ChanId)
            {
                *ChanId = Filter->ChanId;

                ret = HI_SUCCESS;
            }
            else
            {
                ret = HI_ERR_DMX_NOATTACH_FILTER;
            }
        }

        up(&DmxDevOsi->lock_Filter);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

/***********************************************************************************
* Function      : DMX_OsiGetFreeFilterNum
* Description   : Get free filter count
* Input         : DmxId
* Output        : FreeCount
* Return        : HI_SUCCESS
*                 HI_FAILURE
* Others:
***********************************************************************************/
HI_S32 DMX_OsiGetFreeFilterNum(const HI_U32 DmxId, HI_U32 *FreeCount)
{
    DMX_FilterInfo_S   *FilterInfo  = g_pDmxDevOsi->DmxFilterInfo;
    HI_U32              RegionBegin = 0;
    HI_U32              RegionEnd   = DMX_FILTER_CNT;
    HI_U32              i;

    *FreeCount = 0;

#ifdef DMX_REGION_SUPPORT
    RegionBegin = DMX_GET_REGION_ID(DmxId) * DMX_REGION_FILTER_COUNT;
    RegionEnd   = RegionBegin + DMX_REGION_FILTER_COUNT;
#endif

    for (i = RegionBegin; i < RegionEnd; i++)
    {
        if (DMX_INVALID_FILTER_ID == FilterInfo[i].FilterId)
        {
            ++(*FreeCount);
        }
    }

    return HI_SUCCESS;
}

/***********************************************************************************
* Function      : DMX_OsiCreateChannel
* Description   : create a channel
* Input         : DmxId
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiCreateChannel(HI_U32 DmxId, HI_UNF_DMX_CHAN_ATTR_S *ChanAttr, DMX_MMZ_BUF_S *ChanBuf, HI_U32 *ChanId)
{
    HI_S32                      ret;
    DMX_DEV_OSI_S              *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S             *ChanInfo    = HI_NULL;
    DMX_OQ_Info_S              *OqInfo      = HI_NULL;
    HI_UNF_DMX_CHAN_CRC_MODE_E  CrcMode     = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
    HI_U32                      RegionBegin = 0;
    HI_U32                      RegionEnd   = DMX_CHANNEL_CNT;
    HI_U32                      BufSize;
    HI_U32                      i;

    BufSize = ChanAttr->u32BufSize;
    if (BufSize < MIN_MMZ_BUF_SIZE)
    {
        BufSize = MIN_MMZ_BUF_SIZE;
    }

    switch (ChanAttr->enChannelType)
    {
        case HI_UNF_DMX_CHAN_TYPE_SEC :
        case HI_UNF_DMX_CHAN_TYPE_ECM_EMM :
            switch (ChanAttr->enCRCMode)
            {
                case HI_UNF_DMX_CHAN_CRC_MODE_FORBID :
                case HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_DISCARD :
                case HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_SEND :
                case HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD :
                case HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_SEND :
                    CrcMode = ChanAttr->enCRCMode;

                    break;

                default :
                    HI_ERR_DEMUX("invalid crc mode %u\n", ChanAttr->enCRCMode);

                    return HI_ERR_DMX_INVALID_PARA;
            }

            break;

        case HI_UNF_DMX_CHAN_TYPE_PES :
        case HI_UNF_DMX_CHAN_TYPE_AUD :
        case HI_UNF_DMX_CHAN_TYPE_VID :
            if (BufSize < DMX_PES_CHANNEL_MIN_SIZE)
            {
                BufSize = DMX_PES_CHANNEL_MIN_SIZE;
            }

            break;

        case HI_UNF_DMX_CHAN_TYPE_POST :
            break;

        default :
            HI_ERR_DEMUX("invalid chan type %u\n", ChanAttr->enChannelType);

            return HI_ERR_DMX_INVALID_PARA;
    }

    switch (ChanAttr->enOutputMode)
    {
        case HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY :
        case HI_UNF_DMX_CHAN_OUTPUT_MODE_REC :
        case HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY_REC :
            break;

        default :
            HI_ERR_DEMUX("Invalid output mode %u\n", ChanAttr->enOutputMode);

            return HI_ERR_DMX_INVALID_PARA;
    }

#ifdef DMX_REGION_SUPPORT
    RegionBegin = DMX_GET_REGION_ID(DmxId) * DMX_REGION_CHANNEL_COUNT;
    RegionEnd   = RegionBegin + DMX_REGION_CHANNEL_COUNT;
#endif

    if (0 == down_interruptible(&DmxMgr->lock_Channel))
    {
        for (i = RegionBegin; i < RegionEnd; i++)
        {
            if (DmxMgr->DmxChanInfo[i].DmxId >= DMX_CNT)
            {
                DmxMgr->DmxChanInfo[i].DmxId = DmxId;

                break;
            }
        }

        up(&DmxMgr->lock_Channel);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        return HI_ERR_DMX_BUSY;
    }

    if (i >= RegionEnd)
    {
        HI_ERR_DEMUX("no free channel\n");

        return HI_ERR_DMX_NOFREE_CHAN;
    }

    ChanInfo = &DmxMgr->DmxChanInfo[i];

    // aligned by 4K bytes
    BufSize = (BufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;

    ChanInfo->ChanId        = i;
    ChanInfo->ChanPid       = DMX_INVALID_PID;
    ChanInfo->FilterCount   = 0;
    ChanInfo->ChanBufSize   = BufSize;
    ChanInfo->ChanType      = ChanAttr->enChannelType;
    ChanInfo->ChanCrcMode   = CrcMode;
    ChanInfo->ChanOutMode   = ChanAttr->enOutputMode;
    ChanInfo->ChanStatus    = HI_UNF_DMX_CHAN_CLOSE;
    ChanInfo->KeyId         = DMX_INVALID_KEY_ID;
    ChanInfo->ChanOqId      = i;
    ChanInfo->u32TotolAcq   = 0;
    ChanInfo->u32HitAcq     = 0;
    ChanInfo->u32Release    = 0;
    ChanInfo->LastPts       = INVALID_PTS;
    ChanInfo->ChanEosFlag   = HI_FALSE;
    memset((HI_U8 *)&ChanInfo->stLastControl,0,sizeof(Disp_Control_t));

#ifdef DMX_USE_ECM
    ChanInfo->u32SwFlag     = 0;
#endif

    OqInfo = &DmxMgr->DmxOqInfo[ChanInfo->ChanOqId];

    /* discard memset directly for avoid reset OqWaitQueue which maybe trigger sync problem with interrupt */
    // memset(OqInfo, 0, sizeof(DMX_OQ_Info_S));
    OqInfo->enOQBufMode = DMX_OQ_MODE_UNUSED;
    OqInfo->u32OQId = 0;
    OqInfo->u32AttachId = 0;
    OqInfo->u32OQVirAddr = 0;
    OqInfo->u32OQPhyAddr = 0;
    OqInfo->u32OQDepth = 0;
    OqInfo->u32FQId = 0;
    OqInfo->u32ProcsBlk = 0;
    OqInfo->u32ProcsOffset = 0;
    OqInfo->u32ReleaseBlk = 0;
    OqInfo->u32ReleaseOffset = 0;
    OqInfo->OqWakeUp = 0;
    OqInfo->pWatchWaitQueue = HI_NULL;

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
        DMX_FQ_Info_S  *FqInfo  = HI_NULL;
        HI_U32          FqId    = DMX_FQ_COMMOM;
        HI_U32          OqDepth;
        HI_U32          OqBufSize;
        HI_CHAR         BufName[16];
        MMZ_BUFFER_S    MmzBuf;

        if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
        {
            HI_U32      FqDepth;
            HI_U32      FqBufSize;
            HI_CHAR    *str;
            HI_U32      BlockSize;

            ret = down_interruptible(&DmxMgr->lock_AVChan);
            if (DmxMgr->AVChanCount >= DMX_AV_CHANNEL_CNT)
            {
                up(&DmxMgr->lock_AVChan);

                HI_ERR_DEMUX("no free av channel\n");

                ChanInfo->DmxId = DMX_INVALID_DEMUX_ID;

                return HI_ERR_DMX_NOFREE_CHAN;
            }

            ++DmxMgr->AVChanCount;
            up(&DmxMgr->lock_AVChan);

            FqId = DmxFqIdAcquire(1, DMX_FQ_CNT);
            if (FqId >= DMX_FQ_CNT)
            {
                HI_ERR_DEMUX("no free fq\n");

                ChanInfo->DmxId = DMX_INVALID_DEMUX_ID;

                ret = down_interruptible(&DmxMgr->lock_AVChan);
                --DmxMgr->AVChanCount;
                up(&DmxMgr->lock_AVChan);
                
                return HI_ERR_DMX_NOFREE_CHAN;
            }

            DmxFqStop(FqId);

            FqInfo = &DmxMgr->DmxFqInfo[FqId];

            str         = (HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) ? "Aud" : "Vid";
            BlockSize   = (HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) ? DMX_FQ_AUD_BLOCK_SIZE : DMX_FQ_VID_BLOCK_SIZE;
            /*
            1.if buffer size > 1208*0x3ff (1M),will enter the following if ,and change the BlockSize,then ,the FQ Depth == DMX_MAX_AVFQ_DESC(0x3ff)
            2.if buffer size > 8192*0x3ff (8M),will enter the following if ,and change the BlockSize,then ,the FQ Depth == DMX_MAX_AVFQ_DESC(0x3ff)
            3.usually ,I think will this will not happen.(in StartAVPlay ,we set vedio channel buffer size as 0x300000)
            */
            if ((BufSize / DMX_MAX_AVFQ_DESC) > BlockSize)
            {
                BlockSize = (BufSize/ DMX_MAX_AVFQ_DESC) - ((BufSize / DMX_MAX_AVFQ_DESC) % 4);
                BlockSize = (BlockSize > DMX_MAX_BLOCK_SIZE) ? DMX_MAX_BLOCK_SIZE : BlockSize;
            }

            FqDepth     = BufSize / BlockSize + 1;
            FqBufSize   = FqDepth * DMX_FQ_DESC_SIZE;
            FqBufSize   = (FqBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;

            OqDepth     = (FqDepth < DMX_OQ_DEPTH) ? (FqDepth - 1) : DMX_OQ_DEPTH;
            OqBufSize   = OqDepth * DMX_OQ_DESC_SIZE;

            snprintf(BufName, sizeof(BufName), "DMX_%sBuf[%u]", str, ChanInfo->ChanId);

            ret = HI_DRV_MMZ_AllocAndMap(BufName, MMZ_OTHERS, BufSize + FqBufSize + OqBufSize, 0, &MmzBuf);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_DEMUX("memory allocate failed, BufSize=0x%x\n", BufSize + FqBufSize + OqBufSize);

                DmxFqIdRelease(FqId);

                ChanInfo->DmxId = DMX_INVALID_DEMUX_ID;

                ret = down_interruptible(&DmxMgr->lock_AVChan);
                --DmxMgr->AVChanCount;
                up(&DmxMgr->lock_AVChan);
                
                return HI_ERR_DMX_ALLOC_MEM_FAILED;
            }

            FqInfo->u32BufVirAddr   = MmzBuf.u32StartVirAddr;
            FqInfo->u32BufPhyAddr   = MmzBuf.u32StartPhyAddr;
            FqInfo->u32BufSize      = BufSize;
            FqInfo->u32BlockSize    = BlockSize;

            FqInfo->u32FQVirAddr    = FqInfo->u32BufVirAddr + BufSize;
            FqInfo->u32FQPhyAddr    = FqInfo->u32BufPhyAddr + BufSize;
            FqInfo->u32FQDepth      = FqDepth;

            OqInfo->u32OQPhyAddr    = FqInfo->u32FQPhyAddr + FqBufSize;
            OqInfo->u32OQVirAddr    = FqInfo->u32FQVirAddr + FqBufSize;
            OqInfo->u32OQDepth      = OqDepth;
        }
        else
        {
            FqInfo = &DmxMgr->DmxFqInfo[FqId];
            /*OqDepth usually equal FqInfo->u32FQDepth - 1, except DmxPoolBufSize > DmxBlockSize *  DMX_OQ_DEPTH (5K*0X3ff) > 5M*/
            OqDepth     = FqInfo->u32FQDepth < DMX_OQ_DEPTH ? (FqInfo->u32FQDepth - 1) : DMX_OQ_DEPTH;
            OqBufSize   = OqDepth * DMX_OQ_DESC_SIZE;

            snprintf(BufName, sizeof(BufName), "DMX_OqBuf[%u]", ChanInfo->ChanId);

            ret = HI_DRV_MMZ_AllocAndMap(BufName, MMZ_OTHERS, OqBufSize, 0, &MmzBuf);
            if (HI_SUCCESS != ret)
            {
                HI_ERR_DEMUX("memory allocate failed, BufSize=0x%x\n", OqBufSize);

                ChanInfo->DmxId = DMX_INVALID_DEMUX_ID;
                
                return HI_ERR_DMX_ALLOC_MEM_FAILED;
            }

            OqInfo->u32OQPhyAddr    = MmzBuf.u32StartPhyAddr;
            OqInfo->u32OQVirAddr    = MmzBuf.u32StartVirAddr;
            OqInfo->u32OQDepth      = OqDepth;
        }

        OqInfo->enOQBufMode     = DMX_OQ_MODE_PLAY;
        OqInfo->u32OQId         = ChanInfo->ChanId;
        OqInfo->u32AttachId     = ChanInfo->ChanId;
        OqInfo->pWatchWaitQueue = HI_NULL;
        OqInfo->u32FQId         = FqId;
        OqInfo->OqWakeUp        = HI_FALSE;

        ChanBuf->u32BufPhyAddr      = FqInfo->u32BufPhyAddr;
        ChanBuf->u32BufKerVirAddr   = FqInfo->u32BufVirAddr;
        ChanBuf->u32BufSize         = FqInfo->u32BufSize;
    }

    DmxSetChannel(ChanInfo->ChanId);

#ifdef DMX_REGION_SUPPORT
    ++DmxMgr->SubDevInfo[DmxId].DmxChanCount;
#endif

    s_u32DMXPesLenErr[ChanInfo->ChanId] = 0;
    s_u32DMXCRCErr[ChanInfo->ChanId]    = 0;
    s_u32DMXTEIErr[ChanInfo->ChanId]    = 0;
    s_u32DMXDropCnt[ChanInfo->ChanId]   = 0;
    s_u32DMXCCDiscErr[ChanInfo->ChanId] = 0;

#ifdef DMX_USE_ECM
    if (HI_UNF_DMX_CHAN_TYPE_ECM_EMM == ChanInfo->ChanType)
    {
        HI_DMX_SwNewChannel(ChanInfo->ChanId);
    }
#endif

    *ChanId = ChanInfo->ChanId;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiDestroyChannel(HI_U32 ChanId)
{
    HI_U32          i;
    HI_S32          ret;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];
    HI_U32          DmxId       = ChanInfo->DmxId;

    CHECKDMXID(DmxId);

#ifdef DMX_USE_ECM
    if (DMXOsiGetChnSwFlag(ChanId))
    {
        HI_DMX_SwDestoryChannel(ChanId);
    }
#endif

    if (HI_UNF_DMX_CHAN_CLOSE != ChanInfo->ChanStatus)
    {
        ret = DMX_OsiCloseChannel(ChanId);
        if (HI_SUCCESS != ret)
        {
            HI_ERR_DEMUX("close chan %d failed 0x%x\n", ChanId, ret);

            return ret;
        }
    }

    // detatch all filters attatched to this channel
    if (ChanInfo->FilterCount)
    {
        HI_U32 RegionBegin = 0;
        HI_U32 RegionEnd   = DMX_FILTER_CNT;

    #ifdef DMX_REGION_SUPPORT
        RegionBegin = DMX_GET_REGION_ID(DmxId) * DMX_REGION_FILTER_COUNT;
        RegionEnd   = RegionBegin + DMX_REGION_FILTER_COUNT;
    #endif

        ret = down_interruptible(&DmxMgr->lock_Filter);
        for (i = RegionBegin; i < RegionEnd; i++)
        {
            DMX_FilterInfo_S *Filter = &DmxMgr->DmxFilterInfo[i];

            if (ChanId == Filter->ChanId)
            {
                Filter->ChanId = DMX_INVALID_CHAN_ID;

                DmxHalDetachFilter(Filter->FilterId, ChanId);
            }
        }
        up(&DmxMgr->lock_Filter);

        ChanInfo->FilterCount = 0;
    }

#ifdef DMX_DESCRAMBLER_SUPPORT
    //2. TODO detatch all keys attatched to this channel
    if (DMX_INVALID_KEY_ID != ChanInfo->KeyId)
    {
        DMX_OsiDescramblerDetach(ChanInfo->KeyId, ChanId);

        ChanInfo->KeyId = DMX_INVALID_KEY_ID;
    }
#endif

    //3.delete the buffer from the channel
    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC == (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC & ChanInfo->ChanOutMode))
    {
        DmxHalSetChannelRecDmxid(ChanId, DMX_INVALID_DEMUX_ID);
    }

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
        DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[ChanInfo->ChanOqId];
        MMZ_BUFFER_S    MmzBuf;

        //3.1 Disable buffer
        DmxHalSetChannelPlayBufId(ChanId, 0);

        if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
        {
            DMX_FQ_Info_S *FqInfo = &DmxMgr->DmxFqInfo[OqInfo->u32FQId];

            MmzBuf.u32StartPhyAddr = FqInfo->u32BufPhyAddr;
            MmzBuf.u32StartVirAddr = FqInfo->u32BufVirAddr;

            DmxFqIdRelease(OqInfo->u32FQId);

            ret = down_interruptible(&DmxMgr->lock_AVChan);
            --DmxMgr->AVChanCount;
            up(&DmxMgr->lock_AVChan);
        }
        else
        {
            MmzBuf.u32StartPhyAddr = OqInfo->u32OQPhyAddr;
            MmzBuf.u32StartVirAddr = OqInfo->u32OQVirAddr;
        }

        HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);
    }

    if (HI_UNF_DMX_CHAN_TYPE_POST == ChanInfo->ChanType)
    {
        DmxHalSetChannelTsPostMode(ChanId, DMX_DISABLE);
    }

    DmxHalSetChannelPid(ChanId, DMX_INVALID_PID);

    ret = down_interruptible(&DmxMgr->lock_Channel);

    ChanInfo->DmxId     = DMX_INVALID_DEMUX_ID;
    ChanInfo->ChanId    = DMX_INVALID_CHAN_ID;
    ChanInfo->ChanPid   = DMX_INVALID_PID;

#ifdef DMX_REGION_SUPPORT
    --DmxMgr->SubDevInfo[DmxId].DmxChanCount;
#endif

    up(&DmxMgr->lock_Channel);
    
    return HI_SUCCESS;
}

/***********************************************************************************
* Function      : DMX_OsiOpenChannel
* Description   : open a channel and start to work
* Input         : ChanId
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiCalcFQALOVFBPTso(HI_U32 ChanId)
{
    HI_S32              FqBpThd = 0;
    DMX_DEV_OSI_S      *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S     *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    HI_S32              BlockSize;
    HI_U32              FQId = 1;

    //BlockSize   = (HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) ? DMX_FQ_AUD_BLOCK_SIZE : DMX_FQ_VID_BLOCK_SIZE;
    FQId = pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId].u32FQId;
    BlockSize = pDmxDevOsi->DmxFqInfo[FQId].u32BlockSize;

    /*used persent must > avplay reset checking  persent (85%)*/
    FqBpThd = (ChanInfo->ChanBufSize/BlockSize) * FQ_BP_TSO_PERSENT / 100 ;

    return FqBpThd;
}

HI_S32 DMX_OsiOpenChannel(HI_U32 ChanId)
{
    DMX_DEV_OSI_S      *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S     *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_OQ_Info_S      *OqInfo;
    DMX_Sub_DevInfo_S  *DmxInfo;
    HI_S32              FqBpThd = 0;

    ChanInfo = &pDmxDevOsi->DmxChanInfo[ChanId];

    CHECKDMXID(ChanInfo->DmxId);

    OqInfo  = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];
    DmxInfo = &pDmxDevOsi->SubDevInfo[ChanInfo->DmxId];

    if ((DMX_PORT_MODE_TUNER != DmxInfo->PortMode) && (DMX_PORT_MODE_RAM != DmxInfo->PortMode))
    {
        HI_ERR_DEMUX("not attach port\n");
        return HI_ERR_DMX_NOATTACH_PORT;
    }

    if (HI_UNF_DMX_CHAN_CLOSE != ChanInfo->ChanStatus)
    {
        HI_WARN_DEMUX("channel %d is already opened\n", ChanId);
        return HI_SUCCESS;
    }

    //0. Reset channel counter
    DmxHalResetChannelCounter(ChanId);

    //1. if ch is used for play
    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode)
    {
        DmxHalSetChannelPlayDmxid(ChanId, ChanInfo->DmxId);

        if ((ChanInfo->ChanType != HI_UNF_DMX_CHAN_TYPE_SEC) && (ChanInfo->ChanType != HI_UNF_DMX_CHAN_TYPE_ECM_EMM))
        {
            DmxHalSetChannelFltMode(ChanId, DMX_DISABLE);
            if (ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_PES)
            {
                ChanInfo->u32PesBlkCnt = 0;
            }
        }
        else
        {
            DmxHalSetChannelFltMode(ChanId, DMX_ENABLE);
        }

        if ((ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_AUD) || (ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_VID))
        {         
            if ((DMX_PORT_MODE_RAM == DmxInfo->PortMode) && (DmxInfo->PortId < DMX_RAMPORT_CNT))
            {
                //open aud and vid fq bp
                DmxHalAttachIPBPFQ(DmxInfo->PortId, OqInfo->u32FQId);
            }
        }
    }

    //2. if ch is used for rec
    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC & ChanInfo->ChanOutMode)
    {
        DMX_RecInfo_S *RecInfo = &pDmxDevOsi->DmxRecInfo[ChanInfo->DmxId];

        if (HI_UNF_DMX_REC_TYPE_SELECT_PID == RecInfo->RecType)
        {
            DmxHalSetChannelRecBufId(ChanId, RecInfo->RecOqId);
        }

        DmxHalSetChannelRecDmxid(ChanId, ChanInfo->DmxId);
    }

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC & ChanInfo->ChanOutMode)
    {
        ChanInfo->ChanStatus |= HI_UNF_DMX_CHAN_REC_EN;
    }

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode)
    {
        ChanInfo->ChanStatus |= HI_UNF_DMX_CHAN_PLAY_EN;

        DmxOqStart(ChanInfo->ChanOqId);

        if ((ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_AUD) || (ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_VID))
        {
            DmxFqStart(OqInfo->u32FQId);
            if ((DMX_PORT_MODE_TUNER == DmxInfo->PortMode) && (DmxInfo->PortId < DMX_TUNERPORT_CNT))
            {
                DMX_TunerPort_Info_S* Tsi = &g_pDmxDevOsi->TunerPortInfo[DmxInfo->PortId];
                /*this tsi should back presure some ram port ,default is 0,means invalid (ram port >=128),
                in situation as : ram128------>tso---->tsi---->demux*/                  
                if ( Tsi->BPRamPort )
                {
                    FqBpThd = DMX_OsiCalcFQALOVFBPTso(ChanId);
                    DmxHalSetFQWORDx(OqInfo->u32FQId, DMX_FQ_CTRL_OFFSET, FqBpThd << 24);
                    DmxHalAttachIPBPFQ(Tsi->BPRamPort - HI_UNF_DMX_PORT_RAM_0, OqInfo->u32FQId);
                }   

            }
        }
    }

    ChanInfo->u32AcqTimeInterval = 0;
    ChanInfo->u32RelTimeInterval = 0;

    HI_DRV_SYS_GetTimeStampMs(&ChanInfo->u32AcqTime);
    ChanInfo->u32RelTime = ChanInfo->u32AcqTime;

#ifdef DMX_USE_ECM
    if (DMXOsiGetChnSwFlag(ChanId))
    {
        HI_DMX_SwOpenChannel(ChanId);
    }
#endif

    return HI_SUCCESS;
}

/***********************************************************************************
* Function      : DMX_OsiCloseChannel
* Description   : close a channel and stop working
* Input         : ChanId
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiCloseChannel(HI_U32 ChanId)
{
    DMX_DEV_OSI_S      *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S     *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_OQ_Info_S      *OqInfo;
    DMX_FLUSH_TYPE_E    FlushType;

    CHECKDMXID(ChanInfo->DmxId);

    OqInfo = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    ChanInfo->ChanStatus    = HI_UNF_DMX_CHAN_CLOSE;
    ChanInfo->u32TotolAcq   = 0;
    ChanInfo->u32HitAcq     = 0;
    ChanInfo->u32Release    = 0;
    ChanInfo->u32PesLength  = 0;
    ChanInfo->ChanEosFlag   = HI_FALSE;

    // close channel
    DmxHalSetChannelPlayDmxid(ChanId, DMX_INVALID_DEMUX_ID);

#ifdef DMX_USE_ECM
    if (DMXOsiGetChnSwFlag(ChanId))
    {
        HI_DMX_SwCloseChannel(ChanId);
    }
#endif

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
        if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
        {
            DmxFqStop(OqInfo->u32FQId);
        }
    }

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == ChanInfo->ChanOutMode)
    {
        FlushType = DMX_FLUSH_TYPE_REC_PLAY;
    }
    else if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC == ChanInfo->ChanOutMode)
    {
        FlushType = DMX_FLUSH_TYPE_REC;
    }
    else
    {
        FlushType = DMX_FLUSH_TYPE_REC_PLAY;
    }

    DMX_OsiResetChannel(ChanId, FlushType);

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
       DmxOqStop(ChanInfo->ChanOqId);

        if ((HI_UNF_DMX_CHAN_TYPE_AUD == ChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == ChanInfo->ChanType))
        {
            DMX_Sub_DevInfo_S *DmxInfo = &pDmxDevOsi->SubDevInfo[ChanInfo->DmxId];

            switch(DmxInfo->PortMode)
            {
                case DMX_PORT_MODE_RAM:
                {
                    if (DmxInfo->PortId < DMX_RAMPORT_CNT)
                    {
                        DmxHalDetachIPBPFQ(DmxInfo->PortId, OqInfo->u32FQId);
                        DmxHalClrIPFqBPStatus(DmxInfo->PortId, OqInfo->u32FQId);
                    }
                    else
                    {
                        WARN(1, "Invalid RAM Port Id(%d)", DmxInfo->PortId);
                    }
                    
                    break;
                }

                case DMX_PORT_MODE_TUNER:
                {
                    if (DmxInfo->PortId < DMX_TUNERPORT_CNT)
                    {
                        DMX_TunerPort_Info_S* Tsi = &g_pDmxDevOsi->TunerPortInfo[DmxInfo->PortId];

                        /*tsi  back presure some ram port ,default is 0,means invalid (ram port >=128),
                        in situation as : ram128------>tso---->tsi---->demux*/  

                        if ( Tsi->BPRamPort )
                        {
                            DmxHalDetachIPBPFQ(Tsi->BPRamPort - HI_UNF_DMX_PORT_RAM_0, OqInfo->u32FQId);
                            DmxHalClrIPFqBPStatus(Tsi->BPRamPort - HI_UNF_DMX_PORT_RAM_0, OqInfo->u32FQId);
                        }
                    }
                    else
                    {
                        WARN(1, "Invalid Tuner Port Id(%d)", DmxInfo->PortId);
                    }
                    break;
                }

                default:
                    break;
            }
        }
    }
    
    return HI_SUCCESS;
}

/***********************************************************************************
* Function      : DMX_OsiGetChannelAttr
* Description   : Get Channel Attr
* Input         : ChanId, ChanAttr
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiGetChannelAttr(HI_U32 ChanId, HI_UNF_DMX_CHAN_ATTR_S *ChanAttr)
{
    HI_S32          ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if (0 == down_interruptible(&DmxMgr->lock_Channel))
    {
        if (ChanInfo->DmxId < DMX_CNT)
        {
            ChanAttr->u32BufSize    = ChanInfo->ChanBufSize;
            ChanAttr->enChannelType = ChanInfo->ChanType;
            ChanAttr->enCRCMode     = ChanInfo->ChanCrcMode;
            ChanAttr->enOutputMode  = ChanInfo->ChanOutMode;

            ret = HI_SUCCESS;
        }
        up(&DmxMgr->lock_Channel);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

/***********************************************************************************
* Function      : DMX_OsiSetChannelAttr
* Description   : Set Channel Attr
* Input         : ChanId, ChanAttr
* Output        :
* Return        : HI_SUCCESS:     success
*                 HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiSetChannelAttr(HI_U32 ChanId, HI_UNF_DMX_CHAN_ATTR_S *ChanAttr)
{
    HI_S32          ret         = HI_SUCCESS;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    CHECKDMXID(ChanInfo->DmxId);

    if (   (ChanAttr->u32BufSize    != ChanInfo->ChanBufSize)
        || (ChanAttr->enChannelType != ChanInfo->ChanType)
        || (ChanAttr->enOutputMode  != ChanInfo->ChanOutMode) )
    {
        HI_ERR_DEMUX("do not suppor change attr of buffer size, channel type and channel output mode!");
        return HI_ERR_DMX_NOT_SUPPORT;
    }

    switch (ChanAttr->enChannelType)
    {
        case HI_UNF_DMX_CHAN_TYPE_SEC :
        case HI_UNF_DMX_CHAN_TYPE_ECM_EMM :
            switch (ChanAttr->enCRCMode)
            {
                case HI_UNF_DMX_CHAN_CRC_MODE_FORBID :
                case HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_DISCARD :
                case HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_SEND:
                case HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_DISCARD :
                case HI_UNF_DMX_CHAN_CRC_MODE_BY_SYNTAX_AND_SEND :
                {
                    ChanInfo->ChanCrcMode = ChanAttr->enCRCMode;

                    DmxHalSetChannelCRCMode(ChanInfo->ChanId, ChanInfo->ChanCrcMode);

                    break;
                }

                default :
                    HI_ERR_DEMUX("invalid crc mode %u\n", ChanAttr->enCRCMode);

                    ret = HI_ERR_DMX_INVALID_PARA;
            }

            break;

        case HI_UNF_DMX_CHAN_TYPE_PES :
        case HI_UNF_DMX_CHAN_TYPE_AUD :
        case HI_UNF_DMX_CHAN_TYPE_VID :
        case HI_UNF_DMX_CHAN_TYPE_POST :
            if (ChanAttr->enCRCMode != ChanInfo->ChanCrcMode)
            {
                HI_ERR_DEMUX("PES/VID/AUD/POST channels do not support change their crc mode: %u\n", ChanAttr->enCRCMode);
                ret = HI_ERR_DMX_NOT_SUPPORT;
            }

            break;

        default :
            HI_ERR_DEMUX("invalid chan type %u\n", ChanAttr->enChannelType);

            ret = HI_ERR_DMX_INVALID_PARA;
    }

    return ret;
}

HI_S32 DMX_OsiGetChannelPid(HI_U32 ChanId, HI_U32 *Pid)
{
    HI_S32          ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if (ChanInfo->DmxId < DMX_CNT)
    {
        *Pid = ChanInfo->ChanPid;

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiSetChannelPid(HI_U32 ChanId, HI_U32 Pid)
{
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if ((ChanInfo->DmxId >= DMX_CNT) || (Pid > DMX_INVALID_PID))
    {
        HI_ERR_DEMUX("invalid param, dmxid:%d,Pid:0x%x\n",ChanInfo->DmxId, Pid);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (HI_UNF_DMX_CHAN_CLOSE != ChanInfo->ChanStatus)
    {
        HI_ERR_DEMUX("close channel first when set channel pid!\n");
        return HI_ERR_DMX_OPENING_CHAN;
    }

    if (Pid < DMX_INVALID_PID)
    {
        HI_U32 i;

        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            if ((DmxMgr->DmxChanInfo[i].DmxId == ChanInfo->DmxId) && (i != ChanId))
            {
                // the same dmx, Pid has been occupied by other channel
                if (DmxMgr->DmxChanInfo[i].ChanPid == Pid)
                {
                    DmxHalSetChannelPid(DmxMgr->DmxChanInfo[i].ChanId,DMX_INVALID_PID);
                    DmxMgr->DmxChanInfo[i].ChanPid = DMX_INVALID_PID;

                    HI_ERR_DEMUX("Attention: This channel(%d) pid become invalid, update the pid(%d) to channel(%d). \n",
                                                DmxMgr->DmxChanInfo[i].ChanId, Pid, ChanId);
                    break;
                }
            }
        }
    }

    ChanInfo->ChanPid = Pid;
    DmxHalSetChannelPid(ChanId, Pid);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetChannelStatus(HI_U32 ChanId, HI_UNF_DMX_CHAN_STATUS_E *ChanStatus)
{
    HI_S32          ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if (0 == down_interruptible(&DmxMgr->lock_Channel))
    {
        if (ChanInfo->DmxId < DMX_CNT)
        {
            *ChanStatus = ChanInfo->ChanStatus;

            ret = HI_SUCCESS;
        }
        up(&DmxMgr->lock_Channel);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

HI_S32 DMX_OsiGetFreeChannelNum(HI_U32 DmxId, HI_U32 *FreeCount)
{
    DMX_ChanInfo_S *ChanInfo    = g_pDmxDevOsi->DmxChanInfo;
    HI_U32          RegionBegin = 0;
    HI_U32          RegionEnd   = DMX_CHANNEL_CNT;
    HI_U32          i;

    *FreeCount = 0;

#ifdef DMX_REGION_SUPPORT
    RegionBegin = DMX_GET_REGION_ID(DmxId) * DMX_REGION_CHANNEL_COUNT;
    RegionEnd   = RegionBegin + DMX_REGION_CHANNEL_COUNT;
#endif

    for (i = RegionBegin; i < RegionEnd; i++)
    {
        if (ChanInfo[i].DmxId >= DMX_CNT)
        {
            ++(*FreeCount);
        }
    }

    return HI_SUCCESS;
}

/***********************************************************************************
* Function      :   DMX_OsiGetChannelScrambleFlag
* Description   :  get channel scrambe flag
* Input         :  u32ChannelId ,
* Output        :  penScrambleFlag
* Return        :  HI_SUCCESS:     success
*                  HI_FAILURE:
* Others:
***********************************************************************************/
HI_S32 DMX_OsiGetChannelScrambleFlag(HI_U32 u32ChannelId, HI_UNF_DMX_SCRAMBLED_FLAG_E *penScrambleFlag)
{
    HI_BOOL bTSScramble, bPesScramble;
    DMX_ChanInfo_S *pChInofo;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;

    IsDmxDevInit();

    pChInofo = &pDmxDevOsi->DmxChanInfo[u32ChannelId];

    CHECKDMXID(pChInofo->DmxId);

    if (HI_UNF_DMX_CHAN_CLOSE == pChInofo->ChanStatus)
    {
        HI_ERR_DEMUX("channel %d is not opened!\n", u32ChannelId);
        return HI_ERR_DMX_NOT_OPEN_CHAN;
    }

    DmxHalGetChannelTSScrambleFlag(u32ChannelId, &bTSScramble);
    DmxHalGetChannelPesScrambleFlag(u32ChannelId, &bPesScramble);
    if (HI_TRUE == bTSScramble)
    {
        *penScrambleFlag = HI_UNF_DMX_SCRAMBLED_FLAG_TS;
    }
    else if (HI_TRUE == bPesScramble)
    {
        *penScrambleFlag = HI_UNF_DMX_SCRAMBLED_FLAG_PES;
    }
    else
    {
        *penScrambleFlag = HI_UNF_DMX_SCRAMBLED_FLAG_NO;
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetChannelDescrambleFlag(HI_U32 ChanId, HI_BOOL *pEnable)
{
    DmxHalGetChannelDescrambleFlag(ChanId, pEnable);

    return HI_SUCCESS;
}


HI_S32 DMX_OsiSetChannelEosFlag(HI_U32 ChanId)
{
    DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[ChanId];

    CHECKDMXID(ChanInfo->DmxId);

    if (HI_UNF_DMX_CHAN_CLOSE == ChanInfo->ChanStatus)
    {
        HI_ERR_DEMUX("channel %d is not opened!\n", ChanId);
        return HI_ERR_DMX_NOT_OPEN_CHAN;
    }

    ChanInfo->ChanEosFlag = HI_TRUE;

    return HI_SUCCESS;
}

#ifdef DMX_USE_ECM
HI_S32 DMX_OsiGetChannelSwFlag(HI_U32 u32ChannelId, HI_U32* pu32SwFlag)
{
    *pu32SwFlag = DMXOsiGetChnSwFlag(u32ChannelId);
    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetChannelSwBufAddr(HI_U32 u32ChannelId, MMZ_BUFFER_S* pstSwBuf)
{
    return HI_DMX_SwGetChannelSwBufAddr(u32ChannelId, pstSwBuf);
}
#endif

HI_S32 DMX_OsiGetChannelTsCnt(HI_U32 ChanId, HI_U32 *pTsCnt)
{
    DMX_ChanInfo_S *pChanInfo;
    DMX_DEV_OSI_S  *pDmxDevOsi = g_pDmxDevOsi;

    IsDmxDevInit();

    pChanInfo = &pDmxDevOsi->DmxChanInfo[ChanId];
    if (pChanInfo->DmxId >= DMX_CNT)
    {
        HI_ERR_DEMUX("channel %d is no existed\n", ChanId);

        return HI_ERR_DMX_INVALID_PARA;
    }

    *pTsCnt = DmxHalGetChannelCounter(ChanId);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiSetChannelCCRepeat(HI_U32 ChanId, HI_UNF_DMX_CHAN_CC_REPEAT_SET_S * pstChCCReaptSet)
{
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S *pChanInfo;

    IsDmxDevInit();

    CHECKPOINTER(pstChCCReaptSet);

    pChanInfo = &pDmxDevOsi->DmxChanInfo[ChanId];
    CHECKDMXID(pChanInfo->DmxId);

    if (pstChCCReaptSet->enCCRepeatMode == HI_UNF_DMX_CHAN_CC_REPEAT_MODE_DROP)
    {
        DmxHalSetChannelCCRepeatCtrl(ChanId, DMX_DISABLE);
    }
    else
    {
        DmxHalSetChannelCCRepeatCtrl(ChanId, DMX_ENABLE);
    }

    return HI_SUCCESS;
}


HI_S32 DMX_OsiGetChannelId(HI_U32 DmxId, HI_U32 Pid, HI_U32 *ChanId)
{
    HI_S32          ret         = HI_ERR_DMX_UNMATCH_CHAN;
    DMX_DEV_OSI_S  *DmxDevOsi   = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = DmxDevOsi->DmxChanInfo;
    HI_U32          i;

    if (Pid >= DMX_INVALID_PID)
    {
        HI_ERR_DEMUX("invalid pid:%d!\n", Pid);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (0 == down_interruptible(&DmxDevOsi->lock_Channel))
    {
        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            if ((ChanInfo[i].DmxId == DmxId) && (ChanInfo[i].ChanPid == Pid))
            {
                *ChanId = ChanInfo[i].ChanId;

                ret = HI_SUCCESS;

                break;
            }
        }
        up(&DmxDevOsi->lock_Channel);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;
    }

    return ret;
}

HI_S32  DMX_OsiReadDataRequset(HI_U32         u32ChId,
                               HI_U32         u32AcqNum,
                               HI_U32 *       pu32AcqedNum,
                               DMX_UserMsg_S* psMsgList,
                               HI_U32         u32TimeOutMs)
{
    DMX_ChanInfo_S *pChanInfo;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_OQ_Info_S  *OqInfo;
    HI_S32 s32Ret;

    IsDmxDevInit();

    if (0 == u32AcqNum)
    {
        HI_ERR_DEMUX(" channel %d acquire data num = 0!\n", u32ChId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    pChanInfo = &pDmxDevOsi->DmxChanInfo[u32ChId];
#ifdef DMX_USE_ECM
    if (!pChanInfo->u32SwFlag)
#endif
    {
        HI_U32 TimeMs= 0;

        pChanInfo->u32TotolAcq++;

        HI_DRV_SYS_GetTimeStampMs(&TimeMs);

        pChanInfo->u32AcqTimeInterval = TimeMs - pChanInfo->u32AcqTime;
        pChanInfo->u32AcqTime = TimeMs;
    }

    if (HI_UNF_DMX_CHAN_PLAY_EN != (HI_UNF_DMX_CHAN_PLAY_EN & pChanInfo->ChanStatus))
    {
        HI_ERR_DEMUX("channel %d is not open yet or not play channel\n", u32ChId);

        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }

    if (   (HI_UNF_DMX_CHAN_TYPE_SEC    == pChanInfo->ChanType)
        || (HI_UNF_DMX_CHAN_TYPE_ECM_EMM== pChanInfo->ChanType)
        || (HI_UNF_DMX_CHAN_TYPE_POST   == pChanInfo->ChanType) )
    {
        pChanInfo->u32ChnResetLock = 1;
        OqInfo  = &g_pDmxDevOsi->DmxOqInfo[pChanInfo->ChanOqId];
        s32Ret = DMXOsiReadSec(pChanInfo, u32AcqNum, pu32AcqedNum, psMsgList, OqInfo, u32TimeOutMs);
        #ifdef DMX_USE_ECM
        if (pChanInfo->ChanStatus == HI_UNF_DMX_CHAN_CLOSE && pChanInfo->u32SwFlag)
        {
            s32Ret = DMX_OsiCloseChannel(pChanInfo->ChanId);//reset channel again
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_DEMUX("close channel error:%x!\n",s32Ret);
            }
            s32Ret = HI_DMX_SwOpenChannel(u32ChId);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_DEMUX("open sw channel error:%x!\n",s32Ret);
            }
            s32Ret = DMX_OsiOpenChannel(u32ChId);
            if (HI_SUCCESS != s32Ret)
            {
                HI_ERR_DEMUX("open sw channel error:%x!\n",s32Ret);
            }
            pChanInfo->u32ChnResetLock = 0;
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }
        #endif
        pChanInfo->u32ChnResetLock = 0;
        return s32Ret;
    }
    else if (HI_UNF_DMX_CHAN_TYPE_PES == pChanInfo->ChanType)
    {
#if 0
        if (u32AcqNum < DMX_PES_MAX_SIZE)
        {
            HI_ERR_DEMUX("For Channel type DMX_CHAN_PES,we stronly recommend you to set the param u32AcquireNum of api HI_UNF_DMX_AcquireBuf >= %d !\n",
                         u32ChId);
            return HI_ERR_DMX_INVALID_PARA;
        }

#else
        u32AcqNum = DMX_PES_MAX_SIZE;
#endif
        pChanInfo->u32ChnResetLock = 1;
        s32Ret = DMXOsiReadPes(pChanInfo, u32AcqNum, pu32AcqedNum, psMsgList, u32TimeOutMs);
        pChanInfo->u32ChnResetLock = 0;
        return s32Ret;
    }
    else
    {
        HI_ERR_DEMUX("channel %d is wrong channeltype %d!\n", u32ChId, pChanInfo->ChanType);

        return HI_ERR_DMX_INVALID_PARA;
    }
}

/**
 \brief
 \attention

 \param[in] u32ChId

 \retval none
 \return none

 \see
 \li ::
 */
HI_U32 DMX_OsiGetChType(HI_U32 u32ChId)
{
    DMX_ChanInfo_S *pChanInfo;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;

    IsDmxDevInit();
    pChanInfo = &pDmxDevOsi->DmxChanInfo[u32ChId];
    return pChanInfo->ChanType;
}

HI_S32 DMX_OsiReleaseReadData(HI_U32 u32ChId, HI_U32 u32RelNum, DMX_UserMsg_S* psMsgList)
{
    DMX_DEV_OSI_S  *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S *pChanInfo;
    DMX_OQ_Info_S  *OqInfo;
    HI_U32 u32Fq, u32Blkcnt = 0;
    HI_U32 *pu32ReleaseBlk, u32WriteBlk, u32ReadPtr;
    HI_U32 u32CurrentBlk, u32BufPhyAddr, u32BufSize, u32BufLen;
    HI_U32 u32ReadBlkNext, u32NextBlk, u32BufLenNext = 0;
    HI_U32 u32BufPhyAddrNext = 0;
    HI_U32 u32RealseFlag, u32NextBlkValidFlag;
    HI_U32 *pAddr = HI_NULL;
    HI_U32 i = 0;
    DMX_FQ_Info_S  *FqInfo;
    HI_SIZE_T u32LockFlag;

    pChanInfo = &pDmxDevOsi->DmxChanInfo[u32ChId];

    if (HI_UNF_DMX_CHAN_PLAY_EN != (HI_UNF_DMX_CHAN_PLAY_EN & pChanInfo->ChanStatus))
    {
        HI_ERR_DEMUX("channel %d is not open yet or not play channel\n", u32ChId);
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }
#ifdef DMX_USE_ECM
    if (!pChanInfo->u32SwFlag)
#endif
    {
        HI_U32 TimeMs = 0;

        pChanInfo->u32Release++;

        HI_DRV_SYS_GetTimeStampMs(&TimeMs);

        pChanInfo->u32RelTimeInterval = TimeMs - pChanInfo->u32RelTime;
        pChanInfo->u32RelTime = TimeMs;
    }

    OqInfo = &pDmxDevOsi->DmxOqInfo[pChanInfo->ChanOqId];

    pChanInfo->u32ChnResetLock = 1;
    /*
    first ,get OQ Desc read write pointer from register ,
    OQ read pointer is only update by software,now ,it is the value last time software update it.
    OQ write pointer is only update by logic(hardware   )
    */
    DMXOsiOQGetReadWrite(pChanInfo->ChanOqId, &u32WriteBlk, &u32ReadPtr);

    /*
    malloc pAddr for record the bufferAddress and  buffersize of error buffer block, each error block need 2 words ,
    so ,malloc size is sizeof(HI_U32) * DMX_MAX_ERRLIST_NUM * 2
     */
    pAddr = HI_VMALLOC(HI_ID_DEMUX, sizeof(HI_U32) * DMX_MAX_ERRLIST_NUM * 2);
    if (HI_NULL == pAddr)
    {
        HI_FATAL_DEMUX("Malloc pAddr failed\n");
        pChanInfo->u32ChnResetLock = 0;
        return HI_FAILURE;
    }
     /*the start release position is the u32ReadPtr*/
    OqInfo->u32ReleaseBlk = u32ReadPtr;
    pu32ReleaseBlk = &OqInfo->u32ReleaseBlk;
    /***********************************situition1 ,channel type is common(SEC/POST.ECM/EMM)*******************/
    if (   (HI_UNF_DMX_CHAN_TYPE_SEC    == pChanInfo->ChanType)
        || (HI_UNF_DMX_CHAN_TYPE_ECM_EMM== pChanInfo->ChanType)
        || (HI_UNF_DMX_CHAN_TYPE_POST   == pChanInfo->ChanType) )
    {
        while (*pu32ReleaseBlk != u32WriteBlk)
        {
            u32RealseFlag = 0;
            /*u32CurrentBlk is the address of current descriptor (which will be released current) in OQ, not the number */
            u32CurrentBlk = OqInfo->u32OQVirAddr + *pu32ReleaseBlk * DMX_OQ_DESC_SIZE;
            u32BufPhyAddr = *(HI_U32 *)u32CurrentBlk;               /*u32BufPhyAddr is current block address,acturally, this first word of Desc is block address*/
            u32BufLen  = *(HI_U32 *)(u32CurrentBlk + 8) & 0xffff;   /*u32BufLen is current block's data  length*/
            u32BufSize = *(HI_U32 *)(u32CurrentBlk + 4) & 0xffff;   /*u32BufSize is current block's size*/
            u32ReadBlkNext = *pu32ReleaseBlk + 1;
            if (u32ReadBlkNext >= OqInfo->u32OQDepth)
            {
                u32ReadBlkNext = 0;
            }

            /*the following if-else if mainly for find out the next valide block to be released,
            both error block and valide block's information will be recored in pAddr[i].
            so ,the output of this if-else is u32BufPhyAddrNext and u32BufLenNext*/
            if (IsAddrValid(u32ReadPtr, u32WriteBlk, u32ReadBlkNext) != HI_SUCCESS)
            {
                u32NextBlkValidFlag = 0;
            }
            else
            {
                /*
                to find out next valid block ,first ,judge wether the next block is the "last next" ,meets: read == write.
                */
                DmxHalGetOQWORDx(pChanInfo->ChanOqId, DMX_OQ_SADDR_OFFSET, &u32BufPhyAddrNext);
                DmxHalGetOQWORDx(pChanInfo->ChanOqId, DMX_OQ_SZUS_OFFSET, &u32BufLenNext);
                u32BufLenNext >>= 16;
                DMXOsiOQGetReadWrite(pChanInfo->ChanOqId, &u32WriteBlk, HI_NULL);
                if (u32ReadBlkNext == u32WriteBlk)
                {
                    u32NextBlkValidFlag = 1;
                }
                else
                {
                    /*find a valid next block*/
                    while(1)
                    {
                        if (u32ReadBlkNext != u32WriteBlk)
                        {
                            u32NextBlk = OqInfo->u32OQVirAddr + u32ReadBlkNext * DMX_OQ_DESC_SIZE;
                            u32BufPhyAddrNext = *(HI_U32 *)u32NextBlk;
                            u32BufLenNext = *(HI_U32 *)(u32CurrentBlk + 4) & 0xffff; //ues buf size instead of buf len,for next block may invalid
                            if(DMXOsiCheckErrMSG(u32BufPhyAddrNext) == 0)
                            {
                                u32NextBlkValidFlag = 1;
                                break;
                            }
                            else
                            {
                                DMXINC(u32ReadBlkNext, OqInfo->u32OQDepth);
                                continue;
                            }
                        }
                        else
                        {
                            DmxHalGetOQWORDx(pChanInfo->ChanOqId, DMX_OQ_SADDR_OFFSET, &u32BufPhyAddrNext);
                            DmxHalGetOQWORDx(pChanInfo->ChanOqId, DMX_OQ_SZUS_OFFSET, &u32BufLenNext);
                            u32BufLenNext >>= 16;
                            u32NextBlkValidFlag = 1;
                            break;
                        }
                    }
                }
            }

            /*at here ,we release the buffer */
            for (; i < u32RelNum; i++)
            {
                u32RealseFlag = 0;
                /*if psMsgList[i] is in current block buffer*/
                if ((psMsgList[i].u32BufStartAddr >= u32BufPhyAddr)
                   && (psMsgList[i].u32BufStartAddr <= (u32BufPhyAddr + u32BufLen - 1)))
                {
                    /*for section channel ,one block buffer (5K) usually contains some psMsgList[i] .the i is keep increasing ,
                    when psMsgList[i]'s end address large than current block's end address ,
                    it means the whole current block should be released, so set flag u32RealseFlag = 1 .
                    this flag u32RealseFlag is for bolck ,not for psMsgList[i]*/
                    if ((psMsgList[i].u32BufStartAddr + psMsgList[i].u32MsgLen) >= (u32BufPhyAddr + u32BufLen))
                    {
                        u32RealseFlag = 1;
                    }
                }
                else if (u32NextBlkValidFlag)
                {
                    /*if psMsgList[i] is not in  current block buffer, judge wether it is in the next block of buffer*/
                    if ((psMsgList[i].u32BufStartAddr >= u32BufPhyAddrNext)
                       && (psMsgList[i].u32BufStartAddr <= (u32BufPhyAddrNext + u32BufLenNext - 1)))
                    {
                        u32RealseFlag = 1;
                    }
                    /*if psMsgList[i] is not in  current block buffer and next block buffer,
                    may be there are error block between current and next block , or the current block is error block
                    and psMsgList[i] is in it*/
                    else
                    {
                        /*
                        if current block is error block ,use pAddr to record it
                        */
                        if (DMXOsiRelErrMSG(u32BufPhyAddr) == 0)
                        {
                            //u32RealseFlag = 1;
                            if (++ * pu32ReleaseBlk >= OqInfo->u32OQDepth)
                            {
                                *pu32ReleaseBlk = 0;
                            }

                            pAddr[2 * u32Blkcnt + 0] = u32BufPhyAddr;
                            pAddr[2 * u32Blkcnt + 1] = u32BufSize;
                            u32Blkcnt++;
                            break;
                        }
                        else
                        {
                            HI_ERR_DEMUX("psMsgList[%d].u32BufStartAddr:%x,len:%x,bufferAddr:%x,nextptr:%x,nexlen:%x,u32OQPhyAddr:%x,rel:%x,read:%x\n",
                                           i, psMsgList[i].u32BufStartAddr, psMsgList[i].u32MsgLen, u32BufPhyAddr,
                                         u32BufPhyAddrNext, u32BufLenNext, OqInfo->u32OQPhyAddr,
                                         *pu32ReleaseBlk,u32ReadPtr);
                            HI_VFREE(HI_ID_DEMUX, (HI_VOID *) pAddr);
                            pChanInfo->u32ChnResetLock = 0;
                            /*
                            pay attentaion ,this is a bug ,we just call ResetPoolBuf to resume the poolbuf
                            to avoid some terriable things appears*/
#ifdef HI_DEMUX_PROC_SUPPORT
                            GlobalProcInfo.ErrInfo.ReleaseErrCount++;
                            GlobalProcInfo.ErrInfo.ReleaseErrLastChan = u32ChId;
                            GlobalProcInfo.ErrInfo.ReleaseErrLastOQId = OqInfo->u32OQId;
#endif
                            ResetPoolBuf();
                            return HI_ERR_DMX_INVALID_PARA;
                        }
                    }
                }

                if (u32RealseFlag)
                {
                    if (++ * pu32ReleaseBlk >= OqInfo->u32OQDepth)
                    {
                        *pu32ReleaseBlk = 0;
                    }

                    DMXOsiRelErrMSG(u32BufPhyAddr);
                    pAddr[2 * u32Blkcnt + 0] = u32BufPhyAddr;
                    pAddr[2 * u32Blkcnt + 1] = u32BufSize;
                    u32Blkcnt++;
                    i++;
                    break;
                }
            }

            if (i == u32RelNum)
            {
                break;
            }
        }

        /*at here ,now we finish calc the new read pointer in OQ, the following code is fo update the register to finished the release operation*/
        if (u32Blkcnt)
        {
            u32Fq = OqInfo->u32FQId;

            FqInfo = &pDmxDevOsi->DmxFqInfo[u32Fq];
            spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);

            DmxHalSetOQReadPtr(pChanInfo->ChanOqId, *pu32ReleaseBlk);

            u32WriteBlk = DmxHalGetFQWritePtr(u32Fq);

            for (i = 0; i < u32Blkcnt; i++)
            {
                u32CurrentBlk = pDmxDevOsi->DmxFqInfo[u32Fq].u32FQVirAddr + u32WriteBlk * DMX_FQ_DESC_SIZE;
                *(HI_U32 *)u32CurrentBlk = pAddr[2 * i + 0];
                *(HI_U32 *)(u32CurrentBlk + 4) = pAddr[2 * i + 1];
                if ((++u32WriteBlk) >= pDmxDevOsi->DmxFqInfo[u32Fq].u32FQDepth)
                {
                    u32WriteBlk = 0;
                }
            }

            DmxHalSetFQWritePtr(u32Fq, u32WriteBlk);

            spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);

            DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[pChanInfo->DmxId], u32Fq);

            DmxFqCheckOverflowInt(u32Fq);

            //DMXCheckOQEnableStatus(pChanInfo->stChBuf.u32OQId, pChanInfo->stChBuf.u32OQDepth);
            if (*pu32ReleaseBlk < u32WriteBlk)
            {
                if (OqInfo->u32ProcsBlk < *pu32ReleaseBlk || OqInfo->u32ProcsBlk > u32WriteBlk)//invalid procs ptr
                {
                    OqInfo->u32ProcsBlk = *pu32ReleaseBlk;
                    OqInfo->u32ProcsOffset = 0;
                }
            }
            else
            {
                if (OqInfo->u32ProcsBlk > u32WriteBlk && OqInfo->u32ProcsBlk < *pu32ReleaseBlk)//invalid procs ptr
                {
                    OqInfo->u32ProcsBlk = *pu32ReleaseBlk;
                    OqInfo->u32ProcsOffset = 0;
                }
            }
        }
    }
    else if (HI_UNF_DMX_CHAN_TYPE_PES == pChanInfo->ChanType)
    {
        for (; i < u32RelNum && u32ReadPtr != u32WriteBlk; i++)
        {
            u32CurrentBlk = OqInfo->u32OQVirAddr + (u32ReadPtr) * DMX_OQ_DESC_SIZE;
            u32BufPhyAddr = *(HI_U32 *)u32CurrentBlk;
            u32BufSize = *(HI_U32 *)(u32CurrentBlk + 4) & 0xffff;
            if (psMsgList[i].u32BufStartAddr != u32BufPhyAddr)
            {
                HI_ERR_DEMUX("release addr: %x, oq read phyaddr: %x\n", psMsgList[i].u32BufStartAddr, u32BufPhyAddr);
                HI_VFREE(HI_ID_DEMUX, (HI_VOID *) pAddr);
                pChanInfo->u32ChnResetLock = 0;
                return HI_ERR_DMX_INVALID_PARA;
            }

            pAddr[2 * u32Blkcnt + 0] = u32BufPhyAddr;
            pAddr[2 * u32Blkcnt + 1] = u32BufSize;
            u32Blkcnt++;
            DMXINC(u32ReadPtr, OqInfo->u32OQDepth);
            if (u32ReadPtr == u32WriteBlk)
            {
                break;
            }
        }

        if (u32Blkcnt)
        {
            DmxHalSetOQReadPtr(pChanInfo->ChanOqId, u32ReadPtr);

            u32Fq = OqInfo->u32FQId;

            FqInfo = &pDmxDevOsi->DmxFqInfo[u32Fq];
            spin_lock_irqsave(&FqInfo->LockFq, u32LockFlag);

            u32WriteBlk = DmxHalGetFQWritePtr(u32Fq);

            for (i = 0; i < u32Blkcnt; i++)
            {
                u32CurrentBlk = pDmxDevOsi->DmxFqInfo[u32Fq].u32FQVirAddr + u32WriteBlk * DMX_FQ_DESC_SIZE;
                *(HI_U32 *)u32CurrentBlk = pAddr[2 * i + 0];
                *(HI_U32 *)(u32CurrentBlk + 4) = pAddr[2 * i + 1];
                if ((++u32WriteBlk) >= pDmxDevOsi->DmxFqInfo[u32Fq].u32FQDepth)
                {
                    u32WriteBlk = 0;
                }
            }

            DmxHalSetFQWritePtr(u32Fq, u32WriteBlk);
            spin_unlock_irqrestore(&FqInfo->LockFq, u32LockFlag);

            DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[pChanInfo->DmxId], u32Fq);
            //DMXCheckOQEnableStatus(pChanInfo->stChBuf.u32OQId, pChanInfo->stChBuf.u32OQDepth);

            DmxFqCheckOverflowInt(u32Fq);

        }
    }

    HI_VFREE(HI_ID_DEMUX, (HI_VOID *) pAddr);
    pChanInfo->u32ChnResetLock = 0;
    return HI_SUCCESS;
}

HI_S32 DmxGetPesHeaderLen(HI_U8 *buf, HI_U32 len, HI_U32 *PesHeaderLen)
{
    HI_S32 ret = HI_FAILURE;

    *PesHeaderLen = 0;

    if (len >= DMX_PES_HEADER_LENGTH)
    {
        *PesHeaderLen = DMX_PES_HEADER_LENGTH + buf[8];

        ret = HI_SUCCESS;
    }

    return ret;
}
/*
 * This is used to peek the first u32PeekLen of a SEC or PES packet. It does not consume the data in
 * the internal demux section buffer, i.e. it simply copies the requested amount of data
 * but does not move the consumer pointer.
 */
HI_S32 DMX_OsiPeekDataRequest(HI_U32         u32ChId,
                              HI_U32         u32PeekLen,
                              DMX_UserMsg_S* psMsgList)
{
    DMX_ChanInfo_S *pChanInfo;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S stTmpChanInfo;
    DMX_OQ_Info_S  tmpOqInfo;
    HI_U32 u32AcqedNum = 0;
    HI_S32 s32Ret;

    IsDmxDevInit();
    pChanInfo = &pDmxDevOsi->DmxChanInfo[u32ChId];
    if (HI_UNF_DMX_CHAN_PLAY_EN != (HI_UNF_DMX_CHAN_PLAY_EN & pChanInfo->ChanStatus))
    {
        HI_WARN_DEMUX("channel %d is not open yet or not play channel\n", u32ChId);

        return HI_ERR_DMX_NOT_SUPPORT;
    }
    if ((HI_UNF_DMX_CHAN_TYPE_AUD == pChanInfo->ChanType) || (HI_UNF_DMX_CHAN_TYPE_VID == pChanInfo->ChanType))
    {
        return HI_ERR_DMX_NOT_SUPPORT;   // do not receive vid and aud channel
    }
    if (!DMX_OsiGetChnDataFlag(u32ChId))//channel have no data
    {
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }
    if (HI_UNF_DMX_CHAN_TYPE_PES == pChanInfo->ChanType)
    {
        HI_U32 u32CurDropCnt;
        u32CurDropCnt = s_u32DMXDropCnt[pChanInfo->ChanId];
        memcpy(&stTmpChanInfo,pChanInfo,sizeof(DMX_ChanInfo_S));
        pChanInfo->u32ChnResetLock = 1;
        s32Ret = DMXOsiFindPes(&stTmpChanInfo,psMsgList,16, &u32AcqedNum);
        if (u32CurDropCnt != s_u32DMXDropCnt[pChanInfo->ChanId])//drop occurs
        {
            pChanInfo->u32PesBlkCnt   = 0;
            pChanInfo->u32PesLength   = 0;
            pChanInfo->u32ProcsOffset = 0;
        }
        pChanInfo->u32ChnResetLock = 0;
    }
    else
    {
        memcpy(&stTmpChanInfo,pChanInfo,sizeof(DMX_ChanInfo_S));
        memcpy(&tmpOqInfo,&g_pDmxDevOsi->DmxOqInfo[pChanInfo->ChanOqId],sizeof(DMX_OQ_Info_S));
        pChanInfo->u32ChnResetLock = 1;
        s32Ret = DMXOsiReadSec(&stTmpChanInfo,1,&u32AcqedNum,psMsgList,&tmpOqInfo,0);
        pChanInfo->u32ChnResetLock = 0;
    }

    if (HI_SUCCESS == s32Ret && u32AcqedNum)
    {
        return HI_SUCCESS;
    }
    return HI_ERR_DMX_NOAVAILABLE_DATA;
}
HI_S32 DMX_OsiReadEsRequset(HI_U32 ChanId, DMX_Stream_S *EsData)
{
    HI_S32              ret;
    DMX_DEV_OSI_S      *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S     *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_Sub_DevInfo_S  *DmxInfo     = HI_NULL;
    DMX_FQ_Info_S      *FqInfo      = HI_NULL;
    DMX_OQ_Info_S      *OqInfo      = HI_NULL;
    HI_U32              OqRead      = 0;
    HI_U32              OqWrite     = 0;
    HI_U32              PvrCtrl     = 0;
    HI_U32              DataLen     = 0;
    HI_U32              DataPhyAddr = 0;
    HI_U32              DataKerAddr = 0;
    HI_U32              StartPhyAddr= 0;
    HI_U32              PesHeadLen  = 0;
    HI_U32              tm;
    Disp_Control_t      stDispController;

    if (ChanInfo->DmxId >= DMX_CNT)
    {
        HI_WARN_DEMUX("invalid demux %d\n", ChanInfo->DmxId );
        return HI_ERR_DMX_INVALID_PARA;
    }
	
    DmxInfo = &pDmxDevOsi->SubDevInfo[ChanInfo->DmxId];
    if  (DMX_INVALID_PORT_ID == DmxInfo->PortId)
    {
        HI_WARN_DEMUX("demux(%d) not attached with any port .\n", ChanInfo->DmxId );
        return HI_ERR_DMX_INVALID_PARA;		
    }

    if ((HI_UNF_DMX_CHAN_TYPE_VID != ChanInfo->ChanType) && (HI_UNF_DMX_CHAN_TYPE_AUD != ChanInfo->ChanType))
    {
        HI_WARN_DEMUX("channel %d type is not av\n", ChanId);

        return HI_ERR_DMX_NOT_SUPPORT;
    }

    if (HI_UNF_DMX_CHAN_PLAY_EN != (HI_UNF_DMX_CHAN_PLAY_EN & ChanInfo->ChanStatus))
    {
        HI_WARN_DEMUX("channel %d is not open yet or not play channel\n", ChanId);

        return HI_ERR_DMX_NOT_OPEN_CHAN;
    }

    OqInfo  = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];
    FqInfo  = &pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId];

    ChanInfo->u32TotolAcq++;

    HI_DRV_SYS_GetTimeStampMs(&tm);

    ChanInfo->u32AcqTimeInterval    = tm - ChanInfo->u32AcqTime;
    ChanInfo->u32AcqTime            = tm;

    OqRead = OqInfo->u32ProcsBlk;

    DMXOsiOQGetReadWrite(OqInfo->u32OQId, &OqWrite, HI_NULL);

    DMXCheckBPTsoRamStatus(DmxInfo, OqInfo->u32FQId);

    if (OqRead == OqWrite)
    {
        /*Usually if OqRead == OqWrite we directly return , but ChanEosFlag means should put the remains data of channel buf  out ,even not a entire BB(Buffer block)
        1. ChanEosFlag is seted ture by call AVPLAY_SetEosFlag
        2. AVPLAY_SetEosFlag also will set Eosflag of other module such as Vfwm ,VO and so on
        3. these flag is for history customer demands , in order dispaly the last pieces of stream
        4. if ChanInfo->ChanEosFlag is false and we have no a entire BB of data (may be a hale BB of data),will return HI_ERR_DMX_NOAVAILABLE_DATA*/
        if (!ChanInfo->ChanEosFlag)
        {
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }

        /*pay attention, condition of DMXOsiOQGetBbsAddrSize return success is ((OqWrite == CurrWrite) && (Value & DMX_MASK_BIT_7) && PhyAddr && len)
        so the reason of it's failure possiably can be :
        reason 1 : OqWrite != CurrWrite (from line 5928 to here ,may be it happen ,though it seems no time cost ,
        but logic's speed is more quick,so this may happen with not very low probability)
        reason 2 : len = 0*/
        ret = DMXOsiOQGetBbsAddrSize(OqInfo->u32OQId, OqWrite, &StartPhyAddr, &DataLen, &PvrCtrl);

        /*this if is for err processing:
        err1: "if (0 == DataLen)" means this BB have no data
        err2: a BB with SOP havr not enough data (BB data len < 9 (DMX_PES_HEADER_LENGTH) ||  BB data len < PesHeadLen)
        err3: a BB with datalen = 0
        if not the upper 3 err, this BB is valid and we keep on processing it by jump " if (OqRead != OqWrite)" in line 6025*/
        if (HI_SUCCESS == ret)
        {
            HI_U32 RamPortID = 0;
            HI_BOOL bNeedCheckRamPort = HI_FALSE;
            DMX_RamPort_Info_S *PortInfo ;
            HI_U32              size;

            DataPhyAddr = StartPhyAddr + OqInfo->u32ProcsOffset;
            DataKerAddr = FqInfo->u32BufVirAddr + (DataPhyAddr - FqInfo->u32BufPhyAddr);
            DataLen     -= OqInfo->u32ProcsOffset;

            /*get the ram port in eos mode*/
            if ( DmxInfo->PortMode ==  DMX_PORT_MODE_RAM)
            {
                RamPortID = DmxInfo->PortId;
                bNeedCheckRamPort = HI_TRUE;
            }
            else if ( DmxInfo->PortMode ==  DMX_PORT_MODE_TUNER )
            {
                if (  pDmxDevOsi->TunerPortInfo[DmxInfo->PortId].BPRamPort  )
                {
                    RamPortID = pDmxDevOsi->TunerPortInfo[DmxInfo->PortId].BPRamPort - HI_UNF_DMX_PORT_RAM_0;
                    bNeedCheckRamPort = HI_TRUE;
                }
            }

            PortInfo = &pDmxDevOsi->RamPortInfo[RamPortID];

            /*err1: "if (0 == DataLen)" means this BB have no data*/
            /*if  remain no data is current BB, we should judge the TS buffer's status and return two different err type ,app will use it
            pay attention: the situation channel BB have no data and TS buffer have data is exist,found by x00213242*/
            if (0 == DataLen)
            {
                if ( bNeedCheckRamPort )
                {
                    size = GetQueueLenth(PortInfo->Read, PortInfo->Write, PortInfo->BufSize);
                    if (size > DMX_TS_BUFFER_EMPTY) /*this is experiential value by x00213242 ,comment by l00188263*/
                    {
                        return HI_ERR_DMX_NOAVAILABLE_DATA;
                    }
                }
                ChanInfo->ChanEosFlag = HI_FALSE;
                return HI_ERR_DMX_EMPTY_BUFFER;
            }

            /*OqInfo->u32ProcsOffset != 0 meas not the first time process the current BB ,so clear the SOP flag*/
            if (0 != OqInfo->u32ProcsOffset)
            {
                PvrCtrl &= ~DMX_MASK_BIT_2;
            }
            /*err2: a BB with SOP havr not enough data*/
            /*the first time of entering a BB with SOP flag*/
            if (PvrCtrl & DMX_MASK_BIT_2)
            {
                ret = DmxGetPesHeaderLen((HI_U8*)DataKerAddr, DataLen, &PesHeadLen);
                /*BB data len < 9 (DMX_PES_HEADER_LENGTH) ||  BB data len < PesHeadLen*/
                if ((HI_FAILURE == ret) || ((HI_SUCCESS == ret) && (DataLen <= PesHeadLen)))
                {
                    if ( bNeedCheckRamPort )
                    {
                        size = GetQueueLenth(PortInfo->Read, PortInfo->Write, PortInfo->BufSize);
                        if (size > DMX_TS_BUFFER_EMPTY)
                        {
                            return HI_ERR_DMX_NOAVAILABLE_DATA;
                        }
                    }
                    
                    ChanInfo->ChanEosFlag = HI_FALSE;
                    return HI_ERR_DMX_EMPTY_BUFFER;
                }
            }
            /*get OQ w r pointer again and if still equal ,return HI_ERR_DMX_NOAVAILABLE_DATA
            if not equal ,will enter the outer following if:if (OqRead != OqWrite)*/
            DMXOsiOQGetReadWrite(OqInfo->u32OQId, &OqWrite, HI_NULL);
            /*err3: a BB with datalen = 0*/
            if ((OqRead == OqWrite) && (0 == DataLen))
            {
                return HI_ERR_DMX_NOAVAILABLE_DATA;
            }
        }
        else
        {
            /*get OQ w r pointer again and if still equal ,return HI_ERR_DMX_NOAVAILABLE_DATA
            if not equal ,will enter the outer following if:if (OqRead != OqWrite)*/
            DMXOsiOQGetReadWrite(OqInfo->u32OQId, &OqWrite, HI_NULL);//flush OqWrite again
            if (OqRead == OqWrite)
            {
                /*for  DTS2014012901647 , we add this 'if' */
                if (ChanInfo->ChanEosFlag)
                {
                    ChanInfo->ChanEosFlag = HI_FALSE;
                    return HI_ERR_DMX_EMPTY_BUFFER;
                }
                return HI_ERR_DMX_NOAVAILABLE_DATA;
            }
        }
    }

    if (OqRead != OqWrite)
    {
        OQ_DescInfo_S  *OqDesc      = (OQ_DescInfo_S*)(OqInfo->u32OQVirAddr + OqRead * DMX_OQ_DESC_SIZE);
        HI_U32          CurrOffset  = OqInfo->u32ProcsOffset;

        StartPhyAddr = OqDesc->start_addr;

        DataPhyAddr = StartPhyAddr;
        DataLen     = (OqDesc->pvrctrl_datalen & 0xffff);
        PvrCtrl     = (OqDesc->pvrctrl_datalen >> 16) & 0xff;

        DMXINC(OqInfo->u32ProcsBlk, OqInfo->u32OQDepth);

        OqInfo->u32ProcsOffset = 0;

        if (DataLen == CurrOffset)
        {
            return HI_ERR_DMX_NOAVAILABLE_DATA;;
        }

        DataPhyAddr += CurrOffset;
        DataLen     -= CurrOffset;

        if (0 != CurrOffset)
        {
            PvrCtrl &= ~DMX_MASK_BIT_2; // clear sop flag
        }
    }

    DataKerAddr = FqInfo->u32BufVirAddr + (DataPhyAddr - FqInfo->u32BufPhyAddr);
    //add by yangchun: defaut value for there is no disp time;
    EsData->u32DispTime = ChanInfo->stLastControl.u32DispTime;
    EsData->u32DispEnableFlag= ChanInfo->stLastControl.u32DispEnableFlag;
    EsData->u32DispFrameDistance= ChanInfo->stLastControl.u32DispFrameDistance;
    EsData->u32DistanceBeforeFirstFrame= ChanInfo->stLastControl.u32DistanceBeforeFirstFrame;
    EsData->u32GopNum = ChanInfo->stLastControl.u32GopNum;

    /*if this BB have SOP flag*/
    if (PvrCtrl & DMX_MASK_BIT_2)
    {
        ChanInfo->u32PesLength = 0;

        ret = ParsePesHeader(ChanInfo, DataKerAddr, DataLen, &PesHeadLen, &stDispController);
        if (HI_SUCCESS == ret)
        {
            HI_U8 *buf = (HI_U8*)DataKerAddr;

            ChanInfo->u32PesLength = ((buf[4] << 8) | buf[5]) - PesHeadLen + 6;

            DataLen     -= PesHeadLen;/*jump the PES header*/
            DataPhyAddr += PesHeadLen;/*jump the PES header*/
            DataKerAddr += PesHeadLen;/*jump the PES header*/ 
        }
        else if (-2 == ret)/*this is for PVR smooth ctrl*/
        {
            if (DataLen >= PesHeadLen)
            {
                DataPhyAddr += PesHeadLen;
                DataKerAddr += PesHeadLen;
                DataLen     -= PesHeadLen;
                EsData->u32DispTime = stDispController.u32DispTime;
                EsData->u32DispEnableFlag= stDispController.u32DispEnableFlag;
                EsData->u32DispFrameDistance= stDispController.u32DispFrameDistance;
                EsData->u32DistanceBeforeFirstFrame= stDispController.u32DistanceBeforeFirstFrame;
                EsData->u32GopNum = stDispController.u32GopNum;
                memcpy(&(ChanInfo->stLastControl), &stDispController, sizeof(Disp_Control_t));
            }
            else
            {
                HI_ERR_DEMUX("DMX Unexpect error buflen=%#x, peshead=%#x\n", DataLen, PesHeadLen);
            }
        }
    }

    if (OqRead == OqWrite)
    {
        OqInfo->u32ProcsOffset = DataPhyAddr + DataLen - StartPhyAddr;/*?*/
    }

    if (ChanInfo->ChanType == HI_UNF_DMX_CHAN_TYPE_AUD && ChanInfo->u32PesLength)
    {
        // Attention: for audio channel, del the unuse data, the length may error
        if (ChanInfo->u32PesLength < DataLen)
        {
            DataLen = ChanInfo->u32PesLength;

            ChanInfo->u32PesLength = 0;
            s_u32DMXPesLenErr[ChanInfo->ChanId]++;
        }
        else
        {
            ChanInfo->u32PesLength -= DataLen;
        }
    }

    EsData->u32BufPhyAddr   = DataPhyAddr;
    EsData->u32BufVirAddr   = DataKerAddr;
    EsData->u32BufLen       = DataLen;
    EsData->u32PtsMs        = ChanInfo->LastPts;
    ChanInfo->LastPts = INVALID_PTS;

#ifdef HI_DEMUX_PROC_SUPPORT
    DMX_OsrSaveEs(ChanInfo->ChanType, (HI_U8*)EsData->u32BufVirAddr, EsData->u32BufLen,ChanId);
#endif

    ChanInfo->u32HitAcq++;

    return HI_SUCCESS;
}

HI_S32 DMX_OsiReleaseReadEs(HI_U32 ChanId, DMX_Stream_S *EsData)
{
    HI_S32          ret;
    DMX_DEV_OSI_S  *pDmxDevOsi  = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo    = &pDmxDevOsi->DmxChanInfo[ChanId];
    DMX_OQ_Info_S  *OqInfo;
    HI_U32          TimeMs;

    //CHECKDMXID(ChanInfo->DmxId);
    if (ChanInfo->DmxId >= DMX_CNT)
    {
        HI_WARN_DEMUX("invalid demux %d\n", ChanInfo->DmxId );
        return HI_ERR_DMX_INVALID_PARA;
    }

    if ((HI_UNF_DMX_CHAN_TYPE_VID != ChanInfo->ChanType) && (HI_UNF_DMX_CHAN_TYPE_AUD != ChanInfo->ChanType))
    {
        HI_WARN_DEMUX("channel %d type is not av\n", ChanId);

        return HI_ERR_DMX_NOT_SUPPORT;
    }

    if (HI_UNF_DMX_CHAN_PLAY_EN != (HI_UNF_DMX_CHAN_PLAY_EN & ChanInfo->ChanStatus))
    {
        HI_WARN_DEMUX("channel %d is not open yet or not play channel\n", ChanId);

        return HI_ERR_DMX_NOT_OPEN_CHAN;
    }

    ChanInfo->u32Release++;

    HI_DRV_SYS_GetTimeStampMs(&TimeMs);

    ChanInfo->u32RelTimeInterval = TimeMs - ChanInfo->u32RelTime;
    ChanInfo->u32RelTime = TimeMs;

    OqInfo = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];

    do
    {
        OQ_DescInfo_S  *OqDesc;
        HI_U32          OqRead;
        HI_U32          OqWrite;
        HI_U32          DataPhyAddr;
        HI_U32          DataLen;
        HI_U32          Size;

        DMXOsiOQGetReadWrite(OqInfo->u32OQId, &OqWrite, &OqRead);

        if (OqRead == OqWrite)
        {
            return HI_SUCCESS;
        }

        OqDesc = (OQ_DescInfo_S*)(OqInfo->u32OQVirAddr + OqRead * DMX_OQ_DESC_SIZE);

        DataPhyAddr = OqDesc->start_addr;
        DataLen     = OqDesc->pvrctrl_datalen & 0xffff;

        if ((EsData->u32BufPhyAddr < DataPhyAddr) || ((EsData->u32BufPhyAddr + EsData->u32BufLen) > (DataPhyAddr + DataLen)))
        {
            ret = DmxOQRelease(OqInfo->u32FQId, ChanInfo->ChanOqId, DataPhyAddr, DataLen);
            if (HI_SUCCESS != ret)
            {
                return ret;
            }

            DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[ChanInfo->DmxId], OqInfo->u32FQId);

            continue;
        }

        if ((EsData->u32BufPhyAddr < DataPhyAddr) || ((EsData->u32BufPhyAddr + EsData->u32BufLen) > (DataPhyAddr + DataLen)))
        {
            HI_ERR_DEMUX("channel %d release error, Rel: Addr=0x%x, len=0x%x, Oq: Addr=0x%x, len=0x%x\n",
                ChanId, EsData->u32BufPhyAddr, EsData->u32BufLen, DataPhyAddr, DataLen);

            return HI_ERR_DMX_INVALID_PARA;
        }

        Size = (EsData->u32BufPhyAddr + EsData->u32BufLen) - DataPhyAddr;
        if (Size < DataLen)
        {
            return HI_SUCCESS;
        }

        ret = DmxOQRelease(OqInfo->u32FQId, ChanInfo->ChanOqId, DataPhyAddr, DataLen);
        if (HI_SUCCESS == ret)
        {
            DMXCheckFQBPStatus(&pDmxDevOsi->SubDevInfo[ChanInfo->DmxId], OqInfo->u32FQId);
        }
    } while (0);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetFQBufStatus(HI_U32 FQId, HI_MPI_DMX_BUF_STATUS_S *pBufStat)
{
    HI_U32 Read, Write;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[FQId];

    Read    = DmxHalGetFQReadPtr(FQId);
    Write   = DmxHalGetFQWritePtr(FQId);
	
    pBufStat->u32BufSize   = FqInfo->u32BufSize;
    pBufStat->u32UsedSize  = 0;
    pBufStat->u32BufRptr    = Read;
    pBufStat->u32BufWptr    = Write;
    
    if (Read < Write)
    {
        pBufStat->u32UsedSize = (FqInfo->u32FQDepth - 1 - Write + Read) * FqInfo->u32BlockSize;
    }
    else if (Read > Write)
    {
        pBufStat->u32UsedSize = (Read - Write) * FqInfo->u32BlockSize;
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiGetChanBufStatus(HI_U32 ChanId, HI_MPI_DMX_BUF_STATUS_S *BufStatus)
{
    DMX_DEV_OSI_S  *pDmxDevOsi = g_pDmxDevOsi;
    DMX_ChanInfo_S *ChanInfo;
    DMX_OQ_Info_S  *OqInfo;

    IsDmxDevInit();

    ChanInfo = &pDmxDevOsi->DmxChanInfo[ChanId];

    CHECKDMXID(ChanInfo->DmxId);

    OqInfo = &pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];
    if (OqInfo->enOQBufMode == DMX_OQ_MODE_UNUSED)
    {
        HI_ERR_DEMUX("channel %d OQ status not used.\n", ChanId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    return DMX_OsiGetFQBufStatus(OqInfo->u32FQId, BufStatus);
}

HI_S32 DMX_OsiSelectDataFlag(HI_U32 *pu32WatchCh, HI_U32 u32WatchNum, HI_U32 *pu32Flag, HI_U32 u32TimeOutMs)
{
    HI_S32 ret;
    HI_U32 i;
    HI_U32 u32OqId;
    HI_U32 u32ChanId = 0;
    HI_U32 *pu32ChGroup = HI_NULL;
    DMX_DEV_OSI_S *pDmxDevOsi = g_pDmxDevOsi;
    wait_queue_head_t GroupWaitQueue;
    wait_queue_head_t* pWaitQueue;
    HI_SIZE_T u32LockFlag;

    /* mark enabled OQ EOP interrupt and finally disable it */
    HI_U32 u32EnOQIntMark[DMX_OQ_CNT] = {0}; 

    IsDmxDevInit();

    init_waitqueue_head(&GroupWaitQueue);
    s_pAllChnWatchWaitQueue = HI_NULL;
    if (HI_NULL == pu32WatchCh)
    {
        pu32ChGroup = s_u32DMXChanDatafl;
        u32WatchNum = DMX_CHANNEL_CNT;
        for (i = 0; i < DMX_CHANNEL_CNT; i++)
        {
            pu32ChGroup[i] = i;
        }

        spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
        s_pAllChnWatchWaitQueue = &AllChnWaitQueue;
        spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
        pWaitQueue = &AllChnWaitQueue;
    }
    else
    {
        pu32ChGroup = pu32WatchCh;
        pWaitQueue = &GroupWaitQueue;
    }

    pu32Flag[0] = 0;
    pu32Flag[1] = 0;
    pu32Flag[2] = 0;
    DMXOsiGetDataFlag(pu32ChGroup, u32WatchNum, pu32Flag);
    if (pu32Flag[0] || pu32Flag[1] || pu32Flag[2])
    {
        return HI_SUCCESS;
    }

    if (u32TimeOutMs)
    {
        s_u32DMXBufData = 0;
        for (i = 0; i < u32WatchNum; i++)
        {
            u32ChanId = pu32ChGroup[i];
            
            BUG_ON(u32ChanId >= DMX_CHANNEL_CNT);

            if ( (DMX_CNT <= pDmxDevOsi->DmxChanInfo[u32ChanId].DmxId)
                || (HI_UNF_DMX_CHAN_TYPE_AUD == pDmxDevOsi->DmxChanInfo[u32ChanId].ChanType)
                || (HI_UNF_DMX_CHAN_TYPE_VID == pDmxDevOsi->DmxChanInfo[u32ChanId].ChanType) 
                || (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY != (pDmxDevOsi->DmxChanInfo[u32ChanId].ChanOutMode & HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY))  )
            {
                continue; 
            }

            if (!s_pAllChnWatchWaitQueue)
            {
                u32OqId = pDmxDevOsi->DmxChanInfo[u32ChanId].ChanOqId;
            }
            else
            {
                u32OqId = u32ChanId;
            }
            
            BUG_ON(u32OqId >= DMX_OQ_CNT);
            
            spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
            pDmxDevOsi->DmxOqInfo[u32OqId].pWatchWaitQueue = pWaitQueue;
            spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
            
            u32EnOQIntMark[u32OqId] ++;
            DmxHalEnableOQEopInt(u32OqId);
        }

        u32TimeOutMs = (u32TimeOutMs * HZ) / 1000;
        ret = wait_event_interruptible_timeout(*pWaitQueue,
                                               s_u32DMXBufData,
                                               u32TimeOutMs);
        for (i = 0; i < u32WatchNum; i++)
        {
            u32ChanId = pu32ChGroup[i];
            
            BUG_ON(u32ChanId >= DMX_CHANNEL_CNT);

            if (!s_pAllChnWatchWaitQueue)
            {
                u32OqId = pDmxDevOsi->DmxChanInfo[u32ChanId].ChanOqId;
            }
            else
            {
                u32OqId = u32ChanId;
            }

            BUG_ON(u32OqId >= DMX_OQ_CNT);

            if (0 != u32EnOQIntMark[u32OqId])
            {
                DmxHalDisableOQEopInt(u32OqId);
                u32EnOQIntMark[u32OqId] --;

                spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
                pDmxDevOsi->DmxOqInfo[u32OqId].pWatchWaitQueue = HI_NULL;
                spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
            }            
        }

        spin_lock_irqsave(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);
        s_pAllChnWatchWaitQueue = HI_NULL;
        spin_unlock_irqrestore(&(pDmxDevOsi->splock_OqBuf), u32LockFlag);

        DMXOsiGetDataFlag(pu32ChGroup, u32WatchNum, pu32Flag);
        if ((pu32Flag[0] | pu32Flag[1] | pu32Flag[2]))
        {
            return HI_SUCCESS;
        }

        if (0 == ret)
        {
            HI_DBG_DEMUX("wait time out!\n");
            return HI_ERR_DMX_TIMEOUT;
        }

        DMXOsiGetDataFlag(pu32ChGroup, u32WatchNum, pu32Flag);
        if ((pu32Flag[0] | pu32Flag[1] | pu32Flag[2]))
        {
            return HI_SUCCESS;
        }
    }

    return HI_ERR_DMX_NOAVAILABLE_DATA;
}

HI_S32 DMX_OsiPcrChannelCreate(const HI_U32 DmxId, HI_U32 *PcrId)
{
    HI_S32          ret         = HI_ERR_DMX_NOFREE_CHAN;
    DMX_DEV_OSI_S  *DmxDevOsi   = g_pDmxDevOsi;
    HI_U32          i;

    for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
    {
        DMX_PCR_Info_S *PcrInfo = &DmxDevOsi->DmxPcrInfo[i];

        if (PcrInfo->DmxId >= DMX_CNT)
        {
            PcrInfo->DmxId      = DmxId;
            PcrInfo->PcrPid     = DMX_INVALID_PID;
            PcrInfo->SyncHandle = DMX_INVALID_SYNC_HANDLE;
            PcrInfo->PcrValue   = 0xffffffff;
            PcrInfo->ScrValue   = 0xffffffff;

            DmxHalSetPcrPid(i, DMX_INVALID_PID);

            *PcrId = i;

            ret = HI_SUCCESS;

            break;
        }
    }

    return ret;
}

HI_S32 DMX_OsiPcrChannelDestroy(const HI_U32 PcrId)
{
    HI_S32          ret     = HI_ERR_DMX_INVALID_PARA;
    DMX_PCR_Info_S *PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[PcrId];

    if (PcrInfo->DmxId < DMX_CNT)
    {
        PcrInfo->DmxId = DMX_CNT;

        DmxHalSetPcrIntEnable(PcrId, HI_FALSE);

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiPcrChannelSetPid(const HI_U32 PcrId, const HI_U32 PcrPid)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_PCR_Info_S *PcrInfo = &DmxMgr->DmxPcrInfo[PcrId];

    if ((PcrPid > DMX_INVALID_PID) || (PcrInfo->DmxId >= DMX_CNT))
    {
        HI_ERR_DEMUX("Invalid parameter: PcrPid=0x%x, DmxId=%u\n", PcrPid, PcrInfo->DmxId);

        return HI_ERR_DMX_INVALID_PARA;
    }

    if (PcrPid < DMX_INVALID_PID)
    {
        HI_U32 i;

        for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
        {
            if ((DmxMgr->DmxPcrInfo[i].DmxId == PcrInfo->DmxId) && (i != PcrId))
            {
                if (DmxMgr->DmxPcrInfo[i].PcrPid == PcrPid)
                {
                    PcrInfo->PcrPid = PcrPid;
                    HI_ERR_DEMUX("chanel(%x) pcr pid(%x) already used.\n", PcrId, PcrPid);
                    return HI_SUCCESS;
                }
            }
        }
    }

    PcrInfo->PcrPid = PcrPid;
    DmxHalSetPcrPid(PcrId, PcrPid);
    DmxHalSetPcrDmxId(PcrId, PcrInfo->DmxId);
    DmxHalSetPcrIntEnable(PcrId, HI_TRUE);

    return HI_SUCCESS;
}

HI_S32 DMX_OsiPcrChannelGetPid(const HI_U32 PcrId, HI_U32 *PcrPid)
{
    HI_S32          ret     = HI_ERR_DMX_INVALID_PARA;
    DMX_PCR_Info_S *PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[PcrId];

    if (PcrInfo->DmxId < DMX_CNT)
    {
        *PcrPid = PcrInfo->PcrPid;

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiPcrChannelGetClock(const HI_U32 PcrId, HI_U64 *PcrValue, HI_U64 *ScrValue)
{
    HI_S32          ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S  *DmxDevOsi   = g_pDmxDevOsi;
    DMX_PCR_Info_S *PcrInfo     = &DmxDevOsi->DmxPcrInfo[PcrId];

    if (PcrInfo->DmxId < DMX_CNT)
    {
        *PcrValue = PcrInfo->PcrValue;
        *ScrValue = PcrInfo->ScrValue;

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiPcrChannelAttachSync(const HI_U32 PcrId, const HI_U32 SyncHadle)
{
    HI_S32          ret     = HI_ERR_DMX_INVALID_PARA;
    DMX_PCR_Info_S *PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[PcrId];

    if (PcrInfo->DmxId < DMX_CNT)
    {
        PcrInfo->SyncHandle = SyncHadle;

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiPcrChannelDetachSync(const HI_U32 PcrId)
{
    HI_S32          ret     = HI_ERR_DMX_INVALID_PARA;
    DMX_PCR_Info_S *PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[PcrId];

    if (PcrInfo->DmxId < DMX_CNT)
    {
        PcrInfo->SyncHandle = DMX_INVALID_SYNC_HANDLE;

        ret = HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_DRV_REC_CreateChannel(HI_UNF_DMX_REC_ATTR_S *RecAttr, DMX_REC_TIMESTAMP_MODE_E enRecTimeStamp,HI_U32 *RecId, HI_U32 *BufPhyAddr, HI_U32 *BufSize)
{
    HI_S32          ret             = HI_ERR_DMX_NOFREE_CHAN;
    DMX_DEV_OSI_S  *DmxMgr          = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo         = HI_NULL;
    DMX_FQ_Info_S  *RecFqInfo       = HI_NULL;
    DMX_FQ_Info_S  *ScdFqInfo       = HI_NULL;
    DMX_OQ_Info_S  *RecOqInfo       = HI_NULL;
    DMX_OQ_Info_S  *ScdOqInfo       = HI_NULL;
    HI_U32          RecBufSize      = 0;
    HI_U32          RecFqBufSize    = 0;
    HI_U32          RecFqBlockSize  = DMX_REC_VID_TS_PACKETS_PER_BLOCK;
    HI_U32          RecFqDepth      = 0;
    HI_U32          RecOqBufSize    = 0;
    HI_U32          RecOqDepth      = 0;
    HI_U32          ScdBufSize      = 0;
    HI_U32          ScdBlockSize    = 0;
    HI_U32          ScdFqBufSize    = 0;
    HI_U32          ScdFqDepth      = 0;
    HI_U32          ScdOqBufSize    = 0;
    HI_U32          ScdOqDepth      = 0;
    HI_U32          Size            = 0;
    HI_U32          RecFqId         = DMX_INVALID_FQ_ID;
    HI_U32          ScdFqId         = DMX_INVALID_FQ_ID;
    HI_S32          PicParser       = -1;
    VIDSTD_E        VidStd          = VIDSTD_BUTT;
    MMZ_BUFFER_S    RecMmzBuf       = {0};
    MMZ_BUFFER_S    ScdMmzBuf       = {0};
    HI_CHAR         BufName[16];

    CHECKDMXID(RecAttr->u32DmxId);

    switch (RecAttr->enRecType)
    {
        case HI_UNF_DMX_REC_TYPE_SELECT_PID :
            switch (RecAttr->enIndexType)
            {
                case HI_UNF_DMX_REC_INDEX_TYPE_VIDEO :
                    if (RecAttr->u32IndexSrcPid >= DMX_INVALID_PID)
                    {
                        HI_ERR_DEMUX("invalid index pid:0x%x\n",RecAttr->u32IndexSrcPid);
                        return HI_ERR_DMX_INVALID_PARA;
                    }

                    switch (RecAttr->enVCodecType)
                    {
                        case HI_UNF_VCODEC_TYPE_MPEG2 :
                            VidStd = VIDSTD_MPEG2;
                            break;

                        case HI_UNF_VCODEC_TYPE_MPEG4 :
                            VidStd = VIDSTD_MPEG4;
                            break;

                        case HI_UNF_VCODEC_TYPE_AVS :
                            VidStd = VIDSTD_AVS;
                            break;

                        case HI_UNF_VCODEC_TYPE_H264 :
                            VidStd = VIDSTD_H264;
                            break;

                        default :
                            HI_ERR_DEMUX("invalid vcodec type:%d\n",RecAttr->enVCodecType);
                            return HI_ERR_DMX_INVALID_PARA;
                    }

                    ScdBufSize = DMX_REC_VID_SCD_BUF_SIZE;
                    ScdBlockSize = DMX_REC_VID_SCD_NUM_PER_BLOCK;
                    if ( enRecTimeStamp >= DMX_REC_TIMESTAMP_ZERO)
                    {
                        RecFqBlockSize  = DMX_REC_VID_TS_WITH_TIMESTAMP_BLOCK_SIZE;
                    }
                    break;

                case HI_UNF_DMX_REC_INDEX_TYPE_AUDIO :
                    if (RecAttr->u32IndexSrcPid >= DMX_INVALID_PID)
                    {
                        HI_ERR_DEMUX("invalid index pid:0x%x\n",RecAttr->u32IndexSrcPid);
                        return HI_ERR_DMX_INVALID_PARA;
                    }

                    ScdBufSize      = DMX_REC_AUD_SCD_BUF_SIZE;
                    ScdBlockSize = DMX_REC_AUD_SCD_NUM_PER_BLOCK;
                    if ( enRecTimeStamp >= DMX_REC_TIMESTAMP_ZERO)
                    {
                        RecFqBlockSize  = DMX_REC_AUD_TS_WITH_TIMESTAMP_BLOCK_SIZE;
                    }
                    else
                    {
                        RecFqBlockSize  = DMX_REC_AUD_TS_PACKETS_PER_BLOCK;
                    }
                    break;

                case HI_UNF_DMX_REC_INDEX_TYPE_NONE :
                    break;

                default :
                    return HI_ERR_DMX_INVALID_PARA;
            }

            break;

        case HI_UNF_DMX_REC_TYPE_ALL_PID :
            break;

        default :
            HI_ERR_DEMUX("invalid RecAttr->enRecType:%d\n",RecAttr->enRecType);
            return HI_ERR_DMX_INVALID_PARA;
    }

    if (RecAttr->u32RecBufSize < DMX_REC_MIN_BUF_SIZE)
    {
        HI_ERR_DEMUX("invalid RecAttr->u32RecBufSize:0x%x\n",RecAttr->u32RecBufSize);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (0 == down_interruptible(&DmxMgr->DmxRecInfo[RecAttr->u32DmxId].LockRec))
    {
        if (DmxMgr->DmxRecInfo[RecAttr->u32DmxId].DmxId >= DMX_CNT)
        {
            RecInfo = &DmxMgr->DmxRecInfo[RecAttr->u32DmxId];

            RecInfo->DmxId = RecAttr->u32DmxId;
        }
        up(&DmxMgr->DmxRecInfo[RecAttr->u32DmxId].LockRec);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        return HI_ERR_DMX_BUSY;
    }

    if (!RecInfo)
    {
        HI_ERR_DEMUX("no free rec channel or channel already in use!\n");
        return HI_ERR_DMX_NOFREE_CHAN;
    }

    RecFqId = DmxFqIdAcquire(1, DMX_FQ_CNT);
    if (RecFqId >= DMX_FQ_CNT)
    {
        HI_ERR_DEMUX("invalid fq id:%d!\n",RecFqId);
        goto exit;
    }

    RecFqInfo = &DmxMgr->DmxFqInfo[RecFqId];

    if (0 != ScdBufSize)
    {
        if (HI_UNF_DMX_REC_INDEX_TYPE_VIDEO == RecAttr->enIndexType)
        {
            PicParser = FIDX_OpenInstance(VidStd, STRM_TYPE_ES, (HI_U32*)&RecInfo->LastFrameInfo);
            if (PicParser < 0)
            {
                HI_ERR_DEMUX("PicParser is invlid\n");

                goto exit;
            }
        }

        ScdFqId = DmxFqIdAcquire(1, DMX_FQ_CNT);
        if (ScdFqId >= DMX_FQ_CNT)
        {
            HI_ERR_DEMUX("invalid fq id:%d!\n",RecFqId);
            goto exit;
        }

        ScdFqInfo = &DmxMgr->DmxFqInfo[ScdFqId];
    }

    RecBufSize      = (RecAttr->u32RecBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;
    /* align with block */
    RecBufSize = RecBufSize - RecBufSize % RecFqBlockSize;
    
    RecFqDepth      = RecBufSize / RecFqBlockSize + 1;
    RecFqBufSize    = RecFqDepth * DMX_FQ_DESC_SIZE;
    RecFqBufSize    = (RecFqBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;

    RecOqDepth      = RecFqDepth < DMX_OQ_DEPTH ? (RecFqDepth - 1) : DMX_OQ_DEPTH;
    RecOqBufSize    = RecOqDepth * DMX_OQ_DESC_SIZE;

    snprintf(BufName, sizeof(BufName), "DMX_RecBuf[%u]", RecFqId);

    Size = RecBufSize + RecFqBufSize + RecOqBufSize;

    if (HI_SUCCESS != HI_DRV_MMZ_AllocAndMap(BufName, MMZ_OTHERS, Size, 0, &RecMmzBuf))
    {
        HI_ERR_DEMUX("rec memory allocate failed, BufSize=0x%x\n", Size);

        ret = HI_ERR_DMX_ALLOC_MEM_FAILED;

        goto exit;
    }

    if (0 != ScdBufSize)
    {
        ScdBufSize      = (ScdBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;
        /* align with block */
        ScdBufSize = ScdBufSize - ScdBufSize % ScdBlockSize;
        
        ScdFqDepth      = ScdBufSize / ScdBlockSize + 1;
        ScdFqBufSize    = ScdFqDepth * DMX_FQ_DESC_SIZE;
        ScdFqBufSize    = (ScdFqBufSize + MIN_MMZ_BUF_SIZE - 1) / MIN_MMZ_BUF_SIZE * MIN_MMZ_BUF_SIZE;

        ScdOqDepth      = ScdFqDepth < DMX_OQ_DEPTH ? (ScdFqDepth - 1) : DMX_OQ_DEPTH;
        ScdOqBufSize    = ScdOqDepth * DMX_OQ_DESC_SIZE;

        snprintf(BufName, sizeof(BufName), "DMX_ScdBuf[%u]", ScdFqId);

        Size = ScdBufSize + ScdFqBufSize + ScdOqBufSize;

        if (HI_SUCCESS != HI_DRV_MMZ_AllocAndMap(BufName, MMZ_OTHERS, Size, 0, &ScdMmzBuf))
        {
            HI_ERR_DEMUX("scd memory allocate failed, BufSize=0x%x\n", Size);

            ret = HI_ERR_DMX_ALLOC_MEM_FAILED;

            goto exit;
        }
    }

    if (0 == down_interruptible(&RecInfo->LockRec))
    {
        RecInfo->RecType        = RecAttr->enRecType;
        RecInfo->Descramed      = RecAttr->bDescramed;
        RecInfo->IndexType      = RecAttr->enIndexType;
        if (0 == ScdBufSize)
        {
            RecInfo->IndexType  = HI_UNF_DMX_REC_INDEX_TYPE_NONE;
        }
        RecInfo->VCodecType     = RecAttr->enVCodecType;
        RecInfo->IndexPid       = RecAttr->u32IndexSrcPid;
        RecInfo->IndexChanID  = DMX_INVALID_CHAN_ID;
        RecInfo->RecStatus      = DMX_REC_STATUS_STOP;
        RecInfo->RecFqId        = RecFqId;
        RecInfo->ScdFqId        = ScdFqId;
        RecInfo->RecOqId        = DMX_CHANNEL_CNT + RecInfo->DmxId * 2;
        RecInfo->ScdOqId        = DMX_CHANNEL_CNT + RecInfo->DmxId * 2 + 1;
        RecInfo->ScdId          = RecAttr->u32DmxId + 1;
        RecInfo->PicParser      = PicParser;

        up(&RecInfo->LockRec);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        ret = HI_ERR_DMX_BUSY;

        goto exit;
    }

    memset(&RecInfo->LastFrameInfo, 0, sizeof(HI_UNF_DMX_REC_INDEX_S));

    RecFqInfo->u32BufPhyAddr    = RecMmzBuf.u32StartPhyAddr;
    RecFqInfo->u32BufVirAddr    = RecMmzBuf.u32StartVirAddr;
    RecFqInfo->u32BufSize       = RecBufSize;

    RecFqInfo->u32FQPhyAddr     = RecFqInfo->u32BufPhyAddr + RecBufSize;
    RecFqInfo->u32FQVirAddr     = RecFqInfo->u32BufVirAddr + RecBufSize;
    RecFqInfo->u32FQDepth       = RecFqDepth;
    RecFqInfo->u32BlockSize     = RecFqBlockSize;

    RecOqInfo = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];

    RecOqInfo->u32OQPhyAddr     = RecFqInfo->u32FQPhyAddr + RecFqBufSize;
    RecOqInfo->u32OQVirAddr     = RecFqInfo->u32FQVirAddr + RecFqBufSize;
    RecOqInfo->u32OQDepth       = RecOqDepth;
    RecOqInfo->u32FQId          = RecFqId;
    RecOqInfo->u32AttachId      = RecOqInfo->u32OQId;
    RecOqInfo->enOQBufMode      = DMX_OQ_MODE_REC;

    if (0 != ScdBufSize)
    {
        ScdOqInfo = &DmxMgr->DmxOqInfo[RecInfo->ScdOqId];

        ScdFqInfo->u32BufPhyAddr    = ScdMmzBuf.u32StartPhyAddr;
        ScdFqInfo->u32BufVirAddr    = ScdMmzBuf.u32StartVirAddr;
        ScdFqInfo->u32BufSize       = ScdBufSize;

        ScdFqInfo->u32FQPhyAddr     = ScdFqInfo->u32BufPhyAddr + ScdBufSize;
        ScdFqInfo->u32FQVirAddr     = ScdFqInfo->u32BufVirAddr + ScdBufSize;
        ScdFqInfo->u32FQDepth       = ScdFqDepth;
        ScdFqInfo->u32BlockSize     = ScdBlockSize;

        ScdOqInfo->u32OQPhyAddr     = ScdFqInfo->u32FQPhyAddr + ScdFqBufSize;
        ScdOqInfo->u32OQVirAddr     = ScdFqInfo->u32FQVirAddr + ScdFqBufSize;
        ScdOqInfo->u32OQDepth       = ScdOqDepth;
        ScdOqInfo->u32FQId          = ScdFqId;
        ScdOqInfo->u32AttachId      = ScdOqInfo->u32OQId;
        ScdOqInfo->enOQBufMode      = DMX_OQ_MODE_SCD;
    }

    *RecId      = RecAttr->u32DmxId;
    *BufPhyAddr = RecFqInfo->u32BufPhyAddr;
    *BufSize    = RecFqInfo->u32BufSize;;

    /*set recorded ts packet len,added by l00188263 ,Hi3719 support 192 Byte ts packet length recording*/
#ifdef DMX_REC_TIME_STAMP_SUPPORT
    if (0 == down_interruptible(&RecInfo->LockRec))
    {
        RecInfo->enRecTimeStamp   = enRecTimeStamp;
        up(&RecInfo->LockRec);
    }
    else
    {
        HI_ERR_DEMUX("down_interruptible failed!\n");
        return HI_ERR_DMX_BUSY;
    }

    DmxHalConfigRecTsTimeStamp(RecAttr->u32DmxId, enRecTimeStamp);
#endif
    return HI_SUCCESS;

exit :
    if (ScdMmzBuf.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&ScdMmzBuf);
    }

    if (RecMmzBuf.u32StartPhyAddr)
    {
        HI_DRV_MMZ_UnmapAndRelease(&RecMmzBuf);
    }

    if (PicParser >= 0)
    {
        FIDX_CloseInstance(PicParser);
    }

    DmxFqIdRelease(RecFqId);

    DmxFqIdRelease(ScdFqId);

    if (RecInfo)
    {
        if (0 == down_interruptible(&RecInfo->LockRec))
        {
            RecInfo->DmxId = DMX_INVALID_DEMUX_ID;
            up(&RecInfo->LockRec);
        }
    }

    return ret;
}

HI_S32 DMX_DRV_REC_DestroyChannel(HI_U32 RecId)
{
    HI_S32          ret         = HI_ERR_DMX_INVALID_PARA;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo     = &DmxMgr->DmxRecInfo[RecId];

    if (RecInfo->DmxId < DMX_CNT)
    {
        if (DMX_REC_STATUS_STOP == RecInfo->RecStatus)
        {
            DMX_FQ_Info_S  *RecFqInfo = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
            MMZ_BUFFER_S    MmzBuf;

            MmzBuf.u32StartPhyAddr  = RecFqInfo->u32BufPhyAddr;
            MmzBuf.u32StartVirAddr  = RecFqInfo->u32BufVirAddr;

            HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);

            DmxFqIdRelease(RecInfo->RecFqId);

            if (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType)
            {
                DMX_FQ_Info_S  *ScdFqInfo = &DmxMgr->DmxFqInfo[RecInfo->ScdFqId];

                MmzBuf.u32StartPhyAddr  = ScdFqInfo->u32BufPhyAddr;
                MmzBuf.u32StartVirAddr  = ScdFqInfo->u32BufVirAddr;

                HI_DRV_MMZ_UnmapAndRelease(&MmzBuf);

                DmxFqIdRelease(RecInfo->ScdFqId);

                if (HI_UNF_DMX_REC_INDEX_TYPE_VIDEO == RecInfo->IndexType)
                {
                    FIDX_CloseInstance(RecInfo->PicParser);
                }
            }

            if (0 == down_interruptible(&RecInfo->LockRec))
            {
                RecInfo->DmxId = DMX_INVALID_DEMUX_ID;
                RecInfo->IndexChanID = DMX_INVALID_CHAN_ID;
                up(&RecInfo->LockRec);
            }

            ret = HI_SUCCESS;
        }
        else
        {
            HI_ERR_DEMUX("stop the rec channel first!\n");
            ret = HI_ERR_DMX_STARTING_REC_CHAN;
        }
    }

    return ret;
}

HI_S32 DMX_DRV_REC_AddRecPid(HI_U32 RecId, HI_U32 Pid, HI_U32 *ChanId)
{
    HI_S32                  ret;
    DMX_DEV_OSI_S          *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S          *RecInfo     = &DmxMgr->DmxRecInfo[RecId];
    HI_UNF_DMX_CHAN_ATTR_S  ChanAttr;
    DMX_MMZ_BUF_S           ChanBuf;

    if (Pid > DMX_INVALID_PID)
    {
        HI_ERR_DEMUX("Invalid pid:0x%x\n", Pid);

        return HI_ERR_DMX_INVALID_PARA;
    }

    CHECKDMXID(RecInfo->DmxId);

    ChanAttr.u32BufSize    = 0;
    ChanAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_POST;
    ChanAttr.enCRCMode     = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
    ChanAttr.enOutputMode  = HI_UNF_DMX_CHAN_OUTPUT_MODE_REC;

    ret = DMX_OsiCreateChannel(RecInfo->DmxId, &ChanAttr, &ChanBuf, ChanId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = DMX_OsiSetChannelPid(*ChanId, Pid);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(*ChanId);

        return ret;
    }

    ret = DMX_OsiOpenChannel(*ChanId);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(*ChanId);

        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 DMX_DRV_REC_DelRecPid(HI_U32 RecId, HI_U32 ChanId)
{
    HI_S32          ret;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo     = &DmxMgr->DmxRecInfo[RecId];
    DMX_ChanInfo_S *ChanInfo    = &DmxMgr->DmxChanInfo[ChanId];

    if ((RecInfo->DmxId >= DMX_CNT) || (ChanInfo->DmxId >= DMX_CNT))
    {
        HI_ERR_DEMUX("RecInfo->DmxId:%d or ChanInfo->DmxId:%d invalid\n", RecInfo->DmxId,ChanInfo->DmxId);
        return HI_ERR_DMX_INVALID_PARA;
    }

    if (RecInfo->DmxId != ChanInfo->DmxId)
    {
        HI_ERR_DEMUX("RecInfo->DmxId:%d or ChanInfo->DmxId:%d not equal!\n", RecInfo->DmxId,ChanInfo->DmxId);
        return HI_ERR_DMX_UNMATCH_CHAN;
    }

    ret = DMX_OsiCloseChannel(ChanId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = DMX_OsiDestroyChannel(ChanId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    return HI_SUCCESS;
}

HI_S32 DMX_DRV_REC_DelAllRecPid(HI_U32 RecId)
{
    HI_S32          ret         = HI_SUCCESS;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo     = &DmxMgr->DmxRecInfo[RecId];
    DMX_ChanInfo_S *ChanInfo;
    HI_U32          i;


    CHECKDMXID(RecInfo->DmxId);

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        ChanInfo = &DmxMgr->DmxChanInfo[i];

        if ((RecInfo->DmxId == ChanInfo->DmxId) && (HI_UNF_DMX_CHAN_REC_EN == ChanInfo->ChanStatus))
        {
            ret = DMX_OsiCloseChannel(i);
            if (HI_SUCCESS != ret)
            {
                break;
            }

            ret = DMX_OsiDestroyChannel(i);
            if (HI_SUCCESS != ret)
            {
                break;
            }
        }
    }

    return ret;
}

HI_S32 DMX_DRV_REC_GetTsCnt(HI_U32 RecId,HI_U32* TSCnt)
{
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo     = &DmxMgr->DmxRecInfo[RecId];


    if (RecInfo->DmxId >= DMX_CNT)
    {
        return HI_ERR_DMX_INVALID_PARA;
    }

    *TSCnt = DmxHalGetOqCounter(RecInfo->RecOqId);
    return HI_SUCCESS;
}
HI_S32 DMX_DRV_REC_AddExcludeRecPid(HI_U32 RecId, HI_U32 Pid)
{
#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    HI_U32 i;
    HI_U32 tmpRecDmxID,tmpPid;
#endif

    if (Pid > DMX_INVALID_PID)
    {
        HI_ERR_DEMUX("Invalid pid 0x%x\n", Pid);

        return HI_ERR_DMX_INVALID_PARA;
    }

#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    for ( i = 0 ; i < DMX_REC_EXCLUDE_PID_NUM ; i++ )
    {
        DmxHalGetAllRecExcludePid(i,&tmpRecDmxID,&tmpPid);
        if ((tmpRecDmxID - 1) == RecId && tmpPid == Pid)
        {
            return HI_SUCCESS;//already added the pid
        }
    }

    for ( i = 0 ; i < DMX_REC_EXCLUDE_PID_NUM ; i++ )
    {
        DmxHalGetAllRecExcludePid(i,&tmpRecDmxID,&tmpPid);
        if (tmpRecDmxID == 0)
        {
            DmxHalSetAllRecExcludePid(i,RecId+1,Pid);
            return HI_SUCCESS;
        }
    }
    HI_ERR_DEMUX("no available exclude pid resource: 0x%x\n", Pid);
    return HI_ERR_DMX_NOAVAILABLE_EXCLUDEPID;
#else
    return HI_ERR_DMX_NOT_SUPPORT;
#endif
}

HI_S32 DMX_DRV_REC_DelExcludeRecPid(HI_U32 RecId, HI_U32 Pid)
{
#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    HI_U32 i;
    HI_U32 tmpRecDmxID,tmpPid;
#endif
    if (Pid > DMX_INVALID_PID)
    {
        HI_ERR_DEMUX("Invalid pid 0x%x\n", Pid);

        return HI_ERR_DMX_INVALID_PARA;
    }

#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    for ( i = 0 ; i < DMX_REC_EXCLUDE_PID_NUM ; i++ )
    {
        DmxHalGetAllRecExcludePid(i,&tmpRecDmxID,&tmpPid);
        if ((tmpRecDmxID - 1) == RecId && tmpPid == Pid)
        {
            DmxHalSetAllRecExcludePid(i,0,DMX_INVALID_PID);
            return HI_SUCCESS;
        }
    }
    return HI_SUCCESS;
#else
    return HI_ERR_DMX_NOT_SUPPORT;
#endif
}

HI_S32 DMX_DRV_REC_DelAllExcludeRecPid(HI_U32 RecId)
{
#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    HI_U32 i;
    HI_U32 tmpRecDmxID,tmpPid;
#endif

#ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    for ( i = 0 ; i < DMX_REC_EXCLUDE_PID_NUM ; i++ )
    {
        DmxHalGetAllRecExcludePid(i,&tmpRecDmxID,&tmpPid);
        if ((tmpRecDmxID - 1) == RecId)
        {
            DmxHalSetAllRecExcludePid(i,0,DMX_INVALID_PID);
        }
    }
    return HI_SUCCESS;
#else
    return HI_ERR_DMX_NOT_SUPPORT;
#endif
}

HI_S32 DMX_DRV_REC_StartRecChn(HI_U32 RecId)
{
    HI_S32          ret;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    HI_U32          i;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];

    CHECKDMXID(RecInfo->DmxId);
    CHECKPOINTER(FqInfo);

    if (DMX_REC_STATUS_START == RecInfo->RecStatus)
    {
        return HI_SUCCESS;
    }
	
#ifndef DMX_DATAINDEX_V1_SUPPORT
    BUG_ON(!list_empty(&RecInfo->head));
#endif

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &DmxMgr->DmxChanInfo[i];

        if (ChanInfo->DmxId == RecInfo->DmxId)
        {
            if (HI_UNF_DMX_CHAN_OUTPUT_MODE_REC & ChanInfo->ChanOutMode)
            {
                DmxHalSetChannelRecBufId(ChanInfo->ChanId, RecInfo->RecOqId);

                if ((ChanInfo->ChanPid == RecInfo->IndexPid) && (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType))
                {
                    /* get rid of POST mode from channel whatever */
                    DmxHalSetChannelTsPostMode(ChanInfo->ChanId, DMX_DISABLE);
                    
                    DmxHalSetSCDAttachChannel(RecInfo->ScdId, ChanInfo->ChanId);
                }
            }
        }
    }

    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType)
    {        
        DmxHalAllocSCDBufferId(RecInfo->ScdId, RecInfo->ScdOqId);
        DmxHalClrScdCnt(RecInfo->ScdId);
        DmxHalEnableEsSCD(RecInfo->ScdId);
        DmxHalEnablePesSCD(RecInfo->ScdId);

        if (HI_UNF_DMX_REC_INDEX_TYPE_VIDEO == RecInfo->IndexType)
        {
            HI_INFO_DEMUX("VCodecType=%d\n", RecInfo->VCodecType);

            if (HI_UNF_VCODEC_TYPE_MPEG2 == RecInfo->VCodecType)
            {
                DmxHalSetScdFilter(0, 0x00);
                DmxHalChooseScdFilter(RecInfo->ScdId, 0);

                DmxHalSetScdFilter(1, 0xb3);
                DmxHalChooseScdFilter(RecInfo->ScdId, 1);
            }
            else if (HI_UNF_VCODEC_TYPE_AVS == RecInfo->VCodecType)
            {
                DmxHalSetScdFilter(1, 0xb3);
                DmxHalChooseScdFilter(RecInfo->ScdId, 1);

                DmxHalSetScdFilter(2, 0xb6);
                DmxHalChooseScdFilter(RecInfo->ScdId, 2);

                DmxHalSetScdRangeFilter(0, 0xb1, 0xb0);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 0);
            }
            else if (HI_UNF_VCODEC_TYPE_MPEG4 == RecInfo->VCodecType)
            {
                DmxHalSetScdFilter(3, 0xb0);
                DmxHalChooseScdFilter(RecInfo->ScdId, 3);

                DmxHalSetScdRangeFilter(1, 0xb6, 0xb5);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 1);

                DmxHalSetScdRangeFilter(2, 0x2f, 0x00);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 2);
            }
            else if (HI_UNF_VCODEC_TYPE_H264 == RecInfo->VCodecType)
            {
            #ifndef DMX_SCD_NEW_FLT_SUPPORT
                DmxHalSetScdFilter(4, 0x01);
                DmxHalChooseScdFilter(RecInfo->ScdId, 4);

                DmxHalSetScdFilter(5, 0x05);
                DmxHalChooseScdFilter(RecInfo->ScdId, 5);

                DmxHalSetScdRangeFilter(3, 0x08, 0x07);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 3);

                DmxHalSetScdFilter(6, 0x11);
                DmxHalChooseScdFilter(RecInfo->ScdId, 6);

                DmxHalSetScdFilter(7, 0x15);
                DmxHalChooseScdFilter(RecInfo->ScdId, 7);

                DmxHalSetScdRangeFilter(4, 0x18, 0x17);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 4);

                DmxHalSetScdFilter(8, 0x21);
                DmxHalChooseScdFilter(RecInfo->ScdId, 8);

                DmxHalSetScdFilter(9, 0x25);
                DmxHalChooseScdFilter(RecInfo->ScdId, 9);

                DmxHalSetScdRangeFilter(5, 0x28, 0x27);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 5);

                DmxHalSetScdRangeFilter(6, 0x78, 0x31);
                DmxHalChooseScdRangeFilter(RecInfo->ScdId, 6);
            #else
                DmxHalSetScdNewRangeFilter(0, 0xFF, 0x79, 0xFF, HI_TRUE);
                DmxHalSetScdNewRangeFilter(1, 0x01, 0x01, 0x1F, HI_FALSE);
                DmxHalSetScdNewRangeFilter(2, 0x05, 0x05, 0x1F, HI_FALSE);
                DmxHalSetScdNewRangeFilter(3, 0x08, 0x07, 0x1F, HI_FALSE);

                DmxHalChooseScdNewRangeFilter(RecInfo->ScdId, 0);
                DmxHalChooseScdNewRangeFilter(RecInfo->ScdId, 1);
                DmxHalChooseScdNewRangeFilter(RecInfo->ScdId, 2);
                DmxHalChooseScdNewRangeFilter(RecInfo->ScdId, 3);
            #endif
            }
        }

        DmxFqStart(RecInfo->ScdFqId);
        DmxOqStart(RecInfo->ScdOqId);
    }

    if (HI_UNF_DMX_REC_TYPE_ALL_PID == RecInfo->RecType)
    {
        DmxHalSetRecType(RecInfo->DmxId, DMX_REC_TYPE_ALL_TS);
        #ifdef DMX_REC_EXCLUDE_PID_SUPPORT
        DmxHalEnableAllRecExcludePid(RecInfo->DmxId);
        #endif
    }
    else
    {
        if (RecInfo->Descramed)
        {
            DmxHalSetRecType(RecInfo->DmxId, DMX_REC_TYPE_DESCRAM_TS);
        }
        else
        {
            DmxHalSetRecType(RecInfo->DmxId, DMX_REC_TYPE_SCRAM_TS);
        }
    }

    DmxHalSetRecTsCounter(RecInfo->DmxId, RecInfo->RecOqId);
    DmxHalSetRecTsCntReplace(RecInfo->DmxId);
    DmxHalSetSpsPauseType(RecInfo->DmxId, DMX_ENABLE);

    DmxHalSetTsRecBufId(RecInfo->DmxId, RecInfo->RecOqId);

    DmxFqStart(RecInfo->RecFqId);
    DmxOqStart(RecInfo->RecOqId);

    ret = down_interruptible(&RecInfo->LockRec);
    RecInfo->FirstFrameMs   = 0;
    RecInfo->AddUpMs        = 0;
    RecInfo->RecStatus      = DMX_REC_STATUS_START;
    RecInfo->ScrambleDetectTime = 0;
    RecInfo->ScrambleDetectOffset = 0;
    RecInfo->ClearDetectTime = 0;
    RecInfo->ScrambleDetectCnt = 0;
    RecInfo->ClearDetectCnt = 0;
    RecInfo->bSCDBufIsEmpty = HI_TRUE;
#ifndef DMX_DATAINDEX_V1_SUPPORT
    RecInfo->PrevFrameEndAddr = 0;
    RecInfo->BlockStartAddr = FqInfo->u32BufPhyAddr;
    RecInfo->RemIdxCnt = 0;
#else
    RecInfo->RecBufReadPhyAddr = FqInfo->u32BufPhyAddr;
#endif

    memset(&RecInfo->LastFrameInfo, 0, sizeof(HI_UNF_DMX_REC_INDEX_S));
    up(&RecInfo->LockRec);

    return HI_SUCCESS;
}

HI_S32 DMX_DRV_REC_StopRecChn(HI_U32 RecId)
{
    HI_S32          ret;
    DMX_DEV_OSI_S  *DmxMgr      = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo     = &DmxMgr->DmxRecInfo[RecId];
    DMX_OQ_Info_S  *RecOqInfo   = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];
#ifndef DMX_DATAINDEX_V1_SUPPORT	
    Dmx_Rec_Data_Index_Helper *Entry, *Tmp;
#endif

    CHECKDMXID(RecInfo->DmxId);

    if (DMX_REC_STATUS_STOP == RecInfo->RecStatus)
    {
        return HI_SUCCESS;
    }

    ret = down_interruptible(&RecInfo->LockRec);
    RecInfo->RecStatus = DMX_REC_STATUS_STOP;
    up(&RecInfo->LockRec);

    RecOqInfo->OqWakeUp = HI_TRUE;

    wake_up_interruptible(&RecOqInfo->OqWaitQueue);

    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType)
    {
        DMX_OQ_Info_S  *ScdOqInfo = &DmxMgr->DmxOqInfo[RecInfo->ScdOqId];

        ScdOqInfo->OqWakeUp = HI_TRUE;

        wake_up_interruptible(&ScdOqInfo->OqWaitQueue);

        DmxFqStop(RecInfo->ScdFqId);
        DmxOqStop(RecInfo->ScdOqId);

        DmxHalDisableEsSCD(RecInfo->ScdId);
        DmxHalDisablePesSCD(RecInfo->ScdId);

        DmxHalScdFilterClear(RecInfo->ScdId);
        DmxHalScdRangeFilterClear(RecInfo->ScdId);
        DmxHalScdNewRangeFilterClear(RecInfo->ScdId);

        DmxHalSetSCDAttachChannel(RecInfo->ScdId, DMX_REC_SCD_INVALID_CHANNEL);
    }

    DmxFqStop(RecInfo->RecFqId);
    DmxOqStop(RecInfo->RecOqId);

    DmxRecFlush(RecId);
    DmxHalSetRecType(RecInfo->DmxId, DMX_REC_TYPE_NONE);
    #ifdef DMX_REC_EXCLUDE_PID_SUPPORT
    if (HI_UNF_DMX_REC_TYPE_ALL_PID == RecInfo->RecType)
    {
        DmxHalDisableAllRecExcludePid(RecInfo->DmxId);
    }
    #endif

#ifndef DMX_DATAINDEX_V1_SUPPORT
    /* remove remain rec data&idx */
    RecInfo->RemIdxCnt = 0; 
    list_for_each_entry_safe(Entry, Tmp, &RecInfo->head, list)
    {
        list_del(&Entry->list);
        HI_KFREE(HI_ID_DEMUX, Entry);
    }
#endif
    return HI_SUCCESS;
}

HI_S32 DMX_DRV_REC_AcquireRecData(HI_U32 RecId, HI_U32 *PhyAddr, HI_U32 *KerAddr, HI_U32 *Len, HI_U32 Timeout)
{
    HI_S32          ret;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = HI_NULL;
    DMX_OQ_Info_S  *OqInfo  = HI_NULL;
    HI_U32          Read;
    HI_U32          Write;

    CHECKDMXID(RecInfo->DmxId);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];

    DMXOsiOQGetReadWrite(OqInfo->u32OQId, &Write, &Read);

    if (Read == Write)
    {
        if (0 == Timeout)
        {
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }

        DmxHalOQEnableOutputInt(OqInfo->u32OQId, HI_TRUE);

        OqInfo->OqWakeUp = HI_FALSE;

        ret = wait_event_interruptible_timeout(OqInfo->OqWaitQueue, OqInfo->OqWakeUp, msecs_to_jiffies(Timeout));
        if (!OqInfo->OqWakeUp)
        {
            DmxHalOQEnableOutputInt(OqInfo->u32OQId, HI_FALSE);

            return HI_ERR_DMX_TIMEOUT;
        }

        OqInfo->OqWakeUp = HI_FALSE;

        DMXOsiOQGetReadWrite(OqInfo->u32OQId, &Write, &Read);
    }

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }

    if (Read != Write)
    {
        HI_U32          CurrBlock   = OqInfo->u32OQVirAddr + Read* DMX_OQ_DESC_SIZE;
        OQ_DescInfo_S  *OqDesc      = (OQ_DescInfo_S*)CurrBlock;
        HI_U32          StartAddr   = OqDesc->start_addr;
        HI_U32          DataLen     = OqDesc->pvrctrl_datalen & 0xffff;

        OqInfo->u32ProcsBlk = Read + 1;
        if (OqInfo->u32ProcsBlk >= OqInfo->u32OQDepth)
        {
            OqInfo->u32ProcsBlk = 0;
        }

        *PhyAddr    = StartAddr;
        *KerAddr    = FqInfo->u32BufVirAddr + (StartAddr - FqInfo->u32BufPhyAddr);
        *Len        = DataLen;

        return HI_SUCCESS;
    }

    return HI_ERR_DMX_TIMEOUT;
}

HI_S32 DMX_DRV_REC_ReleaseRecData(HI_U32 RecId, HI_U32 PhyAddr, HI_U32 Len)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];

    CHECKDMXID(RecInfo->DmxId);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        HI_ERR_DEMUX("start rec channel first!");
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    return DmxOQRelease(RecInfo->RecFqId, RecInfo->RecOqId, PhyAddr, Len);
}

#ifndef DMX_DATAINDEX_V1_SUPPORT
static HI_S32 DMX_GetRecDataIndex(HI_U32 RecId)
{
    HI_S32 ret = HI_FAILURE;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    HI_UNF_DMX_REC_INDEX_S *NewRecIndex = HI_NULL;
    HI_UNF_DMX_REC_DATA_S  *NewRecData = HI_NULL;
    HI_U32 NewFrameStartAddr, NewFrameEndAddr;  /* buffer inner addr */
    Dmx_Rec_Data_Index_Helper *helper;

    helper = HI_KMALLOC(HI_ID_DEMUX, sizeof(Dmx_Rec_Data_Index_Helper), GFP_KERNEL);
    if (unlikely(!helper))
    {
        HI_ERR_DEMUX("malloc rec data&idx helper failed.\n");
        ret = HI_ERR_DMX_ALLOC_MEM_FAILED;
        goto out0;
    }

    memset(helper, sizeof(Dmx_Rec_Data_Index_Helper), 0);

    INIT_LIST_HEAD(&helper->list);
    NewRecData = &helper->data[0];
    NewRecIndex = &helper->index;
    
    ret = DMX_DRV_REC_AcquireRecIndex(RecId, NewRecIndex, 0);
    if (HI_SUCCESS == ret)
    {
        HI_U64 u64FrameGlobalOffset = NewRecIndex->u64GlobalOffset;

        NewFrameStartAddr = FqInfo->u32BufPhyAddr + do_div(u64FrameGlobalOffset, (HI_U64)FqInfo->u32BufSize);
        NewFrameEndAddr = NewFrameStartAddr + NewRecIndex->u32FrameSize; 
			
        /* drop exception frame by simple rule. */
        if (unlikely(NewRecIndex->u32FrameSize >= FqInfo->u32BufSize || 0 == NewRecIndex->u32FrameSize))
        {
            HI_ERR_DEMUX("Drop exception frame(0x%x, 0x%x), fq(0x%x, 0x%x).\n", NewFrameStartAddr, NewRecIndex->u32FrameSize, 
                                        FqInfo->u32BufPhyAddr, FqInfo->u32BufSize);
            
            /* keep ret = success. */
            goto out1;
        }
		
        /* skip verify first frame because it has no prev frame. */
        if (0 != RecInfo->PrevFrameEndAddr)
        {            
            /* in general, the phy address of adjacent frame is continuous, but this rule maybe broken by unstable stream(such as , weak signal). */
            if (unlikely(NewFrameStartAddr != RecInfo->PrevFrameEndAddr))
            {
                HI_U32 Distance = NewFrameStartAddr > RecInfo->PrevFrameEndAddr ? 
                    NewFrameStartAddr - RecInfo->PrevFrameEndAddr : NewFrameStartAddr + FqInfo->u32BufSize - RecInfo->PrevFrameEndAddr;
                
                HI_WARN_DEMUX("Found discontinue(%d) frame data!\n", Distance);
            }
        }

        /* rewind frame */
        if ( NewFrameEndAddr > FqInfo->u32BufPhyAddr + FqInfo->u32BufSize)
        {
            HI_UNF_DMX_REC_DATA_S *NewRecData_2 = &helper->data[1];
            
            /* slice 1 */
            NewRecData->u32DataPhyAddr = NewFrameStartAddr;
            NewRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + NewRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr );
            NewRecData->u32Len = FqInfo->u32BufPhyAddr + FqInfo->u32BufSize - NewRecData->u32DataPhyAddr;

            /* slice 2 */
            NewRecData_2->u32DataPhyAddr = FqInfo->u32BufPhyAddr;
            NewRecData_2->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + NewRecData_2->u32DataPhyAddr - FqInfo->u32BufPhyAddr );
            NewRecData_2->u32Len = NewRecIndex->u32FrameSize - NewRecData->u32Len;

            helper->Rewind = HI_TRUE;
            helper->DataSel = 0;

            /* save and adjust frame end addr */
            RecInfo->PrevFrameEndAddr = NewRecData_2->u32DataPhyAddr + NewRecData_2->u32Len;
            RecInfo->PrevFrameEndAddr = (RecInfo->PrevFrameEndAddr == FqInfo->u32BufPhyAddr + FqInfo->u32BufSize) ?
                                                                FqInfo->u32BufPhyAddr : RecInfo->PrevFrameEndAddr;
        }
        else
        {      
            NewRecData->u32DataPhyAddr = NewFrameStartAddr;
            NewRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + NewRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr );
            NewRecData->u32Len = NewRecIndex->u32FrameSize;

            helper->Rewind = HI_FALSE;
            helper->DataSel = 0;
            
            /* save and adjust frame end addr */
            RecInfo->PrevFrameEndAddr = NewFrameEndAddr;
            RecInfo->PrevFrameEndAddr = (RecInfo->PrevFrameEndAddr == FqInfo->u32BufPhyAddr + FqInfo->u32BufSize) ?
                                                                FqInfo->u32BufPhyAddr : RecInfo->PrevFrameEndAddr;
        }

        list_add_tail(&helper->list, &RecInfo->head);
    }
    else
    {
        goto out1;
    }
    
    return HI_SUCCESS;
    
out1:
    HI_KFREE(HI_ID_DEMUX, helper);
out0:
    return ret;
}

static HI_VOID DMX_NewNoRewindFrame(DMX_RecInfo_S  *RecInfo, Dmx_Rec_Data_Index_Helper *Entry)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    HI_UNF_DMX_REC_DATA_S  *RemRecData = &RecInfo->RemRecData; 
    HI_UNF_DMX_REC_INDEX_S *RemRecIdx = HI_NULL; 

    /* data locate at before block */
    if (unlikely(RecInfo->BlockStartAddr >= Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len))
    {
        RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
        RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
        RemRecData->u32Len = FqInfo->u32BlockSize; 
    }
    else /* data locate at after block */
    {
        /* this frame bigger than block */
        if (Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr > FqInfo->u32BlockSize)
        {
            RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
            RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
            RemRecData->u32Len = FqInfo->u32BlockSize; 
        }
        else
        {
            RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
            RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
            RemRecData->u32Len = Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr; 

            BUG_ON(RemRecData->u32Len > FqInfo->u32BlockSize);

            RemRecIdx = &RecInfo->RemRecIdx[RecInfo->RemIdxCnt ++];
            memcpy(RemRecIdx, &Entry->index, sizeof(HI_UNF_DMX_REC_INDEX_S));

            list_del(&Entry->list);

            HI_KFREE(HI_ID_DEMUX, Entry);
        }
    }
}

static HI_VOID DMX_NewRewindFrame(DMX_RecInfo_S  *RecInfo, Dmx_Rec_Data_Index_Helper *Entry)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    HI_UNF_DMX_REC_DATA_S  *RemRecData = &RecInfo->RemRecData; 
    HI_UNF_DMX_REC_INDEX_S *RemRecIdx = HI_NULL; 

    if (0 == Entry->DataSel)  /* slice 1*/
    {
        BUG_ON(RecInfo->BlockStartAddr >= Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len);

        if (Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr >= FqInfo->u32BlockSize)
        {
            RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
            RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
            RemRecData->u32Len = FqInfo->u32BlockSize; 

            /* last block properly */
            if (RemRecData->u32DataPhyAddr + RemRecData->u32Len == FqInfo->u32BufPhyAddr + FqInfo->u32BufSize)
            {
                Entry->DataSel = 1;
            }
        }
        else
        {
            BUG();
        }
    }
    else /* slice 2*/
    {
        BUG_ON(RecInfo->BlockStartAddr >= Entry->data[1].u32DataPhyAddr + Entry->data[1].u32Len);

        /* this frame bigger than block */
        if (Entry->data[1].u32DataPhyAddr + Entry->data[1].u32Len - RecInfo->BlockStartAddr > FqInfo->u32BlockSize)
        {
            RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
            RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
            RemRecData->u32Len = FqInfo->u32BlockSize;
        }
        else
        {
            RemRecData->u32DataPhyAddr = RecInfo->BlockStartAddr;
            RemRecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RemRecData->u32DataPhyAddr - FqInfo->u32BufPhyAddr);
            RemRecData->u32Len = Entry->data[1].u32DataPhyAddr + Entry->data[1].u32Len - RecInfo->BlockStartAddr;

            BUG_ON(RemRecData->u32Len > FqInfo->u32BlockSize);

            RemRecIdx = &RecInfo->RemRecIdx[RecInfo->RemIdxCnt ++];
            memcpy(RemRecIdx, &Entry->index, sizeof(HI_UNF_DMX_REC_INDEX_S));

            list_del(&Entry->list);

            HI_KFREE(HI_ID_DEMUX, Entry);
        }
    }
}

static HI_VOID DMX_AppendNoRewindFrame(DMX_RecInfo_S  *RecInfo, Dmx_Rec_Data_Index_Helper *Entry)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    HI_UNF_DMX_REC_DATA_S  *RemRecData = &RecInfo->RemRecData; 
    HI_UNF_DMX_REC_INDEX_S *RemRecIdx = HI_NULL; 

    /* data locate at before block */
    if (unlikely(RecInfo->BlockStartAddr >= Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len))
    {
        RemRecData->u32Len = FqInfo->u32BlockSize; 
    }
    else /* data locate at after block */
    {
        /* this frame bigger than block */
        if (Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr > FqInfo->u32BlockSize)
        {
            RemRecData->u32Len = FqInfo->u32BlockSize; 
        }
        else
        {
            RemRecData->u32Len = Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr; 

            BUG_ON(RemRecData->u32Len > FqInfo->u32BlockSize);

            RemRecIdx = &RecInfo->RemRecIdx[RecInfo->RemIdxCnt ++];
            memcpy(RemRecIdx, &Entry->index, sizeof(HI_UNF_DMX_REC_INDEX_S));

            list_del(&Entry->list);

            HI_KFREE(HI_ID_DEMUX, Entry);
        }
    }
}

static HI_VOID DMX_AppendRewindFrame(DMX_RecInfo_S  *RecInfo, Dmx_Rec_Data_Index_Helper *Entry)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    HI_UNF_DMX_REC_DATA_S  *RemRecData = &RecInfo->RemRecData; 

    if (0 == Entry->DataSel)  /* slice 1*/
    {
        BUG_ON(RecInfo->BlockStartAddr >= Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len);

        if (Entry->data[0].u32DataPhyAddr + Entry->data[0].u32Len - RecInfo->BlockStartAddr >= FqInfo->u32BlockSize)
        {
            RemRecData->u32Len = FqInfo->u32BlockSize; 

            /* last block properly */
            if (RemRecData->u32DataPhyAddr + RemRecData->u32Len == FqInfo->u32BufPhyAddr + FqInfo->u32BufSize)
            {
                Entry->DataSel = 1;
            }
        }
        else
        {
            BUG();
        }
    }
    else /* slice 2 */
    {
        /* refer to DMX_NewRewindFrame slice 2 */
        BUG();     
    }
}

static HI_S32 DMX_AcquireRecDataIndex(HI_U32 RecId, HI_UNF_DMX_REC_DATA_INDEX_S *pstRecDataIdx)
{
    HI_S32 ret = HI_FAILURE;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    DMX_OQ_Info_S  *OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];
    HI_UNF_DMX_REC_DATA_S  *RemRecData = &RecInfo->RemRecData; 

    BUG_ON((RecInfo->BlockStartAddr - FqInfo->u32BufPhyAddr) % FqInfo->u32BlockSize);
 
    if (0 == RecInfo->RemIdxCnt)
    {
        memset(RemRecData, 0, sizeof(HI_UNF_DMX_REC_DATA_S));
    }

    while(RemRecData->u32Len < FqInfo->u32BlockSize)
    {        
        if (!list_empty(&RecInfo->head))
        {
            Dmx_Rec_Data_Index_Helper *Entry = list_first_entry(&RecInfo->head, Dmx_Rec_Data_Index_Helper, list);

            /* new */
            if (0 == RecInfo->RemIdxCnt)
            {
                if (HI_FALSE == Entry->Rewind)
                {
                    DMX_NewNoRewindFrame(RecInfo, Entry);
                }
                else /* rewind frame */
                {
                    DMX_NewRewindFrame(RecInfo, Entry);
                }
            }
            else if (RecInfo->RemIdxCnt < DMX_MAX_IDX_ACQUIRED_EACH_TIME) /* append */
            {
                if (HI_FALSE == Entry->Rewind)
                {
                    DMX_AppendNoRewindFrame(RecInfo, Entry);
                }
                else /* rewind frame */
                {
                    DMX_AppendRewindFrame(RecInfo, Entry);
                }
            }
            else
            {
                BUG();
            }
        }
        else /* there is no available index now in list */
        {
            /* almost overflow maybe clear and disabled in ISR, so we always enable it here. */
            DmxFqCheckOverflowInt(RecInfo->RecFqId); 
            if (unlikely(FqInfo->FqOverflowCount))
            {
                HI_ERR_DEMUX("Rec Buf(%d) Data overflowed.\n", RecInfo->RecFqId);   
                ret = HI_ERR_DMX_OVERFLOW_BUFFER;
                break;
            }
    
            ret = DMX_GetRecDataIndex(RecId);
            if (HI_SUCCESS != ret)
            {
                ret = HI_ERR_DMX_NOAVAILABLE_DATA;
                break;
            }
        }
    }  

    /* duplicate rec data and index  */
    if (RemRecData->u32Len == FqInfo->u32BlockSize)
    {
        pstRecDataIdx->u32RecDataCnt = 1;
        pstRecDataIdx->u32IdxNum = RecInfo->RemIdxCnt;
        
        memcpy(&pstRecDataIdx->stRecData[0], RemRecData, sizeof(HI_UNF_DMX_REC_DATA_S));

        if (sizeof(HI_UNF_DMX_REC_INDEX_S) * RecInfo->RemIdxCnt <= sizeof(RecInfo->RemRecIdx))
        {
            memcpy(&pstRecDataIdx->stIndex[0], &RecInfo->RemRecIdx[0], sizeof(HI_UNF_DMX_REC_INDEX_S) * RecInfo->RemIdxCnt);
        }
        else
        {
            BUG();
        }
        
        RecInfo->BlockStartAddr = RemRecData->u32DataPhyAddr + RemRecData->u32Len;

        OqInfo->u32ProcsBlk = (RecInfo->BlockStartAddr - FqInfo->u32BufPhyAddr)/FqInfo->u32BlockSize; 

        /* rewind buffer if possible */
        RecInfo->BlockStartAddr = (RecInfo->BlockStartAddr == FqInfo->u32BufPhyAddr + FqInfo->u32BufSize) ? 
                                                FqInfo->u32BufPhyAddr : RecInfo->BlockStartAddr ;
        RecInfo->RemIdxCnt = 0;

        ret = HI_SUCCESS;
    }
    
    return ret;
}

HI_S32 DMX_DRV_REC_AcquireRecDataIndex(HI_U32 RecId, HI_UNF_DMX_REC_DATA_INDEX_S *pstRecDataIdx)
{
    HI_S32 ret = HI_FAILURE;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];

    CHECKDMXID(RecInfo->DmxId);
    CHECKPOINTER(pstRecDataIdx);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        HI_ERR_DEMUX("start rec channel first!");
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    memset(pstRecDataIdx, 0x0, sizeof(HI_UNF_DMX_REC_DATA_INDEX_S));

    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE == RecInfo->IndexType)
    {
        HI_U32 KerAddr = 0;
        HI_UNF_DMX_REC_DATA_S  *RecData  = &pstRecDataIdx->stRecData[0];       
        
        ret = DMX_DRV_REC_AcquireRecData(RecId, &RecData->u32DataPhyAddr, &KerAddr, &RecData->u32Len, 0);
        if ( HI_SUCCESS ==  ret)
        {
            pstRecDataIdx->u32IdxNum = 0;
            pstRecDataIdx->u32RecDataCnt = 1;
        }
    }
    else
    {
        ret = DMX_AcquireRecDataIndex(RecId, pstRecDataIdx);
    }

    return ret;  
}

HI_S32 DMX_DRV_REC_ReleaseRecDataIndex(HI_U32 RecId, HI_UNF_DMX_REC_DATA_INDEX_S *pstRecDataIdx)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = HI_NULL;
    DMX_OQ_Info_S  *OqInfo  = HI_NULL;
    OQ_DescInfo_S  *OqDesc;
    HI_U32 OqRead = 0;
    HI_U32 index;

    CHECKDMXID(RecInfo->DmxId);
    CHECKPOINTER(pstRecDataIdx);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        HI_ERR_DEMUX("start rec channel first!");
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];

    if (DMX_OQ_MODE_REC != OqInfo->enOQBufMode)
    {
        return HI_ERR_DMX_INVALID_PARA;
    }

    BUG_ON(pstRecDataIdx->u32RecDataCnt > 2);

    for (index = 0; index < pstRecDataIdx->u32RecDataCnt; index ++)
    {
        HI_UNF_DMX_REC_DATA_S  *RecData = &pstRecDataIdx->stRecData[index];
        HI_U32 RelBlkAddr = RecData->u32DataPhyAddr;

        while(RelBlkAddr < RecData->u32DataPhyAddr + RecData->u32Len)
        {
            DMXOsiOQGetReadWrite(OqInfo->u32OQId, HI_NULL, &OqRead);

            OqDesc = (OQ_DescInfo_S*)(OqInfo->u32OQVirAddr + OqRead * DMX_OQ_DESC_SIZE);

            if ((RelBlkAddr != OqDesc->start_addr) || ((OqDesc->pvrctrl_datalen & 0xffff) != FqInfo->u32BlockSize))
            {
                HI_ERR_DEMUX("Release block(0x%x) failed, current oq desc(0x%x, 0x%x)!\n", RelBlkAddr, OqDesc->start_addr, (OqDesc->pvrctrl_datalen & 0xffff));

                return HI_ERR_DMX_INVALID_PARA;
            }    

            /* only release one blk one time. */
            DmxOQReleaseByBlockCnt(RecInfo->RecFqId, OqInfo->u32OQId, 1);

            RelBlkAddr += FqInfo->u32BlockSize;
        }
    }
    
    return HI_SUCCESS;   
}
#else
HI_S32 DMX_DRV_REC_AcquireRecDataIndex(HI_U32 RecId, HI_UNF_DMX_REC_DATA_INDEX_S *pstRecDataIdx)
{

    HI_S32          ret = HI_SUCCESS;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = HI_NULL;
    DMX_OQ_Info_S  *OqInfo  = HI_NULL;
    HI_U32          Read;
    HI_U32          Write;
    HI_UNF_DMX_REC_INDEX_S *RecIndex = NULL;
    HI_UNF_DMX_REC_DATA_S  *RecData = NULL;
    HI_U32          IdxPointAddr = 0; /*最后一个获取到的idx指向的 录制数据的结束地址*/    
    HI_U32          TmpIdxPointAddr = 0;
    HI_U32          RecBufPhyAddr = 0;
    HI_U32          RecBufSize = 0;
    HI_U64          u64IdxGolbalOffset = 0;
    HI_U32          EndToAdd = 0;
    HI_U32          AllignLen = 752; /*TS and Cipher Align, so should be times of 188 and 16 ,it is 752*/
    HI_U32          Timeout = 0;
    HI_U32          Count = 0;
    
    CHECKDMXID(RecInfo->DmxId);
    CHECKPOINTER(pstRecDataIdx);
    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    memset(pstRecDataIdx,0x0,sizeof(HI_UNF_DMX_REC_DATA_INDEX_S));

    /*if is allts recording*/
    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE == RecInfo->IndexType)
    {
        HI_U32 KerAddr = 0;
        RecData  = &pstRecDataIdx->stRecData[0];       
        ret = DMX_DRV_REC_AcquireRecData(RecId, &RecData->u32DataPhyAddr, &KerAddr, &RecData->u32Len, 0);
        if ( HI_SUCCESS ==  ret)
        {
            pstRecDataIdx->u32IdxNum = 0;
            pstRecDataIdx->u32RecDataCnt = 1;
        }
        return ret;
    }

    //==== attentain, if is allts recording ,will not use the following code.

    if ( RecInfo->enRecTimeStamp >= DMX_REC_TIMESTAMP_ZERO)
    {
        AllignLen = 192 * 4; /*TS and Cipher Align, so should be times of 192 and 16 */
    }

    FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];

    RecBufPhyAddr   = FqInfo->u32BufPhyAddr; 
    RecBufSize      = FqInfo->u32BufSize; 

    
    
    RecIndex = &pstRecDataIdx->stIndex[0];   
    IdxPointAddr = RecInfo->RecBufReadPhyAddr;
    RecData  = &pstRecDataIdx->stRecData[0];
    memset(RecData,0x0,sizeof(HI_UNF_DMX_REC_DATA_S));
    RecData->u32DataPhyAddr = RecInfo->RecBufReadPhyAddr;
    RecData->pDataAddr = (HI_U8  *)(FqInfo->u32BufVirAddr + RecData->u32DataPhyAddr - RecBufPhyAddr );

    /*Attention:
    1. If rec ts OQ overflow, both rec ts and idx will loss.
    2. If rec idx OQ overflow, only rec idx will loss, rec ts will continue generate untill the rec ts OQ itself overflow*/

    while ( 1 )
    {
        Count++;
        if ( Count >=  1000)
        {
            HI_ERR_DEMUX("#####get idx cycle time more than 1000, error!\n");
            Count = 0;
            break;
        }
        /*如果录制数据已经少于一个完整的 block 了，则，返回无数据*/
        DMXOsiOQGetReadWrite(OqInfo->u32OQId, &Write, &Read);
        if ( Write == Read)
        {
            break;
        }

        if ( pstRecDataIdx->u32IdxNum >= DMX_MAX_IDX_ACQUIRED_EACH_TIME )
        {
            break;
        }
            
        ret = DMX_DRV_REC_AcquireRecIndex(RecId, RecIndex, Timeout);
        if ( HI_SUCCESS == ret )
        {
            if ( RecIndex->u32FrameSize >=  RecBufSize)
            {
                HI_ERR_DEMUX("############ a  big frame size (0x%x) come ,this must be some things error! drop it!",RecIndex->u32FrameSize);
                continue;
            }
            Timeout = 0;
            pstRecDataIdx->u32IdxNum++; 
            if ( pstRecDataIdx->u32RecDataCnt == 0 )
            {
                pstRecDataIdx->u32RecDataCnt = 1;
            }
            
            u64IdxGolbalOffset = RecIndex->u64GlobalOffset;
            TmpIdxPointAddr = IdxPointAddr;
            /*do_div(x,y) will changes x ,so we use tmp u64IdxGolbalOffset*/
            IdxPointAddr = RecBufPhyAddr + (do_div(u64IdxGolbalOffset,(HI_U64)RecBufSize) + RecIndex->u32FrameSize); 
            //HI_ERR_DEMUX("gf:0x%llx,IP:0x%x,L:0x%x,DA:0x%x,B:0x%x,BL:0x%x\n",RecIndex->u64GlobalOffset,IdxPointAddr,RecIndex->u32FrameSize,RecData->u32DataPhyAddr,RecBufPhyAddr,RecBufSize);
                      
            /*如果某此获取到得idx 的结束地址，小于上一次读取的录制数据的结束地址,有两种情况可能造成这个现象*/
            if(IdxPointAddr < RecData->u32DataPhyAddr)
            {

                
                /*情况1: 如果某一次 获取到的idx 指向的录制数据的结束地址 小于 上一次获取到的录制数据的结束地址 超过 752字节，认为是发生了 回绕
                这是一种很热数的情况，触发这种异常的条件:
                a. 只有在 RecIndex->u64GlobalOffset + RecIndex->u32FrameSize 不等于下一个 RecIndex->u64GlobalOffset 的情况下才会发生
                b. 而且发生 u64GlobalOffset 不连续的点，在 上一个索引刚好非常接近 录制buffer 尾部的时候*/
                if ( IdxPointAddr +  AllignLen < RecData->u32DataPhyAddr)
                {
                    //printk("#######warning: IP:0x%x, DA:0x%x, Buffer[0x%x,0x%x]\n",IdxPointAddr,RecData->u32DataPhyAddr,RecBufPhyAddr,RecBufPhyAddr+RecBufSize);
                    goto DATA_OVER_BUFFER;
                }

                /*情况2: 是由于对录制数据长度进行 752 字节对齐引起的，可能某个时候获取到的索引指向的录制数据刚好在 这个对齐所增加的字节 (理论最大值752BYTE) 内部，
                则会发生 当前获取到的idx 指向的录制数据小于上一次获取到的录制数据的结束地址。 
                针对这种情况，需要继续读取 idx ，直到大于为止。 如果连续再读取3S 都还是不满足，认为发生了异常*/
                Timeout = 500;
                continue;
            }
            
            else if ( IdxPointAddr > RecBufPhyAddr + RecBufSize )
            {
                
                /*if last time read data end address is the rec buf end address ,means this time should start from the StartAddress of rec buf*/
                if ( RecData->u32DataPhyAddr  ==  RecBufPhyAddr + RecBufSize)
                {
                    RecData->u32DataPhyAddr = RecBufPhyAddr;
                    IdxPointAddr -= RecBufSize; 
                }
                /* Situation of Rec data part in end of RecBuf and Part in Start of RecBuf.*/
                else
                {
DATA_OVER_BUFFER:
                    if(pstRecDataIdx->u32RecDataCnt < 2)
                    {                   
                        pstRecDataIdx->u32RecDataCnt = 2;
                        RecData->u32Len = RecBufPhyAddr + RecBufSize - RecData->u32DataPhyAddr ;  
                        if ( RecData->u32Len%AllignLen != 0  )
                        {
                            HI_ERR_DEMUX("+RecData->u32Len:0x%x is not Alligned by 188 and 16, S:0x%x,L:0x%x,P:0x%x\n",RecData->u32Len,RecBufPhyAddr,RecBufSize,RecData->u32DataPhyAddr);
                        }

                        if ( RecData->u32Len == 0)
                        {
                            HI_ERR_DEMUX("RecData->u32Len == 0 is error!!\n");
                        }
                        
                        RecData++;
                        memset(RecData,0x0,sizeof(HI_UNF_DMX_REC_DATA_S));
                        RecData->u32DataPhyAddr = RecBufPhyAddr;
                        RecData->pDataAddr = (HI_U8  *)FqInfo->u32BufVirAddr;
                        if (IdxPointAddr > RecBufPhyAddr + RecBufSize   ) //加上这个if 是为了照顾 下面的异常情况进入此处的情况
                        {
                            IdxPointAddr -= RecBufSize;
                            
                        }
                    }
                    else
                    {
                        IdxPointAddr = RecBufPhyAddr + RecBufSize;
                        HI_ERR_DEMUX("Acquire too much data one time ,error!,IP - 0x%x\n",IdxPointAddr);
                        return  HI_ERR_DMX_REC_BUFNOTMATCH;
                    }
                }             
            }
            RecIndex++; 
            continue;
        }
        else
        {
            if(IdxPointAddr < RecData->u32DataPhyAddr)
            {
                HI_ERR_DEMUX("Error!!!!!!!!!:IP(0x%x) < DA(0x%x)\n",IdxPointAddr,RecData->u32DataPhyAddr);
            }
            break;           
        }        
    }

    if (pstRecDataIdx->u32IdxNum > 0)
    {
        RecData->u32Len = IdxPointAddr - RecData->u32DataPhyAddr;
        /*Allgin with TS packet len*/
        EndToAdd = AllignLen - (HI_U32)(RecData->u32Len % AllignLen); 
        RecData->u32Len += EndToAdd;
        IdxPointAddr += EndToAdd;        

        /*This is impossible !*/
        if(IdxPointAddr > RecBufPhyAddr + RecBufSize)
        {
            HI_ERR_DEMUX("Error!:IdxPointAddr(0x%x) > RecBufPhyAddr(0x%x) + RecBufSize(0x%x)\n",IdxPointAddr,RecBufPhyAddr,RecBufSize);
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }

        if ( RecData->u32Len%AllignLen != 0  )
        {
            HI_ERR_DEMUX("RecData->u32Len:0x%x is not Alligned by 188 and 16, S:0x%x,L:0x%x\n",RecData->u32Len,RecBufPhyAddr,RecBufSize);
        }
                
        if ( RecData->u32Len == 0)
        {
            HI_ERR_DEMUX("RecData->u32Len == 0 is error!!\n");
        }

        RecInfo->RecBufReadPhyAddr = IdxPointAddr;
        OqInfo->u32ProcsBlk = (RecInfo->RecBufReadPhyAddr - RecBufPhyAddr)/FqInfo->u32BlockSize; // 向下取整
        //HI_ERR_DEMUX("out ,IP:0x%x,DA:0x%x\n",IdxPointAddr,RecInfo->RecBufReadPhyAddr);
        return HI_SUCCESS;
    }
    else
    {
        pstRecDataIdx->u32IdxNum = 0;
        pstRecDataIdx->u32RecDataCnt = 0;
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }
}

HI_S32 DMX_DRV_REC_ReleaseRecDataIndex(HI_U32 RecId, HI_UNF_DMX_REC_DATA_INDEX_S *pstRecDataIdx)
{
    HI_S32 ret ;
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = HI_NULL;
    DMX_OQ_Info_S  *OqInfo  = HI_NULL;
    HI_UNF_DMX_REC_DATA_S  *RecData = NULL;
    HI_U32 u32ProcsBlk = 0;
    HI_U32 OqRead = 0;
    HI_U32 ReleaseBlockCnt = 0;

    CHECKDMXID(RecInfo->DmxId);
    CHECKPOINTER(pstRecDataIdx);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        HI_ERR_DEMUX("start rec channel first!");
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    /*if is allts recording*/
    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE == RecInfo->IndexType)
    {
        BUG_ON(pstRecDataIdx->u32RecDataCnt >= 2);/*if is allts recording ,every time get rec data Cut should be 1*/
        RecData  = &pstRecDataIdx->stRecData[0];       
        ret = DMX_DRV_REC_ReleaseRecData( RecId, RecData->u32DataPhyAddr, RecData->u32Len);
        return ret;
    }

    if ( !pstRecDataIdx->u32IdxNum || !pstRecDataIdx->u32RecDataCnt  )
    {
        HI_WARN_DEMUX("release data size is 0\n");
        return HI_SUCCESS;
    }

    FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];
    OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->RecOqId];
    CHECKPOINTER(FqInfo);
    CHECKPOINTER(OqInfo);
    
    BUG_ON(pstRecDataIdx->u32RecDataCnt > 2);
    RecData = &pstRecDataIdx->stRecData[pstRecDataIdx->u32RecDataCnt -1];
    u32ProcsBlk = (RecData->u32DataPhyAddr + RecData->u32Len - FqInfo->u32BufPhyAddr)/FqInfo->u32BlockSize;
    if ( OqInfo->u32ProcsBlk !=  u32ProcsBlk)
    {
        HI_ERR_DEMUX("release buf not match, OqInfo->u32ProcsBlk = %d, Release Blk = %d\n",OqInfo->u32ProcsBlk,u32ProcsBlk);
        return HI_ERR_DMX_REC_BUFNOTMATCH;
    }
    DMXOsiOQGetReadWrite(OqInfo->u32OQId, HI_NULL, &OqRead);
    ReleaseBlockCnt = (u32ProcsBlk >= OqRead)?(u32ProcsBlk - OqRead):(OqInfo->u32OQDepth - OqRead + u32ProcsBlk -1);

    BUG_ON(ReleaseBlockCnt > OqInfo->u32OQDepth);

    DmxOQReleaseByBlockCnt(RecInfo->RecFqId, OqInfo->u32OQId, ReleaseBlockCnt);

    return HI_SUCCESS;   
}
#endif

HI_S32 DMX_DRV_REC_AcquireRecIndex(HI_U32 RecId, HI_UNF_DMX_REC_INDEX_S *RecIndex, HI_U32 Timeout)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = HI_NULL;
    DMX_OQ_Info_S  *OqInfo  = HI_NULL;
    HI_U32          jiffy   = msecs_to_jiffies(Timeout);
    HI_U32          Read;
    HI_U32          Write;
    HI_U32          KerAddr;
    HI_BOOL         bUseTimeStamp = HI_FALSE;
    
#ifdef DMX_SUPPORT_SCRAMB_SOFT_IDX
    HI_S32          ret     = HI_FAILURE;
    HI_U64          TsCnt = 0;
    HI_UNF_DMX_SCRAMBLED_FLAG_E enScrambleFlag = HI_UNF_DMX_SCRAMBLED_FLAG_NO; 
    HI_BOOL bChannelDescramFlag = HI_FALSE;
#endif

    CHECKDMXID(RecInfo->DmxId);

    if (DMX_REC_STATUS_START != RecInfo->RecStatus)
    {
        HI_ERR_DEMUX("start rec channel first!");
        return HI_ERR_DMX_NOT_START_REC_CHAN;
    }

    if (HI_UNF_DMX_REC_INDEX_TYPE_NONE == RecInfo->IndexType)
    {
        return HI_ERR_DMX_NOAVAILABLE_DATA;
    }

    if ( RecInfo->enRecTimeStamp >= DMX_REC_TIMESTAMP_ZERO)
    {
        bUseTimeStamp = HI_TRUE;
    }

#ifdef DMX_SUPPORT_SCRAMB_SOFT_IDX
    if (DMX_INVALID_CHAN_ID == RecInfo->IndexChanID)
    {
        ret = DMX_OsiGetChannelId(RecInfo->DmxId, RecInfo->IndexPid, &RecInfo->IndexChanID);
        if ( HI_SUCCESS != ret )
        {
            HI_ERR_DEMUX("DMX_OsiGetChannelId failed, demux id: %d,  IndexPid: %d ,ret : 0x%x\n",RecInfo->DmxId, RecInfo->IndexPid, ret);
            return ret;
        }
    }

    ret = DMX_OsiGetChannelScrambleFlag(RecInfo->IndexChanID, &enScrambleFlag);
    if ( ret != HI_SUCCESS )
    {
        HI_ERR_DEMUX("DMX_OsiGetChannelScrambleFlag failed, Chan id = %d, ret = 0x%x\n",RecInfo->IndexChanID,ret);
        return ret;
    }

    ret = DMX_OsiGetChannelDescrambleFlag(RecInfo->IndexChanID, &bChannelDescramFlag);
    if ( ret != HI_SUCCESS)
    {
        HI_ERR_DEMUX("DMX_OsiGetChannelDescrambleFlag failed, Chan id = %d, ret = 0x%x\n",RecInfo->IndexChanID,ret);
        return ret;
    }

    if ( HI_UNF_DMX_SCRAMBLED_FLAG_NO != enScrambleFlag && HI_FALSE  == bChannelDescramFlag)
    {
        HI_UNF_DMX_REC_INDEX_S ThisFrame = {0};
        HI_U32 ScrClk; 
        /*when clear ---> scramble, we need read the remain clear SCD but not wait untile time out*/
        jiffy = 0; 
        RecInfo->bClearDetected = HI_FALSE;

        DmxHalGetCurrentSCR(&ScrClk);
        /*adjust every index's u32DataTimeMs, make it begin from a value near 0*/
        ThisFrame.u32DataTimeMs = ScrClk / 90 + RecInfo->AddUpMs - RecInfo->FirstFrameMs;
        
        DmxHalGetRecTsCnt(RecInfo->ScdId, &TsCnt);	
        ThisFrame.u64GlobalOffset = ( bUseTimeStamp)?(TsCnt  * 192ULL):(TsCnt  * 188ULL);
        ThisFrame.u32FrameSize = 0; /*this frame size can  be calc only the next frame come*/
        ThisFrame.u32PtsMs     = RecInfo->LastFrameInfo.u32PtsMs; /*if there is no last frame?*/
        ThisFrame.enFrameType  = HI_UNF_FRAME_TYPE_UNKNOWN; /*we set HI_UNF_FRAME_TYPE_UNKNOWN as scrambled stream's index*/
        
        /*meet the first scramble index when clear------> scramble, keep the information*/
        if ( RecInfo->LastFrameInfo.enFrameType !=  HI_UNF_FRAME_TYPE_UNKNOWN)
        {
            RecInfo->ScrambleDetectCnt++; 
            RecInfo->ClearDetectCnt = 0; 
            RecInfo->ScrambleDetectTime = ThisFrame.u32DataTimeMs ;
            RecInfo->ScrambleDetectOffset = ThisFrame.u64GlobalOffset ;
             /*avoid the trans err make the scramble flag wrong, 
             check the duration of stream ,if < 0.3S ,or ,if detect count < 5 ,we think wrong TS scramble flag come*/
             if ( (RecInfo->ScrambleDetectTime  -  RecInfo->ClearDetectTime < 300) || ( RecInfo->ScrambleDetectCnt < 5))
             {
                 /*return here ,to let app call this func again*/
                 return HI_ERR_DMX_NOAVAILABLE_DATA;
             }
             else
             {
                //printk("scramble detect, time = %d, offset = %d, RecInfo->bSCDBufIsEmpty  = %d\n",RecInfo->ScrambleDetectTime,RecInfo->ScrambleDetectOffset,RecInfo->bSCDBufIsEmpty );      
             }
                
        }

        RecInfo->ScrambleDetectCnt = 0;
        RecInfo->ClearDetectTime = 0;  

        /*only RecInfo->bSCDBufIsEmpty == HI_TRUE ,that means clear SCD have been read completely ,
        (acturally may be some of it also remain in not a whole SCD buffer block)
        then we start generate scramble index by software ,otherwise ,we should keep reading the clare SCD ,
        inorder to avoid some duration of stream loss (can not be read/playack)*/
        if ( RecInfo->bSCDBufIsEmpty  )
        {
            /*every DMX_REC_SOFT_INDEX_TIME_GAP ,we generate a scramble index ,except the first time clear ----------> scramble*/
            if ( (ThisFrame.u32DataTimeMs - RecInfo->LastFrameInfo.u32DataTimeMs >= DMX_REC_SOFT_INDEX_TIME_GAP) 
                  || (RecInfo->LastFrameInfo.enFrameType !=  HI_UNF_FRAME_TYPE_UNKNOWN)  )
            {              			
    			/*if Record just starting,we just copy this frame into lastframe ,but not output it ,
    			as we can not get ThisFrame.u32FrameSize until the next index generated. */			
                if ( 0 == RecInfo->FirstFrameMs)
                {
                    RecInfo->FirstFrameMs = ThisFrame.u32DataTimeMs; 
                    RecInfo->PrevFrameMs = ThisFrame.u32DataTimeMs; 
                    
                    memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                    RecInfo->LastFrameInfo.u32DataTimeMs = 0;/*set the first index as time 0*/
                    RecInfo->LastFrameInfo.u64GlobalOffset = 0;/*set the first index's offset as 0, for align 188 */
                    return HI_ERR_DMX_NOAVAILABLE_DATA;
                }
                /*clear ----------> scramble, we use the first information meet the scramble flag, 
                and not output this first scramble index untile next one come*/
                else if ( RecInfo->LastFrameInfo.enFrameType !=  HI_UNF_FRAME_TYPE_UNKNOWN)
                {                    
                    ThisFrame.u32DataTimeMs = RecInfo->ScrambleDetectTime;
                    ThisFrame.u64GlobalOffset = RecInfo->ScrambleDetectOffset;
                    memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                    return HI_ERR_DMX_NOAVAILABLE_DATA;
                }
                
                if(ThisFrame.u32DataTimeMs < RecInfo->LastFrameInfo.u32DataTimeMs)
                {
                    RecInfo->AddUpMs += DMX_MAX_SCR_MS;  /*time counter overflow*/       
                    ThisFrame.u32DataTimeMs += DMX_MAX_SCR_MS; 
                }
                
                RecInfo->LastFrameInfo.u32FrameSize = ThisFrame.u64GlobalOffset  - RecInfo->LastFrameInfo.u64GlobalOffset;
                memcpy(RecIndex, &RecInfo->LastFrameInfo, sizeof(HI_UNF_DMX_REC_INDEX_S));

                RecInfo->PrevFrameMs = RecIndex->u32DataTimeMs;
                
                memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                
                return	HI_SUCCESS;
            }
            else 
            {
                return HI_ERR_DMX_NOAVAILABLE_DATA;
            }
        }          
    }
    else /*clear flag*/
    {
        HI_U32 ScrClk; 
        DmxHalGetCurrentSCR(&ScrClk);
                
        /*flag is changing  scramble------->clear ,and not the fisrt index, check is it valid*/
        if ( (RecInfo->LastFrameInfo.enFrameType ==  HI_UNF_FRAME_TYPE_UNKNOWN) && (RecInfo->LastFrameInfo.u32DataTimeMs != 0) && !RecInfo->bClearDetected)
        {
            RecInfo->ScrambleDetectCnt = 0;  
            RecInfo->ClearDetectCnt++;
            
            /*ClearDetectTime 需要减去 第一帧的时间，否则会造成丢失清流部分的 idx*/
            RecInfo->ClearDetectTime = ScrClk / 90 - RecInfo->FirstFrameMs;
            
             /*avoid the trans err make the scramble flag wrong, 
             check the duration of stream ,if < 0.3S ,or ,if detect count < 5 ,we think wrong TS scramble flag come*/
             if ( (RecInfo->ClearDetectTime  -  RecInfo->ScrambleDetectTime < 300) || ( RecInfo->ClearDetectCnt < 5))
             {
                 /*return here ,to let app call this func again*/
                 return HI_ERR_DMX_NOAVAILABLE_DATA;
             }
          
        }
        
        RecInfo->bClearDetected = HI_TRUE;
        RecInfo->ClearDetectCnt = 0; 
        RecInfo->ScrambleDetectTime = 0;
    }
#endif

    FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->ScdFqId];
    OqInfo  = &DmxMgr->DmxOqInfo[RecInfo->ScdOqId];

    do
    {
        HI_BOOL bGetValidIndex = HI_FALSE;
        DMXOsiOQGetReadWrite(OqInfo->u32OQId, &Write, &Read);

        if (Read == Write)
        {
            if (0 == jiffy)
            {
                RecInfo->bSCDBufIsEmpty = HI_TRUE;
                return HI_ERR_DMX_NOAVAILABLE_DATA;
            }

            DmxHalOQEnableOutputInt(OqInfo->u32OQId, HI_TRUE);

            OqInfo->OqWakeUp = HI_FALSE;

            jiffy = wait_event_interruptible_timeout(OqInfo->OqWaitQueue, OqInfo->OqWakeUp, jiffy);
            if (!OqInfo->OqWakeUp)
            {
                DmxHalOQEnableOutputInt(OqInfo->u32OQId, HI_FALSE);
                RecInfo->bSCDBufIsEmpty = HI_TRUE;
                return HI_ERR_DMX_TIMEOUT;
            }

            OqInfo->OqWakeUp = HI_FALSE;

            DMXOsiOQGetReadWrite(OqInfo->u32OQId, &Write, &Read);
        }

        if (DMX_REC_STATUS_START != RecInfo->RecStatus)
        {
            return HI_ERR_DMX_NOAVAILABLE_DATA;
        }

        if (Read != Write)
        {
            HI_UNF_DMX_REC_INDEX_S *CurrFrame   = &RecInfo->LastFrameInfo;
            HI_U32                  CurrBlock   = OqInfo->u32OQVirAddr + Read * DMX_OQ_DESC_SIZE;
            OQ_DescInfo_S          *OqDesc      = (OQ_DescInfo_S*)CurrBlock;
            HI_U32                  PhyAddr     = OqDesc->start_addr;
            HI_U32                  DataLen     = OqDesc->pvrctrl_datalen & 0xffff;
            FINDEX_SCD_S            EsScd;
            DMX_IDX_DATA_S         *ScData;
            HI_U32                  ScCount;
			HI_U32                  DropedScCount = 0;
            HI_U32                  i;

            RecInfo->bSCDBufIsEmpty = HI_FALSE;

            KerAddr = FqInfo->u32BufVirAddr + (PhyAddr - FqInfo->u32BufPhyAddr) + OqInfo->u32ProcsOffset;

            ScData  = (DMX_IDX_DATA_S*)KerAddr;
            ScCount = (DataLen - OqInfo->u32ProcsOffset)/ sizeof(DMX_IDX_DATA_S);

#ifdef DMX_SUPPORT_SCRAMB_SOFT_IDX
            DropedScCount = 0;
            for (i = 0; i < ScCount; i++)
            {
                HI_U32 ScrClk = ScData->u32SrcClk /90;
               
                if ( ScrClk < RecInfo->ClearDetectTime )
                {
                    /*this if for avoid clear index's range wrap the Scrambled index's range, we need drop some of the (wraped)SCD data*/
                    ScData++;
                    DropedScCount++;
                    continue;
                }
                else
                {
                    break;
                }
 
            }           
            if ( DropedScCount ==  ScCount)
            {
                OqInfo->u32ProcsOffset += (HI_U32)ScData - KerAddr;
                if (OqInfo->u32ProcsOffset == DataLen)
                {
                    DmxOQRelease(OqInfo->u32FQId, OqInfo->u32OQId, PhyAddr, DataLen);
                }
                return HI_ERR_DMX_NOAVAILABLE_DATA;
            }
#endif
            if (HI_UNF_DMX_REC_INDEX_TYPE_VIDEO == RecInfo->IndexType)
            {
                for (i = DropedScCount; i < ScCount; i++)
                {
                    HI_U32 ScrClk = ScData->u32SrcClk;

                    if (HI_SUCCESS == DmxScdToVideoIndex(bUseTimeStamp,ScData++, &EsScd))
                    {
                        HI_U64 GlobalOffset = CurrFrame->u64GlobalOffset;

                        FIDX_FeedStartCode(RecInfo->PicParser, &EsScd);

                        if (GlobalOffset < CurrFrame->u64GlobalOffset)
                        {
                            CurrFrame->u32DataTimeMs = ScrClk / 90;
                            memcpy(RecIndex, CurrFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                            
                            bGetValidIndex = HI_TRUE;     
                            break;
                        }
                    }
                }
            }
            else
            { 
                HI_UNF_DMX_REC_INDEX_S ThisFrame = {0};
                for (i = DropedScCount; i < ScCount; i++)
                {
                    if (HI_SUCCESS == DmxScdToAudioIndex(&ThisFrame, ScData++))
                    {
                        /* drop last possible soft frame index */
                        if (unlikely(HI_UNF_FRAME_TYPE_UNKNOWN == RecInfo->LastFrameInfo.enFrameType))
                        {
                            memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                            continue;
                        }
                    
                        /*only for the first scd (index) will enter this condition */
                        if (unlikely(RecInfo->LastFrameInfo.u32DataTimeMs == 0))
                        {
                            memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                            continue;
                        }
                        
                        RecInfo->LastFrameInfo.u32FrameSize = ThisFrame.u64GlobalOffset - RecInfo->LastFrameInfo.u64GlobalOffset;                  
                        memcpy(RecIndex, &RecInfo->LastFrameInfo, sizeof(HI_UNF_DMX_REC_INDEX_S));
                        memcpy(&RecInfo->LastFrameInfo, &ThisFrame, sizeof(HI_UNF_DMX_REC_INDEX_S));
                        bGetValidIndex = HI_TRUE;
                        break;
                    }
                }
            }

            OqInfo->u32ProcsOffset += (HI_U32)ScData - KerAddr;
            if (OqInfo->u32ProcsOffset == DataLen)
            {
                DmxOQRelease(OqInfo->u32FQId, OqInfo->u32OQId, PhyAddr, DataLen);
            }

            if (bGetValidIndex)
            {
                BUG_ON(RecIndex->u32DataTimeMs > DMX_MAX_SCR_MS);
                 
                if (unlikely(0 == RecInfo->FirstFrameMs))
                {
                    RecInfo->FirstFrameMs = RecIndex->u32DataTimeMs;
                    RecInfo->PrevFrameMs = RecIndex->u32DataTimeMs;
                }     

                /* adjust total data time ms according to overflow numbers */  
                RecIndex->u32DataTimeMs += (RecInfo->AddUpMs - RecInfo->FirstFrameMs);

                if (unlikely(RecIndex->u32DataTimeMs < RecInfo->PrevFrameMs))
                {
                    RecInfo->AddUpMs += DMX_MAX_SCR_MS;
                    RecIndex->u32DataTimeMs += DMX_MAX_SCR_MS;
                }
           
                RecInfo->PrevFrameMs = RecIndex->u32DataTimeMs;

#ifdef DMX_SUPPORT_SCRAMB_SOFT_IDX
                if ( HI_UNF_DMX_REC_INDEX_TYPE_VIDEO == RecInfo->IndexType )
                {
                    /*when clear stream A------>CAStream B----->clear stream C ,
                    the first index of clear stream C's offset is the last offset of  clear stream A*/
                    if ( RecIndex->u64GlobalOffset < RecInfo->LastFrameInfo.u64GlobalOffset )
                    {
                        return HI_ERR_DMX_NOAVAILABLE_DATA;
                    }
                    memcpy(&RecInfo->LastFrameInfo, RecIndex, sizeof(HI_UNF_DMX_REC_INDEX_S));
                }
#endif                
                return HI_SUCCESS;
            }
        }
    } while (1);

    return HI_ERR_DMX_NOAVAILABLE_DATA;
}

HI_S32 DMX_DRV_REC_GetRecBufferStatus(HI_U32 RecId, HI_UNF_DMX_RECBUF_STATUS_S *BufStatus)
{
    DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
    DMX_RecInfo_S  *RecInfo = &DmxMgr->DmxRecInfo[RecId];
    DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[RecInfo->RecFqId];

    CHECKDMXID(RecInfo->DmxId);

    BufStatus->u32BufSize   = FqInfo->u32BufSize;
    BufStatus->u32UsedSize  = 0;

    if (DMX_REC_STATUS_START == RecInfo->RecStatus)
    {
        HI_U32  Read    = DmxHalGetFQReadPtr(RecInfo->RecFqId);
        HI_U32  Write   = DmxHalGetFQWritePtr(RecInfo->RecFqId);

        if (Read < Write)
        {
            BufStatus->u32UsedSize = (FqInfo->u32FQDepth - 1 - Write + Read) * FqInfo->u32BlockSize;
        }
        else if (Read > Write)
        {
            BufStatus->u32UsedSize = (Read - Write) * FqInfo->u32BlockSize;
        }
    }

    return HI_SUCCESS;
}

HI_S32 DMX_OsiDeviceInit(HI_VOID)
{
    HI_S32 ret;

    ret = DMX_OsiInit();
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    FIDX_Init(DmxRecUpdateFrameInfo);

    return HI_SUCCESS;
}

HI_VOID DMX_OsiDeviceDeInit(HI_VOID)
{
    DMX_OsiDeInit();
}

/*****************************************************************************
 Prototype    : DMX_OsiSuspend
 Description  : Demux
 Input        : None
 Output       : None
 Return Value : None
*****************************************************************************/
HI_S32 DMX_OsiSuspend(PM_BASEDEV_S *himd, pm_message_t state)
{
    DMX_DEV_OSI_S  *DmxDevOsi   = g_pDmxDevOsi;
    HI_U32          i;

    if (DMX_DEV_INACTIVED == DmxDevOsi->State)
    {
        goto out;
    }

    del_timer(&CheckChnTimeoutTimer);

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &DmxDevOsi->DmxChanInfo[i];

        if (ChanInfo->DmxId < DMX_CNT)
        {
            if (HI_UNF_DMX_CHAN_CLOSE != ChanInfo->ChanStatus)
            {
                HI_UNF_DMX_CHAN_STATUS_E ChanStatus = ChanInfo->ChanStatus;

                DMX_OsiCloseChannel(i);

                ChanInfo->ChanStatus = ChanStatus;
            }
        }
    }
    
out:
    HI_PRINT("DEMUX suspend OK\n");

    return HI_SUCCESS;
}

/*****************************************************************************
 Prototype    : DMX_OsiResume
 Description  : Demux
 Input        : None
 Output       : None
 Return Value : None
 Others       :
*****************************************************************************/
HI_S32 DMX_OsiResume(PM_BASEDEV_S *himd)
{
    DMX_DEV_OSI_S          *DmxDevOsi   = g_pDmxDevOsi;
    HI_UNF_DMX_PORT_ATTR_S  PortAttr;
    HI_UNF_DMX_TSO_PORT_ATTR_S  TSOPortAttr;
    HI_U32                  i;
    HI_U32                  j;
    HI_S32                  ret;

    if (DMX_DEV_INACTIVED == DmxDevOsi->State)
    {
        goto out;
    }

    if (HI_SUCCESS != DmxReset())
    {
        return HI_FAILURE;
    }

#ifdef DMX_DESCRAMBLER_SUPPORT
#ifdef CHIP_TYPE_hi3716m
    if (Hi3716MV300Flag)
    {
        DescInitHardFlag();
    }
#else
    #ifdef DMX_DESCRAMBLER_VERSION_1
    DescInitHardFlag();
    #endif
#endif
#endif

    HI_INIT_MUTEX(&DmxDevOsi->lock_Channel);
    HI_INIT_MUTEX(&DmxDevOsi->lock_AVChan);
    HI_INIT_MUTEX(&DmxDevOsi->lock_Filter);
    HI_INIT_MUTEX(&DmxDevOsi->lock_Key);
    spin_lock_init(&DmxDevOsi->splock_OqBuf);

    DmxFqStart(DMX_FQ_COMMOM);

    for (i = 0; i < DMX_TUNERPORT_CNT; i++)
    {
        DMX_OsiTunerPortGetAttr(i, &PortAttr);
        DMX_OsiTunerPortSetAttr(i, &PortAttr);

        DmxHalDvbPortSetTsCountCtrl(i, TS_COUNT_CRTL_START);
        DmxHalDvbPortSetErrTsCountCtrl(i, TS_COUNT_CRTL_START);
    }

    for (i = 0; i < DMX_RAMPORT_CNT; i++)
    {
        DMX_RamPort_Info_S *PortInfo = &DmxDevOsi->RamPortInfo[i];

        init_waitqueue_head(&PortInfo->WaitQueue);

        DMX_OsiRamPortGetAttr(i, &PortAttr);
        DMX_OsiRamPortSetAttr(i, &PortAttr);

        DmxHalIPPortEnableInt(i);
        DmxHalIPPortSetIntCnt(i, DMX_DEFAULT_INT_CNT);

        DmxHalIPPortSetTsCountCtrl(i, HI_TRUE);

        if (PortInfo->PhyAddr)
        {
            PortInfo->DescCurrAddr  = (HI_U32*)PortInfo->DescKerAddr;
            PortInfo->DescWrite     = 0;
            PortInfo->Read          = 0;
            PortInfo->Write         = 0;
            PortInfo->ReqAddr       = 0;
            PortInfo->ReqLen        = 0;
            PortInfo->WaitLen       = 0;
            PortInfo->WakeUp        = HI_FALSE;
            
            spin_lock_init(&PortInfo->LockRamPort);

            PortInfo->GetCount      = 0;
            PortInfo->GetValidCount = 0;
            PortInfo->PutCount      = 0;

            TsBufferConfig(i, HI_TRUE, PortInfo->DescPhyAddr, PortInfo->DescDepth);
        }
    }

    for ( i = 0 ; i < DMX_TSOPORT_CNT; i++ )
    {
        DMX_OsiTSOPortGetAttr(i, &TSOPortAttr);
        DMX_OsiTSOPortSetAttr(i, &TSOPortAttr);
    }
    
#ifdef DMX_TAG_DEAL_SUPPORT
    DMX_OsiResumeTag();
#endif

    for (i = 0; i < DMX_CNT; i++)
    {
        DMX_Sub_DevInfo_S  *DmxInfo = &DmxDevOsi->SubDevInfo[i];
        DMX_RecInfo_S      *RecInfo = &DmxDevOsi->DmxRecInfo[i];

        DMX_OsiAttachPort(i, DmxInfo->PortMode, DmxInfo->PortId);

        DmxHalSetSpsRefRecCh(i, 0xff);

        if (DMX_REC_STATUS_START != RecInfo->RecStatus)
        {
            continue;
        }

        RecInfo->RecStatus = DMX_REC_STATUS_STOP;

        DMX_DRV_REC_StartRecChn(i);
    }

#ifdef DMX_DESCRAMBLER_SUPPORT
    DmxDescramblerResume();
#endif

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &DmxDevOsi->DmxChanInfo[i];

        if (ChanInfo->DmxId < DMX_CNT)
        {
            DmxSetChannel(i);

        #ifdef DMX_DESCRAMBLER_SUPPORT
            if (ChanInfo->KeyId < DMX_KEY_CNT)
            {
                HI_U32 KeyId = ChanInfo->KeyId;

                ChanInfo->KeyId = DMX_INVALID_KEY_ID;

                DMX_OsiDescramblerAttach(KeyId, ChanInfo->ChanId);
            }
        #endif

            if (HI_UNF_DMX_CHAN_CLOSE != ChanInfo->ChanStatus)
            {
                ChanInfo->ChanStatus = HI_UNF_DMX_CHAN_CLOSE;

                ret = DMX_OsiOpenChannel(i);
                if (ret != HI_SUCCESS)
                {
                    return ret;
                }
            }
        }
        else
        {
            DmxHalSetChannelPlayDmxid(i, DMX_INVALID_DEMUX_ID);
            DmxHalSetChannelRecDmxid(i, DMX_INVALID_DEMUX_ID);
            DmxHalSetChannelPid(i, DMX_INVALID_PID);
        }
    }

    for (i = 0; i < DMX_FILTER_CNT; i++)
    {
        DMX_FilterInfo_S *FilterInfo = &g_pDmxDevOsi->DmxFilterInfo[i];

        if (DMX_INVALID_FILTER_ID != FilterInfo->FilterId)
        {
            HI_UNF_DMX_FILTER_ATTR_S FilterAttr;

            FilterAttr.u32FilterDepth = FilterInfo->Depth;

            for (j = 0; j < FilterInfo->Depth; j++)
            {
                FilterAttr.au8Match[j]  = FilterInfo->Match[j];
                FilterAttr.au8Mask[j]   = FilterInfo->Mask[j];
                FilterAttr.au8Negate[j] = FilterInfo->Negate[j];
            }

            DMX_OsiSetFilterAttr(i, &FilterAttr);

            if (DMX_INVALID_CHAN_ID != FilterInfo->ChanId)
            {
                HI_U32 ChanId = FilterInfo->ChanId;

                FilterInfo->ChanId = DMX_INVALID_CHAN_ID;

                DMX_OsiAttachFilter(i, ChanId);
            }
        }
    }

    for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
    {
        DMX_PCR_Info_S *PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[i];

        if (PcrInfo->DmxId < DMX_CNT)
        {
            DMX_OsiPcrChannelSetPid(i, PcrInfo->PcrPid);
        }
    }

    DmxHalEnableAllDavInt();
    DmxHalEnableAllChEopInt();
    DmxHalEnableAllChEnqueInt();
    DmxHalFQEnableAllOverflowInt();

    DmxHalSetFlushMaxWaitTime(0x2400);
    DmxHalSetDataFakeMod(DMX_ENABLE);
    init_waitqueue_head(&DmxDevOsi->DmxWaitQueue);

    DmxHalEnableAllPVRInt();

    init_waitqueue_head(&AllChnWaitQueue);

    CheckChnTimeoutTimer.expires = jiffies + msecs_to_jiffies(DMX_CHECKCHN_TIMEOUT);
    add_timer(&CheckChnTimeoutTimer);

    DmxDevOsi->ResumeCnt ++;

out:
    HI_PRINT("DEMUX resume OK\n");

    return HI_SUCCESS;
}

#ifdef HI_DEMUX_PROC_SUPPORT
HI_S32 DMX_OsiRamPortGetBufInfo(HI_U32 PortId, DMX_Proc_RamPort_BufInfo_S *BufInfo)
{
    HI_S32              ret         = HI_FAILURE;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (PortInfo->PhyAddr)
    {
        BufInfo->PhyAddr        = PortInfo->PhyAddr;
        BufInfo->BufSize        = PortInfo->BufSize;
        BufInfo->Read           = PortInfo->Read;
        BufInfo->Write          = PortInfo->Write;
        BufInfo->UsedSize       = GetQueueLenth(BufInfo->Read, BufInfo->Write, BufInfo->BufSize);
        BufInfo->GetCount       = PortInfo->GetCount;
        BufInfo->GetValidCount  = PortInfo->GetValidCount;
        BufInfo->PutCount       = PortInfo->PutCount;

        ret = HI_SUCCESS;
    }

    return ret;
}


HI_S32 DMX_OsiRamPortGetDescInfo(HI_U32 PortId, DMX_Proc_RamPort_DescInfo_S *DescInfo)
{
    HI_S32              ret         = HI_FAILURE;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (PortInfo->PhyAddr)
    {
        DmxHalIPPortGetDescInfo(PortId, DescInfo);
        return HI_SUCCESS;
    }

    return ret;
}

HI_S32 DMX_OsiRamPortGetBPStatus(HI_U32 PortId, DMX_Proc_RamPort_BPStatus_S *BPStatus)
{
    HI_S32              ret         = HI_FAILURE;
    DMX_RamPort_Info_S *PortInfo    = &g_pDmxDevOsi->RamPortInfo[PortId];

    if (PortInfo->PhyAddr)
    {
        DmxHalIPPortGetBPStatus(PortId, BPStatus);
        return HI_SUCCESS;
    }

    return ret;
}

HI_VOID DMX_OsiGetFQInfo(HI_U32 FQId, FQ_HeaderInfor_t *FQInfo)
{
    HI_U32  FQWord[4];
    HI_U32  i           = 0;

    for ( i = 0 ; i < 4 ; i++ )
    {
        DmxHalGetFQWORDx(FQId,i, &FQWord[i]);
    }
    /*
    [127:96]:FQStartAddr(32bit);
    [96:64]:{FQSize(16bit),FQWPtr(16bit)};
    [63:32]:{FQVal(16bit),FQRPtr(16bit)}
    [31:0]:{FQAlovfl_TH(8bit),FQIntCfg(4bit),FQIntCnt(4bit),FQUse(16bit)}
    */

    FQInfo->FQUse       = FQWord[0] & 0xffff;
    FQInfo->FQRPtr      = FQWord[1] & 0xffff;
    FQInfo->FQVal       = (FQWord[1] >> 16 )& 0xffff;
    FQInfo->FQWPtr      = FQWord[2] & 0xffff;
    FQInfo->FQSize      = (FQWord[2] >> 16 )& 0xffff;
    FQInfo->FQStartAddr = FQWord[3] ;

    return;
}

HI_VOID DMX_OsiGetOQInfo(HI_U32 OQId, OQ_HeaderInfor_t *OQInfo)
{
    HI_U32  OQWord[8];
    HI_U32  i           = 0;

    for ( i = 0 ; i <8 ; i++ )
    {
        DmxHalGetOQWORDx(OQId,i, &OQWord[i]);
    }
    /*
    [255:224]:BQSAddr(32bit)
    [223:192]:{Rsv(2bit),BQIntCfg(4bit),BQSize(10bit),BQAlovfl_TH(8bit),BQCfg(8bit)};
    [191:160]:{Rsv(6bit),BQRPtr(10bit),BQIntCnt(4bit),Rsv(2bit),BQWPtr(10bit)}
    [159:128]:BBSAddr(32bit)
    [127:96]:{BBSize(16bit),BQUse(16bit)}
    [96:64]:{BBEopAddr(16bit),BBWaddr(16bit)}
    [63:32]:{WResByte(24bit),PVRCtrl(8bit)}
    [31:0]:{EopResByte(24bit),Rsv(8bit)}

    */
    //OQInfo->EopResByte        = OQWord[0];
    //OQInfo->WResByte      = (OQWord[1] >> 8) & 0xffffff;
    OQInfo->OQID            = OQId;
    OQInfo->BBWAddr         = OQWord[2] & 0xffff;
    OQInfo->BBEopAddr       = (OQWord[2] >> 16) & 0xffff;
    OQInfo->OQUse           = OQWord[3] & 0x3fff;
    OQInfo->BBSize          = (OQWord[3] >> 16) & 0xffff;
    OQInfo->BBSAddr         = OQWord[4];
    OQInfo->OQWPtr          = OQWord[5] & 0x3ff;
    OQInfo->OQRPtr          = (OQWord[5] >> 16) & 0x3ff;
    OQInfo->FQCfg           = OQWord[6] & 0xff;
    OQInfo->OQSize          = (OQWord[6] >> 16 ) & 0x3ff;
    OQInfo->OQSAddr         = OQWord[7];
    OQInfo->OQWAddr         = OQInfo->OQSAddr + 16 * OQInfo->OQWPtr;
    OQInfo->OQRAddr         = OQInfo->OQSAddr + 16 * OQInfo->OQRPtr;

    return;
}

HI_VOID DMX_OsiGetChannelDataFlow(HI_U32 ChannelId, ChannelDataFlow_info_t *ChannelDF)
{
    DMXHalGetChannelDataFlow(ChannelId,ChannelDF);
    return;
}

HI_S32 DMX_OsiGetDmxRecProc(HI_U32 RecId, DMX_Proc_Rec_BufInfo_S *BufInfo)
{
    HI_S32          ret     = HI_FAILURE;
    DMX_RecInfo_S  *RecInfo = &g_pDmxDevOsi->DmxRecInfo[RecId];

    if (RecInfo->DmxId < DMX_CNT)
    {
        switch (RecInfo->RecType)
        {
            case HI_UNF_DMX_REC_TYPE_SELECT_PID :
            case HI_UNF_DMX_REC_TYPE_ALL_PID :
            {
                DMX_FQ_Info_S *FqInfo = &g_pDmxDevOsi->DmxFqInfo[RecInfo->RecFqId];

                BufInfo->RecType    = RecInfo->RecType;
                BufInfo->Descramed  = RecInfo->Descramed;
                BufInfo->BlockCnt   = FqInfo->u32FQDepth - 1;
                BufInfo->BlockSize  = FqInfo->u32BlockSize;
                BufInfo->RecStatus  = (DMX_REC_STATUS_START == RecInfo->RecStatus) ? 1 : 0;
                BufInfo->Overflow   = FqInfo->FqOverflowCount;

                DMXOsiOQGetReadWrite(RecInfo->RecOqId, &BufInfo->BufWrite, &BufInfo->BufRead);

                ret = HI_SUCCESS;

                break;
            }

            default :
                ret = HI_FAILURE;
        }
    }

    return ret;
}

HI_S32 DMX_OsiGetDmxRecScdProc(HI_U32 RecId, DMX_Proc_RecScd_BufInfo_S *BufInfo)
{
    HI_S32          ret     = HI_FAILURE;
    DMX_RecInfo_S  *RecInfo = &g_pDmxDevOsi->DmxRecInfo[RecId];

    if (RecInfo->DmxId < DMX_CNT)
    {
        memset(BufInfo, 0, sizeof(DMX_Proc_RecScd_BufInfo_S));

        switch (RecInfo->RecType)
        {
            case HI_UNF_DMX_REC_TYPE_SELECT_PID :
            {
                BufInfo->IndexType  = RecInfo->IndexType;
                BufInfo->IndexPid   = DMX_INVALID_PID;

                if (HI_UNF_DMX_REC_INDEX_TYPE_NONE != RecInfo->IndexType)
                {
                    DMX_FQ_Info_S *FqInfo = &g_pDmxDevOsi->DmxFqInfo[RecInfo->ScdFqId];

                    BufInfo->IndexPid   = RecInfo->IndexPid;
                    BufInfo->BlockCnt   = FqInfo->u32FQDepth - 1;
                    BufInfo->BlockSize  = FqInfo->u32BlockSize;
                    BufInfo->Overflow   = FqInfo->FqOverflowCount;

                    DMXOsiOQGetReadWrite(RecInfo->ScdOqId, &BufInfo->BufWrite, &BufInfo->BufRead);
                }

                ret = HI_SUCCESS;

                break;
            }

            case HI_UNF_DMX_REC_TYPE_ALL_PID :
            {
                BufInfo->IndexType  = HI_UNF_DMX_REC_INDEX_TYPE_NONE;
                BufInfo->IndexPid   = DMX_INVALID_PID;

                ret = HI_SUCCESS;

                break;
            }

            default :
                ret = HI_FAILURE;
        }
    }

    return ret;
}

DMX_ChanInfo_S* DMX_OsiGetChannelProc(HI_U32 ChanId)
{
    DMX_ChanInfo_S *ChanInfo;

    ChanInfo = &g_pDmxDevOsi->DmxChanInfo[ChanId];
    if (ChanInfo->DmxId >= DMX_CNT)
    {
        ChanInfo = HI_NULL;
    }

    return ChanInfo;
}

HI_S32 DMX_OsiGetChanBufProc(HI_U32 ChanId, DMX_Proc_ChanBuf_S *BufInfo)
{
    DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[ChanId];

    if (ChanInfo->DmxId >= DMX_CNT)
    {
        return HI_FAILURE;
    }

    memset(BufInfo, 0, sizeof(DMX_Proc_ChanBuf_S));

    if (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY == (HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY & ChanInfo->ChanOutMode))
    {
        DMX_OQ_Info_S  *OqInfo  = &g_pDmxDevOsi->DmxOqInfo[ChanInfo->ChanOqId];
        DMX_FQ_Info_S  *FqInfo  = &g_pDmxDevOsi->DmxFqInfo[OqInfo->u32FQId];

        DMXOsiOQGetReadWrite(ChanInfo->ChanOqId, &BufInfo->DescWrite, &BufInfo->DescRead);

        BufInfo->DescDepth  = OqInfo->u32OQDepth;
        BufInfo->BlockSize  = FqInfo->u32BlockSize;
        BufInfo->Overflow   = FqInfo->FqOverflowCount;
    }

    return HI_SUCCESS;
}

DMX_FilterInfo_S* DMX_OsiGetFilterProc(HI_U32 FilterId)
{
    DMX_FilterInfo_S *FilterInfo;

    FilterInfo = &g_pDmxDevOsi->DmxFilterInfo[FilterId];
    if (DMX_INVALID_FILTER_ID == FilterInfo->FilterId)
    {
        FilterInfo = HI_NULL;
    }

    return FilterInfo;
}

DMX_PCR_Info_S* DMX_OsiGetPcrChannelProc(const HI_U32 PcrId)
{
    DMX_PCR_Info_S *PcrInfo;

    PcrInfo = &g_pDmxDevOsi->DmxPcrInfo[PcrId];
    if (PcrInfo->DmxId >= DMX_CNT)
    {
        PcrInfo = HI_NULL;
    }

    return PcrInfo;
}

//just for record PMT
#define PAT_TABLEID 0
#define MAX_PMT_NUMBER 16

typedef struct
{
    HI_U32 u32ProgNum;
    HI_U32 u32PmtPID[MAX_PMT_NUMBER];
} PmtPid;

static PmtPid stPmtPid;
static void insert_pmt_pid(HI_U32 u32PmtPid)
{
   HI_U32 i;
   for ( i = 0 ; i < stPmtPid.u32ProgNum; i++ )
   {
       if (stPmtPid.u32PmtPID[i] == u32PmtPid)
       {
           return;
       }
   }
   if (stPmtPid.u32ProgNum < MAX_PMT_NUMBER)
   {
       stPmtPid.u32PmtPID[stPmtPid.u32ProgNum] = u32PmtPid;
       stPmtPid.u32ProgNum ++;
   }
   return;
}

static HI_S32 parse_pat_table(HI_U8* pu8Data,HI_U32 u32Len)
{
    HI_U32 u32SecLen;
    HI_U32 u32ProgramNum,u32PmtPid;
    u32SecLen = (pu8Data[1] & 0xf) << 8 | pu8Data[2];

    if (u32SecLen < 12|| u32SecLen > u32Len)
    {
        return -1;
    }
    pu8Data += 8;//jump to program_number
    u32SecLen -= 9;
    while (u32SecLen > 4)
    {
        u32ProgramNum = (pu8Data[0] << 8) | pu8Data[1];
        u32PmtPid = ((pu8Data[2] & 0x1f) << 8) | pu8Data[3];
        if (u32ProgramNum != 0)
        {
            insert_pmt_pid(u32PmtPid);
        }
        u32SecLen -= 4;
        pu8Data += 4;
    }
    return 0;
}

static HI_S32 DMX_OsiGetPmtPid(HI_U32 DmxId)
{
    HI_S32                      ret;
    HI_UNF_DMX_CHAN_ATTR_S      ChanAttr;
    DMX_MMZ_BUF_S               ChanBuf;
    HI_UNF_DMX_FILTER_ATTR_S    FilterAttr;
    HI_U32                      ChanId;
    HI_U32                      FilterId;
    HI_U32                      SectNum;
    DMX_UserMsg_S               SectData[20];

    ChanAttr.u32BufSize     = 0x4000;
    ChanAttr.enCRCMode      = HI_UNF_DMX_CHAN_CRC_MODE_FORCE_AND_DISCARD;
    ChanAttr.enChannelType  = HI_UNF_DMX_CHAN_TYPE_SEC;
    ChanAttr.enOutputMode   = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;

    ret = DMX_OsiCreateChannel(DmxId, &ChanAttr, &ChanBuf, &ChanId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = DMX_OsiSetChannelPid(ChanId, 0);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(ChanId);

        return ret;
    }

    ret = DMX_OsiNewFilter(DmxId, &FilterId);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(ChanId);

        return ret;
    }

    FilterAttr.u32FilterDepth = 1;

    FilterAttr.au8Match[0]  = PAT_TABLEID;
    FilterAttr.au8Mask[0]   = 0x00;
    FilterAttr.au8Negate[0] = 0;

    ret = DMX_OsiSetFilterAttr(FilterId, &FilterAttr);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDeleteFilter(FilterId);
        DMX_OsiDestroyChannel(ChanId);

        return ret;
    }

    ret = DMX_OsiAttachFilter(FilterId, ChanId);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDeleteFilter(FilterId);
        DMX_OsiDestroyChannel(ChanId);

        return ret;
    }

    ret = DMX_OsiOpenChannel(ChanId);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDeleteFilter(FilterId);
        DMX_OsiDestroyChannel(ChanId);

        return ret;
    }

    msleep(2000);

    stPmtPid.u32ProgNum = 0;

    ret = DMX_OsiReadDataRequset(ChanId, 20, &SectNum, SectData, 2000);
    if ((HI_SUCCESS == ret) && SectNum)
    {
        DMX_DEV_OSI_S  *DmxMgr  = g_pDmxDevOsi;
        DMX_FQ_Info_S  *FqInfo  = &DmxMgr->DmxFqInfo[DMX_FQ_COMMOM];
        HI_U32          KerAddr;
        HI_U32          Offset;
        HI_U32          i;

        for (i = 0; i < SectNum; i++)
        {
            Offset  = SectData[i].u32BufStartAddr - FqInfo->u32BufPhyAddr;
            KerAddr = FqInfo->u32BufVirAddr + Offset;

            parse_pat_table((HI_U8*)KerAddr, SectData[i].u32MsgLen);
        }

        DMX_OsiReleaseReadData(ChanId, SectNum, SectData);
    }

    DMX_OsiCloseChannel(ChanId);
    DMX_OsiDetachFilter(FilterId, ChanId);
    DMX_OsiDeleteFilter(FilterId);
    DMX_OsiDestroyChannel(ChanId);

    return ret;
}

static HI_S32 DMX_OsiAddRecPid(HI_U32 DmxId,HI_U32 Pid, HI_U32 *ChanId)
{
    HI_S32                  ret;
    HI_UNF_DMX_CHAN_ATTR_S  ChanAttr;
    DMX_MMZ_BUF_S           ChanBuf;

    ChanAttr.u32BufSize     = 0x4000;
    ChanAttr.enCRCMode      = HI_UNF_DMX_CHAN_CRC_MODE_FORBID;
    ChanAttr.enChannelType  = HI_UNF_DMX_CHAN_TYPE_POST;
    ChanAttr.enOutputMode   = HI_UNF_DMX_CHAN_OUTPUT_MODE_REC;

    ret = DMX_OsiCreateChannel(DmxId, &ChanAttr, &ChanBuf, ChanId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = DMX_OsiSetChannelPid(*ChanId, Pid);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(*ChanId);

        return ret;
    }

    ret = DMX_OsiOpenChannel(*ChanId);
    if (HI_SUCCESS != ret)
    {
        DMX_OsiDestroyChannel(*ChanId);

        return ret;
    }

    return HI_SUCCESS;
}

static HI_VOID DelAllDmxChannel(HI_U32 DmxId)
{
    HI_U32 i;

    for (i = 0;  i < DMX_CHANNEL_CNT; i++)
    {
        DMX_ChanInfo_S *ChanInfo = &g_pDmxDevOsi->DmxChanInfo[i];

        if (ChanInfo->DmxId == DmxId)
        {
            DMX_OsiCloseChannel(ChanInfo->ChanId);
            DMX_OsiDestroyChannel(ChanInfo->ChanId);
        }
    }
}

HI_S32 DMX_OsiSaveDmxTs_Start(HI_U32 DmxId, HI_U32 u32RecDmxId)
{
    HI_S32              ret;
    DMX_DEV_OSI_S      *DmxDevOsi   = g_pDmxDevOsi;
    DMX_Sub_DevInfo_S  *DmxInfo     = &DmxDevOsi->SubDevInfo[DmxId];
    DMX_PCR_Info_S     *PcrInfo     = DmxDevOsi->DmxPcrInfo;
    DMX_ChanInfo_S     *ChanInfo    = DmxDevOsi->DmxChanInfo;
    HI_U32              ChanId = DMX_INVALID_CHAN_ID;
    HI_U32              i;

    ret = DMX_OsiAttachPort(u32RecDmxId, DmxInfo->PortMode, DmxInfo->PortId);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    DMX_OsiGetPmtPid(u32RecDmxId);

    for (i = 0; i < DMX_PCR_CHANNEL_CNT; i++)
    {
        if ((PcrInfo[i].DmxId == DmxId) && (PcrInfo[i].PcrPid < DMX_INVALID_PID))
        {
            DMX_OsiAddRecPid(u32RecDmxId, PcrInfo[i].PcrPid, &ChanId);
        }
    }

    DMX_OsiAddRecPid(u32RecDmxId, 0, &ChanId);  // record pat table

    for ( i = 0 ; i < stPmtPid.u32ProgNum ; i++ )
    {
        DMX_OsiAddRecPid(u32RecDmxId, stPmtPid.u32PmtPID[i], &ChanId);  // record pmt table
    }

    for (i = 0; i < DMX_CHANNEL_CNT; i++)
    {
        if ((ChanInfo[i].DmxId == DmxId) && (HI_UNF_DMX_CHAN_CLOSE != ChanInfo[i].ChanStatus))
        {
            DMX_OsiAddRecPid(u32RecDmxId, ChanInfo[i].ChanPid, &ChanId);

#ifdef DMX_DESCRAMBLER_SUPPORT
            if (DMX_INVALID_KEY_ID != ChanInfo[i].KeyId && DMX_INVALID_CHAN_ID != ChanId)
            {
                DMX_OsiDescramblerAttach(ChanInfo[i].KeyId, ChanId);
            }
#endif
        }
    }

    return 0;
}

HI_S32 DMX_OsiSaveDmxTs_Stop(HI_U32 u32RecDmx)
{
    DMX_OsiDetachPort(u32RecDmx);
    DelAllDmxChannel(u32RecDmx);
    return HI_SUCCESS;
}
/*******************************************************************/
#endif

#ifdef DMX_TAG_DEAL_SUPPORT
static HI_U32 TagDeal_FindPortByTag(const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U32 *pu32Low,  *pu32NewLow, index;
    HI_U32 u32TagPortId = DMX_INVALID_PORT_ID;

    switch(pstAttr->u32TagLen)
    {
        case 4: /* 4 bytes mode */
            for (index = 0; index < DMX_TAG_MAX_TS_WAY ; index ++)
            {      
                pu32NewLow = (HI_U32 *)&(pstAttr->au8Tag[0]);                   /* 0~4 bytes */
                pu32Low = (HI_U32 *)&(TagDealInfo->TagPortAttrs[index].au8Tag[0]);                   /* 0~4 bytes */

                /* 0 is reserve unused tag value is */
                if (0 != *pu32Low && *pu32Low == *pu32NewLow)
                {
                    u32TagPortId = index;
                    break;
                }
            }

            break;
        default:
            HI_DBG_DEMUX("not support %dbytes mode now.\n", pstAttr->u32TagLen);
            u32TagPortId = DMX_INVALID_PORT_ID;
            break;
    }

    return u32TagPortId;
}

static HI_U32 TagDeal_FindUnusedPort(HI_VOID)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U8 au8UnusedTag[MAX_TAG_LENGTH] = {0};  /* 0 is reserved default value indicate unused port */
    HI_U32 index;
    HI_U32 u32TagPortId = DMX_INVALID_PORT_ID;

    for (index = 0; index < DMX_TAG_MAX_TS_WAY ; index ++)
    {
        if (!memcmp(au8UnusedTag, TagDealInfo->TagPortAttrs[index].au8Tag, sizeof(au8UnusedTag)))
        {
            u32TagPortId = index;
            break;
        }
    }

    return u32TagPortId;
}

static HI_U32 TagDeal_FindPortByDmxId(HI_U32 DmxId)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;

    return TagDealInfo->DmxAttachedPortID[DmxId];
}

static HI_S32 TagDeal_CfgPort(HI_U32 DmxId, const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U32 *pu32Low, *pu32Mid, *pu32High, *pu32NewLow, *pu32NewMid, *pu32NewHigh;
    HI_U32 u32TagPortId1 = DMX_INVALID_PORT_ID, u32TagPortId2 = DMX_INVALID_PORT_ID, u32TagPortId = DMX_INVALID_PORT_ID;
    HI_S32 s32Ret = HI_FAILURE;

    u32TagPortId1 = TagDeal_FindPortByDmxId(DmxId);
    u32TagPortId2 = TagDeal_FindPortByTag(pstAttr);  
    if (CHECKTAGPORTID(u32TagPortId1))  /* demux already attached to one tag */
    {
        if (CHECKTAGPORTID(u32TagPortId2) && u32TagPortId1 == u32TagPortId2)  
        {
            u32TagPortId = u32TagPortId1;
        }
        else
        {
            HI_DBG_DEMUX("input parameter invalid.\n");
            s32Ret = HI_ERR_DMX_INVALID_PARA;
            goto out;
        }
    }
    else /* demux have not attached to any tag */
    {
        if (CHECKTAGPORTID(u32TagPortId2))
        {
            u32TagPortId = u32TagPortId2;
        }
        else  /* find new unused tag port */
        {
            u32TagPortId = TagDeal_FindUnusedPort();
            if (! CHECKTAGPORTID(u32TagPortId))
            {
                HI_DBG_DEMUX("there is no used tag deal port now .\n");
                s32Ret = HI_ERR_DMX_NOAVAILABLE_TAG_PORT;
                goto out;
            }   
        }
    }
    
    pu32NewLow = (HI_U32 *)&(pstAttr->au8Tag[0]);                   /* 0~4 bytes */
    pu32NewMid = (HI_U32 *)&(pstAttr->au8Tag[4]);                /* 4~8 bytes */
    pu32NewHigh = (HI_U32 *)&(pstAttr->au8Tag[4 + 4]);         /* 8~12 bytes*/

    switch(pstAttr->u32TagLen)
    {
        case 4:  /* 4 bytes mode */
        {  
            if (0 == *pu32NewLow)  /* 0 is reserve unused tag value is */
            {
                s32Ret = HI_ERR_DMX_INVALID_PARA;
                goto out;
            }

            TagDealInfo->TagPortAttrs[u32TagPortId].bEnabled = HI_TRUE;
            
            pu32Low = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[0]);                   /* 0~4 bytes */
            pu32Mid = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4]);                /* 4~8 bytes */
            pu32High = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4 + 4]);         /* 8~12 bytes*/
      
            *pu32Low = *pu32NewLow;
            *pu32Mid = 0;
            *pu32High = 0;

            DmxHalSetTagDealAttr(u32TagPortId, *pu32NewLow, *pu32NewMid, *pu32NewHigh);

            TagDealInfo->DmxAttachedPortID[DmxId] = u32TagPortId;
            
            DmxHalSetDemuxTagPortId(DmxId, u32TagPortId);
            
            break;
        }
        default:
            HI_DBG_DEMUX("not support %dbytes mode now.\n", pstAttr->u32TagLen);

            s32Ret = HI_ERR_DMX_INVALID_PARA;
            goto out;
    }

    s32Ret = HI_SUCCESS;
         
out:
    return s32Ret;
}

static HI_S32 TagDeal_ResetPort(HI_U32 DmxId, const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U32 *pu32Low, *pu32Mid, *pu32High;
    HI_U32 u32TagPortId1 = DMX_INVALID_PORT_ID, u32TagPortId2 = DMX_INVALID_PORT_ID, u32TagPortId = DMX_INVALID_PORT_ID;
    HI_S32 s32Ret = HI_FAILURE;
    HI_U32 index;

    u32TagPortId1 = TagDeal_FindPortByDmxId(DmxId);
    u32TagPortId2 = TagDeal_FindPortByTag(pstAttr);
    if (CHECKTAGPORTID(u32TagPortId1) && CHECKTAGPORTID(u32TagPortId2))  
    {
        if (u32TagPortId1 != u32TagPortId2) 
        {
            HI_DBG_DEMUX("demux(%u) have attached to another tag .\n", DmxId);
            s32Ret = HI_ERR_DMX_INVALID_PARA;
            goto out;
        }
    }
    else 
    {
        HI_DBG_DEMUX("input parameter invalid .\n");
        s32Ret = HI_ERR_DMX_INVALID_PARA;
        goto out;
    }

    u32TagPortId = u32TagPortId1; 
    
    pu32Low = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[0]);                   /* 0~4 bytes */
    pu32Mid = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4]);                /* 4~8 bytes */
    pu32High = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4 + 4]);         /* 8~12 bytes*/
    
    /* tag maybe shared by other demux */
    for (index = 0; index < DMX_CNT; index ++)
    {
        if (u32TagPortId == TagDealInfo->DmxAttachedPortID[index])
        {
            break;
        }
    }

    if (index == DMX_CNT)
    {
        TagDealInfo->TagPortAttrs[u32TagPortId].bEnabled = HI_FALSE;
        *pu32Low = 0;
        *pu32Mid = 0;
        *pu32High = 0;
        
        /* reset tag value*/
        DmxHalSetTagDealAttr(u32TagPortId, *pu32Low, *pu32Mid, *pu32High);
    }

    /* detach demux with tag deal port */
    TagDealInfo->DmxAttachedPortID[DmxId] = DMX_INVALID_PORT_ID;
    
    DmxHalSetDemuxTagPortId(DmxId, 0);
    
    s32Ret = HI_SUCCESS;

out:
    return s32Ret;
}

static HI_S32 TagDeal_Reset(HI_VOID)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U32 index;
    HI_S32 s32Ret = HI_FAILURE;

    for (index = 0; index < DMX_CNT ; index ++)
    {
         if (TagDealInfo->DmxAttachedPortID[index] != DMX_INVALID_PORT_ID)
        {
            break;
        }
    }

    /* if all tag deal port unused, disable the TS port tag deal mode */ 
    if (DMX_CNT == index)
    {
        s32Ret = DmxHalSetTagDealCtl(TagDealInfo->u32TSPortId, HI_FALSE, TagDealInfo->enSyncMod, TagDealInfo->u32TagLen);
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("disable tag deal for TS port(%u) failed.\n", TagDealInfo->u32TSPortId);
            goto out;
        }

        /* please refer to DMX_OsiInit tag initial value */
        TagDealInfo->bEnabled = HI_FALSE;
        TagDealInfo->u32TSPortId = DMX_INVALID_PORT_ID;
        TagDealInfo->enSyncMod = HI_UNF_DMX_TAG_HEAD_SYNC;
        TagDealInfo->u32TagLen = DMX_DEFAULT_TAG_LENGTH; /* bytes */

        for (index = 0; index < DMX_TAG_MAX_TS_WAY ; index++)
        {
            TagDealInfo->TagPortAttrs[index].bEnabled = HI_FALSE;
            TagDealInfo->TagPortAttrs[index].enSyncMod = TagDealInfo->enSyncMod;
            TagDealInfo->TagPortAttrs[index].u32TagLen = TagDealInfo->u32TagLen;

            memset(&(TagDealInfo->TagPortAttrs[index].au8Tag), 0, sizeof(TagDealInfo->TagPortAttrs[index].au8Tag));
        }

        for ( index = 0 ; index < DMX_CNT ; index ++ )
        {
            TagDealInfo->DmxAttachedPortID[index] = DMX_INVALID_PORT_ID;
        }
    }

    s32Ret = HI_SUCCESS;
    
out:
    return s32Ret;
}

static HI_S32 AttachDmxTagDealPort(HI_U32 DmxId, const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];

    HI_S32 s32Ret = HI_FAILURE;
    
    if (HI_TRUE == TagDealInfo->bEnabled)
    {
        /* ensure tag deal for same TS port */
        if (DmxInfo->PortId != TagDealInfo->u32TSPortId)
        {
            HI_DBG_DEMUX("tag deal enabled for TSPort(%u) now, not for TSPort(%u).\n", TagDealInfo->u32TSPortId, DmxInfo->PortId);
            s32Ret = HI_ERR_DMX_INVALID_PARA;
            goto out;
        }

        s32Ret = TagDeal_CfgPort(DmxId, pstAttr);
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("attach tag deal port to dmx(%u) failed when tag deal enabled.\n", DmxId);
            goto out;
        }
    }
    else  /* tag deal have not enable */
    {
        s32Ret = TagDeal_CfgPort(DmxId, pstAttr);
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("attach tag deal port to dmx(%u) failed when tag deal disabled.\n", DmxId);
            goto out;
        }

        /* enable tag deal mode */
        TagDealInfo->bEnabled = HI_TRUE;
        TagDealInfo->enSyncMod = pstAttr->enSyncMod;
        TagDealInfo->u32TagLen = pstAttr->u32TagLen;
        TagDealInfo->u32TSPortId = DmxInfo->PortId;
        
        s32Ret = DmxHalSetTagDealCtl(TagDealInfo->u32TSPortId, HI_TRUE, TagDealInfo->enSyncMod, TagDealInfo->u32TagLen);    
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("enable tag deal for TS port(%u) failed.\n", TagDealInfo->u32TSPortId);
            goto out;
        }
    }

    s32Ret = HI_SUCCESS;

out:
     return s32Ret;
}

static HI_S32 DetachDmxTagDealPort(HI_U32 DmxId, const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];
    HI_S32 s32Ret = HI_FAILURE;

    if (HI_TRUE == TagDealInfo->bEnabled)
    {
        /* ensure tag deal for same TS port */
        if (DmxInfo->PortId != TagDealInfo->u32TSPortId)
        {
            HI_DBG_DEMUX("tag deal enabled for TSPort(%u), not for TSPort(%u).\n", TagDealInfo->u32TSPortId, DmxInfo->PortId);
            s32Ret = HI_ERR_DMX_INVALID_PARA;
            goto out;
        }
    }

    s32Ret = TagDeal_ResetPort(DmxId, pstAttr);
    if (HI_SUCCESS != s32Ret)
    {
        goto out;
    }

    s32Ret = TagDeal_Reset();
    if (HI_SUCCESS != s32Ret)
    {
        goto out;
    }

    s32Ret = HI_SUCCESS;
out:
    return s32Ret;
}

HI_S32  DMX_OsiGetTagAttr(const HI_U32 DmxId, HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_U32 *pu32Low, *pu32Mid, *pu32High, *pu32OldLow, *pu32OldMid, *pu32OldHigh;
    HI_U32 u32TagPortId = DMX_INVALID_PORT_ID;

    pu32Low = (HI_U32 *)&(pstAttr->au8Tag[0]);                   /* 0~4 bytes */
    pu32Mid = (HI_U32 *)&(pstAttr->au8Tag[4]);                /* 4~8 bytes */
    pu32High = (HI_U32 *)&(pstAttr->au8Tag[4 + 4]);         /* 8~12 bytes*/

    u32TagPortId  = TagDeal_FindPortByDmxId(DmxId);
    if (CHECKTAGPORTID(u32TagPortId)) /* get dest tag port attr */
    {
        pstAttr->bEnabled = TagDealInfo->TagPortAttrs[u32TagPortId].bEnabled;
        pstAttr->enSyncMod = TagDealInfo->enSyncMod;
        pstAttr->u32TagLen = TagDealInfo->u32TagLen;

        pu32OldLow = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[0]);                   /* 0~4 bytes */
        pu32OldMid = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4]);                /* 4~8 bytes */
        pu32OldHigh = (HI_U32 *)&(TagDealInfo->TagPortAttrs[u32TagPortId].au8Tag[4 + 4]);         /* 8~12 bytes*/

        *pu32Low = *pu32OldLow;
        *pu32Mid = *pu32OldMid;
        *pu32High = *pu32OldHigh;
    }
    else  /* get default attr */
    {
        pstAttr->bEnabled = HI_FALSE;
        pstAttr->enSyncMod = TagDealInfo->enSyncMod;
        pstAttr->u32TagLen = TagDealInfo->u32TagLen;

        *pu32Low = 0;
        *pu32Mid = 0;
        *pu32High = 0;
    }

    return HI_SUCCESS;

}

HI_S32  DMX_OsiSetTagAttr(const HI_U32 DmxId, const HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_Sub_DevInfo_S  *DmxInfo = &g_pDmxDevOsi->SubDevInfo[DmxId];
    HI_S32 s32Ret = HI_FAILURE;

    if (DMX_INVALID_PORT_ID == DmxInfo->PortId)
    {
        HI_DBG_DEMUX("no found TS port attached to the demux(%d).\n", DmxId);
        s32Ret = HI_ERR_DMX_NOATTACH_PORT;
        goto out;
    }
    
    if (pstAttr->bEnabled == HI_TRUE) /* attach dmx to tag deal port */
    {        
        s32Ret = AttachDmxTagDealPort(DmxId, pstAttr);
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("attach demux to tag deal port(DmxId:%u, TSPortId:%u) failed.\n", DmxId, DmxInfo->PortId);
            goto out;
        }
        
    }
    else  /* detach dmx to tag deal port and free it */
    { 
        s32Ret = DetachDmxTagDealPort(DmxId, pstAttr);
        if (HI_SUCCESS != s32Ret)
        {
            HI_DBG_DEMUX("detach demux to tag deal port(DmxId:%u, TSPortId:%u) failed.\n", DmxId, DmxInfo->PortId);
            goto out;
        }
    }

    s32Ret = HI_SUCCESS;

out:
    return s32Ret;
}

HI_S32 DMX_OsiGetTagPortId(const HI_U32 DmxId, HI_U32 *TagPortId)
{
    HI_S32 s32Ret     = HI_ERR_DMX_NOATTACH_PORT;
    HI_U32 u32TagPortId = DMX_INVALID_PORT_ID;
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi->TagDealInfo;

    u32TagPortId = TagDeal_FindPortByDmxId(DmxId);
    if (CHECKTAGPORTID(u32TagPortId) && HI_TRUE == TagDealInfo->TagPortAttrs[u32TagPortId].bEnabled)
    {
        *TagPortId = u32TagPortId;
        s32Ret = HI_SUCCESS;
    }
    else
    {
        s32Ret = HI_FAILURE;
    }
    
    return s32Ret;
}

HI_S32 DMX_OsiGetTagPortAttr(const HI_U32 TagPortId, HI_UNF_DMX_TAG_ATTR_S *pstAttr)
{
    DMX_TagDeal_Info_S * TagDealInfo = &g_pDmxDevOsi ->TagDealInfo;

    if (CHECKTAGPORTID(TagPortId))
    {
        pstAttr->bEnabled = TagDealInfo->TagPortAttrs[TagPortId].bEnabled;
        pstAttr->enSyncMod = TagDealInfo->enSyncMod;
        pstAttr->u32TagLen = TagDealInfo->u32TagLen;  
        memcpy(pstAttr->au8Tag, TagDealInfo->TagPortAttrs[TagPortId].au8Tag, sizeof(pstAttr->au8Tag));
    }
    
    return HI_SUCCESS;
}

HI_VOID DMX_OsiResumeTag(HI_VOID)
{
    DMX_TagDeal_Info_S *TagDealInfo = &g_pDmxDevOsi->TagDealInfo;
    HI_S32 s32Ret = HI_FAILURE;
    HI_UNF_DMX_TAG_ATTR_S attr;
    HI_U32 index;
    
    if (TagDealInfo->bEnabled)
    {
         /* reset tag deal soft state */
        TagDealInfo->bEnabled = HI_FALSE;
        
        for ( index = 0 ; index < DMX_CNT ; index++ )
        {
            DMX_OsiGetTagAttr(index, &attr);
            
            s32Ret = DMX_OsiSetTagAttr(index, &attr);
            if (HI_SUCCESS != s32Ret)
            {
                HI_DBG_DEMUX("try to reattach dmx(%u) to tag port failed after resume.\n", index);
            }
        }
    }
}

#endif

