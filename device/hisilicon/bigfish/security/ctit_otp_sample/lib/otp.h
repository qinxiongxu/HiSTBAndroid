#ifndef __CTIT_OTP_H__
#define __CTIT_OTP_H__

#ifdef __cplusplus
extern "C" {
#endif


HI_S32 HI_MPI_OTP_WriteByte(HI_U32 u32Addr, HI_U8 u8Value);
HI_S32 HI_MPI_OTP_Read(HI_U32 u32Addr, HI_U32 *pu32Value);

HI_S32 HI_OTP_GetOTPData(HI_U32 u32Addr, HI_U32 u32Length, HI_U8 *pu8Data);
HI_S32 HI_OTP_SetOTPData(HI_U32 u32Addr, HI_U32 u32Length, HI_U8 *pu8Data);


#ifdef __cplusplus
}
#endif
#endif
