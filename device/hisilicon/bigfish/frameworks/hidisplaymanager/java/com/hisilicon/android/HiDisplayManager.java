package com.hisilicon.android;

import android.util.Log;
import android.os.ServiceManager;
import android.graphics.Rect;
import com.hisilicon.android.DispFmt;

/**
* HiDisplayManager interface<br>
* CN: HiDisplayManager接口
*/
public class HiDisplayManager  {

    /**
     * Display format and its value.<br>
     * It must be defined same as device/hisilicon/bigfish/frameworks/hidisplaymanager/libs/displaydef.h.
     */
    public final static int ENC_FMT_1080P_60 = 0;         /*1080p60hz*/
    public final static int ENC_FMT_1080P_50 = 1;         /*1080p50hz*/
    public final static int ENC_FMT_1080P_30 = 2;         /*1080p30hz*/
    public final static int ENC_FMT_1080P_25 = 3;         /*1080p25hz*/
    public final static int ENC_FMT_1080P_24 = 4;         /*1080p24hz*/
    public final static int ENC_FMT_1080i_60 = 5;         /*1080i60hz*/
    public final static int ENC_FMT_1080i_50 = 6;         /*1080i50hz*/
    public final static int ENC_FMT_720P_60 = 7;          /*720p60hz*/
    public final static int ENC_FMT_720P_50 = 8;          /*720p50hz*/
    public final static int ENC_FMT_576P_50 = 9;          /*576p50hz*/
    public final static int ENC_FMT_480P_60 = 10;         /*480p60hz*/
    public final static int ENC_FMT_PAL = 11;             /*BDGHIPAL*/
    public final static int ENC_FMT_PAL_N = 12;           /*(N)PAL*/
    public final static int ENC_FMT_PAL_Nc = 13;          /*(Nc)PAL*/
    public final static int ENC_FMT_NTSC = 14;            /*(M)NTSC*/
    public final static int ENC_FMT_NTSC_J = 15;          /*NTSC-J*/
    public final static int ENC_FMT_NTSC_PAL_M = 16;      /*(M)PAL*/
    public final static int ENC_FMT_SECAM_SIN = 17;
    public final static int ENC_FMT_SECAM_COS = 18;

    public final static int ENC_FMT_1080P_24_FRAME_PACKING = 19;
    public final static int ENC_FMT_720P_60_FRAME_PACKING = 20;
    public final static int ENC_FMT_720P_50_FRAME_PACKING = 21;

    public final static int ENC_FMT_861D_640X480_60 = 22;
    public final static int ENC_FMT_VESA_800X600_60 = 23;
    public final static int ENC_FMT_VESA_1024X768_60 =  24;
    public final static int ENC_FMT_VESA_1280X720_60 = 25;
    public final static int ENC_FMT_VESA_1280X800_60 = 26;
    public final static int ENC_FMT_VESA_1280X1024_60 = 27;
    public final static int ENC_FMT_VESA_1360X768_60 = 28;
    public final static int ENC_FMT_VESA_1366X768_60 = 29;
    public final static int ENC_FMT_VESA_1400X1050_60 =   30;
    public final static int ENC_FMT_VESA_1440X900_60 =    31;
    public final static int ENC_FMT_VESA_1440X900_60_RB = 32;
    public final static int ENC_FMT_VESA_1600X900_60_RB =  33;
    public final static int ENC_FMT_VESA_1600X1200_60 =   34;
    public final static int ENC_FMT_VESA_1680X1050_60 =   35;
    public final static int ENC_FMT_VESA_1680X1050_60_RB =  36;
    public final static int ENC_FMT_VESA_1920X1080_60 =   37;
    public final static int ENC_FMT_VESA_1920X1200_60 =   38;
    public final static int ENC_FMT_VESA_1920X1440_60 =   39;
    public final static int ENC_FMT_VESA_2048X1152_60 =   40;
    public final static int ENC_FMT_VESA_2560X1440_60_RB =   41;
    public final static int ENC_FMT_VESA_2560X1600_60_RB =   42;

