/*
 **************************************************************************************
 *                      CopyRight (C) iSoftStone Corp, Ltd.
 *
 *       Filename:  hwc.h
 *    Description:   header file
 *
 *        Version:  1.0
 *        Created:  03/14/2015 05:22:31 PM
 *         Author:    [zhoutongwei@huawei.com]
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
#include <fcntl.h>
#include <errno.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <cutils/log.h>
#include <cutils/atomic.h>
#include <utils/Errors.h>
#include <linux/fb.h>

#include <hardware/gralloc.h>
#include <hardware/hwcomposer.h>
#include <hardware/hwcomposer_defs.h>
#include <EGL/egl.h>
#include "gralloc_priv.h"
#include "HwcDebug.h"
#include "hifb.h"
#include "hi_tde_type.h"
#include "hi_tde_api.h"


#ifndef HWC_H_INCLUDED
#define HWC_H_INCLUDED

enum{
     VIDEO_LAYER,
     DIM_LAYER,
     UI_LAYER,
     SKIP_LAYER
};

#define TDE_INVALID_FENCEID -1


int getBpp(int format);

HIFB_COLOR_FMT_E tde2FbFmt(int format);

TDE2_COLOR_FMT_E fb2TdeFmt(int format);

void setFbFormat(HIFB_COLOR_FMT_E format);

HIFB_COLOR_FMT_E  getFbFormat();

bool haveScale(hwc_layer_1_t*  layer);

bool is32Bit(hwc_layer_1_t*  layer);

TDE2_COLOR_FMT_E getTdeFormat(int format);

bool  haveNextLayer(hwc_display_contents_1_t* list, int i);

bool supportByHardware(hwc_display_contents_1_t* list);

bool tde_fill_rect(TDE_HANDLE s32Handle, HI_U32 color, hwc_layer_1_t* layer, hwc_rect_t* rect = NULL);

bool tde_blit(TDE_HANDLE s32Handle, hwc_layer_1_t*  srcLayer, hwc_layer_1_t*  dstLayer);

bool tde_quick_copy(TDE_HANDLE s32Handle, hwc_layer_1_t*  backLayer, hwc_layer_1_t*  fbLayer);

int getLayerType(hwc_layer_1_t*  layer);
int tde_compose(hwc_composer_device_1_t *dev,size_t numDisplays, hwc_display_contents_1_t** displays);

int sync_wait(int fd, int timeout);
int sync_merge(const char *name, int fd1, int fd2);
int sync_merge_fence(const char *name, int fd1, int fd2);

#endif /*HWC_H_INCLUDED*/
/********************************* END ***********************************************/


