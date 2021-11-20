#define __STDC_LIMIT_MACROS
#include <unistd.h>
#include <utils/Log.h>
#include <utils/Trace.h>
#include <gralloc_priv.h>
#include <hardware/gralloc.h>
#include <ui/GraphicBufferMapper.h>
#include <ui/Rect.h>
#include <ui/Fence.h>
#include <cutils/properties.h>
#include <sys/mman.h>
#include "HiVSink.h"

#define LOG_TAG "VSINK"
#define LOG_NDEBUG 0

namespace android {

static HiVSink* getSelf(HI_SVR_VSINK_S* vsink)
{
    return static_cast<HiVSink*>(vsink);
}
static void writeMetadata(ANativeWindowBuffer* buf, HI_SVR_PICTURE_S* pics)
{
    private_handle_t *handle = const_cast<private_handle_t*>(
            reinterpret_cast<const private_handle_t*>(buf->handle));
    private_metadata_t* metadata_ptr = (private_metadata_t*)mmap(NULL, handle->ion_metadata_size,
            PROT_READ | PROT_WRITE, MAP_SHARED, handle->metadata_fd, 0);
    if (MAP_FAILED == metadata_ptr) {
        ALOGV("mmap metadata buffer failed");
        return;
    }

    metadata_ptr->is_priv_framebuf_used = pics->stPrivData.s32IsPrivFrameBufUsed;
    metadata_ptr->display_cnt = pics->stPrivData.s32DisplayCnt;
    metadata_ptr->priv_data_start_pos = pics->stPrivData.s32PrivDataStartPos;

    if (0 != munmap((void *)metadata_ptr, handle->ion_metadata_size))
    {
        ALOGE("Failed to munmap metadata buffer");
    }

}
static void getBufferAttr(ANativeWindowBuffer* buf, HI_SVR_PICTURE_S* pics)
{
    private_handle_t *p_private_handle = const_cast<private_handle_t*>(
            reinterpret_cast<const private_handle_t*>(buf->handle));
    pics->s32FrameBufFd = p_private_handle->share_fd;
    pics->hBuffer   = p_private_handle->ion_phy_addr;
    pics->u32Height = p_private_handle->height;
    pics->u32Width  = p_private_handle->width;
    pics->u32Stride = p_private_handle->stride;

    pics->s32MetadataBufFd = p_private_handle->metadata_fd;
    pics->hMetadataBuf = p_private_handle->ion_metadata_phy_addr
            + offsetof(private_metadata_t, priv_data_start_pos);
    pics->u32MetadataBufSize = p_private_handle->ion_metadata_size - offsetof(private_metadata_t, priv_data_start_pos);

    pics->s64Pts = -1;
}

HiVSink::HiVSink(sp<ANativeWindow> w) :
        mNativeWindow(w), mUsage(GRALLOC_USAGE_HISI_VDP),
        mFormat(HAL_PIXEL_FORMAT_YCrCb_420_SP),
        mWidth(0), mHeight(0),
        mQueueToSurfaceFlinger(0)
{
    // Initialize the HI_SVR_VSINK_S function pointers.
    HI_SVR_VSINK_S::cancel      = hook_cancel;
    HI_SVR_VSINK_S::dequeue     = hook_dequeue;
    HI_SVR_VSINK_S::prepare     = hook_prepare;
    HI_SVR_VSINK_S::queue       = hook_queue;
    HI_SVR_VSINK_S::control     = hook_control;
}

int HiVSink::setNativeWindow(const sp<ANativeWindow> &window)
{
    ANativeWindow* w = NULL;
    mNativeWindow.clear();
    mNativeWindow = window;
    w = mNativeWindow.get();
    char value[PROPERTY_VALUE_MAX] = {0};

    if (!w)
    {
        ALOGD("native window has cleared");
        return OK;
    }

    w->query(w,
        NATIVE_WINDOW_QUEUES_TO_WINDOW_COMPOSER, &mQueueToSurfaceFlinger);

    if (property_get("service.media.hiplayer.overlay", value, "true"))
    {
        ALOGE("get property failed");
    }

    if (!mQueueToSurfaceFlinger ||  !strcasecmp("false", value))
    {
        mUsage = GRALLOC_USAGE_HW_RENDER;
    }
    native_window_set_usage(w, mUsage);
    native_window_set_buffers_format(w, mFormat);
    native_window_set_scaling_mode(w,
                    NATIVE_WINDOW_SCALING_MODE_SCALE_TO_WINDOW);
    ALOGD("vsink set native window %p ok, created by sf:%d, usage:%#x",
            window.get(), mQueueToSurfaceFlinger, mUsage);
    return OK;
}

HiVSink::~HiVSink()
{
    ALOGD("destroying HiVSink");

    if (mBufMap.size())
    {
        ALOGE("Error! VSink buffer mapper crashed");
    }
    mBufMap.clear();
    mNativeWindow.clear();
    ALOGD("destroying HiVSink OK");
}

int HiVSink::hook_cancel(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 cnt)
{
    HiVSink* s = getSelf(vsink);
    return s->cancel(pics, cnt);
}

int HiVSink::hook_dequeue(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pics, HI_U32 cnt)
{
    HiVSink* s = getSelf(vsink);
    return s->dequeue(pics, cnt);
}

int HiVSink::hook_prepare(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pic)
{
    HiVSink* s = getSelf(vsink);
    return s->prepare(pic);
}

int HiVSink::hook_queue(HI_SVR_VSINK_S* vsink, HI_SVR_PICTURE_S* pic)
{
    HiVSink* s = getSelf(vsink);
    return s->queue(pic);
}

int HiVSink::hook_control(HI_SVR_VSINK_S* vsink, HI_U32 cmd, ...)
{
    va_list args;
    HiVSink* s = getSelf(vsink);

    va_start(args, cmd);
    return s->control(cmd, args);
}

int HiVSink::cancel(HI_SVR_PICTURE_S* pics, HI_U32 cnt)
{
    int err;
    uint32_t i;
    int fenceFd = -1;
    ANativeWindowBuffer* buf;
    int index;
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    for (i = 0; i < cnt; i++) {
        index = mBufMap.indexOfKey(pics[i].hBuffer);
        if (index < 0)
        {
            ALOGE("Invalid picture to cancel, handle:%d", pics[i].hBuffer);
            continue;
        }
        buf = mBufMap.valueAt(index);
        if (!buf) {
            ALOGE("Invalid buf to cancel, handle:%d", pics[i].hBuffer);
            continue;
        }
        mBufMap.removeItem(pics[i].hBuffer);
        fenceFd = -1;
        index = mFenceMap.indexOfKey(pics[i].hBuffer);
        if (index != -1)
        {
            fenceFd = mFenceMap.valueAt(index);
            mFenceMap.removeItem(pics[i].hBuffer);
        }
        err = mNativeWindow->cancelBuffer(w, buf, fenceFd);
        if (err != 0) {
            ALOGE("cancel buffer to native window failed");
        }
        ALOGD("vsink cancel buffer %#x, fence %d", pics[i].hBuffer, fenceFd);

    }
    return OK;
}

static inline HI_S64 SVR_CurrentClock()
{
    clock_t c = clock();
    return (HI_S64)(c * 1000 / CLOCKS_PER_SEC);
}

int HiVSink::dequeue(HI_SVR_PICTURE_S* pics, HI_U32 cnt)
{
    int err;
    HI_U32 i;
    HI_SVR_PICTURE_S tmp;
    ANativeWindowBuffer* buf = NULL;
    HI_S64 time_used = 0;
    ANativeWindow* w = mNativeWindow.get();
    int fenceFd = -1;

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    for (i = 0; i < cnt; i++)
    {
        time_used = SVR_CurrentClock();
//        err = native_window_dequeue_buffer_and_wait(w, &buf);
        err = w->dequeueBuffer(w, &buf, &fenceFd);

        if (cnt > 1) {
            ALOGD("VSINK dequeue used time:%lld",
                    SVR_CurrentClock() - time_used);
        }
        if (err) {
            ALOGE("dequeue buffer from native window failed");
            goto failed;
        }

        getBufferAttr(buf, pics + i);

        mBufMap.add(pics[i].hBuffer, buf);
        mFenceMap.add(pics[i].hBuffer, fenceFd);
    }
    return OK;
failed:
    (void)cancel(pics, i);
    return UNKNOWN_ERROR;
}

int HiVSink::prepare(HI_SVR_PICTURE_S* picIn)
{
    return OK;
}

int HiVSink::queue(HI_SVR_PICTURE_S* picIn)
{
    int err;
    int index;
    int fenceFd = -1;
    ANativeWindowBuffer* buf;
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    index = mBufMap.indexOfKey(picIn->hBuffer);
    if (index < 0)
    {
        ALOGE("Invalid picture to display, handle:%d", picIn->hBuffer);
        return UNKNOWN_ERROR;
    }

    buf = mBufMap.valueAt(index);
    if (!buf) {
        ALOGE("Invalid picture to display");
        return UNKNOWN_ERROR;
    }

//    dumpYUVFrame(buf);
    android_native_rect_t rect;
    rect.left = 0;
    rect.top = 0;
    rect.bottom = picIn->u32Height;
    rect.right = picIn->u32Width;
    (void)native_window_set_crop(w, &rect);

    //copy private metadata into metadata buffer
    if (mUsage & GRALLOC_USAGE_HISI_VDP)
    {
        writeMetadata(buf, picIn);
    }

    err = mNativeWindow->queueBuffer(w, buf, fenceFd);
    if (err == 0)
    {
        mBufMap.removeItem(picIn->hBuffer);
    }
    return err;
}

int HiVSink::dispatchSetDimations(va_list args)
{
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    mWidth = va_arg(args, int);
    mHeight = va_arg(args, int);

    return native_window_set_buffers_dimensions(w, mWidth, mHeight);
}

int HiVSink::dispatchSetFormat(va_list args)
{
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }
    mFormat = va_arg(args, int);

