/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hifb_main.c
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
#include <linux/file.h>
#include <linux/slab.h>
#include <linux/mm.h>

#include <linux/fb.h>
#include <asm/uaccess.h>

#include <asm/types.h>
#include <asm/stat.h>
#include <asm/fcntl.h>

#include <linux/interrupt.h>
#include "hi_module.h"
#include "hi_drv_module.h"
#include "hi_drv_proc.h"
#include "drv_pdm_ext.h"


#include "hifb_drv.h"
#include "hifb.h"
#include "hifb_p.h"
#include "hifb_comm.h"

#ifdef CFG_HIFB_LOGO_SUPPORT
#include "hifb_logo.h"
#endif

#ifdef CFG_HIFB_FENCE_SUPPORT  
#include "hifb_fence.h"
#endif

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
#include "hifb_scrolltext.h"
#endif

#ifdef CONFIG_DMA_SHARED_BUFFER
#include "hifb_dmabuf.h"
#endif

/**
 **���з����仯�����ڵ�ͷ�ļ�
 **/
#include "hifb_config.h"

/***************************** Macro Definition ******************************/

//#define CFG_HIFB_SUPPORT_CONSOLE
//#define CFG_HIFB_PROC_DEBUG


/**
 **mod init this var
 **/
#define HIFB_MAX_WIDTH(u32LayerId)     g_pstCap[u32LayerId].u32MaxWidth
#define HIFB_MAX_HEIGHT(u32LayerId)    g_pstCap[u32LayerId].u32MaxHeight
#define HIFB_MIN_WIDTH(u32LayerId)     g_pstCap[u32LayerId].u32MinWidth
#define HIFB_MIN_HEIGHT(u32LayerId)    g_pstCap[u32LayerId].u32MinHeight

#define IS_STEREO_SBS(par)  ((par->st3DInfo.enOutStereoMode == HIFB_STEREO_SIDEBYSIDE_HALF))
#define IS_STEREO_TAB(par)  ((par->st3DInfo.enOutStereoMode == HIFB_STEREO_TOPANDBOTTOM))
#define IS_STEREO_FPK(par)  ((par->st3DInfo.enOutStereoMode == HIFB_STEREO_FRMPACKING))

#define IS_2BUF_MODE(par)  ((par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE || par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE_IMMEDIATE))
#define IS_1BUF_MODE(par)  ((par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_ONE))


#define FBNAME "HI_FB"

/*************************** Structure Definition ****************************/
#ifdef CFG_HIFB_FENCE_SUPPORT  
	static HIFB_SYNC_INFO_S s_SyncInfo;
#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE
	static HI_BOOL  g_bProcDebug = HI_FALSE;
#endif

/** mem size of layer.hifb will allocate mem: **/
static char* video = "";
module_param(video, charp, S_IRUGO);

static char* tc_wbc = "off";
module_param(tc_wbc, charp, S_IRUGO);


HIFB_DRV_OPS_S s_stDrvOps;
HIFB_DRV_TDEOPS_S s_stDrvTdeOps;

/* to save layer id and layer size */
HIFB_LAYER_S s_stLayer[HIFB_MAX_LAYER_NUM];

const static HIFB_CAPABILITY_S *g_pstCap;

#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
	/*define this array to save the private info of scrolltext layer*/
	HIFB_SCROLLTEXT_INFO_S s_stTextLayer[HIFB_LAYER_ID_BUTT];
#endif


/*config layer size
	1: config layer memory size from video params
	2: config layer memory size from cfg.mak
	3: config layer memory size when usr opened layer*/
HI_U32 g_u32LayerSize[HIFB_MAX_LAYER_NUM] = 
{
	/***********HD0**************/
	#ifdef CFG_HI_HD0_FB_VRAM_SIZE
		CFG_HI_HD0_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********HD1**************/
	#ifdef CFG_HI_HD1_FB_VRAM_SIZE
		CFG_HI_HD1_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********HD2**************/
	#ifdef CFG_HI_HD2_FB_VRAM_SIZE
		CFG_HI_HD2_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********HD3**************/
	#ifdef CFG_HI_HD3_FB_VRAM_SIZE
		CFG_HI_HD3_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********SD0**************/
	#ifdef CFG_HI_SD0_FB_VRAM_SIZE
		CFG_HI_SD0_FB_VRAM_SIZE,
	#else
        0,
	#endif
	/***********SD1**************/
	#ifdef CFG_HI_SD1_FB_VRAM_SIZE
		CFG_HI_SD1_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********SD2**************/
	#ifdef CFG_HI_SD2_FB_VRAM_SIZE
		CFG_HI_SD2_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********SD3**************/
	#ifdef CFG_HI_SD3_FB_VRAM_SIZE
		CFG_HI_SD3_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********AD0**************/
	#ifdef CFG_HI_AD0_FB_VRAM_SIZE
		CFG_HI_AD0_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********AD1**************/
	#ifdef CFG_HI_AD1_FB_VRAM_SIZE
		CFG_HI_AD1_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********AD2**************/
	#ifdef CFG_HI_AD2_FB_VRAM_SIZE
		CFG_HI_AD2_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********AD3**************/
	#ifdef CFG_HI_AD3_FB_VRAM_SIZE
		CFG_HI_AD3_FB_VRAM_SIZE,
	#else
		0,
	#endif
	/***********SOFT CURSOR******/
	#ifdef CFG_HI_CURSOR_FB_VRAM_SIZE
		CFG_HI_CURSOR_FB_VRAM_SIZE,
	#else
		0,
	#endif
};

/********************** Global Variable declaration **************************/

/* default fix information */
static struct fb_fix_screeninfo s_stDefFix[HIFB_LAYER_TYPE_BUTT] =
{
    {
        .id          = "hifb",
        .type        = FB_TYPE_PACKED_PIXELS,
        .visual      = FB_VISUAL_TRUECOLOR,
        .xpanstep    = 1,
        .ypanstep    = 1,
        .ywrapstep   = 0,
        .line_length = HIFB_HD_DEF_STRIDE,
        .accel       = FB_ACCEL_NONE,
        .mmio_len    = 0,
        .mmio_start  = 0,
    },
    {
        .id          = "hifb",
        .type        = FB_TYPE_PACKED_PIXELS,
        .visual      = FB_VISUAL_TRUECOLOR,
        .xpanstep    = 1,
        .ypanstep    = 1,
        .ywrapstep   = 0,
        .line_length = HIFB_SD_DEF_STRIDE,
        .accel       = FB_ACCEL_NONE,
        .mmio_len    = 0,
        .mmio_start  = 0,
    },
    {
        .id          = "hifb",
        .type        = FB_TYPE_PACKED_PIXELS,
        .visual      = FB_VISUAL_TRUECOLOR,
        .xpanstep    = 1,
        .ypanstep    = 1,
        .ywrapstep   = 0,
        .line_length = HIFB_AD_DEF_STRIDE,
        .accel       = FB_ACCEL_NONE,
        .mmio_len    = 0,
        .mmio_start  = 0,
    },
    {
	    .id          = "hifb",
	    .type        = FB_TYPE_PACKED_PIXELS,
	    .visual      = FB_VISUAL_TRUECOLOR,
	    .xpanstep    = 1,
	    .ypanstep    = 1,
	    .ywrapstep   = 0,
	    .line_length = HIFB_AD_DEF_STRIDE,
	    .accel       = FB_ACCEL_NONE,
	    .mmio_len    = 0,
	    .mmio_start  = 0,
    }
};


/**
 ** default variable information
 ** default fmt is argb1555,because argb1555 is always support
 ** Ĭ��ʹ��argb1555,�����֧�ֵã�����24/32��һ��֧��
 **/
