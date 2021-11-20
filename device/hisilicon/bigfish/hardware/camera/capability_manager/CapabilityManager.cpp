/*
 **************************************************************************************
 *       Filename:  CapabilityManager.cpp
 *    Description:  Camera Capability Manager source file
 *
 *        Version:  1.0
 *        Created:  2012-05-11 18:10:09
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */
#define LOG_NDEBUG 0
#define LOG_TAG "CapabilityManager"
#include <utils/Log.h>

#include "CameraVender.h"
#include "CameraUtils.h"
#include "CapabilityManager.h"

#define V4L2_CID_PRODUCT_ID         (V4L2_CID_BASE+100)
#define VGA_WIDTH 640

namespace android {

/*
 **************************************************************************
 * FunctionName: getMaxSize;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int getMaxSize(const char *str, int *width, int *height)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *d   = ",";
    char *p         = NULL;
    int mWidth      = 0;
    int mHeight     = 0;
    char buffer[512];

    strncpy(buffer, str, strlen(str)+1);
    p = strtok(buffer, d);
    if(sscanf(p, "%dx%d", &mWidth, &mHeight) == 2)
    {
        CAMERA_HAL_LOGV("get the mWidth and mHeight success");
    }
    *width  = mWidth;
    *height = mHeight;

    while((p = strtok(NULL, d)))
    {
        if(sscanf(p, "%dx%d", &mWidth, &mHeight) == 2)
        {
            CAMERA_HAL_LOGV("get the mWidth and mHeight success");
        }
        if(mWidth * mHeight > (*width) * (*height))
        {
            *width  = mWidth;
            *height = mHeight;
        }
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: getMaxPreviewSize;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int getMaxPreviewSize(const char * str, int *width, int *height)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    getMaxSize(str, width, height);
    return 0;
}

/*
 **************************************************************************
 * FunctionName: getMaxPictureSize;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int getMaxPictureSize(const char * str, int *width, int *height)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    getMaxSize(str, width, height);
    return 0;
}

/*
 **************************************************************************
 * FunctionName: getMaxFps;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int getMaxFps(const char *str, int *fps)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *d   = ",";
    char *p         = NULL;
    int mFps        = 0;
    char buffer[512];

    *fps = 0;
    strncpy(buffer, str, strlen(str)+1);
    p = strtok(buffer, d);
    if(sscanf(p, "%d", &mFps) == 1)
    {
        CAMERA_HAL_LOGV("get the mFps success");
    }
    if(mFps <= DEFAULT_CAMERA_MAX_PREVIEW_FPS)
    {
        *fps = mFps;
    }

    while((p = strtok(NULL, d)))
    {
        if(sscanf(p, "%d", &mFps) == 1)
        {
            CAMERA_HAL_LOGV("get the mFps");
        }
        if((mFps > *fps) && (mFps <= DEFAULT_CAMERA_MAX_PREVIEW_FPS))
        {
            *fps = mFps;
        }
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: isResolutionValid;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static bool isResolutionValid(int width, int height, const char *supportedResolutions)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    char tmpBuffer[32];

    if (NULL == supportedResolutions)
    {
        CAMERA_HAL_LOGE("Invalid supported resolutions string");
        return false;
    }

    snprintf(tmpBuffer, sizeof(tmpBuffer), "%dx%d", width, height);

    if(strstr(supportedResolutions, tmpBuffer))
    {
        return true;
    }

    return false;
}

/*
 **************************************************************************
 * FunctionName: isParameterValid;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static bool isParameterValid(const char *param, const char *supportedParams)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (NULL == supportedParams)
    {
        CAMERA_HAL_LOGE("Invalid supported parameters string");
        return false;
    }

    if (NULL == param)
    {
        CAMERA_HAL_LOGE("Invalid parameter string");
        return false;
    }

    if(strstr(supportedParams, param))
    {
        return true;
    }

    return false;
}

/*
 **************************************************************************
 * FunctionName: isParameterValid;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static bool isParameterValid(int param, const char *supportedParams)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    char tmpBuffer[32];

    if (NULL == supportedParams)
    {
        CAMERA_HAL_LOGE("Invalid supported parameters string");
        return false;
    }

    snprintf(tmpBuffer, sizeof(tmpBuffer), "%d", param);

    if(strstr(supportedParams, tmpBuffer))
    {
        return true;
    }

    return false;
}

static int SortingArray(int array[], int num)
{
    int i,j,temp;
    for(j=0;j<num-1;j++){
        for(i=0;i<num-j-1;i++){
            if(array[i]>array[i+1])
            {
                temp=array[i];
                array[i]=array[i+1];
                array[i+1]=temp;
            }
        }
    }

    return 0;
}

/*
 ******************************************************************************
 *
 *                  CAMERA PRODUCT ID INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterProductId"

class CameraParameterProductId : public CapabilityInterface
{
public:
    CameraParameterProductId(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterProductId::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    //FIXME:For some usb cameras is not good in terms of compatibility,
    //      so we get the product id here.
    struct v4l2_control ctrl;
    int ret = 0;

    ctrl.id     = V4L2_CID_PRODUCT_ID;
    ctrl.value  = 0;

    if(ioctl(mCameraFd, VIDIOC_G_CTRL, &ctrl) < 0)
    {
        CAMERA_HAL_LOGV("VIDIOC_G_CTRL fail");
    }
    int idVender = (0xFFFF0000 & ctrl.value) >> 16;
    int idProduct = 0x0000FFFF & ctrl.value;
    CAMERA_PARAM_LOGI("camera product id = 0x%04x%04x", idVender, idProduct);

    ((CameraExtendedEnv*)mEnv)->mCameraVender = CAMERA_VENDER_COMMON;
    if( idVender == ((0xFFFF0000 & CAMERA_PRODUCT_ID_BNT) >> 16)
        && ( idProduct == (0x0000FFFF & CAMERA_PRODUCT_ID_BNT)) )
    {
        ((CameraExtendedEnv*)mEnv)->mCameraVender = CAMERA_VENDER_BNT;
    }

    if( idVender == ((0xFFFF0000 & CAMERA_PRODUCT_ID_GSOU) >> 16)
        && ( idProduct == (0x0000FFFF & CAMERA_PRODUCT_ID_GSOU)) )
    {
        ((CameraExtendedEnv*)mEnv)->mCameraVender = CAMERA_VENDER_GSOU;
    }

    return 0;
}

int CameraParameterProductId::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterProductId::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  WHITE BALANCE CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterWhiteBalance"

class CameraParameterWhiteBalance : public CapabilityInterface
{
public:
    CameraParameterWhiteBalance(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterWhiteBalance::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_WHITE_BALANCE, CameraParameters::WHITE_BALANCE_AUTO);
    p.set(CameraParameters::KEY_WHITE_BALANCE, CameraParameters::WHITE_BALANCE_AUTO);

    return 0;
}

int CameraParameterWhiteBalance::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *support = p.get(CameraParameters::KEY_SUPPORTED_WHITE_BALANCE);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support white balance");
        changed = 0;
        return 0;
    }

    const char* wb = p.get(CameraParameters::KEY_WHITE_BALANCE);
    if(!wb)
    {
        return 0;
    }

    if(!isParameterValid(wb, support))
    {
        CAMERA_PARAM_LOGE("invalid white balance values[%s]", wb);
        return -1;
    }

    CAMERA_HAL_LOGV("set white balance to [%s]", wb);

    return 0;
}

int CameraParameterWhiteBalance::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  IMAGE EFFECT CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterEffect"

class CameraParameterEffect : public CapabilityInterface
{
public:
    CameraParameterEffect(void *env) : CapabilityInterface (env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterEffect::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_EFFECTS, CameraParameters::EFFECT_NONE);
    p.set(CameraParameters::KEY_EFFECT, CameraParameters::EFFECT_NONE);

    return 0;
}

int CameraParameterEffect::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *support = p.get(CameraParameters::KEY_SUPPORTED_EFFECTS);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support effect");
        changed = 0;
        return 0;
    }

    const char* effect = p.get(CameraParameters::KEY_EFFECT);
    if(!effect)
    {
        return 0;
    }

    if(!isParameterValid(effect, support))
    {
        CAMERA_PARAM_LOGE("invalid effect values[%s]", effect);
        return -1;
    }

    CAMERA_HAL_LOGV("set effect to [%s]", effect);

    return 0;
}

int CameraParameterEffect::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  ANTIBANDING CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterAntibanding"

class CameraParameterAntibanding : public CapabilityInterface
{
public:
    CameraParameterAntibanding(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterAntibanding::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_ANTIBANDING, CameraParameters::ANTIBANDING_AUTO);
    p.set(CameraParameters::KEY_ANTIBANDING, CameraParameters::ANTIBANDING_AUTO);

    return 0;
}

int CameraParameterAntibanding::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *support = p.get(CameraParameters::KEY_SUPPORTED_ANTIBANDING);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support antibanding");
        changed = 0;
        return 0;
    }

    const char* antibanding = p.get(CameraParameters::KEY_ANTIBANDING);
    if(!isParameterValid(antibanding, support))
    {
        CAMERA_PARAM_LOGE("invalid antibanding values[%s]", antibanding);
        return -1;
    }

    CAMERA_HAL_LOGV("set antibanding to [%s]", antibanding);

    return 0;
}

int CameraParameterAntibanding::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *          FLASH MODE CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterFlashMode"

class CameraParameterFlashMode : public CapabilityInterface
{
public:
    CameraParameterFlashMode(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterFlashMode::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_FLASH_MODES, CameraParameters::FLASH_MODE_OFF);
    p.set(CameraParameters::KEY_FLASH_MODE, CameraParameters::FLASH_MODE_OFF);

    return 0;
}

int CameraParameterFlashMode::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *support = p.get(CameraParameters::KEY_SUPPORTED_FLASH_MODES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support flash");
        changed = 0;
        return 0;
    }

    const char* flash = p.get(CameraParameters::KEY_FLASH_MODE);
    if(!isParameterValid(flash, support))
    {
        CAMERA_PARAM_LOGE("invalid flash values[%s]", flash);
        p.set(CameraParameters::KEY_FLASH_MODE, CameraParameters::FLASH_MODE_OFF);
        return -1;
    }

    CAMERA_HAL_LOGV("set flash to [%s]", flash);

    return 0;
}

int CameraParameterFlashMode::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *          SCENE MODE CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterSceneMode"

class CameraParameterSceneMode : public CapabilityInterface
{
public:
    CameraParameterSceneMode(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterSceneMode::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_SCENE_MODES, CameraParameters::SCENE_MODE_AUTO);
    p.set(CameraParameters::KEY_SCENE_MODE, CameraParameters::SCENE_MODE_AUTO);

    return 0;
}

int CameraParameterSceneMode::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char *support = p.get(CameraParameters::KEY_SUPPORTED_SCENE_MODES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support scene");
        changed = 0;
        return 0;
    }

    const char* scene = p.get(CameraParameters::KEY_SCENE_MODE);
    if(!isParameterValid(scene, support))
    {
        CAMERA_PARAM_LOGE("invalid scene values[%s]", scene);
        return -1;
    }

    CAMERA_HAL_LOGV("set scene to [%s]", scene);

    return 0;
}

int CameraParameterSceneMode::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  PREVIEW RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterPreview"

class CameraParameterPreview : public CapabilityInterface, public CameraParameterObject
{
public:
    CameraParameterPreview(void *env) : CapabilityInterface(env)
    {
        mPreviewWidth   = 0;
        mPreviewHeight  = 0;
        mPreviewFormat  = DEFAULT_CAMERA_PREVIEW_V4L2_FORMAT;
        ((CameraExtendedEnv*)env)->mShouldRestartPreview  = false;
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
private:
    int mPreviewWidth;
    int mPreviewHeight;
    int mPreviewFormat;
};

int CameraParameterPreview::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct v4l2_frmsizeenum fsize;
    String8 strPreview("");
    char strTmp[64];
    memset(&fsize, 0x00, sizeof(fsize));
    fsize.index         = 0;
    fsize.pixel_format  = DEFAULT_CAMERA_PREVIEW_V4L2_FORMAT;
    fsize.type          = V4L2_FRMSIZE_TYPE_DISCRETE;

    int order[PREVIEW_SIZE_COUNT];
    int supportnum =0;
    bool haveone=false;

    while(0 == ioctl(mCameraFd, VIDIOC_ENUM_FRAMESIZES, &fsize))
    {
        fsize.index++;
        for(unsigned int i=0; i < PREVIEW_SIZE_COUNT; i++)
        {
            if( (fsize.discrete.width == previewSizes[i].width) &&
                (fsize.discrete.height == previewSizes[i].height) )
            {
                order[supportnum++] = i;
                haveone=true;
            }
        }
    }

    SortingArray(order, supportnum);

    for(int i=0; i < supportnum; i++)
    {
        snprintf(strTmp, sizeof(strTmp), "%dx%d", previewSizes[order[i]].width, previewSizes[order[i]].height);
        strPreview += strTmp;
        if(i < supportnum-1){
            strPreview += ",";
        }
    }

    CAMERA_PARAM_LOGI("support preview size = %s", strPreview.string());
    int maxWidth = 0, maxHeight = 0;
    getMaxSize(strPreview, &maxWidth, &maxHeight);

    if(haveone)
    {
        CAMERA_PARAM_LOGI("real support preview size = %s", strPreview.string());
        p.set(CameraParameters::KEY_SUPPORTED_PREVIEW_SIZES, strPreview);

        CAMERA_PARAM_LOGI("support video size = %s", strPreview.string());
        p.set(CameraParameters::KEY_SUPPORTED_VIDEO_SIZES, strPreview);

        snprintf(strTmp, sizeof(strTmp), "%dx%d", maxWidth, maxHeight);
        String8 realMaxPreviewSize(strTmp);
        CAMERA_PARAM_LOGI("set preferred-preview-size-for-video = %s", realMaxPreviewSize.string());
        p.set(CameraParameters::KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO, realMaxPreviewSize);
    }

    struct v4l2_fmtdesc fmt;

    memset(&fmt, 0, sizeof(fmt));
    fmt.index = 0;
    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    while (0 == ioctl(mCameraFd, VIDIOC_ENUM_FMT, &fmt))
    {
        fmt.index++;
        CAMERA_PARAM_LOGI("Camera support capture format: { pixelformat = '%c%c%c%c', description = '%s' }",
                fmt.pixelformat & 0xFF, (fmt.pixelformat >> 8) & 0xFF,
                (fmt.pixelformat >> 16) & 0xFF, (fmt.pixelformat >> 24) & 0xFF,
                fmt.description);
        if(strcmp((char *)fmt.description, "MJPEG")== 0)
        {
            mPreviewFormat = V4L2_PIX_FMT_MJPEG;
        }
    }

    //here we must init the preview size
    p.setPreviewSize(maxWidth, maxHeight);

    String8 strPreviewFmt("");

    strPreviewFmt += CameraParameters::PIXEL_FORMAT_YUV420SP;
    strPreviewFmt += ",";
    strPreviewFmt += CameraParameters::PIXEL_FORMAT_YUV420P;

    p.set(CameraParameters::KEY_SUPPORTED_PREVIEW_FORMATS, strPreviewFmt);
    p.set(CameraParameters::KEY_PREVIEW_FORMAT, DEFAULT_CAMERA_PREVIEW_FORMAT);
    p.set(CameraParameters::KEY_VIDEO_FRAME_FORMAT, DEFAULT_CAMERA_VIDEO_FORMAT);

    return 0;
}

int CameraParameterPreview::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int width           = 0;
    int height          = 0;
    const char *support = NULL;

    //here we must init the preview and recording size
    support = p.get(CameraParameters::KEY_SUPPORTED_VIDEO_SIZES);
    if(NULL == support)
    {
        p.set(CameraParameters::KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO, "");
    }
    else
    {
        CAMERA_PARAM_LOGW("support video size is not NULL");
        //p.set(CameraParameters::KEY_PREFERRED_PREVIEW_SIZE_FOR_VIDEO, "");
    }

    support  = p.get(CameraParameters::KEY_SUPPORTED_PREVIEW_SIZES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support preview size");
        return 0;
    }

    p.getPreviewSize(&width, &height);
    if(isResolutionValid(width, height, support))
    {
        p.setVideoSize(width, height);
        p.setPreviewSize(width, height);
    }
    else
    {
        p.setPreviewSize(mPreviewWidth, mPreviewHeight);
        p.setVideoSize(mPreviewWidth, mPreviewHeight);

        CAMERA_PARAM_LOGE("invalid preview size:%dx%d, set to to default:%dx%d", width, height, mPreviewWidth, mPreviewHeight);
        return -1;
    }

    if( (mPreviewWidth != width) || (mPreviewHeight != height) )
    {
        mPreviewWidth   = width;
        mPreviewHeight  = height;

        ((CameraExtendedEnv*)mEnv)->mPreviewWidth   = mPreviewWidth;
        ((CameraExtendedEnv*)mEnv)->mPreviewHeight  = mPreviewHeight;
        if(mPreviewWidth <= VGA_WIDTH){
            ((CameraExtendedEnv*)mEnv)->mPreviewFormat  = V4L2_PIX_FMT_YUYV;
        }else{
            ((CameraExtendedEnv*)mEnv)->mPreviewFormat  = mPreviewFormat;
        }

        CAMERA_PARAM_LOGI("preview resolution [width=%d, height=%d]", width, height);

/*
        for(unsigned int i=0; i<mObservers.size(); i++)
        {
            mObservers[i]->onValueChanged(this, p);
        }
*/

