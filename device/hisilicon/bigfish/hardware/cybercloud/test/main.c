#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>
#include <stdbool.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_demux.h"
#include "hi_unf_hdmi.h"

#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_mpi.h"

#ifdef HI_FRONTEND_SUPPORT
 #include "hi_adp_tuner.h"
#endif

#include <jni.h>
#include <utils/Log.h>
#include "CyberPlayer.h"

int tuner_test1()
{
    int *avplay1;
    int *avplay2;
    int counter = 0;

    Freq_Param stTs;

    stTs.uFrequency = 634;
    stTs.uModulationType = SDK_ModType_QAM64;
    stTs.uSymbolRate = 6875;

    avplay1 = CyberAVInit(CyberCloud_TS, SDK_FMT_1080i_50);

    CyberSetScreen(avplay1, 0, 0, 1280, 768);

    CyberAVPlayByProNo(avplay1, &stTs, 1);

    HI_CHAR InputCmd[32];
    while(1)
    {
        printf("please input the q to quit!\n");
        fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

    }

    CyberAVStop(avplay1, 0);

    CyberAVUnInit(avplay1);

    return 0;
}

int tuner_test2()
{
    int *avplay1;
    int *avplay2;

    Pid_Param stParm;
    Freq_Param stTs;
    int counter = 0;

    stTs.uFrequency = 634;
    stTs.uModulationType = SDK_ModType_QAM64;
    stTs.uSymbolRate = 6875;

    stParm.uAudioPid  = 0xC8;
    stParm.uAudioType = SDK_AudioType_MP3;
    stParm.uVideoPid  = 0xC9;
    stParm.uVideoType = SDK_VideoType_H264;

    avplay1 = CyberAVInit(CyberCloud_TS, SDK_FMT_1080i_50);

    CyberSetScreen(avplay1, 0, 0, 1280, 768);

    CyberAVPlayByPid(avplay1, &stTs, &stParm);

    HI_CHAR InputCmd[32];
    while(1)
    {
        printf("please input the q to quit!\n");
        fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }

    }


    CyberAVStop(avplay1, 0);

    CyberAVUnInit(avplay1);

    return 0;
}

HI_BOOL g_StopSocketThread = HI_FALSE;
static pthread_t g_SocketThd1;
static pthread_t g_SocketThd2;

typedef struct g_SocketArg
{
    HI_CHAR *pMultiAddr;
    HI_U16 UdpPort;
    int *avplay;

}SOCKET_ARG_S;

static HI_VOID SocketThread(void *arg)
{
    HI_S32 SocketFd;
    SOCKET_ARG_S *pstArg = NULL;
    struct sockaddr_in ServerAddr;
    in_addr_t IpAddr;
    struct ip_mreq Mreq;
    HI_U32 AddrLen;
    HI_UNF_STREAM_BUF_S StreamBuf;
    HI_U32 ReadLen;
    HI_U32 GetBufCount  = 0;
    HI_U32 ReceiveCount = 0;
    HI_S32 Ret;
    HI_U8 *buf = NULL;

    pstArg = arg;

    SocketFd = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP);
    if (SocketFd < 0)
    {
        printf("create socket error [%d].\n", errno);
        return;
    }

    ServerAddr.sin_family = AF_INET;
    ServerAddr.sin_addr.s_addr = htonl(INADDR_ANY);
    ServerAddr.sin_port = htons(pstArg->UdpPort);

    if (bind(SocketFd, (struct sockaddr *)(&ServerAddr), sizeof(struct sockaddr_in)) < 0)
    {
        printf("socket bind error [%d].\n", errno);
        close(SocketFd);
        return;
    }

    IpAddr = inet_addr(pstArg->pMultiAddr);
    if (IpAddr)
    {
        Mreq.imr_multiaddr.s_addr = IpAddr;
        Mreq.imr_interface.s_addr = htonl(INADDR_ANY);
        if (setsockopt(SocketFd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &Mreq, sizeof(struct ip_mreq)))
        {
            printf("Socket setsockopt ADD_MEMBERSHIP error [%d].\n", errno);
            close(SocketFd);
            return;
        }
    }

    AddrLen = sizeof(ServerAddr);

    buf= (HI_U8 *)malloc(188*50);
    if(!buf)
    {
        printf("malloc failed\n");
        return -1;
    }

    while (!g_StopSocketThread)
    {
        ReadLen = recvfrom(SocketFd, buf, 188*50, 0,
                           (struct sockaddr *)&ServerAddr, &AddrLen);
        if (ReadLen <= 0)
        {
            ReceiveCount++;
            if (ReceiveCount >= 50)
            {
                printf("########## TS come too slow or net error! #########\n");
                ReceiveCount = 0;
            }
        }
        else
        {
AGAIN:
            if(0 != CyberAVPlayTs(pstArg->avplay, buf, ReadLen))
            {
                printf("Put ts Error!\n");
                usleep(1000*10);
                goto AGAIN;
            }

        }
    }

    close(SocketFd);
    free(buf);
    return;
}