static struct fb_var_screeninfo s_stDefVar[HIFB_LAYER_TYPE_BUTT] =
{
    /*for HD layer*/
    {
        .xres			= HIFB_HD_DEF_WIDTH,
        .yres			= HIFB_HD_DEF_HEIGHT,
        .xres_virtual	= HIFB_HD_DEF_WIDTH,
        .yres_virtual	= HIFB_HD_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= { 5, 5, 0},
        .blue			= { 0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1, /* pixel clock in ps (pico seconds) */
        .left_margin	= -1, /* time from sync to picture	*/
        .right_margin	= -1, /* time from picture to sync	*/
        .upper_margin	= -1, /* time from sync to picture	*/
        .lower_margin	= -1,
        .hsync_len		= -1, /* length of horizontal sync	*/
        .vsync_len		= -1, /* length of vertical sync	*/
    },
    /*for SD layer*/
    {
        .xres			= HIFB_SD_DEF_WIDTH,
        .yres			= HIFB_SD_DEF_HEIGHT,
        .xres_virtual	= HIFB_SD_DEF_WIDTH,
        .yres_virtual	= HIFB_SD_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= { 5, 5, 0},
        .blue			= { 0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1, /* pixel clock in ps (pico seconds) */
        .left_margin	= -1, /* time from sync to picture	*/
        .right_margin	= -1, /* time from picture to sync	*/
        .upper_margin	= -1, /* time from sync to picture	*/
        .lower_margin	= -1,
        .hsync_len		= -1, /* length of horizontal sync	*/
        .vsync_len		= -1, /* length of vertical sync	*/
    },
    /*for AD layer*/
    {
        .xres			= HIFB_AD_DEF_WIDTH,
        .yres			= HIFB_AD_DEF_HEIGHT,
        .xres_virtual	= HIFB_AD_DEF_WIDTH,
        .yres_virtual	= HIFB_AD_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= { 5, 5, 0},
        .blue			= { 0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1, /* pixel clock in ps (pico seconds) */
        .left_margin	= -1, /* time from sync to picture	*/
        .right_margin	= -1, /* time from picture to sync	*/
        .upper_margin	= -1, /* time from sync to picture	*/
        .lower_margin	= -1,
        .hsync_len		= -1, /* length of horizontal sync	*/
        .vsync_len		= -1, /* length of vertical sync	*/
    },
     /*for CURSOR layer*/
    {
        .xres			= HIFB_CURSOR_DEF_WIDTH,
        .yres			= HIFB_CURSOR_DEF_HEIGHT,
        .xres_virtual	= HIFB_CURSOR_DEF_WIDTH,
        .yres_virtual	= HIFB_CURSOR_DEF_HEIGHT,
        .xoffset        = 0,
        .yoffset        = 0,
        .bits_per_pixel = HIFB_DEF_DEPTH,
        .red			= {10, 5, 0},
        .green			= { 5, 5, 0},
        .blue			= { 0, 5, 0},
        .transp			= {15, 1, 0},
        .activate		= FB_ACTIVATE_NOW,
        .pixclock		= -1, /* pixel clock in ps (pico seconds) */
        .left_margin	= -1, /* time from sync to picture	*/
        .right_margin	= -1, /* time from picture to sync	*/
        .upper_margin	= -1, /* time from sync to picture	*/
        .lower_margin	= -1,
        .hsync_len		= -1, /* length of horizontal sync	*/
        .vsync_len		= -1, /* length of vertical sync	*/
    }
};

/**
 ** bit filed info of color fmt, the order must be the same as HIFB_COLOR_FMT_E 
 **/
HIFB_ARGB_BITINFO_S s_stArgbBitField[HIFB_MAX_PIXFMT_NUM] =
{   /*RGB565*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*RGB888*/
    {
        .stRed    = {16, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB444*/
    {
        .stRed    = {8, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {0, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB555*/
    {
        .stRed    = {10, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*KRGB888*/
    {
        .stRed    = {16,8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ARGB4444*/
    {
        .stRed    = {8, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {0, 4, 0},
        .stTransp = {12, 4, 0},
    },
    /*ARGB1555*/
    {
        .stRed    = {10, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {15, 1, 0},
    },
    /*ARGB8888*/
    {
        .stRed    = {16, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {24, 8, 0},
    },
    /*ARGB8565*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {0, 5, 0},
        .stTransp = {16, 8, 0},
    },
    /*RGBA4444*/
    {
        .stRed    = {12, 4, 0},
        .stGreen  = {8, 4, 0},
        .stBlue   = {4, 4, 0},
        .stTransp = {0, 4, 0},
    },
    /*RGBA5551*/
    {
        .stRed    = {11, 5, 0},
        .stGreen  = {6, 5, 0},
        .stBlue   = {1, 5, 0},
        .stTransp = {0, 1, 0},
    },    
    /*RGBA5658*/
    {
        .stRed    = {19, 5, 0},
        .stGreen  = {13, 6, 0},
        .stBlue   = {8, 5, 0},
        .stTransp = {0, 8, 0},
    },  
    /*RGBA8888*/
    {
        .stRed    = {24, 8, 0},
        .stGreen  = {16, 8, 0},
        .stBlue   = {8, 8, 0},
        .stTransp = {0, 8, 0},
    },
    /*BGR565*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {11, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*BGR888*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ABGR4444*/
    {
        .stRed    = {0, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {8, 4, 0},
        .stTransp = {12, 4, 0},
    },
    /*ABGR1555*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {10, 5, 0},
        .stTransp = {15, 1, 0},
    },
    /*ABGR8888*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {24, 8, 0},
    },
    /*ABGR8565*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 6, 0},
        .stBlue   = {11, 5, 0},
        .stTransp = {16, 8, 0},
    },
    /*KBGR444 16bpp*/
    {
        .stRed    = {0, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {8, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*KBGR555 16bpp*/
    {
        .stRed    = {0, 5, 0},
        .stGreen  = {5, 5, 0},
        .stBlue   = {10, 5, 0},
        .stTransp = {0, 0, 0},
    },
    /*KBGR888 32bpp*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {16, 8, 0},
        .stTransp = {0, 0, 0},
    },
    
    /*1bpp*/
    {
        .stRed    = {0, 1, 0},
        .stGreen  = {0, 1, 0},
        .stBlue   = {0, 1, 0},
        .stTransp = {0, 0, 0},
    },
    /*2bpp*/
    {
        .stRed    = {0, 2, 0},
        .stGreen  = {0, 2, 0},
        .stBlue   = {0, 2, 0},
        .stTransp = {0, 0, 0},
    },
    /*4bpp*/
    {
        .stRed    = {0, 4, 0},
        .stGreen  = {0, 4, 0},
        .stBlue   = {0, 4, 0},
        .stTransp = {0, 0, 0},
    },
    /*8bpp*/
    {
        .stRed    = {0, 8, 0},
        .stGreen  = {0, 8, 0},
        .stBlue   = {0, 8, 0},
        .stTransp = {0, 0, 0},
    },
    /*ACLUT44*/
    {
        .stRed    = {4, 4, 0},
        .stGreen  = {4, 4, 0},
        .stBlue   = {4, 4, 0},
        .stTransp = {0, 4, 0},
    },
    /*ACLUT88*/
    {
        .stRed    = {8, 8, 0},
        .stGreen  = {8, 8, 0},
        .stBlue   = {8, 8, 0},
        .stTransp = {0, 8, 0},
    }
};

/******************************* API declaration *****************************/
static HI_S32 hifb_refresh(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf, HIFB_LAYER_BUF_E enBufMode);
static HI_VOID hifb_select_antiflicker_mode(HIFB_PAR_S *pstPar);
static HI_S32 hifb_refreshall(struct fb_info *info);
static HI_S32 hifb_tde_callback(HI_VOID *pParaml, HI_VOID *pParamr);
static HI_S32 hifb_alloccanbuf(struct fb_info *info, HIFB_LAYER_INFO_S * pLayerInfo);
static HI_VOID hifb_3DMode_callback(HI_VOID * pParaml,HI_VOID * pParamr);
static HI_VOID hifb_assign_dispbuf(HI_U32 u32LayerId);
static HI_S32 hifb_setcolreg(unsigned regno, unsigned red, unsigned green,unsigned blue, unsigned transp, struct fb_info *info);
static HI_S32 hifb_read_proc(struct seq_file *p, HI_VOID *v);
static HI_S32 hifb_write_proc(struct file * file, const char __user * buf, size_t count, loff_t *ppos);


#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_clearallstereobuf(struct fb_info *info);
static HI_S32 hifb_checkandalloc_3dmem(HIFB_LAYER_ID_E enLayerId, HI_U32 u32BufferSize);
#endif



extern HI_S32 hifb_init_module_k(HI_VOID);
/******************************* API realization *****************************/


/***************************************************************************************
* func          : hifb_getfmtbyargb
* description   : CNcomment: ��argb���ж����ظ�ʽ CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HIFB_COLOR_FMT_E hifb_getfmtbyargb(
                                          struct fb_bitfield *red, 
                                          struct fb_bitfield *green,
                                          struct fb_bitfield *blue, 
                                          struct fb_bitfield *transp, 
                                          HI_U32 u32ColorDepth)
{

    HI_U32 i = 0;
    HI_U32 u32Bpp = 0;

    /* not support color palette low than 8bit*/
    if (u32ColorDepth < 8)
    {
        return  HIFB_FMT_BUTT;   
    }
    
    if (u32ColorDepth == 8)
    {
        return HIFB_FMT_8BPP;
    }

    for (i = 0; i < sizeof(s_stArgbBitField)/sizeof(HIFB_ARGB_BITINFO_S); i++)
    {
        if (  (hifb_bitfieldcmp(*red, s_stArgbBitField[i].stRed)        == 0)
            && (hifb_bitfieldcmp(*green, s_stArgbBitField[i].stGreen)   == 0)
            && (hifb_bitfieldcmp(*blue, s_stArgbBitField[i].stBlue)     == 0)
            && (hifb_bitfieldcmp(*transp, s_stArgbBitField[i].stTransp) == 0))
        {
            u32Bpp = hifb_getbppbyfmt(i);
            if (u32Bpp == u32ColorDepth)
            {
                return i;
            }
        }
    }
	
    switch(u32ColorDepth)
    {
        case 16:
            i = HIFB_FMT_RGB565;
            break;
        case 24:
            i = HIFB_FMT_RGB888;
            break;
        case 32:
            i = HIFB_FMT_ARGB8888;
            break;
        default:
            i = HIFB_FMT_BUTT;
            break;            
    }
    if(HIFB_FMT_BUTT != i)
    {
        *red    = s_stArgbBitField[i].stRed;
        *green  = s_stArgbBitField[i].stGreen;
        *blue   = s_stArgbBitField[i].stBlue;
        *transp = s_stArgbBitField[i].stTransp;
    }
    return i;
}


/***************************************************************************************
* func          : hifb_realloc_layermem
* description   : CNcomment: Ҫ���ڴ治�����·����ڴ� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 hifb_realloc_layermem(struct fb_info *info,HI_U32 u32BufSize)
{
	HI_CHAR name[32];
	HIFB_PAR_S *par;

	if (HI_NULL == info)
	{
		return HI_FAILURE;
	}
	
	par = (HIFB_PAR_S *)info->par;
	
	if (0 == u32BufSize)
	{
		return HI_SUCCESS;
	}
	      
    if (info->screen_base != HI_NULL)
    {
        hifb_buf_ummap(info->screen_base);
    }

    if (info->fix.smem_start != 0)
    {
        hifb_buf_freemem(info->fix.smem_start);
		HIFB_INFO("free the video memory, phyaddr: 0x%lx!\n", info->fix.smem_start);
    }
	
    /**
     ** Modify 16 to 32, preventing out of bound
     ** initialize the fix screen info 
     **/
	snprintf(name, sizeof(name),"HIFB_Fb%d", par->stBaseInfo.u32LayerID);
	name[sizeof(name) - 1] = '\0';
    info->fix.smem_start = hifb_buf_allocmem(name, u32BufSize);
    if (0 == info->fix.smem_start)
    {
        HIFB_ERROR("%s:failed to malloc the video memory, size: %d KBtyes!\n", name, u32BufSize/1024);
        return HI_FAILURE;
    }
    else
    {
        info->fix.smem_len = u32BufSize;
        /**
         ** initialize the virtual address and clear memory 
         **/
        info->screen_base = hifb_buf_map(info->fix.smem_start);
        if (HI_NULL == info->screen_base)
        {
            HIFB_WARNING("Failed to call map video memory, ""size:%d KBytes, start: 0x%lx\n",
                                                             info->fix.smem_len/1024, 
                                                             info->fix.smem_start);
        }
        else
        {
            memset(info->screen_base, 0x00, info->fix.smem_len);
        }
		
		HIFB_INFO("%s:success to malloc the video memory, size: %d KBtyes!\n", name, u32BufSize/1024);
    }

	return HI_SUCCESS;
	
}



/***************************************************************************************
* func          : hifb_checkmem_enough
* description   : CNcomment: �ж��ڴ��Ƿ��㹻 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 hifb_checkmem_enough(struct fb_info *info,HI_U32 u32Pitch,HI_U32 u32Height)
{
    HI_U32 u32BufferNum = 0;
    HI_U32 u32Buffersize = 0;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    switch(par->stExtendInfo.enBufMode){
        case HIFB_LAYER_BUF_DOUBLE:
        case HIFB_LAYER_BUF_DOUBLE_IMMEDIATE:
            u32BufferNum = 2;
            break;
        case HIFB_LAYER_BUF_ONE:
		case HIFB_LAYER_BUF_STANDARD:
            u32BufferNum = 1;
            break;
        default:
        	u32BufferNum = 0;
            break;
    }
	
    u32Buffersize = u32BufferNum * u32Pitch * u32Height;
	
    if(info->fix.smem_len >= u32Buffersize){
        return HI_SUCCESS;
    }else{
		HIFB_ERROR("memory is not enough!  now is %d u32Pitch %d u32Height %d expect %d\n",info->fix.smem_len,u32Pitch, u32Height,u32Buffersize);
		return HI_FAILURE;
    }
}


/***************************************************************************************
* func          : hifb_check_fmt
* description   : CNcomment: �ж����ظ�ʽ�Ƿ�Ϸ� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_check_fmt(struct fb_var_screeninfo *var, struct fb_info *info)
{

    HI_U32 u32MaxXRes = 0;
    HI_U32 u32MaxYRes = 0;
	HIFB_PAR_S *par    = NULL;
	HI_U32 u32LayerID  = 0;
    HIFB_COLOR_FMT_E enFmt = HIFB_FMT_BUTT;
    
	par = (HIFB_PAR_S *)info->par;
	u32LayerID = par->stBaseInfo.u32LayerID;

	/**
	 **�û������ÿɱ���Ļ��Ϣ
	 **/
    enFmt = hifb_getfmtbyargb(&var->red, 
                                &var->green, 
                                &var->blue,
                                &var->transp, 
                                var->bits_per_pixel);
	if (enFmt == HIFB_FMT_BUTT)
    {
        HIFB_ERROR("Unknown fmt(offset, length) \
			         r:(%d,%d,%d) ,              \
			         g:(%d,%d,%d),               \
			         b(%d,%d,%d),                \
			         a(%d,%d,%d),                \
			         bpp:%d!\n",                 \
                    var->red.offset,    var->red.length,    var->red.msb_right,   \
                    var->green.offset,  var->green.length,  var->green.msb_right, \
                    var->blue.offset,   var->blue.length,   var->blue.msb_right,  \
                    var->transp.offset, var->transp.length, var->transp.msb_right,\
                    var->bits_per_pixel);
        return -EINVAL;
    }

	/**
	 **��ʼ����ʱ���Ѿ���ȡ��g_pstCap��ֵ��Ϣ
	 **/
    if (  (!g_pstCap[par->stBaseInfo.u32LayerID].bColFmt[enFmt])
        || (!s_stDrvTdeOps.HIFB_DRV_TdeSupportFmt(enFmt) && par->stExtendInfo.enBufMode != HIFB_LAYER_BUF_STANDARD))
    {
        HIFB_ERROR("Unsupported PIXEL FORMAT!\n");
        return -EINVAL;
    }

    /**
     ** virtual resolution must be no less than minimal resolution 
     **/
    if (var->xres_virtual < HIFB_MIN_WIDTH(u32LayerID))
    {
        var->xres_virtual = HIFB_MIN_WIDTH(u32LayerID);
    }
    if (var->yres_virtual < HIFB_MIN_HEIGHT(u32LayerID))
    {
        var->yres_virtual = HIFB_MIN_HEIGHT(u32LayerID);
    }

    /**
     ** just needed to campare display resolution with virtual resolution, 
     ** because VO graphic layer can do scaler,display resolution >current 
     ** standard resolution
     **/  
    u32MaxXRes = var->xres_virtual;
    if (var->xres > u32MaxXRes)
    {
        var->xres = u32MaxXRes;
    }
    else if (var->xres < HIFB_MIN_WIDTH(u32LayerID))
    {
        var->xres = HIFB_MIN_WIDTH(u32LayerID);
    }
    
    u32MaxYRes = var->yres_virtual;
    if (var->yres > u32MaxYRes)
    {
        var->yres = u32MaxYRes;
    }
    else if (var->yres < HIFB_MIN_HEIGHT(u32LayerID))
    {
        var->yres = HIFB_MIN_HEIGHT(u32LayerID);
    }

    HIFB_INFO("xres:%d,   yres:%d,    xres_virtual:%d,    yres_virtual:%d\n",
                var->xres, var->yres, var->xres_virtual,  var->yres_virtual);

    /**
     ** check if the offset is valid
     **/
    if (   (var->xoffset > var->xres_virtual)
        || (var->yoffset > var->yres_virtual)
        || (var->xoffset + var->xres > var->xres_virtual)
        || (var->yoffset + var->yres > var->yres_virtual))
    {
        HIFB_ERROR("offset is invalid! xoffset:%d, yoffset:%d\n", var->xoffset, var->yoffset);
        return -EINVAL;
    }
	
	return HI_SUCCESS;
	
}



/***************************************************************************************
* func          : hifb_check_var
* description   : CNcomment: �жϲ����Ƿ�Ϸ� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    if (pstPar->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
    {
        HIFB_ERROR("cursor layer doesn't support this operation!\n");
        return HI_FAILURE;
    }
    return hifb_check_fmt(var, info);
}


/***************************************************************************************
* func          : hifb_3DData_Config
* description   : CNcomment: 3D�������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_3DData_Config(HIFB_LAYER_ID_E enLayerId, HIFB_BUFFER_S *pstBuffer, HIFB_BLIT_OPT_S *pstBlitOpt)
{
	HIFB_PAR_S *pstPar;
	struct fb_info *info;
	HI_S32 s32Ret;
	unsigned long lockflag;
	
	HIFB_BUFFER_S st3DBuf;
	
	info   = s_stLayer[enLayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)(info->par);

	spin_lock_irqsave(&pstPar->stBaseInfo.lock,lockflag);
	pstPar->stRunInfo.bNeedFlip        = HI_FALSE; /** ���ݻ�û�и�ֵ������Ҫˢ�� **/
	pstPar->stRunInfo.s32RefreshHandle = 0;        /** ���TDE�����              **/
	spin_unlock_irqrestore(&pstPar->stBaseInfo.lock,lockflag); 

	/**
	 ** config 3D buffer which set to hardware
	 **/
	memcpy(&st3DBuf.stCanvas, &pstPar->st3DInfo.st3DSurface, sizeof(HIFB_SURFACE_S));

	/**
	 ** Left Eye Region
	 **/   	   
	if (HIFB_STEREO_SIDEBYSIDE_HALF == pstPar->st3DInfo.enOutStereoMode)
	{
		st3DBuf.stCanvas.u32Width >>= 1;
	}
	else if (HIFB_STEREO_TOPANDBOTTOM == pstPar->st3DInfo.enOutStereoMode)
	{
		st3DBuf.stCanvas.u32Height >>= 1;
	}

	st3DBuf.UpdateRect.x = 0;
	st3DBuf.UpdateRect.y = 0;
	st3DBuf.UpdateRect.w = st3DBuf.stCanvas.u32Width;
	st3DBuf.UpdateRect.h = st3DBuf.stCanvas.u32Height;

	/**
	 **�ֲ�������TDE���¼���dst rect����һ������src �ڶ�������dst
	 **/
	s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstBuffer, &st3DBuf, pstBlitOpt, HI_TRUE);
	if (s32Ret < 0)
	{
	    HIFB_ERROR("tde blit error!\n");
	    return HI_FAILURE;
	} 

	pstPar->stRunInfo.bModifying          = HI_TRUE;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
	pstPar->stRunInfo.bModifying          = HI_FALSE;

    /** TDEˢ�¾�� **/
	pstPar->stRunInfo.s32RefreshHandle = s32Ret;
	
	return HI_SUCCESS;
	
}
#endif


/***************************************************************************************
* func          : hifb_assign_dispbuf
* description   : CNcomment: ����display buffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_assign_dispbuf(HI_U32 u32LayerId)
{

    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(info->par);
    HI_U32 u32BufSize = 0;
	HI_U32 u32InSize  = 0;
	
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (pstPar->bSetStereoMode)
    {
    
    	HI_U32 u32Stride;
        HI_U32 u32StartAddr;
        /**
         ** there's a limit from hardware that screen buf shoule be 16 bytes 
         ** aligned,maybe it's proper to get this info from drv adapter
         **/
        u32InSize = info->var.xres * info->var.bits_per_pixel >> 3;
		HI_HIFB_GetStride(u32InSize,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);
		/**
		 **info->var.yres ˫buffer�л���ַʹ��
		 **/
        u32BufSize = ((u32Stride * info->var.yres)+0xf)&0xfffffff0;

		/**
		 ** in 2buf and 1buf refresh mode, we can use N3D buffer to save 3D data
		 **/
		if (IS_2BUF_MODE(pstPar) || IS_1BUF_MODE(pstPar))
		{
			u32StartAddr = info->fix.smem_start;
			if (1 == pstPar->stRunInfo.u32BufNum)
	        {
	            pstPar->st3DInfo.u32DisplayAddr[0] = u32StartAddr;
				pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr;
	        }
	        else if (2 == pstPar->stRunInfo.u32BufNum)
	        {
	            pstPar->st3DInfo.u32DisplayAddr[0] = u32StartAddr;
	            pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr + u32BufSize;
	        }
			return;
		}
		else if ( (0 == pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart) 
                || (0 == pstPar->st3DInfo.st3DMemInfo.u32StereoMemLen)
                || (0 == pstPar->stRunInfo.u32BufNum))
		{
			return;
		}
		else
		{
			u32StartAddr = pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart;
		}

		if (1 == pstPar->stRunInfo.u32BufNum)
        {
            pstPar->st3DInfo.u32DisplayAddr[0] = u32StartAddr;
			pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr;
        }
        else if (2 == pstPar->stRunInfo.u32BufNum)
        {/** ʹ��˫buferr **/
        	pstPar->st3DInfo.u32DisplayAddr[0] = u32StartAddr;
        	if (pstPar->st3DInfo.enOutStereoMode ==  HIFB_STEREO_SIDEBYSIDE_HALF)
            	pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr + pstPar->st3DInfo.st3DSurface.u32Pitch / 2;
			else if (pstPar->st3DInfo.enOutStereoMode ==  HIFB_STEREO_TOPANDBOTTOM)
				pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr + pstPar->st3DInfo.st3DSurface.u32Pitch * pstPar->stExtendInfo.u32DisplayHeight/ 2;
			else
				pstPar->st3DInfo.u32DisplayAddr[1] = u32StartAddr + u32BufSize;
        }
    }
    else
#endif		
    {
        /**
         ** there's a limit from hardware that screen buf shoule be 16 bytes 
         ** aligned,maybe it's proper to get this info from drv adapter
         **/
        u32BufSize = ((info->fix.line_length * info->var.yres)+ 0xf) & 0xfffffff0;

        if (info->fix.smem_len == 0)
        {
            return;
        }
        else if ((info->fix.smem_len >= u32BufSize) && (info->fix.smem_len < u32BufSize * 2))
        {
            pstPar->stDispInfo.u32DisplayAddr[0] = info->fix.smem_start;
            pstPar->stDispInfo.u32DisplayAddr[1] = info->fix.smem_start;			 
        }
        else if (info->fix.smem_len >= u32BufSize * 2)
        {/** ����ʹ��˫buffer **/
            pstPar->stDispInfo.u32DisplayAddr[0] = info->fix.smem_start;
            pstPar->stDispInfo.u32DisplayAddr[1] = info->fix.smem_start + u32BufSize;
        }
    }

    return;
	
}

/***************************************************************************************
* func          : hifb_getupdate_rect
* description   : CNcomment: ��ȡͼ��ĸ������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_getupdate_rect(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf, HIFB_RECT *pstUpdateRect)
{
	HIFB_PAR_S *pstPar;
    struct fb_info *info;
	
	TDE2_RECT_S SrcRect   = {0};
	TDE2_RECT_S DstRect   = {0};
	TDE2_RECT_S InSrcRect = {0};
	TDE2_RECT_S InDstRect = {0};

	info     = s_stLayer[u32LayerId].pstInfo;
	pstPar   = (HIFB_PAR_S *)info->par;
	
	memset(&InDstRect, 0, sizeof(TDE2_RECT_S));

	SrcRect.u32Width  = pstCanvasBuf->stCanvas.u32Width;
	SrcRect.u32Height = pstCanvasBuf->stCanvas.u32Height;
	if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_SIDEBYSIDE_HALF)
	{
		DstRect.u32Width  = pstPar->stExtendInfo.u32DisplayWidth >> 1;
		DstRect.u32Height = pstPar->stExtendInfo.u32DisplayHeight;
	}
	else if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_TOPANDBOTTOM)
	{
		DstRect.u32Width  = pstPar->stExtendInfo.u32DisplayWidth;
		DstRect.u32Height = pstPar->stExtendInfo.u32DisplayHeight >> 1;
	}
	else
	{
		DstRect.u32Width  = pstPar->stExtendInfo.u32DisplayWidth;
		DstRect.u32Height = pstPar->stExtendInfo.u32DisplayHeight;
	}

	if(    SrcRect.u32Width  != DstRect.u32Width
		|| SrcRect.u32Height != DstRect.u32Height)
	{
		memcpy(&InSrcRect, &pstCanvasBuf->UpdateRect, sizeof(HIFB_RECT));
	    s_stDrvTdeOps.HIFB_DRV_CalScaleRect(&SrcRect, &DstRect, &InSrcRect, &InDstRect);
		memcpy(pstUpdateRect, &InDstRect, sizeof(HIFB_RECT));
	}
	else
	{
		memcpy(pstUpdateRect, &pstCanvasBuf->UpdateRect, sizeof(HIFB_RECT));
	}		

	return HI_SUCCESS;
	
}

/***************************************************************************************
* func			: hifb_backup_forebuf
* description	: CNcomment: ����ǰ������CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_S32 hifb_backup_forebuf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstBackBuf)
{
	HI_S32 s32Ret;	
	HI_U32 u32ForePhyAddr;
	HIFB_PAR_S *pstPar;
	HIFB_RECT  *pstForeUpdateRect;
    struct fb_info *info;
	HIFB_BUFFER_S stForeBuf;
	HIFB_BUFFER_S stBackBuf;
	HIFB_BLIT_OPT_S stBlitTmp;

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)info->par;

	memcpy(&stBackBuf, pstBackBuf, sizeof(HIFB_BUFFER_S));

	if (   pstPar->st3DInfo.enOutStereoMode != HIFB_STEREO_MONO
		&& pstPar->st3DInfo.enOutStereoMode != HIFB_STEREO_BUTT)
	{
		pstForeUpdateRect = &pstPar->st3DInfo.st3DUpdateRect;
		u32ForePhyAddr= pstPar->st3DInfo.u32DisplayAddr[1-pstPar->stRunInfo.u32IndexForInt];
	}
	else
	{
		pstForeUpdateRect = &pstPar->stDispInfo.stUpdateRect;
		u32ForePhyAddr= pstPar->stDispInfo.u32DisplayAddr[1-pstPar->stRunInfo.u32IndexForInt];
	}
	
	if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_SIDEBYSIDE_HALF)
	{
		stBackBuf.stCanvas.u32Width  = stBackBuf.stCanvas.u32Width >> 1;
	}
	else if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_TOPANDBOTTOM)
	{
		stBackBuf.stCanvas.u32Height = stBackBuf.stCanvas.u32Height >> 1;
	}
    
    /** backup fore buffer **/
    if (!hifb_iscontain(&stBackBuf.UpdateRect, pstForeUpdateRect))
    {
    	memcpy(&stForeBuf, &stBackBuf, sizeof(HIFB_BUFFER_S));
	    stForeBuf.stCanvas.u32PhyAddr = u32ForePhyAddr;
	    memcpy(&stForeBuf.UpdateRect, pstForeUpdateRect, sizeof(HIFB_RECT));        
	    memcpy(&stBackBuf.UpdateRect, &stForeBuf.UpdateRect , sizeof(HIFB_RECT));
	    memset(&stBlitTmp, 0x0, sizeof(stBlitTmp));
	
        s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stForeBuf, &stBackBuf, &stBlitTmp, HI_TRUE);
        if (s32Ret <= 0)
        {
            HIFB_ERROR("2buf  blit err 4!\n");
            return HI_FAILURE;
        }
    }

	return HI_SUCCESS;
}
/***************************************************************************************
* func          : hifb_wait_regconfig_work
* description   : CNcomment: �ȴ��Ĵ���������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_wait_regconfig_work(HIFB_LAYER_ID_E enLayerId)
{
	s_stDrvOps.HIFB_DRV_WaitVBlank(enLayerId);

	return HI_SUCCESS;
}
/***************************************************************************************
* func          : hifb_disp_setdispsize
* description   : CNcomment: set display size CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_disp_setdispsize(HI_U32 u32LayerId, HI_U32 u32Width, HI_U32 u32Height)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;   
    HI_U32 u32Pitch;
	
    if ((pstPar->stExtendInfo.u32DisplayWidth == u32Width) && (pstPar->stExtendInfo.u32DisplayHeight == u32Height))
    {
        return HI_SUCCESS;
    }    
	
    u32Pitch = u32Width * info->var.bits_per_pixel >> 3;
    u32Pitch = (u32Pitch + 0xf) & 0xfffffff0;
	
	if(HI_FAILURE == hifb_checkmem_enough(info, u32Pitch, u32Height))
	{
	   return HI_FAILURE;
	}		  
    
    pstPar->stExtendInfo.u32DisplayWidth  = u32Width;
    pstPar->stExtendInfo.u32DisplayHeight = u32Height;
	
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
  
    /** here we need to think about how to resist flicker again, 
     ** we use VO do flicker resist before , but now if the display H size is the 
     ** same as the screen, VO will not do flicker resist, so should choose TDE 
     ** to do flicker resist
     **/
    hifb_select_antiflicker_mode(pstPar);
	
    return HI_SUCCESS;
	
}


  /* we handle it by two case: 
      case 1 : if VO support Zoom, we only change screeen size, display size keep not change
      case 2: if VO can't support zoom, display size should keep the same as screen size*/
static HI_S32 hifb_disp_setscreensize(HI_U32 u32LayerId, HI_U32 u32Width, HI_U32 u32Height)
{
#ifndef CFG_HIFB_VIRTUAL_COORDINATE_SUPPORT
	HIFB_RECT stDispRect;
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    if (0 == u32Width || 0 == u32Height)
    {
        return HI_FAILURE;
    }	

    pstPar->stExtendInfo.u32ScreenWidth  = u32Width;
    pstPar->stExtendInfo.u32ScreenHeight = u32Height;

    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_OUTRECT;

    /* Here  we need to think about how to resist flicker again, we use VO do flicker resist before , but now if the display H size is the 
    	     same as the screen, VO will not do flicker resist, so should choose TDE to do flicker resist*/
    hifb_select_antiflicker_mode(pstPar);
#endif
    return HI_SUCCESS;
}

HI_S32 hifb_freeccanbuf(HIFB_PAR_S *par)
{
    if (HI_NULL != par->stDispInfo.stCanvasSur.u32PhyAddr)
    {
        hifb_buf_freemem(par->stDispInfo.stCanvasSur.u32PhyAddr);
    }
	
    par->stDispInfo.stCanvasSur.u32PhyAddr = 0;
   
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : hifb_allocstereobuf
* description   : CNcomment: ����3D buffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
HI_S32 hifb_freestereobuf(HIFB_PAR_S *par)
{

	/**
	 **����ɵ�3D buffer
	 **/
    if (HI_NULL != par->st3DInfo.st3DMemInfo.u32StereoMemStart)
    {
        hifb_buf_freemem(par->st3DInfo.st3DMemInfo.u32StereoMemStart);
    }
	
    par->st3DInfo.st3DMemInfo.u32StereoMemStart = 0;
    par->st3DInfo.st3DMemInfo.u32StereoMemLen   = 0;    
    par->st3DInfo.st3DSurface.u32PhyAddr        = 0;
    
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : hifb_clearstereobuf
* description   : CNcomment: ���3D buffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_clearstereobuf(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
	
    if(par->st3DInfo.st3DMemInfo.u32StereoMemStart && par->st3DInfo.st3DMemInfo.u32StereoMemLen)
    {
        HIFB_BLIT_OPT_S stOpt;
        memset(&stOpt, 0x0, sizeof(stOpt));
        par->st3DInfo.st3DSurface.u32PhyAddr = par->st3DInfo.st3DMemInfo.u32StereoMemStart;
		/**
		 **��3D surface
		 **/
		/**
		 **�������memset��tde���buffer�������ܲ����ж��?Ҫ�������൱�Ƿ������
		 **memset
		 **/
		s_stDrvTdeOps.HIFB_DRV_ClearRect(&(par->st3DInfo.st3DSurface), &stOpt);
    }
	
    return;
	
}
/***************************************************************************************
* func          : hifb_allocstereobuf
* description   : CNcomment: ����3D buffer CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_allocstereobuf(struct fb_info *info, HI_U32 u32BufSize)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_CHAR name[32] = "";

    if (0 == u32BufSize)
    {
        return HI_FAILURE;
    } 
    if (u32BufSize == par->st3DInfo.st3DMemInfo.u32StereoMemLen)
    {
        return HI_SUCCESS;
    }

    /**
     ** with old stereo buffer
     **/
    if (par->st3DInfo.st3DMemInfo.u32StereoMemStart)
    {
        /** free old buffer*/
        HIFB_INFO("free old stereo buffer\n");        
        hifb_freestereobuf(par);
    }


    /**
     **alloc new stereo buffer
     **/
    snprintf(name, sizeof(name), "HIFB_StereoBuf%d", par->stBaseInfo.u32LayerID);
    par->st3DInfo.st3DMemInfo.u32StereoMemStart = hifb_buf_allocmem(name, u32BufSize);
    if (0 == par->st3DInfo.st3DMemInfo.u32StereoMemStart)
    {   
        HIFB_ERROR("alloc stereo buffer no mem, u32BufSize:%d\n", u32BufSize);
        return HI_FAILURE;
    }
    /**
     **3d buffer��С
     **/
    par->st3DInfo.st3DMemInfo.u32StereoMemLen = u32BufSize;    

    HIFB_INFO("alloc new memory for stereo buffer success\n"); 

    return HI_SUCCESS;
	
}
#endif


/***************************************************************************************
* func          : hifb_set_par
* description   : CNcomment: ���ò��� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_set_par(struct fb_info *info)
{
	HI_S32 s32Ret     = HI_SUCCESS;
	HI_U32 u32Stride  = 0;
	HI_U32 u32BufSize = 0;
	HI_U32 u32InSize  = 0;
    HIFB_PAR_S *pstPar = NULL;
	
    HIFB_COLOR_FMT_E enFmt;
    pstPar = (HIFB_PAR_S *)info->par;    	

	switch(pstPar->stBaseInfo.u32LayerID){
		case HIFB_LAYER_HD_0:
		case HIFB_LAYER_HD_1:
		case HIFB_LAYER_HD_2:
		case HIFB_LAYER_HD_3:
			if(info->var.xres > CONFIG_HIFB_HD_LAYER_MAXWIDTH || info->var.yres > CONFIG_HIFB_HD_LAYER_MAXHEIGHT){
				HIFB_INFO("the hd input ui size is not support\n ");
				return HI_FAILURE;
			}
			break;
		case HIFB_LAYER_SD_0:
		case HIFB_LAYER_SD_1:
		case HIFB_LAYER_SD_2:
		case HIFB_LAYER_SD_3:
			if(info->var.xres > CONFIG_HIFB_SD_LAYER_MAXWIDTH || info->var.yres > CONFIG_HIFB_SD_LAYER_MAXHEIGHT){
				HIFB_INFO("the sd input ui size is not support\n ");
				return HI_FAILURE;
			}
			break;
		default:
		 	return HI_FAILURE;
	}
	
	/**
	 **������Ļ�ɱ���Ϣ����ȡ���ظ�ʽ
	 **/
	enFmt = hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);

	u32InSize = info->var.xres_virtual * info->var.bits_per_pixel >> 3;
	HI_HIFB_GetStride(u32InSize,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);

	/**
	 **open�г�ʼ��ͼ������Ϊfalse,pandisplay֮�������Ϊtrue��֮��Ϊtrue
	 **/
	if (!pstPar->bPanFlag)
	{/** �����õĲ����Ѿ�ˢ�¹��ˣ����������ò��� **/
		u32BufSize = u32Stride * info->var.yres_virtual;
		/**
		 **info->fix.smem_len��ʼ�����õģ�Ҫ����˫buffer
		 **/
    	if (u32BufSize > info->fix.smem_len)
    	{
    		s32Ret = hifb_realloc_layermem(info, u32BufSize);
			if (HI_FAILURE == s32Ret)
			{
				return HI_FAILURE;
			}

			/**
			 **ʹ�õ�һ���ڴ�
			 **/
			pstPar->stRunInfo.u32IndexForInt = 0;
			
			hifb_assign_dispbuf(pstPar->stBaseInfo.u32LayerID);

			pstPar->stRunInfo.bModifying          = HI_TRUE;
			pstPar->stRunInfo.u32ScreenAddr       = info->fix.smem_start;
        	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
        	pstPar->stRunInfo.bModifying          = HI_FALSE;
        	/**
        	 **DTS2015041701277, android fastplay to app
        	 **�ײ����ж��Ƿ񿪻�logo���ڣ�Ҫ�Ǵ��ڲ����µ�ַ
        	 **/
        	s_stDrvOps.HIFB_DRV_SetLayerAddr(pstPar->stBaseInfo.u32LayerID, info->fix.smem_start);
    	}	
	}
	else
	{
		s32Ret = hifb_checkmem_enough(info, u32Stride, info->var.yres_virtual);
		if (HI_FAILURE == s32Ret)
		{			
			return HI_FAILURE;
		}
	}

	/**
	 **����������ԭ����Ϊ�˿���LOGO����ʹ�õģ�����
	 **����Ҫ�ˣ�ͨ������������
	 **/
	if (!pstPar->bSetVar)
	{
		pstPar->bSetVar   = HI_TRUE;
		pstPar->bPanReady = HI_FALSE;
	}
	else
	{/** �������������pandisplay**/
		pstPar->bPanReady = HI_TRUE;
	}

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if(   (pstPar->bSetStereoMode)
        && (HIFB_LAYER_BUF_STANDARD == pstPar->stExtendInfo.enBufMode))
    {
		/**
		 ** the stride of 3D buffer
		 **/
		u32InSize = info->var.xres * info->var.bits_per_pixel >> 3;
		HI_HIFB_GetStride(u32InSize,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);
				
		/*config 3D surface par*/
		pstPar->st3DInfo.st3DSurface.enFmt    = enFmt;		
		pstPar->st3DInfo.st3DSurface.u32Width = info->var.xres;
		pstPar->st3DInfo.st3DSurface.u32Height= info->var.yres;

		pstPar->stRunInfo.bModifying          = HI_TRUE;
		pstPar->st3DInfo.st3DSurface.u32Pitch = u32Stride;
	    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
		pstPar->stRunInfo.bModifying          = HI_FALSE;

   		info->fix.line_length = u32Stride;
    }	

	/*If alloc 3D mem failed, change to 2D*/
	else
#endif		
    {        
        /* set the stride if stride change */
		u32InSize = info->var.xres_virtual * info->var.bits_per_pixel >> 3;
	    HI_HIFB_GetStride(u32InSize,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);
        
        if(  u32Stride != info->fix.line_length ||(info->var.yres != pstPar->stExtendInfo.u32DisplayHeight))
        {
        	pstPar->stRunInfo.bModifying     = HI_TRUE;
			info->fix.line_length            = u32Stride;
            hifb_assign_dispbuf(pstPar->stBaseInfo.u32LayerID);
            pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
			pstPar->stRunInfo.bModifying      = HI_FALSE;
        }               
    }

    if ((pstPar->stExtendInfo.enColFmt != enFmt))
    {/** ���ظ�ʽ�ı䣬��ʼ��������һ��pstPar->stExtendInfo.enColFmt **/

		hifb_freeccanbuf(pstPar);
        
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
		if(s_stTextLayer[pstPar->stBaseInfo.u32LayerID].bAvailable)
		{
			HI_U32 i;
			for (i = 0; i < SCROLLTEXT_NUM; i++)
			{
				if (s_stTextLayer[pstPar->stBaseInfo.u32LayerID].stScrollText[i].bAvailable)
				{
					hifb_freescrolltext_cachebuf(&(s_stTextLayer[pstPar->stBaseInfo.u32LayerID].stScrollText[i]));
					memset(&s_stTextLayer[pstPar->stBaseInfo.u32LayerID].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
				}
			}
		
			s_stTextLayer[pstPar->stBaseInfo.u32LayerID].bAvailable      = HI_FALSE;
			s_stTextLayer[pstPar->stBaseInfo.u32LayerID].u32textnum      = 0;
			s_stTextLayer[pstPar->stBaseInfo.u32LayerID].u32ScrollTextId = 0;
		}
#endif        
		pstPar->stRunInfo.bModifying   = HI_TRUE;
        pstPar->stExtendInfo.enColFmt = enFmt;
        pstPar->stRunInfo.u32ParamModifyMask  |= HIFB_LAYER_PARAMODIFY_FMT;
		pstPar->stRunInfo.bModifying = HI_FALSE;
		
    }   
    
    /* If xres or yres change */
    if (   info->var.xres != pstPar->stExtendInfo.u32DisplayWidth
        || info->var.yres != pstPar->stExtendInfo.u32DisplayHeight)
    {
        if ((0 == info->var.xres) || (0 == info->var.yres))
        {
            if (HI_TRUE == pstPar->stExtendInfo.bShow)
            {
            	pstPar->stRunInfo.bModifying          = HI_TRUE;				
                pstPar->stExtendInfo.bShow            = HI_FALSE;				
                pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
				pstPar->stRunInfo.bModifying          = HI_FALSE;
            }
        }
		
        hifb_disp_setdispsize  (pstPar->stBaseInfo.u32LayerID, info->var.xres, info->var.yres);
		hifb_assign_dispbuf(pstPar->stBaseInfo.u32LayerID);	
    }

    return 0;
	
}



/***************************************************************************************
* func          : hifb_pan_display
* description   : CNcomment: ��׼ˢ�����̣�android�������������һ�Σ����������
                             Ҫ�Ƿ�3D������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_pan_display(struct fb_var_screeninfo *var, struct fb_info *info)
{


    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_U32 u32DisplayAddr = 0;
    HI_U32 u32StartAddr   = info->fix.smem_start ;    
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	HI_S32 s32Ret;
#endif
	HI_U32 u32Align = 0xf;
	
	if(HIFB_LAYER_BUF_STANDARD != par->stExtendInfo.enBufMode)
	{/** ���Ǳ�׼ˢ�¾Ͳ������� **/
		return HI_SUCCESS;
	}

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	if (par->bSetStereoMode)
	{
		u32Align = 0x0;
	}
#endif

    if (var->bits_per_pixel >= 8)
    {
        u32DisplayAddr = (u32StartAddr + info->fix.line_length * var->yoffset
                       + var->xoffset * (var->bits_per_pixel >> 3))&(~u32Align);
    }
    else
    {
        u32DisplayAddr = (u32StartAddr + info->fix.line_length * var->yoffset
                       + var->xoffset * var->bits_per_pixel / 8) & (~u32Align);
    }
	
    if((info->var.bits_per_pixel == 24)&&((info->var.xoffset !=0)||(info->var.yoffset !=0)))
    {
        HI_U32 TmpData;

        TmpData = (u32StartAddr + info->fix.line_length * var->yoffset
                       + var->xoffset * (var->bits_per_pixel >> 3))/16/3;
        u32DisplayAddr = TmpData * 16 * 3;
    }


    /*stereo 3d  mode*/
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if(par->bSetStereoMode)
    {
    	/** ��׼ˢ�£�3Dģʽ **/
		HIFB_BLIT_OPT_S stBlitOpt;
		HIFB_BUFFER_S stDispBuf;

		if(HIFB_STEREO_FRMPACKING == par->st3DInfo.enOutStereoMode
			|| (0 == par->st3DInfo.st3DMemInfo.u32StereoMemStart))
        {
            par->stRunInfo.bModifying          = HI_TRUE;
    		par->stRunInfo.u32ScreenAddr       = u32DisplayAddr;
    		par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
            par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
            par->stRunInfo.bModifying          = HI_FALSE;
            return HI_SUCCESS;
        }

		/**config N3D display buffer that we blit to 3D buffer*/
		memset(&stDispBuf, 0x0, sizeof(stDispBuf));
		stDispBuf.stCanvas.enFmt      = par->stExtendInfo.enColFmt;
		stDispBuf.stCanvas.u32Pitch   = info->fix.line_length;
		stDispBuf.stCanvas.u32PhyAddr = u32DisplayAddr;
		stDispBuf.stCanvas.u32Width   = info->var.xres;
		stDispBuf.stCanvas.u32Height  = info->var.yres;
		
		stDispBuf.UpdateRect.x = 0;
		stDispBuf.UpdateRect.y = 0;
		stDispBuf.UpdateRect.w = info->var.xres;
		stDispBuf.UpdateRect.h = info->var.yres;
		/**end*/

		/**config N3D display buffer that we blit to 3D buffer*/
		par->st3DInfo.st3DSurface.enFmt = stDispBuf.stCanvas.enFmt;
		par->st3DInfo.st3DSurface.u32Width = stDispBuf.stCanvas.u32Width;
		par->st3DInfo.st3DSurface.u32Height = stDispBuf.stCanvas.u32Height;
		//memcpy(&par->st3DInfo.st3DSurface, &stDispBuf.stCanvas, sizeof(HIFB_SURFACE_S));
		//par->st3DInfo.st3DSurface.u32Pitch = u32Stride;
    		
		par->st3DInfo.st3DSurface.u32PhyAddr = par->st3DInfo.u32DisplayAddr[par->stRunInfo.u32IndexForInt];
		/**end*/
		
		memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));

		stBlitOpt.bScale = HI_TRUE;
		stBlitOpt.bRegionDeflicker = HI_TRUE; 
		if (par->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
		{
			stBlitOpt.enAntiflickerLevel = par->stBaseInfo.enAntiflickerLevel;
		}
    
		stBlitOpt.bCallBack   = HI_TRUE;
		stBlitOpt.pfnCallBack = hifb_tde_callback; /** �����������ڴ����**/
		stBlitOpt.pParam      = &(par->stBaseInfo.u32LayerID);
		
		/*blit display buffer to 3D buffer*/
        s32Ret = hifb_3DData_Config(par->stBaseInfo.u32LayerID, &stDispBuf, &stBlitOpt);
		if (HI_SUCCESS != s32Ret)
		{
			HIFB_ERROR("pandisplay config stereo data failure!");
			return HI_FAILURE;
		}
    }	
    else//mono mode
 #endif
    {        
        par->stRunInfo.bModifying          = HI_TRUE;
		par->stRunInfo.u32ScreenAddr       = u32DisplayAddr;
		par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
        par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
        par->stRunInfo.bModifying          = HI_FALSE;
        
        /*if the flag "FB_ACTIVATE_VBL" has been set, we should wait forregister update finish*/
        if ((var->activate & FB_ACTIVATE_VBL) && par->bVblank)
        {
            hifb_wait_regconfig_work(par->stBaseInfo.u32LayerID);
        }
    }


    if (!par->bPanReady)
    {
        par->bPanReady = HI_TRUE;
		#ifdef CFG_HIFB_LOGO_SUPPORT
		return HI_SUCCESS;
		#endif
    }
    
#ifdef CFG_HIFB_LOGO_SUPPORT		
	hifb_clear_logo(par->stBaseInfo.u32LayerID, HI_FALSE);
#endif	

 	if (!par->bPanFlag)
 	{
 		par->bPanFlag = HI_TRUE;
 	}
    
    par->bHwcRefresh = HI_FALSE;
    
    return HI_SUCCESS;
	
}



/***************************************************************************************
* func          : hifb_checkandalloc_3dmem
* description   : CNcomment: �ж�3D�ڴ��Ƿ��㹻������ӿ���set par �� 0buffer
                             ˢ���Լ�pan display��ʱ��ᱻ����   CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_checkandalloc_3dmem(HIFB_LAYER_ID_E enLayerId, HI_U32 u32BufferSize)
{

	HI_S32 s32Ret;
    HIFB_PAR_S *pstPar;
	struct fb_info *info;

	info = s_stLayer[enLayerId].pstInfo;
    pstPar = (HIFB_PAR_S *)info->par;    

	
	if(HIFB_STEREO_MONO == pstPar->st3DInfo.enOutStereoMode)
	{/** ��3D **/
		return HI_SUCCESS;
	}

	if(   pstPar->stExtendInfo.enBufMode != HIFB_LAYER_BUF_NONE
	   && pstPar->stExtendInfo.enBufMode != HIFB_LAYER_BUF_STANDARD)
	{
		return HI_SUCCESS;
	}
    if(    HIFB_LAYER_BUF_STANDARD == pstPar->stExtendInfo.enBufMode
		&& HIFB_STEREO_FRMPACKING  == pstPar->st3DInfo.enOutStereoMode)
    {
        return HI_SUCCESS;
    }
	
    mutex_lock(&pstPar->st3DInfo.st3DMemInfo.stStereoMemLock);

	/**
	 ** 1: allocate 3D buffer
	 ** ��ʼ��pstPar->st3DInfo.st3DMemInfo.u32StereoMemLenΪ0��������hifb_allocstereobuf
	 ** �͸�ֵ��
	 **/
	if (u32BufferSize > pstPar->st3DInfo.st3DMemInfo.u32StereoMemLen)
	{
		s32Ret = hifb_allocstereobuf(info, u32BufferSize);
        if (s32Ret != HI_SUCCESS)
        {
            HIFB_ERROR("alloc 3D buffer failure!, expect mem size: %d\n", u32BufferSize);
            mutex_unlock(&pstPar->st3DInfo.st3DMemInfo.stStereoMemLock);
            return s32Ret;
        }
		/**
		 **���ۺ����۵�ַ
		 **/
		pstPar->st3DInfo.st3DSurface.u32PhyAddr = pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart;
		pstPar->st3DInfo.u32rightEyeAddr        = pstPar->st3DInfo.st3DSurface.u32PhyAddr;		
        /** ʹ���Ŀ�buffer **/
		pstPar->stRunInfo.u32IndexForInt        = 0;

		hifb_clearstereobuf  (info);
		hifb_assign_dispbuf(pstPar->stBaseInfo.u32LayerID);
	}
	
    mutex_unlock(&pstPar->st3DInfo.st3DMemInfo.stStereoMemLock);
    
	return HI_SUCCESS;
	
}
#endif


/***************************************************************************************
* func          : hifb_tde_callback
* description   : CNcomment:  CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_tde_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{

    HI_U32 u32LayerId = *(HI_U32 *)pParaml;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(s_stLayer[u32LayerId].pstInfo->par);
	
#ifdef CFG_HIFB_FENCE_SUPPORT  
    #ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    	if(pstPar->bSetStereoMode)
    	{/** �л���ַ **/
    	    HI_U32 u32Index;
    	    u32Index = pstPar->stRunInfo.u32IndexForInt;
    		s_stDrvOps.HIFB_DRV_SetLayerAddr(u32LayerId, pstPar->st3DInfo.u32DisplayAddr[u32Index]);
    		pstPar->stRunInfo.u32ScreenAddr  = pstPar->st3DInfo.u32DisplayAddr[u32Index];
    		pstPar->st3DInfo.u32rightEyeAddr = pstPar->stRunInfo.u32ScreenAddr;
    		s_stDrvOps.HIFB_DRV_SetTriDimAddr(u32LayerId, pstPar->st3DInfo.u32rightEyeAddr);
            s_stDrvOps.HIFB_DRV_UpdataLayerReg(pstPar->stBaseInfo.u32LayerID);
            pstPar->stRunInfo.u32IndexForInt = (++u32Index) % pstPar->stRunInfo.u32BufNum;

    	}   
    #endif
#else
    {
        pstPar->stRunInfo.bNeedFlip = HI_TRUE;
    }
#endif
    return HI_SUCCESS;

}

static HI_VOID hifb_disp_setlayerpos(HI_U32 u32LayerId, HI_S32 s32XPos, HI_S32 s32YPos)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

	pstPar->stRunInfo.bModifying          = HI_TRUE;

	pstPar->stExtendInfo.stPos.s32XPos = s32XPos;
    pstPar->stExtendInfo.stPos.s32YPos = s32YPos;

    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
	pstPar->stRunInfo.bModifying          = HI_FALSE;
    return;
}

static HI_VOID hifb_buf_setbufmode(HI_U32 u32LayerId, HIFB_LAYER_BUF_E enLayerBufMode)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    /* in 0 buf mode ,maybe the stride or fmt will be changed! */
    if ((pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
        && (pstPar->stExtendInfo.enBufMode != enLayerBufMode))
    {
        pstPar->stRunInfo.bModifying = HI_TRUE;
        
        pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;

        pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;

        pstPar->stRunInfo.bModifying = HI_FALSE;
    }

    pstPar->stExtendInfo.enBufMode = enLayerBufMode;

}


/***************************************************************************************
* func          : hifb_disp_setdispsize
* description   : CNcomment: choose the module to do  flicker resiting, 
                             TDE or VOU ? the rule is as this ,the moudle 
                             should do flicker resisting who has do scaling CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_select_antiflicker_mode(HIFB_PAR_S *pstPar)
{
	HIFB_RECT stOutputRect;
    /**
     ** if the usr's configuration is no needed to do flicker resisting, 
     ** so no needed to do it  
     **/
   if (pstPar->stBaseInfo.enAntiflickerLevel == HIFB_LAYER_ANTIFLICKER_NONE)
   {
       pstPar->stBaseInfo.enAntiflickerMode = HIFB_ANTIFLICKER_NONE;
   }
   else
   {
       /**
        ** current standard no needed to do flicker resisting 
        **/
       if (!pstPar->stBaseInfo.bNeedAntiflicker)
       {
           pstPar->stBaseInfo.enAntiflickerMode = HIFB_ANTIFLICKER_NONE;
       }
       else
       {
       		s_stDrvOps.HIFB_DRV_GetLayerOutRect(pstPar->stBaseInfo.u32LayerID, &stOutputRect);
           /**
            ** VO has don scaling , so should do flicker resisting at the same time
            **/
           if ( (pstPar->stExtendInfo.u32DisplayWidth  != stOutputRect.w)
             || (pstPar->stExtendInfo.u32DisplayHeight != stOutputRect.h))
           {
               pstPar->stBaseInfo.enAntiflickerMode = HIFB_ANTIFLICKER_VO; 
           }
           else
           {
               pstPar->stBaseInfo.enAntiflickerMode = HIFB_ANTIFLICKER_TDE; 
           }
       }
   }
    
}
   

