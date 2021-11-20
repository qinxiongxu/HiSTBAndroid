/*
 **************************************************************************************
 *       Filename:  CameraModule.cpp
 *    Description:  Camera Module source file
 *
 *        Version:  1.0
 *        Created:  2012-05-16 10:21:23
 *         Author:
 *
 *       Revision:  initial draft;
 **************************************************************************************
 */

//#define LOG_NDEBUG 0
#define LOG_TAG "CameraModule"
#include <utils/Log.h>

#include <hardware/camera.h>

#include "CameraHal.h"

#define MAX_CAMERA_SENSORS      2

#define TO_CAMERA_HAL_INTERFACE(device) \
            (android::CameraHal*)(((camera_device_t*)(device))->priv)

/*
 **************************************************************************
 * FunctionName: set_preview_window;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int set_preview_window(struct camera_device * dev, struct preview_stream_ops*  window)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->setPreviewWindow(window);
}

/*
 **************************************************************************
 * FunctionName: set_callbacks;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void set_callbacks(struct camera_device * dev,
              camera_notify_callback notify_cb,
              camera_data_callback data_cb,
              camera_data_timestamp_callback data_cb_timestamp,
              camera_request_memory get_memory,
              void *user)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    hal->setCallbacks(notify_cb, data_cb, data_cb_timestamp,get_memory,user);
}

/*
 **************************************************************************
 * FunctionName: disable_msg_type;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void disable_msg_type(struct camera_device * dev, int32_t msg_type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    hal->disableMsgType(msg_type);
}

/*
 **************************************************************************
 * FunctionName: enable_msg_type;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void enable_msg_type(struct camera_device * dev, int32_t msg_type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    hal->enableMsgType(msg_type);
}

/*
 **************************************************************************
 * FunctionName: msg_type_enabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int msg_type_enabled(struct camera_device * dev, int32_t msg_type)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->msgTypeEnabled(msg_type);
}

/*
 **************************************************************************
 * FunctionName: start_preview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int start_preview(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->startPreview();
}

/*
 **************************************************************************
 * FunctionName: stop_preview;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void stop_preview(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    hal->stopPreview();
}

/*
 **************************************************************************
 * FunctionName: preview_enabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int preview_enabled(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->previewEnabled();
}

/*
 **************************************************************************
 * FunctionName: store_meta_data_in_buffers;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int store_meta_data_in_buffers(struct camera_device * dev, int enable)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->storeMetaDataInBuffers(enable);
}

/*
 **************************************************************************
 * FunctionName: start_recording;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int start_recording(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->startRecording();
}

/*
 **************************************************************************
 * FunctionName: stop_recording;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void stop_recording(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->stopRecording();
}

/*
 **************************************************************************
 * FunctionName: recording_enabled;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int recording_enabled(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->recordingEnabled();
}

/*
 **************************************************************************
 * FunctionName: release_recording_frame;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void release_recording_frame(struct camera_device * dev, const void *opaque)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->releaseRecordingFrame(opaque);
}

/*
 **************************************************************************
 * FunctionName: auto_focus;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int auto_focus(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->autoFocus();
}

/*
 **************************************************************************
 * FunctionName: cancel_auto_focus;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int cancel_auto_focus(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->cancelAutoFocus();
}

/*
 **************************************************************************
 * FunctionName: take_picture;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int take_picture(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->takePicture();
}

/*
 **************************************************************************
 * FunctionName: cancel_picture;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int cancel_picture(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->cancelPicture();
}

/*
 **************************************************************************
 * FunctionName: set_parameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int set_parameters(struct camera_device * dev, const char *parms)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraParameters par;
    android::String8 str_parms(parms);
    par.unflatten(str_parms);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->setParameters(par);
}

/*
 **************************************************************************
 * FunctionName: get_parameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static char* get_parameters(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    android::CameraParameters par;
    android::String8 str_params;
    char* param = NULL;

    par = hal->getParameters();
    str_params = par.flatten();
    if(str_params.length() != 0)
    {
        param = (char*)malloc(str_params.length() + 1);
    }
    sprintf(param, "%s", str_params.string());
    return param;

}

/*
 **************************************************************************
 * FunctionName: put_parameters;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void put_parameters(struct camera_device * dev, char * param)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if (NULL != param)
    {
        free(param);
        param = NULL;
    }
}

/*
 **************************************************************************
 * FunctionName: send_command;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int send_command(struct camera_device * dev,int32_t cmd, int32_t arg1, int32_t arg2)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->sendCommand(cmd, arg1, arg2);
}

/*
 **************************************************************************
 * FunctionName: release;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static void release(struct camera_device * dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->release();
}

/*
 **************************************************************************
 * FunctionName: dump;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int dump(struct camera_device * dev, int fd)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    android::CameraHal* hal = TO_CAMERA_HAL_INTERFACE(dev);
    return hal->dump(fd);
}

/*
 **************************************************************************
 * FunctionName: camera_device_close;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int camera_device_close(hw_device_t *dev)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    if(!dev)
    {
        ALOGE("invalid device = %p", dev);
        return -EINVAL;
    }

    camera_device_t* camera = (camera_device_t*)dev;
    android::CameraHal* hardware = (android::CameraHal*)camera->priv;

    if(hardware)
    {
        delete hardware;
        hardware = NULL;
    }

    if(camera->ops)
    {
        free(camera->ops);
        camera->ops = NULL;
    }

    if(camera)
    {
        free(camera);
        camera = NULL;
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: camera_get_number_of_cameras;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int camera_get_number_of_cameras(void)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int CameraNum = 0;
    struct stat nBuf;
    char dev[12];

    for(int i = 0; i < MAX_CAMERA_SENSORS; i++)
    {
        snprintf(dev, sizeof(dev), "/dev/video%d", i);
        if(stat(dev, &nBuf) == 0)
        {
            CameraNum++;
        }
    }
    CAMERA_HAL_LOGI("camera_get_number_of_cameras = %d", CameraNum);

    return CameraNum;
}

/*
 **************************************************************************
 * FunctionName: camera_get_camera_info;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
int camera_get_camera_info(int camera_id, struct camera_info *info)
{
    int CameraNum = camera_get_number_of_cameras();

    if(CameraNum == 1)
    {
        info->facing        = CAMERA_FACING_FRONT;
        info->orientation   = 0;
    }
    else
    {
        if (camera_id == CAMERA_FACING_FRONT)
        {
            info->facing        = CAMERA_FACING_FRONT;
            info->orientation   = 0;
        }
        else
        {
            info->facing        = CAMERA_FACING_BACK;
            info->orientation   = 0;
        }
    }

    return 0;
}

/*
 **************************************************************************
 * FunctionName: camera_device_open;
 * Description : NA;
 * Input       : NA;
 * Output      : NA;
 * ReturnValue : NA;
 * Other       : NA;
 **************************************************************************
 */
