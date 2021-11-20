#ifndef __CTIT_OTP_SAMPLE_H__
#define __CTIT_OTP_SAMPLE_H__

#include "hi_type.h"


#ifdef __cplusplus
extern "C" {
#endif


#ifndef DEBUG
#define HI_DEBUG_INFO(fmt...)   __android_log_print(ANDROID_LOG_INFO,"HI_CTIT", fmt)
#define HI_DEBUG_ERR(fmt...)    __android_log_print(ANDROID_LOG_ERROR,"HI_CTIT", fmt)
#else
#define HI_DEBUG_INFO(format, arg...)   printf(format , ## arg)
#define HI_DEBUG_ERR(format, arg...)    printf("%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#endif

HI_S32 HI_CTIT_OTP_writeSN(HI_U8 *pu8SN);
HI_S32 HI_CTIT_OTP_readSN(HI_U8 *pu8SN);
HI_S32 HI_CTIT_OTP_writeMAC(HI_U8 *pu8Mac);
HI_S32 HI_CTIT_OTP_readMAC(HI_U8 *pu8Mac);

#ifdef __cplusplus
}
#endif


#endif