/***************************************************************************************
* func          : hifb_disp_setantiflickerlevel
* description   : CNcomment: ���ÿ������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_disp_setantiflickerlevel(HI_U32 u32LayerId, HIFB_LAYER_ANTIFLICKER_LEVEL_E enAntiflickerLevel)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;

    pstPar->stBaseInfo.enAntiflickerLevel = enAntiflickerLevel;
    hifb_select_antiflicker_mode(pstPar);

    return;
}

#define HIFB_CHECK_LAYERID(u32LayerId) do\
{\
    if (!g_pstCap[u32LayerId].bLayerSupported)\
    {\
        HIFB_ERROR("not support layer %d\n", u32LayerId);\
        return HI_FAILURE;\
    }\
}while(0);

#ifdef CFG_HIFB_CURSOR_SUPPORT
#define HIFB_CHECK_CURSOR_LAYERID(u32LayerId) do\
{\
 if (u32LayerId != HIFB_LAYER_CURSOR)\
    {\
        HIFB_ERROR("layer %d is not cursor layer!\n", u32LayerId);\
    	return HI_FAILURE;\
    }\
}while(0)
#endif


/***************************************************************************************
* func          : hifb_flip_screenaddr
* description   : CNcomment: ˢ����Ļ��ַ CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_flip_screenaddr(HI_U32 u32LayerId)
{

	HI_U32 u32Index;
    struct fb_info *info;
    HIFB_PAR_S *pstPar;    

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)(info->par);

    u32Index = pstPar->stRunInfo.u32IndexForInt;

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	if (pstPar->bSetStereoMode)
	{
		s_stDrvOps.HIFB_DRV_SetLayerAddr(u32LayerId, pstPar->st3DInfo.u32DisplayAddr[u32Index]);
		pstPar->stRunInfo.u32ScreenAddr  = pstPar->st3DInfo.u32DisplayAddr[u32Index];
		pstPar->st3DInfo.u32rightEyeAddr = pstPar->stRunInfo.u32ScreenAddr;
		s_stDrvOps.HIFB_DRV_SetTriDimAddr(u32LayerId, pstPar->st3DInfo.u32rightEyeAddr);
	}
	else
#endif        
	{
		s_stDrvOps.HIFB_DRV_SetLayerAddr(u32LayerId, pstPar->stDispInfo.u32DisplayAddr[u32Index]);
		pstPar->stRunInfo.u32ScreenAddr  = pstPar->stDispInfo.u32DisplayAddr[u32Index];
	}

#ifdef CFG_HIFB_COMPRESSION_SUPPORT		
	if (s_stDrvOps.HIFB_DRV_GetCmpSwitch(u32LayerId))
	{
		memcpy(&(pstPar->stDispInfo.stCmpRect), &pstPar->stDispInfo.stUpdateRect, sizeof(HIFB_RECT));
	}	
#endif

	/**
	 **bufer 1 and buffer 2�ڲ�ͣ�Ľ���
	 **/
    pstPar->stRunInfo.u32IndexForInt = (++u32Index) % pstPar->stRunInfo.u32BufNum;
    pstPar->stRunInfo.bFliped   = HI_TRUE;
    pstPar->stRunInfo.bNeedFlip = HI_FALSE;
	
	return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_frame_end_callback
* description   : CNcomment: ֡����call back CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_FENCE_SUPPORT  
static HI_VOID hifb_frame_end_callback(HI_VOID)
{
	s_SyncInfo.bFrameHit = HI_FALSE;

	while(atomic_read(&s_SyncInfo.s32RefreshCnt) > 0)
    {
    	/** ����һ֡���� **/
	s_SyncInfo.bFrameHit = HI_TRUE;
		atomic_dec(&s_SyncInfo.s32RefreshCnt);
        if(s_SyncInfo.pstTimeline)
        {/** ʱ���᲻Ϊ�� **/
		   /** 
			** timeline value ��1������ˢ��֡�ʹ������ٸ�fence��timeline��Ҫ�Ӷ��ٸ� 
			**/        	
		    sw_sync_timeline_inc(s_SyncInfo.pstTimeline, 1);
            s_SyncInfo.u32Timeline++;
        }
	}
	/** ֡�����жϻ��ѣ�����ˢ���� **/
    s_SyncInfo.FrameEndFlag = 1;
    wake_up_interruptible(&s_SyncInfo.FrameEndEvent);	
 
    return;
	
}
#endif


/***************************************************************************************
* func          : hifb_vo_callback
* description   : CNcomment: vo�жϴ��� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_vo_callback(HI_VOID *pParaml, HI_VOID *pParamr)
{

    HI_U32 *pu32LayerId = (HI_U32 *)pParaml;
    struct fb_info *info = s_stLayer[*pu32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)(info->par);
    struct timeval tv;
    HI_U32 u32NowTimeMs;
	
    /**
     ** ֡��ͳ��
     **/
    do_gettimeofday(&tv);  
    u32NowTimeMs = tv.tv_sec * 1000 + tv.tv_usec / 1000;
    if ((u32NowTimeMs - pstPar->stFrameInfo.u32StartTimeMs) >= 1000)
    {/** ˢ��֡�� **/
        pstPar->stFrameInfo.u32StartTimeMs = u32NowTimeMs;
        pstPar->stFrameInfo.u32Fps =  pstPar->stFrameInfo.u32RefreshFrame;
        pstPar->stFrameInfo.u32RefreshFrame = 0;
    }

    pstPar->stFrameInfo.bFrameHit = HI_FALSE;

    if (!pstPar->stRunInfo.bModifying)
    {
    	if(pstPar->stRunInfo.u32ParamModifyMask)
    	{/** �з����仯�͸��¼Ĵ��� **/
    		s_stDrvOps.HIFB_DRV_UpdataLayerReg(*pu32LayerId);
    	}
        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_SHOW)
        {
            s_stDrvOps.HIFB_DRV_EnableLayer(*pu32LayerId, pstPar->stExtendInfo.bShow);
            pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_SHOW;       
        }
        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_ALPHA)
        {
            s_stDrvOps.HIFB_DRV_SetLayerAlpha(*pu32LayerId, &pstPar->stExtendInfo.stAlpha);
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_ALPHA;
        }
        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_COLORKEY)
        {
            s_stDrvOps.HIFB_DRV_SetLayerKeyMask(*pu32LayerId, &pstPar->stExtendInfo.stCkey);
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_COLORKEY;
        }
        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_BMUL)
        {
            s_stDrvOps.HIFB_DRV_SetLayerPreMult(*pu32LayerId, pstPar->stBaseInfo.bPreMul);
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_BMUL;
        }
        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL)
        {
        	/**
        	 **ˮƽ����ϵ���ͼ���
        	 **��ֱ����ϵ���ͼ���
        	 **�ײ�ʵ��Ϊ��
        	 **/
            HIFB_DEFLICKER_S stDeflicker;

            stDeflicker.pu8HDfCoef  = pstPar->stBaseInfo.ucHDfcoef;
            stDeflicker.pu8VDfCoef  = pstPar->stBaseInfo.ucVDfcoef;
            stDeflicker.u32HDfLevel = pstPar->stBaseInfo.u32HDflevel;
            stDeflicker.u32VDfLevel = pstPar->stBaseInfo.u32VDflevel;

            s_stDrvOps.HIFB_DRV_SetLayerDeFlicker(*pu32LayerId, &stDeflicker);
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL;
        }
        if (   pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_INRECT
			|| pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_OUTRECT)
        {
            HIFB_RECT stInRect   = {0};

        	stInRect.x = pstPar->stExtendInfo.stPos.s32XPos;
            stInRect.y = pstPar->stExtendInfo.stPos.s32YPos;
			
            stInRect.w = (HI_S32)pstPar->stExtendInfo.u32DisplayWidth;
            stInRect.h = (HI_S32)pstPar->stExtendInfo.u32DisplayHeight;                												 				

            s_stDrvOps.HIFB_DRV_SetLayerInRect(*pu32LayerId, &stInRect);
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_INRECT;
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_OUTRECT;
		}
		/**
		 ** color format,stride,display address take effect only when user refreshing
		 ** ���ظ�ʽ���м�࣬��ʾ��ַֻ����ˢ�µ�ʱ����Ч�������жϸ��µ�ʱ�����ʾ�쳣
		 ** ����Ķ�����һ�����ú��漸�������
		 **/
		if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_REFRESH)
		{					
			if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_FMT)
	        {
	            if (  (pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
	                && pstPar->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr)
	            {/** ��buffer,ʹ��canvas��Ϣ **/
	                s_stDrvOps.HIFB_DRV_SetLayerDataFmt(*pu32LayerId, pstPar->stDispInfo.stUserBuffer.stCanvas.enFmt);
	            }
	            else
	            {/** �ǵ�buffer **/
	                s_stDrvOps.HIFB_DRV_SetLayerDataFmt(*pu32LayerId, pstPar->stExtendInfo.enColFmt);
	            }
				pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_FMT;
	        }
	        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_STRIDE)
	        {
				#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
		        	if (//(IS_STEREO_SBS(pstPar) || IS_STEREO_TAB(pstPar)))
		        		pstPar->bSetStereoMode)
		        	{	        					
		                s_stDrvOps.HIFB_DRV_SetLayerStride(*pu32LayerId, pstPar->st3DInfo.st3DSurface.u32Pitch);			
		        	}
					else
				#endif					
				{
					if ((pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
	                	&& pstPar->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr)
		            {
		                s_stDrvOps.HIFB_DRV_SetLayerStride(*pu32LayerId, pstPar->stDispInfo.stUserBuffer.stCanvas.u32Pitch);
		            }				
		            else				
		            {

						s_stDrvOps.HIFB_DRV_SetLayerStride(*pu32LayerId, info->fix.line_length);	                
		            }
				}	            

				pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_STRIDE;

	        }
	        if (pstPar->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_DISPLAYADDR)
	        {
	        
                pstPar->stFrameInfo.u32RefreshFrame++;
		    	pstPar->stFrameInfo.bFrameHit = HI_TRUE;
	            s_stDrvOps.HIFB_DRV_SetLayerAddr(*pu32LayerId, pstPar->stRunInfo.u32ScreenAddr);
				pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_DISPLAYADDR;

				#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
				/**
	 			 **ͼ�β�3D ��ʽʱ�������ݴ�ŵ�ַ�Ĵ���
	 			 **/
				if (pstPar->bSetStereoMode)
				{
					if ((pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_FRMPACKING)
						|| (0 != pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart)
						|| (HIFB_LAYER_BUF_STANDARD != pstPar->stExtendInfo.enBufMode))
					{
						pstPar->st3DInfo.u32rightEyeAddr = pstPar->stRunInfo.u32ScreenAddr;
					}
					else if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_SIDEBYSIDE_HALF)
					{
						pstPar->st3DInfo.u32rightEyeAddr = pstPar->stRunInfo.u32ScreenAddr + pstPar->st3DInfo.st3DSurface.u32Pitch / 2;
					}
					else if (pstPar->st3DInfo.enOutStereoMode == HIFB_STEREO_TOPANDBOTTOM)
					{
						pstPar->st3DInfo.u32rightEyeAddr = pstPar->stRunInfo.u32ScreenAddr + pstPar->st3DInfo.st3DSurface.u32Pitch * pstPar->stExtendInfo.u32DisplayHeight / 2;
					}
					s_stDrvOps.HIFB_DRV_SetTriDimAddr(*pu32LayerId, pstPar->st3DInfo.u32rightEyeAddr);
				}
         		#endif
				
	        }
		 	#ifdef CFG_HIFB_COMPRESSION_SUPPORT
			if (s_stDrvOps.HIFB_DRV_GetCmpSwitch(*pu32LayerId))
			{		
				if (   pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD
					|| pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
				{
					pstPar->stDispInfo.stCmpRect.x = 0;
					pstPar->stDispInfo.stCmpRect.y = 0;
					pstPar->stDispInfo.stCmpRect.w = pstPar->stExtendInfo.u32DisplayWidth;
					pstPar->stDispInfo.stCmpRect.h = pstPar->stExtendInfo.u32DisplayHeight;
				}				
			}
		    #endif
			pstPar->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_REFRESH;

		}	

        
    }
    
    if(  (pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE)
       &&(pstPar->stRunInfo.bNeedFlip == HI_TRUE))
    {/** ˫bufferģʽ����Ҫˢ�� **/
		hifb_flip_screenaddr(*pu32LayerId);
		/**
		 **���¼Ĵ���
		 **/
		s_stDrvOps.HIFB_DRV_UpdataLayerReg(*pu32LayerId);
    }
    else if (pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_ONE)
    {/** ��bufferģʽ��֪ͨWBC��дpGfxGp->unUpFlag.bits.RegUp **/
        s_stDrvOps.HIFB_DRV_UpdataLayerReg(*pu32LayerId);
    }
    

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    else if ((pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD)
        	&& pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart
        	&& pstPar->bSetStereoMode
        	&& (pstPar->stRunInfo.bNeedFlip == HI_TRUE))
    {
		hifb_flip_screenaddr(*pu32LayerId);
		s_stDrvOps.HIFB_DRV_UpdataLayerReg(*pu32LayerId);
    }
#endif


#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
	hifb_scrolltext_blit(*pu32LayerId);
#endif


#ifdef CFG_HIFB_COMPRESSION_SUPPORT
	if (s_stDrvOps.HIFB_DRV_GetCmpSwitch(*pu32LayerId))
	{	
		if (pstPar->stDispInfo.stCmpRect.w && pstPar->stDispInfo.stCmpRect.h)			
		{
			s_stDrvOps.HIFB_DRV_SetCmpRect(*pu32LayerId, &pstPar->stDispInfo.stCmpRect);	
			memset(&pstPar->stDispInfo.stCmpRect, 0, sizeof(HIFB_RECT));	
		}

		if (pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD
				|| pstPar->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
		{
			s_stDrvOps.HIFB_DRV_SetCmpDDROpen(*pu32LayerId, HI_TRUE);
		}
		else
		{
			s_stDrvOps.HIFB_DRV_SetCmpDDROpen(*pu32LayerId, HI_FALSE);
		}		
	}
#endif

    return HI_SUCCESS;

}

/***************************************************************************************
* func          : hifb_refresh_0buf
* description   : CNcomment: no display buffer refresh CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_0buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{

	HI_U32 u32StartAddr;
	HIFB_PAR_S *pstPar;
    struct fb_info *info;

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)info->par;

	/**
	 **��ʾ��ʼ��ַΪcanvas ��ַ
	 **/
	u32StartAddr = pstCanvasBuf->stCanvas.u32PhyAddr;

	/**
	 ** when you change para, the register not be change 
	 **/
    pstPar->stRunInfo.bModifying = HI_TRUE;
	pstPar->stRunInfo.u32ScreenAddr       = u32StartAddr;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;        
    
	pstPar->stDispInfo.stUserBuffer.stCanvas.u32Pitch = pstCanvasBuf->stCanvas.u32Pitch;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;    

	pstPar->stDispInfo.stUserBuffer.stCanvas.enFmt = pstCanvasBuf->stCanvas.enFmt;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;    

    hifb_disp_setdispsize(u32LayerId, pstCanvasBuf->stCanvas.u32Width, pstCanvasBuf->stCanvas.u32Height);

	memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;

	pstPar->stRunInfo.bModifying = HI_FALSE;    

    hifb_wait_regconfig_work(u32LayerId);
    
    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : hifb_refresh_1buf
* description   : CNcomment: one canvas buffer,one display buffer refresh CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_1buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
	HI_S32 s32Ret; 	
    HIFB_PAR_S *pstPar;              
    HIFB_BUFFER_S stDisplayBuf;
	struct fb_info *info;
	HIFB_OSD_DATA_S stOsdData;
	HIFB_BLIT_OPT_S stBlitOpt;

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)info->par;

    memset(&stBlitOpt,    0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stDisplayBuf, 0, sizeof(HIFB_BUFFER_S));

    stDisplayBuf.stCanvas.enFmt      = pstPar->stExtendInfo.enColFmt;
    stDisplayBuf.stCanvas.u32Height  = pstPar->stExtendInfo.u32DisplayHeight;
    stDisplayBuf.stCanvas.u32Width   = pstPar->stExtendInfo.u32DisplayWidth;
    stDisplayBuf.stCanvas.u32Pitch   = info->fix.line_length;
    stDisplayBuf.stCanvas.u32PhyAddr = pstPar->stDispInfo.u32DisplayAddr[0];
	
    s_stDrvOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);

    /**
     ** if display address is not the same as inital address, 
     ** please config it use old address
     **/
    if (   stOsdData.u32RegPhyAddr != pstPar->stDispInfo.u32DisplayAddr[0]
		&& pstPar->stDispInfo.u32DisplayAddr[0]) 
    {
        pstPar->stRunInfo.bModifying = HI_TRUE;
        pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
		pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
        pstPar->stRunInfo.u32ScreenAddr       = pstPar->stDispInfo.u32DisplayAddr[0];
        memset(info->screen_base, 0x00, info->fix.smem_len);
        pstPar->stRunInfo.bModifying = HI_FALSE;
    } 

    if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
    {
        stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
    }

    if (   pstCanvasBuf->stCanvas.u32Height != pstPar->stExtendInfo.u32DisplayHeight
        || pstCanvasBuf->stCanvas.u32Width != pstPar->stExtendInfo.u32DisplayWidth)
    {
        stBlitOpt.bScale          = HI_TRUE;
		/** ֻ��ΪTDE�ڲ��������ʹ��**/
        stDisplayBuf.UpdateRect.x = 0;
        stDisplayBuf.UpdateRect.y = 0;
        stDisplayBuf.UpdateRect.w = stDisplayBuf.stCanvas.u32Width;
        stDisplayBuf.UpdateRect.h = stDisplayBuf.stCanvas.u32Height;
    }
    else
    {
        stDisplayBuf.UpdateRect = pstCanvasBuf->UpdateRect;
    }

    stBlitOpt.bRegionDeflicker = HI_TRUE;
	
    s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stDisplayBuf, &stBlitOpt, HI_TRUE);
    if (s32Ret <= 0)
    {
        HIFB_ERROR("hifb_refresh_1buf blit err 5!\n");
        return HI_FAILURE;
    }
    
    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

#ifdef CFG_HIFB_COMPRESSION_SUPPORT	
	memcpy(&(pstPar->stDispInfo.stCmpRect), &stDisplayBuf.UpdateRect, sizeof(HIFB_RECT));
#endif

    return HI_SUCCESS;

}

/***************************************************************************************
* func          : hifb_refresh_2buf
* description   : CNcomment: �첽ˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_2buf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_U32 u32Index;
	HIFB_PAR_S *pstPar;
    struct fb_info *info;    
	unsigned long lockflag;   	
    HIFB_BUFFER_S stForeBuf;
    HIFB_BUFFER_S stBackBuf;      	
	HIFB_BLIT_OPT_S stBlitOpt;    
    HIFB_OSD_DATA_S stOsdData;

	info     = s_stLayer[u32LayerId].pstInfo;
	pstPar   = (HIFB_PAR_S *)info->par;
	u32Index = pstPar->stRunInfo.u32IndexForInt;
	
    memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stForeBuf, 0, sizeof(HIFB_BUFFER_S));
    memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));
    
    stBlitOpt.bCallBack = HI_TRUE;
	stBlitOpt.pfnCallBack = hifb_tde_callback;
    stBlitOpt.pParam = &(pstPar->stBaseInfo.u32LayerID);

    spin_lock_irqsave(&pstPar->stBaseInfo.lock,lockflag);
    pstPar->stRunInfo.bNeedFlip = HI_FALSE;
    pstPar->stRunInfo.s32RefreshHandle = 0;
    spin_unlock_irqrestore(&pstPar->stBaseInfo.lock,lockflag);

    s_stDrvOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);
    
    stBackBuf.stCanvas.enFmt      = pstPar->stExtendInfo.enColFmt;
	stBackBuf.stCanvas.u32Width   = pstPar->stExtendInfo.u32DisplayWidth;
    stBackBuf.stCanvas.u32Height  = pstPar->stExtendInfo.u32DisplayHeight;    
    stBackBuf.stCanvas.u32Pitch   = info->fix.line_length;
    stBackBuf.stCanvas.u32PhyAddr = pstPar->stDispInfo.u32DisplayAddr[u32Index];

    /**
     ** according to the hw arithemetic, calculate source and Dst fresh rectangle 
     **/	
    if (  (pstCanvasBuf->stCanvas.u32Height != pstPar->stExtendInfo.u32DisplayHeight)
        ||(pstCanvasBuf->stCanvas.u32Width  != pstPar->stExtendInfo.u32DisplayWidth))
    {
		
        stBlitOpt.bScale = HI_TRUE;
    }

	hifb_getupdate_rect(u32LayerId, pstCanvasBuf, &stBackBuf.UpdateRect);


    /**
     ** We should check is address changed, for make sure that the address 
     ** configed to the hw reigster is in effect
     **/	
    if (   (pstPar->stRunInfo.bFliped)
		&& (stOsdData.u32RegPhyAddr == pstPar->stDispInfo.u32DisplayAddr[1-u32Index]))
    { 
    	/**
    	 ** when fill background buffer, we need to backup fore buffer first
    	 **/
		hifb_backup_forebuf(u32LayerId, &stBackBuf);		
        /**
         ** clear union rect
         **/
        memset(&(pstPar->stDispInfo.stUpdateRect), 0, sizeof(HIFB_RECT));
        pstPar->stRunInfo.bFliped = HI_FALSE; 
    }

    /* update union rect */
    if ((pstPar->stDispInfo.stUpdateRect.w == 0) || (pstPar->stDispInfo.stUpdateRect.h == 0))
    {
        memcpy(&pstPar->stDispInfo.stUpdateRect, &stBackBuf.UpdateRect, sizeof(HIFB_RECT));
    }
    else
    {
        HIFB_UNITE_RECT(pstPar->stDispInfo.stUpdateRect, stBackBuf.UpdateRect);
    }  

    if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
    {
        stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
    }

    if (stBlitOpt.bScale == HI_TRUE)
    {
        /*actual area, calculate by TDE, here is just use for let pass the test */		
        stBackBuf.UpdateRect.x = 0;
        stBackBuf.UpdateRect.y = 0;
        stBackBuf.UpdateRect.w = stBackBuf.stCanvas.u32Width;
        stBackBuf.UpdateRect.h = stBackBuf.stCanvas.u32Height;
    }
    else
    {
        stBackBuf.UpdateRect = pstCanvasBuf->UpdateRect;
    }

    stBlitOpt.bRegionDeflicker = HI_TRUE;    
    /**
     ** blit with refresh rect 
     **/
    s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stBackBuf,&stBlitOpt, HI_TRUE);
    if (s32Ret <= 0)
    {
        HIFB_ERROR("2buf blit err7!\n");
        goto RET;
    }
    
    pstPar->stRunInfo.s32RefreshHandle = s32Ret;

    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

