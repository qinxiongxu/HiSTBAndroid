#include <stdio.h>
#include "ctit.h"

#ifdef __cplusplus
extern "C" {
#endif

void printf_usage()
{
    printf("==============================================================+\n");
    printf("usage:                                                        +\n");
    printf("This sample can read/write the MAC and SN.                    +\n");
    printf("Please refer as below:                                        +\n");
    printf("--------------------------------------------------------------+\n");
    printf("Get MAC                                                       +\n");
    printf("./sample_ctit_otp get_mac                                     +\n");
    printf("--------------------------------------------------------------+\n");
    printf("Set MAC                                                       +\n");
    printf("./sample_ctit_otp set_mac \"3e735a37e939\"                      +\n");
    printf("                            |___________ MAC                  +\n");
    printf("--------------------------------------------------------------+\n");
    printf("Get SN                                                        +\n");
    printf("./sample_ctit_otp get_sn                                      +\n");
    printf("--------------------------------------------------------------+\n");
    printf("./sample_ctit_otp set_sn \"abcdefabcdefabcdefabcefabcdef\"      +\n");
    printf("                                     |___________ SN          +\n");
    printf("==============================================================+\n");

    return;
}

int get_mac(char *mac, char *mac_string)
{
    int i = 0;
    int len = 0;
    int offset = 0;
    char tmp;

    if (mac == NULL || mac_string == NULL)
        return -1;

    if (mac_string[0] == '"')
        offset = 1;

    len = strlen(mac_string);
    if (len != (12 + offset * 2))
        return -1;

    for (i = 0; i < 12; i++)
    {
        tmp = mac_string[i + offset];
        if ('0' <= tmp && tmp <= '9')
            mac[i] = tmp - '0';
        else if ('a' <= tmp && tmp <= 'f')
            mac[i] = tmp - 'a' + 10;
        else if ('A' <= tmp && tmp <= 'F')
            mac[i] = tmp - 'A' + 10;
        else
            return -1;
    }

    return 0;
}

int get_sn(char *sn, char *sn_string)
{
    int i = 0;
    int len = 0;
    int offset = 0;

    if (sn == NULL || sn_string == NULL)
        return -1;

    if (sn_string[0] == '"')
        offset = 1;

    len = strlen(sn_string);
    if (len != (24 + offset * 2))
        return -1;

    for (i = 0; i < 24; i++)
        sn[i] = sn_string[i + offset];

    return 0;
}

int main(int argc, char **argv)
{
    int ret = 0;
    int i = 0;
    char tmp[24];
    char mac[12];
    char sn[24];

    if (argc > 3 || argc < 2)
    {
        printf_usage();
        return 0;
    }

    if (strncmp(argv[1], "set_mac", strlen("set_mac")) == 0)
    {
        if (get_mac(mac, argv[2]) == -1)
        {
            printf("Invalid MAC, Please check the MAC\n");
            return -1;
        }

        ret = HI_CTIT_OTP_writeMAC(mac);
        if (0 != ret)
        {
            printf("Failed to set MAC\n");
            return -1;
        }
        printf("Set MAC successful\n");
    }
    else if (strncmp(argv[1], "get_mac", strlen("get_mac")) == 0)
    {
        ret = HI_CTIT_OTP_readMAC(tmp);
        if (0 != ret)
        {
            printf("Failed to read MAC\n");
            return -1;
        }
        printf("Get the MAC successful\n");
        for (i = 0; i < 12; i++)
            printf("MAC[%d]:%x\n", i, tmp[i]);
    }
    else if (strncmp(argv[1], "set_sn", strlen("set_sn")) == 0)
    {
        if (get_sn(sn, argv[2]))
        {
            printf("Invalid SN, Please check the SN\n");
            return -1;
        }
        ret = HI_CTIT_OTP_writeSN(sn);
        if (0 != ret)
        {
            printf("Failed to set sn\n");
            return -1;
        }
        printf("Set the SN successful\n");
    }
    else if (strncmp(argv[1], "get_sn", strlen("get_sn")) == 0)
    {
        ret = HI_CTIT_OTP_readSN(tmp);
        if (0 != ret)
        {
            printf("Failed to read sn\n");
            return -1;
        }
        printf("Get the SN successful\n");
        for (i = 0; i < 24; i++)
            printf("SN[%d]:%c\n", i, tmp[i]);
    }
    else
    {
        printf_usage();
    }

    return 0;
}

#ifdef __cplusplus
}
#endif