        ((CameraExtendedEnv*)mEnv)->mShouldRestartPreview = true;
    }

    support = p.get(CameraParameters::KEY_SUPPORTED_PREVIEW_FORMATS);
    const char* fmt = p.get(CameraParameters::KEY_PREVIEW_FORMAT);
    if(!isParameterValid(fmt, support))
    {
        CAMERA_PARAM_LOGE("invalid preview format[%s]", fmt);
        return -1;
    }
    ((CameraExtendedEnv*)mEnv)->mPreviewFrameFmt = fmt;

    CAMERA_HAL_LOGV("set preview format to [%s]", fmt);

    return 0;
}

int CameraParameterPreview::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  SNAPSHOT RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterSnapshot"

class CameraParameterSnapshot : public CapabilityInterface
{
public:
    CameraParameterSnapshot(void *env) : CapabilityInterface(env)
    {
        mSnapshotWidth = 0;
        mSnapshotHeight = 0;
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
    int getMaxSnapshotFps(CameraParameters& p);

private:
    int mSnapshotWidth;
    int mSnapshotHeight;
};

int CameraParameterSnapshot::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct v4l2_frmsizeenum fsize;
    String8 strSnapshot("");
    char strTmp[64];
    memset(&fsize, 0x00, sizeof(fsize));
    fsize.index         = 0;
    fsize.pixel_format  = DEFAULT_CAMERA_SNAPSHOT_V4L2_FORMAT;
    fsize.type          = V4L2_FRMSIZE_TYPE_DISCRETE;