int ip_ts_test()
{
    int *avplay1;
    int *avplay2;

    Pid_Param stParm;
    int counter = 0;
    HI_BOOL bRenewPackage = HI_TRUE;
    HI_CHAR   pMultiAddr1[32]="224.0.0.2";
    HI_CHAR   pMultiAddr2[32]="224.0.0.3";
    HI_U16 UdpPort1 = 1234;
    HI_U16 UdpPort2 = 1235;
    SOCKET_ARG_S stSocket = {0};

    stParm.uAudioPid  = 0xC8;
    stParm.uAudioType = SDK_AudioType_MP3;
    stParm.uVideoPid  = 0xC9;
    stParm.uVideoType = SDK_VideoType_H264;


    avplay1 = CyberAVInit(CyberCloud_TS, SDK_FMT_1080i_50);
    CyberSetScreen(avplay1, 0, 0, 0, 0);
    CyberAVTsSetParam(avplay1, stParm.uVideoType, stParm.uVideoPid, stParm.uAudioType, stParm.uAudioPid);


    stSocket.avplay = avplay1;
    stSocket.pMultiAddr = pMultiAddr1;
    stSocket.UdpPort = UdpPort1;
    g_StopSocketThread = HI_FALSE;
    pthread_create(&g_SocketThd1, HI_NULL, (HI_VOID *)SocketThread, &stSocket);

    HI_CHAR InputCmd[32];
    while(1)
    {
        fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            g_StopSocketThread = HI_TRUE;
            break;
        }

    }

    printf("%s->%d\n", __func__, __LINE__);
    pthread_join(g_SocketThd1, HI_NULL);

    CyberAVStop(avplay1, 0);

    CyberAVUnInit(avplay1);
    printf("%s->%d\n", __func__, __LINE__);

    return 0;
}


int ip_2ts_test()
{
    int *avplay1;
    int *avplay2;

    Pid_Param stParm;
    int counter = 0;
    HI_BOOL bRenewPackage = HI_TRUE;
    HI_CHAR   pMultiAddr1[32]="224.0.0.2";
    HI_CHAR   pMultiAddr2[32]="224.0.0.3";
    HI_U16 UdpPort1 = 1234;
    HI_U16 UdpPort2 = 1235;
    SOCKET_ARG_S stSocket1 = {0};
    SOCKET_ARG_S stSocket2 = {0};

    stParm.uAudioPid  = 0xC8;
    stParm.uAudioType = SDK_AudioType_MP3;
    stParm.uVideoPid  = 0xC9;
    stParm.uVideoType = SDK_VideoType_H264;


    avplay1 = CyberAVInit(CyberCloud_TS, SDK_FMT_1080i_50);
    CyberSetScreen(avplay1, 0, 0, 800, 400);
    CyberAVTsSetParam(avplay1, stParm.uVideoType, stParm.uVideoPid, stParm.uAudioType, stParm.uAudioPid);


    stSocket1.avplay = avplay1;
    stSocket1.pMultiAddr = pMultiAddr1;
    stSocket1.UdpPort = UdpPort1;
    g_StopSocketThread = HI_FALSE;
    pthread_create(&g_SocketThd1, HI_NULL, (HI_VOID *)SocketThread, &stSocket1);

    avplay2 = CyberAVInit(CyberCloud_TS, SDK_FMT_1080i_50);
    CyberSetScreen(avplay2, 800, 400, 800, 400);
    CyberAVTsSetParam(avplay2, stParm.uVideoType, stParm.uVideoPid, stParm.uAudioType, stParm.uAudioPid);

    stSocket2.avplay = avplay2;
    stSocket2.pMultiAddr = pMultiAddr2;
    stSocket2.UdpPort = UdpPort2;
    g_StopSocketThread = HI_FALSE;
    pthread_create(&g_SocketThd2, HI_NULL, (HI_VOID *)SocketThread, &stSocket2);

    HI_CHAR InputCmd[32];
    while(1)
    {
        fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);
        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            g_StopSocketThread = HI_TRUE;
            break;
        }

    }

    printf("%s->%d\n", __func__, __LINE__);
    pthread_join(g_SocketThd1, HI_NULL);
    pthread_join(g_SocketThd2, HI_NULL);

    printf("%s->%d\n", __func__, __LINE__);
    CyberAVStop(avplay1, 0);
    CyberAVStop(avplay2, 0);
    CyberAVUnInit(avplay1);
    CyberAVUnInit(avplay2);

    printf("%s->%d\n", __func__, __LINE__);
    return 0;
}