    return native_window_set_buffers_format(w, mFormat);
}

int HiVSink::dispatchSetPicCnt(va_list args)
{
    int cnt;
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }
    cnt = va_arg(args, int);

    return native_window_set_buffer_count(w, cnt);
}

int HiVSink::dispatchWritePic(va_list args)
{
    HI_SVR_PICTURE_S* pic = NULL;
    HI_U8* data;
    HI_U32 size;
    ANativeWindowBuffer* buf;

    pic = va_arg(args, HI_SVR_PICTURE_S*);
    data = va_arg(args, HI_U8*);
    size = va_arg(args, HI_U32);
    buf = mBufMap.valueFor(pic->hBuffer);
    writeYUVFrame(buf, data, size);
    return OK;
}

int HiVSink::dispatchSetCrop(va_list args)
{
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    mCrop.left = va_arg(args, HI_S32);
    mCrop.top = va_arg(args, HI_S32);
    mCrop.right = va_arg(args, HI_S32);
    mCrop.bottom = va_arg(args, HI_S32);

    ALOGD("set native window crop, left:%d, top:%d, right:%d, bottom:%d",
            mCrop.left, mCrop.top, mCrop.right, mCrop.bottom);

    return native_window_set_crop(w, &mCrop);
}

int HiVSink::dispatchGetMinBufNb(va_list args)
{
    int err;
    int minUndequeuedBuffers;
    HI_U32* pstMinBufNb;
    ANativeWindow* w = mNativeWindow.get();

    if (!w)
    {
        ALOGE("native window did not set");
        return UNKNOWN_ERROR;
    }

    pstMinBufNb = va_arg(args, HI_U32*);


    err = mNativeWindow->query(
            mNativeWindow.get(), NATIVE_WINDOW_MIN_UNDEQUEUED_BUFFERS,
            &minUndequeuedBuffers);
    if (err)
    {
        ALOGE("query mini undequeued buffer failed");
        return HI_FAILURE;
    }

    if (mUsage & GRALLOC_USAGE_HISI_VDP) {
        minUndequeuedBuffers += 3;
    }

    *pstMinBufNb = (HI_U32)minUndequeuedBuffers;
    ALOGD("undequeue cnt:%d, usage:%#x", minUndequeuedBuffers, mUsage);
    return OK;
}

