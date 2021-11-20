#ifndef _ANDROID_SUBTITLEMANAGER_H_
#define _ANDROID_SUBTITLEMANAGER_H_

#include "HiMediaPlayerInvoke.h"
#include "Subtitle.h"
#include <android/native_window.h>
#include <gui/Surface.h>
#include "hi_svr_assa.h"

namespace android {
    class subManager : public SubtitleFontManager
    {
    public:
        enum
        {
            TYPE_CLEAR = 0,
            TYPE_DRAW = 1,
        };
        long long mCurPgsClearTime;
        subManager();
        ~subManager();

        status_t setSubSurface(const sp <Surface> &surface);
        status_t setSubSurface(ANativeWindow* pNativeWindow, bool isXBMC);
        status_t  getSubString(unsigned char* pSubString);
        void cleanSubMem();

        HI_BOOL  isUTF8(const void* pBuffer, long size) { return (HI_BOOL)(size > 0 ? 1 : 0); }

        int postBuffer(int type);
        void clearLastBuffer();
        void  setInitalized(bool val) { mInitialized = val; }

        bool  getInitialized() { return mInitialized; }
        static int subOndraw(HI_U32 u32UserData,
                             const HI_UNF_SO_SUBTITLE_INFO_S * pstInfo, HI_VOID * pArg);
        static int subOnclear(HI_U32 u32UserData, HI_VOID * pArg);
        status_t lockNativeWindow(ANativeWindow_Buffer* outBuffer);
        status_t unlockNativeWindow();
        int getSubData(HI_U32 u32UserData, const HI_UNF_SO_SUBTITLE_INFO_S *pstInfo, HI_VOID *pArg, char* _string, int* size);
    private:
        HI_BOOL mIsUTF8;
        int mLanguageType;
        int mIsDisableSubtitle;
        bool mIsBufferPosted;
        Mutex mLock;
        bool mInitialized;
        sp <Surface>  mSubSurface;
        HI_SO_SUBTITLE_ASS_PARSE_S *s_pstParseHand;
        static Mutex mSubInstMutex;
        static Vector <subManager*> mSubInstances;
        static int getIndexByInstance(subManager * pInst);
        unsigned char* pCacheBuffer;
        //add for subtitle for mediaplayer path
        sp<GraphicBuffer> mLockedBuffer;
        sp<ANativeWindow> mNativeWindow;
        //add for subtitle for mediaplayer path end
    };

} // end namespace android
#endif
