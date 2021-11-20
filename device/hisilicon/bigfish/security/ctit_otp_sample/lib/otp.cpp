#include <stdio.h>
#include <cutils/log.h>

#include "hi_type.h"
#include "hi_unf_otp.h"
#include "hi_common.h"
#include "hi_unf_common.h"
#include "hi_unf_advca.h"
#include "hi_unf_cipher.h"
#include "otp.h"

HI_S32 HI_OTP_SetOTPData(HI_U32 u32Addr, HI_U32 u32Length, HI_U8 *pu8Data)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 index = 0;

    for (index = 0; index < u32Length; index++)
    {
        ret = HI_MPI_OTP_WriteByte(u32Addr + index, *(pu8Data + index));
        if (HI_SUCCESS != ret)
        {
            ALOGE("write OTP ERROR. addr = 0x%x.\n", u32Addr + index);
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

HI_S32 HI_OTP_GetOTPData(HI_U32 u32Addr, HI_U32 u32Length, HI_U8 *pu8Data)
{
    HI_S32 ret = HI_FAILURE;
    HI_U32 index = 0;

    if (HI_NULL == pu8Data)
    {
        ALOGE("parameter is invalid!!\n");
        return HI_FAILURE;
    }

    for (index = 0; index < u32Length;)
    {
        ret = HI_MPI_OTP_Read(u32Addr + index, (HI_U32 *)(pu8Data + index));
        if (HI_SUCCESS != ret)
        {
            ALOGE("read OTP ERROR. addr = 0x%x.\n", u32Addr + index);
            return HI_FAILURE;
        }
        index = index + 4;
    }

    return HI_SUCCESS;
}


