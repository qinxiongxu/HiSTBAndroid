#include <utils/Log.h>
#include <binder/IBinder.h>
#include <binder/IInterface.h>
#include <binder/IPCThreadState.h>
#include <binder/ProcessState.h>
#include <binder/IServiceManager.h>
#include <binder/Parcel.h>
#include "IDisplayService.h"
#include "unistd.h"
#include "string.h"
#include "displaydef.h"

namespace android {

    enum {
        SETBRIGHT = IBinder::FIRST_CALL_TRANSACTION + 0,
        GETBRIGHT,
        SETCONTRAST,
        GETCONTRAST,
        SETFMT,
        GETFMT,
        SETHUE,
        GETHUE,
        SETSATURATION,
        GETSATURATION,
        SETRANGE,
        GETRANGE,
        SETMACROVISION,
        GETMACROVISION,
        SETHDCP,
        GETHDCP,
        SETSTEREOOUTMODE,
        GETSTEREOOUTMODE,
        SETSTEREOPRIORITY,
        GETSTEREOPRIORITY,
        GETCAP,
        GETMANUINFO,
        SETASPECTRATIO,
        GETASPECTRATIO,
        SETASPECTCVRS,
        GETASPECTCVRS,
        SETOPTIMALFORMATENABLE,
        GETOPTIMALFORMATENABLE,
        GETDISPLAYDEVICETYPE,
        SAVEPARAM,
        ATTACHINTF,
        DETACHINTF,
        SETVIRTSTREEN,
        GETVIRTSCREEN,
        GETVIRTSCREENSIZE,
        RESET,
        SETHDMISUSPENDTIME,
        GETHDMISUSPENDTIME,
        SETHDMISUSPENDENABLE,
        GETHDMISUSPENDENABLE,
        RELOAD,
        SETOUTPUTENABLE,
        GETOUTPUTENABLE
    };

    class BpDisplayService : public BpInterface<IDisplayService>
    {
        public:

            BpDisplayService(const sp<IBinder>& impl)
                : BpInterface<IDisplayService>(impl)
            {
            }

            virtual Rect getOutRange()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETRANGE, data, &reply);
                Rect rect(0,0,0,0);

                /*
                 * Simulate read Exception,0 means no Exception.
                 * This procedure is to suit Java Client.
                 * Other cases are the same condition.
                 */
                int ret = reply.readInt32();