int HiVSink::dispatchCheckFence(va_list args)
{
    HI_SVR_PICTURE_S* pic = NULL;
    int fenceFd = -1;
    int ret;
    nsecs_t t;
    pic = va_arg(args, HI_SVR_PICTURE_S*);
    fenceFd = mFenceMap.valueFor(pic->hBuffer);
    if (fenceFd != -1) {
        sp<Fence> fence = new Fence(fenceFd);
        ret = fence->waitForever("dispatchCheckFence");
        if (ret != 0) {
            ALOGE("wait buffer:%#x's fence %d failed", pic->hBuffer, fenceFd);
            mFenceMap.replaceValueFor(pic->hBuffer, -1);
            return HI_FAILURE;
        }
        t = ns2ms(fence->getSignalTime());

        if (t > 0 && t < INT64_MAX) {
            pic->s64Pts = t;
        }

        mFenceMap.replaceValueFor(pic->hBuffer, -1);
    }

    ALOGV("check buffer %#x fence %d", pic->hBuffer, fenceFd);
    return OK;
}

int HiVSink::control(HI_U32 cmd, va_list args)
{
    switch (cmd) {
    case HI_SVR_VSINK_SET_DIMENSIONS:
        return dispatchSetDimations(args);
        break;
    case HI_SVR_VSINK_SET_FORMAT:
        return dispatchSetFormat(args);
        break;
    case HI_SVR_VSINK_SET_PICNB:
        return dispatchSetPicCnt(args);
        break;
    case HI_SVR_VSINK_WRITE_PIC:
        return dispatchWritePic(args);
        break;
    case HI_SVR_VSINK_SET_CROP:
        return dispatchSetCrop(args);
        break;
    case HI_SVR_VSINK_GET_MINBUFNB:
        return dispatchGetMinBufNb(args);
        break;
    case HI_SVR_VSINK_CHECK_FENCE:
        return dispatchCheckFence(args);
    default:
        return UNKNOWN_ERROR;
        break;
    }
    return OK;
}