    int order[PICTURE_SIZE_COUNT];
    int supportnum =0;
    bool haveone=false;

    while(0 == ioctl(mCameraFd, VIDIOC_ENUM_FRAMESIZES, &fsize))
    {
        fsize.index++;
        for(unsigned int i=0; i < PICTURE_SIZE_COUNT; i++)
        {
            if( (fsize.discrete.width == pictureSizes[i].width) &&
                (fsize.discrete.height == pictureSizes[i].height) )
            {
                order[supportnum++] = i;
                haveone=true;
            }
        }
    }

    SortingArray(order, supportnum);

    for(int i=0; i < supportnum; i++)
    {
        snprintf(strTmp, sizeof(strTmp), "%dx%d", pictureSizes[order[i]].width, pictureSizes[order[i]].height);
        strSnapshot += strTmp;
        if(i < supportnum-1){
            strSnapshot += ",";
        }
    }

    if(haveone)
    {
        CAMERA_PARAM_LOGI("support snapshot size = %s", strSnapshot.string());
        p.set(CameraParameters::KEY_SUPPORTED_PICTURE_SIZES, strSnapshot);
    }

    //==============================
    //FIXME:For some usb cameras is not good in terms of compatibility,
    //      so we make some special process here.
    if( ((CameraExtendedEnv*)mEnv)->mCameraVender == CAMERA_VENDER_BNT )
    {
        p.set(CameraParameters::KEY_SUPPORTED_PICTURE_SIZES, "640x480");
    }