    public final static int ENC_FMT_3840X2160_24             = 0x100;
    public final static int ENC_FMT_3840X2160_25             = 0x101;
    public final static int ENC_FMT_3840X2160_30             = 0x102;
    public final static int ENC_FMT_3840X2160_50             = 0x103;
    public final static int ENC_FMT_3840X2160_60             = 0x104;

    public final static int ENC_FMT_4096X2160_24             = 0x105;
    public final static int ENC_FMT_4096X2160_25             = 0x106;
    public final static int ENC_FMT_4096X2160_30             = 0x107;
    public final static int ENC_FMT_4096X2160_50             = 0x108;
    public final static int ENC_FMT_4096X2160_60             = 0x109;

    public final static int ENC_FMT_3840X2160_23_976         = 0x10a;
    public final static int ENC_FMT_3840X2160_29_97          = 0x10b;
    public final static int ENC_FMT_720P_59_94               = 0x10c;
    public final static int ENC_FMT_1080P_59_94              = 0x10d;
    public final static int ENC_FMT_1080P_29_97              = 0x10e;
    public final static int ENC_FMT_1080P_23_976             = 0x10f;
    public final static int ENC_FMT_1080i_59_94              = 0x110;

    /** 3D mode. Type: 2D mode */
    public final static int HI_DISP_MODE_NORMAL = 0;
    /** 3D mode. Type: frame packing */
    public final static int HI_DISP_MODE_FRAME_PACKING = 1;
    /** 3D mode. Type: side by side half */
    public final static int HI_DISP_MODE_SIDE_BY_SIDE = 2;
    /** 3D mode. Type: top and bottom */
    public final static int HI_DISP_MODE_TOP_BOTTOM = 3;

    private IHiDisplayManager m_Display;
    private static String TAG = "DisplayManagerClient";

    public HiDisplayManager()
    {
        m_Display = IHiDisplayManager.Stub.asInterface(ServiceManager.getService("HiDisplay"));
    }

