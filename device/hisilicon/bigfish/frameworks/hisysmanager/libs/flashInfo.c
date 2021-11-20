#define LOG_TAG "Configserver"
#include <utils/Log.h>

#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <sys/stat.h>

#include "hi_flash.h"
#include "hi_debug.h"

#include "hi_unf_hdcp.h"

#define HI_ERR_FLASH(fmt...) \
             HI_ERR_PRINT(HI_ID_FLASH, fmt)

#define BEFORE_ENCRYPT   384
#define AFTER_ENCRYPT    332

int get_flash_info(const char *mtdname, unsigned long offset, unsigned long offlen)
{
    int Ret = -1;
    HI_HANDLE mtdfd = HI_Flash_OpenByName(mtdname);
    if(INVALID_FD == mtdfd)
    {
            ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
            return HI_FAILURE;
    }

    HI_Flash_InterInfo_S info;
    HI_Flash_GetInfo(mtdfd, &info);

    unsigned long pagesize = info.PageSize ;
    if(pagesize == 0)
        pagesize = 512 ;
    unsigned long totalsize = (offlen/pagesize + (offlen % pagesize)?1:0) * pagesize ;

    ALOGI("totalsize=%lu,pagesize=%lu,offset=%lu,offlen=%lu",totalsize,pagesize,offset,offlen);
    char *tmp_mtdinfo = NULL;
    tmp_mtdinfo = (char *)malloc(totalsize);
    if(NULL == tmp_mtdinfo)
    {
        ALOGE("tmp_mtdinfo malloc error, offset+offlen +1=[%d]", offset+offlen +1);
        return HI_FAILURE;
    }
    memset(tmp_mtdinfo, 0x00, totalsize);
    Ret = HI_Flash_Read(mtdfd, ((offset/pagesize) * pagesize) , tmp_mtdinfo, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == Ret)
    {
            ALOGE("HI_Flash_Read Failed:%d\n",Ret);
            HI_Flash_Close(mtdfd);
            free(tmp_mtdinfo);
            tmp_mtdinfo = NULL;
            return HI_FAILURE;
    }
    char *mtdinfo = malloc(offlen+1);
	memset(mtdinfo,0,offlen+1);
    memcpy(mtdinfo, (tmp_mtdinfo + (offset % pagesize)), offlen);
	FILE *fp = fopen("/mnt/mtdinfo","w");
	if(fp!=NULL)
	{
		fputs(mtdinfo,fp);
		fclose(fp);
	}
    HI_Flash_Close(mtdfd);
    free(tmp_mtdinfo);
    tmp_mtdinfo = NULL;
    return 0;
}

int set_flash_info(const char *mtdname, unsigned long offset, unsigned long offlen, const char *mtdinfo)
{
    int Ret = -1;

    HI_HANDLE mtdfd = HI_Flash_OpenByName(mtdname);
    if(INVALID_FD == mtdfd)
    {
            ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
            return HI_FAILURE;
    }
	HI_Flash_InterInfo_S info;
	HI_Flash_GetInfo(mtdfd, &info);
	unsigned long BlkSize = info.BlockSize;
	int block_n = offlen/BlkSize + ((offlen % BlkSize)?1:0) + ((((offset % BlkSize) + offlen) > BlkSize)?1:0);
    unsigned long mtdSize = BlkSize * block_n;
	char *device_info = malloc(mtdSize);
	memset(device_info,0,mtdSize);
    ALOGI("mtdSize=%lu,block_n=%d,BlkSize=%lu\n,offset=%lu ,offlen=%lu,info.PartSize=%llu",
            mtdSize ,block_n ,BlkSize ,offset ,offlen,info.PartSize);
    if(offset + offlen >  info.PartSize)
    {
        ALOGE("flash size write overbrim ,error");
        return HI_FAILURE;
    }

    Ret = HI_Flash_Read(mtdfd, ((offset/BlkSize) * BlkSize), (HI_U8 *)device_info,  mtdSize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == Ret)
    {
        ALOGE("HI_Flash_Read Failed:%#x\n",Ret);
        HI_Flash_Close(mtdfd);
        return Ret;
    }

    if(memcmp((HI_U8 *)device_info + (offset % BlkSize), (const void *)mtdinfo, offlen) == 0)
    {
        ALOGE("no changed\n");
        HI_Flash_Close(mtdfd);
        return 0;
    }
    else
    {
        memcpy((HI_U8 *)device_info + (offset % BlkSize), (const void *)mtdinfo, offlen);
        memset((HI_U8 *)device_info + (offset % BlkSize) + offlen , 0x00, 1);
    }

    HI_Flash_Erase(mtdfd, ((offset/BlkSize) * BlkSize), mtdSize);

    Ret = HI_Flash_Write(mtdfd, ((offset/BlkSize) * BlkSize), (HI_U8 *)device_info ,  mtdSize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == Ret)
    {
        ALOGE("HI_Flash_Write Failed:%#x\n",Ret);
        HI_Flash_Close(mtdfd);
        return Ret;
    }

    HI_Flash_Close(mtdfd);
    return 0;
}