    if( ((CameraExtendedEnv*)mEnv)->mCameraVender == CAMERA_VENDER_GSOU )
    {
        p.set(CameraParameters::KEY_SUPPORTED_PICTURE_SIZES, "640x480");
    }
    //==============================

    //here we must init the picture size
    int width   = 0;
    int height  = 0;
    const char *support = p.get(CameraParameters::KEY_SUPPORTED_PICTURE_SIZES);
    if(support)
    {
        getMaxPictureSize(support, &width, &height);
        p.setPictureSize(width, height);
    }

    p.set(CameraParameters::KEY_SUPPORTED_PICTURE_FORMATS, CameraParameters::PIXEL_FORMAT_JPEG);
    p.set(CameraParameters::KEY_PICTURE_FORMAT, CameraParameters::PIXEL_FORMAT_JPEG);

    p.set(CameraParameters::KEY_JPEG_QUALITY, DEFAULT_CAMERA_JPEG_QUALITY);

    return 0;
}

int CameraParameterSnapshot::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int width           = 0;
    int height          = 0;
    const char *support = NULL;

    support = p.get(CameraParameters::KEY_SUPPORTED_PICTURE_SIZES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support picture size");
        return 0;
    }

    p.getPictureSize(&width, &height);
    if(!isResolutionValid(width, height, support))
    {
        CAMERA_PARAM_LOGE("invalid picture size:%dx%d, set it to latest:%dx%d", width, height, mSnapshotWidth, mSnapshotHeight);
        p.setPictureSize(mSnapshotWidth, mSnapshotHeight);
        return -1;
    }

    if( (mSnapshotWidth != width) || (mSnapshotHeight != height) )
    {
        mSnapshotWidth   = width;
        mSnapshotHeight  = height;

        ((CameraExtendedEnv*)mEnv)->mSnapshotWidth   = width;
        ((CameraExtendedEnv*)mEnv)->mSnapshotHeight  = height;

        CAMERA_PARAM_LOGI("picture resolution [width=%d, height=%d]", width, height);

        //update snapshot fps
        //getMaxSnapshotFps(p);
    }


    support = p.get(CameraParameters::KEY_SUPPORTED_PICTURE_FORMATS);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support picture formats");
        return 0;
    }

    const char *fmt = p.get(CameraParameters::KEY_PICTURE_FORMAT);
    if(!isParameterValid(fmt, support))
    {
        CAMERA_PARAM_LOGE("invalid picture fmt[%s]", fmt);
        return -1;
    }

    ((CameraExtendedEnv*)mEnv)->mSnapshotFormat  = DEFAULT_CAMERA_SNAPSHOT_V4L2_FORMAT;

    int quality = p.getInt(CameraParameters::KEY_JPEG_QUALITY);
    if(quality < 0 || quality >100)
    {
        quality = DEFAULT_CAMERA_JPEG_QUALITY;
        p.set(CameraParameters::KEY_JPEG_QUALITY, DEFAULT_CAMERA_JPEG_QUALITY);
    }

    ((CameraExtendedEnv*)mEnv)->mJpegQuality   = quality;

    CAMERA_HAL_LOGV("set jpeg quality=%d", quality);

    return 0;
}

