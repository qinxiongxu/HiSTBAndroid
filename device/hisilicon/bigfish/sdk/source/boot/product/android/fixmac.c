#ifdef HI_MINIBOOT_SUPPORT
#include <stddef.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <malloc.h>
#include <flash.h>
#include <net/net.h>
#include <malloc.h>
#else
#include <common.h>
#include <linux/string.h>
#include <spiflash_logif.h>
#include <nand_logif.h>
#include <emmc_logif.h>
#include <asm/sizes.h>
#include <asm/arch/platform.h>
#include <malloc.h>
#include <environment.h>
#include <asm/io.h>
#include <linux/mtd/mtd.h>
#endif

#include "hi_flash.h"
#include "hi_unf_otp.h"

#define CFG_TIMERBASE23         REG_BASE_TIMER23
#define CFG_TIMER2_CTRL         0xC2
#define OTP_MAC         	0x294 
#define OTP_MAC_LOCK         	0x13 
#define READ_TIMER2         \
	(*(volatile unsigned long *)(CFG_TIMERBASE23 + REG_TIMER_VALUE))

#define FIXMAC_SUCCESS 0
#define FIXMAC_ERROR -1
#define MAC_LENTH 18
#define FASTBOOT_DEVICE_INFO_OFFSET 0
#define FASTBOOT_DEVICE_INFO_NAME "deviceinfo"

struct device_info {
	char mac[MAC_LENTH];
};

static int check_mac_format(char *mac)
{
	int i;
	if (strlen(mac) != (MAC_LENTH - 1)) {
		printf("strlen = %d, error!\n", strlen(mac));
		return -1;
	}
	for (i = 0; i < MAC_LENTH - 1; ++i) {
		if (i % 3 == 2) {
			if (mac[i] != ':')
				return -1;
		}
	}
	return 0;
}
extern void srandom(unsigned long seed);
extern unsigned long random(void);