// Get HDMI DHCP KEY
int get_HDMI_HDCP_Key(const char *mtdname, unsigned long offset, char *pBuffer, unsigned long offlen)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    PartitionSize = (unsigned int)info.PartSize;
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    totalsize = ((offset - 1) / uBlkSize + 1) * uBlkSize ;// Block alignment
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size read overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    ALOGI("totalsize=%u,pagesize=%u,offset=%lu,offlen=%lu", totalsize, uBlkSize, offset, offlen);
    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    // Read data from bottom of deviceinfo, bottom 128K data is DRM Key
    // We get HDMI1.4 HDCP Key 4K data over 128K from bottom of deviceinfo
    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }
    HI_Flash_Close(handle);

    memcpy(pBuffer, pbuf + offset % uBlkSize, offlen);
    memset(pbuf, 0, offlen);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}

// Set HDMI DHCP KEY
// We need to call 'HI_UNF_HDCP_EncryptHDCPKey' to Decrypt key and Encrypt using root key in otp
// pBuffer is 384B data pointer
// 384B -> 322B
int set_HDMI_HDCP_Key(const char *mtdname, unsigned long offset, HI_U8 *pBuffer, unsigned long uBufferSize)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;
    HI_UNF_HDCP_HDCPKEY_S stHdcpKey;
    HI_BOOL bIsUseHdcpRootKey = HI_TRUE;//use HDCP Root Key to Encrypt key
    HI_U8 u8OutEncryptKey[AFTER_ENCRYPT] = {0};

    HI_SYS_Init();
    HI_UNF_CIPHER_Init();

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        HI_UNF_CIPHER_DeInit();
        HI_SYS_DeInit();
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    PartitionSize = (unsigned int)info.PartSize;
    //totalsize = ((uBufferSize - 1) / uBlkSize + 1) * uBlkSize;
    totalsize = ((offset - 1) / uBlkSize + 1) * uBlkSize;
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size write overbrim ,error");
        HI_UNF_CIPHER_DeInit();
        HI_SYS_DeInit();
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        HI_UNF_CIPHER_DeInit();
        HI_SYS_DeInit();
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        goto ERROR;
    }

    // First we Decrypt hdcp key from user (384B)
    // Then we Encrypt this hdcp by using root key in otp , and push it to deviceinfo (332B)
    stHdcpKey.EncryptionFlag = HI_TRUE;
    memcpy(stHdcpKey.key.EncryptData.u8EncryptKey, pBuffer, BEFORE_ENCRYPT);

    ret = HI_UNF_HDCP_EncryptHDCPKey(stHdcpKey, bIsUseHdcpRootKey, u8OutEncryptKey);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_UNF_HDCP_EncryptHDCPKey, HI_FAILURE! ");
        goto ERROR;
    }
    else
        ALOGE("HI_UNF_HDCP_EncryptHDCPKey, HI_SUCCESS! ");

    /* avoid the same key write to flash */
    if (memcmp(pbuf + offset % uBlkSize, u8OutEncryptKey, AFTER_ENCRYPT) == 0)
    {
        ALOGE("The Key in Flash is not change \n");
        goto ERROR;
    }

    memcpy(pbuf + offset % uBlkSize, u8OutEncryptKey, AFTER_ENCRYPT);

    HI_Flash_Erase(handle, PartitionSize - totalsize, totalsize);
    ret = HI_Flash_Write(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Write Failed:%#x\n", ret);
        goto ERROR;
    }

ERROR:
    HI_Flash_Close(handle);
    HI_UNF_CIPHER_DeInit();
    HI_SYS_DeInit();
    memset(pbuf, 0, totalsize);
    free(pbuf);
    pbuf = NULL;
    return ret;
}