int CameraParameterSnapshot::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterSnapshot::getMaxSnapshotFps(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int width           = 0;
    int height          = 0;
    unsigned int maxFps = 0;
    struct v4l2_frmivalenum frmival;
    memset(&frmival, 0x00, sizeof(frmival));

    p.getPictureSize(&width, &height);

    frmival.index           = 0;
    frmival.pixel_format    = ((CameraExtendedEnv*)mEnv)->mPreviewFormat;
    frmival.width           = width;
    frmival.height          = height;
    frmival.type            = V4L2_FRMIVAL_TYPE_DISCRETE;

    while(0 == ioctl(mCameraFd, VIDIOC_ENUM_FRAMEINTERVALS, &frmival))
    {
        frmival.index++;
        CAMERA_PARAM_LOGI("enum frame fps : %d", frmival.discrete.denominator/frmival.discrete.numerator);
        if(maxFps < frmival.discrete.denominator/frmival.discrete.numerator)
        {
            maxFps = frmival.discrete.denominator/frmival.discrete.numerator;
        }
    }

    ((CameraExtendedEnv*)mEnv)->mSnapshotFps = maxFps;
    CAMERA_PARAM_LOGI("set snapshot fps to [%d]", maxFps);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  FOCUS CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterFocus"

class CameraParameterFocus : public CapabilityInterface
{
public:
    CameraParameterFocus(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterFocus::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_SUPPORTED_FOCUS_MODES, CameraParameters::FOCUS_MODE_FIXED);
    p.set(CameraParameters::KEY_FOCUS_MODE, CameraParameters::FOCUS_MODE_FIXED);

    return 0;
}

int CameraParameterFocus::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    unsigned int i = 0;
    const char *support = p.get(CameraParameters::KEY_SUPPORTED_FOCUS_MODES);
    if(!support)
    {
        CAMERA_PARAM_LOGI("the hardware do not support focus");
        changed = 0;
        return 0;
    }

    const char* strValue = p.get(CameraParameters::KEY_FOCUS_MODE);

    if(strValue != NULL && strcmp(strValue, "auto") == 0)
    {
        CAMERA_PARAM_LOGW("invalid focus mode[%s], but we try it", strValue);
        return 0;
    }

    if(!isParameterValid(strValue, support))
    {
        CAMERA_PARAM_LOGE("invalid focus mode[%s]", strValue);
        p.set(CameraParameters::KEY_FOCUS_MODE, CameraParameters::FOCUS_MODE_FIXED);
        return -1;
    }

    CAMERA_HAL_LOGV("set focus mode to [%s]", strValue);

    return 0;
}

int CameraParameterFocus::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  FRAME INTERVALS RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterFps"
#define CAMERA_FPS_LENGTH   128
class CameraParameterFps : public CapabilityInterface, public CameraParameterObserver
{
public:
    CameraParameterFps(void *env) : CapabilityInterface(env)
    {
        mHwSupportFps = new char[CAMERA_FPS_LENGTH];
        memset(mHwSupportFps, 0x00, CAMERA_FPS_LENGTH);
        mFps = 0;
        mPreviewFormat = DEFAULT_CAMERA_PREVIEW_V4L2_FORMAT;
    }

    ~CameraParameterFps()
    {
        CAMERA_DELETE_ARRAY(mHwSupportFps);
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
    int onValueChanged(CapabilityInterface* who, CameraParameters& p);

private:
    int     mFps;
    char*   mHwSupportFps;
    int     mPreviewFormat;
};

int CameraParameterFps::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    struct v4l2_fmtdesc fmt;

    memset(&fmt, 0, sizeof(fmt));
    fmt.index = 0;
    fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    while (0 == ioctl(mCameraFd, VIDIOC_ENUM_FMT, &fmt))
    {
        fmt.index++;
        CAMERA_PARAM_LOGI("Camera support capture format: { pixelformat = '%c%c%c%c', description = '%s' }",
                fmt.pixelformat & 0xFF, (fmt.pixelformat >> 8) & 0xFF,
                (fmt.pixelformat >> 16) & 0xFF, (fmt.pixelformat >> 24) & 0xFF,
                fmt.description);
        if(strcmp((char *)fmt.description, "MJPEG")== 0)
        {
            mPreviewFormat = V4L2_PIX_FMT_MJPEG;
        }
    }

    int width   = 0;
    int height  = 0;
    String8 str("");
    char strTmp[8];
    struct v4l2_frmivalenum frmival;
    memset(&frmival, 0x00, sizeof(frmival));

    p.getPreviewSize(&width, &height);

    frmival.index           = 0;
    frmival.pixel_format    = mPreviewFormat;
    frmival.width           = width;
    frmival.height          = height;
    frmival.type            = V4L2_FRMIVAL_TYPE_DISCRETE;

    int haveone = 0;

    while(0 == ioctl(mCameraFd, VIDIOC_ENUM_FRAMEINTERVALS, &frmival))
    {
        frmival.index++;
        snprintf(strTmp, sizeof(strTmp), "%d", (int)frmival.discrete.denominator/frmival.discrete.numerator);
        if(!haveone)
        {
            haveone = 1;
            str += strTmp;
        }
        else
        {
            str += ",";
            str += strTmp;
        }
    }

    if(haveone)
    {
        //FIXME:in recording mode, we must support 20fps for cts,
        //but some sensor do not support it.

        p.set(CameraParameters::KEY_SUPPORTED_PREVIEW_FRAME_RATES, "30,25,20,15,10,5");
        memset(mHwSupportFps, 0x00, CAMERA_FPS_LENGTH);
        strncpy(mHwSupportFps, str.string(), strlen(str.string())+1);
        CAMERA_PARAM_LOGI("hardware support preview fps = %s", str.string());
    }

    const char* support = p.get(CameraParameters::KEY_SUPPORTED_PREVIEW_FRAME_RATES);
    if(support)
    {
        int fps = 0;
        getMaxFps(support, &fps);
        p.setPreviewFrameRate(fps);
    }

    CAMERA_PARAM_LOGI("support preview fps = %s", support);

    p.set(CameraParameters::KEY_SUPPORTED_PREVIEW_FPS_RANGE,"(1000,35000)");
    p.set(CameraParameters::KEY_PREVIEW_FPS_RANGE,"1000,35000");

    return 0;
}

int CameraParameterFps::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char* support = p.get(CameraParameters::KEY_SUPPORTED_PREVIEW_FRAME_RATES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support fps");
        changed = 0;
        return 0;
    }

    int fps = p.getPreviewFrameRate();
    if(!isParameterValid(fps, support))
    {
        CAMERA_PARAM_LOGE("invalid fps value[%d]", fps);
        return -1;
    }

    if(!isParameterValid(fps, mHwSupportFps))
    {
        getMaxFps(mHwSupportFps, &fps);
    }

    if(mFps != fps)
    {
        mFps    = fps;
        changed = 1;
        CAMERA_PARAM_LOGI("set preview fps to [%d]", mFps);
        ((CameraExtendedEnv*)mEnv)->mPreviewFps = mFps;
    }

    support = p.get(CameraParameters::KEY_SUPPORTED_PREVIEW_FPS_RANGE);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support fps range");
        return 0;
    }
    const char* fpsRange = p.get(CameraParameters::KEY_PREVIEW_FPS_RANGE);
    if(fpsRange)
    {
        if(!isParameterValid(fpsRange, support))
        {
            CAMERA_HAL_LOGE("fps is not valid");
            return -1;
        }
    }

    return 0;
}