RET:    
    return HI_SUCCESS;
	
}
/***************************************************************************************
* func          : hifb_refresh_2buf_immediate_display
* description   : CNcomment: ͬ��ˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_2buf_immediate_display(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{

	HI_S32 s32Ret    = 0;
	HI_U32 u32Index  = 0;
	HIFB_PAR_S *pstPar = NULL;
	struct fb_info *info;	 
	unsigned long lockflag = 0; 	
	HIFB_BUFFER_S stForeBuf;
	HIFB_BUFFER_S stBackBuf;		
	HIFB_BLIT_OPT_S stBlitOpt;	  
	HIFB_OSD_DATA_S stOsdData;

	info	 = s_stLayer[u32LayerId].pstInfo;
	pstPar	 = (HIFB_PAR_S *)info->par;
	u32Index = pstPar->stRunInfo.u32IndexForInt;
	
	memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
	memset(&stForeBuf, 0, sizeof(HIFB_BUFFER_S));
	memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));
	
	stBlitOpt.bCallBack = HI_FALSE;
	stBlitOpt.pParam = &(pstPar->stBaseInfo.u32LayerID);

	spin_lock_irqsave(&pstPar->stBaseInfo.lock,lockflag);
	pstPar->stRunInfo.bNeedFlip = HI_FALSE;
	pstPar->stRunInfo.s32RefreshHandle = 0;
	spin_unlock_irqrestore(&pstPar->stBaseInfo.lock,lockflag);

	s_stDrvOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);
	
	stBackBuf.stCanvas.enFmt	  = pstPar->stExtendInfo.enColFmt;
	stBackBuf.stCanvas.u32Width   = pstPar->stExtendInfo.u32DisplayWidth;
	stBackBuf.stCanvas.u32Height  = pstPar->stExtendInfo.u32DisplayHeight;	  
	stBackBuf.stCanvas.u32Pitch   = info->fix.line_length;
	stBackBuf.stCanvas.u32PhyAddr = pstPar->stDispInfo.u32DisplayAddr[u32Index];

	/* according to the hw arithemetic, calculate  source and Dst fresh rectangle */	
	if (   (pstCanvasBuf->stCanvas.u32Height != pstPar->stExtendInfo.u32DisplayHeight)
		|| (pstCanvasBuf->stCanvas.u32Width  != pstPar->stExtendInfo.u32DisplayWidth))
	{
		stBlitOpt.bScale = HI_TRUE;
	}

	hifb_getupdate_rect(u32LayerId, pstCanvasBuf, &stBackBuf.UpdateRect);

	/**
	 ** when fill background buffer, we need to backup fore buffer first
	 **/
	hifb_backup_forebuf(u32LayerId, &stBackBuf); 	


	/**
	 ** update union rect 
	 **/
	memcpy(&pstPar->stDispInfo.stUpdateRect, &stBackBuf.UpdateRect, sizeof(HIFB_RECT));

	if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
	{
		stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
	}

	if (stBlitOpt.bScale == HI_TRUE)
	{
		/**
		 ** actual area, calculate by TDE, here is just use for let pass the test 
		 **/		
		stBackBuf.UpdateRect.x = 0;
		stBackBuf.UpdateRect.y = 0;
		stBackBuf.UpdateRect.w = stBackBuf.stCanvas.u32Width;
		stBackBuf.UpdateRect.h = stBackBuf.stCanvas.u32Height;
	}
	else
	{
		stBackBuf.UpdateRect = pstCanvasBuf->UpdateRect;
	}

	stBlitOpt.bRegionDeflicker = HI_TRUE;
	stBlitOpt.bBlock           = HI_TRUE;
	/**
	 ** blit with refresh rect 
	 **/
	s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(pstCanvasBuf, &stBackBuf,&stBlitOpt, HI_TRUE);
	if (s32Ret <= 0)
	{
		HIFB_ERROR("2buf blit err 0x%x!\n",s32Ret);
		goto RET;
	}
	
    /**
     **set the backup buffer to register and show it  
     **/
    pstPar->stRunInfo.bModifying = HI_TRUE;            
    pstPar->stRunInfo.u32ScreenAddr       = pstPar->stDispInfo.u32DisplayAddr[u32Index];
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
    pstPar->stRunInfo.bModifying = HI_FALSE;

	pstPar->stRunInfo.u32IndexForInt = 1 - u32Index;
    
    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

#ifdef CFG_HIFB_COMPRESSION_SUPPORT		
	if (s_stDrvOps.HIFB_DRV_GetCmpSwitch(u32LayerId))
	{
		memcpy(&(pstPar->stDispInfo.stCmpRect), &pstPar->stDispInfo.stUpdateRect, sizeof(HIFB_RECT));
	}	
#endif	

    /**
     ** wait the address register's configuration take effect before return
     **/
    hifb_wait_regconfig_work(u32LayerId);

RET:	
	return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_refresh_panbuf
* description   : CNcomment: ��androidʹ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_refresh_panbuf(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
    HI_S32 s32Ret;
	HI_U32 u32TmpAddr;    
	HIFB_RECT UpdateRect;
	HIFB_BLIT_OPT_S stBlitOpt;
    HIFB_BUFFER_S stCanvasBuf;
    HIFB_BUFFER_S stDisplayBuf;   

	HIFB_PAR_S *par;
    struct fb_info *info;    
    struct fb_var_screeninfo *var;

	info = s_stLayer[u32LayerId].pstInfo;
	par = (HIFB_PAR_S *)info->par;
	var = &(info->var);

	UpdateRect = pstCanvasBuf->UpdateRect;
        
    if ((UpdateRect.x >=  par->stExtendInfo.u32DisplayWidth)
        || (UpdateRect.y >= par->stExtendInfo.u32DisplayHeight)
        || (UpdateRect.w == 0) || (UpdateRect.h == 0))
    {
        HIFB_ERROR("hifb_refresh_panbuf upate rect invalid\n");
        return HI_FAILURE;
    }
	
    if (par->bSetStereoMode)//(IS_STEREO_SBS(par) || IS_STEREO_TAB(par))
    {
        if (HI_NULL == par->st3DInfo.st3DMemInfo.u32StereoMemStart)
        {
            HIFB_ERROR("you should pan first\n");
            return HI_FAILURE;
        }
                
        memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
        stBlitOpt.bScale = HI_TRUE;
		
        if (HIFB_ANTIFLICKER_TDE == par->stBaseInfo.enAntiflickerMode)
        {
            stBlitOpt.enAntiflickerLevel = par->stBaseInfo.enAntiflickerLevel;
        }
		
        stBlitOpt.bBlock = HI_TRUE;
        stBlitOpt.bRegionDeflicker = HI_TRUE;

        if (var->bits_per_pixel >= 8)
        {
            u32TmpAddr = info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset* (var->bits_per_pixel >> 3);
        }
        else
        {
            u32TmpAddr = (info->fix.smem_start + info->fix.line_length * var->yoffset
                           + var->xoffset * var->bits_per_pixel / 8);
        }

		if((var->bits_per_pixel == 24)&&((var->xoffset !=0)||(var->yoffset !=0)))
	    {
	        HI_U32 TmpData;

	        TmpData = (info->fix.smem_start + info->fix.line_length * var->yoffset
	                       + var->xoffset * (var->bits_per_pixel >> 3))/16/3;
	        u32TmpAddr = TmpData*16*3;
	    }

		/********************config pan buffer*******************/
        memset(&stCanvasBuf, 0, sizeof(HIFB_BUFFER_S));
        stCanvasBuf.stCanvas.enFmt      = par->stExtendInfo.enColFmt;
        stCanvasBuf.stCanvas.u32Pitch   = info->fix.line_length;
        stCanvasBuf.stCanvas.u32PhyAddr = u32TmpAddr;
		stCanvasBuf.stCanvas.u32Width   = par->stExtendInfo.u32DisplayWidth;
        stCanvasBuf.stCanvas.u32Height  = par->stExtendInfo.u32DisplayHeight;
        stCanvasBuf.UpdateRect          = UpdateRect;
		/***********************end**************************/

		/*******************config 3D buffer********************/
        memset(&stDisplayBuf, 0, sizeof(HIFB_BUFFER_S));
        stDisplayBuf.stCanvas.enFmt      = par->st3DInfo.st3DSurface.enFmt;           
        stDisplayBuf.stCanvas.u32Pitch   = par->st3DInfo.st3DSurface.u32Pitch;
        stDisplayBuf.stCanvas.u32PhyAddr = par->stRunInfo.u32ScreenAddr;
        stDisplayBuf.stCanvas.u32Width   = par->st3DInfo.st3DSurface.u32Width; 
        stDisplayBuf.stCanvas.u32Height  = par->st3DInfo.st3DSurface.u32Height;
		/***********************end**************************/   
        
        if (HIFB_STEREO_SIDEBYSIDE_HALF == par->st3DInfo.enOutStereoMode)
        {
            stDisplayBuf.stCanvas.u32Width >>= 1;  
        }
        else if (HIFB_STEREO_TOPANDBOTTOM == par->st3DInfo.enOutStereoMode)
        {
            stDisplayBuf.stCanvas.u32Height >>= 1;  
        }
		
		stDisplayBuf.UpdateRect.x = 0;	   
		stDisplayBuf.UpdateRect.y = 0;			   
		stDisplayBuf.UpdateRect.w = stDisplayBuf.stCanvas.u32Width;
		stDisplayBuf.UpdateRect.h = stDisplayBuf.stCanvas.u32Height; 


        s32Ret = s_stDrvTdeOps.HIFB_DRV_Blit(&stCanvasBuf, &stDisplayBuf, &stBlitOpt, HI_TRUE);
        if (s32Ret < 0)
        {
            HIFB_ERROR("stereo blit error!\n");
            return HI_FAILURE;
        } 
		
    }

    return HI_SUCCESS;
}

/***************************************************************************************
* func          : hifb_refresh_0buf_3D
* description   : CNcomment: ��bufferˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_0buf_3D(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{

	HI_S32 s32Ret;
	HIFB_PAR_S *pstPar;
	HI_U32 u32BufferSize;	 
    struct fb_info *info; 
	HIFB_BLIT_OPT_S stBlitOpt;

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)info->par;
	
	/**
	 ** config 3D surface par
	 **/
	pstPar->st3DInfo.st3DSurface.enFmt     = pstCanvasBuf->stCanvas.enFmt;
	pstPar->st3DInfo.st3DSurface.u32Pitch  = pstCanvasBuf->stCanvas.u32Pitch;
	pstPar->st3DInfo.st3DSurface.u32Width  = pstCanvasBuf->stCanvas.u32Width;
	pstPar->st3DInfo.st3DSurface.u32Height = pstCanvasBuf->stCanvas .u32Height;

	/**
	 ** allocate 3D memory,stride 16�ֽڶ���
	 **/
	u32BufferSize = pstCanvasBuf->stCanvas.u32Height * ((pstCanvasBuf->stCanvas.u32Pitch + 0xf) & 0xfffffff0);

	/**
	 ** ����3Dbuffer
	 **/
	s32Ret = hifb_checkandalloc_3dmem(u32LayerId, u32BufferSize);
	if (HI_SUCCESS != s32Ret)
	{
		HIFB_INFO("fail to alloc 3d memory, refresh failure.\n ");
		return s32Ret;
	}

	/**
	 ** config 3D surface par��ʹ��display buffer0
	 **/
	pstPar->st3DInfo.st3DSurface.u32PhyAddr= pstPar->st3DInfo.u32DisplayAddr[0];
	
	/**
	 ** config 3D buffer
	 **/
	memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
	stBlitOpt.bRegionDeflicker = HI_TRUE;
	stBlitOpt.bScale           = HI_TRUE;

	/**
	 **Ҫ�����д������Ҫ������ʹ��������֮������ز�𲻻���ô�󣬷�ֹ
	 **�������Ƴ���
	 **/
	if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
	{
		stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
	}
	
	hifb_3DData_Config(u32LayerId, pstCanvasBuf, &stBlitOpt);

	/** �������� **/
    pstPar->stRunInfo.bModifying = HI_TRUE;
    /** ������ʾ��ַ **/
	pstPar->stRunInfo.u32ScreenAddr       = pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
	/** ����stride **/
	pstPar->stDispInfo.stUserBuffer.stCanvas.u32Pitch = pstCanvasBuf->stCanvas.u32Pitch;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
	/** �������ظ�ʽ **/
	pstPar->stDispInfo.stUserBuffer.stCanvas.enFmt = pstCanvasBuf->stCanvas.enFmt;
    pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_FMT;    

    hifb_disp_setdispsize(u32LayerId, 
		                    pstCanvasBuf->stCanvas.u32Width, 
                            pstCanvasBuf->stCanvas.u32Height);

	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
	
    pstPar->stRunInfo.bModifying = HI_FALSE;

    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

    hifb_wait_regconfig_work(u32LayerId);
    
    return HI_SUCCESS;
	
}
/***************************************************************************************
* func          : hifb_refresh_1buf_3D
* description   : CNcomment: ˫bufferˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_1buf_3D(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
	HIFB_PAR_S *pstPar; 			 
	struct fb_info *info;
	HIFB_BLIT_OPT_S stBlitOpt;
	HIFB_OSD_DATA_S stOsdData;

	info   = s_stLayer[u32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)info->par;

	/**
	 **1.��ȡ��һ֡��ʾ��OSD����
	 **/
	s_stDrvOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);
	
	/**2
	 ** if display address is not the same as inital address, 
	 ** please config it use old address,�����ʾ�ĵ�ַ���ǳ�ʼ���ĵ�ַ���л���ʾ��ַ
	 **/
	if( (stOsdData.u32RegPhyAddr != pstPar->stDispInfo.u32DisplayAddr[0]) &&
		(pstPar->stDispInfo.u32DisplayAddr[0])) 
	{
		pstPar->stRunInfo.bModifying = HI_TRUE;
		pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
		pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
		pstPar->stRunInfo.u32ScreenAddr = pstPar->stDispInfo.u32DisplayAddr[0];
		memset(info->screen_base, 0x00, info->fix.smem_len);
		pstPar->stRunInfo.bModifying = HI_FALSE;
	} 

	/**
	 ** no need to allocate 3D buffer, displaybuf[0] will be setted to be 3D buffer
	 **/
	pstPar->st3DInfo.st3DSurface.enFmt     = pstPar->stExtendInfo.enColFmt;
	pstPar->st3DInfo.st3DSurface.u32Pitch  = ((((pstPar->stExtendInfo.u32DisplayWidth * info->var.bits_per_pixel) >> 3) + 0xf) & 0xfffffff0);
	pstPar->st3DInfo.st3DSurface.u32Width  = pstPar->stExtendInfo.u32DisplayWidth;
	pstPar->st3DInfo.st3DSurface.u32Height = pstPar->stExtendInfo.u32DisplayHeight;
	pstPar->st3DInfo.st3DSurface.u32PhyAddr= pstPar->st3DInfo.u32DisplayAddr[0];

	memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));

	/**
	 **TDE�ڲ����ֲ������������src srcrect dst�Լ�����dstrect,�����dstrect��Ч
	 **/
	stBlitOpt.bRegionDeflicker = HI_TRUE;
	stBlitOpt.bScale           = HI_TRUE;
	if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
	{
		stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
	}

	hifb_3DData_Config(u32LayerId, pstCanvasBuf, &stBlitOpt);

	/*backup usr buffer*/
	memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));
	
	return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : hifb_refresh_2buf_3D
* description   : CNcomment: 3 bufferˢ�� �첽��ˢ�²��ȸ����꣬����֡ CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh_2buf_3D(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
	HI_U32 u32Index;
	HIFB_PAR_S *pstPar;
    struct fb_info *info;    
	unsigned long lockflag;   	
    HIFB_BUFFER_S stBackBuf;      	
	HIFB_BLIT_OPT_S stBlitOpt;    
    HIFB_OSD_DATA_S stOsdData;

	info     = s_stLayer[u32LayerId].pstInfo;
	pstPar   = (HIFB_PAR_S *)info->par;
	u32Index = pstPar->stRunInfo.u32IndexForInt;

    memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
    memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));

	/**
	 **TDE������֮��ص�TDEע��Ļص�����hifb_tde_callback
	 **/
    stBlitOpt.bCallBack = HI_TRUE;
	stBlitOpt.pfnCallBack = hifb_tde_callback;
    stBlitOpt.pParam = &(pstPar->stBaseInfo.u32LayerID);

    spin_lock_irqsave(&pstPar->stBaseInfo.lock,lockflag);
    pstPar->stRunInfo.bNeedFlip        = HI_FALSE;
    pstPar->stRunInfo.s32RefreshHandle = 0;
    spin_unlock_irqrestore(&pstPar->stBaseInfo.lock,lockflag);

    s_stDrvOps.HIFB_DRV_GetOSDData(u32LayerId, &stOsdData);
    
	/**
	 ** no need to allocate 3D buffer, displaybuf[0] will be setted to be 3D buffer
	 **/
	/**
	 ** config 3D surface par
	 **/
	pstPar->st3DInfo.st3DSurface.enFmt     = pstPar->stExtendInfo.enColFmt;
	pstPar->st3DInfo.st3DSurface.u32Pitch  = ((((pstPar->stExtendInfo.u32DisplayWidth * info->var.bits_per_pixel) >> 3) + 0xf) & 0xfffffff0);
	pstPar->st3DInfo.st3DSurface.u32Width  = pstPar->stExtendInfo.u32DisplayWidth;
	pstPar->st3DInfo.st3DSurface.u32Height = pstPar->stExtendInfo.u32DisplayHeight;
	pstPar->st3DInfo.st3DSurface.u32PhyAddr= pstPar->st3DInfo.u32DisplayAddr[u32Index];

	memcpy(&stBackBuf.stCanvas, &pstPar->st3DInfo.st3DSurface, sizeof(HIFB_SURFACE_S));

    /**
     ** according to the hw arithemetic, calculate  source and Dst fresh rectangle 
     **/	
    hifb_getupdate_rect(u32LayerId, pstCanvasBuf, &stBackBuf.UpdateRect);

    /**
     ** We should check is address changed, for make sure 
     ** that the address configed to the hw reigster is in effect
     **/	
    if(pstPar->stRunInfo.bFliped && (stOsdData.u32RegPhyAddr== pstPar->st3DInfo.u32DisplayAddr[1-u32Index]))
    { 
		/** 
		 ** when fill background buffer, we need to backup fore buffer first
		 **/
		hifb_backup_forebuf(u32LayerId, &stBackBuf);	
        /** clear union rect **/
        memset(&(pstPar->st3DInfo.st3DUpdateRect), 0, sizeof(HIFB_RECT));
        pstPar->stRunInfo.bFliped = HI_FALSE; 
    }

    /* update union rect */
    if ((pstPar->st3DInfo.st3DUpdateRect.w == 0) || (pstPar->st3DInfo.st3DUpdateRect.h == 0))
    {
        memcpy(&pstPar->st3DInfo.st3DUpdateRect, &stBackBuf.UpdateRect, sizeof(HIFB_RECT));
    }
    else
    {	  
        HIFB_UNITE_RECT(pstPar->st3DInfo.st3DUpdateRect, stBackBuf.UpdateRect);
    }  

	stBlitOpt.bScale = HI_TRUE;
	stBlitOpt.bRegionDeflicker = HI_TRUE; 
	if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
	{
		stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
	}
	
	hifb_3DData_Config(u32LayerId, pstCanvasBuf, &stBlitOpt);

    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));
   
    return HI_SUCCESS;
	
}


/**
 ** In this function we should wait the new contain has 
 ** been show on the screen before return, and the operations 
 ** such as address configuration no needed do in interrupt handle
 **/
/***************************************************************************************
* func			: hifb_refresh_2buf_immediate_display_3D
* description	: CNcomment: 3 buffer ͬ����ˢ�µȴ������� CNend\n
* param[in] 	: HI_VOID
* retval		: NA
* others:		: NA
***************************************************************************************/
static HI_S32 hifb_refresh_2buf_immediate_display_3D(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf)
{
	HI_U32 u32Index = 0;
	HIFB_PAR_S *pstPar;
	struct fb_info *info;	 
	unsigned long lockflag; 	
	HIFB_BUFFER_S stBackBuf;		
	HIFB_BLIT_OPT_S stBlitOpt;	  

	info	 = s_stLayer[u32LayerId].pstInfo;
	pstPar	 = (HIFB_PAR_S *)info->par;
	u32Index = pstPar->stRunInfo.u32IndexForInt;

	memset(&stBlitOpt, 0, sizeof(HIFB_BLIT_OPT_S));
	memset(&stBackBuf, 0, sizeof(HIFB_BUFFER_S));

	
	stBlitOpt.bCallBack = HI_FALSE; /** TDE�����겻��Ҫ�ص�ע���TDE CALLBACK���� **/
	stBlitOpt.pParam = &(pstPar->stBaseInfo.u32LayerID);

	spin_lock_irqsave(&pstPar->stBaseInfo.lock,lockflag);
	pstPar->stRunInfo.bNeedFlip 	   = HI_FALSE;
	pstPar->stRunInfo.s32RefreshHandle = 0;
	spin_unlock_irqrestore(&pstPar->stBaseInfo.lock,lockflag);

	/**
	 ** no need to allocate 3D buffer, displaybuf[0] will be setted to be 3D buffer
	 **/
	pstPar->st3DInfo.st3DSurface.enFmt	   = pstPar->stExtendInfo.enColFmt;
	pstPar->st3DInfo.st3DSurface.u32Pitch  = ((((pstPar->stExtendInfo.u32DisplayWidth * info->var.bits_per_pixel) >> 3) + 0xf) & 0xfffffff0);
	pstPar->st3DInfo.st3DSurface.u32Width  = pstPar->stExtendInfo.u32DisplayWidth;
	pstPar->st3DInfo.st3DSurface.u32Height = pstPar->stExtendInfo.u32DisplayHeight;
	pstPar->st3DInfo.st3DSurface.u32PhyAddr= pstPar->st3DInfo.u32DisplayAddr[u32Index];

	memcpy(&stBackBuf.stCanvas, &pstPar->st3DInfo.st3DSurface, sizeof(HIFB_SURFACE_S));

	/**
	 ** according to the hw arithemetic, calculate  source and Dst fresh rectangle 
	 **/	
	hifb_getupdate_rect(u32LayerId, pstCanvasBuf, &stBackBuf.UpdateRect);

	/**
	 ** when fill background buffer, we need to backup fore buffer first
	 **/
	hifb_backup_forebuf(u32LayerId, &stBackBuf); 

	/* update union rect */
	memcpy(&pstPar->st3DInfo.st3DUpdateRect, &stBackBuf.UpdateRect, sizeof(HIFB_RECT));


	stBlitOpt.bScale = HI_TRUE;
	stBlitOpt.bBlock = HI_TRUE;
	stBlitOpt.bRegionDeflicker = HI_TRUE; 
	if (pstPar->stBaseInfo.enAntiflickerMode == HIFB_ANTIFLICKER_TDE)
	{
		stBlitOpt.enAntiflickerLevel = pstPar->stBaseInfo.enAntiflickerLevel;
	}
	
	hifb_3DData_Config(u32LayerId, pstCanvasBuf, &stBlitOpt);

    pstPar->stRunInfo.bModifying = HI_TRUE;            
    pstPar->stRunInfo.u32ScreenAddr       = pstPar->st3DInfo.u32DisplayAddr[u32Index];
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
    pstPar->stRunInfo.bModifying = HI_FALSE;

	pstPar->stRunInfo.u32IndexForInt = 1 - u32Index;
    
    memcpy(&(pstPar->stDispInfo.stUserBuffer), pstCanvasBuf, sizeof(HIFB_BUFFER_S));

    /**
     ** wait the address register's configuration take effect before return
     **/

    hifb_wait_regconfig_work(u32LayerId);
	
	return HI_SUCCESS;
	
}
#endif



/***************************************************************************************
* func          : hifb_refresh
* description   : CNcomment: ˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_refresh(HI_U32 u32LayerId, HIFB_BUFFER_S *pstCanvasBuf, HIFB_LAYER_BUF_E enBufMode)
{

    HI_S32 s32Ret;
	HIFB_PAR_S *par;
	struct fb_info *info;

	s32Ret = HI_FAILURE;
	info   = s_stLayer[u32LayerId].pstInfo;
	par    = (HIFB_PAR_S *)(info->par);
	
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	if (par->bSetStereoMode)
	{
		switch (enBufMode)
	    {    
	        case HIFB_LAYER_BUF_DOUBLE:
	            s32Ret = hifb_refresh_2buf_3D(u32LayerId, pstCanvasBuf);
	            break;
	        case HIFB_LAYER_BUF_ONE:
	            s32Ret = hifb_refresh_1buf_3D(u32LayerId, pstCanvasBuf);
	            break;
	        case HIFB_LAYER_BUF_NONE:
	           s32Ret = hifb_refresh_0buf_3D(u32LayerId, pstCanvasBuf);
	           break;
	        case HIFB_LAYER_BUF_DOUBLE_IMMEDIATE:
	            s32Ret = hifb_refresh_2buf_immediate_display_3D(u32LayerId, pstCanvasBuf);
	            break;
	        default:
	            break;
	    }
	}
	else
#endif		
	{
		switch (enBufMode)
	    {    
	        case HIFB_LAYER_BUF_DOUBLE:
	            s32Ret = hifb_refresh_2buf(u32LayerId, pstCanvasBuf);
	            break;
	        case HIFB_LAYER_BUF_ONE:
	            s32Ret = hifb_refresh_1buf(u32LayerId, pstCanvasBuf);
	            break;
	        case HIFB_LAYER_BUF_NONE:
	           s32Ret = hifb_refresh_0buf(u32LayerId, pstCanvasBuf);
	           break;
	        case HIFB_LAYER_BUF_DOUBLE_IMMEDIATE:
	            s32Ret = hifb_refresh_2buf_immediate_display(u32LayerId, pstCanvasBuf);
	            break;
	        default:
	            break;
	    }
	}
	
#ifdef CFG_HIFB_LOGO_SUPPORT
	hifb_clear_logo(u32LayerId, HI_FALSE);	
#endif	

    return s32Ret;

}

static HI_S32 hifb_alloccanbuf(struct fb_info *info, HIFB_LAYER_INFO_S * pLayerInfo)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    
    if (!(pLayerInfo->u32Mask & HIFB_LAYERMASK_CANVASSIZE))
    {
        return HI_SUCCESS;
    }
    
    /** if  with old canvas buffer **/
    if (par->stDispInfo.stCanvasSur.u32PhyAddr)
    {
        /* if  old is the sampe with new , then return, else free the old buffer*/
        if ((pLayerInfo->u32CanvasWidth == par->stDispInfo.stCanvasSur.u32Width) &&
             (pLayerInfo->u32CanvasHeight == par->stDispInfo.stCanvasSur.u32Height))
        {
            HIFB_INFO("mem is the sampe , no need alloc new memory");
            return HI_SUCCESS;
        }

        /** free new old buffer **/
        HIFB_INFO("free old canvas buffer\n");        
        hifb_freeccanbuf(par);
    }
    
    /** new canvas buffer **/
    if ((pLayerInfo->u32CanvasWidth >=  0) && (pLayerInfo->u32CanvasHeight >=  0))
    {
        HI_U32 u32LayerSize;
        HI_U32 u32Pitch;
        HI_CHAR *pBuf;

        /*Modify 16 to 32, preventing out of bound.*/
        HI_CHAR name[32];

        /*16 bytes aligmn*/
        u32Pitch = ((pLayerInfo->u32CanvasWidth * info->var.bits_per_pixel >> 3) + 15)>>4;
        u32Pitch = u32Pitch << 4;
        
        u32LayerSize = u32Pitch * pLayerInfo->u32CanvasHeight;
        /** alloc new buffer*/
		snprintf(name, sizeof(name), "HIFB_Canvas%d", par->stBaseInfo.u32LayerID);
        par->stDispInfo.stCanvasSur.u32PhyAddr = hifb_buf_allocmem(name, u32LayerSize);
        //HIFB_ERROR("canvas surface addr:0x%x\n", par->CanvasSur.u32PhyAddr);
        if (par->stDispInfo.stCanvasSur.u32PhyAddr == 0)
        {   
            HIFB_ERROR("alloc canvas buffer no mem, expect size: 0x%x, cavh:%d\n", u32LayerSize, pLayerInfo->u32CanvasHeight);
            return HI_FAILURE;
        }

        pBuf = (HI_CHAR *)hifb_buf_map(par->stDispInfo.stCanvasSur.u32PhyAddr);
        if (pBuf == HI_NULL)
        {
            HIFB_ERROR("map canvas buffer failed!\n");
            hifb_buf_freemem(par->stDispInfo.stCanvasSur.u32PhyAddr);
            return HI_FAILURE;
        }
        memset(pBuf, 0, u32LayerSize);
        hifb_buf_ummap(pBuf);

        HIFB_INFO("alloc new memory for canvas buffer success\n"); 
        par->stDispInfo.stCanvasSur.u32Width  = pLayerInfo->u32CanvasWidth;
        par->stDispInfo.stCanvasSur.u32Height = pLayerInfo->u32CanvasHeight;
        par->stDispInfo.stCanvasSur.enFmt     =  hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);
        par->stDispInfo.stCanvasSur.u32Pitch  = u32Pitch;

        return HI_SUCCESS;
    }
	return HI_SUCCESS;
}