int get_HDCP2x_Key(const char *mtdname, unsigned long offset, char *pBuffer, unsigned long offlen)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    PartitionSize = (unsigned int)info.PartSize;
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    totalsize = ((offlen - 1) / uBlkSize + 1) * uBlkSize ;
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size read overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    ALOGI("totalsize=%u,pagesize=%u,offset=%lu,offlen=%lu", totalsize, uBlkSize, offset, offlen);
    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }
    HI_Flash_Close(handle);

    memcpy(pBuffer, pbuf + offlen % uBlkSize, offlen);
    memset(pbuf, 0, offlen);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}

int set_HDCP2x_Key(const char *mtdname, unsigned long offset, char *pBuffer, unsigned long uBufferSize)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    PartitionSize = (unsigned int)info.PartSize;
    totalsize = ((uBufferSize - 1) / uBlkSize + 1) * uBlkSize;
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size write overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }

    if (memcmp(pbuf + uBufferSize % uBlkSize, pBuffer, uBufferSize) == 0)
    {
        ALOGE("no changed\n");
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return 0;
    }
    memcpy(pbuf + uBufferSize % uBlkSize, pBuffer, uBufferSize);

    HI_Flash_Erase(handle, PartitionSize - totalsize, totalsize);
    ret = HI_Flash_Write(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Write Failed:%#x\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return ret;
    }
    HI_Flash_Close(handle);

    memset(pbuf, 0, totalsize);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}

int get_DRM_Key(const char *mtdname, unsigned long offset, char *pBuffer, unsigned long offlen)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    PartitionSize = (unsigned int)info.PartSize;
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    totalsize = ((offlen - 1) / uBlkSize + 1) * uBlkSize ;
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size read overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    ALOGI("totalsize=%u,pagesize=%u,offset=%lu,offlen=%lu", totalsize, uBlkSize, offset, offlen);
    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }
    HI_Flash_Close(handle);

    memcpy(pBuffer, pbuf + offlen % uBlkSize, offlen);
    memset(pbuf, 0, offlen);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}

int set_DRM_Key(const char *mtdname, unsigned long offset, char *pBuffer, unsigned long uBufferSize)
{
    int ret = HI_FAILURE;
    char *pbuf = NULL;
    unsigned int uBlkSize = 0;
    unsigned int totalsize = 0;
    unsigned int PartitionSize = 0;
    HI_Flash_InterInfo_S info;

    HI_HANDLE handle = HI_Flash_OpenByName((HI_CHAR *)mtdname);
    if (HI_INVALID_HANDLE == handle)
    {
        ALOGE("HI_Flash_Open failed, mtdname[%s]\n", mtdname);
        return HI_FAILURE;
    }

    HI_Flash_GetInfo(handle, &info);
    uBlkSize = info.BlockSize;
    if (uBlkSize == 0)
    {
        uBlkSize = 512;
    }
    PartitionSize = (unsigned int)info.PartSize;
    totalsize = ((uBufferSize - 1) / uBlkSize + 1) * uBlkSize;
    if (totalsize > PartitionSize)
    {
        ALOGE("flash size write overbrim ,error");
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }

    pbuf = (char *)malloc(totalsize);
    if(NULL == pbuf)
    {
        ALOGE("malloc error, totalsize=[%d]", totalsize);
        HI_Flash_Close(handle);
        return HI_FAILURE;
    }
    memset(pbuf, 0, totalsize);

    ret = HI_Flash_Read(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Read Failed:%d\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return HI_FAILURE;
    }

    if (memcmp(pbuf + uBufferSize % uBlkSize, pBuffer, uBufferSize) == 0)
    {
        ALOGE("no changed\n");
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return 0;
    }
    memcpy(pbuf + uBufferSize % uBlkSize, pBuffer, uBufferSize);

    HI_Flash_Erase(handle, PartitionSize - totalsize, totalsize);
    ret = HI_Flash_Write(handle, PartitionSize - totalsize, (HI_U8 *)pbuf, totalsize, HI_FLASH_RW_FLAG_RAW);
    if (HI_FAILURE == ret)
    {
        ALOGE("HI_Flash_Write Failed:%#x\n", ret);
        HI_Flash_Close(handle);
        free(pbuf);
        pbuf = NULL;
        return ret;
    }
    HI_Flash_Close(handle);

    memset(pbuf, 0, totalsize);
    free(pbuf);
    pbuf = NULL;

    return HI_SUCCESS;
}