static void mac_to_string(char *eth_str, unsigned char *mac)
{
	sprintf(eth_str, "%02X:%02X:%02X:%02X:%02X:%02X",
			mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
}

static void otp_mac_to_string(char *eth_str, unsigned char *mac)
{
	sprintf(eth_str, "%X%X:%X%X:%X%X:%X%X:%X%X:%X%X",
			mac[0], mac[1], mac[2], mac[3], mac[4], mac[5], mac[6], mac[7], mac[8], mac[9], mac[10], mac[11]);
}

static void random_ether_addr(unsigned char *mac)
{
#ifdef HI_MINIBOOT_SUPPORT
	generate_mac(mac);
#else
	unsigned long ethaddr_low, ethaddr_high;

	srandom(READ_TIMER2 & 0xFFFFFFFF);

	/*
	 * setting the 2nd LSB in the most significant byte of
	 * the address makes it a locally administered ethernet
	 * address
	 */
	ethaddr_high = (random() & 0xfeff) | 0x0200;
	ethaddr_low = random();

	mac[0] = ethaddr_high >> 8;
	mac[1] = ethaddr_high & 0xff;
	mac[2] = ethaddr_low >> 24;
	mac[3] = (ethaddr_low >> 16) & 0xff;
	mac[4] = (ethaddr_low >> 8) & 0xff;
	mac[5] = ethaddr_low & 0xff;

	mac[0] &= 0xfe;    /* clear multicast bit */
	mac[0] |= 0x02;    /* set local assignment bit (IEEE802) */
#endif
}

int set_default_ethaddr(void)
{
	HI_S32      Ret = 0;
	HI_HANDLE   flashhandle;
	unsigned char *tmp_buf = NULL;
	HI_U32 tmp_buf_length = 0;
	struct device_info *tmp_device_info = NULL;
	unsigned char mac[6];
	struct mtd_info_ex *mtd_info = NULL;
	unsigned char otp_c[12];
	char otp_mac[MAC_LENTH];
	HI_U8 otp_lock;
	HI_U32 i = 0;
	
#ifndef HI_MINIBOOT_SUPPORT
	__raw_writel(0, CFG_TIMERBASE23 + REG_TIMER_CONTROL);
	__raw_writel(~0, CFG_TIMERBASE23 + REG_TIMER_RELOAD);
	__raw_writel(CFG_TIMER2_CTRL, CFG_TIMERBASE23 + REG_TIMER_CONTROL);
#endif
	/*
	 * sample for telecom test:otp check
	 */
	/*otp_lock = HI_OTP_ReadByte(OTP_MAC_LOCK);
	if((otp_lock & 0x4) != 0)
	{  
	    for(i=0;i < 12;i++)
	    {
	        otp_c[i] = HI_OTP_ReadByte(OTP_MAC + i);
	    }
	    otp_mac_to_string(otp_mac,otp_c);
	    Ret = check_mac_format(otp_mac);
	    if (Ret == 0) 
	    {
	        printf("read otp mac success!\n");
	        printf("otp mac:%s\n", otp_mac);
	        setenv("ethaddr", otp_mac);
	        return FIXMAC_SUCCESS;
	    }
	    else
	    {
	        printf("check otp mac format failed\n");
	        return FIXMAC_ERROR;
	    }
	}	
	else
	{
	    printf("otp mac not lock\n");
	}*/
	
	HI_Flash_InterInfo_S pFlashInfo;
	flashhandle = HI_Flash_OpenByName(FASTBOOT_DEVICE_INFO_NAME);
	if ((0 == flashhandle) || (HI_INVALID_HANDLE == flashhandle))
	{
		printf("HI_Flash_Open partion %s error\n", FASTBOOT_DEVICE_INFO_NAME);
		return FIXMAC_ERROR;
	}

	Ret = HI_Flash_GetInfo(flashhandle, &pFlashInfo);
    if (Ret) {
		printf("HI_Flash_GetInfo %s error\n",FASTBOOT_DEVICE_INFO_NAME);
			}

	tmp_buf_length = pFlashInfo.BlockSize;

	tmp_buf = (char *)malloc(tmp_buf_length * sizeof(char));
	if (tmp_buf == NULL) {
		printf("can not alloc mem for read buf!\n");
		HI_Flash_Close(flashhandle);
		return FIXMAC_ERROR;
	}

	Ret = HI_Flash_Read(flashhandle, FASTBOOT_DEVICE_INFO_OFFSET, tmp_buf, tmp_buf_length, HI_FLASH_RW_FLAG_RAW);
	if (Ret == HI_FAILURE)
	{
		printf("HI_Flash_Read partion %s error\n", FASTBOOT_DEVICE_INFO_NAME);
		free(tmp_buf);
		tmp_buf = NULL;
		HI_Flash_Close(flashhandle);
		return FIXMAC_ERROR;
	}

	tmp_device_info = (struct device_info *)malloc(sizeof(struct device_info));
	if (tmp_device_info == NULL) {
		printf("can not alloc mem for mac address!\n");
		free(tmp_buf);
		tmp_buf = NULL;
		HI_Flash_Close(flashhandle);
		return FIXMAC_ERROR;
	}

	memcpy(tmp_device_info, tmp_buf, sizeof(struct device_info));
	Ret = check_mac_format(tmp_device_info->mac);

	if (Ret == 0) {
		printf("mac:%s\n", tmp_device_info->mac);
		setenv("ethaddr", tmp_device_info->mac);
		free(tmp_buf);
		free(tmp_device_info);
		tmp_buf = NULL;
		tmp_device_info = NULL;
		HI_Flash_Close(flashhandle);
		return FIXMAC_SUCCESS;
	}
	else {
		printf("Create random ethaddr\n");
		random_ether_addr(mac);
		printf("random ethaddr:%02X:%02X:%02X:%02X:%02X:%02X\n",
				mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
		mac_to_string(tmp_device_info->mac, mac);
		memcpy(tmp_buf, tmp_device_info, sizeof(struct device_info));
		Ret = HI_Flash_Write(flashhandle, FASTBOOT_DEVICE_INFO_OFFSET, tmp_buf, tmp_buf_length, HI_FLASH_RW_FLAG_ERASE_FIRST);
		if (Ret == HI_FAILURE)
		{
			printf("HI_Flash_Write partion %s error\n", FASTBOOT_DEVICE_INFO_NAME);
			free(tmp_buf);
			free(tmp_device_info);
			tmp_buf = NULL;
			tmp_device_info = NULL;
			HI_Flash_Close(flashhandle);
			return FIXMAC_ERROR;
		}
		printf("mac:%s\n", tmp_device_info->mac);
		setenv("ethaddr", tmp_device_info->mac);
		free(tmp_buf);
		free(tmp_device_info);
		tmp_buf = NULL;
		tmp_device_info = NULL;
		HI_Flash_Close(flashhandle);
		return FIXMAC_SUCCESS;
	}
	
}