/***************************************************************************************
* func          : hifb_pan_display
* description   : CNcomment: hwc��hwc_set���ã�androidʹ�õ�������ӿڣ�
                             Ҫ����hwc�������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_FENCE_SUPPORT

typedef struct 
{
    HIFB_PAR_S *par;
    struct sync_fence *fence;
    struct work_struct work;
    HIFB_HWC_LAYERINFO_S stLayerInfo;
}HIFB_REFRESHWQ_S;

static HI_VOID hifb_hwcrefresh_work(struct work_struct *work)
{
	HIFB_PAR_S *par;
    struct fb_info *info;
    HI_BOOL bDispEnable;
    HIFB_HWC_LAYERINFO_S stLayerInfo;
    HIFB_REFRESHWQ_S *pstWork;

    pstWork = (HIFB_REFRESHWQ_S *)container_of(work, HIFB_REFRESHWQ_S, work);
	par = pstWork->par; 

    memcpy(&stLayerInfo, &pstWork->stLayerInfo, sizeof(HIFB_HWC_LAYERINFO_S));

    if (pstWork->fence != NULL)
    {
        hifb_fence_wait(pstWork->fence, -1);
        sync_fence_put(pstWork->fence);
        pstWork->fence = NULL;
    }

	/**
	 **����֡��
	 **/
    par->stFrameInfo.u32RefreshFrame++;

    if(par->bSetStereoMode)
    {/** 3dģʽ����� **/
        info = s_stLayer[par->stBaseInfo.u32LayerID].pstInfo;
        if (atomic_read(&s_SyncInfo.s32RefreshCnt) > 1)
        {
            s_SyncInfo.FrameEndFlag = 0;  
            wait_event_interruptible_timeout(s_SyncInfo.FrameEndEvent, s_SyncInfo.FrameEndFlag, HZ);
        }
        info->var.yoffset = (stLayerInfo.u32LayerAddr - info->fix.smem_start)/stLayerInfo.u32Stride;
		hifb_pan_display(&info->var, info);
    }
	else
	{	/** ��3dģʽ����£��޸�3D���� **/
		/**
		 **��������buffer�����л��������ַ��HWC�л�
		 **/
	    par->stRunInfo.u32ScreenAddr  = stLayerInfo.u32LayerAddr;
	    s_stDrvOps.HIFB_DRV_SetLayerAddr(par->stBaseInfo.u32LayerID, par->stRunInfo.u32ScreenAddr);
	    s_stDrvOps.HIFB_DRV_SetLayerStride(par->stBaseInfo.u32LayerID, stLayerInfo.u32Stride);

		par->stExtendInfo.stPos.s32XPos    = stLayerInfo.stInRect.x;
	    par->stExtendInfo.stPos.s32YPos    = stLayerInfo.stInRect.y;
	    par->stExtendInfo.u32DisplayWidth  = stLayerInfo.stInRect.w;
	    par->stExtendInfo.u32DisplayHeight = stLayerInfo.stInRect.h; 
		/**
		 **�������ʽ��΢����Ӱ�쵽�����stOutRect
		 **/
	    s_stDrvOps.HIFB_DRV_SetLayerInRect(par->stBaseInfo.u32LayerID, &stLayerInfo.stInRect);
		if (par->stExtendInfo.enColFmt != stLayerInfo.eFmt)
		{
			par->stExtendInfo.enColFmt = stLayerInfo.eFmt;
			par->stRunInfo.u32ParamModifyMask  |= HIFB_LAYER_PARAMODIFY_FMT;
		}
		if (par->stRunInfo.u32ParamModifyMask & HIFB_LAYER_PARAMODIFY_FMT)
		{
			s_stDrvOps.HIFB_DRV_SetLayerDataFmt(par->stBaseInfo.u32LayerID, par->stExtendInfo.enColFmt);
			par->stRunInfo.u32ParamModifyMask &= ~HIFB_LAYER_PARAMODIFY_FMT;
		}

	    s_stDrvOps.HIFB_DRV_UpdataLayerReg(par->stBaseInfo.u32LayerID);
	}

	/** GPU�Ѿ������꣬����ˢ���� **/
    atomic_inc(&s_SyncInfo.s32RefreshCnt);

#ifdef CFG_HIFB_LOGO_SUPPORT		
	hifb_clear_logo(par->stBaseInfo.u32LayerID, HI_FALSE);
#endif	
    
    par->bHwcRefresh = HI_TRUE;

	s_stDrvOps.HIFB_DRV_GetHaltDispStatus(par->stBaseInfo.u32LayerID, &bDispEnable);
	if (!bDispEnable)
	{
		while(atomic_read(&s_SyncInfo.s32RefreshCnt) > 0)
	    {
			atomic_dec(&s_SyncInfo.s32RefreshCnt);
	        if(s_SyncInfo.pstTimeline)
	        {
			    sw_sync_timeline_inc(s_SyncInfo.pstTimeline, 1);
	            s_SyncInfo.u32Timeline++;
	        }
		}
	}

    kfree(pstWork);
 
    return;
}

static HI_S32 hifb_hwcrefresh(HIFB_PAR_S* par, HI_VOID __user *argp)
{
    HI_S32 s32Ret = HI_SUCCESS;
    //struct fb_info *info;
    HIFB_HWC_LAYERINFO_S stLayerInfo;
    //HI_BOOL bDispEnable;
    HIFB_REFRESHWQ_S *pstWork;    

    if (copy_from_user(&stLayerInfo, argp, sizeof(HIFB_HWC_LAYERINFO_S)))
    {
        return -EFAULT;
    }

    pstWork = (HIFB_REFRESHWQ_S *)kmalloc(sizeof(HIFB_REFRESHWQ_S), GFP_KERNEL);
    if (pstWork == NULL)
    {
        return -EFAULT;
    }
    
	/**
	 **����hifb fence�������ļ��ڵ��stLayerInfo.s32ReleaseFenceFd
	 **/
	s32Ret = hifb_create_fence(s_SyncInfo.pstTimeline, "hifb_fence", ++s_SyncInfo.u32FenceValue);
	if (s32Ret < 0) 
	{
	    kfree(pstWork);
		HIFB_ERROR("hifb_create_fence failed! s32Ret = 0x%x\n", s32Ret);
	}
	/**
	 **fence�豸�ڵ㣬ÿһ��layer����һ��acquire ��release fence
	 **��ֹ��ʾһ��buffer������ֱ����fence����������������HW ��set up ǰ�����͵�
	 **�����ζ���������layer��buffer�Ѿ����ڱ���ȡ�ˣ���һ��buffer���ڱ���ȡ��ʱ�򽫻ᴥ�����fence
	 **/
    stLayerInfo.s32ReleaseFenceFd = s32Ret;

    memcpy(&pstWork->stLayerInfo, &stLayerInfo, sizeof(HIFB_HWC_LAYERINFO_S));
    
    if (stLayerInfo.s32AcquireFenceFd >= 0)
    {/**
      **��ֹ��ʾһ��buffer������ֱ����fence������,Ҳ����s32AcquireFenceFd���ͷ�
      **���ܽ��и�����ʾ
      **/
        pstWork->fence = sync_fence_fdget(stLayerInfo.s32AcquireFenceFd);
    }
    else
    {
        pstWork->fence = NULL;
    }

    pstWork->par = par;
    INIT_WORK(&(pstWork->work), hifb_hwcrefresh_work);
    queue_work(par->pstHwcRefreshWorkqueue, &(pstWork->work)); 
        
    if (copy_to_user(argp,&stLayerInfo,sizeof(HIFB_HWC_LAYERINFO_S)))
    {/**
      **�ͷ�û���õ�fence
      **/
		put_unused_fd(stLayerInfo.s32ReleaseFenceFd);
        return -EFAULT;
	}

    return HI_SUCCESS;
}
#endif

/***************************************************************************************
* func          : hifb_onrefresh
* description   : CNcomment: ˢ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_onrefresh(HIFB_PAR_S* par, HI_VOID __user *argp)
{

    HI_S32 s32Ret;
    HIFB_BUFFER_S stCanvasBuf;
    
    if (par->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
    {
        HIFB_WARNING("you shouldn't refresh cursor layer!");
        return HI_SUCCESS;
    }
    
    if (copy_from_user(&stCanvasBuf, argp, sizeof(HIFB_BUFFER_S)))
    {
        return -EFAULT;
    }
    
    /**
     ** when user data  update in 3d mode , 
     ** blit pan buffer to 3D buffer to config 3d data
     **/  
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (  (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD) 
         &&((par->st3DInfo.st3DMemInfo.u32StereoMemStart != 0) && (par->bSetStereoMode)))
    {/**
      ** ��׼ˢ��ģʽ��3Dģʽ����ʼ��ַ��Ϊ0
      **/
        return hifb_refresh_panbuf(par->stBaseInfo.u32LayerID, &stCanvasBuf);
    }
	/**
	 ** when user refresh in pan display , just return
	 **/
    if (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD)
    {
        return HI_FAILURE;
    }
#endif

	if (   (0 == stCanvasBuf.stCanvas.u32Width)
		|| (0 == stCanvasBuf.stCanvas.u32Height))
	{
		HIFB_ERROR("canvas buffer's width or height can't be zero.\n");
		return HI_FAILURE;
	}

	if (stCanvasBuf.stCanvas.enFmt >= HIFB_FMT_BUTT)
	{
		HIFB_ERROR("color format of canvas buffer unsupported.\n");
		return HI_FAILURE;
	}
    
    if (  (stCanvasBuf.UpdateRect.x >=  stCanvasBuf.stCanvas.u32Width)
        ||(stCanvasBuf.UpdateRect.y >= stCanvasBuf.stCanvas.u32Height)
        ||(stCanvasBuf.UpdateRect.w == 0) || (stCanvasBuf.UpdateRect.h == 0))
    {
        HIFB_ERROR("rect error: update rect:(%d,%d,%d,%d), canvas range:(%d,%d)\n", 
                  stCanvasBuf.UpdateRect.x, stCanvasBuf.UpdateRect.y,
                  stCanvasBuf.UpdateRect.w, stCanvasBuf.UpdateRect.h,
                  stCanvasBuf.stCanvas.u32Width, stCanvasBuf.stCanvas.u32Height);
        return HI_FAILURE;
    }
    
    if (stCanvasBuf.UpdateRect.x + stCanvasBuf.UpdateRect.w > stCanvasBuf.stCanvas.u32Width)
    {
        stCanvasBuf.UpdateRect.w = stCanvasBuf.stCanvas.u32Width - stCanvasBuf.UpdateRect.x;
    }
    if (stCanvasBuf.UpdateRect.y + stCanvasBuf.UpdateRect.h > stCanvasBuf.stCanvas.u32Height)
    {
        stCanvasBuf.UpdateRect.h =  stCanvasBuf.stCanvas.u32Height - stCanvasBuf.UpdateRect.y;
    }
    
    if (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
    {/** ֻ��canvas buffer **/
        /**
         ** there's a limit from hardware that the start address of screen buf 
         ** should be 16byte aligned! 
         **/
        if ((stCanvasBuf.stCanvas.u32PhyAddr & 0xf) || (stCanvasBuf.stCanvas.u32Pitch & 0xf))
        {
            HIFB_ERROR("addr 0x%x or pitch: 0x%x is not 16 bytes align !\n", 
                stCanvasBuf.stCanvas.u32PhyAddr,
                stCanvasBuf.stCanvas.u32Pitch);
            return HI_FAILURE;
        }
    }

    s32Ret = hifb_refresh(par->stBaseInfo.u32LayerID, &stCanvasBuf, par->stExtendInfo.enBufMode);
    
    return s32Ret;
	
}

static HI_S32 hifb_onputlayerinfo(struct fb_info *info, HIFB_PAR_S* par, HI_VOID __user *argp)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HIFB_LAYER_INFO_S stLayerInfo;
    HI_U32 u32Pitch;
    if (par->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
    {
       HIFB_WARNING("you shouldn't put cursor layer info!");
       return HI_SUCCESS;
    }
    
    if (copy_from_user(&stLayerInfo, argp, sizeof(HIFB_LAYER_INFO_S)))
    {
       return -EFAULT;
    }
    
    s32Ret = hifb_alloccanbuf(info, &stLayerInfo);
    if (s32Ret != HI_SUCCESS)
    {
       HIFB_ERROR("alloc canvas buffer failed\n");
       return HI_FAILURE;
    }
    
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE)
    {
        u32Pitch = stLayerInfo.u32DisplayWidth* info->var.bits_per_pixel >> 3;
        u32Pitch = (u32Pitch + 0xf) & 0xfffffff0;

		if (stLayerInfo.u32DisplayWidth == 0 || stLayerInfo.u32DisplayHeight == 0)
        {
            HIFB_ERROR("display witdh/height shouldn't be 0!\n");
            return HI_FAILURE;
        } 
			   
        if(HI_FAILURE == hifb_checkmem_enough(info, u32Pitch, stLayerInfo.u32DisplayHeight))
        {
            return HI_FAILURE;
        }
    }        
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE)
    {
       if ((stLayerInfo.u32ScreenWidth == 0) || (stLayerInfo.u32ScreenHeight == 0))
       {
           HIFB_ERROR("screen width/height shouldn't be 0\n");
           return HI_FAILURE;
       }
    }

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
     if ( ((stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE) 
	 		&& par->bSetStereoMode))
     {
        hifb_clearallstereobuf(info);
     }
#endif	 
    
	if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BUFMODE)
	{
        HI_U32 u32LayerSize;
     
		if (stLayerInfo.BufMode == HIFB_LAYER_BUF_ONE)
		{
		   u32LayerSize = info->fix.line_length * info->var.yres;
		}
		else if ((stLayerInfo.BufMode == HIFB_LAYER_BUF_DOUBLE) 
		    || (stLayerInfo.BufMode == HIFB_LAYER_BUF_DOUBLE_IMMEDIATE))
		{
		   u32LayerSize = 2 * info->fix.line_length * info->var.yres;
		}
		else
		{
		   u32LayerSize = 0;
		}

		if (u32LayerSize > info->fix.smem_len)
		{
		   HIFB_ERROR("No enough mem! layer real memory size:%d KBytes, expected:%d KBtyes\n",
		       info->fix.smem_len/1024, u32LayerSize/1024);
		   return HI_FAILURE;
		}
    }
    
    /*if x>width or y>height ,how to deal with: see nothing in screen or return failure?*/
    if ((stLayerInfo.u32Mask & HIFB_LAYERMASK_POS) 
       && ((stLayerInfo.s32XPos < 0) || (stLayerInfo.s32YPos < 0)))
    {
       HIFB_ERROR("Pos err!\n");
       return HI_FAILURE;
    }
    
    if ((stLayerInfo.u32Mask & HIFB_LAYERMASK_BMUL) && par->stExtendInfo.stCkey.bKeyEnable)
    {
       HIFB_ERROR("Colorkey and premul couldn't take effect at same time!\n");
       return HI_FAILURE;
    }
    
    /*avoid modifying register in vo isr before all params has benn recorded! In vo irq,
       flag bModifying will be checked.*/
    par->stRunInfo.bModifying = HI_TRUE;
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BMUL)
    {
        par->stBaseInfo.bPreMul            = stLayerInfo.bPreMul;
        par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_BMUL;
    }
    
    
    if (stLayerInfo.u32Mask & HIFB_LAYERMASK_BUFMODE)
    {
        hifb_buf_setbufmode(par->stBaseInfo.u32LayerID, stLayerInfo.BufMode);
    }

	if (stLayerInfo.u32Mask & HIFB_LAYERMASK_POS)
	{                
	    hifb_disp_setlayerpos(par->stBaseInfo.u32LayerID, stLayerInfo.s32XPos, stLayerInfo.s32YPos);
	}

	if (stLayerInfo.u32Mask & HIFB_LAYERMASK_ANTIFLICKER_MODE)
	{
	    hifb_disp_setantiflickerlevel(par->stBaseInfo.u32LayerID, stLayerInfo.eAntiflickerLevel);
	}

	if (stLayerInfo.u32Mask & HIFB_LAYERMASK_SCREENSIZE)
	{
	    s32Ret = hifb_disp_setscreensize(par->stBaseInfo.u32LayerID, stLayerInfo.u32ScreenWidth, stLayerInfo.u32ScreenHeight);
		if (HI_SUCCESS == s32Ret)
		{
			s_stDrvOps.HIFB_DRV_SetScreenFlag(par->stBaseInfo.u32LayerID, HI_TRUE);
		}
	}

	if (stLayerInfo.u32Mask & HIFB_LAYERMASK_DISPSIZE)
	{				
		if (stLayerInfo.u32DisplayWidth <= info->var.xres_virtual
			&& stLayerInfo.u32DisplayHeight <= info->var.yres_virtual)
		{
			s32Ret = hifb_disp_setdispsize(par->stBaseInfo.u32LayerID, stLayerInfo.u32DisplayWidth, stLayerInfo.u32DisplayHeight);
			if (s32Ret == HI_SUCCESS)
			{
			    info->var.xres = stLayerInfo.u32DisplayWidth;
				info->var.yres = stLayerInfo.u32DisplayHeight;
				hifb_assign_dispbuf(par->stBaseInfo.u32LayerID);
			}
			
			hifb_refreshall(info);	
		}	
	}
    
    par->stRunInfo.bModifying = HI_FALSE;
    return s32Ret;	
}

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
static HI_S32 hifb_clearallstereobuf(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;

    if (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_STANDARD || par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE) 
    {
        hifb_clearstereobuf(info);
    }
    else
    {
        HIFB_BLIT_OPT_S stOpt;
        HIFB_SURFACE_S Surface;
		HI_U32 u32InSize  = 0;
		HI_U32 u32Stride  = 0;
        memset(&stOpt, 0x0, sizeof(stOpt));

        Surface.enFmt     = par->stExtendInfo.enColFmt;
        Surface.u32Height = par->stExtendInfo.u32DisplayHeight;
        Surface.u32Width  = par->stExtendInfo.u32DisplayWidth;

		u32InSize = (par->stExtendInfo.u32DisplayWidth * info->var.bits_per_pixel) >> 3;
	    HI_HIFB_GetStride(u32InSize,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);
        Surface.u32Pitch  = u32Stride;

        if (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE 
                ||par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_DOUBLE_IMMEDIATE)
        {
            Surface.u32PhyAddr = par->st3DInfo.u32DisplayAddr[par->stRunInfo.u32IndexForInt];
        }
        else
        {
            Surface.u32PhyAddr = par->st3DInfo.u32DisplayAddr[0];
        }

		if (HI_NULL == Surface.u32PhyAddr)
		{
			HIFB_ERROR("fail to clear stereo rect.\n");
			return HI_FAILURE;
		}
        s_stDrvTdeOps.HIFB_DRV_ClearRect(&Surface, &stOpt);
    }
	
    return HI_SUCCESS;
	
}
#endif

static HI_S32 hifb_refreshuserbuffer(HI_U32 u32LayerId)
{
	HIFB_PAR_S *par;
	struct fb_info *info;    

	info = s_stLayer[u32LayerId].pstInfo;
	par = (HIFB_PAR_S *)info->par;

	if (par->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr)
    {                       
        HIFB_BUFFER_S stCanvas;
        stCanvas = par->stDispInfo.stUserBuffer;
        stCanvas.UpdateRect.x = 0;
        stCanvas.UpdateRect.y = 0;
        stCanvas.UpdateRect.w = stCanvas.stCanvas.u32Width;
        stCanvas.UpdateRect.h = stCanvas.stCanvas.u32Height;
        
        hifb_refresh(par->stBaseInfo.u32LayerID, &stCanvas, par->stExtendInfo.enBufMode);
    }

	return HI_SUCCESS;
	
}

static HI_S32 hifb_refreshall(struct fb_info *info)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
	
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    if (par->bSetStereoMode)//(IS_STEREO_SBS(par) || IS_STEREO_TAB(par))
    {      
    	if (HIFB_LAYER_BUF_STANDARD == par->stExtendInfo.enBufMode)
    	{
        	hifb_pan_display(&info->var, info);	
    	}

		if (HIFB_LAYER_BUF_NONE == par->stExtendInfo.enBufMode)
		{
			hifb_refreshuserbuffer(par->stBaseInfo.u32LayerID);
		}
    }
#endif

    if (HIFB_LAYER_BUF_STANDARD != par->stExtendInfo.enBufMode
		 && HIFB_LAYER_BUF_NONE != par->stExtendInfo.enBufMode)
    {                       
		hifb_refreshuserbuffer(par->stBaseInfo.u32LayerID);
    }

    return HI_SUCCESS;
}




