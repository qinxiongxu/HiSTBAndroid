#ifndef __HI_FRC_H__
#define __HI_FRC_H__

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <pthread.h>
#include "hi_common.h"

#ifdef ANDROID
#include <cutils/log.h>
#include <cutils/properties.h>
#endif

#define MAX_LOG_LEN           (512)

HI_VOID FRC_LOG_PRINT(HI_CHAR *pFuncName, HI_U32 u32LineNum, const HI_CHAR *format, ...);

#define HI_WARN_FRC(fmt...) \
do \
{\
    FRC_LOG_PRINT((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)

#define HI_INFO_FRC(fmt...)\
do\
{\
    FRC_LOG_PRINT((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)

#define HI_ERR_FRC(fmt...)\
do\
{\
    FRC_LOG_PRINT((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)

#define HI_FATAL_FRC(fmt...)\
do\
{\
    FRC_LOG_PRINT((HI_CHAR *)__FUNCTION__, (HI_U32)__LINE__, fmt);\
}while(0)

HI_VOID FRC_LOG_PRINT(HI_CHAR *pFuncName, HI_U32 u32LineNum, const HI_CHAR *format, ...)
{
    HI_CHAR     LogStr[MAX_LOG_LEN] = {0};
    va_list     args;
    HI_U32      LogLen;

    va_start(args, format);
    LogLen = vsnprintf(LogStr, MAX_LOG_LEN, format, args);
    va_end(args);
    LogStr[MAX_LOG_LEN-1] = '\0';

    ALOGI("%s[%d]:%s", pFuncName, u32LineNum, LogStr);

    return ;
}

#define FRC_MAX_NUM     16

typedef struct
{
    HI_HANDLE   hFrc;
    HI_U32      CurID;       /* current insert or drop position in a FRC cycle */
    HI_U32      InputCount;  /* input counter */
}FRC_S;

typedef struct 
{
    FRC_S               *Frc;
    pthread_mutex_t     Mutex;
}FRC_INFO_S;

static FRC_S            g_FrcCtx[FRC_MAX_NUM] = {{0, 0, 0}};
static FRC_INFO_S       g_Frc[FRC_MAX_NUM] = {{HI_NULL, PTHREAD_MUTEX_INITIALIZER}};

#define FRC_INST_LOCK(Id)       (HI_VOID)pthread_mutex_lock(&g_Frc[Id].Mutex)
#define FRC_INST_UNLOCK(Id)     (HI_VOID)pthread_mutex_unlock(&g_Frc[Id].Mutex)

#define FRC_INST_LOCK_CHECK(Handle, Id)\
    do\
    {\
        if (Id > FRC_MAX_NUM)\
        {\
            HI_ERR_FRC("FRC %d err\n", Id);\
            return HI_FAILURE;\
        }\
        FRC_INST_LOCK(Id);\
        pFrc = g_Frc[Id].Frc;\
        if (HI_NULL == pFrc)\
        {\
            FRC_INST_UNLOCK(Id);\
            HI_ERR_FRC("pFrc is Null\n");\
            return HI_FAILURE;\
        }\
        if (Handle != pFrc->hFrc)\
        {\
            FRC_INST_UNLOCK(Id);\
            HI_ERR_FRC("handle is invalid\n");\
            return HI_FAILURE;\
        }\
    }while(0)

#define HI_ID_FRC               0xC0
#define GET_FRC_HANDLE(Id)      ((HI_ID_FRC << 16) | (Id))

#define GET_FRC_ID(Handle)      ((Handle) & 0xff)

HI_S32 FrcCreate(HI_HANDLE *phFrc);
HI_S32 FrcDestroy(HI_HANDLE hFrc);
HI_S32 FrcReset(HI_HANDLE hFrc);
HI_S32 FrcCalculate(HI_HANDLE hFrc, HI_U32 InRate, HI_U32 OutRate, HI_U32 *NeedPlayCnt);

#endif
