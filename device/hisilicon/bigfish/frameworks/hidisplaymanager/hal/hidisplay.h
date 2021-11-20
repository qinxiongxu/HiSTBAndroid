#ifndef _HI_DISPLAY_H_
#define _HI_DISPLAY_H_

#include <hardware/hardware.h>
#include <sys/types.h>

__BEGIN_DECLS

#define DISPLAY_HARDWARE_MODULE_ID "hidisplay"
#define DISPLAY_HARDWARE_DISPLAY0  "video15"

static int framebuffer_width = 1280;
static int framebuffer_height = 720;


/** Macrovision mode enum*/
typedef enum display_macrovision_mode_e
{
    DISPLAY_MACROVISION_MODE_TYPE0,  /**< Mode 0 */
    DISPLAY_MACROVISION_MODE_TYPE1,  /**< Mode 1 */
    DISPLAY_MACROVISION_MODE_TYPE2,  /**< Mode 2 */
    DISPLAY_MACROVISION_MODE_TYPE3,  /**< Mode 3 */
    DISPLAY_MACROVISION_MODE_CUSTOM, /**< User Mode */
    DISPLAY_MACROVISION_MODE_BUTT
} display_macrovision_mode_e;

/*Display channel enum */
typedef enum display_channel_e
{
    DISPLAY_CHANNEL_SD0 = 0,
    DISPLAY_CHANNEL_HD0,
}display_channel_e;

/*Display format enum*/
typedef enum display_format_e
{
    DISPLAY_FMT_1080P_60 = 0,     /**<1080p60HZ */
    DISPLAY_FMT_1080P_50,         /**<1080p50HZ */
    DISPLAY_FMT_1080P_30,         /**<1080p30HZ */
    DISPLAY_FMT_1080P_25,         /**<1080p25HZ */
    DISPLAY_FMT_1080P_24,         /**<1080p24HZ */

    DISPLAY_FMT_1080i_60,         /**<1080i60HZ */
    DISPLAY_FMT_1080i_50,         /**<1080i50HZ */

    DISPLAY_FMT_720P_60,          /**<720p60HZ */
    DISPLAY_FMT_720P_50,          /**<720p50HZ */

    DISPLAY_FMT_576P_50,          /**<576p50HZ */
    DISPLAY_FMT_480P_60,          /**<480p60HZ */

    DISPLAY_FMT_PAL,              /* B D G H I PAL */
    DISPLAY_FMT_PAL_N,            /* (N)PAL        */
    DISPLAY_FMT_PAL_Nc,           /* (Nc)PAL       */

    DISPLAY_FMT_NTSC,             /* (M)NTSC       */
    DISPLAY_FMT_NTSC_J,           /* NTSC-J        */
    DISPLAY_FMT_NTSC_PAL_M,       /* (M)PAL        */

    DISPLAY_FMT_SECAM_SIN,        /**< SECAM_SIN*/
    DISPLAY_FMT_SECAM_COS,        /**< SECAM_COS*/


    DISPLAY_FMT_1080P_24_FRAME_PACKING,
    DISPLAY_FMT_720P_60_FRAME_PACKING,//20
    DISPLAY_FMT_720P_50_FRAME_PACKING,

    DISPLAY_FMT_861D_640X480_60,
    DISPLAY_FMT_VESA_800X600_60,
    DISPLAY_FMT_VESA_1024X768_60,
    DISPLAY_FMT_VESA_1280X720_60,//25
    DISPLAY_FMT_VESA_1280X800_60,
    DISPLAY_FMT_VESA_1280X1024_60,
    DISPLAY_FMT_VESA_1360X768_60,
    DISPLAY_FMT_VESA_1366X768_60,
    DISPLAY_FMT_VESA_1400X1050_60,//30
    DISPLAY_FMT_VESA_1440X900_60,
    DISPLAY_FMT_VESA_1440X900_60_RB,
    DISPLAY_FMT_VESA_1600X900_60_RB,
    DISPLAY_FMT_VESA_1600X1200_60,
    DISPLAY_FMT_VESA_1680X1050_60,//35
    DISPLAY_FMT_VESA_1680X1050_60_RB,
    DISPLAY_FMT_VESA_1920X1080_60,
    DISPLAY_FMT_VESA_1920X1200_60,
    DISPLAY_FMT_VESA_1920X1440_60,
    DISPLAY_FMT_VESA_2048X1152_60,//40
    DISPLAY_FMT_VESA_2560X1440_60_RB,
    DISPLAY_FMT_VESA_2560X1600_60_RB,

    DISPLAY_FMT_3840X2160_24 = 0x100,
    DISPLAY_FMT_3840X2160_25,
    DISPLAY_FMT_3840X2160_30,
    DISPLAY_FMT_3840X2160_50,
    DISPLAY_FMT_3840X2160_60,

    DISPLAY_FMT_4096X2160_24,
    DISPLAY_FMT_4096X2160_25,
    DISPLAY_FMT_4096X2160_30,
    DISPLAY_FMT_4096X2160_50,
    DISPLAY_FMT_4096X2160_60,

    DISPLAY_FMT_3840X2160_23_976,
    DISPLAY_FMT_3840X2160_29_97,
    DISPLAY_FMT_720P_59_94,
    DISPLAY_FMT_1080P_59_94,
    DISPLAY_FMT_1080P_29_97,
    DISPLAY_FMT_1080P_23_976,
    DISPLAY_FMT_1080i_59_94,

    DISPLAY_FMT_BUTT
}display_format_e;