/***************************************************************************************
* func          : hifb_ioctl
* description   : CNcomment: API ���� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_ioctl(struct fb_info *info, HI_U32 cmd, unsigned long arg)
{

    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_VOID __user *argp = (HI_VOID __user *)arg;

    HI_S32 s32Ret = HI_SUCCESS;

#ifndef CONFIG_HIFB_CURSOR_LAYER_NEGATIVE_SUPPORT
    HI_U32 u32Bpp, u32Addr;
    HIFB_RECT   stOutputRect;
    HI_U32 u32LayerId;
#endif
    
    if ((argp == NULL) && (cmd != FBIOGET_VBLANK_HIFB) && (cmd != FBIO_WAITFOR_FREFRESH_DONE)
		&& (cmd != FBIO_FREE_LOGO))
    {
        return -EINVAL;
    }

    if (  (!g_pstCap[par->stBaseInfo.u32LayerID].bLayerSupported) 
        &&(par->stBaseInfo.u32LayerID != HIFB_LAYER_CURSOR))
    {
        HIFB_ERROR("not supprot layer %d!\n", par->stBaseInfo.u32LayerID);
        return HI_FAILURE;
    }

    switch (cmd)
    {
        case FBIO_HWC_REFRESH:
        {
        	#ifdef CFG_HIFB_FENCE_SUPPORT
	            s32Ret = hifb_hwcrefresh(par, argp);
	            if(HI_SUCCESS != s32Ret){
	                HIFB_ERROR("hifb_hwcrefresh failed!ret=%x\n", s32Ret);
	                return HI_FAILURE;
	            }
	        #endif
            break;
        }
        case FBIO_REFRESH:
        {
            s32Ret = hifb_onrefresh(par, argp);
            if(HI_SUCCESS != s32Ret){
                HIFB_ERROR("hifb_onrefresh failed!ret=%x\n", s32Ret);
                return HI_FAILURE;
            }
            break;
        }
        case FBIOGET_CANVAS_BUFFER:
        {
            if (copy_to_user(argp, &(par->stDispInfo.stCanvasSur), sizeof(HIFB_BUFFER_S)))
            {
                return -EFAULT;
            }
            return HI_SUCCESS;
        }
    	case FBIOPUT_LAYER_INFO:
    	{
            s32Ret= hifb_onputlayerinfo(info, par, argp);
            if(HI_SUCCESS != s32Ret){
                HIFB_ERROR("hifb_onputlayerinfo failed!ret=%x\n", s32Ret);
                return HI_FAILURE;
            }
            break;
    	}
    	case FBIOGET_LAYER_INFO:
    	{
            HIFB_LAYER_INFO_S stLayerInfo = {0};

			hifb_wait_regconfig_work(par->stBaseInfo.u32LayerID);
			
            stLayerInfo.bPreMul           = par->stBaseInfo.bPreMul;
            stLayerInfo.BufMode           = par->stExtendInfo.enBufMode;
            stLayerInfo.eAntiflickerLevel = par->stBaseInfo.enAntiflickerLevel;
            stLayerInfo.s32XPos           = par->stExtendInfo.stPos.s32XPos;
            stLayerInfo.s32YPos           = par->stExtendInfo.stPos.s32YPos;
            stLayerInfo.u32DisplayWidth   = par->stExtendInfo.u32DisplayWidth;
            stLayerInfo.u32DisplayHeight  = par->stExtendInfo.u32DisplayHeight;
			stLayerInfo.u32ScreenWidth    = par->stExtendInfo.u32ScreenWidth;
			stLayerInfo.u32ScreenHeight   = par->stExtendInfo.u32ScreenHeight;			

            return copy_to_user(argp, &stLayerInfo, sizeof(HIFB_LAYER_INFO_S));
    	} 
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
        case FBIOGET_ENCODER_PICTURE_FRAMING:
        {
			#ifdef HIFB_FOR_TEST				
	            if (copy_to_user(argp, &par->st3DInfo.enOutStereoMode, sizeof(HIFB_STEREO_MODE_E)))
	            {
	                return -EFAULT;
	            }
			#endif
            break;
        }
        case FBIOPUT_ENCODER_PICTURE_FRAMING:
        {
			#ifdef HIFB_FOR_TEST
				HIFB_STEREO_MODE_E epftmp;
	            if (copy_from_user(&epftmp, argp, sizeof(HIFB_STEREO_MODE_E)))
	            {
	                return -EFAULT;
	            }
				hifb_3DMode_callback(&par->stBaseInfo.u32LayerID, &epftmp);
			#endif			
            break;
        }        
        case FBIOPUT_STEREO_MODE:
        {	
			break;
        }
        case FBIOGET_STEREO_MODE:
        { 
            break;
        }
#endif

#ifdef CFG_HIFB_COMPRESSION_SUPPORT
        case FBIOPUT_COMPRESSION:
        {
            HI_BOOL bComp = HI_FALSE;
			HI_BOOL bComp_pre = HI_FALSE;
            
            if (copy_from_user(&bComp, argp, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

			bComp_pre = s_stDrvOps.HIFB_DRV_GetCmpSwitch(par->stBaseInfo.u32LayerID);

			if (bComp == bComp_pre)
			{
				return HI_SUCCESS;
			}


            if (bComp == HI_TRUE)
            { 		 
            	if (!g_pstCap[par->stBaseInfo.u32LayerID].bCompression)
		        {
		        	HIFB_ERROR("hifb% don't support compression\n",par->stBaseInfo.u32LayerID);
		            return HI_FAILURE;
		        } 
								
                if (par->stExtendInfo.enColFmt != HIFB_FMT_ARGB8888)
                {
                    HIFB_ERROR("compression only support pixel format (ARGB8888)\n");
                    return HI_FAILURE;
                }

				if (par->bSetStereoMode)
				{
					HIFB_ERROR("not support compression in 3d mode\n");
                    return HI_FAILURE;
				}
            }        

			s_stDrvOps.HIFB_DRV_SetCmpSwitch(par->stBaseInfo.u32LayerID, bComp);		
            break;
        }
        case FBIOGET_COMPRESSION:
        {
			HI_BOOL bComp = HI_FALSE;

			bComp = s_stDrvOps.HIFB_DRV_GetCmpSwitch(par->stBaseInfo.u32LayerID);
				
            if (copy_to_user(argp, &bComp, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }
          
            break;
        }
		case FBIOPUT_COMPRESSIONMODE:
		{
			HIFB_CMP_MODE_E enMode;
            
            if (copy_from_user(&enMode, argp, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

			if (enMode < HIFB_CMP_BUTT)
			{
				s_stDrvOps.HIFB_DRV_SetCmpMode(par->stBaseInfo.u32LayerID, enMode);
			}
			
			break;
		}
		case FBIOGET_COMPRESSIONMODE:
		{
			HIFB_CMP_MODE_E enMode;

			enMode = s_stDrvOps.HIFB_DRV_GetCmpMode(par->stBaseInfo.u32LayerID);
				
            if (copy_to_user(argp, &enMode, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }
          
            break;
		}
#endif
        case FBIOGET_ALPHA_HIFB:
        {
            if (copy_to_user(argp, &par->stExtendInfo.stAlpha, sizeof(HIFB_ALPHA_S)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_ALPHA_HIFB:
        {
            HIFB_ALPHA_S stAlpha = {0};
            
            if (copy_from_user(&par->stExtendInfo.stAlpha, argp, sizeof(HIFB_ALPHA_S)))
            {
                return -EFAULT;
            }

            stAlpha = par->stExtendInfo.stAlpha;
            if (!par->stExtendInfo.stAlpha.bAlphaChannel)
            {
                stAlpha.u8GlobalAlpha |= 0xff;
                par->stExtendInfo.stAlpha.u8GlobalAlpha |= 0xff;
            }

            s_stDrvOps.HIFB_DRV_SetLayerAlpha(par->stBaseInfo.u32LayerID, &stAlpha);
            break;
        }

        case FBIOGET_DEFLICKER_HIFB:
        {
            HIFB_DEFLICKER_S deflicker;

            if (!g_pstCap[par->stBaseInfo.u32LayerID].u32HDefLevel
                && !g_pstCap[par->stBaseInfo.u32LayerID].u32VDefLevel)
            {
                HIFB_WARNING("deflicker is not supported!\n");
                return -EPERM;
            }

            if (copy_from_user(&deflicker, argp, sizeof(HIFB_DEFLICKER_S)))
            {
                return -EFAULT;
            }

            deflicker.u32HDfLevel = par->stBaseInfo.u32HDflevel;
            deflicker.u32VDfLevel = par->stBaseInfo.u32VDflevel;
            if (par->stBaseInfo.u32HDflevel > 1)
            {
                if (NULL == deflicker.pu8HDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_to_user(deflicker.pu8HDfCoef, par->stBaseInfo.ucHDfcoef, par->stBaseInfo.u32HDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            if (par->stBaseInfo.u32VDflevel > 1)
            {
                if (NULL == deflicker.pu8VDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_to_user(deflicker.pu8VDfCoef, par->stBaseInfo.ucVDfcoef, par->stBaseInfo.u32VDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            if (copy_to_user(argp, &deflicker, sizeof(deflicker)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_DEFLICKER_HIFB:
        {
            HIFB_DEFLICKER_S deflicker;

            if (!g_pstCap[par->stBaseInfo.u32LayerID].u32HDefLevel
                && !g_pstCap[par->stBaseInfo.u32LayerID].u32VDefLevel)
            {
                HIFB_WARNING("deflicker is not supported!\n");
                return -EPERM;
            }

            par->stRunInfo.bModifying = HI_TRUE;

            if (copy_from_user(&deflicker, argp, sizeof(HIFB_DEFLICKER_S)))
            {
                return -EFAULT;
            }

            par->stBaseInfo.u32HDflevel = HIFB_MIN(deflicker.u32HDfLevel, g_pstCap[par->stBaseInfo.u32LayerID].u32HDefLevel);
            if ((par->stBaseInfo.u32HDflevel > 1))
            {
                if (NULL == deflicker.pu8HDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_from_user(par->stBaseInfo.ucHDfcoef, deflicker.pu8HDfCoef, par->stBaseInfo.u32HDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            par->stBaseInfo.u32VDflevel = HIFB_MIN(deflicker.u32VDfLevel, g_pstCap[par->stBaseInfo.u32LayerID].u32VDefLevel);
            if (par->stBaseInfo.u32VDflevel > 1)
            {
                if (NULL == deflicker.pu8VDfCoef)
                {
                    return -EFAULT;
                }

                if (copy_from_user(par->stBaseInfo.ucVDfcoef, deflicker.pu8VDfCoef, par->stBaseInfo.u32VDflevel - 1))
                {
                    return -EFAULT;
                }
            }

            par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_ANTIFLICKERLEVEL;
            
            par->stRunInfo.bModifying = HI_FALSE;

            break;
        }

        case FBIOGET_COLORKEY_HIFB:
        {
            HIFB_COLORKEY_S ck;
            ck.bKeyEnable = par->stExtendInfo.stCkey.bKeyEnable;
            ck.u32Key = par->stExtendInfo.stCkey.u32Key;
            if (copy_to_user(argp, &ck, sizeof(HIFB_COLORKEY_S)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIOPUT_COLORKEY_HIFB:
        {
            HIFB_COLORKEY_S ckey;

            if (copy_from_user(&ckey, argp, sizeof(HIFB_COLORKEY_S)))
            {
                return -EFAULT;
            }

            if (ckey.bKeyEnable && par->stBaseInfo.bPreMul)
            {
                HIFB_ERROR("colorkey and premul couldn't take effect at the same time!\n");
                return HI_FAILURE;
            }

			par->stRunInfo.bModifying = HI_TRUE;
			
            par->stExtendInfo.stCkey.u32Key = ckey.u32Key;
            par->stExtendInfo.stCkey.bKeyEnable = ckey.bKeyEnable;

            
            if (info->var.bits_per_pixel <= 8)
            {
                if (ckey.u32Key >= (2 << info->var.bits_per_pixel))
                {
                    HIFB_ERROR("The key :%d is out of range the palette: %d!\n",
                                ckey.u32Key, 2 << info->var.bits_per_pixel);
                    return HI_FAILURE;
                }

                par->stExtendInfo.stCkey.u8BlueMax  = par->stExtendInfo.stCkey.u8BlueMin = info->cmap.blue[ckey.u32Key];
                par->stExtendInfo.stCkey.u8GreenMax = par->stExtendInfo.stCkey.u8GreenMin = info->cmap.green[ckey.u32Key];
                par->stExtendInfo.stCkey.u8RedMax   = par->stExtendInfo.stCkey.u8RedMin = info->cmap.red[ckey.u32Key];
            }
            else
            {
                HI_U8 u8RMask, u8GMask, u8BMask;
                
                s_stDrvOps.HIFB_DRV_ColorConvert(&info->var, &par->stExtendInfo.stCkey);
				
                u8BMask  = (0xff >> s_stArgbBitField[par->stExtendInfo.enColFmt].stBlue.length);  
                u8GMask  = (0xff >> s_stArgbBitField[par->stExtendInfo.enColFmt].stGreen.length);    
                u8RMask  = (0xff >> s_stArgbBitField[par->stExtendInfo.enColFmt].stRed.length);
				
                par->stExtendInfo.stCkey.u8BlueMin  = (par->stExtendInfo.stCkey.u32Key & (~u8BMask));
                par->stExtendInfo.stCkey.u8GreenMin = ((par->stExtendInfo.stCkey.u32Key >> 8) & (~u8GMask));
                par->stExtendInfo.stCkey.u8RedMin   = ((par->stExtendInfo.stCkey.u32Key >> 16) & (~u8RMask));
            
                par->stExtendInfo.stCkey.u8BlueMax  = par->stExtendInfo.stCkey.u8BlueMin | u8BMask;
                par->stExtendInfo.stCkey.u8GreenMax = par->stExtendInfo.stCkey.u8GreenMin | u8GMask;
                par->stExtendInfo.stCkey.u8RedMax   = par->stExtendInfo.stCkey.u8RedMin | u8RMask;   
            }

			par->stExtendInfo.stCkey.u8RedMask   = 0xff;
			par->stExtendInfo.stCkey.u8BlueMask  = 0xff;
			par->stExtendInfo.stCkey.u8GreenMask = 0xff;
			
            par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_COLORKEY;
            par->stRunInfo.bModifying          = HI_FALSE;
            break;
        }

        case FBIOPUT_SCREENSIZE:
        {
#ifndef CFG_HIFB_VIRTUAL_COORDINATE_SUPPORT			
            HIFB_SIZE_S stScreenSize;
            
            if (par->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
            {
                HIFB_WARNING("you shouldn't set cursor origion!");
                return HI_SUCCESS;
            }
        
            if (copy_from_user(&stScreenSize, argp, sizeof(HIFB_SIZE_S)))
            {
                return -EFAULT;
            }

            s32Ret = hifb_disp_setscreensize(par->stBaseInfo.u32LayerID, stScreenSize.u32Width, stScreenSize.u32Height);

			if (HI_SUCCESS == s32Ret)
			{
				s_stDrvOps.HIFB_DRV_SetScreenFlag(par->stBaseInfo.u32LayerID, HI_TRUE);
			}
#endif            
            break;
        }
            
        case FBIOGET_SCREENSIZE:    
        {
#ifndef CFG_HIFB_VIRTUAL_COORDINATE_SUPPORT				
            HIFB_SIZE_S stScreenSize;

			hifb_wait_regconfig_work(par->stBaseInfo.u32LayerID);
						
			stScreenSize.u32Width  = par->stExtendInfo.u32ScreenWidth;
			stScreenSize.u32Height = par->stExtendInfo.u32ScreenHeight;
            
            if (copy_to_user(argp, &stScreenSize, sizeof(HIFB_SIZE_S)))
            {
                return -EFAULT;
            }
#else
            HIFB_SIZE_S stScreenSize;
            HIFB_RECT   stOutputRect;	
            s_stDrvOps.HIFB_DRV_GetLayerOutRect(par->stBaseInfo.u32LayerID, &stOutputRect);
            stScreenSize.u32Width = stOutputRect.w;
            stScreenSize.u32Height = stOutputRect.h;
            if (copy_to_user(argp, &stScreenSize, sizeof(HIFB_SIZE_S)))
            {
                return -EFAULT;
            }            
#endif			
            break;
        }
        
        case FBIOGET_SCREEN_ORIGIN_HIFB:
        {            			
            if (copy_to_user(argp, &par->stExtendInfo.stPos, sizeof(HIFB_POINT_S)))
            {
                return -EFAULT;
            }
            
            break;
        }

        case FBIOPUT_SCREEN_ORIGIN_HIFB:
        {
            HIFB_POINT_S origin;
		
            if (copy_from_user(&origin, argp, sizeof(HIFB_POINT_S)))
            {
                return -EFAULT;
            }
        #ifdef CONFIG_HIFB_CURSOR_LAYER_NEGATIVE_SUPPORT
			/** ����֧�ָ����괦�� **/
			if (par->stBaseInfo.u32LayerID != HIFB_LAYER_HD_3)
			{/** �����㲻֧�ָ����괦�� **/
				if (origin.s32XPos < 0 || origin.s32YPos < 0)
		        {
		            HIFB_ERROR("It's not supported to set start pos of layer to negative!\n");
		            return HI_FAILURE;
		        }
			}
            par->stRunInfo.bModifying = HI_TRUE; 
            par->stExtendInfo.stPos.s32XPos = origin.s32XPos;
            par->stExtendInfo.stPos.s32YPos = origin.s32YPos; 
        #else
            u32LayerId = par->stBaseInfo.u32LayerID;
			if (par->stExtendInfo.enBufMode != HIFB_LAYER_BUF_NONE)
			{
				if (origin.s32XPos < 0 || origin.s32YPos < 0)
		        {
		            HIFB_ERROR("It's not supported to set start pos of layer to negative!\n");
		            return HI_FAILURE;
		        }
			}

			s_stDrvOps.HIFB_DRV_GetLayerOutRect(u32LayerId, &stOutputRect);
	           
            par->stRunInfo.bModifying = HI_TRUE; 
            par->stExtendInfo.stPos.s32XPos  = origin.s32XPos;
            par->stExtendInfo.stPos.s32YPos  = origin.s32YPos;
			
            if (origin.s32XPos > stOutputRect.w - HIFB_MIN_WIDTH(u32LayerId))
            {
                par->stExtendInfo.stPos.s32XPos = stOutputRect.w - HIFB_MIN_WIDTH(u32LayerId);
            }

            if (origin.s32YPos > stOutputRect.h - HIFB_MIN_HEIGHT(u32LayerId))
            {
                par->stExtendInfo.stPos.s32YPos = stOutputRect.h - HIFB_MIN_HEIGHT(u32LayerId);
            }

			if (origin.s32XPos < 0 || origin.s32YPos < 0)
			{
				HI_U32 u32XPos, u32YPos;
				
				u32Bpp = hifb_getbppbyfmt(par->stDispInfo.stUserBuffer.stCanvas.enFmt);
				u32Addr= par->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr;
				if (origin.s32XPos < 0)
				{
					u32XPos = 0-origin.s32XPos; 
					if (u32XPos > par->stDispInfo.stUserBuffer.stCanvas.u32Width)
					{
						u32XPos = par->stDispInfo.stUserBuffer.stCanvas.u32Width;
					}
					par->stExtendInfo.u32DisplayWidth = par->stDispInfo.stUserBuffer.stCanvas.u32Width-u32XPos;
					u32Addr +=  (u32XPos*u32Bpp/8);
					par->stExtendInfo.stPos.s32XPos = 0;
				}
				
				if (origin.s32YPos < 0)
				{
					u32YPos = 0-origin.s32YPos;
					if (u32YPos > par->stDispInfo.stUserBuffer.stCanvas.u32Height)
					{
						u32YPos = par->stDispInfo.stUserBuffer.stCanvas.u32Height;
					}
					par->stExtendInfo.u32DisplayHeight = par->stDispInfo.stUserBuffer.stCanvas.u32Height-u32YPos;
					u32Addr +=  par->stDispInfo.stUserBuffer.stCanvas.u32Pitch*u32YPos;
					par->stExtendInfo.stPos.s32YPos = 0;
				}
	
				par->stRunInfo.u32ScreenAddr = (u32Addr&0xfffffff0);
				par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
				par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;				
			}

			if (par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
			{
				if (origin.s32XPos >= 0)
				{
					par->stExtendInfo.u32DisplayWidth = par->stDispInfo.stUserBuffer.stCanvas.u32Width;
				}

				if (origin.s32YPos >= 0)
				{
					par->stExtendInfo.u32DisplayHeight= par->stDispInfo.stUserBuffer.stCanvas.u32Height;
				}

				if (origin.s32XPos >= 0 && origin.s32YPos >= 0)
				{
					par->stRunInfo.u32ScreenAddr = par->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr;
					par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
					par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;	
				}

			}
		#endif	
            par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
            par->stRunInfo.bModifying = HI_FALSE;
            
            break;
        }

        case FBIOGET_VBLANK_HIFB:
        {
            if (s_stDrvOps.HIFB_DRV_WaitVBlank(par->stBaseInfo.u32LayerID) < 0)
            {
                HIFB_WARNING("It is not support VBL!\n");
                return -EPERM;
            }

            break;
        }

        case FBIOPUT_SHOW_HIFB:
        {
            HI_BOOL bShow;

            if (par->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
            {
                HIFB_WARNING("you shouldn't show cursor by this cmd!");
                return HI_SUCCESS;
            }

            if (copy_from_user(&bShow, argp, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

            /* reset the same status */
            if (bShow == par->stExtendInfo.bShow)
            {
                HIFB_INFO("The layer is show(%d) now!\n", par->stExtendInfo.bShow);
                return 0;
            }

            par->stRunInfo.bModifying          = HI_TRUE;
            par->stExtendInfo.bShow            = bShow;
            par->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            par->stRunInfo.bModifying          = HI_FALSE;

            break;
        }

        case FBIOGET_SHOW_HIFB:
        {
            if (copy_to_user(argp, &par->stExtendInfo.bShow, sizeof(HI_BOOL)))
            {
                return -EFAULT;
            }

            break;
        }

        case FBIO_WAITFOR_FREFRESH_DONE:
        {
            if (par->stRunInfo.s32RefreshHandle 
               && par->stExtendInfo.enBufMode != HIFB_LAYER_BUF_ONE)
            {
                s32Ret = s_stDrvTdeOps.HIFB_DRV_WaitForDone(par->stRunInfo.s32RefreshHandle, 1000);
                if (s32Ret < 0)
                {
                    HIFB_ERROR("HIFB_DRV_WaitForDone failed!ret=%x\n", s32Ret);
                    return HI_FAILURE;
                }
            }

            break;
        }

        case FBIOGET_CAPABILITY_HIFB:
        {
            if (copy_to_user(argp, (HI_VOID *)&g_pstCap[par->stBaseInfo.u32LayerID], sizeof(HIFB_CAPABILITY_S)))
            {
                HIFB_ERROR("FBIOGET_CAPABILITY_HIFB error\n");
                return -EFAULT;
            }

            break;
        }
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
        case FBIO_SCROLLTEXT_CREATE:
        {
            HIFB_SCROLLTEXT_CREATE_S stScrollText;
            
            if (copy_from_user(&stScrollText, argp, sizeof(HIFB_SCROLLTEXT_CREATE_S)))
            {
                return -EFAULT;
            }
			/** �ж����ظ�ʽ�Ƿ�֧�� **/
			if (stScrollText.stAttr.ePixelFmt >= HIFB_FMT_BUTT)
			{
				HIFB_ERROR("Invalid attributes.\n");
				return HI_FAILURE;
			}

			if (stScrollText.stAttr.stRect.w < 0 || stScrollText.stAttr.stRect.h < 0)
			{
				HIFB_ERROR("Invalid attributes.\n");
				return HI_FAILURE;
			}
			
			s32Ret = hifb_create_scrolltext(par->stBaseInfo.u32LayerID, &stScrollText);
            if (HI_SUCCESS != s32Ret)
            {
                return -EFAULT;
            }
            
            return copy_to_user(argp, &stScrollText, sizeof(HIFB_SCROLLTEXT_CREATE_S));
                     
        }
        case FBIO_SCROLLTEXT_FILL:
        {
            HIFB_SCROLLTEXT_DATA_S stScrollTextData;
            
            if (copy_from_user(&stScrollTextData, argp, sizeof(HIFB_SCROLLTEXT_DATA_S)))
            {
                return -EFAULT;
            }

            if(    HI_NULL == stScrollTextData.u32PhyAddr
                && HI_NULL == stScrollTextData.pu8VirAddr)
            {
                HIFB_ERROR("invalid usr data!\n");
                return -EFAULT;
            }
			s32Ret = hifb_fill_scrolltext(&stScrollTextData);
            if (HI_SUCCESS != s32Ret)
            {
                HIFB_ERROR("failed to fill data to scroll text !\n");
                return -EFAULT;
            }         
            
            break;
        }
		case FBIO_SCROLLTEXT_DESTORY:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }

			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			s32Ret = hifb_destroy_scrolltext(u32LayerId,u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("failed to destroy scrolltext!\n");
                return -EFAULT;	
			}
            
            break;
        } 
        case FBIO_SCROLLTEXT_PAUSE:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
			HIFB_SCROLLTEXT_S  *pstScrollText;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }
				
			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			pstScrollText = &(s_stTextLayer[u32LayerId].stScrollText[u32ScrollTextID]);
			pstScrollText->bPause = HI_TRUE;			
            
            break;
        }
		case FBIO_SCROLLTEXT_RESUME:
        {
            HI_U32 u32LayerId, u32ScrollTextID, u32Handle;
			HIFB_SCROLLTEXT_S  *pstScrollText;
            
            if (copy_from_user(&u32Handle, argp, sizeof(HI_U32)))
            {
                return -EFAULT;
            }

			s32Ret = hifb_parse_scrolltexthandle(u32Handle,&u32LayerId,&u32ScrollTextID);
			if (HI_SUCCESS != s32Ret)
			{
				HIFB_ERROR("invalid scrolltext handle!\n");
                return -EFAULT;
			}

			pstScrollText = &(s_stTextLayer[u32LayerId].stScrollText[u32ScrollTextID]);
			pstScrollText->bPause = HI_FALSE;			
            
            break;
        }
#endif        
		case FBIOGET_ZORDER:
		{
			HI_U32  u32Zorder;
			s_stDrvOps.HIFB_DRV_GetLayerPriority(par->stBaseInfo.u32LayerID, &u32Zorder);
            return copy_to_user(argp, &(u32Zorder), sizeof(HI_U32));				
		}
		case FBIOPUT_ZORDER:
		{
            HIFB_ZORDER_E enZorder;

            if (copy_from_user(&enZorder, argp, sizeof(HIFB_ZORDER_E)))
            {
                return -EFAULT;
            }			

			if (enZorder >= HIFB_ZORDER_BUTT)
			{
				HIFB_ERROR("invalid operation.\n");
				return HI_FAILURE;
			}

			s_stDrvOps.HIFB_DRV_SetLayerPriority(par->stBaseInfo.u32LayerID, enZorder);
			break;
		}
#ifdef CFG_HIFB_LOGO_SUPPORT		
        case FBIO_FREE_LOGO:
        {
            hifb_clear_logo(par->stBaseInfo.u32LayerID, HI_FALSE);
            break;
        }
#endif		
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	    case FBIOPUT_STEREO_DEPTH:
        {
			HI_S32 s32StereoDepth;
			if (copy_from_user(&s32StereoDepth, argp, sizeof(HI_S32)))
            {
                return -EFAULT;
            }

			if (!par->bSetStereoMode)
			{
				HIFB_ERROR("u need to set disp stereo mode first.\n");
				return HI_FAILURE;
			}
			
			s_stDrvOps.HIFB_DRV_SetStereoDepth(par->stBaseInfo.u32LayerID, s32StereoDepth);

			par->st3DInfo.s32StereoDepth = s32StereoDepth;
			
            break;
        }

		case FBIOGET_STEREO_DEPTH:
        {
			if (!par->bSetStereoMode)
			{
				HIFB_ERROR("u need to set disp stereo mode first.\n");
				return HI_FAILURE;
			}

			if (copy_to_user(argp, &(par->st3DInfo.s32StereoDepth), sizeof(HI_S32)))
            {
                return -EFAULT;
            }
			
            break;
        }
#endif		
        default:
        {
            HIFB_ERROR("the command:0x%x is unsupported!\n", cmd);
            return -EINVAL;
        }
    }

    return s32Ret;
}

static HI_VOID hifb_3DMode_callback(HI_VOID * pParaml,HI_VOID * pParamr)
{
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
	HI_U32 *pu32LayerId;
	HIFB_STEREO_MODE_E *penStereoMode;
	struct fb_info *info;
    HIFB_PAR_S *pstPar;
	HI_S32 s32Ret;

	pu32LayerId   = (HI_U32 *)pParaml;
	penStereoMode = (HIFB_STEREO_MODE_E *)pParamr;

	info   = s_stLayer[*pu32LayerId].pstInfo;
	pstPar = (HIFB_PAR_S *)(info->par);

	pstPar->st3DInfo.enOutStereoMode = *penStereoMode;
	if (HIFB_STEREO_MONO == *penStereoMode)
	{
		pstPar->bSetStereoMode = HI_FALSE;
		pstPar->st3DInfo.enInStereoMode  = HIFB_STEREO_MONO;
        if (pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart)
        {
            /** free old buffer*/
            HIFB_INFO("free old stereo buffer\n");
            hifb_freestereobuf(pstPar);
			pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart = 0;
        }       
	}
	else
	{
	    if(HIFB_LAYER_BUF_STANDARD == pstPar->stExtendInfo.enBufMode)
	    {
	    	HI_U32 u32BufferSize;
			HI_U32 u32Stride;
			/**
			 ** the stride of 3D buffer
			 **/
			u32Stride = info->var.xres * info->var.bits_per_pixel >> 3;
			HI_HIFB_GetStride(u32Stride,&u32Stride,CONFIG_HIFB_STRIDE_16ALIGN);

	        u32BufferSize = u32Stride * info->var.yres / 2; 
			u32BufferSize *= pstPar->stRunInfo.u32BufNum; /** �ڴ���� **/
					
			s32Ret = hifb_checkandalloc_3dmem(pstPar->stBaseInfo.u32LayerID, u32BufferSize);
			if (s32Ret < 0)
			{
				HIFB_INFO("fail to alloc 3d memory.\n ");
			}	
			pstPar->st3DInfo.st3DSurface.u32Pitch = u32Stride;
	    }
		pstPar->bSetStereoMode = HI_TRUE;
	}

	if (pstPar->st3DInfo.st3DMemInfo.u32StereoMemStart == 0
		&& (*penStereoMode == HIFB_STEREO_SIDEBYSIDE_HALF
		|| *penStereoMode == HIFB_STEREO_TOPANDBOTTOM)
		&& HIFB_LAYER_BUF_STANDARD == pstPar->stExtendInfo.enBufMode)
		s_stDrvOps.HIFB_DRV_SetTriDimMode(*pu32LayerId, pstPar->st3DInfo.enOutStereoMode, HIFB_STEREO_MONO);
	else
		s_stDrvOps.HIFB_DRV_SetTriDimMode(*pu32LayerId, pstPar->st3DInfo.enOutStereoMode, pstPar->st3DInfo.enOutStereoMode);


	/**
	 ** these parameters will take effect after refresh
	 **/
    pstPar->stRunInfo.bModifying          = HI_TRUE;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_STRIDE;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_INRECT;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_DISPLAYADDR;
	pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_REFRESH;
	pstPar->stRunInfo.bModifying          = HI_FALSE;
    hifb_assign_dispbuf(pstPar->stBaseInfo.u32LayerID); 
    hifb_clearallstereobuf(info);

    if (HIFB_LAYER_BUF_STANDARD == pstPar->stExtendInfo.enBufMode)
	{
    	hifb_pan_display(&info->var, info);	
	}
	else
	{
		hifb_refreshuserbuffer(pstPar->stBaseInfo.u32LayerID);
	}
#endif
    
	return;
	
}


/***************************************************************************************
* func          : hifb_layer_init
* description   : CNcomment: ͼ���ʼ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_layer_init(HI_U32 u32LayerID)
{
	struct fb_info *info;
    HIFB_PAR_S *par;
	HIFB_COLOR_FMT_E enColorFmt;
	HIFB_RECT stInRect;

	info   = s_stLayer[u32LayerID].pstInfo;
	par = (HIFB_PAR_S *)(info->par);

	if (IS_HD_LAYER(u32LayerID))
    {
        info->var = s_stDefVar[HIFB_LAYER_TYPE_HD];
    }
    else if (IS_SD_LAYER(u32LayerID))
    {
        info->var = s_stDefVar[HIFB_LAYER_TYPE_SD];
    }
    else if(  IS_AD_LAYER(u32LayerID) 
		    || IS_MINOR_HD_LAYER(u32LayerID)
			|| IS_MINOR_SD_LAYER(u32LayerID))
    {/** G1G2G5�Ǹ�ADʹ�õ� **/
        info->var = s_stDefVar[HIFB_LAYER_TYPE_AD];
    }
    else
    {
		return HI_FAILURE;
    }

	enColorFmt = hifb_getfmtbyargb(&info->var.red, &info->var.green, &info->var.blue, &info->var.transp, info->var.bits_per_pixel);
	
	memset(&(par->stDispInfo.stUserBuffer), 0, sizeof(HIFB_BUFFER_S));
	memset(&(par->stDispInfo.stCanvasSur),  0, sizeof(HIFB_SURFACE_S));

	/**
	 **�Զ�ѡ����
	 **/
	par->stBaseInfo.bNeedAntiflicker = HI_FALSE;
	hifb_disp_setantiflickerlevel(par->stBaseInfo.u32LayerID, HIFB_LAYER_ANTIFLICKER_AUTO);    


	par->stRunInfo.bModifying               = HI_FALSE;
	par->stRunInfo.u32ParamModifyMask       = 0;
	par->stExtendInfo.stAlpha.bAlphaEnable  = HI_TRUE;
	par->stExtendInfo.stAlpha.bAlphaChannel = HI_FALSE;
	par->stExtendInfo.stAlpha.u8Alpha0      = HIFB_ALPHA_TRANSPARENT;
	par->stExtendInfo.stAlpha.u8Alpha1      = HIFB_ALPHA_OPAQUE;
	par->stExtendInfo.stAlpha.u8GlobalAlpha = HIFB_ALPHA_OPAQUE;
	s_stDrvOps.HIFB_DRV_SetLayerAlpha(par->stBaseInfo.u32LayerID, &par->stExtendInfo.stAlpha);

	memset(&(par->stExtendInfo.stCkey), 0, sizeof(HIFB_COLORKEYEX_S));
	par->stExtendInfo.stCkey.u8RedMask   = 0xff;
	par->stExtendInfo.stCkey.u8GreenMask = 0xff;
	par->stExtendInfo.stCkey.u8BlueMask  = 0xff;
	s_stDrvOps.HIFB_DRV_SetLayerKeyMask(par->stBaseInfo.u32LayerID, &par->stExtendInfo.stCkey);

	par->stExtendInfo.enColFmt = enColorFmt;
	s_stDrvOps.HIFB_DRV_SetLayerDataFmt(par->stBaseInfo.u32LayerID, par->stExtendInfo.enColFmt);

	memset(&par->stExtendInfo.stPos, 0, sizeof(HIFB_POINT_S));

	info->fix.line_length = info->var.xres_virtual * (info->var.bits_per_pixel >> 3);

	par->stExtendInfo.u32DisplayWidth       = info->var.xres;
	par->stExtendInfo.u32DisplayHeight      = info->var.yres;

	par->st3DInfo.st3DSurface.u32Pitch      = info->fix.line_length;
	par->st3DInfo.st3DSurface.enFmt         = par->stExtendInfo.enColFmt;
	par->st3DInfo.st3DSurface.u32Width      = info->var.xres;
	par->st3DInfo.st3DSurface.u32Height     = info->var.yres;
	par->st3DInfo.st3DMemInfo.u32StereoMemLen   = HI_NULL;
	par->st3DInfo.st3DMemInfo.u32StereoMemStart = HI_NULL;
	    
	stInRect.x = 0;
	stInRect.y = 0;
	stInRect.w = info->var.xres;
	stInRect.h = info->var.yres;        
	/**
	 **set layer's inrect the same as outrect when initial
	 **/
	s_stDrvOps.HIFB_DRV_SetLayerInRect(par->stBaseInfo.u32LayerID, &stInRect);
	s_stDrvOps.HIFB_DRV_SetLayerStride(par->stBaseInfo.u32LayerID, info->fix.line_length);

#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
    mutex_init(&par->st3DInfo.st3DMemInfo.stStereoMemLock);
	s_stDrvOps.HIFB_DRV_SetTriDimMode(par->stBaseInfo.u32LayerID, HIFB_STEREO_MONO, HIFB_STEREO_MONO); 
#endif

	/**
	 **��׼ˢ��
	 **/
	par->stExtendInfo.enBufMode               = HIFB_LAYER_BUF_STANDARD;

	par->stRunInfo.u32BufNum = HIFB_MAX_FLIPBUF_NUM;

	par->bPanFlag  = HI_FALSE;
	par->bPanReady = HI_TRUE;
	par->bSetVar   = HI_FALSE;
	spin_lock_init(&par->stBaseInfo.lock);

	return HI_SUCCESS;
}