static int camera_device_open(const hw_module_t* module, const char* name, hw_device_t** device)
{
    CAMERA_HAL_LOGV("enter %s()", __FUNCTION__);

    int ret         = 0;
    int camera_id   = 0;

    camera_device_t* camera_device              = NULL;
    camera_device_ops_t* camera_ops             = NULL;
    android::CameraHal* camera_hal   = NULL;

    if(!name || !device)
    {
        ALOGE("invalid parameter[name=%p, device=%p]", name, device);
        return -EINVAL;
    }

    camera_id  = atoi(name);
    camera_hal = new android::CameraHal(camera_id);
    if(!camera_hal || !camera_hal->mInitOK)
    {
        ALOGE("fail to allocate memory for CameraHal or fail to init CameraHal");
        ret = -ENOMEM;
        goto EXIT;
        //return -EINVAL;
    }

    camera_device   = new camera_device_t;
    camera_ops      = new camera_device_ops_t;
    if(!camera_device || !camera_ops)
    {
        ALOGE("fail to allocate memory for camera_device_t or camera_device_ops_t");
        ret = -ENOMEM;
        goto EXIT;
    }

    memset(camera_device, 0x00, sizeof(*camera_device));
    memset(camera_ops, 0x00, sizeof(*camera_ops));

    camera_device->common.tag                 = HARDWARE_DEVICE_TAG;
    camera_device->common.version             = 0;
    camera_device->common.module              = const_cast<hw_module_t*>(module);
    camera_device->common.close               = camera_device_close;
    camera_device->ops                        = camera_ops;
    camera_device->priv                       = camera_hal;

    camera_ops->set_preview_window            = set_preview_window;
    camera_ops->set_callbacks                 = set_callbacks;
    camera_ops->auto_focus                    = auto_focus;
    camera_ops->enable_msg_type               = enable_msg_type;
    camera_ops->disable_msg_type              = disable_msg_type;
    camera_ops->msg_type_enabled              = msg_type_enabled;
    camera_ops->start_preview                 = start_preview;
    camera_ops->stop_preview                  = stop_preview;
    camera_ops->preview_enabled               = preview_enabled;
    camera_ops->store_meta_data_in_buffers    = store_meta_data_in_buffers;
    camera_ops->start_recording               = start_recording;
    camera_ops->stop_recording                = stop_recording;
    camera_ops->recording_enabled             = recording_enabled;
    camera_ops->release_recording_frame       = release_recording_frame;
    camera_ops->cancel_auto_focus             = cancel_auto_focus;
    camera_ops->take_picture                  = take_picture;
    camera_ops->cancel_picture                = cancel_picture;
    camera_ops->set_parameters                = set_parameters;
    camera_ops->get_parameters                = get_parameters;
    camera_ops->put_parameters                = put_parameters;
    camera_ops->send_command                  = send_command;
    camera_ops->release                       = release;
    camera_ops->dump                          = dump;

    *device                                   = &camera_device->common;

    return 0;

EXIT:
    if(camera_hal)
    {
        delete camera_hal;
        camera_hal = NULL;
    }

    if(camera_device)
    {
        delete camera_device;
        camera_device = NULL;
    }

    if(camera_ops)
    {
        delete camera_ops;
        camera_ops = NULL;
    }

    return -1;
}

/*  camera hardware module methods */
static struct hw_module_methods_t camera_module_methods =
{
    open : camera_device_open
};

/*  externel interface for camera service */
struct camera_module HAL_MODULE_INFO_SYM =
{
    common:
    {
        tag                 : HARDWARE_MODULE_TAG,
        version_major       : 1,
        version_minor       : 0,
        id                  : CAMERA_HARDWARE_MODULE_ID,
        name                : "Camera module",
        author              : "hisilicon",
        methods             : &camera_module_methods,
        dso                 : NULL,
        reserved            : {0},
    },

    get_number_of_cameras   :camera_get_number_of_cameras,
    get_camera_info         :camera_get_camera_info,
};

/********************************** END **********************************************/
