/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef OMX_VideoExt_h
#define OMX_VideoExt_h

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/* Each OMX header shall include all required header files to allow the
 * header to compile without errors.  The includes below are required
 * for this header file to compile successfully
 */
#include <OMX_Core.h>
#include <OMX_Component.h>
#include <OMX_Index.h>

/* CodecType Relative */
#define OMX_VENC_COMPONENT_NAME            "OMX.hisi.video.encoder"
#define OMX_VDEC_NORMAL_COMPONENT_NAME     "OMX.hisi.video.decoder"
#define OMX_VDEC_SECURE_COMPONENT_NAME     "OMX.hisi.video.decoder.secure"
/* define support real , default not support real */
//#define REAL8_SUPPORT
//#define REAL9_SUPPORT

/** Enum for video codingtype extensions */
typedef enum OMX_VIDEO_CODINGEXTTYPE {
    OMX_VIDEO_ExtCodingUnused = OMX_VIDEO_CodingKhronosExtensions,
    OMX_VIDEO_CodingVC1,
    OMX_VIDEO_CodingDIVX3,      /**< Divx3 */
    OMX_VIDEO_CodingVP6,        /**< VP6 */
    OMX_VIDEO_CodingMPEG1,      /**< MPEG1 */
    OMX_VIDEO_CodingAVS,        /**< AVS */
    OMX_VIDEO_CodingSorenson,   /**< Sorenson */
    OMX_VIDEO_CodingMVC,        /**< MVC */
    OMX_VIDEO_CodingButt,       /**< MAX */
} OMX_VIDEO_CODINGEXTTYPE;

/** VP6 Versions */
typedef enum OMX_VIDEO_VP6FORMATTYPE {
    OMX_VIDEO_VP6FormatUnused = 0x01,   /**< Format unused or unknown */
    OMX_VIDEO_VP6      = 0x02,   /**< On2 VP6 */
    OMX_VIDEO_VP6F     = 0x04,   /**< On2 VP6 (Flash version) */
    OMX_VIDEO_VP6A     = 0x08,   /**< On2 VP6 (Flash version, with alpha channel) */
    OMX_VIDEO_VP6FormatKhronosExtensions = 0x6F000000, /**< Reserved region for introducing Khronos 
                                                            Standard Extensions */
    OMX_VIDEO_VP6FormatVendorStartUnused = 0x7F000000, /**< Reserved region for introducing Vendor Extensions */
    OMX_VIDEO_VP6FormatMax    = 0x7FFFFFFF
} OMX_VIDEO_VP6FORMATTYPE;

/**
  * VP6 Params
  *
  * STRUCT MEMBERS:
  *  nSize      : Size of the structure in bytes
  *  nVersion   : OMX specification version information
  *  nPortIndex : Port that this structure applies to
  *  eFormat    : VP6 format
  */
typedef struct OMX_VIDEO_PARAM_VP6TYPE {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_VIDEO_VP6FORMATTYPE eFormat;
} OMX_VIDEO_PARAM_VP6TYPE;

/** HEVC Profile enum type */
typedef enum OMX_VIDEO_HEVCPROFILETYPE {
    OMX_VIDEO_HEVCProfileUnknown = 0x0,
    OMX_VIDEO_HEVCProfileMain    = 0x1,
    OMX_VIDEO_HEVCProfileMain10  = 0x2,
    OMX_VIDEO_HEVCProfileMax     = 0x7FFFFFFF
} OMX_VIDEO_HEVCPROFILETYPE;

/** HEVC Level enum type */
typedef enum OMX_VIDEO_HEVCLEVELTYPE {
    OMX_VIDEO_HEVCLevelUnknown    = 0x0,
    OMX_VIDEO_HEVCMainTierLevel1  = 0x1,
    OMX_VIDEO_HEVCHighTierLevel1  = 0x2,
    OMX_VIDEO_HEVCMainTierLevel2  = 0x4,
    OMX_VIDEO_HEVCHighTierLevel2  = 0x8,
    OMX_VIDEO_HEVCMainTierLevel21 = 0x10,
    OMX_VIDEO_HEVCHighTierLevel21 = 0x20,
    OMX_VIDEO_HEVCMainTierLevel3  = 0x40,
    OMX_VIDEO_HEVCHighTierLevel3  = 0x80,
    OMX_VIDEO_HEVCMainTierLevel31 = 0x100,
    OMX_VIDEO_HEVCHighTierLevel31 = 0x200,
    OMX_VIDEO_HEVCMainTierLevel4  = 0x400,
    OMX_VIDEO_HEVCHighTierLevel4  = 0x800,
    OMX_VIDEO_HEVCMainTierLevel41 = 0x1000,
    OMX_VIDEO_HEVCHighTierLevel41 = 0x2000,
    OMX_VIDEO_HEVCMainTierLevel5  = 0x4000,
    OMX_VIDEO_HEVCHighTierLevel5  = 0x8000,
    OMX_VIDEO_HEVCMainTierLevel51 = 0x10000,
    OMX_VIDEO_HEVCHighTierLevel51 = 0x20000,
    OMX_VIDEO_HEVCMainTierLevel52 = 0x40000,
    OMX_VIDEO_HEVCHighTierLevel52 = 0x80000,
    OMX_VIDEO_HEVCMainTierLevel6  = 0x100000,
    OMX_VIDEO_HEVCHighTierLevel6  = 0x200000,
    OMX_VIDEO_HEVCMainTierLevel61 = 0x400000,
    OMX_VIDEO_HEVCHighTierLevel61 = 0x800000,
    OMX_VIDEO_HEVCMainTierLevel62 = 0x1000000,
    OMX_VIDEO_HEVCHighTierLevel62 = 0x2000000,
    OMX_VIDEO_HEVCHighTiermax     = 0x7FFFFFFF
} OMX_VIDEO_HEVCLEVELTYPE;