/***************************************************************************************
* func          : hifb_createproc
* description   : CNcomment: ����proc CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
#ifdef CFG_HIFB_PROC_SUPPORT 
static HI_S32 hifb_createproc(HIFB_LAYER_ID_E enLayerID)
{
    HIFB_PAR_S *par;
	HI_CHAR entry_name[16];
	GFX_PROC_ITEM_S item;
	struct fb_info *info;
	
	info = s_stLayer[enLayerID].pstInfo;
	par  = (HIFB_PAR_S *)(info->par);	

	if (par->stProcInfo.bCreatedProc)
	{
	    return HI_FAILURE;
	}

	/* create a proc entry in 'hifb' for the layer */
	snprintf(entry_name, sizeof(entry_name), "hifb%d", enLayerID);
	entry_name[sizeof(entry_name) - 1] = '\0';
	item.fnRead   = hifb_read_proc;
	item.fnWrite  = hifb_write_proc;
	item.fnIoctl  = HI_NULL;
	HI_GFX_PROC_AddModule(entry_name, &item, (HI_VOID *)s_stLayer[enLayerID].pstInfo);

    HIFB_INFO("success to create %s proc!\n", entry_name);
	par->stProcInfo.bCreatedProc = HI_TRUE;
	par->stProcInfo.bWbcProc     = HI_FALSE;
	par->stProcInfo.enWbcLayerID = HIFB_LAYER_ID_BUTT;
	
    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : hifb_createwbcproc
* description   : CNcomment: ����wbc proc CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_createwbcproc(HIFB_PAR_S *pMasterpar)
{
	HIFB_PAR_S *par;
	struct fb_info *info;
	HI_CHAR entry_name[16];
	GFX_PROC_ITEM_S item;
	HIFB_SLVLAYER_DATA_S stLayerInfo;

	HI_S32 s32Ret;

	s32Ret = s_stDrvOps.HIFB_DRV_GetSlvLayerInfo(&stLayerInfo);

	if(HI_FAILURE == s32Ret)
	{
	    return HI_FAILURE;
	}

	if (stLayerInfo.enLayerID >= HIFB_LAYER_ID_BUTT)
	{	    
	    return HI_FAILURE;
	}

	info = s_stLayer[stLayerInfo.enLayerID].pstInfo;
	par  = (HIFB_PAR_S *)(info->par);

	pMasterpar->stProcInfo.enWbcLayerID = stLayerInfo.enLayerID;
	par->stProcInfo.u32MasterLayerNum++;
	HIFB_INFO("create wbc proc, master layerid %d, masterlayernum %d\n", 
		   pMasterpar->stBaseInfo.u32LayerID, par->stProcInfo.u32MasterLayerNum);

	if (par->stProcInfo.bCreatedProc)
	{
	    return HI_SUCCESS;
	}
 
	/* create a proc entry in 'hifb' for the layer */
	snprintf(entry_name, sizeof(entry_name), "hifb%d", stLayerInfo.enLayerID);
	item.fnRead = hifb_read_proc;
	item.fnWrite= hifb_write_proc;
	item.fnIoctl= HI_NULL;
	HI_GFX_PROC_AddModule(entry_name, &item, (HI_VOID *)s_stLayer[stLayerInfo.enLayerID].pstInfo);
	HIFB_INFO("success to create %s proc!\n", entry_name);
    
	par->stProcInfo.bCreatedProc   = HI_TRUE;
	par->stProcInfo.bWbcProc       = HI_TRUE;
	
    return HI_SUCCESS;
	
}

static HI_S32 hifb_removewbcproc(HIFB_LAYER_ID_E enWbcLayerID)
{	
    HIFB_PAR_S *par;
	struct fb_info *info;
	HI_CHAR entry_name[16];

	info = s_stLayer[enWbcLayerID].pstInfo;
	par  = (HIFB_PAR_S *)(info->par);

	if (!par->stProcInfo.bWbcProc)
	{
	    return HI_FAILURE;
	}
	
    snprintf(entry_name, sizeof(entry_name), "hifb%d", enWbcLayerID);            
    HI_GFX_PROC_RemoveModule(entry_name);
	HIFB_INFO("success to remove hifb%d proc!\n", enWbcLayerID);
	
	par->stProcInfo.bCreatedProc = HI_FALSE;
	par->stProcInfo.bWbcProc     = HI_FALSE;
	par->stProcInfo.u32MasterLayerNum = 0;
	
    return HI_SUCCESS;
}
#endif


/***************************************************************************************
* func          : hifb_sync_init
* description   : CNcomment: fenceͬ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID hifb_sync_init(HI_U32 u32LayerID)
{
#ifdef CFG_HIFB_FENCE_SUPPORT
	/**
	 **androidֻ��fb0,����ֻ��android�����
	 **/
    if (u32LayerID == HIFB_LAYER_HD_0)
    {
    	/** ������������ʼ��������ֻ�Ǹ�����ֵ **/
        atomic_set(&s_SyncInfo.s32RefreshCnt, 0);
        s_SyncInfo.u32FenceValue = 1;
        s_SyncInfo.u32Timeline   = 0;
        s_SyncInfo.FrameEndFlag  = 0;
		/**
		 **��ʼ��֡�����ж�
		 **/
        init_waitqueue_head(&s_SyncInfo.FrameEndEvent);
		/**
		 **����hifb���̵�ʱ���ᣬÿ�����̶����Լ���ʱ����
		 **/
        s_SyncInfo.pstTimeline = sw_sync_timeline_create("hifb");
    }
#endif
    return;
}

static HI_VOID hifb_sync_deinit(HI_U32 u32LayerID)
{
#ifdef CFG_HIFB_FENCE_SUPPORT  
    if (s_SyncInfo.pstTimeline && u32LayerID == HIFB_LAYER_HD_0) 
    {
        sync_timeline_destroy((struct sync_timeline*)s_SyncInfo.pstTimeline);
        s_SyncInfo.pstTimeline = NULL;
    }
#endif
    return;
}


/***************************************************************************************
* func          : hifb_open
* description   : CNcomment: ���豸 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_open (struct fb_info *info, HI_S32 user)
{     
    HI_S32 cnt; 
    HI_S32 s32Ret;
	HI_U32 u32InSize = 0;
	HIFB_PAR_S *par;
	HI_U32 u32BufSize, u32Pitch; 
	par = (HIFB_PAR_S *)info->par;

	cnt = atomic_read(&par->stBaseInfo.ref_count);
	/**
	 ** increase reference count after read
	 ** ����͵��ã���ֹ���̵߳����
	 **/
    atomic_inc(&par->stBaseInfo.ref_count);
	
	/**
	 **��ʼ����ʱ���ÿ��fb�豸��������par->stBaseInfo.u32LayerID
	 **/
    if (!g_pstCap[par->stBaseInfo.u32LayerID].bLayerSupported){
        HIFB_ERROR("gfx%d is not supported!\n", par->stBaseInfo.u32LayerID);
        return HI_FAILURE;
    }

    if (!cnt){/** fist time open fb device <ÿ���豸��һ�δ� **/

	    /**
	     **��ȡTDE��������
	     **/
		s32Ret = s_stDrvTdeOps.HIFB_DRV_TdeOpen();
		if(HI_SUCCESS != s32Ret){
            HIFB_INFO("tde was not avaliable!\n");                            
        }

		
		/**
      	 **��ͼ��
         **/
        s32Ret = s_stDrvOps.HIFB_DRV_OpenLayer(par->stBaseInfo.u32LayerID);
        if(HI_SUCCESS != s32Ret){
            HIFB_ERROR("failed to open layer%d !\n", par->stBaseInfo.u32LayerID);                
            return s32Ret;
        }
		/**
		 ** fenceͬ��
		 **/
        hifb_sync_init(par->stBaseInfo.u32LayerID);

#ifdef CFG_HIFB_FENCE_SUPPORT
        par->pstHwcRefreshWorkqueue = create_singlethread_workqueue("hifb_hwcrefresh");
        if (par->pstHwcRefreshWorkqueue == NULL)
        {
            HIFB_ERROR("failed!\n");                
            return HI_FAILURE;
        }
#endif

		/**
		 ** layer parameters initial
		 **/
		s32Ret = hifb_layer_init(par->stBaseInfo.u32LayerID);
		if(HI_SUCCESS != s32Ret){
	        HIFB_ERROR("hifb layer init failed\n");
	    }
	
		#ifdef CFG_HIFB_LOGO_SUPPORT
	   		/**
	 	 	 ** base��������
	    	 **/
			s32Ret = hifb_set_logosd(par->stBaseInfo.u32LayerID);
			if(HI_SUCCESS != s32Ret){
		        HIFB_INFO("hifb layer init failed\n");
		    }
		#endif

		/***********alloc disp buffer, set disp address******/
		u32InSize = (info->var.xres_virtual * info->var.bits_per_pixel) >> 3;
		HI_HIFB_GetStride(u32InSize,&u32Pitch,CONFIG_HIFB_STRIDE_16ALIGN);
		
		u32BufSize  = info->var.yres_virtual * u32Pitch;
		
        if(info->fix.smem_len < u32BufSize){
			hifb_realloc_layermem(info, u32BufSize);			
		}

		/**
		 **ʹ�õڼ����ڴ�
		 **/
		par->stRunInfo.u32IndexForInt = 0;

		hifb_assign_dispbuf(par->stBaseInfo.u32LayerID);

		/** 
		 ** clear fb memory if it's the first time to open layer
		 **/
		memset(info->screen_base, 0, info->fix.smem_len);

		
		s_stDrvOps.HIFB_DRV_SetLayerAddr(par->stBaseInfo.u32LayerID, info->fix.smem_start);
		par->stRunInfo.u32ScreenAddr  = info->fix.smem_start;
		par->st3DInfo.u32rightEyeAddr = par->stRunInfo.u32ScreenAddr;

		/***********set callback function to hard ware*********/
		s32Ret = s_stDrvOps.HIFB_DRV_SetIntCallback(HIFB_CALLBACK_TYPE_VO, (IntCallBack)hifb_vo_callback, par->stBaseInfo.u32LayerID);
		if(HI_SUCCESS != s32Ret){
			HIFB_ERROR("failed to set vo callback function, open layer%d failure\n", par->stBaseInfo.u32LayerID);
			return s32Ret;
		}

		s32Ret = s_stDrvOps.HIFB_DRV_SetIntCallback(HIFB_CALLBACK_TYPE_3DMode_CHG, (IntCallBack)hifb_3DMode_callback, par->stBaseInfo.u32LayerID);
		if(HI_SUCCESS != s32Ret){
			HIFB_ERROR("failed to set stereo mode change callback function, open layer%d failure\n", par->stBaseInfo.u32LayerID);
			return s32Ret;
		}
        
		#ifdef CFG_HIFB_FENCE_SUPPORT  
	        if(HIFB_LAYER_HD_0 == par->stBaseInfo.u32LayerID){
	    		s32Ret = s_stDrvOps.HIFB_DRV_SetIntCallback(HIFB_CALLBACK_TYPE_FRAME_END, (IntCallBack)hifb_frame_end_callback, par->stBaseInfo.u32LayerID);
	    		if(HI_SUCCESS != s32Ret){
	    			HIFB_ERROR("failed to set frame end callback function, open layer%d failure\n", par->stBaseInfo.u32LayerID);
	    			return s32Ret;
	    		}
	        }
		#endif	
		
		#ifdef CFG_HIFB_PROC_SUPPORT
			if (HI_SUCCESS == hifb_createproc(par->stBaseInfo.u32LayerID))
			{
			    hifb_createwbcproc(par);
			}		
		#endif			
        
        s_stDrvOps.HIFB_DRV_EnableLayer(par->stBaseInfo.u32LayerID, HI_TRUE);

        par->stExtendInfo.bShow = HI_TRUE; 
        par->bVblank            = HI_TRUE;

    }
    
    par->stExtendInfo.bOpen = HI_TRUE;

    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : hifb_release
* description   : CNcomment: �ر��豸 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_release (struct fb_info *info, HI_S32 user)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    HI_U32 cnt = atomic_read(&par->stBaseInfo.ref_count);

    if (!cnt)
    {
        return -EINVAL;
    }	
    /**
     ** only one user 
     **/
    if (cnt == 1 )
    {
#ifdef CFG_HIFB_PROC_SUPPORT
        HI_CHAR entry_name[16];
#endif		
        par->stExtendInfo.bShow = HI_FALSE;
        if (par->stBaseInfo.u32LayerID != HIFB_LAYER_CURSOR)
        {
            s_stDrvOps.HIFB_DRV_EnableLayer(par->stBaseInfo.u32LayerID, HI_FALSE);
            s_stDrvOps.HIFB_DRV_UpdataLayerReg(par->stBaseInfo.u32LayerID);

			/*************unRegister callback function************************/
	        s_stDrvOps.HIFB_DRV_SetIntCallback(HIFB_CALLBACK_TYPE_VO,         HI_NULL, par->stBaseInfo.u32LayerID);
			s_stDrvOps.HIFB_DRV_SetIntCallback(HIFB_CALLBACK_TYPE_3DMode_CHG, HI_NULL, par->stBaseInfo.u32LayerID);

            memset(info->screen_base, 0, info->fix.smem_len);
			/**
			 **free canvas buffer
			 **/
			hifb_freeccanbuf(par);
			
#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
			if (s_stTextLayer[par->stBaseInfo.u32LayerID].bAvailable)
			{
			    HI_U32 i;
				for (i = 0; i < SCROLLTEXT_NUM; i++)
				{
				    if (s_stTextLayer[par->stBaseInfo.u32LayerID].stScrollText[i].bAvailable)
				    {
				        hifb_freescrolltext_cachebuf(&(s_stTextLayer[par->stBaseInfo.u32LayerID].stScrollText[i]));
						memset(&s_stTextLayer[par->stBaseInfo.u32LayerID].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
				    }
				}
				s_stTextLayer[par->stBaseInfo.u32LayerID].bAvailable = HI_FALSE;
				s_stTextLayer[par->stBaseInfo.u32LayerID].u32textnum = 0;
				s_stTextLayer[par->stBaseInfo.u32LayerID].u32ScrollTextId = 0;
			}
#endif
			
#ifdef CFG_HIFB_STEREO3D_HW_SUPPORT
            hifb_freestereobuf(par);
            par->st3DInfo.enInStereoMode  = HIFB_STEREO_MONO;
			par->st3DInfo.enOutStereoMode = HIFB_STEREO_MONO;
            par->bSetStereoMode           = HI_FALSE;

			s_stDrvOps.HIFB_DRV_SetTriDimMode(par->stBaseInfo.u32LayerID, HIFB_STEREO_MONO, HIFB_STEREO_MONO);
			s_stDrvOps.HIFB_DRV_SetTriDimAddr(par->stBaseInfo.u32LayerID, HI_NULL);
			s_stDrvOps.HIFB_DRV_SetLayerAddr (par->stBaseInfo.u32LayerID, HI_NULL);
#endif
            s_stDrvOps.HIFB_DRV_CloseLayer(par->stBaseInfo.u32LayerID);
        }

#ifdef CFG_HIFB_PROC_SUPPORT
        /* remove a proc entry in 'hifb' for the layer */
        if (par->stProcInfo.bCreatedProc)
        {
            HIFB_PAR_S *WbcLayerPar;
            struct fb_info *WbcLayerInfo;
            HIFB_LAYER_ID_E enWbcLayerID;
			
            snprintf(entry_name, sizeof(entry_name), "hifb%d", par->stBaseInfo.u32LayerID);            
            HI_GFX_PROC_RemoveModule(entry_name);
			par->stProcInfo.bCreatedProc = HI_FALSE;
			HIFB_INFO("success to remove %s proc!\n", entry_name);
            
			enWbcLayerID = par->stProcInfo.enWbcLayerID;
			if (enWbcLayerID < HIFB_LAYER_ID_BUTT)
			{
			    WbcLayerInfo = s_stLayer[enWbcLayerID].pstInfo;
		        WbcLayerPar  = (HIFB_PAR_S *)(WbcLayerInfo->par);
				WbcLayerPar->stProcInfo.u32MasterLayerNum--;
				if (0 == WbcLayerPar->stProcInfo.u32MasterLayerNum)
				{
				    hifb_removewbcproc(enWbcLayerID);
				}
			}
        }        		
#endif
      hifb_sync_deinit(par->stBaseInfo.u32LayerID);
      par->stExtendInfo.bOpen = HI_FALSE;
    }

#ifdef CFG_HIFB_LOGO_SUPPORT    
    hifb_clear_logo(par->stBaseInfo.u32LayerID, HI_FALSE);
#endif

    /* decrease the reference count */
    atomic_dec(&par->stBaseInfo.ref_count);

    return 0;
}


static HI_S32 hifb_dosetcolreg(unsigned regno, unsigned red, unsigned green,
                          unsigned blue, unsigned transp, struct fb_info *info, HI_BOOL bUpdateReg)
{
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;
    //HI_U32 *pCmap;

    HI_U32 argb = ((transp & 0xff) << 24) | ((red & 0xff) << 16) | ((green & 0xff) << 8) | (blue & 0xff);

    if (regno > 255)
    {
        HIFB_WARNING("regno: %d, larger than 255!\n", regno);
        return HI_FAILURE;
    }

    s_stDrvOps.HIFB_DRV_SetColorReg(par->stBaseInfo.u32LayerID, regno, argb, bUpdateReg);
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : _setcolreg
* description   : CNcomment: ���õ�ɫ����Ϣ CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 _setcolreg(unsigned regno, unsigned red, unsigned green,
                          unsigned blue, unsigned transp, struct fb_info *info)
{
    HI_S32 Ret = HI_SUCCESS;

	switch (info->var.bits_per_pixel) 
	{
    	case 8:
    	    Ret = hifb_dosetcolreg(regno, red, green, blue, transp, info, HI_TRUE);    
    	    break;
    	case 16:
    		if (regno >= 16)
			{
    			break;
    		}
    		if (info->var.red.offset == 10) 
			{
    			/* 1:5:5:5 */
    			((u32*) (info->pseudo_palette))[regno] =
    				((red   & 0xf800) >>  1) |
    				((green & 0xf800) >>  6) |
    				((blue  & 0xf800) >> 11);
    		} 
			else 
			{
    			/* 0:5:6:5 */
    			((u32*) (info->pseudo_palette))[regno] =
    				((red   & 0xf800)      ) |
    				((green & 0xfc00) >>  5) |
    				((blue  & 0xf800) >> 11);
    		}
    		break;
    	case 24:
    	case 32:
    		red   >>= 8;
    		green >>= 8;
    		blue  >>= 8;
    		transp >>= 8;
    		((u32 *)(info->pseudo_palette))[regno] =
    			(red   << info->var.red.offset)   |
    			(green << info->var.green.offset) |
    			(blue  << info->var.blue.offset)  |
    			(transp  << info->var.transp.offset) ;
    		break;
    }

    return Ret;
	
}

static HI_S32 hifb_setcolreg(unsigned regno, unsigned red, unsigned green,
                          unsigned blue, unsigned transp, struct fb_info *info)
{

    return _setcolreg(regno, red, green, blue, transp, info);
    
}


/***************************************************************************************
* func          : hifb_setcmap
* description   : CNcomment: ���õ�ɫ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_setcmap(struct fb_cmap *cmap, struct fb_info *info)
{
    HI_S32 i = 0, start = 0;
    unsigned short *red, *green, *blue, *transp;
    unsigned short hred, hgreen, hblue, htransp = 0xffff;
    HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;

    if (par->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
    {
        return -EINVAL;
    }

    if (!g_pstCap[par->stBaseInfo.u32LayerID].bCmap)
    {
        /* AE6D03519, delete this color map warning! */
        HIFB_INFO("Layer%d is not support color map!\n", par->stBaseInfo.u32LayerID);
        return -EPERM;
    }

    red    = cmap->red;
    green  = cmap->green;
    blue   = cmap->blue;
    transp = cmap->transp;
    start  = cmap->start;

    for (i = 0; i < cmap->len; i++)
    {
        hred   = *red++;
        hgreen = *green++;
        hblue  = *blue++;
        htransp = (transp != NULL)?*transp++:0xffff;
        _setcolreg(start++, hred, hgreen, hblue, htransp, info);
    }

    return 0;
}

#ifdef CFG_HIFB_SUPPORT_CONSOLE
void hifb_fillrect(struct fb_info *p, const struct fb_fillrect *rect)
{
    cfb_fillrect(p, rect);   
}
void hifb_copyarea(struct fb_info *p, const struct fb_copyarea *area)
{
    cfb_copyarea(p, area);  
}
void hifb_imageblit(struct fb_info *p, const struct fb_image *image)
{
    cfb_imageblit(p, image);
}
#endif

#ifdef CONFIG_DMA_SHARED_BUFFER
struct dma_buf * hifb_dmabuf_export(struct fb_info *info)
{
     return hifb_memblock_export(info->fix.smem_start, info->fix.smem_len, 0);
}
#endif

static struct fb_ops s_sthifbops =
{
    .owner			= THIS_MODULE,
    .fb_open		= hifb_open,
    .fb_release		= hifb_release,
    .fb_check_var	= hifb_check_var,
    .fb_set_par		= hifb_set_par,
    .fb_pan_display = hifb_pan_display,
    .fb_ioctl		= hifb_ioctl,
    .fb_setcolreg	= hifb_setcolreg,
    .fb_setcmap		= hifb_setcmap,
#ifdef CFG_HIFB_SUPPORT_CONSOLE    
   	.fb_fillrect	= hifb_fillrect,
	.fb_copyarea	= hifb_copyarea,
	.fb_imageblit	= hifb_imageblit,
#endif	
#ifdef CONFIG_DMA_SHARED_BUFFER
    .fb_dmabuf_export	= hifb_dmabuf_export,
#endif
};

/******************************************************************************
 Function        : hifb_overlay_cleanup
 Description     : releae the resource for certain framebuffer
 Data Accessed   :
 Data Updated    :
 Output          : None
 Input           : HI_S32 which_layer
                   HI_S32 need_unregister
 Return          : static
 Others          : 0
******************************************************************************/

static HI_VOID hifb_overlay_cleanup(HI_U32 u32LayerId, HI_BOOL bUnregister)
{
    struct fb_info* info = NULL;
    struct fb_cmap* cmap = NULL;

    /* get framebuffer info structure pointer */
    info = s_stLayer[u32LayerId].pstInfo;
    if (info != NULL){
        cmap = &info->cmap;

        if (cmap->len != 0){
            /* free color map */
            fb_dealloc_cmap(cmap);
        }

        if (info->screen_base != HI_NULL){
            hifb_buf_ummap(info->screen_base);
        }

        if (info->fix.smem_start != 0){
            hifb_buf_freemem(info->fix.smem_start);
        }
        
        if (bUnregister){
            unregister_framebuffer(info);
        }

		/** free framebuffer mem **/
        framebuffer_release(info);
        
        s_stLayer[u32LayerId].pstInfo = NULL;
        
		#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
			if (s_stTextLayer[u32LayerId].bAvailable){
			    HI_U32 i = 0;
				for (i = 0; i < SCROLLTEXT_NUM; i++){
				    if (s_stTextLayer[u32LayerId].stScrollText[i].bAvailable){
				        hifb_freescrolltext_cachebuf(&(s_stTextLayer[u32LayerId].stScrollText[i]));
						memset(&s_stTextLayer[u32LayerId].stScrollText[i],0,sizeof(HIFB_SCROLLTEXT_S));
				    }
				}
				s_stTextLayer[u32LayerId].bAvailable = HI_FALSE;
				s_stTextLayer[u32LayerId].u32textnum = 0;
				s_stTextLayer[u32LayerId].u32ScrollTextId = 0;
			}
		#endif        
    }
}

/***************************************************************************************
* func          : hifb_overlay_probe
* description   : CNcomment: ע��ͼ�� CNend\n
                  info->fix.smem_start  �����ַ
                  info->screen_base     �����ַ
                  info->fix.smem_len    buffer��С
                  info->fix.line_length �м��
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_overlay_probe(HI_U32 u32LayerId, HI_U32 u32VramSize)
{
    HI_S32 s32Ret = 0;
    struct fb_info * info = NULL;
    HIFB_PAR_S *pstPar = NULL;

    /**
     ** Creates a new frame buffer info structure. 
     ** reserves hifb_par for driver private data (info->par)
     ** PAR + ��ɫ��
     **/
    info = framebuffer_alloc((sizeof(HIFB_PAR_S)+sizeof(u32) * 256), NULL);
    if(!info){
        HIFB_ERROR("failed to malloc the fb_info!\n");
        return -ENOMEM;
    }

    info->pseudo_palette = ((HI_U8*)(info->par) + sizeof(HIFB_PAR_S));
    /**
     ** save the info pointer in global pointer array, otherwise the 
     ** info will be lost in cleanup if the following code has error
     **/
    s_stLayer[u32LayerId].pstInfo = info;
   
	info->flags = FBINFO_FLAG_DEFAULT | FBINFO_HWACCEL_YPAN | FBINFO_HWACCEL_XPAN;
    
    /**
     ** initialize file operations
     **/
    info->fbops = &s_sthifbops;

	/**
	 **��ʼ���Լ�ά��������ֵ������ͼ��ID�͵�ַ
	 **/
    pstPar                         = (HIFB_PAR_S *)(info->par);
    pstPar->stBaseInfo.u32LayerID  = u32LayerId;
    pstPar->stDispInfo.stCanvasSur.u32PhyAddr = 0;

    if (IS_HD_LAYER(u32LayerId)){
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_HD];
    }else if (IS_SD_LAYER(u32LayerId)){
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_SD];
    }else if(  IS_AD_LAYER(u32LayerId) 
		    || IS_MINOR_HD_LAYER(u32LayerId)
			|| IS_MINOR_SD_LAYER(u32LayerId)){
    /** ����Ļ�õ�ͼ�� **/
        info->fix = s_stDefFix[HIFB_LAYER_TYPE_AD];
    }else{
		return HI_FAILURE;
    } 
    
    /**
     ** it's not need to alloc mem for cursor layer
     **/
    if(u32VramSize != 0){
        /**
         ** Modify 16 to 32, preventing out of bound.
         **/
        HI_CHAR name[32];
        /**
         ** initialize the fix screen info 
         **/
        
        snprintf(name, sizeof(name), "HIFB_Fb%d", u32LayerId);
		name[sizeof(name) -1] = '\0';
		
        info->fix.smem_start = hifb_buf_allocmem(name, (u32VramSize)* 1024);
        if (0 == info->fix.smem_start){
            HIFB_ERROR("%s:failed to malloc the video memory, size: %d KBtyes!\n", name, (u32VramSize));
            goto ERR;
        }else{
        	/**
        	 **M��С
        	 **/
            info->fix.smem_len = u32VramSize * 1024;

            /**
             ** initialize the virtual address and clear memory 
             **/
            info->screen_base = hifb_buf_map(info->fix.smem_start);
            if (HI_NULL == info->screen_base){
                HIFB_WARNING("Failed to call map video memory, "
                         "size:0x%x, start: 0x%lx\n",
                         info->fix.smem_len, info->fix.smem_start);
            }else{
                memset(info->screen_base, 0x00, info->fix.smem_len);
            }
        }

        /**
         ** alloc color map����ɫ��ṹ��
         **/
        if (g_pstCap[u32LayerId].bCmap){
            if (fb_alloc_cmap(&info->cmap, 256, 1) < 0){
                HIFB_WARNING("fb_alloc_cmap failed!\n");
            }else{
                info->cmap.len = 256;
            }
        }
    }

	 /**
     ** ���׼fb��ע��
     **/
    if ((s32Ret = register_framebuffer(info)) < 0){
        HIFB_ERROR("failed to register_framebuffer!\n");
        s32Ret = -EINVAL;
        goto ERR;
    }


    HIFB_INFO("succeed in registering the fb%d: %s frame buffer device\n",info->node, info->fix.id);

    return HI_SUCCESS;
    
ERR:
    hifb_overlay_cleanup(u32LayerId, HI_FALSE);
    
    return s32Ret;
	
}


/***************************************************************************************
* func          : hifb_get_vram_size
* description   : CNcomment: ��ȡ������С CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static unsigned long hifb_get_vram_size(char* pstr)
{

    HI_S32 str_is_valid = HI_TRUE;
    unsigned long vram_size = 0;
    char* ptr = pstr;

    if ((ptr == NULL) || (*ptr == '\0'))
    {
        return 0;
    }

    /*check if the string is valid*/
    while (*ptr != '\0')
    {
        if (*ptr == ',')
        {
            break;
        }
        else if ((!isdigit(*ptr)) && ('X' != *ptr) && ('x' != *ptr)
            && ((*ptr > 'f' && *ptr <= 'z') || (*ptr > 'F' && *ptr <= 'Z')))
        {
            str_is_valid = HI_FALSE;
            break;
        }

        ptr++;
    }

    if (str_is_valid)
    {
        vram_size = simple_strtoul(pstr, (char **)NULL, 0);
        /*make the size PAGE_SIZE align*/
        vram_size = ((vram_size * 1024 + PAGE_SIZE - 1) & PAGE_MASK)/1024;
    }

    return vram_size;
}