                if(ret == 0)
                {
                    /*
                     * Read 1 represent HAL getOutRange success,otherwise HAL getOutRange fail.
                     * Other cases are the same conditioin.
                     */
                    ret = reply.readInt32();
                    if(ret == 1)
                    {
                        rect.left   = reply.readInt32();
                        rect.top    = reply.readInt32();
                        rect.right  = reply.readInt32();
                        rect.bottom = reply.readInt32();
                    }
                }
                return rect;
            }

            virtual int setOutRange(int left,int top,int width,int height)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(left);
                data.writeInt32(top);
                data.writeInt32(width);
                data.writeInt32(height);
                remote()->transact(SETRANGE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getFmt(void)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETFMT, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setFmt(int fmt)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(fmt);
                remote()->transact(SETFMT, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getBrightness()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETBRIGHT, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setBrightness(int  brightness)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(brightness);
                remote()->transact(SETBRIGHT, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getContrast()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETCONTRAST, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setContrast(int  contrast)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(contrast);
                remote()->transact(SETCONTRAST, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getSaturation()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETSATURATION, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setSaturation(int  saturation)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(saturation);
                remote()->transact(SETSATURATION, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getHue()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETHUE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setHue(int  hue)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(hue);
                remote()->transact(SETHUE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getMacroVision()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETMACROVISION, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setMacroVision(int mode)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(mode);
                remote()->transact(SETMACROVISION, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setHdcp(bool mode)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32((int)mode);
                remote()->transact(SETHDCP, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }
            virtual int getHdcp()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETHDCP, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setStereoOutMode(int mode, int videofps)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(mode);
                data.writeInt32(videofps);
                remote()->transact(SETSTEREOOUTMODE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getStereoOutMode()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETSTEREOOUTMODE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setRightEyeFirst(int Outpriority)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(Outpriority);
                remote()->transact(SETSTEREOPRIORITY, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getRightEyeFirst()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETSTEREOPRIORITY, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getDisplayCapability(Parcel *pl)
            {
                int ret = -1;
                if(pl == NULL)
                {
                    return ret;
                }
                Parcel data;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETCAP, data, pl);
                return ret;
            }
            virtual int getManufactureInfo(Parcel *pl)
            {
                int ret = -1;
                if(pl == NULL)
                {
                    return ret;
                }
                Parcel data;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETMANUINFO, data, pl);
                return ret;
            }
            virtual int setAspectRatio(int ratio)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(ratio);
                remote()->transact(SETASPECTRATIO, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getAspectRatio()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETASPECTRATIO, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setAspectCvrs(int cvrs)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(cvrs);
                remote()->transact(SETASPECTCVRS, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getAspectCvrs()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETASPECTCVRS, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setOptimalFormatEnable(int sign)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(sign);
                remote()->transact(SETOPTIMALFORMATENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getOptimalFormatEnable()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETOPTIMALFORMATENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getDisplayDeviceType()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETDISPLAYDEVICETYPE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int saveParam()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(SAVEPARAM, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int attachIntf()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(ATTACHINTF, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int detachIntf()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(DETACHINTF, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setVirtScreen(int outFmt)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(outFmt);
                remote()->transact(SETVIRTSTREEN, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }
            virtual int getVirtScreen()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETVIRTSCREEN, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual Rect getVirtScreenSize()
            {
                Rect rect(0, 0, 0, 0);
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETVIRTSCREENSIZE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    rect.right = reply.readInt32();
                    rect.bottom = reply.readInt32();
                }

                return rect;
            }

            virtual int reset()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(RESET, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setHDMISuspendTime(int iTime)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(iTime);
                remote()->transact(SETHDMISUSPENDTIME, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getHDMISuspendTime()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETHDMISUSPENDTIME, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setHDMISuspendEnable(int iEnable)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(iEnable);
                remote()->transact(SETHDMISUSPENDENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getHDMISuspendEnable()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(GETHDMISUSPENDENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }
            virtual int reload()
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                remote()->transact(RELOAD, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int setOutputEnable(int port, int enable)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(port);
                data.writeInt32(enable);
                remote()->transact(SETOUTPUTENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }

            virtual int getOutputEnable(int port)
            {
                Parcel data, reply;
                data.writeInterfaceToken(IDisplayService::getInterfaceDescriptor());
                data.writeInt32(port);
                remote()->transact(GETOUTPUTENABLE, data, &reply);
                int32_t ret = reply.readInt32();
                if(ret == 0)
                {
                    ret = reply.readInt32();
                }
                else
                {
                    ret = -1;
                }
                return ret;
            }
    };

    IMPLEMENT_META_INTERFACE(DisplayService, "com.hisilicon.android.IHiDisplayManager");

    status_t BnDisplayService::onTransact( uint32_t code, const Parcel& data, Parcel* reply, uint32_t flags)
    {
        int ret = -1;
        int32_t value;
        Rect rect(0,0,0,0);
        switch(code)
        {
            case GETRANGE:
                /*
                 * Here we use writeInt32(0) to simulate java function writeNoException().
                 * This is a C++ server,but sometimes Java Client will call this service,
                 * so we must simulate writeNoException() to suit Java Client.
                 * Other cases are the same condition.
                 */
                CHECK_INTERFACE(IDisplayService, data, reply);
                rect = getOutRange();
                reply->writeInt32(0);
                reply->writeInt32(1);
                reply->writeInt32(rect.left);
                reply->writeInt32(rect.top);
                reply->writeInt32(rect.right);
                reply->writeInt32(rect.bottom);
                return NO_ERROR;
            case SETRANGE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                int32_t left,top,width,height;
                left = data.readInt32();
                top = data.readInt32();
                width = data.readInt32();
                height = data.readInt32();
                ret = setOutRange(left,top,width,height);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETFMT:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getFmt();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETFMT:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setFmt(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETBRIGHT:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getBrightness();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETBRIGHT:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setBrightness(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETCONTRAST:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getContrast();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETCONTRAST:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setContrast(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETHUE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getHue();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETHUE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setHue(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETSATURATION:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getSaturation();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETSATURATION:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setSaturation(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETMACROVISION:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getMacroVision();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETMACROVISION:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setMacroVision(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETHDCP:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setHdcp(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETHDCP:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getHdcp();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETSTEREOOUTMODE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                int rate;
                value = data.readInt32();
                rate = data.readInt32();
                ret = setStereoOutMode(value,rate);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETSTEREOOUTMODE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getStereoOutMode();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETSTEREOPRIORITY:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setRightEyeFirst(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETSTEREOPRIORITY:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getRightEyeFirst();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETCAP:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getDisplayCapability(reply);
                return NO_ERROR;
            case GETMANUINFO:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = getManufactureInfo(reply);
                return NO_ERROR;
            case SETASPECTRATIO:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setAspectRatio(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETASPECTRATIO:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getAspectRatio();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETASPECTCVRS:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setAspectCvrs(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETASPECTCVRS:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getAspectCvrs();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETOPTIMALFORMATENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setOptimalFormatEnable(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETOPTIMALFORMATENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getOptimalFormatEnable();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETDISPLAYDEVICETYPE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getDisplayDeviceType();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SAVEPARAM:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = saveParam();
                reply->writeInt32(ret);
                return NO_ERROR;
            case ATTACHINTF:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = attachIntf();
                reply->writeInt32(ret);
                return NO_ERROR;
            case DETACHINTF:
                CHECK_INTERFACE(IDisplayService, data, reply);
                ret = detachIntf();
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETVIRTSTREEN:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setVirtScreen(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETVIRTSCREEN:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getVirtScreen();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETVIRTSCREENSIZE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                rect = getVirtScreenSize();
                reply->writeInt32(0);
                reply->writeInt32(rect.right);
                reply->writeInt32(rect.bottom);
                return NO_ERROR;
            case RESET:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = reset();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETHDMISUSPENDTIME:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setHDMISuspendTime(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETHDMISUSPENDTIME:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getHDMISuspendTime();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETHDMISUSPENDENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = setHDMISuspendEnable(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETHDMISUSPENDENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getHDMISuspendEnable();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case RELOAD:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = reload();
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case SETOUTPUTENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                int enable;
                value = data.readInt32();
                enable = data.readInt32();
                ret = setOutputEnable(value, enable);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;
            case GETOUTPUTENABLE:
                CHECK_INTERFACE(IDisplayService, data, reply);
                value = data.readInt32();
                ret = getOutputEnable(value);
                reply->writeInt32(0);
                reply->writeInt32(ret);
                return NO_ERROR;

            default:
                return BBinder::onTransact(code, data, reply, flags);
        }
    }
};  // namespace android
