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
\brief  RSA1024 decrypt.      CNcomment: RSA1024����
\param[in] inputbuf        the point of input encrypt data     CNcomment:������������bufferָ��
\param[in] outputbuf    the point of dencrypt data           CNcomment:�������bufferָ��
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called             CNcomment:HI_FAILURE  APIϵͳ����ʧ��
 */
HI_U32 HI_CTIT_RSA_Decrypt(HI_U8 *inputbuf, HI_U8 *outputbuf, HI_U32 outputlen);

/**
\brief  HASH256.      CNcomment: HASH256
\param[in] vendor        the point of vendor     CNcomment:�洢vendor��ָ��
\param[in] time            the point of time           CNcomment:�洢ʱ���ָ��
\param[in] random        the point of random           CNcomment:�洢�����ָ��
\param[in] outbuf        the address of random       CNcomment:hash�������洢��ַ
\param[in] out_length    the length of result          CNcomment:hash����������
\retval ::HI_SUCCESS Success   CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
*/
HI_U32 HI_CTIT_HASH256(HI_U8 *vendor, HI_U8 time[14], HI_U8 random[16], HI_U8 *outbuf, HI_U32 out_length);

/**
\brief Get the random.      CNcomment: ��ȡ�������
\param[in] u8data        buffer to store the srandom     CNcomment:������洢�ռ��׵�ַ��
\param[in] len            the length of random            CNcomment:��������ȣ�16���ֽ�
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
 */
HI_VOID HI_CTIT_random(HI_U32 *rand,  HI_U32 len);
/**
\brief Get the SN.      CNcomment: ��ȡsn��
\param[in] u8data        buffer to store the sn         CNcomment:����sn���ڴ�ռ䣬β����'\0',�����鳤��ȷ�����ڻ����25
\param[in] len            the length of SN            CNcomment:SN�ĳ��ȣ�24���ַ�
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
 */
HI_U32 HI_CTIT_readSN(HI_U8* u8data,HI_U32 len);

/**
\brief Store the MAC.      CNcomment: ����MAC��ַ��
\param[in] pu8Mac        buffer to store the MAC         CNcomment:����MAC���ڴ�ռ�
\param[in] u32Length     the length of MAC               CNcomment:MAC�ĳ���
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
 */
HI_S32 HI_CTIT_writeMAC(HI_U8 *pu8Mac, HI_U32 u32Length);

/**
\brief Get the MAC       CNcomment: ��ȡMAC
\param[out] pu8Mac        buffer to store the MAC         CNcomment:����MAC���ڴ�ռ�
\param[out] u32Length     the length of MAC            CNcomment:MAC�ĳ���
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
 */
HI_S32 HI_CTIT_readMAC(HI_U8 *pu8Mac, HI_U32 u32Length);

/**
\brief Set the private business data which offered by third party to flash��it's a string��
     CNcomment����дҵ����ص����ݣ������ɵ����������������ı���ʽ���������
\param[in] s8Data[]             buffer to store the business data which offered by third party.
                CNcomment:�ɵ������ṩ��CTIT���ݣ���ʽ��Ҫָ����
\param[in] u32DataLength        the length of buffer.
                CNcomment:buffer�ĳ��ȣ�������Ҫ������ָ����
\retval ::HI_SUCCESS Success CNcomment:HI_SUCCESS �ɹ�
\retval ::HI_ERR_CA_NOT_INIT:The advanced CA module is not initialized CNcomment:HI_ERR_CA_NOT_INIT  OTP��ʼ��ʧ��
\retval ::HI_ERR_CA_INVALID_PARA The input parameter value is invalid CNcomment:HI_ERR_CA_INVALID_PARA  ��������Ƿ�
\retval ::HI_FAILURE This API fails to be called CNcomment:HI_FAILURE  APIϵͳ����ʧ��
\retval ::HI_ERR_FLASH_NOT_OPEN.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash�豸��ʧ�ܡ�
\retval ::HI_ERR_FLASH_NOT_READ.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash�豸��ȡʧ�ܡ�
\retval ::HI_ERR_FLASH_NOT_WRITE.  Open nand\spi\emmc flash failed. CNcomment: HI_ERR_FLASH_NOT_OPEN  flash�豸д��ʧ�ܡ�
*/
HI_S32 HI_CTIT_SetCTITData(HI_CHAR s8Data[], HI_CHAR Rsa_E[], HI_CHAR Rsa_N[], HI_U32 u32DataLength);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif   /* __HI_UNF_CTIT_H__ */
