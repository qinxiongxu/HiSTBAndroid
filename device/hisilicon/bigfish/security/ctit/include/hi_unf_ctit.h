#ifndef __HI_UNF_CTIT_H__
#define __HI_UNF_CTIT_H__
#include "hi_type.h"


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

#define HI_ERR_CA(format, arg...)       printf("%s,%d: " format , __FUNCTION__, __LINE__, ## arg)
#define HI_INFO_CA(format, arg...)

#define CA_ASSERT(api, ret) \
    do{ \
        HI_S32 l_ret = api; \
        if (l_ret != HI_SUCCESS) \
        { \
            HI_ERR_CA("run %s failed, ERRNO:%#d.\n", #api, l_ret); \
            return -1;\
        } \
        else\
        {\
        /*printf("sample %s: run %s ok.\n", __FUNCTION__, #api);}*/   \
        }\
        ret = l_ret;\
    }while(0)

/**
\brief  RSA1024 decrypt.      CNcomment: RSA1024解密
\param[in] inputbuf        the point of input encrypt data     CNcomment:输入密文数据buffer指针
\param[in] outputbuf    the point of dencrypt data           CNcomment:输出明文buffer指针
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called             CNcomment:HI_FAILURE  API系统调用失败
 */
HI_U32 HI_CTIT_RSA_Decrypt(HI_U8 *inputbuf, HI_U8 *outputbuf, HI_U32 outputlen);

/**
\brief  HASH256.      CNcomment: HASH256
\param[in] vendor        the point of vendor     CNcomment:存储vendor的指针
\param[in] time            the point of time           CNcomment:存储时间戳指针
\param[in] random        the point of random           CNcomment:存储随机数指针
\param[in] outbuf        the address of random       CNcomment:hash计算结果存储地址
\param[in] out_length    the length of result          CNcomment:hash计算结果长度
\retval ::HI_SUCCESS Success   CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
*/
HI_U32 HI_CTIT_HASH256(HI_U8 *vendor, HI_U8 time[14], HI_U8 random[16], HI_U8 *outbuf, HI_U32 out_length);

/**
\brief Get the random.      CNcomment: 获取随机数。
\param[in] u8data        buffer to store the srandom     CNcomment:随机数存储空间首地址。
\param[in] len            the length of random            CNcomment:随机数长度，16个字节
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
 */
HI_VOID HI_CTIT_random(HI_U32 *rand,  HI_U32 len);
/**
\brief Get the SN.      CNcomment: 获取sn。
\param[in] u8data        buffer to store the sn         CNcomment:保存sn的内存空间，尾部加'\0',故数组长度确保大于或等于25
\param[in] len            the length of SN            CNcomment:SN的长度，24个字符
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
 */
HI_U32 HI_CTIT_readSN(HI_U8* u8data,HI_U32 len);

/**
\brief Store the MAC.      CNcomment: 保存MAC地址。
\param[in] pu8Mac        buffer to store the MAC         CNcomment:保存MAC的内存空间
\param[in] u32Length     the length of MAC               CNcomment:MAC的长度
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
 */
HI_S32 HI_CTIT_writeMAC(HI_U8 *pu8Mac, HI_U32 u32Length);

/**
\brief Get the MAC       CNcomment: 获取MAC
\param[out] pu8Mac        buffer to store the MAC         CNcomment:保存MAC的内存空间
\param[out] u32Length     the length of MAC            CNcomment:MAC的长度
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
 */
HI_S32 HI_CTIT_readMAC(HI_U8 *pu8Mac, HI_U32 u32Length);

/**
\brief Set the private business data which offered by third party to flash，it's a string。
     CNcomment：烧写业务相关的数据，数据由第三方给出，并按文本形式传入参数。
\param[in] s8Data[]             buffer to store the business data which offered by third party.
                CNcomment:由第三方提供的CTIT数据，格式需要指明。
\param[in] u32DataLength        the length of buffer.
                CNcomment:buffer的长度，长度需要第三方指定。
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS 成功
\retval ::HI_ERR_CA_NOT_INIT:The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  OTP初始化失败
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  输入参数非法
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  API系统调用失败
\retval ::HI_ERR_FLASH_NOT_OPEN.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash设备打开失败。
\retval ::HI_ERR_FLASH_NOT_READ.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash设备读取失败。
\retval ::HI_ERR_FLASH_NOT_WRITE.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash设备写入失败。
*/
HI_S32 HI_CTIT_SetCTITData(HI_CHAR s8Data[], HI_CHAR Rsa_E[], HI_CHAR Rsa_N[], HI_U32 u32DataLength);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif   /* __HI_UNF_CTIT_H__ */