int CameraParameterFps::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterFps::onValueChanged(CapabilityInterface* who, CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    queryCapability(p);
    setParameter(p);
    commitParameter();

    return 0;
}

/*
 ******************************************************************************
 *
 *                  JPEG THUMBNAIL RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterJpegThumbnail"

class CameraParameterJpegThumbnail : public CapabilityInterface
{
public:
    CameraParameterJpegThumbnail(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterJpegThumbnail::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    String8 str("");
    char strTmp[10];

    snprintf(strTmp, sizeof(strTmp), "%dx%d", 0, 0);
    str += strTmp;

    str += ",";
    snprintf(strTmp, sizeof(strTmp), "%dx%d", DEFAULT_CAMERA_THUMBNAIL_WIDTH, DEFAULT_CAMERA_THUMBNAIL_HEIGHT);
    str += strTmp;

    p.set(CameraParameters::KEY_SUPPORTED_JPEG_THUMBNAIL_SIZES, str);
    p.set(CameraParameters::KEY_JPEG_THUMBNAIL_QUALITY, DEFAULT_CAMERA_THUMBNAIL_QUALITY);

    return 0;
}

int CameraParameterJpegThumbnail::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int width   = 0;
    int height  = 0;
    int quality = 0;
    const char* support = NULL;

    support = p.get(CameraParameters::KEY_SUPPORTED_JPEG_THUMBNAIL_SIZES);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support thumbnai");
        return 0;
    }

    //if the camera app do not set this ,set it to default.
    if(p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_WIDTH) < 0)
    {
        p.set(CameraParameters::KEY_JPEG_THUMBNAIL_WIDTH, DEFAULT_CAMERA_THUMBNAIL_WIDTH);
    }

    if(p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_HEIGHT) < 0)
    {
        p.set(CameraParameters::KEY_JPEG_THUMBNAIL_HEIGHT, DEFAULT_CAMERA_THUMBNAIL_HEIGHT);
    }

    width = p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_WIDTH);
    height= p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_HEIGHT);

    if(!isResolutionValid(width, height, support))
    {
        CAMERA_PARAM_LOGE("invalid thumbnail size:%dx%d", width, height);
        return -1;
    }

    ((CameraExtendedEnv*)mEnv)->mThumbnailWidth     = width;
    ((CameraExtendedEnv*)mEnv)->mThumbnailHeight    = height;

    CAMERA_HAL_LOGV("set thumbnail size: %dx%d", width, height);

    //if the camera app do not set this ,set it to default.
    if( p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_QUALITY) < 0 ||
            p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_QUALITY) > 100)
    {
        p.set(CameraParameters::KEY_JPEG_THUMBNAIL_QUALITY, DEFAULT_CAMERA_THUMBNAIL_QUALITY);
    }

    quality = p.getInt(CameraParameters::KEY_JPEG_THUMBNAIL_QUALITY);

    ((CameraExtendedEnv*)mEnv)->mThumbnailQuality   = quality;

    CAMERA_HAL_LOGV("set thumbnail quality to [%d]", quality);

    return 0;
}

int CameraParameterJpegThumbnail::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  ZOOM RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterZoom"
#define MAX_ZOOM        6
#define ZOOM_RATIOS     100

class CameraParameterZoom : public CapabilityInterface
{
public:
    CameraParameterZoom(void *env) : CapabilityInterface(env)
    {
        mZoom   = 0;
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();

private:
    int mZoom;
};

int CameraParameterZoom::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    char strTmp[64];
    String8 strZoomRatios("");

    for(int i=0; i<=MAX_ZOOM; i++)
    {
        if(i)
        {
            strZoomRatios += ",";
        }
        snprintf(strTmp, sizeof(strTmp), "%d", (i+1) * ZOOM_RATIOS);
        strZoomRatios += strTmp;
    }

    p.set(CameraParameters::KEY_ZOOM_SUPPORTED,"true");
    p.set(CameraParameters::KEY_MAX_ZOOM, MAX_ZOOM);
    p.set(CameraParameters::KEY_ZOOM_RATIOS, strZoomRatios);

    p.set(CameraParameters::KEY_SMOOTH_ZOOM_SUPPORTED, "false");

    return 0;
}

int CameraParameterZoom::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char* support = p.get(CameraParameters::KEY_ZOOM_SUPPORTED);
    if(!support)
    {
        CAMERA_PARAM_LOGW("the hardware do not support zoom");
        return 0;
    }

    const char *value = p.get(CameraParameters::KEY_ZOOM_SUPPORTED);
    if(!value)
    {
        CAMERA_PARAM_LOGW("get KEY_ZOOM_SUPPORTED value fail");
        return 0;
    }

    if(strcmp(value, "false") == 0)
    {
        CAMERA_PARAM_LOGW("the hardware do not support zoom");
        return 0;
    }

    //if the camera app do not set this ,set it to none.
    if(p.getInt(CameraParameters::KEY_ZOOM) < 0)
    {
        p.set(CameraParameters::KEY_ZOOM, "0");
    }

    if(p.getInt(CameraParameters::KEY_ZOOM) > MAX_ZOOM)
    {
        p.set(CameraParameters::KEY_ZOOM, MAX_ZOOM);
        CAMERA_PARAM_LOGE("Invalid zoom value:%d, must be < %d", p.getInt(CameraParameters::KEY_ZOOM), MAX_ZOOM);;
        return -1;
    }

    int zoom = p.getInt(CameraParameters::KEY_ZOOM);
    if(mZoom != zoom)
    {
        mZoom = zoom;
        CAMERA_PARAM_LOGI("set zoom to [%d]", zoom);
    }

    return 0;
}

int CameraParameterZoom::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  EXPOSURE COMPENSATION RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterExposureCompensation"

class CameraParameterExposureCompensation : public CapabilityInterface
{
public:
    CameraParameterExposureCompensation(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterExposureCompensation::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_EXPOSURE_COMPENSATION_STEP, 1);
    p.set(CameraParameters::KEY_MAX_EXPOSURE_COMPENSATION, 2);
    p.set(CameraParameters::KEY_MIN_EXPOSURE_COMPENSATION, 0);

    return 0;
}

int CameraParameterExposureCompensation::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int max = p.getInt(CameraParameters::KEY_MAX_EXPOSURE_COMPENSATION);
    int min = p.getInt(CameraParameters::KEY_MIN_EXPOSURE_COMPENSATION);
    if((0 == max) && (0 == min))
    {
       return 0;
    }

    //if the camera app do not set this ,set it to 0.
    if(!p.get(CameraParameters::KEY_EXPOSURE_COMPENSATION))
    {
        p.set(CameraParameters::KEY_EXPOSURE_COMPENSATION, 0);
    }

    int mExposure = p.getInt(CameraParameters::KEY_EXPOSURE_COMPENSATION);
    int step = p.getInt(CameraParameters::KEY_EXPOSURE_COMPENSATION_STEP);

    if((mExposure > min) && (mExposure < max))
    {
       p.set(CameraParameters::KEY_EXPOSURE_COMPENSATION, mExposure);
    }

    return 0;
}

int CameraParameterExposureCompensation::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  EXPOSURE COMPENSATION RELATED INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterAutoExposureLock"

class CameraParameterAutoExposureLock: public CapabilityInterface
{
public:
    CameraParameterAutoExposureLock(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterAutoExposureLock::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_AUTO_EXPOSURE_LOCK_SUPPORTED, "true");
    p.set(CameraParameters::KEY_AUTO_EXPOSURE_LOCK, "false");

    return 0;
}

int CameraParameterAutoExposureLock::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    const char* str     = NULL;
    const char* support = p.get(CameraParameters::KEY_AUTO_EXPOSURE_LOCK_SUPPORTED);

    if(support && strcmp(support, "true") == 0)
    {
        str = p.get(CameraParameters::KEY_AUTO_EXPOSURE_LOCK);
        if(str && strcmp(str, "true") == 0)
        {
            p.set(CameraParameters::KEY_AUTO_EXPOSURE_LOCK, str);
        }
        else if(str && strcmp(str, "false") == 0)
        {
            p.set(CameraParameters::KEY_AUTO_EXPOSURE_LOCK, str);
        }
    }

    return 0;
}

int CameraParameterAutoExposureLock::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  BRIGHTNESS CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterBrightness"

class CameraParameterBrightness : public CapabilityInterface
{
public:
    CameraParameterBrightness(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterBrightness::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterBrightness::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterBrightness::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *              SATURATION CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterSaturation"

class CameraParameterSaturation : public CapabilityInterface
{
public:
    CameraParameterSaturation(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterSaturation::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterSaturation::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterSaturation::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  CONTRAST CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterContrast"

class CameraParameterContrast : public CapabilityInterface
{
public:
    CameraParameterContrast(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterContrast::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterContrast::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterContrast::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  ISO CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterISO"

class CameraParameterISO : public CapabilityInterface
{
public:
    CameraParameterISO(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterISO::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterISO::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterISO::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  METERING CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterMetering"

class CameraParameterMetering : public CapabilityInterface
{
public:
    CameraParameterMetering(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterMetering::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterMetering::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterMetering::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  SHARPNESS CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterSharpness"

class CameraParameterSharpness : public CapabilityInterface
{
public:
    CameraParameterSharpness(void *env) : CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterSharpness::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterSharpness::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

int CameraParameterSharpness::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  MISC CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraParameterMisc"

class CameraParameterMisc : public CapabilityInterface
{
public:
    CameraParameterMisc(void *env): CapabilityInterface(env)
    {
    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraParameterMisc::queryCapability(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    p.set(CameraParameters::KEY_FOCAL_LENGTH, "4.31");
    p.set(CameraParameters::KEY_HORIZONTAL_VIEW_ANGLE, "54.8");
    p.set(CameraParameters::KEY_VERTICAL_VIEW_ANGLE, "42.5");

    p.set(CameraParameters::KEY_MAX_NUM_DETECTED_FACES_HW, 10);

    return 0;
}

int CameraParameterMisc::setParameter(CameraParameters& p)
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    CameraExtendedEnv* env = (CameraExtendedEnv*)mEnv;

    const char *strValue = p.get(CameraParameters::KEY_ROTATION);
    if(strValue)
    {
        env->mRotation = atoi(strValue);
    }
    else
    {
        env->mRotation = 0;
    }

    /* gps parameters */
    strValue = p.get(CameraParameters::KEY_GPS_LATITUDE);
    if(strValue)
    {
        env->mGPSLatitude = strtod(strValue, NULL);
        env->mHaveGPS     = true;
    }
    else
    {
        env->mHaveGPS     = false;
    }

    strValue = p.get(CameraParameters::KEY_GPS_LONGITUDE);
    if(strValue)
    {
        env->mGPSLongitude = strtod(strValue, NULL);
        env->mHaveGPS      = true;
    }
    else
    {
        env->mHaveGPS      = false;
    }

    strValue = p.get(CameraParameters::KEY_GPS_ALTITUDE);
    if(strValue)
    {
        env->mGPSAltitude = strtod(strValue, NULL);
        env->mHaveGPS     = true;
    }
    else
    {
        env->mHaveGPS     = false;
    }

    strValue = p.get(CameraParameters::KEY_GPS_TIMESTAMP);
    if(strValue)
    {
        env->mGPSTimestamp = strtol(strValue, NULL, 10);
        env->mGPSHaveTimestamp = true;
    }
    else
    {
        env->mGPSHaveTimestamp = false;
    }

    strValue = p.get(CameraParameters::KEY_GPS_PROCESSING_METHOD);
    if(strValue)
    {
        int arraysize = sizeof(env->mGPSProcMethod);
        int strlength = strlen(strValue);
        memset(env->mGPSProcMethod, 0x00, arraysize);
        strncpy((char*)(env->mGPSProcMethod), strValue, ((strlength>arraysize-1) ? (arraysize-1) : strlength));
    }
    else
    {
        env->mGPSProcMethod[0] = '\0';
    }

    strValue = p.get(CameraParameters::KEY_FOCAL_LENGTH);
    if(strValue)
    {
        env->mFocalLength = p.getFloat(CameraParameters::KEY_FOCAL_LENGTH);
    }
    else
    {
        env->mFocalLength = 4.31;
    }

    return 0;
}