/* display module struct */
typedef struct display_module_t
{
    struct hw_module_t common;
}display_module_t;

/* display HAL struct */
typedef struct display_device_t
{
    struct hw_device_t common;
    int(*open_display_channel)();
    int(*close_display_channel)();
    int(*get_brightness)(int *brightness);
    int(*set_brightness)(int brightness);
    int(*get_contrast)(int *contrast);
    int(*set_contrast)(int contrast);
    int(*get_saturation)(int *saturation);
    int(*set_saturation)(int saturation);
    int(*get_hue)(int *hue);
    int(*set_hue)(int hue);
    int(*get_format)(display_format_e *format);
    int(*set_format)(display_format_e format);
    int(*set_graphic_out_range)(int x, int y, int w, int h);
    int(*get_graphic_out_range)(int *x, int *y, int *w, int *h);
    int(*get_hdmi_capability)(int *hdmi_sink_cap);
    int(*get_manufacture_info)(char * frsname, char * sinkname, int *productcode, int *serianumber, int *week, int *year,int *TVHight, int *TVWidth);
    int(*get_macro_vision)(display_macrovision_mode_e *macrovision_mode);
    int(*set_macro_vision)(display_macrovision_mode_e macrovision_mode);
    int(*set_hdcp)(int );
    int(*get_hdcp)();
    int(*set_aspect_ratio)(int ratio);
    int(*get_aspect_ratio)();
    int(*set_aspect_cvrs)(int cvrs);
    int(*get_aspect_cvrs)();
    int(*set_optimal_format_enable)(int able);
    int(*get_optimal_format_enable)();
    int(*get_display_device_type)();
    /*
    * Description:  Setting mode to display.
    * Input:mode :  0 for normal mode(not 3D) | 1 for 3D mode(FramePacking)
    * return value: 0 for success | -1 for fail
    */
    int(*set_stereo_outmode)(int mode, int videofps);
    /*
    * Description:  Getting mode from the display.
    * Input:mode :  none.
    * return value: 0 as normal mode (not 3D)| 1 as 3D mode (FramePacking)
    */
    int(*get_stereo_outmode)();
    /*
    * Description:  Setting priority of eye selecting.
    * Input:mode :  none.
    * return value: 0 for left eye prior| 1 for right eye prior
    */
    int (*set_righteye_first)(int Outprority);
    /*
    * Description:  Setting priority of eye selecting.
    * Input:mode :  none.
    * return value: 0 as left eye prior | 1 as right eye prior
    */
    int (*get_righteye_first)();
    int (*restore_stereo_mode)();
    int (*param_save)();
    int (*attach_intf)();
    int (*detach_intf)();
    int (*set_virtual_screen)(int outFmt);
    int (*get_virtual_screen)();
    int (*get_virtual_screen_size)(int *w, int *h);
    int (*reset)();
    int(*set_hdmi_suspend_time)(int iTime);
    int(*get_hdmi_suspend_time)();
    int(*set_hdmi_suspend_enable)(int iEnable);
    int(*get_hdmi_suspend_enable)();
    int (*reload)();
    int (*set_output_enable)(int port, int enable);
    int (*get_output_enable)(int port);

} display_device_t;