/** Structure for controlling HEVC video encoding and decoding */
typedef struct OMX_VIDEO_PARAM_HEVCTYPE {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_VIDEO_HEVCPROFILETYPE eProfile;
    OMX_VIDEO_HEVCLEVELTYPE eLevel;
} OMX_VIDEO_PARAM_HEVCTYPE;

/*========================================================================
Open MAX   Component: Video Decoder
This module contains the class definition for openMAX decoder component.
author: y00226912
==========================================================================*/

typedef enum OMX_HISI_EXTERN_INDEXTYPE {
	OMX_HisiIndexChannelAttributes = (OMX_IndexVendorStartUnused + 1),
	OMX_GoogleIndexEnableAndroidNativeBuffers,
	OMX_GoogleIndexGetAndroidNativeBufferUsage,
	OMX_GoogleIndexUseAndroidNativeBuffer,
	OMX_GoogleIndexUseAndroidNativeBuffer2,
	OMX_HisiIndexFastOutputMode,
    OMX_HISIIndexParamVideoAdaptivePlaybackMode,
}OMX_HISI_EXTERN_INDEXTYPE;

/**
* A pointer to this struct is passed to the OMX_SetParameter when the extension
* index for the 'OMX.Hisi.Index.ChannelAttributes' extension
* is given.
* The corresponding extension Index is OMX_HisiIndexChannelAttributes.
*/
typedef struct OMX_HISI_PARAM_CHANNELATTRIBUTES  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPrior;
    OMX_U32 nErrorThreshold;
    OMX_U32 nStreamOverflowThreshold;
    OMX_U32 nDecodeMode;
    OMX_U32 nPictureOrder;
    OMX_U32 nLowdlyEnable;
    OMX_U32 xFramerate;    
}  OMX_HISI_PARAM_CHANNELATTRIBUTES;

#ifdef ANDROID // native buffer
/**
* A pointer to this struct is passed to the OMX_SetParameter when the extension
* index for the 'OMX.google.android.index.enableAndroidNativeBuffers' extension
* is given.
* The corresponding extension Index is OMX_GoogleIndexUseAndroidNativeBuffer.
* This will be used to inform OMX about the presence of gralloc pointers
instead
* of virtual pointers
*/
typedef struct EnableAndroidNativeBuffersParams  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_BOOL bEnable;
} EnableAndroidNativeBuffersParams;

/**
* A pointer to this struct is passed to OMX_GetParameter when the extension
* index for the 'OMX.google.android.index.getAndroidNativeBufferUsage'
* extension is given.
* The corresponding extension Index is OMX_GoogleIndexGetAndroidNativeBufferUsage.
* The usage bits returned from this query will be used to allocate the Gralloc
* buffers that get passed to the useAndroidNativeBuffer command.
*/
typedef struct GetAndroidNativeBufferUsageParams  {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_U32 nUsage;
} GetAndroidNativeBufferUsageParams;


// A pointer to this struct is passed to OMX_SetParameter() when the extension
// index "OMX.google.android.index.prepareForAdaptivePlayback" is given.
//
// This method is used to signal a video decoder, that the user has requested
// seamless resolution change support (if bEnable is set to OMX_TRUE).
// nMaxFrameWidth and nMaxFrameHeight are the dimensions of the largest
// anticipated frames in the video.  If bEnable is OMX_FALSE, no resolution
// change is expected, and the nMaxFrameWidth/Height fields are unused.
//
// If the decoder supports dynamic output buffers, it may ignore this
// request.  Otherwise, it shall request resources in such a way so that it
// avoids full port-reconfiguration (due to output port-definition change)
// during resolution changes.
//
// DO NOT USE THIS STRUCTURE AS IT WILL BE REMOVED.  INSTEAD, IMPLEMENT
// METADATA SUPPORT FOR VIDEO DECODERS.
typedef struct PrepareForAdaptivePlaybackParams {
    OMX_U32 nSize;
    OMX_VERSIONTYPE nVersion;
    OMX_U32 nPortIndex;
    OMX_BOOL bEnable;
    OMX_U32 nMaxFrameWidth;                                                                                                                                                                                    
    OMX_U32 nMaxFrameHeight;
}PrepareForAdaptivePlaybackParams;
#endif

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* OMX_VideoExt_h */
