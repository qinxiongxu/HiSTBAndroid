#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/time.h>
#include <android/log.h>
#include <sys/mman.h>
#include <fcntl.h>
#include "jni.h"
#include "JNIHelp.h"
#include "android_runtime/AndroidRuntime.h"
#include "hi_type.h"
#include "hi_flash.h"
#include "hi_unf_advca.h"
#include "hi_unf_ecs.h"
#include "ctit.h"
#include "otp.h"


#define SN_LENGTH       24
#define MAC_LENGTH       12


#define ADDR_MAC        0x294
#define ADDR_SN         0x2A0


using namespace android;
using namespace std;

#ifdef __cplusplus
extern "C" {
#endif


HI_S32 HI_CTIT_OTP_writeSN(HI_U8 *pu8SN)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32Value = 0;

    ret = HI_UNF_OTP_Init();
    if (HI_SUCCESS != ret)
    {
        HI_DEBUG_ERR("HI_UNF_OTP_Init failed\n");
        return HI_FAILURE;
    }

    ret = HI_MPI_OTP_Read(0x10, (HI_U32 *)&u32Value);  //Get the otp lock flag of mac 0x13[3]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to get the otp lock flag of sn!\n");
        return HI_FAILURE;
    }
    if (((u32Value >> 24) & 0x8) != 0)
    {
        HI_DEBUG_INFO("SN has been burn!\n");
        return HI_SUCCESS;
    }

    ret = HI_OTP_SetOTPData(ADDR_SN, SN_LENGTH, pu8SN);
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to set SN!\n");
        return HI_FAILURE;
    }

    ret = HI_MPI_OTP_WriteByte(0x13, 0x8);   // 13[3]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to set the lock flag of sn!\n");
        return HI_FAILURE;
    }

    HI_UNF_OTP_DeInit();

    return HI_SUCCESS;
}

HI_S32 HI_CTIT_OTP_readSN(HI_U8 *pu8SN)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32Value = 0;

    ret = HI_UNF_OTP_Init();
    if (HI_SUCCESS != ret)
    {
        HI_DEBUG_ERR("HI_UNF_OTP_Init failed\n");
        return HI_FAILURE;
    }
    ret = HI_MPI_OTP_Read(0x10, (HI_U32 *)&u32Value);  //Get the otp lock flag of mac 0x13[3]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_ERR("Failed to get the otp lock flag of sn!\n");
        return HI_FAILURE;
    }
   if (((u32Value >> 24) & 0x8) == 0)
    {
        HI_DEBUG_ERR("SN have not  been burn!\n");
        return HI_FAILURE;
    }
    ret = HI_OTP_GetOTPData(ADDR_SN, SN_LENGTH, pu8SN);
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_ERR("Failed to get SN!\n");
        return HI_FAILURE;
    }
    HI_UNF_OTP_DeInit();

    return HI_SUCCESS;
}

HI_S32 HI_CTIT_OTP_writeMAC(HI_U8 *pu8Mac)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32Value = 0;

    ret = HI_UNF_OTP_Init();
    if (HI_SUCCESS != ret)
    {
        HI_DEBUG_ERR("HI_UNF_OTP_Init failed\n");
        return HI_FAILURE;
    }


    ret = HI_MPI_OTP_Read(0x10, (HI_U32 *)&u32Value);  //Get the otp lock flag of mac 0x13[2]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to get the otp lock flag of mac!\n");
        return HI_FAILURE;
    }
    if (((u32Value >> 24) & 0x4) != 0)
    {
        HI_DEBUG_INFO("Mac has been burn!\n");
        return HI_SUCCESS;
    }

    ret = HI_OTP_SetOTPData(ADDR_MAC, MAC_LENGTH, pu8Mac);
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to set MAC!\n");
        return HI_FAILURE;
    }

    ret = HI_MPI_OTP_WriteByte(0x13, 0x4);   // 13[2]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_INFO("Failed to set the lock flag of mac!\n");
        return HI_FAILURE;
    }

     HI_UNF_OTP_DeInit();

    return HI_SUCCESS;
}

HI_S32 HI_CTIT_OTP_readMAC(HI_U8 *pu8Mac)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 u32Value = 0;

    ret = HI_UNF_OTP_Init();
    if (HI_SUCCESS != ret)
    {
        HI_DEBUG_ERR("HI_UNF_OTP_Init failed\n");
        return HI_FAILURE;
    }
    ret = HI_MPI_OTP_Read(0x10, (HI_U32 *)&u32Value);  //Get the otp lock flag of mac 0x13[2]
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_ERR("Failed to get the otp lock flag of mac!\n");
        return HI_FAILURE;
    }
     if (((u32Value >> 24) & 0x4) == 0)
    {
        HI_DEBUG_ERR("Mac havn't been burn!\n");
        return HI_FAILURE;
    }
    ret = HI_OTP_GetOTPData(ADDR_MAC, MAC_LENGTH, pu8Mac);
    if (HI_FAILURE == ret)
    {
        HI_DEBUG_ERR("Failed to get MAC!\n");
        return HI_FAILURE;
    }
    HI_UNF_OTP_DeInit();

    return HI_SUCCESS;
}


#ifdef __cplusplus
}
#endif