void HiVSink::dumpYUVFrame(ANativeWindowBuffer* buf)
{
    GraphicBufferMapper &mapper = GraphicBufferMapper::get();

    HI_U32 size;
    void *src;
    Rect bounds(mWidth, mHeight);
    if (mFormat != HAL_PIXEL_FORMAT_YCrCb_420_SP)
    {
        ALOGE("Unsupported format:%d!", mFormat);
        return;
    }

    size = mWidth * mHeight * 3 / 2;

    if (mapper.lock(
                buf->handle, GRALLOC_USAGE_SW_WRITE_OFTEN, bounds, &src))
    {
        ALOGE("Lock graphic buffer failed");
        return;
    }

    static FILE* fp = NULL;
    if (!fp)
    {
        fp = fopen("/sdcard/VSinkDumped.yuv", "wb+");
    }
    if (fp)
    {
        if (fwrite(src, size, 1, fp) != size)
        {
            ALOGE("dump file error");
        }
        ALOGD("dump file success!");
    }

    if (mapper.unlock(buf->handle))
    {
        ALOGE("unlock buffer failed");
    }
}

void HiVSink::writeYUVFrame(ANativeWindowBuffer* buf, HI_U8* src, HI_U32 size)
{
    GraphicBufferMapper &mapper = GraphicBufferMapper::get();
    void *dst;
    Rect bounds(mWidth, mHeight);
    if (mFormat != HAL_PIXEL_FORMAT_YCrCb_420_SP)
    {
        ALOGE("Unsupported format:%d!", mFormat);
        return;
    }

    if (mapper.lock(
                buf->handle, GRALLOC_USAGE_SW_WRITE_OFTEN, bounds, &dst))
    {
        ALOGE("Lock graphic buffer failed");
        return;
    }
#if 0
    HI_U8* y_addr = (HI_U8*)dst;
    HI_U8* uv_addr = (HI_U8*)dst + mHeight * mWidth;
    int corp_width = mCrop.right - mCrop.left;
    int i;
    memset(dst, 0, size);
    /* fill Y */
    for (i = mCrop.top; i < mCrop.bottom; i++)
    {
        memcpy(y_addr + i * mWidth, src, corp_width);
        src += corp_width;
    }
    /* fill UV */
    for (i = mCrop.top; i < mCrop.bottom / 2; i++) //TODO bottom not correct
    {
        memcpy(uv_addr + i * mWidth, src, corp_width);
        src += corp_width;
    }
#else
    memcpy(dst, src, size);
#endif

    if (mapper.unlock(buf->handle))
    {
        ALOGE("unlock buffer failed");
    }
}
}; //namespace android