/***************************************************************************************
* func          : hifb_parse_cfg
* description   : CNcomment: �������� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 hifb_parse_cfg(HI_VOID)
{

    HI_CHAR *pscstr      = NULL;
    HI_CHAR number[4]    = {0};
    HI_U32 i             = 0;
    HI_U32 u32LayerId    = 0;
    HI_U32 u32LayerSize  = 0;

    /**
     ** get the string before next varm 
     **/
    pscstr = strstr(video, "vram");
        
    HIFB_INFO("video:%s\n", video);

    while (pscstr != NULL){
        /**
         ** parse the layer id and save it in a string 
         **/
        i = 0;
		
        /**
         ** skip "vram"
         **/
        pscstr += 4;
        while (*pscstr != '_'){
            /* i>1 means layer id is bigger than 100, it's obviously out of range!*/
            if (i > 1){
                HIFB_ERROR("layer id is out of range!\n");
                return HI_FAILURE;
            }
            number[i] = *pscstr;
            i++;
            pscstr++;
        }

        number[i] = '\0';

        /**
         ** change the layer id string into digital and assure it's legal
         **/
        u32LayerId = simple_strtoul(number, (char **)NULL, 10);
        if (u32LayerId > HIFB_MAX_LAYER_ID){
            HIFB_ERROR("layer id is out of range!\n");
            return HI_FAILURE;
        }

        if ((!g_pstCap[u32LayerId].bLayerSupported)
            &&(u32LayerId != HIFB_LAYER_CURSOR)){
            HIFB_ERROR("chip doesn't support layer %d!\n", u32LayerId);
            return HI_FAILURE;
        }

        /* get the layer size string and change it to digital */
        pscstr += sizeof("size") + i;
        u32LayerSize = hifb_get_vram_size(pscstr);
        if (   (u32LayerSize < s_stLayer[u32LayerId].u32LayerSize / 2) \
        	&& (u32LayerId != HIFB_LAYER_CURSOR)                       \
            && (u32LayerSize > 0)){
            u32LayerSize = s_stLayer[u32LayerId].u32LayerSize / 2;
        }
		/**
		 **KO�����ֵ��kbyte
		 **/
        s_stLayer[u32LayerId].u32LayerSize = u32LayerSize;
        /* get next layer string */
        pscstr = strstr(pscstr, "vram");
		
    }

    return HI_SUCCESS;
}



#ifdef CFG_HIFB_PROC_SUPPORT
static const HI_CHAR* s_pszFmtName[] = {
    "RGB565",        
    "RGB888",		
    "KRGB444",       
    "KRGB555",       
    "KRGB888",       
    "ARGB4444",         
    "ARGB1555",      
    "ARGB8888",      
    "ARGB8565",
    "RGBA4444",
    "RGBA5551",
    "RGBA5658",
    "RGBA8888",
    "BGR565",
    "BGR888",
    "ABGR4444",
    "ABGR1555",
    "ABGR8888",
    "ABGR8565",
    "KBGR444",
    "KBGR555",
    "KBGR888",
    "1BPP",         
    "2BPP",         
    "4BPP",         
    "8BPP",
    "ACLUT44",
    "ACLUT88",
    "PUYVY",
    "PYUYV",
    "PYVYU",
    "YUV888",
    "AYUV8888",
    "YUVA8888",  
    "BUTT"};

const static HI_CHAR* s_pszLayerName[] = {"layer_hd_0", "layer_hd_1", "layer_hd_2", "layer_hd_3",
                                          "layer_sd_0", "layer_sd_1", "layer_sd_2", "layer_sd_3",
                                          "layer_ad_0", "layer_ad_1", "layer_ad_2", "layer_ad_3",
                                          "layer_cursor"};
HI_S32 hifb_print_slvlayer_proc(struct fb_info * info, struct seq_file *p, HI_VOID *v)
{
    HIFB_PAR_S *par;
	const HI_CHAR* pLayerName = NULL;
	HIFB_SLVLAYER_DATA_S stSlvLayerData; 

	par = (HIFB_PAR_S *)info->par; 

	if (par->stBaseInfo.u32LayerID >= HIFB_LAYER_ID_BUTT)
	{
		HIFB_ERROR("wrong layer id.\n");
		return HI_FAILURE;
	}
	
    if (par->stBaseInfo.u32LayerID >= sizeof(s_pszLayerName)/sizeof(*s_pszLayerName))
    {
        pLayerName = "unknow layer";
    }
    else
    {
        pLayerName = s_pszLayerName[par->stBaseInfo.u32LayerID];
    }

	if (s_stDrvOps.HIFB_DRV_GetSlvLayerInfo(&stSlvLayerData))
	{
	    HIFB_ERROR("fail to get layer%d info!\n", par->stBaseInfo.u32LayerID);
		return HI_FAILURE;
	}
	
    PROC_PRINT(p,  "LayerId                    \t :%s\n", pLayerName);
	PROC_PRINT(p,  "ShowState                  \t :%s\n", stSlvLayerData.bShow? "ON" : "OFF");
	PROC_PRINT(p,  "ColorFormat                \t :%s\n", s_pszFmtName[stSlvLayerData.eFmt]);
	PROC_PRINT(p,  "Stride                     \t :%d\n", stSlvLayerData.u32Stride);
	PROC_PRINT(p,  "AttachRole                 \t :%s\n", "destination");
	PROC_PRINT(p,  "MasterLayerNum             \t :%d\n", par->stProcInfo.u32MasterLayerNum);

	PROC_PRINT(p,  "WriteBackResolution(Source/Dst/Max)\t :(%d, %d)/(%d, %d)/(%d, %d)\n", stSlvLayerData.stSrcBufRect.w, stSlvLayerData.stSrcBufRect.h,
				stSlvLayerData.stCurWBCBufRect.w, stSlvLayerData.stCurWBCBufRect.h, stSlvLayerData.stMaxWbcBufRect.w, stSlvLayerData.stMaxWbcBufRect.h);

	PROC_PRINT(p,  "Screenregion               \t :(%d, %d, %d, %d)\n", stSlvLayerData.stScreenRect.x, stSlvLayerData.stScreenRect.y,
		                                                                  (stSlvLayerData.stScreenRect.x + stSlvLayerData.stScreenRect.w),
		                                                                  (stSlvLayerData.stScreenRect.y + stSlvLayerData.stScreenRect.h));
	
	PROC_PRINT(p,  "WbcBufNum                  \t :%d \n",stSlvLayerData.u32WbcBufNum);
	PROC_PRINT(p,  "Mem size                   \t :%d KB\n\n",stSlvLayerData.u32WbcBufSize/1024);
    return HI_SUCCESS;
}

HI_S32 hifb_print_layer_proc(struct fb_info * info, struct seq_file *p, HI_VOID *v)
{
	HI_U32 u32Stride;
    HIFB_PAR_S *par;
	HIFB_RECT   stOutputRect;
	HIFB_RECT   stDispRect;
    const HI_CHAR* pszBufMode[] = {"triple", "double ", "single", "triple( no dicard frame)", "standard", "unknow"};
    const HI_CHAR* pszAntiflicerLevel[] =  {"NONE", "LOW" , "MIDDLE", "HIGH", "AUTO" ,"ERROR"};
    const HI_CHAR* pszAntiMode[] =  {"NONE", "TDE" , "VOU" , "BUTT"};
    const HI_CHAR* pszStereoMode[] =  {"Mono", "Side by Side" , "Top and Bottom", "Frame packing", "unknow mode"}; 	    
    const HI_CHAR* pLayerName = NULL;

    par = (HIFB_PAR_S *)info->par; 

	if (par->stBaseInfo.u32LayerID >= HIFB_LAYER_ID_BUTT)
	{
		HIFB_ERROR("wrong layer id.\n");
		return HI_FAILURE;
	}
	
	s_stDrvOps.HIFB_DRV_GetLayerOutRect(par->stBaseInfo.u32LayerID, &stOutputRect);   
	s_stDrvOps.HIFB_DRV_GetDispSize(par->stBaseInfo.u32LayerID, &stDispRect);
    if (par->stBaseInfo.u32LayerID >= sizeof(s_pszLayerName)/sizeof(*s_pszLayerName))
    {
        pLayerName = "unknow layer";
    }
    else
    {
        pLayerName = s_pszLayerName[par->stBaseInfo.u32LayerID];
    }

    if (par->stBaseInfo.enAntiflickerMode > HIFB_ANTIFLICKER_BUTT)
    {
        par->stBaseInfo.enAntiflickerMode = HIFB_ANTIFLICKER_BUTT;
    }

    if (par->stBaseInfo.enAntiflickerLevel > HIFB_LAYER_ANTIFLICKER_BUTT)
    {
        par->stBaseInfo.enAntiflickerLevel = HIFB_LAYER_ANTIFLICKER_BUTT;
    }

	if (par->bSetStereoMode)
	{
		u32Stride = par->st3DInfo.st3DSurface.u32Pitch;
	}
	else
	{
		if ((par->stExtendInfo.enBufMode == HIFB_LAYER_BUF_NONE)
	         && par->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr)
		{
			u32Stride = par->stDispInfo.stUserBuffer.stCanvas.u32Pitch;
		}
		else
		{
			u32Stride = info->fix.line_length;
		}
	}	 
    
	PROC_PRINT(p,  "LayerId                     \t :%s\n", pLayerName);
    PROC_PRINT(p,  "Fps                         \t :%d\n", par->stFrameInfo.u32Fps);	
	PROC_PRINT(p,  "ShowState                   \t :%s\n", par->stExtendInfo.bShow ? "ON" : "OFF");
    PROC_PRINT(p,  "SyncType                    \t :%s\n", par->bHwcRefresh ? "fence" : "vblank");
#ifdef CFG_HIFB_FENCE_SUPPORT      
    if (par->bHwcRefresh)
    {
        PROC_PRINT(p,  "Fence                       \t :%d\n", s_SyncInfo.u32FenceValue);  
        PROC_PRINT(p,  "Timeline                    \t :%d\n", s_SyncInfo.u32Timeline); 
    }
#endif    
	PROC_PRINT(p,  "ColorFormat:                \t :%s\n", s_pszFmtName[par->stExtendInfo.enColFmt]);
	PROC_PRINT(p,  "Stride                      \t :%d\n", u32Stride);
	PROC_PRINT(p,  "Offset                      \t :(%d, %d)\n", info->var.xoffset, info->var.yoffset);
	PROC_PRINT(p,  "Resolution(real/virtual/max)\t :(%d, %d)/(%d, %d)/(%d, %d)\n", info->var.xres, info->var.yres,
				info->var.xres_virtual, info->var.yres_virtual,stOutputRect.w,  stOutputRect.h);
	PROC_PRINT(p,  "MemSize:                    \t :%d KB\n\n",info->fix.smem_len / 1024);
	
	PROC_PRINT(p,  "StartPosition               \t :(%d, %d)\n", par->stExtendInfo.stPos.s32XPos, par->stExtendInfo.stPos.s32YPos);	
	PROC_PRINT(p,  "BufferMode                  \t :%s\n",pszBufMode[par->stExtendInfo.enBufMode]);
	PROC_PRINT(p,  "PixelAlpha                  \t :enable(%s), alpha0(0x%x), alpha1(0x%x)\n", 
				par->stExtendInfo.stAlpha.bAlphaEnable ? "true" : "false",
				par->stExtendInfo.stAlpha.u8Alpha0, par->stExtendInfo.stAlpha.u8Alpha1);	
	PROC_PRINT(p,  "GlobalAlpha                 \t :0x%x\n", par->stExtendInfo.stAlpha.u8GlobalAlpha);
	PROC_PRINT(p,  "Colorkey                    \t :enable(%s), value(0x%x)\n", par->stExtendInfo.stCkey.bKeyEnable ? "true" : "false", 
				par->stExtendInfo.stCkey.u32Key);
	PROC_PRINT(p,  "Deflicker                   \t :enable(%s), mode(%s), level(%s)\n",par->stBaseInfo.bNeedAntiflicker ? "true" : "false",
					pszAntiMode[par->stBaseInfo.enAntiflickerMode], pszAntiflicerLevel[par->stBaseInfo.enAntiflickerLevel]);
	PROC_PRINT(p,  "3DMode                      \t :input(%s), output(%s)\n", pszStereoMode[par->st3DInfo.enInStereoMode], pszStereoMode[par->st3DInfo.enOutStereoMode]);
	PROC_PRINT(p,  "DisplayResolution           \t :(%d, %d)\n",par->stExtendInfo.u32DisplayWidth, par->stExtendInfo.u32DisplayHeight);		

	PROC_PRINT(p,  "CanavasAddr                 \t :0x%x\n",par->stDispInfo.stUserBuffer.stCanvas.u32PhyAddr);
	PROC_PRINT(p,  "CanavasUpdateRect           \t :(%d,%d,%d,%d) \n", par->stDispInfo.stUserBuffer.UpdateRect.x, par->stDispInfo.stUserBuffer.UpdateRect.y,
					par->stDispInfo.stUserBuffer.UpdateRect.w, par->stDispInfo.stUserBuffer.UpdateRect.h);
	PROC_PRINT(p,  "CanvasResolution            \t :(%d,%d)\n",par->stDispInfo.stCanvasSur.u32Width, par->stDispInfo.stCanvasSur.u32Height);
	PROC_PRINT(p,  "CanvasPitch                 \t :%d\n",par->stDispInfo.stCanvasSur.u32Pitch);
	PROC_PRINT(p,  "CanvasFormat                \t :%s\n",s_pszFmtName[par->stDispInfo.stCanvasSur.enFmt]);

	if (g_bProcDebug)
	{
		PROC_PRINT(p,  "\nReferecceCount              \t :%d\n", atomic_read(&par->stBaseInfo.ref_count));
		PROC_PRINT(p,  "DeviceMaxResolution         \t :%d, %d\n",stDispRect.w,	stDispRect.h);
		PROC_PRINT(p,  "DisplayingAddr(register)    \t :0x%x\n",par->stRunInfo.u32ScreenAddr);
		PROC_PRINT(p,  "DisplayBuf[0] addr          \t :0x%x\n",par->stDispInfo.u32DisplayAddr[0]);
		PROC_PRINT(p,  "DisplayBuf[1] addr          \t :0x%x\n",par->stDispInfo.u32DisplayAddr[1]);	  
		PROC_PRINT(p,  "IsNeedFlip(2buf)            \t :%s\n",par->stRunInfo.bNeedFlip? "YES" : "NO");
		PROC_PRINT(p,  "BufferIndexDisplaying(2buf) \t :%d\n",1-par->stRunInfo.u32IndexForInt);
		PROC_PRINT(p,  "UnionRect(2buf)             \t :(%d,%d,%d,%d)\n",par->stDispInfo.stUpdateRect.x, par->stDispInfo.stUpdateRect.y, par->stDispInfo.stUpdateRect.w, par->stDispInfo.stUpdateRect.h);
	}

    return 0; 
}

HI_S32 hifb_read_proc(struct seq_file *p, HI_VOID *v)
{
    DRV_PROC_ITEM_S * item = (DRV_PROC_ITEM_S *)(p->private);
    struct fb_info* info    = (struct fb_info *)(item->data);
	HIFB_PAR_S *par = (HIFB_PAR_S *)info->par;


	if (par->stProcInfo.bWbcProc)
	{
	    return hifb_print_slvlayer_proc(info, p, v);
	}
	else
	{
	    return hifb_print_layer_proc(info, p, v);
	}
     	
}
extern HI_VOID hifb_captureimage_fromdevice(HI_U32 u32LayerID, HI_BOOL bAlphaEnable);

static HI_VOID hifb_parse_proccmd(struct seq_file* p, HI_U32 u32LayerId, HI_CHAR *pCmd)
{
    struct fb_info *info = s_stLayer[u32LayerId].pstInfo;
    HIFB_PAR_S *pstPar = (HIFB_PAR_S *)info->par;
    HI_S32 cnt = atomic_read(&pstPar->stBaseInfo.ref_count);

    
    if (strncmp("show", pCmd, 4) == 0)
    {
        if (cnt == 0)
        {
            HIFB_INFO("err:device no open!\n");
            return;
        }

        if (pstPar->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
        {
            HIFB_INFO("cursor layer doesn't support this cmd!\n");
            return;
        }

		if (pstPar->stProcInfo.bWbcProc)
        {
            HIFB_INFO("write back layer doesn't support this cmd!\n");
            return;
        }
        
        if (!pstPar->stExtendInfo.bShow)
        {
            pstPar->stRunInfo.bModifying = HI_TRUE;
            pstPar->stExtendInfo.bShow = HI_TRUE;
            pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            pstPar->stRunInfo.bModifying = HI_FALSE;
        }
    }     
    else if (strncmp("hide", pCmd, 4) == 0)
    {
        if (cnt == 0)
        {
            HIFB_INFO("err:device not open!\n");
            return;
        }

        if (pstPar->stBaseInfo.u32LayerID == HIFB_LAYER_CURSOR)
        {
            PROC_PRINT(p, "cursor layer doesn't support this cmd!\n");
            return;
        }

		if (pstPar->stProcInfo.bWbcProc)
        {
            HIFB_INFO("write back layer doesn't support this cmd!\n");
            return;
        }
        
        if (pstPar->stExtendInfo.bShow)
        {
            pstPar->stRunInfo.bModifying = HI_TRUE;
            pstPar->stExtendInfo.bShow = HI_FALSE;
            pstPar->stRunInfo.u32ParamModifyMask |= HIFB_LAYER_PARAMODIFY_SHOW;
            pstPar->stRunInfo.bModifying = HI_FALSE;
        }
    }
    else if (strncmp("help", pCmd, 4) == 0)
    {
        HI_DRV_PROC_EchoHelper("help info:\n");
        HI_DRV_PROC_EchoHelper("echo cmd > proc file\n");
        HI_DRV_PROC_EchoHelper("hifb support cmd:\n");
        HI_DRV_PROC_EchoHelper("show:show layer\n");
        HI_DRV_PROC_EchoHelper("hide:hide layer\n");
		HI_DRV_PROC_EchoHelper("alpha=255:set layer's global alpha\n");
		HI_DRV_PROC_EchoHelper("capture:capture image from frame buffer\n");
		HI_DRV_PROC_EchoHelper("vblank on :vblank on\n");
		HI_DRV_PROC_EchoHelper("vblank off:vblank off\n");        
		HI_DRV_PROC_EchoHelper("debug on :debug on\n");
		HI_DRV_PROC_EchoHelper("debug off:debug off\n");
        HI_DRV_PROC_EchoHelper("For example, if you want to hide layer 1,you can input:\n");   
        HI_DRV_PROC_EchoHelper("echo hide > /proc/msp/hifb1\n");   
    }
	else if (strncmp("debug on", pCmd, 8) == 0)
    {
		g_bProcDebug = HI_TRUE;
		HI_PRINT("set proc debug on.\n");
    }
	else if (strncmp("debug off", pCmd, 9) == 0)
    {
		g_bProcDebug = HI_FALSE;
		HI_PRINT("set proc debug off.\n");
    }
	else if (strncmp("vblank on", pCmd, 9) == 0)
    {
		pstPar->bVblank = HI_TRUE;
		//HI_PRINT("set proc vblank on.\n");
    }
	else if (strncmp("vblank off", pCmd, 10) == 0)
    {
		pstPar->bVblank = HI_FALSE;
		//HI_PRINT("set proc vblank off.\n");
    }    
	else if (strncmp("alpha", pCmd, 5) == 0)
	{
		HI_U32  u32Alpha = 0;
		HI_CHAR TmpCmd[HIFB_FILE_NAME_MAX_LEN]={0};
		HI_BOOL bIsStrValid = HI_FALSE;
		HI_CHAR *pStr = HI_NULL;
		HI_CHAR *pStrTmp = HI_NULL;

		if (pstPar->stProcInfo.bWbcProc)
        {
            HIFB_INFO("write back layer doesn't support this cmd!\n");
            return;
        }

		strncpy(TmpCmd,pCmd,(HIFB_FILE_NAME_MAX_LEN-1));
		TmpCmd[HIFB_FILE_NAME_MAX_LEN-1] = '\0';
		
		pStr = strstr(TmpCmd, "=");

		if (HI_NULL == pStr)
		{
			return;
		}
		
		pStr++;

		while(pStr != '\0')
		{
			if (HI_FALSE == bIsStrValid){
				if (isdigit(*pStr) || ('X' == *pStr) || ('x' == *pStr)
					|| (*pStr >= 'a' && *pStr <= 'f') || (*pStr >= 'A' && *pStr <= 'F')){
					bIsStrValid = HI_TRUE;
					pStrTmp = pStr;
				}else{
					HIFB_ERROR("cmd is invalid\n");
					return;
				}
			}else{
				if ((!isdigit(*pStr)) && ('X' != *pStr) && ('x' != *pStr)
						&& (!(*pStr >= 'a' && *pStr <= 'f') && !(*pStr >= 'A' && *pStr <= 'F'))){
					*pStr = '\0';
					break;
				}
			}
			
			pStr++;
		}

		if(NULL != pStrTmp){
			u32Alpha = simple_strtoul(pStrTmp, (char **)NULL, 0);
		}
		if(u32Alpha > 255){
			u32Alpha = 255;
		}

	   	pstPar->stExtendInfo.stAlpha.bAlphaChannel = HI_TRUE;
        pstPar->stExtendInfo.stAlpha.u8GlobalAlpha = u32Alpha;

        s_stDrvOps.HIFB_DRV_SetLayerAlpha(pstPar->stBaseInfo.u32LayerID, &pstPar->stExtendInfo.stAlpha);
		HI_PRINT("set gfx global alpha 0x%x.\n", u32Alpha);
	}
	else if (strncmp("capture", pCmd, 7) == 0)
	{
		HI_S32 cnt; 
		cnt = atomic_read(&pstPar->stBaseInfo.ref_count);
		if (cnt < 1 && !pstPar->stProcInfo.bWbcProc)
		{
			HIFB_ERROR("Unsupported to capture a closed layer.\n");
			return;
		}

		hifb_captureimage_fromdevice(pstPar->stBaseInfo.u32LayerID, HI_FALSE);
	}
	else if (strncmp("excapture", pCmd, 9) == 0)
	{
		HI_S32 cnt; 
		cnt = atomic_read(&pstPar->stBaseInfo.ref_count);
		if (cnt < 1 && !pstPar->stProcInfo.bWbcProc)
		{
			HIFB_ERROR("Unsupported to capture a closed layer.\n");
			return;
		}

		hifb_captureimage_fromdevice(pstPar->stBaseInfo.u32LayerID, HI_TRUE);
	}
    else
    {
        HIFB_ERROR("unsupported cmd:%s ", pCmd);
        HIFB_ERROR("you can use help cmd to show help info!\n");
    }

    return;
}

HI_S32 hifb_write_proc(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)
{
    struct fb_info *info;
    HIFB_PAR_S *pstPar;
    HI_CHAR buffer[128];
    
    struct seq_file *seq = file->private_data;
    DRV_PROC_ITEM_S *item = seq->private;
    info = (struct fb_info *)(item->data);
    pstPar = (HIFB_PAR_S *)(info->par);

    
    if (count > sizeof(buffer))
    {
        HIFB_ERROR("The command string is out of buf space :%d bytes !\n", sizeof(buffer));
        return 0;
    }

    if (copy_from_user(buffer, buf, count))
    {
        HIFB_ERROR("failed to call copy_from_user !\n");
        return 0;
    }
    
    hifb_parse_proccmd(seq, pstPar->stBaseInfo.u32LayerID, (HI_CHAR*)buffer);

    return count;
}
#endif


/***************************************************************************************
* func          : HIFB_DRV_ModExit
* description   : CNcomment: ����ȥ��ʼ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID HIFB_DRV_ModExit(HI_VOID)
{
    HI_S32 i;
	HI_GFX_MODULE_UnRegister(HIGFX_FB_ID);

    s_stDrvTdeOps.HIFB_DRV_SetTdeCallBack(NULL);

    s_stDrvOps.HIFB_DRV_GfxDeInit();

    for(i = 0; i <= HIFB_LAYER_SD_1; i++)
    {
#ifdef CFG_HIFB_LOGO_SUPPORT
     	hifb_clear_logo(i,HI_TRUE);
#endif
        hifb_overlay_cleanup(i, HI_TRUE);
    }

	s_stDrvTdeOps.HIFB_DRV_TdeClose();

}

/***************************************************************************************
* func          : HIFB_DRV_ModInit
* description   : CNcomment: ����KO�ĳ�ʼ�� CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIFB_DRV_ModInit(HI_VOID)
{

    HI_U32 i = 0;
    memset(&s_stLayer, 0x00, sizeof(s_stLayer));

	/**
	 ** get drv and tde property
	 **/
	HIFB_DRV_GetDevOps(&s_stDrvOps);
	HIFB_DRV_GetTdeOps(&s_stDrvTdeOps);
	
    /** 
     ** inital adoption layer
     **/
    if (HI_SUCCESS != s_stDrvOps.HIFB_DRV_GfxInit()){
        HIFB_ERROR("drv init failed\n");
        goto ERR;
    }

#ifdef CFG_HIFB_LOGO_SUPPORT
    /**
     **�����������ֻ��һ�����飬����������Ϣ�ͱ��ͼ���Ѿ�������logo�������
     **/
    hifb_logo_init();
#endif

	/** 
     ** ��ȡͼ�����ԣ����������ȫ�ֱ�����optm_hifb.c��
     **/
	s_stDrvOps.HIFB_DRV_GetGFXCap(&g_pstCap);


	 /**
     ** ��KO������Ҫ��֧��TC��д�����ñ��Ϊtrue
     **/
	if (!strncmp("on", tc_wbc, 2)){
		s_stDrvOps.HIFB_DRV_SetTCFlag(HI_TRUE);
	}

    /**
     ** parse the \arg video string 
     **/
    if (hifb_parse_cfg() < 0){
        /* hint info */
        HIFB_INFO("Usage:insmod hifb.ko video=\"hifb:vrami_size:xxx,vramj_size:xxx,...\"\n");
        HIFB_INFO("i,j means layer id, xxx means layer size in kbytes!\n");
        HIFB_INFO("example:insmod hifb.ko video=\"hifb:vram0_size:810,vram1_size:810\"\n\n");
        return HI_FAILURE;
    }

    /**
     ** inital fb file according the config
	 **/
	for(i = 0; i <= HIFB_LAYER_SD_1; i++){
		if (!strcmp("", video)){
		/**
		 **use make menuconfig para
		 **Ҫ��û�д���������ʹ�ú꿪��
		 **/
			s_stLayer[i].u32LayerSize = g_u32LayerSize[i];
		}	
        /**
         ** register the layer 
         **/
        if (hifb_overlay_probe(i, s_stLayer[i].u32LayerSize) != HI_SUCCESS){
        	return HI_FAILURE;
        }
		#ifdef CFG_HIFB_SCROLLTEXT_SUPPORT
			memset(&s_stTextLayer[i], 0, sizeof(HIFB_SCROLLTEXT_INFO_S));
		#endif
    }
 
    HIFB_INFO("layersize hifb0:%d, hifb1:%d, hifb2:%d, hifb3:%d, hifb4:%d, hifb5:%d, hifb_cursor:%d\n",
        s_stLayer[HIFB_LAYER_HD_0].u32LayerSize, s_stLayer[HIFB_LAYER_HD_1].u32LayerSize,
        s_stLayer[HIFB_LAYER_HD_2].u32LayerSize, s_stLayer[HIFB_LAYER_HD_3].u32LayerSize,
        s_stLayer[HIFB_LAYER_SD_0].u32LayerSize, s_stLayer[HIFB_LAYER_SD_1].u32LayerSize,
        s_stLayer[HIFB_LAYER_CURSOR].u32LayerSize);

#ifndef HI_MCE_SUPPORT	
    hifb_init_module_k();
#endif

	/**
	 ** show version 
	 ** this use GFX common function
	 **/
	hifb_version();
	
    return 0;
    
ERR:
    
    for(i = 0; i <= HIFB_LAYER_SD_1; i++)
    {
        hifb_overlay_cleanup(i, HI_TRUE);
    }

    return HI_FAILURE;
	
}

HI_BOOL HIFB_DRV_IsFrameHit(HI_VOID)
{
    HIFB_PAR_S *pstPar = s_stLayer[HIFB_LAYER_HD_0].pstInfo->par;

    if (NULL == pstPar)
	return HI_FALSE;

#ifdef CFG_HIFB_FENCE_SUPPORT
    if (pstPar->bHwcRefresh)
    	return s_SyncInfo.bFrameHit;
#endif

    return pstPar->stFrameInfo.bFrameHit;  
}
EXPORT_SYMBOL(HIFB_DRV_IsFrameHit);

/***************************************************************************************
		����������Ҫ��������
***************************************************************************************/
#ifdef MODULE
module_init(HIFB_DRV_ModInit);
module_exit(HIFB_DRV_ModExit);
MODULE_LICENSE("GPL");
#endif