int es_test()
{
    int *avplay1;
    int *avplay2;

    Pid_Param stParm;
    int counter = 0;
    FILE *g_pTsFile = HI_NULL;
    HI_U8 *buf = NULL;
    HI_S32 Readlen = 0;
    HI_BOOL bRenewPackage = HI_TRUE;

    stParm.uAudioPid  = 0xC8;
    stParm.uAudioType = SDK_AudioType_MP3;
    stParm.uVideoPid  = 0xC9;
    stParm.uVideoType = SDK_VideoType_H264;


    avplay1 = CyberAVInit(CyberCloud_ES, SDK_FMT_1080i_50);

    CyberSetScreen(avplay1, 0, 0, 0, 0);

    CyberAVEsSetVideoParam(avplay1, SDK_VideoType_H264);
    g_pTsFile = fopen("/system/tmp/lq/cloud/test_cloud.h264", "rb");
    if (!g_pTsFile)
    {
        printf("open file %s error!\n", "/system/tmp/lq/cloud/streetFighter.ts");
        return -1;
    }

    buf= (HI_U8 *)malloc(1024*1024*1);
    if(!buf)
    {
        printf("malloc failed\n");
        return -1;
    }
    counter = 0;
    while (1)
    {

        if(bRenewPackage)
        {
            Readlen = fread(buf, sizeof(HI_U8), 100, g_pTsFile);
            if(Readlen != 100)
            {
                printf("rewind the file\n");
                rewind(g_pTsFile);
                continue;
            }

        }
        printf("%s->%d\n", __func__, __LINE__);
        if(0 != CyberAVPlayEsVideo(avplay1, buf, Readlen))
        {
            printf("%s->%d\n", __func__, __LINE__);
            bRenewPackage = HI_FALSE;
            usleep(1000*100);
            continue;
        }
        printf("%s->%d\n", __func__, __LINE__);

    }

    CyberAVStop(avplay1, 0);

    CyberAVUnInit(avplay1);

    fclose(g_pTsFile);
    free(buf);

    return 0;
}

void show_help()
{
    printf("================\n");
    printf("1. tuner_test1\n");
    printf("2. tuner_test2\n");
    printf("3. ip_ts_test\n");
    printf("4. ip_2ts_test\n");
    printf("5. es_test\n");
    printf("q. quit test\n");
    printf("================\n");

}
int main()
{
    HI_CHAR InputCmd[32];
    show_help();
    while(1)
    {
        fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);
        if ('1' == InputCmd[0])
        {
            printf("start\n");
            tuner_test1();
            printf("end\n");
            continue;
        }
        else if ('2' == InputCmd[0])
        {
            printf("start\n");
            tuner_test2();
            printf("end\n");
            continue;
        }
        else if ('3' == InputCmd[0])
        {
            printf("start\n");
            ip_ts_test();
            printf("end\n");
            continue;
        }
        else if ('4' == InputCmd[0])
        {
            printf("start\n");
            ip_2ts_test();
            printf("end\n");
            continue;
        }
        else if ('5' == InputCmd[0])
        {
            printf("start\n");
            es_test();
            printf("end\n");
            continue;
        }
        else if ('q' == InputCmd[0])
        {
            printf("quit\n");
            break;
        }
        else
        {
            show_help();
        }

    }

    return 0;
}