/* display context struct */
typedef struct display_context_t
{
    struct display_device_t device;
} display_context_t;

 /* display HAL interface ,fill the device struct,enable it to use set or get value function */

static inline int display_open(const struct hw_module_t* module,
        hw_device_t** device)
{
    return module->methods->open(module,
            DISPLAY_HARDWARE_DISPLAY0, (hw_device_t**)device);
}

 /* release module source when the end  */

static inline int display_close(struct display_device_t* device) {
    return device->common.close(&device->common);
}

static inline int framebuffer_get_max_screen_resolution(int fmt, int* w, int *h )
{
    if(fmt <0)
        return -1;
    struct ScreenSize{
        int  sWidth;
        int  sHeight;
    }fmtData[]= {
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_60 = 0*/
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_50*/
        {1920, 1080},  /*  HI_UNF_ENC_FMT_1080P_30*/
        {1920, 1080},  /*  HI_UNF_ENC_FMT_1080P_25*/
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_24*/

        {1920, 1080},  /* HI_UNF_ENC_FMT_1080i_60*/
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080i_50*/

        {1280, 720},   /* HI_UNF_ENC_FMT_720P_60*/
        {1280, 720},   /* HI_UNF_ENC_FMT_720P_50*/

        {720, 576},    /* HI_UNF_ENC_FMT_576P_50*/
        {720, 480},    /* HI_UNF_ENC_FMT_480P_60*/

        {720, 576},    /* HI_UNF_ENC_FMT_PAL*/
        {720, 576},    /*  HI_UNF_ENC_FMT_PAL_N*/
        {720, 576},    /*  HI_UNF_ENC_FMT_PAL_Nc*/

        {720, 480},    /*  HI_UNF_ENC_FMT_NTSC*/
        {720, 480},    /*  HI_UNF_ENC_FMT_NTSC_J*/
        {720, 480},    /*  HI_UNF_ENC_FMT_NTSC_PAL_M*/

        {720, 576},    /* HI_UNF_ENC_FMT_SECAM_SIN*/
        {720, 576},    /* HI_UNF_ENC_FMT_SECAM_COS*/


        {1920, 1080},  /*HI_UNF_ENC_FMT_1080P_24_FRAME_PACKING*/
        {1280, 720},   /*HI_UNF_ENC_FMT_720P_60_FRAME_PACKING*/
        {1280, 720},   /*HI_UNF_ENC_FMT_720P_50_FRAME_PACKING*/

        {640, 480},    /* HI_UNF_ENC_FMT_861D_640X480_60 */
        {800, 600},    /* HI_UNF_ENC_FMT_VESA_800X600_60 */
        {1024, 768},   /* HI_UNF_ENC_FMT_VESA_1024X768_60 */
        {1280, 720},   /* HI_UNF_ENC_FMT_VESA_1280X720_60 */
        {1280, 800},   /* HI_UNF_ENC_FMT_VESA_1280X800_60 */
        {1280, 1024},  /* HI_UNF_ENC_FMT_VESA_1280X1024_60 */
        {1360, 768},   /* HI_UNF_ENC_FMT_VESA_1360X768_60 */
        {1366, 768},   /* HI_UNF_ENC_FMT_VESA_1366X768_60 */
        {1400, 1050},  /* HI_UNF_ENC_FMT_VESA_1400X1050_60 */
        {1440, 900},   /* HI_UNF_ENC_FMT_VESA_1440X900_60 */
        {1440, 900},   /* HI_UNF_ENC_FMT_VESA_1440X900_60_RB */
        {1600, 900},   /* HI_UNF_ENC_FMT_VESA_1600X900_60_RB */
        {1600, 1200},  /* HI_UNF_ENC_FMT_VESA_1600X1200_60 */
        {1680, 1050},  /* HI_UNF_ENC_FMT_VESA_1680X1050_60 */
        {1680, 1050},  /* HI_UNF_ENC_FMT_VESA_1680X1050_60_RB */
        {1920, 1080},  /* HI_UNF_ENC_FMT_VESA_1920X1080_60 */
        {1920, 1200},  /* HI_UNF_ENC_FMT_VESA_1920X1200_60 */
        {1920, 1440},  /* HI_UNF_ENC_FMT_VESA_1920X1440_60 */
        {2048, 1152},  /* HI_UNF_ENC_FMT_VESA_2048X1152_60 */
        {2560, 1440},  /* HI_UNF_ENC_FMT_VESA_2560X1440_60_RB */
        {2560, 1600},  /* HI_UNF_ENC_FMT_VESA_2560X1600_60_RB */

        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_24 = 0x100 */
        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_25 */
        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_30 */
        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_50 */
        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_60 */

        {4096, 2160},  /* HI_UNF_ENC_FMT_4096X2160_24 */
        {4096, 2160},  /* HI_UNF_ENC_FMT_4096X2160_25 */
        {4096, 2160},  /* HI_UNF_ENC_FMT_4096X2160_30 */
        {4096, 2160},  /* HI_UNF_ENC_FMT_4096X2160_50 */
        {4096, 2160},  /* HI_UNF_ENC_FMT_4096X2160_60 */

        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_23_976 */
        {3840, 2160},  /* HI_UNF_ENC_FMT_3840X2160_29_97 */
        {1280, 720},   /* HI_UNF_ENC_FMT_720P_59_94 */
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_59_94 */
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_29_97 */
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080P_23_976 */
        {1920, 1080},  /* HI_UNF_ENC_FMT_1080i_59_94 */
    };

    if ((fmt >= (int)DISPLAY_FMT_3840X2160_24)
            && (fmt <= (int)DISPLAY_FMT_4096X2160_60)) {
        fmt = fmt - (int)DISPLAY_FMT_3840X2160_24;
        fmt = fmt + (int)DISPLAY_FMT_VESA_2560X1600_60_RB + 1;
    } else if ((fmt >= (int)DISPLAY_FMT_3840X2160_23_976)
            && (fmt <= (int)DISPLAY_FMT_1080i_59_94)) {
        int cnt = (int)DISPLAY_FMT_4096X2160_60 - (int)DISPLAY_FMT_3840X2160_24 + 1;
        fmt = fmt - (int)DISPLAY_FMT_3840X2160_23_976;
        fmt = fmt + (int)DISPLAY_FMT_VESA_2560X1600_60_RB + cnt + 1;
    }

    *w  = fmtData[fmt].sWidth ;
    *h  = fmtData[fmt].sHeight ;
    if(*w <0 || *h <0)
    {
        return -1;
    }
    return 0;
}
static inline int framebuffer_get_displaybuf_size(int* w, int* h)
{
    *w =  framebuffer_width;
    *h =  framebuffer_height;
    return 0;
}
__END_DECLS
#endif