int CameraParameterMisc::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s", __FUNCTION__);

    return 0;
}

/*
 *******************************************************************************
 *
 *                  CAMERAFOCUSDISTANCE CAPABILITY INTERFACE
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CameraFocusDistance"

class CameraFocusDistance: public CapabilityInterface
{
public:
    CameraFocusDistance(void *env) : CapabilityInterface(env)
    {

    }

    int queryCapability(CameraParameters& p);
    int setParameter(CameraParameters& p);
    int commitParameter();
};

int CameraFocusDistance::queryCapability ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    p.set(CameraParameters::KEY_FOCUS_DISTANCES,"0.45,0.50,0.55");

    return 0;
}

int CameraFocusDistance::setParameter (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    //if the camera app do not set this ,set it to default.
    if(!p.get(CameraParameters::KEY_FOCUS_DISTANCES))
    {
        p.set(CameraParameters::KEY_FOCUS_DISTANCES,"0.45,0.50,0.55");
    }

    const char *value = p.get(CameraParameters::KEY_FOCUS_MODE);
    if(!value)
    {
        CAMERA_PARAM_LOGW("get KEY_FOCUS_MODE value fail");
        return 0;
    }

    if(strcmp(CameraParameters::FOCUS_MODE_INFINITY,value)==0)
    {
        p.set(CameraParameters::KEY_FOCUS_DISTANCES,"0.45,0.50,Infinity");
    }
    else if(p.get(CameraParameters::KEY_FOCUS_MODE))
    {
        p.set(CameraParameters::KEY_FOCUS_DISTANCES,"0.45,0.50,0.55");
    }

    return 0;
}

int CameraFocusDistance::commitParameter()
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    return 0;
}

/*
 ******************************************************************************
 *
 *                  CapabilityManager Implement
 *
 ******************************************************************************
 */