    /**
     * Set image brightness.
     * <p>
     * Set the image brightness value.<br>
     * <br>
     * @param brightness image brightness value. The range is 0~100, and 0 means the min brightness value.
     * @return 0 if the brightness is set successfully, -1 otherwise.
     */
    public int setBrightness(int brightness)
    {
        try
        {
            return m_Display.setBrightness(brightness);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get image brightness.
     * <p>
     * Get the current image brightness value.<br>
     * <br>
     * @return the current image brightness if getting successfully, -1 otherwise.
     */
    public int getBrightness()
    {
        try
        {
            return m_Display.getBrightness();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set image saturation.
     * <p>
     * Set the image saturation value.<br>
     * <br>
     * @param saturation image saturation value. The range is 0~100, and 0 means the min saturation value.
     * @return 0 if the saturation is set successfully, -1 otherwise.
     */
    public int setSaturation(int saturation)
    {
        try
        {
            return m_Display.setSaturation(saturation);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get image saturation.
     * <p>
     * Get the current image saturation value.<br>
     * <br>
     * @return the current image saturation if getting successfully, -1 otherwise.
     */
    public int getSaturation()
    {
        try
        {
            return m_Display.getSaturation();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set image contrast.
     * <p>
     * Set the image contrast value.<br>
     * <br>
     * @param contrast image contrast value. The range is 0~100, and 0 means the min contrast value.
     * @return 0 if the contrast is set successfully, -1 otherwise.
     */
    public int setContrast(int contrast)
    {
        try
        {
            return m_Display.setContrast(contrast);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get image contrast.
     * <p>
     * Get the current image contrast value.<br>
     * <br>
     * @return the current image contrast if getting successfully, -1 otherwise.
     */
    public int getContrast()
    {
        try
        {
            return m_Display.getContrast();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set image hue.
     * <p>
     * Set the image hue value.<br>
     * <br>
     * @param hue image hue value. The range is 0~100, and 0 means the min hue value.
     * @return 0 if the hue is set successfully, -1 otherwise.
     */
    public int setHue(int hue)
    {
        try
        {
            return m_Display.setHue(hue);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get image hue.
     * <p>
     * Get the current image hue value.<br>
     * <br>
     * @return the current image hue if getting successfully, -1 otherwise.
     */
    public int getHue()
    {
        try
        {
            return m_Display.getHue();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set display format.
     * <p>
     * Set the display format value.<br>
     * <br>
     * @param fmt display format.
     * @return 0 if the format is set successfully, -1 otherwise.
     */
    public int setFmt(int fmt)
    {
        try
        {
            return m_Display.setFmt(fmt);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get display format.
     * <p>
     * Get the current display format value.<br>
     * <br>
     * @return the current display format if getting successfully, -1 otherwise.
     */
    public int getFmt()
    {
        try
        {
            return (int)m_Display.getFmt();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set screen display area size.
     * <p>
     * Set the size of screen display area.<br>
     * The size is described by offsets of display area in real screen.
     * <br>
     * @param left left offset in pixel. The range is [0, 200].
     * @param top top offset in pixel. The range is [0, 200].
     * @param right right offset in pixel. The range is [0, 200].
     * @param bottom bottom offset in pixel. The range is [0, 200].
     * @return 0 if the size is set successfully, -1 otherwise.
     */
    public int setOutRange(int left, int top, int right, int bottom)
    {
        try
        {
            return m_Display.setOutRange(left, top, right, bottom);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get screen display area size.
     * <p>
     * Get the size of screen display area.<br>
     * The size is described by offsets of display area in real screen.
     * <br>
     * @return a Rect object if getting successfully, null otherwise.
     */
    public Rect getOutRange()
    {
        try
        {
            return m_Display.getOutRange();
        }
        catch(Exception ex)
        {
            return null;
        }
    }

    /**
     * Set Macrovision mode.
     * <p>
     * Set Macrovision output type.<br>
     * <br>
     * @param mode Macrovision mode.
     * @return 0 if the mode is set successfully, -1 otherwise.
     */
    public int setMacroVision(int mode)
    {
        try
        {
            return m_Display.setMacroVision(mode);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get Macrovision mode.
     * <p>
     * Get the current Macrovision output type.<br>
     * <br>
     * @return the current Macrovision mode if getting successfully, -1 otherwise.
     */
    public int getMacroVision()
    {
        try
        {
            return m_Display.getMacroVision();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set HDCP mode.
     * <p>
     * Set status of HDCP mode.<br>
     * <br>
     * @param enabled enabled status of HDCP mode.
     * @return 0 if the mode is set successfully, -1 otherwise.
     */
    public int setHdcp(boolean enabled)
    {
        try
        {
            return m_Display.setHdcp(enabled);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get HDCP mode.
     * <p>
     * Get the current enabled status of HDCP mode.<br>
     * <br>
     * @return the current enabled status if getting successfully, -1 otherwise.
     */
    public int getHdcp()
    {
        try
        {
            return m_Display.getHdcp();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set 3D output mode.
     * <p>
     * Set 3D display mode and format.<br>
     * The format will be decided by video fps.
     * <br>
     * @param mode 3D mode.
     * @param videoFps video fps.
     * @return 0 if the size is set successfully, -1 otherwise.
     */
    public int SetStereoOutMode(int mode, int videoFps)
    {
        try
        {
            if (mode < HI_DISP_MODE_NORMAL || mode > HI_DISP_MODE_TOP_BOTTOM)
            {
                Log.e(TAG, "stereo mode must be 0, 1, 2 or 3. Please check it.");
                return -1;
            }
            return m_Display.setStereoOutMode(mode, videoFps);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get 3D output mode.
     * <p>
     * Get 3D display mode.<br>
     * <br>
     * @return the current 3D mode if getting successfully, -1 otherwise.
     */
    public int GetStereoOutMode()
    {
        try
        {
            return m_Display.getStereoOutMode();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set right eye priority.
     * <p>
     * Set right eye first for 3D output.<br>
     * <br>
     * @param priority priority of right eye. The range is [0, 1].
     * @return 0 if the priority is set successfully, -1 otherwise.
     */
    public int SetRightEyeFirst(int priority)
    {
        try
        {
            return m_Display.setRightEyeFirst(priority);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get right eye priority.
     * <p>
     * Get the current right eye priority for 3D output.<br>
     * <br>
     * @return the current priority if getting successfully, -1 otherwise.
     */
    public int GetRightEyeFirst()
    {
        try
        {
            return m_Display.getRightEyeFirst();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get HDMI sink capability.
     * <p>
     * Get the capability of HDMI sink.<br>
     * The capability is described by class DispFmt.
     * <br>
     * @return a DispFmt object if getting successfully, null otherwise.
     */
    public DispFmt GetDisplayCapability()
    {
        try
        {
            return m_Display.getDisplayCapability();
        }
        catch(Exception ex)
        {
            return null;
        }
    }
    /**
     * Get TV Manufacture Information.
     * <p>
     * Get TV Manufacture Information.<br>
     * The Information can be obtained includes TV manufacture name,TV sink name,
     * Product code,Serial numeber of Manufacture,the week of manufacture,the year of manufacture.
     * <br>
     * @return a ManufactureInfo object if getting successfully, null otherwise.
     */
    public ManufactureInfo GetManufactureInfo()
    {
        try
        {
            return m_Display.getManufactureInfo();
        }
        catch(Exception ex)
        {
            return null;
        }
    }
    /**
     * Set video aspect ratio.
     * <p>
     * Set video aspect ratio.<br>
     * Set aspect ratio attribute of display device.
     * <br>
     * @param ratio aspect ratio. 0 auto, 1 4:3, 2 16:9.
     * @return 0 if the ratio is set successfully, -1 otherwise.
     */
    public int setAspectRatio(int ratio)
    {
        try
        {
            return m_Display.setAspectRatio(ratio);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get video aspect ratio.
     * <p>
     * Get the current video aspect ratio.<br>
     * <br>
     * @return the current aspect ratio if getting successfully(0 auto, 1 4:3, 2 16:9), -1 otherwise.
     */
    public int getAspectRatio()
    {
        try
        {
            return m_Display.getAspectRatio();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set maintain aspect ratio.
     * <p>
     * Set maintain aspect ratio.<br>
     * <br>
     * @param cvrs aspect ratio. 0 extrude, 1 add black.
     * @return 0 if the ratio is set successfully, -1 otherwise.
     */
    public int setAspectCvrs(int cvrs)
    {
        try
        {
            return m_Display.setAspectCvrs(cvrs);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get maintain aspect ratio.
     * <p>
     * Get the current maintain aspect ratio.<br>
     * <br>
     * @return the current cvrs if getting successfully(0 extrude, 1 add black), -1 otherwise.
     */
    public int getAspectCvrs()
    {
        try
        {
            return m_Display.getAspectCvrs();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set optimal display format.
     * <p>
     * Set the enabled status of optimal display format.<br>
     * <br>
     * @param enabled enabled status of optimal display format. 0 disabled, 1 enabled.
     * @return 0 if the status is set successfully, -1 otherwise.
     */
    public int setOptimalFormatEnable(int enabled)
    {
        try
        {
            return m_Display.setOptimalFormatEnable(enabled);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get optimal display format.
     * <p>
     * Whether optimal display format is enabled or not.<br>
     * <br>
     * @return the current status if getting successfully(0 disabled, 1 enabled), -1 otherwise.
     */
    public int getOptimalFormatEnable()
    {
        try
        {
            return m_Display.getOptimalFormatEnable();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get display device type.
     * <p>
     * Get the current display device type.<br>
     * <br>
     * @return the current device type if getting successfully(0 hdmi is not connected, 1 tv, 2 pc), -1 otherwise.
     */
    public int getDisplayDeviceType()
    {
        try
        {
            return m_Display.getDisplayDeviceType();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Save parameter.
     * <p>
     * Save display parameters.<br>
     * <br>
     * @return 0 if parameters is saved successfully, -1 otherwise
     */
    public int SaveParam()
    {
        try
        {
            return m_Display.saveParam();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Attach interface.
     * <p>
     * Attach the interface by setting display interface parameter.<br>
     * <br>
     * @return 0 if attaching successfully, -1 otherwise.
     */
    public int attachIntf()
    {
        try
        {
            return m_Display.attachIntf();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Detach interface.
     * <p>
     * Detach the interface by canceling display interface parameter.<br>
     * <br>
     * @return 0 if detaching successfully, -1 otherwise.
     */
    public int detachIntf()
    {
        try
        {
            return m_Display.detachIntf();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set virtual screen.
     * <p>
     * Set the resolution of virtual screen.<br>
     * <br>
     * @param outFmt resolution of virtual screen. 0: width 1280, height 720; 1: width 1920, height 1080.
     * @return 0 if the resolution is set successfully, -1 otherwise.
     */
    public int setVirtScreen(int outFmt)
    {
        try
        {
            return m_Display.setVirtScreen(outFmt);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get virtual screen.
     * <p>
     * Get the current resolution of virtual screen.<br>
     * <br>
     * @return the current resolution if getting successfully(0 720p, 1 1080p), -1 otherwise.
     */
    public int getVirtScreen()
    {
        try
        {
            return m_Display.getVirtScreen();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get virtual screen size.
     * <p>
     * Get the current virtual screen size of virtual screen.<br>
     * <br>
     * @return the current virtual screen rect if getting successfully.
     */
    public Rect getVirtScreenSize()
    {
        try
        {
            Rect rect = new Rect(0, 0, 0, 0);
            rect = m_Display.getVirtScreenSize();
            return rect;
        }
        catch(Exception ex)
        {
            return null;
        }
    }

    /**
     * Reset parameter.
     * <p>
     * Reset display parameters to default values.<br>
     * <br>
     * @return 0 if parameters is reset successfully, -1 otherwise
     */
    public int reset()
    {
        try
        {
            return m_Display.reset();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set hdmi suspend time.
     * <p>
     * Set the delay time of hdmi suspend.<br>
     * <br>
     * @param time delay time in millisecond.
     * @return 0 if the time is set successfully, -1 otherwise.
     */
    public int setHDMISuspendTime(int time)
    {
        try
        {
            return m_Display.setHDMISuspendTime(time);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get hdmi suspend time.
     * <p>
     * Get the current delay time of hdmi suspend.<br>
     * <br>
     * @return the current time if getting successfully, -1 otherwise.
     */
    public int getHDMISuspendTime()
    {
        try
        {
            return m_Display.getHDMISuspendTime();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set hdmi suspend enable.
     * <p>
     * Set the enabled status of hdmi suspend.<br>
     * <br>
     * @param enabled enabled status of hdmi suspend. 0 disabled, 1 enabled.
     * @return 0 if the status is set successfully, -1 otherwise.
     */
    public int setHDMISuspendEnable(int enabled)
    {
        try
        {
            return m_Display.setHDMISuspendEnable(enabled);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get hdmi suspend enable.
     * <p>
     * Whether hdmi suspend is enabled or not.<br>
     * <br>
     * @return the current status if getting successfully(0 disabled, 1 enabled), -1 otherwise.
     */
    public int getHDMISuspendEnable()
    {
        try
        {
            return m_Display.getHDMISuspendEnable();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Reload parameter.
     * <p>
     * Reload display parameters from baseparam.img.<br>
     * <br>
     * @return 0 if parameters is reloaded successfully, -1 otherwise
     */
    public int reload()
    {
        try
        {
            return m_Display.reload();
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Set output port enable.
     * <p>
     * Set output port status -- enable output port or not.<br>
     * <br>
     * @param port output port. 0 -> HDMI, 1 -> CVBS.
     * @param enable enable status. 0 -> disabled (close this port), 1 -> enabled (open this port).
     * @return 0 if the status is set successfully, -1 otherwise
     */
    public int setOutputEnable(int port, int enable)
    {
        try
        {
            return m_Display.setOutputEnable(port, enable);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }

    /**
     * Get output port enable.
     * <p>
     * Get enable status of output port.<br>
     * <br>
     * @param port output port. 0 -> HDMI, 1 -> CVBS.
     * @return 0 disabled, -1 enabled
     */
    public int getOutputEnable(int port)
    {
        try
        {
            return m_Display.getOutputEnable(port);
        }
        catch(Exception ex)
        {
            return -1;
        }
    }
}
