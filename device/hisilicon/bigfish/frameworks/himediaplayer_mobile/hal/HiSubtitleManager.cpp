#define LOG_NDEBUG 0
#define LOG_TAG "subManager"
#include "HiSubtitleManager.h"
#include "HiMediaDefine.h"

namespace android {
    Mutex subManager::mSubInstMutex;
    Vector<subManager*>  subManager::mSubInstances;

subManager::subManager():
    SubtitleFontManager( 0, 0, NULL, PIXEL_FORMAT_RGBA_8888),
    mCurPgsClearTime(-1),
    mInitialized(false),
    s_pstParseHand(NULL),
    mNativeWindow(NULL),
    pCacheBuffer(NULL)
{
    Mutex::Autolock l(&subManager::mSubInstMutex);
    mSubInstances.add(this);
    mIsXBMC = false;
    mIsBufferPosted = false;
}

subManager::~subManager()
{
    Mutex::Autolock l(&subManager::mSubInstMutex);
    HI_S32 index = getIndexByInstance(this);
    if (index >= 0)
    {
        mSubInstances.removeAt(index);
    }
    cleanSubMem();
}

int subManager::getIndexByInstance(subManager* pInst)
{
    const size_t size = mSubInstances.size();
    HI_U32 i = 0;

    for (i = 0; i < size; ++i)
    {
        const subManager* pSub = mSubInstances.itemAt(i);

        if (pSub == pInst)
        {
            return i;
        }
    }

    LOGE("getIndexByInstance can not find a valid pointer");
    return -1;
}

status_t subManager::setSubSurface(const sp<Surface>& surface)
{
    LOGV("setSubSurface(%p)",surface.get());

    Mutex::Autolock lock(mLock);
    getDisableSubtitle(mIsDisableSubtitle); //get IsDisableSubtitle
    getLanguageType(mLanguageType);

    mSubSurface  = surface;
    mInitialized = true;

    return NO_ERROR;
}
status_t subManager::setSubSurface(ANativeWindow* pNativeWindow, bool isXBMC)
{
    ALOGV("setSubSurface(ANativeWindow = %p)",pNativeWindow);
    Mutex::Autolock lock(mLock);
    if (pNativeWindow == NULL)
    {
        ALOGE("setSubSurface(ANativeWindow is NULL");
        return -1;
    }

    getDisableSubtitle(mIsDisableSubtitle); //get IsDisableSubtitle
    getLanguageType(mLanguageType);

    if(isXBMC)
    {
        mIsXBMC = true;
        if( pCacheBuffer == NULL)
        {
            pCacheBuffer = (unsigned char*)malloc(1280*720*4);
        }
        memset(pCacheBuffer, 0x00,1280*720*4);
        pNativeWindow = NULL;
    }
    else
    {
        mNativeWindow = pNativeWindow;
        native_window_set_buffers_format(mNativeWindow.get(), PIXEL_FORMAT_RGBA_8888);
    }

    mInitialized = true;

    ALOGV("setSubSurface(ANativeWindow = %p) OK mInitialized =true",pNativeWindow);
    return NO_ERROR;
}

status_t  subManager::getSubString(unsigned char* pSubString)
{
    ALOGV("subManager::getSubString");
    return SubtitleFontManager::getSubString(pSubString);
}

status_t subManager::lockNativeWindow( ANativeWindow_Buffer* outBuffer)
{
    if (mLockedBuffer != 0) {
        ALOGE("error native window already locked");
        return INVALID_OPERATION;
    }
    if(NULL == mNativeWindow.get())
    {
        ALOGE("native window is invalid");
        return INVALID_OPERATION;
    }

    ANativeWindowBuffer* out;

    status_t err = native_window_dequeue_buffer_and_wait(mNativeWindow.get(), &out);

    if (err == NO_ERROR)
    {
        sp<GraphicBuffer> backBuffer = static_cast<GraphicBuffer*>(out);
        const Rect bounds(backBuffer->width, backBuffer->height);

        Region newDirtyRegion;
        newDirtyRegion.set(bounds);

        void* vaddr;
        status_t res = backBuffer->lock(
        GRALLOC_USAGE_SW_READ_OFTEN | GRALLOC_USAGE_SW_WRITE_OFTEN,
        newDirtyRegion.bounds(), &vaddr);

        if (res != 0) {
            err = INVALID_OPERATION;
            ALOGE("lock error(%x)", res);
        } else {
            mLockedBuffer = backBuffer;
            outBuffer->width  = backBuffer->width;
            outBuffer->height = backBuffer->height;
            outBuffer->stride = backBuffer->stride;
            outBuffer->format = backBuffer->format;
            outBuffer->bits   = vaddr;
        }
    }
    else
    {
        ALOGE("dequeueBuffer failed (%x)", err);
    }
    return err;
}

status_t subManager::unlockNativeWindow()
{
    if (mLockedBuffer == 0) {
        ALOGE("subManager::unlockNativeWindow, unlocked buffer failed");
        return INVALID_OPERATION;
    }
    if (NULL  == mNativeWindow.get()) {
        ALOGE("subManager::unlockNativeWindow, mNativeWindow is invalid");
        return INVALID_OPERATION;
    }

    status_t err = mLockedBuffer->unlock();
    ALOGE_IF(err, "failed unlocking buffer (%p)", mLockedBuffer->handle);
    ANativeWindowBuffer *buffer = static_cast<ANativeWindowBuffer*>(mLockedBuffer.get());

     err = mNativeWindow->queueBuffer(mNativeWindow.get(),buffer , -1);

    mLockedBuffer = 0;
    return err;
}

int subManager::getSubData(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg, char* _string, int* size)
{

    subManager* pSubManager = (subManager*)u32UserData;
    HI_S32 s32Ret = HI_SUCCESS;
    // Begin:Ass used
    HI_S32 s32OutLen = 0;
    HI_CHAR *pszOutHand = NULL;
    HI_SO_SUBTITLE_ASS_DIALOG_S *pstDialog  = NULL;

    Mutex::Autolock l(&subManager::mSubInstMutex);
    HI_S32 index = getIndexByInstance(this);

    if (index < 0)
    {
        LOGE("[getSubData] not find a valid pointer");
        return HI_FAILURE;
    }

    HI_S32 isEnable = 0;

    pSubManager->getDisableSubtitle(isEnable);

    if (isEnable > 0)
    {
        return HI_SUCCESS;
    }

    // If using the other subtitle, you should free the memory;
    if (HI_UNF_SUBTITLE_ASS != pstInfo->eType)
    {
        if (NULL != pSubManager->s_pstParseHand)
        {
            HI_SO_SUBTITLE_ASS_DeinitParseHand(pSubManager->s_pstParseHand);
            pSubManager->s_pstParseHand = NULL;
        }
    }
    // End:Ass used

    LOGV("[getSubData] subdraw type:%d",pstInfo->eType);

    switch (pstInfo->eType)
    {
        case HI_UNF_SUBTITLE_BITMAP:
        {
            LOGV("[getSubData] HI_UNF_SUBTITLE_BITMAP:x:%d,y:%d,w:%d,h:%d, bitBand:%d",
                                                pstInfo->unSubtitleParam.stGfx.x,
                                                pstInfo->unSubtitleParam.stGfx.y,
                                                pstInfo->unSubtitleParam.stGfx.w,
                                                pstInfo->unSubtitleParam.stGfx.h,
                                                pstInfo->unSubtitleParam.stGfx.s32BitWidth);
        }
        break;
        case HI_UNF_SUBTITLE_TEXT:
        {
            if (NULL == pstInfo->unSubtitleParam.stText.pu8Data)
            {
                LOGE("[getSubData] HI_UNF_SUBTITLE_TEXT OUTPUT: HI_FAILURE ");
                return HI_FAILURE;
            }

            LOGV("[getSubData] HI_UNF_SUBTITLE_TEXT OUTPUT: %s ,len:%d",
                    pstInfo->unSubtitleParam.stText.pu8Data,
                    pstInfo->unSubtitleParam.stText.u32Len);
            LOGV("[getSubData] HI_UNF_SUBTITLE_TEXT draw subtitle ");

            strcpy(_string, (HI_CHAR *)pstInfo->unSubtitleParam.stText.pu8Data);
            *size = pstInfo->unSubtitleParam.stText.u32Len;
        }
        break;
        case HI_UNF_SUBTITLE_ASS:
        {
            s32Ret = HI_SUCCESS;
            if (NULL == pstInfo->unSubtitleParam.stAss.pu8EventData)
            {
                LOGE("[getSubData] HI_UNF_SUBTITLE_ASS OUTPUT: HI_FAILURE");
                return HI_FAILURE;
            }

            if (NULL == pSubManager->s_pstParseHand
                 && (HI_SUCCESS != HI_SO_SUBTITLE_ASS_InitParseHand(&pSubManager->s_pstParseHand)))
            {
                return HI_FAILURE;
            }

            if (HI_SUCCESS == HI_SO_SUBTITLE_ASS_StartParse(pstInfo, &pstDialog, pSubManager->s_pstParseHand))
            {
                s32Ret = HI_SO_SUBTITLE_ASS_GetDialogText(pstDialog, &pszOutHand ,&s32OutLen);

                if ( s32Ret != HI_SUCCESS || NULL == pszOutHand )
                {
                    LOGW("[getSubData] HI_UNF_SUBTITLE_ASS can't parse this Dialog!");
                }
                else
                {
                    LOGV("[getSubData] HI_UNF_SUBTITLE_ASS OUTPUT: %s  %d", pszOutHand, s32OutLen);

                    strcpy(_string, pszOutHand);
                    *size = s32OutLen;
                }
            }
            else
            {
                LOGW("[getSubData] HI_UNF_SUBTITLE_ASS can't parse this ass file!");
            }

            if (NULL != pszOutHand)
            {
                free(pszOutHand);
                pszOutHand = NULL;
            }

            HI_SO_SUBTITLE_ASS_FreeDialog(&pstDialog);
        }
        break;
        default:
        break;
    }

    return HI_SUCCESS;
}

int subManager::subOndraw(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg)
{
    LOGV("subManager::subOndraw");

    subManager* pSubManager = NULL;
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 unicode[SUB_CHAR_MAX_LEN + 2] = {0};
    HI_S32 strCount = 0;
    // Begin:Ass used
    HI_S32 s32OutLen = 0;
    HI_CHAR *pszOutHand = NULL;
    HI_SO_SUBTITLE_ASS_DIALOG_S *pstEvents = NULL;
    HI_SO_SUBTITLE_ASS_DIALOG_S *pstDialog  = NULL;

    pSubManager = (subManager*)u32UserData;

    if ( pSubManager == NULL )
    {
        LOGE("[subOndraw] pSubManager is NULL");
        return HI_FAILURE;
    }

    if(pstInfo == NULL)
    {
        LOGE("[subOndraw] pstInfo is NULL, should check before use");
        return HI_FAILURE;
    }

    Mutex::Autolock l(&subManager::mSubInstMutex);
    HI_S32 index = getIndexByInstance(pSubManager);

    if (index < 0)
    {
        LOGE("[subOndraw] not find a valid pointer");
        return HI_FAILURE;
    }

    /*Added subtitle init. */
    if ((pSubManager->mSubSurface != NULL) && (!pSubManager->mInitialized))
    {
        pSubManager->postBuffer(TYPE_CLEAR);
        pSubManager->mInitialized = true;
    }

    if (!pSubManager->mInitialized)
    {
        LOGE("[subOndraw] pSubManager is not  initial");
        return HI_SUCCESS;
    }

    HI_S32 isEnable = 0;

    pSubManager->getDisableSubtitle(isEnable);

    if (isEnable > 0)
    {
        return HI_SUCCESS;
    }

    // If using the other subtitle, you should free the memory;
    if (HI_UNF_SUBTITLE_ASS != pstInfo->eType)
    {
        if (NULL != pSubManager->s_pstParseHand)
        {
            HI_SO_SUBTITLE_ASS_DeinitParseHand(pSubManager->s_pstParseHand);
            pSubManager->s_pstParseHand = NULL;
        }
    }
    // End:Ass used

    LOGV("[subOndraw] subdraw type:%d",pstInfo->eType);
    switch (pstInfo->eType)
    {
        case HI_UNF_SUBTITLE_BITMAP:
        {
            LOGV("[subOndraw] HI_UNF_SUBTITLE_BITMAP:x:%d,y:%d,w:%d,h:%d, bitBand:%d",
                                                pstInfo->unSubtitleParam.stGfx.x,
                                                pstInfo->unSubtitleParam.stGfx.y,
                                                pstInfo->unSubtitleParam.stGfx.w,
                                                pstInfo->unSubtitleParam.stGfx.h,
                                                pstInfo->unSubtitleParam.stGfx.s32BitWidth);

            s32Ret = pSubManager->getBmpData( (void*)&(pstInfo->unSubtitleParam.stGfx));
            if ((0 == s32Ret ) && (pSubManager->mIsDisableSubtitle <= 0))
            {
                LOGV("[subOndraw] getBmpData finish, that is great!");
                pSubManager->postBuffer(TYPE_DRAW);
                pSubManager->mCurPgsClearTime = pstInfo->unSubtitleParam.stGfx.s64Pts
                    + pstInfo->unSubtitleParam.stGfx.u32Duration;
            }
        }
        break;
        case HI_UNF_SUBTITLE_TEXT:
        {
            if (NULL == pstInfo->unSubtitleParam.stText.pu8Data)
            {
                LOGE("[subOndraw] HI_UNF_SUBTITLE_TEXT OUTPUT: HI_FAILURE ");
                return HI_FAILURE;
            }

            LOGV("[subOndraw] HI_UNF_SUBTITLE_TEXT OUTPUT: %s ,len:%d",
                    pstInfo->unSubtitleParam.stText.pu8Data,
                    pstInfo->unSubtitleParam.stText.u32Len);
            LOGV("[subOndraw] HI_UNF_SUBTITLE_TEXT draw subtitle ");

            s32Ret = pSubManager->String_UTF8ToUnicode((unsigned char*)pstInfo->unSubtitleParam.stText.pu8Data,
                    pstInfo->unSubtitleParam.stText.u32Len,unicode,strCount);
            s32Ret |= pSubManager->setSubtitle(unicode,strCount,
                (unsigned char*)pstInfo->unSubtitleParam.stText.pu8Data,
                pstInfo->unSubtitleParam.stText.u32Len);

            if ((0 ==s32Ret) && (pSubManager->mIsDisableSubtitle <= 0))
            {
                pSubManager->postBuffer(TYPE_DRAW);
            }
        }
        break;
        case HI_UNF_SUBTITLE_ASS:
        {
            s32Ret = HI_SUCCESS;
            if (NULL == pstInfo->unSubtitleParam.stAss.pu8EventData)
            {
                LOGE("[subOndraw] HI_UNF_SUBTITLE_ASS OUTPUT: HI_FAILURE");
                return HI_FAILURE;
            }

            if (NULL == pSubManager->s_pstParseHand
                 && (HI_SUCCESS != HI_SO_SUBTITLE_ASS_InitParseHand(&pSubManager->s_pstParseHand)))
            {
                return HI_FAILURE;
            }

            if (HI_SUCCESS == HI_SO_SUBTITLE_ASS_StartParse(pstInfo, &pstDialog, pSubManager->s_pstParseHand))
            {
                s32Ret = HI_SO_SUBTITLE_ASS_GetDialogText(pstDialog, &pszOutHand ,&s32OutLen);

                if ( s32Ret != HI_SUCCESS || NULL == pszOutHand )
                {
                    LOGW("[subOndraw] HI_UNF_SUBTITLE_ASS can't parse this Dialog!");
                }
                else
                {
                    LOGV("[subOndraw] HI_UNF_SUBTITLE_ASS OUTPUT: %s  %d", pszOutHand, s32OutLen);
                    s32Ret = pSubManager->String_UTF8ToUnicode((unsigned char*)pszOutHand,
                            s32OutLen, unicode,strCount);
                    s32Ret |= pSubManager->setSubtitle(unicode,strCount,
                            (unsigned char*)pszOutHand,s32OutLen);
                    if ((0 ==s32Ret) && (pSubManager->mIsDisableSubtitle <= 0))
                    {
                        pSubManager->postBuffer(TYPE_DRAW);
                    }
                }
            }
            else
            {
                LOGW("[subOndraw] HI_UNF_SUBTITLE_ASS can't parse this ass file!");
            }

            if (NULL != pszOutHand)
            {
                free(pszOutHand);
                pszOutHand = NULL;
            }

            HI_SO_SUBTITLE_ASS_FreeDialog(&pstDialog);
        }
        break;
        default:
        break;
    }

    LOGV("subManager::subOndraw Finish");

    return HI_SUCCESS;
}

// static
int subManager::subOnclear(HI_U32 u32UserData, HI_VOID *pArg)
{
    LOGV("subManager::subOnclear");
    subManager* pSubManager = (subManager*)u32UserData;
    HI_UNF_SO_CLEAR_PARAM_S *pstClearParam = NULL;

    if (pSubManager == NULL)
    {
        LOGE("pSubManager is NULL");
        return HI_FAILURE;
    }

    Mutex::Autolock l(&subManager::mSubInstMutex);
    HI_S32 index = getIndexByInstance(pSubManager);

    if (index < 0)
    {
        LOGE("[subOnclear] not find a valid pointer");
        return HI_FAILURE;
    }

    if(pArg)
    {
        pstClearParam = (HI_UNF_SO_CLEAR_PARAM_S *)pArg;
    }

    // if clear operation time is earlier than s_s64CurPgsClearTime,current clear operation is out of date */
    // the clear operation must come from previous pgs subtitle.
    // if pstClearParam->s64NodePts is 0,indicate clear subtitle right now
    if(-1 != pSubManager->mCurPgsClearTime && 0 != pstClearParam->s64NodePts)
    {
        if (pstClearParam->s64ClearTime < pSubManager->mCurPgsClearTime)
        {
            LOGE("s64Cleartime =%lld ms, mCurPgsClearTime =%lld ms, is invalid clear event !\n",
                pstClearParam->s64ClearTime, pSubManager->mCurPgsClearTime);
            return HI_SUCCESS;
        }
    }

    pSubManager->clearSubDataList();

    if (!pSubManager->mInitialized)
    {
        LOGE("pTmpSubManager is not initial");
        return HI_SUCCESS;
    }

    pSubManager->getDisableSubtitle(pSubManager->mIsDisableSubtitle);

    if (pSubManager->mIsDisableSubtitle > 0)
    {
        LOGE("[subOnclear] Subtitle is Disable");
        return HI_SUCCESS;
    }

    pSubManager->postBuffer(TYPE_CLEAR);
    LOGV("subManager::subOnclear Finish");

    return HI_SUCCESS;
}

//type  1: load  0: clear
int subManager::postBuffer(int type)
{
    HI_S32 ret = HI_SUCCESS;
    Mutex::Autolock lock(mLock);

    if (mSubSurface != NULL)
    {
        ANativeWindow_Buffer outBuffer;
        if (NO_ERROR == mSubSurface->lock(&outBuffer,NULL))
        {
            if (PIXEL_FORMAT_RGBA_8888 == outBuffer.format)
            {
                resetSubtitleConfig(outBuffer.stride, outBuffer.height, outBuffer.bits, outBuffer.format);

                if (TYPE_DRAW == type)
                {
                    ret = loadBmpToBuffer();
                }
            }
            else
            {
                LOGW("[resetSubtitleConfig] unsupport format(%d) !\n", outBuffer.format);
            }

            mSubSurface->unlockAndPost();
            if (!this->mIsBufferPosted)
            {
                this->mIsBufferPosted = true;
            }
        }
    }

   else if(mNativeWindow != NULL)
   {
        ANativeWindow_Buffer outBuffer;
        if (NO_ERROR == lockNativeWindow(&outBuffer))
        {
            LOGV("lockNativeWindow, start to loadBmpToBuffer");
            if (PIXEL_FORMAT_RGBA_8888 == outBuffer.format)
            {
                resetSubtitleConfig(outBuffer.stride, outBuffer.height, outBuffer.bits, outBuffer.format);
                LOGV("resetSubtitleConfig done");
                if (TYPE_DRAW == type)
                {
                    ret = loadBmpToBuffer();
                    LOGV("loadBmpToBuffer done");
                }
            }
            else
            {
                LOGW("[resetSubtitleConfig] unsupport format(%d) !\n", outBuffer.format);
            }

            unlockNativeWindow();
            if (!this->mIsBufferPosted)
            {
                this->mIsBufferPosted = true;
            }
        }
    }
    else if(true == mIsXBMC && NULL != pCacheBuffer)
    {
        resetSubtitleConfig(1280, 720, pCacheBuffer, 1);
        if (TYPE_DRAW == type)
        {
            ret = loadBmpToBuffer();
        }else if (TYPE_CLEAR== type)
        {
            SubtitleFontManager::setSubtitle(NULL,0,NULL,0);//xbmc clear
            memset(pCacheBuffer, 0x00,1280*720*4);
            unlink("/mnt/picsub.bmp");
        }
        if (!this->mIsBufferPosted)
        {
            this->mIsBufferPosted = true;
        }
    }

    return ret;
}

void subManager::clearLastBuffer()
{
    Mutex::Autolock lock(mLock);
    return clearBmpBuffer(0);
}

void  subManager::cleanSubMem()
{
    LOGV("Call %s IN, mIsBufferPosted=%d", __FUNCTION__, this->mIsBufferPosted);

    if (false == mInitialized)
        return;

    mInitialized = false;
    mIsDisableSubtitle =0;

    setDisableSubtitle(1);
    clearSubDataList();

    Mutex::Autolock lock(mLock);

    if (mSubSurface != NULL)
    {
        ANativeWindow_Buffer outBuffer;
        if (NO_ERROR == mSubSurface->lock(&outBuffer,NULL))
        {
            if (PIXEL_FORMAT_RGBA_8888 == outBuffer.format)
            {
                resetSubtitleConfig(outBuffer.stride, outBuffer.height, outBuffer.bits, outBuffer.format);
            }
            else
            {
                LOGW("[resetSubtitleConfig] unsupport format(%d) !\n", outBuffer.format);
            }

            mSubSurface->unlockAndPost();
        }

        if (mSubSurface != NULL)
        {
            mSubSurface.clear();
            mSubSurface = NULL;
        }
    }
    if (mNativeWindow != NULL)
    {
        if (mIsBufferPosted)
        {
            ANativeWindow_Buffer outBuffer;
            if (NO_ERROR == lockNativeWindow(&outBuffer))
            {
                if (PIXEL_FORMAT_RGBA_8888 == outBuffer.format)
                {
                    resetSubtitleConfig(outBuffer.stride, outBuffer.height, outBuffer.bits, outBuffer.format);
                }
                else
                {
                    LOGW("[resetSubtitleConfig] unsupport format(%d) !\n", outBuffer.format);
                }

                unlockNativeWindow();
            }
        }

        mNativeWindow.clear();
        mNativeWindow = NULL;
    }

    if (true == mIsXBMC)
    {
        if(pCacheBuffer!=NULL)
        {
            free(pCacheBuffer);
            pCacheBuffer = NULL;
        }
        mIsXBMC= false;
        unlink("/mnt/picsub.bmp");
    }

    if (NULL != s_pstParseHand)
    {
        HI_SO_SUBTITLE_ASS_DeinitParseHand(s_pstParseHand);
        s_pstParseHand = NULL;
    }

    LOGV("subManager::cleanSubMem finish");
}
} // end namespace android