#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "CapabilityManager"

/*
 **************************************************************************
 * FunctionName: registerAllCapInterface;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CapabilityManager::registerAllCapInterface ( void )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    CapabilityInterface* capInterface   = NULL;
    CameraParameterPreview*  capPreview = NULL;
    CameraParameterFps* capFps          = NULL;

    /* camera product id */
    capInterface = new CameraParameterProductId(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterProductId!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* white balance interface */
    capInterface = new CameraParameterWhiteBalance(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterWhiteBalance!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* image effect interface */
    capInterface = new CameraParameterEffect(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterEffect!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* antibanding interface */
    capInterface = new CameraParameterAntibanding(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterAntibanding!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* flash interface */
    capInterface = new CameraParameterFlashMode(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterFlashMode!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* preview related interface */
    capInterface = new CameraParameterPreview(mEnv);
    capPreview = (CameraParameterPreview *)capInterface;
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterPreview!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* snapshot related interface */
    capInterface = new CameraParameterSnapshot(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterSnapshot!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* focus related interface */
    capInterface = new CameraParameterFocus(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterFocus!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /*frame rate related interface */
    capInterface = new CameraParameterFps(mEnv);
    capFps = (CameraParameterFps *)capInterface;
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterFps!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);
    capPreview->registerObserver((CameraParameterObserver *)capFps);

    /* jpeg thumbnail related interface */
    capInterface = new CameraParameterJpegThumbnail(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterJpegThumbnail!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* zoom related interface */
    capInterface = new CameraParameterZoom(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterZoom!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* exposure compensation related interface */
    capInterface = new CameraParameterExposureCompensation(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterExposureCompensation!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* auto exposure lock related interface */
    capInterface = new CameraParameterAutoExposureLock(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterAutoExposureLock!");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* scene mode */
    capInterface = new CameraParameterSceneMode(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterSceneMode");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* brightness */
    capInterface = new CameraParameterBrightness(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterBrightness");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* saturation */
    capInterface = new CameraParameterSaturation(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterSaturation");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* contrast */
    capInterface = new CameraParameterContrast(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterContrast");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* ISO */
    capInterface = new CameraParameterISO(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterISO");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* Metering */
    capInterface = new CameraParameterMetering(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterMetering");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* Sharpness */
    capInterface = new CameraParameterSharpness(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterSharpness");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* Misc */
    capInterface = new CameraParameterMisc(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraParameterMisc");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    capInterface = new CameraFocusDistance(mEnv);
    if(NULL == capInterface)
    {
        CAMERA_HAL_LOGE("No memory for CameraFocusDistance");
        return -ENOMEM;
    }
    mParametersObjs.add(capInterface);

    /* TODO register other interface that need to be supportted */
    return 0;
}

/*
 **************************************************************************
 * FunctionName: CapabilityManager::CapabilityManager;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CapabilityManager::CapabilityManager(void *env)
    :CameraObject(env)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret = registerAllCapInterface();
    if(ret < 0)
    {
        CAMERA_HAL_LOGE("fail to register CapInterface");
        return;
    }
}

/*
 **************************************************************************
 * FunctionName: CapabilityManager::~CapabilityManager;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
CapabilityManager::~CapabilityManager(void )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    uint32_t i = 0;
    for(i=0; i<mParametersObjs.size(); ++i)
    {
        delete mParametersObjs[i];
    }

    mParametersObjs.clear();
}

/*
 **************************************************************************
 * FunctionName: CapabilityManager::queryCap;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CapabilityManager::queryCap ( CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    uint32_t i = 0;
    for(i=0; i<mParametersObjs.size(); ++i)
    {
        mParametersObjs[i]->queryCapability(p);
    }
    return 0;
}

/*
 **************************************************************************
 * FunctionName: CapabilityManager::setParam;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CapabilityManager::setParam (CameraParameters& p )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret     = 0;
    uint32_t i  = 0;

    for(i=0; i<mParametersObjs.size(); ++i)
    {
        if(mParametersObjs[i]->setParameter(p) < 0)
        {
            ret = -1;
        }
    }

    return ret;
}

/*
 **************************************************************************
 * FunctionName: CapabilityManager::commitParam;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int CapabilityManager::commitParam ( void )
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret    = 0;
    uint32_t i = 0;

    for(i=0; i<mParametersObjs.size(); ++i)
    {
        if(mParametersObjs[i]->commitParameter() < 0)
        {
            ret = -1;
        }
    }

    return ret;
}

}; /* namespace android */

/********************************** END **********************************************/
