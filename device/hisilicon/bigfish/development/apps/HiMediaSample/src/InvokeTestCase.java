package com.HiMediaSample;
import android.util.Log;
import android.widget.Toast;
import android.content.Context;
import android.os.Parcel;
import android.media.MediaPlayer;
import java.lang.reflect.Method;
import java.lang.Class;
import java.lang.Integer;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.app.Activity;
import java.lang.StringBuilder;
import com.HiMediaSample.InvokeCommon;
import com.HiMediaSample.InvokeCommon2;
import android.view.Surface;

import android.os.Message;
import android.os.Handler;
import com.hisilicon.android.mediaplayer.HiMediaPlayerInvoke;
import com.hisilicon.android.HiDisplayManager;

public class InvokeTestCase
{
    private MediaPlayer mMediaPlayer;
    private Context mContext;
    private String LOG_TAG = "dqptest";
    private final static String IMEDIA_PLAYER = "android.media.IMediaPlayer";
    private StringBuilder mArgs;
    private InvokeCommon mCommon;
    private InvokeCommon2 mCommon2;
    private InvokeCommon3 mCommon3;
    private String mstrResult = null;
    private int mRet = 0;
    private final int NO_ERROR = 0;
    private static int HI_2D_MODE = 0;
    private static int HI_3D_MODE = 1;

    public InvokeTestCase(MediaPlayer Player, Context context)
    {
        mContext = context;
        mMediaPlayer = Player;
        mCommon = new InvokeCommon(mContext);
        mCommon2 = new InvokeCommon2(mContext);
        mCommon3 = new InvokeCommon3(mContext);
    }

    private Method GetInvokeMethod()
    {
        Method method = null;
        try
        {
            method = mMediaPlayer.getClass().getMethod("invoke",Parcel.class,Parcel.class);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "GetInvokeMethod fail ");
            return null;
        }
        finally
        {
            return method;
        }
    }

    public void TestCMD_SET_SUB_SURFACE(final Surface surface)
    {
        Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE called");
        Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();

        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_SURFACE);
                int temp = request.dataPosition();

                if (null != surface)
                {
                        surface.writeToParcel(request, 1);
                Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE parcel offset :" + temp + " before surface.writeToParcel");
                }

                request.setDataPosition(temp);
        Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE parcel offset " + request.dataPosition() + " is " + request.readString());
        Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE parcel offset " + request.dataPosition() + " is " + request.readStrongBinder());

                request.setDataPosition(temp);
                surface.readFromParcel(request);
        Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE parcel offset " + request.dataPosition() + " is " + surface);

        try
        {
                Log.e(LOG_TAG, "method.invoke called in TestCMD_SET_SUB_SURFACE");
            method.invoke(mMediaPlayer, request, reply);
                Log.e(LOG_TAG, "method.invoke called end in TestCMD_SET_SUB_SURFACE");
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE...!! Fail");
            mstrResult = "TestCMD_SET_SUB_SURFACE...!! Fail";
            mCommon.ShowResult(mstrResult);
            return;
        }
                request.setDataPosition(temp);
                surface.readFromParcel(request);
        Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE parcel offset " + request.dataPosition() + " is " + surface);

        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_SET_SUB_SURFACE Fail!!");
            mCommon.ShowResult("TestCMD_SET_OUTRANGE Fail !!!!");
            return;
        }

        Log.e(LOG_TAG, "TestCMD_SET_OUTRANGE finish");
        mCommon.ShowResult("TestCMD_SET_OUTRANGE finish");

    }

    public void TestGetAudioTrackNum()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_PID_NUMBER);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetAudioTrackNum fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetAudioTrackNum Fail");
            mCommon.ShowResult("TestGetAudioTrackNum Fail");
            return;
        }
        mstrResult = "audio track number is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }


    public void TestCMD_GET_AUDIO_INFO()
    {
        int trackcount=0;
        String lan="";
        int format=0;
        int samplerate=0;
        int channel=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_AUDIO_INFO);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_AUDIO_INFO fail ");
            return;
        }
        reply.setDataPosition(0);

        mRet = reply.readInt();
        trackcount = reply.readInt();

        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_AUDIO_INFOFail");
            mCommon.ShowResult("TESTCMD_GET_AUDIO_INFOFail, mRet ="+ mRet);
            return;
        }

        int i=0;
        for(i=0;i<trackcount; i++)
        {
            lan=reply.readString();
            format=reply.readInt();
            samplerate=reply.readInt();
            channel=reply.readInt();
            mstrResult="lan:"+ lan + "format:" +format + "samplerate:"+samplerate + "channel:"+channel;
            mCommon.ShowResult(mstrResult);
        }

    }

    public void TestCMD_GET_VIDEO_INFO()
    {
        int format=0;
        int fpsinteger=0;
        int fpsdecimal=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_VIDEO_INFO);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_VIDEO_INFO fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_VIDEO_INFO Fail");
            mCommon.ShowResult("TestCMD_GET_VIDEO_INFO Fail");
            return;
        }

        format = reply.readInt();
        fpsinteger = reply.readInt();
        fpsdecimal = reply.readInt();

        mstrResult = "TestCMD_GET_VIDEO_INFO,format=" + format+" fpsinteger="+fpsinteger + "fpsdecimal="+fpsdecimal;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_SET_OUTRANGE()
    {
    //code , top , left ,width, height  timo

        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon2.getArgsString();
                String strArgs2= mCommon2.getArgsString2();
                String strArgs3= mCommon2.getArgsString3();
                String strArgs4= mCommon2.getArgsString4();

                int top = 0;
                int left=0;
                int width=0;
                int height=0;

                try
                {
                    top =  Integer.parseInt(strArgs);
                    left =Integer.parseInt(strArgs2);
                    width = Integer.parseInt(strArgs3);
                    height = Integer.parseInt(strArgs4);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_OUTRANGE fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_OUTRANGE);
                request.writeInt(top);
                request.writeInt(left);
                request.writeInt(width);
                request.writeInt(height);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_OUTRANGE...!! Fail");
                    mstrResult = "TestCMD_SET_OUTRANGE...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_OUTRANGE Faili!!");
                    mCommon.ShowResult("TestCMD_SET_OUTRANGE Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_OUTRANGE finish");
                mCommon.ShowResult("TestCMD_SET_OUTRANGE finish");
            }
        };
        mCommon2.setInvokeArgsDialog2(Notify);


    }

    public void TestCMD_SET_SUB_ID()
    {
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int subindex = 0;
                try
                {
                    subindex =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_SUB_ID fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "subindex is " + subindex);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_ID);
                request.writeInt(subindex);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_ID Fail");
                    mstrResult = "TestCMD_SET_SUB_ID Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_ID Fail");
                    mCommon.ShowResult("TestCMD_SET_SUB_ID Fail");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_SUB_ID finish");
                mCommon.ShowResult("TestCMD_SET_SUB_ID finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestCMD_GET_SUB_ID()
    {
        int subindex=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_ID);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_ID fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_ID Fail");
            mCommon.ShowResult("TestCMD_GET_SUB_ID Fail");
            return;
        }

        subindex = reply.readInt();

        mstrResult = "TestCMD_GET_SUB_ID,subindex=" + subindex;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_GET_SUB_INFO()
    {
        int subcount=0;
        int subindex=0;
        int isextsub=0;
        String lang="";
        int format=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_INFO);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_INFO fail ");
            return;
        }
        reply.setDataPosition(0);

        mRet = reply.readInt();
        subcount = reply.readInt();

        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_INFO Fail");
            mCommon.ShowResult("TestCMD_GET_SUB_INFO Fail, mRet ="+ mRet);
            return;
        }

        mstrResult="subcount="+subcount;
        mCommon.ShowResult(mstrResult);

        int i=0;
        for(i=0;i<subcount; i++)
        {
            subindex=reply.readInt();
            isextsub=reply.readInt();
            lang=reply.readString();
            format=reply.readInt();
            mstrResult=mstrResult +"subindex:"+subindex+"isextsub:"+ isextsub + "lang:" +lang + "format:"+format;
        }
        mCommon.ShowResult(mstrResult);

    }

    public void TestCMD_SET_SUB_FONT_ENCODE()
    {
    //type , s32CodeType
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int s32CodeType = 0;
                try
                {
                    s32CodeType =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_SUB_FONT_ENCODE fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "s32CodeType is " + s32CodeType);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_ENCODE);
                request.writeInt(s32CodeType);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_FONT_ENCODE...!! Fail");
                    mstrResult = "TestCMD_SET_SUB_FONT_ENCODE...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_FONT_ENCODE Faili!!");
                    mCommon.ShowResult("TestCMD_SET_SUB_FONT_ENCODE Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_SUB_FONT_ENCODE finish");
                mCommon.ShowResult("TestCMD_SET_SUB_FONT_ENCODE finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestCMD_GET_SUB_FONT_ENCODE()
    {
        int s32CodeType=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_ENCODE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_FONT_ENCODE fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_FONT_ENCODE Faili!!");
            mCommon.ShowResult("TestCMD_GET_SUB_FONT_ENCODE Fail !!!!");
            return;
        }
        s32CodeType = reply.readInt();
        mstrResult = "Test CMD_GET_SUB_FONT_ENCODE=" + s32CodeType;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_SET_SUB_TIME_SYNC()
    {
    //type , voffset ,aoffset , soffset

        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon2.getArgsString();
                String strArgs2= mCommon2.getArgsString2();
                String strArgs3= mCommon2.getArgsString3();

                int voffset = 0;
                int aoffset=0;
                int soffset=0;

                try
                {
                    voffset =  Integer.parseInt(strArgs);
                    aoffset = Integer.parseInt(strArgs2);
                    soffset = Integer.parseInt(strArgs3);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_SUB_TIME_SYNC fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_TIME_SYNC);
                request.writeInt(voffset);
                request.writeInt(aoffset);
                request.writeInt(soffset);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_TIME_SYNC...!! Fail");
                    mstrResult = "TestCMD_SET_SUB_TIME_SYNC...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_TIME_SYNC Faili!!");
                    mCommon.ShowResult("TestCMD_SET_SUB_TIME_SYNC Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_SUB_TIME_SYNC finish");
                mCommon.ShowResult("TestCMD_SET_SUB_TIME_SYNC finish");
            }
        };
        mCommon2.setInvokeArgsDialog2(Notify);
    }

    public void TestCMD_GET_SUB_TIME_SYNC()
    {
        int voffset=0;
        int aoffset=0;
        int soffset=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_TIME_SYNC);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_TIME_SYNC fail ");
            return;
        }
        reply.setDataPosition(0);

        mRet = reply.readInt();

        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_TIME_SYNC Fail");
            mCommon.ShowResult("TestCMD_GET_SUB_TIME_SYNC Fail, mRet="+ mRet);
            return;
        }

        voffset=reply.readInt();
        aoffset=reply.readInt();
        soffset=reply.readInt();
        mstrResult = "TestCMD_GET_SUB_TIME_SYNC: voffset=" +voffset + "aoffset="+aoffset+"s offset="+soffset;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_SET_SUB_EXTRA_SUBNAME()
    {
    //type , strArgs
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                Log.e(LOG_TAG, "strfilename is " + strArgs);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_EXTRA_SUBNAME);
                request.writeString(strArgs);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_EXTRA_SUBNAME...!! Fail");
                    mstrResult = "TestCMD_SET_SUB_EXTRA_SUBNAME...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_EXTRA_SUBNAME Faili!!");
                    mCommon.ShowResult("TestCMD_SET_SUB_EXTRA_SUBNAME Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_SUB_EXTRA_SUBNAME finish");
                mCommon.ShowResult("TestCMD_SET_SUB_EXTRA_SUBNAME finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestCMD_SET_SUB_DISABLE()
    {
    //type , s32Disable
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int s32Disable = 0;
                try
                {
                    s32Disable =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_SUB_DISABLE fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "s32Disable is " + s32Disable);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_DISABLE);
                request.writeInt(s32Disable);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_DISABLE...!! Fail");
                    mstrResult = "TestCMD_SET_SUB_DISABLE...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_SUB_DISABLE Faili!!");
                    mCommon.ShowResult("TestCMD_SET_SUB_DISABLE Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_SUB_DISABLE finish");
                mCommon.ShowResult("TestCMD_SET_SUB_DISABLE finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestCMD_GET_SUB_DISABLE()
    {
        int isdisable=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_DISABLE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_DISABLE fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_DISABLE Faili!!");
            mCommon.ShowResult("TestCMD_GET_SUB_DISABLE Fail !!!!");
            return;
        }
        isdisable = reply.readInt();
        mstrResult = "Test CMD_GET_SUB_DISABLE=" + isdisable;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_GET_SUB_ISBMP()
    {
        int isbmp=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_ISBMP);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_ISBMP fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_SUB_ISBMP Faili!!");
            mCommon.ShowResult("TestCMD_GET_SUB_ISBMP Fail !!!!");
            return;
        }
        isbmp = reply.readInt();
        mstrResult = "TestCMD_GET_SUB_ISBMP=" + isbmp;
        mCommon.ShowResult(mstrResult);

    }

    public void TestCMD_SET_BUFFER_MAX_SIZE()
    {
    //type , bufferSize
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int bufferSize = 0;
                try
                {
                    bufferSize =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_BUFFER_MAX_SIZE fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "bufferSize is " + bufferSize);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_BUFFER_MAX_SIZE);
                request.writeInt(bufferSize);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFER_MAX_SIZE...!! Fail");
                    mstrResult = "TestCMD_SET_BUFFER_MAX_SIZE...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFER_MAX_SIZE Faili!!");
                    mCommon.ShowResult("TestCMD_SET_BUFFER_MAX_SIZE Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_BUFFER_MAX_SIZE finish");
                mCommon.ShowResult("TestCMD_SET_BUFFER_MAX_SIZE finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestCMD_GET_BUFFER_MAX_SIZE()
    {
        int bufferSize=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_BUFFER_MAX_SIZE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFER_MAX_SIZE fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFER_MAX_SIZE Faili!!");
            mCommon.ShowResult("TestCMD_GET_BUFFER_MAX_SIZE Fail !!!!");
            return;
        }
        bufferSize = reply.readInt();
        mstrResult = "TestCMD_GET_BUFFER_MAX_SIZE=" + bufferSize+"Kb";
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_GET_DOWNLOAD_SPEED()
    {
        int speed=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_DOWNLOAD_SPEED);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_DOWNLOAD_SPEEDfail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_DOWNLOAD_SPEED Faili!!");
            mCommon.ShowResult("TestCMD_GET_DOWNLOAD_SPEED Fail !!!!");
            return;
        }
        speed = reply.readInt();
        mstrResult = "TestCMD_GET_DOWNLOAD_SPEED=" + speed + "bps";
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_GET_BUFFER_STATUS()
    {
        int size=0;
        int duration=0;
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_BUFFER_STATUS);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFER_STATUS fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFER_STATUS Faili!!");
            mCommon.ShowResult("TestCMD_GET_BUFFER_STATUS Fail !!!!");
            return;
        }

        size = reply.readInt();
        duration = reply.readInt();
        mstrResult = "TestCMD_GET_BUFFER_STATUS, size=" + size+"Kb,duration="+duration;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_SET_BUFFERSIZE_CONFIG()
    {
    //type , s32byte ,s32Start , s32Enough ,s32Timeout

        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon2.getArgsString();
                String strArgs2= mCommon2.getArgsString2();
                String strArgs3= mCommon2.getArgsString3();
                String strArgs4= mCommon2.getArgsString4();

                int s32byte = 0;
                int s32Start=0;
                int s32Enough=0;
                int s32Timeout=0;

                try
                {
                    s32byte =  Integer.parseInt(strArgs);
                    s32Start = Integer.parseInt(strArgs2);
                    s32Enough = Integer.parseInt(strArgs3);
                    s32Timeout = Integer.parseInt(strArgs4);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_BUFFERSIZE_CONFIG fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "s32byte:" + s32byte+"s32Start:"+s32Start+"s32Enough:"+s32Enough+"s32Timeout"+s32Timeout);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_BUFFERSIZE_CONFIG);
                request.writeInt(s32byte);
                request.writeInt(s32Start);
                request.writeInt(s32Enough);
                request.writeInt(s32Timeout);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFERSIZE_CONFIG...!! Fail");
                    mstrResult = "TestCMD_SET_BUFFERSIZE_CONFIG...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFERSIZE_CONFIG Faili!!");
                    mCommon.ShowResult("TestCMD_SET_BUFFERSIZE_CONFIG Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_BUFFERSIZE_CONFIG finish");
                mCommon.ShowResult("TestCMD_SET_BUFFERSIZE_CONFIG finish");
            }
        };
        mCommon2.setInvokeArgsDialog2(Notify);

    }

    public void TestCMD_GET_BUFFERSIZE_CONFIG()
    {
        int buffersize=0;
        int startsize=0;
        int enoughsize=0;
        int timeout=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_BUFFERSIZE_CONFIG);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFERSIZE_CONFIG fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFERSIZE_CONFIG Faili!!");
            mCommon.ShowResult("TestCMD_GET_BUFFERSIZE_CONFIG Fail !!!!");
            return;
        }

        buffersize = reply.readInt();
        startsize = reply.readInt();
        enoughsize = reply.readInt();
        timeout = reply.readInt();
        mstrResult = "TestCMD_GET_BUFFERSIZE_CONFIG,buffersize=" + buffersize+"Kb,startsize="+startsize+"Kb,enoughsize="+enoughsize+"Kb,timeout="+timeout;
        mCommon.ShowResult(mstrResult);
    }

    public void TestCMD_SET_BUFFERTIME_CONFIG()
    {

    //type , s32Ms ,s32Start , s32Enough ,s32Timeout

        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon2.getArgsString();
                String strArgs2= mCommon2.getArgsString2();
                String strArgs3= mCommon2.getArgsString3();
                String strArgs4= mCommon2.getArgsString4();

                int s32Ms = 0;
                int s32Start=0;
                int s32Enough=0;
                int s32Timeout=0;

                try
                {
                    s32Ms =  Integer.parseInt(strArgs);
                    s32Start =Integer.parseInt(strArgs2);
                    s32Enough = Integer.parseInt(strArgs3);
                    s32Timeout = Integer.parseInt(strArgs4);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestCMD_SET_BUFFERTIME_CONFIG fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "s32Ms:" + s32Ms+"s32Start:"+s32Start+"s32Enough:"+s32Enough+"s32Timeout"+s32Timeout);

                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_BUFFERTIME_CONFIG);
                request.writeInt(s32Ms);
                request.writeInt(s32Start);
                request.writeInt(s32Enough);
                request.writeInt(s32Timeout);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFERTIME_CONFIG...!! Fail");
                    mstrResult = "TestCMD_SET_BUFFERTIME_CONFIG...!! Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (mRet != 0)
                {
                    Log.e(LOG_TAG, "TestCMD_SET_BUFFERTIME_CONFIG Faili!!");
                    mCommon.ShowResult("TestCMD_SET_BUFFERTIME_CONFIG Fail !!!!");
                    return;
                }
                Log.e(LOG_TAG, "TestCMD_SET_BUFFERTIME_CONFIG finish");
                mCommon.ShowResult("TestCMD_SET_BUFFERTIME_CONFIG finish");
            }
        };
        mCommon2.setInvokeArgsDialog2(Notify);

    }
	public void TestCMD_GET_IP_PORT()
	{
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_IP_PORT);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_IP_PORT fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestCMD_GET_IP_PORT Fail");
            mCommon.ShowResult("TestCMD_GET_IP_PORT Fail");
            return;
        }
        String strIPPort = reply.readString();
        mstrResult = "current play IP and Port info: " + strIPPort;
        mCommon.ShowResult(mstrResult);
	}


    public void TestCMD_GET_BUFFERTIME_CONFIG()
    {
        int total=0;
        int start=0;
        int enough=0;
        int timeout=0;

        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_BUFFERTIME_CONFIG);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFERTIME_CONFIG fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (mRet != 0)
        {
            Log.e(LOG_TAG, "TestCMD_GET_BUFFERTIME_CONFIG Faili!!");
            mCommon.ShowResult("TestCMD_GET_BUFFERTIME_CONFIG Fail !!!!");
            return;
        }

        total = reply.readInt();
        start = reply.readInt();
        enough = reply.readInt();
        timeout = reply.readInt();

        mstrResult = "TestCMD_GET_BUFFERTIME_CONFIG,total=" +total+"Kb,start="+start+"Kb,enough="+enough+"Kb,timeout="+timeout;
        mCommon.ShowResult(mstrResult);
    }

    public void TestFFPlay()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int PlaySpeed = 0;
                try
                {
                    PlaySpeed =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestFFPlay fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "speed is " + PlaySpeed);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_FORWORD);
                request.writeInt(PlaySpeed);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestFFPlay Fail");
                    mstrResult = "TestFFPlay Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestFFPlay Fail");
                    mCommon.ShowResult("TestFFPlay Fail");
                    return;
                }
                Log.e(LOG_TAG, "TestFFPlay finish");
                mCommon.ShowResult("TestFFPlay finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetHlsIdx()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int HlsSetIdx = 0;
                try
                {
                    HlsSetIdx =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetHlsIdx fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "set hls idx " + HlsSetIdx);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_HLS_STREAM_ID);
                request.writeInt(HlsSetIdx);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetHlsIdx Fail");
                    mstrResult = "TestSetHlsIdx Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestSetHlsIdx Fail");
                    mCommon.ShowResult("TestSetHlsIdx Fail");
                    return;
                }
                Log.e(LOG_TAG, "TestSetHlsIdx finish");
                mCommon.ShowResult("TestSetHlsIdx finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void StopFastPlay()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_SET_STOP_FASTPLAY);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "StopFastPlay fail ");
            mCommon.ShowResult("StopFastPlay Fail");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "StopFastPlay Fail");
            mCommon.ShowResult("StopFastPlay Fail");
            return;
        }
        Log.e(LOG_TAG, "StopFastPlay finish");
        mCommon.ShowResult("StopFastPlay finish");
    }

    private int excuteCommand1(int pCmdId, String strArgs, boolean pIsGet)
    {
        Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        int arg;

        try
        {
            arg =  Integer.parseInt(strArgs);
        }
        catch (NumberFormatException e)
        {
            mstrResult = "fail : input illegal" ;
            mCommon.ShowResult(mstrResult);
            return 0;
        }

        Log.e(LOG_TAG, "arg is " + arg);

        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(pCmdId);
        request.writeInt(arg);

        try
        {
            method.invoke(mMediaPlayer,request,reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "cmd fail id:" + pCmdId);
            mstrResult = "fail : invoke cmd " + pCmdId;
            mCommon.ShowResult(mstrResult);

            return 0;
        }

        if (pIsGet)
        {
            reply.readInt();

                                int Result = reply.readInt();
            mstrResult = "invoke cmd result " + Result;
            mCommon.ShowResult(mstrResult);

            request.recycle();
            reply.recycle();
        }
        return 0;
    }

    //fileinfo
    private int excuteCommand2(int pCmdId, String strArgs, boolean pIsGet)
    {
        Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        int arg;

        try
        {
            arg =  Integer.parseInt(strArgs);
        }
        catch (NumberFormatException e)
        {
            mstrResult = "fail : input illegal" ;
            mCommon.ShowResult(mstrResult);
            return 0;
        }

        Log.e(LOG_TAG, "arg is " + arg);

        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(pCmdId);
        request.writeInt(arg);

        try
        {
            method.invoke(mMediaPlayer,request,reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "cmd fail id:" + pCmdId);
            mstrResult = "fail : invoke cmd " + pCmdId;
            mCommon.ShowResult(mstrResult);

            return 0;
        }

        if (pIsGet)
        {
            int Result = reply.readInt();  //result
            int VideoFormat = reply.readInt();  //video format
            int AudioFormat = reply.readInt();  //audio format
            long Filesize = reply.readLong(); //filesize
            int Sourcetype = reply.readInt();  //source type
            String Album = reply.readString(); //album
            String Title = reply.readString(); //title
            String Artist = reply.readString(); //artist
            String Genre = reply.readString(); //genre
            String Year = reply.readString(); //year
            mstrResult = "invoke cmd ret:" + Result +
                         ", video format:" + VideoFormat +
                         ", audio format:" + AudioFormat +
                         ", file size:" + Filesize +
                         ", source type: " + Sourcetype +
                         ", album:" + Album +
                         ", title:" + Title +
                         ", artist:" + Artist +
                         ", genre:" + Genre +
                         ", year:" + Year;
            mCommon.ShowResult(mstrResult);

            request.recycle();
            reply.recycle();
        }
        return 0;
    }

    // 2 args
    private int excuteCommand3(int pCmdId, String strArgs, String strArgs2, boolean pIsGet)
    {
        Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        int arg, arg2;

        try
        {
            arg =  Integer.parseInt(strArgs);
            arg2 = Integer.parseInt(strArgs2);
        }
        catch (NumberFormatException e)
        {
            mstrResult = "fail : input illegal" ;
            mCommon.ShowResult(mstrResult);
            return 0;
        }

        Log.e(LOG_TAG, "arg is " + arg);

        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(pCmdId);
        request.writeInt(arg);
        request.writeInt(arg2);

        try
        {
            method.invoke(mMediaPlayer,request,reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "cmd fail id:" + pCmdId);
            mstrResult = "fail : invoke cmd " + pCmdId;
            mCommon.ShowResult(mstrResult);

            return 0;
        }

        if (pIsGet)
        {
            reply.readInt();

            int Result = reply.readInt();
            mstrResult = "invoke cmd result " + Result;
            mCommon.ShowResult(mstrResult);

            request.recycle();
            reply.recycle();
        }
        return 0;
    }

    private int excuteCommand4(int pCmdId, String strArgs, boolean pIsGet) //write string
    {
        Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();

        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(pCmdId);
        request.writeString(strArgs);

        try
        {
            method.invoke(mMediaPlayer,request,reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "cmd fail id:" + pCmdId);
            mstrResult = "fail : invoke cmd " + pCmdId;
            mCommon.ShowResult(mstrResult);

            return 0;
        }

        if (pIsGet)
        {
            reply.readInt();

            int Result = reply.readInt();
            mstrResult = "invoke cmd result " + Result;
            mCommon.ShowResult(mstrResult);

            request.recycle();
            reply.recycle();
        }
        return 0;
    }



    public void TestGetFileInfo()
    {
        String strArgs = "0";
        excuteCommand2(HiMediaPlayerInvoke.CMD_GET_FILE_INFO, strArgs, true); //CMD_GET_FILE_INFO
    }

    /*  arg:
        HI_UNF_VO_ASPECT_CVRS_IGNORE = 0x0,
        HI_UNF_VO_ASPECT_CVRS_LETTERBOX,
        HI_UNF_VO_ASPECT_CVRS_PAN_SCAN,
        HI_UNF_VO_ASPECT_CVRS_COMBINED,
        HI_UNF_VO_ASPECT_CVRS_HORIZONTAL_FULL,
        HI_UNF_VO_ASPECT_CVRS_VERTICAL_FULL,
    */
    public void TestSetCvrs()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_VIDEO_CVRS, strArgs, false);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetCvrs()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_VIDEO_CVRS, strArgs, true);
    }

    public void TestSetVolume()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_AUDIO_VOLUME, strArgs, false);

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetVolume()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_AUDIO_VOLUME, strArgs, true);
    }

    public void TestSetAudioChMode()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_AUDIO_CHANNEL_MODE, strArgs, false);

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetAudioChMode()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_AUDIO_CHANNEL_MODE, strArgs, true);
    }

    public void TestSetAVSyncMode()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_AV_SYNC_MODE, strArgs, false);

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetAVSyncMode()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_AV_SYNC_MODE, strArgs, true);
    }

    public void TestSetVideoFreezeMode()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_VIDEO_FREEZE_MODE, strArgs, false);

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetVideoFreezeMode()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_VIDEO_FREEZE_MODE, strArgs, true);
    }

    public void TestSetAudioTrackPid()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_AUDIO_TRACK_PID, strArgs, false);

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetAudioTrackPid()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_AUDIO_TRACK_PID, strArgs, true);
    }

    public void TestSetSeekPos()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon3.getArgsString();
                String strArgs2= mCommon3.getArgsString2();
                excuteCommand3(HiMediaPlayerInvoke.CMD_SET_SEEK_POS, strArgs, strArgs2, false);
            }
        };
        mCommon3.setInvokeArgsDialog(Notify);
    }

    public void TestSetVideoFrameMode()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_VIDEO_FRAME_MODE, strArgs, false);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetVideoFrameMode()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_VIDEO_FRAME_MODE, strArgs, true);
    }

    public void TestSetAudioMuteStatus()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_AUDIO_MUTE_STATUS, strArgs, false);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetAudioMuteStatus()
    {
        String strArgs = "0";
        excuteCommand1(HiMediaPlayerInvoke.CMD_GET_AUDIO_MUTE_STATUS, strArgs, true);
    }

    public void TestSetNotSupportByteRange()
    {
        excuteCommand1(HiMediaPlayerInvoke.CMD_SET_NOT_SUPPORT_BYTERANGE,"1", false);
    }

    public void TestSetReferer(String strRefer)
    {
        excuteCommand4(HiMediaPlayerInvoke.CMD_SET_REFERER,strRefer, false);
    }

    public void TestSetUserAgent(String strUA)
    {
        excuteCommand4(HiMediaPlayerInvoke.CMD_SET_USER_AGENT, strUA, false);
    }

    public void TestSetVideoSurfaceOutput()
    {
        excuteCommand1(HiMediaPlayerInvoke.CMD_SET_VIDEO_SURFACE_OUTPUT,"0", false);
    }


    public void TestSetVideoFPS()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon3.getArgsString();
                String strArgs2= mCommon3.getArgsString2();
                excuteCommand3(HiMediaPlayerInvoke.CMD_SET_VIDEO_FPS, strArgs, strArgs2, false);

            }
        };
        mCommon3.setInvokeArgsDialog(Notify);
    }


    public void TestSetAVSyncStartRegion()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon3.getArgsString();
                String strArgs2= mCommon3.getArgsString2();

                excuteCommand3(HiMediaPlayerInvoke.CMD_SET_AVSYNC_START_REGION, strArgs, strArgs2, false);
            }
        };
        mCommon3.setInvokeArgsDialog(Notify);
    }

    public void TestSetBufferUnderRun()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_BUFFER_UNDERRUN, strArgs, false);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSet3DSubtitleCutMethod()
    {
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                excuteCommand1(HiMediaPlayerInvoke.CMD_SET_3D_SUBTITLE_CUT_METHOD, strArgs, false);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetProgramNum()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_PROGRAM_NUMBER);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetProgramNum fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetProgramNum Fail");
            mCommon.ShowResult("TestGetProgramNum Fail");
            return;
        }
        mstrResult = "program number is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestRWPlay()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int PlaySpeed = 0;
                try
                {
                    PlaySpeed =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestRWPlay fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "speed is " + PlaySpeed);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_REWIND);
                request.writeInt(PlaySpeed);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestRWPlay Fail");
                    mstrResult = "TestRWPlay Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestRWPlay Fail");
                    mCommon.ShowResult("TestRWPlay Fail");
                    return;
                }
                Log.e(LOG_TAG, "TestFFPlay finish");
                mCommon.ShowResult("TestFFPlay finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetSourceType()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_PROGRAM_STREAM_TYPE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSourceType fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSourceType Fail");
            mCommon.ShowResult("TestGetSourceType Fail");
            return;
        }
        int nSourcetype = reply.readInt();
        switch(nSourcetype)
        {
            case 0:
                mstrResult = "this is local play file";
                break;
            case 1:
                mstrResult = "this is vod play stream";
                break;
            case 2:
                mstrResult = "this is live stream";
                break;
            case 3:
                mstrResult = "unsupported type stream";
                break;
        }
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetHlsStreamNum()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_HLS_STREAM_NUM);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetHlsStreamNum fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetHlsStreamNum Fail");
            mCommon.ShowResult("TestGetHlsStreamNum Fail");
            return;
        }
        mstrResult = "hls stream number is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetHlsBandwith()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_HLS_BANDWIDTH);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetHlsBandwith fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetHlsBandwith Fail");
            mCommon.ShowResult("TestGetHlsBandwith Fail");
            return;
        }
        mstrResult = "hls Download Speed is " + (reply.readInt() / (8 * 1024)) + "KB";
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetHlsStreamInfo()
    {
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int ShowIdx = 0;
                try
                {
                    ShowIdx =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Select Stream Index " + ShowIdx);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_GET_HLS_STREAM_INFO);
                request.writeInt(ShowIdx);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestGetHlsStreamInfo Fail");
                    mstrResult = "TestGetHlsStreamInfo Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestGetHlsStreamInfo Fail");
                    mCommon.ShowResult("TestGetHlsStreamInfo Fail");
                    return;
                }
                mstrResult = "Current Index is " + reply.readInt() + "\n" + "Bitrate is " + reply.readInt() + "\n" + "Seg count " + reply.readInt() + "\n"
                    + "Url " + reply.readString() + "\n";
                mCommon.ShowResult(mstrResult);
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetHlsSegmentInfo()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_HLS_SEGMENT_INFO);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetHlsSegmentInfo fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetHlsSegmentInfo Fail");
            mCommon.ShowResult("TestGetHlsSegmentInfo Fail");
            return;
        }
        mstrResult = "Current Index is " + reply.readInt() + "\n" + "current segment total time is " + reply.readInt() + "ms" + "\n" + "Bandwith of Stream is " + reply.readInt() + "\n"
            + "Current seg index is " + reply.readInt() + "Url " + reply.readString() + "\n";
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetHlsStreamDetailInfo()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_PLAYLIST_STREAM_DETAIL_INFO);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetHlsStreamDetailInfo fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetHlsStreamDetailInfo Fail");
            mCommon.ShowResult("TestGetHlsStreamDetailInfo Fail");
            return;
        }

        Log.e(GlobalDef.LOG_TAG,"type is " + reply.readInt());
        Log.e(GlobalDef.LOG_TAG,"bandwidth is " + reply.readInt());
        Log.e(GlobalDef.LOG_TAG,"url is " + reply.readString());
        Log.e(GlobalDef.LOG_TAG,"hls_index is " + reply.readInt());
        Log.e(GlobalDef.LOG_TAG,"hls_finished is " + reply.readInt());
        Log.e(GlobalDef.LOG_TAG,"hls_target_duration is " + reply.readInt());
        int hlsNum = reply.readInt();
        Log.e(GlobalDef.LOG_TAG,"hls_segment_nb is " + hlsNum);
        int i = 0;
        for (i = 0; i < hlsNum; i++)
        {
            Log.e(GlobalDef.LOG_TAG,"start time is " + reply.readInt());
            Log.e(GlobalDef.LOG_TAG,"total_time time is " + reply.readInt());
            Log.e(GlobalDef.LOG_TAG,"url is " + reply.readString());
            Log.e(GlobalDef.LOG_TAG,"key is " + reply.readString());
            Log.e(GlobalDef.LOG_TAG,"key_type is " + reply.readInt());
        }
        Log.e(GlobalDef.LOG_TAG,"total deal is " + i);

        mstrResult = "To check result,see log from logcat";
        mCommon.ShowResult(mstrResult);
    }

    public void TestSet3DStrategy(int strategy)
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_SET_3D_STRATEGY);
        request.writeInt(strategy);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestSet3DStrategy Fail");
            mstrResult = "TestSet3DStrategy Fail";
            mCommon.ShowResult(mstrResult);
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestSet3DStrategy Fail");
            mCommon.ShowResult("TestSet3DStrategy Fail");
            return;
        }
    }

    public void TestSet3DFormat()
    {
        final Method method = GetInvokeMethod();
        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Format = 0;
                try
                {
                    Format =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "3d format is " + Format);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_3D_FORMAT);
                request.writeInt(Format);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSet3DFormat Fail");
                    mstrResult = "TestSet3DFormat Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                reply.setDataPosition(0);
                mRet = reply.readInt();
                if (NO_ERROR != mRet)
                {
                    Log.e(LOG_TAG, "TestSet3DFormat Fail");
                    mCommon.ShowResult("TestSet3DFormat Fail");
                    return;
                }

            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void Test_2D_SBS_To_3D_SBS()
    {
        Set3DFormat(HI_3D_MODE, 1);
    }

    public void Test_3D_SBS_To_2D_SBS()
    {
        Set3DFormat(HI_2D_MODE, 0);
    }

    public void Test_2D_SBS_To_2D()
    {
        Set3DFormat(HI_2D_MODE, 1);
    }

    public void Test_2D_To_2DSBS()
    {
        Set3DFormat(HI_2D_MODE, 0);
    }

    public void Test_2D_TAB_To_3D_TAB()
    {
        Set3DFormat(HI_3D_MODE, 2);
    }

    public void Test_3D_TAB_To_2D_TAB()
    {
        Set3DFormat(HI_2D_MODE, 0);
    }

    public void Test_2D_TAB_To_2D()
    {
        Set3DFormat(HI_2D_MODE, 2);
    }

    public void Test_2D_To_2D_TAB()
    {
        Set3DFormat(HI_2D_MODE, 0);
    }

    private void Set3DFormat(int DisplayManagerFormat, int _3DFormat)
    {
        final Method method = GetInvokeMethod();
        HiDisplayManager displayManager = new HiDisplayManager();
        displayManager.SetStereoOutMode(DisplayManagerFormat,0);
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_SET_3D_FORMAT);
        request.writeInt(_3DFormat);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestSet3DFormat Fail");
            mstrResult = "TestSet3DFormat Fail";
            mCommon.ShowResult(mstrResult);
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestSet3DFormat Fail");
            mCommon.ShowResult("TestSet3DFormat Fail");
            return;
        }
    }


    public void TestSetFontSize()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int FontSize = 0;
                try
                {
                    FontSize =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontSize fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "FontSize is " + FontSize);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_SIZE);
                request.writeInt(FontSize);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontSize Fail");
                    mstrResult = "TestSetFontSize Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontSize finish");
                mCommon.ShowResult("TestSetFontSize finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontPosition()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon3.getArgsString();
                String strArgs2= mCommon3.getArgsString2();
                int SubPosX = 0;
                int SubPosY = 0;
                try
                {
                    SubPosX =  Integer.parseInt(strArgs);
                    SubPosY =  Integer.parseInt(strArgs2);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontPosition fail input illegal" ;
                    mCommon3.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "SubPosX is " + SubPosX + "SubPosY is " + SubPosY);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_POSITION);
                request.writeInt(SubPosX);
                request.writeInt(SubPosY);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontPosition Fail");
                    mstrResult = "TestSetFontPosition Fail";
                    mCommon3.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontPosition finish");
                mCommon3.ShowResult("TestSetFontPosition finish");
            }
        };
        mCommon3.setInvokeArgsDialog(Notify);
    }

    public void TestSetFontVertical()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int FontVertical = 0;
                try
                {
                    FontVertical =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontVertical fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "FontVertical is " + FontVertical);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_VERTICAL);
                request.writeInt(FontVertical);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontVertical Fail");
                    mstrResult = "TestSetFontVertical Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontVertical finish");
                mCommon.ShowResult("TestSetFontVertical finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontHorizontal()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Horizontal = 0;
                try
                {
                    Horizontal =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontHorizontal fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Horizontal is " + Horizontal);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_HORIZONTAL);
                request.writeInt(Horizontal);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontHorizontal Fail");
                    mstrResult = "TestSetFontHorizontal Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontHorizontal finish");
                mCommon.ShowResult("TestSetFontHorizontal finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontAlignment()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Alig = 0;
                try
                {
                    Alig =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontAlignment fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Alig is " + Alig);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_ALIGNMENT);
                request.writeInt(Alig);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontAlignment Fail");
                    mstrResult = "TestSetFontAlignment Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontAlignment finish");
                mCommon.ShowResult("TestSetFontAlignment finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontColor()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Color = 0;
                try
                {
                    Color =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontColor fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Color is " + Color);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_COLOR);
                request.writeInt(Color);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontColor Fail");
                    mstrResult = "TestSetFontColor Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                //if (NO_ERROR != mRet)
                //{
                //    Log.e(LOG_TAG, "TestSetFontSize Fail");
                //    mCommon.ShowResult("TestSetFontSize Fail");
                //    return;
                //}
                Log.e(LOG_TAG, "TestSetFontColor finish");
                mCommon.ShowResult("TestSetFontColor finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontBKColor()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Color = 0;
                try
                {
                    Color =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontBKColor fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Color is " + Color);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_BACKCOLOR);
                request.writeInt(Color);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontBKColor Fail");
                    mstrResult = "TestSetFontBKColor Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontBKColor finish");
                mCommon.ShowResult("TestSetFontBKColor finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontShadowStyle()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int IsShadow = 0;
                try
                {
                    IsShadow =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontShadowStyle fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "IsShadow is " + IsShadow);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_SHADOW);
                request.writeInt(IsShadow);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontShadowStyle Fail");
                    mstrResult = "TestSetFontShadowStyle Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontShadowStyle finish");
                mCommon.ShowResult("TestSetFontShadowStyle finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontHollowStyle()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int IsHollow = 0;
                try
                {
                    IsHollow =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontHollowStyle fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "IsHollow is " + IsHollow);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_HOLLOW);
                request.writeInt(IsHollow);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontHollowStyle Fail");
                    mstrResult = "TestSetFontHollowStyle Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontHollowStyle finish");
                mCommon.ShowResult("TestSetFontHollowStyle finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontDisable()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int IsDisable = 0;
                try
                {
                    IsDisable =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontShadowStyle fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "IsDisable is " + IsDisable);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_DISABLE);
                request.writeInt(IsDisable);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontDisable Fail");
                    mstrResult = "TestSetFontDisable Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontDisable finish");
                mCommon.ShowResult("TestSetFontDisable finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontStyle()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int Style = 0;
                try
                {
                    Style =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontStyle fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "Style is " + Style);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_STYLE);
                request.writeInt(Style);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontStyle Fail");
                    mstrResult = "TestSetFontStyle Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontStyle finish");
                mCommon.ShowResult("TestSetFontStyle finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontLineSpace()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int space = 0;
                try
                {
                    space  =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontLineSpace fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "space is " + space);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_LINESPACE);
                request.writeInt(space);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontLineSpace Fail");
                    mstrResult = "TestSetFontLineSpace Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontLineSpace finish");
                mCommon.ShowResult("TestSetFontLineSpace finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontSpace()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();
                int space = 0;
                try
                {
                    space  =  Integer.parseInt(strArgs);
                }
                catch (NumberFormatException e)
                {
                    mstrResult = "TestSetFontLinearSpace fail input illegal" ;
                    mCommon.ShowResult(mstrResult);
                    return;
                }
                Log.e(LOG_TAG, "space is " + space);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_SPACE);
                request.writeInt(space);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontSpace Fail");
                    mstrResult = "TestSetFontSpace Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontSpace finish");
                mCommon.ShowResult("TestSetFontSpace finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestSetFontPath()
    {
        final Method method = GetInvokeMethod();

        final Handler Notify = new Handler()
        {
            @Override
            public void handleMessage(Message mesg)
            {
                String strArgs = mCommon.getArgsString();

                Log.e(LOG_TAG, "path is " + strArgs);
                Parcel request = Parcel.obtain();
                Parcel reply = Parcel.obtain();
                request.writeInterfaceToken(IMEDIA_PLAYER);
                request.writeInt(HiMediaPlayerInvoke.CMD_SET_SUB_FONT_PATH);
                request.writeString(strArgs);
                try
                {
                    method.invoke(mMediaPlayer, request, reply);
                }
                catch(Exception ee)
                {
                    Log.e(LOG_TAG, "TestSetFontPath Fail");
                    mstrResult = "TestSetFontPath Fail";
                    mCommon.ShowResult(mstrResult);
                    return;
                }

                reply.setDataPosition(0);
                mRet = reply.readInt();
                Log.e(LOG_TAG, "TestSetFontPath finish");
                mCommon.ShowResult("TestSetFontPath finish");
            }
        };
        mCommon.setInvokeArgsDialog1(Notify);
    }

    public void TestGetSubFontPath()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_PATH);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontPath fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontPath Fail");
            mCommon.ShowResult("TestGetSubFontPath Fail");
            return;
        }
        String strFontPath = reply.readString();
        mstrResult = "Sub Font Path Is " + strFontPath;
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontSize()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_SIZE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontSize fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontSize Fail");
            mCommon.ShowResult("TestGetSubFontSize Fail");
            return;
        }
        mstrResult = "Sub Font Size Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontVertical()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_VERTICAL);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontVertical fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontVertical Fail");
            mCommon.ShowResult("TestGetSubFontVertical Fail");
            return;
        }
        mstrResult = "Sub Font Vertical Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontAlignment()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_ALIGNMENT);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontAlignment fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontAlignment Fail");
            mCommon.ShowResult("TestGetSubFontAlignment Fail");
            return;
        }
        mstrResult = "Sub Font Alignment Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontColor()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_COLOR);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontColor fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontColor Fail");
            mCommon.ShowResult("TestGetSubFontColor Fail");
            return;
        }
        mstrResult = "Sub Font Color Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontSpace()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_SPACE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontSpace fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontSpace Fail");
            mCommon.ShowResult("TestGetSubFontSpace Fail");
            return;
        }
        mstrResult = "Sub Font Space Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontLineSpace()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_LINESPACE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontLineSpace fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontLineSpace Fail");
            mCommon.ShowResult("TestGetSubFontLineSpace Fail");
            return;
        }
        mstrResult = "Sub Font Line Space Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontStyle()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_FONT_STYLE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontStyle fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontStyle Fail");
            mCommon.ShowResult("TestGetSubFontStyle Fail");
            return;
        }
        mstrResult = "Sub Font Style Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }

    public void TestGetSubFontDisable()
    {
        final Method method = GetInvokeMethod();
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        request.writeInterfaceToken(IMEDIA_PLAYER);
        request.writeInt(HiMediaPlayerInvoke.CMD_GET_SUB_DISABLE);
        try
        {
            method.invoke(mMediaPlayer, request, reply);
        }
        catch(Exception ee)
        {
            Log.e(LOG_TAG, "TestGetSubFontDisable fail ");
            return;
        }
        reply.setDataPosition(0);
        mRet = reply.readInt();
        if (NO_ERROR != mRet)
        {
            Log.e(LOG_TAG, "TestGetSubFontDisable Fail");
            mCommon.ShowResult("TestGetSubFontDisable Fail");
            return;
        }
        mstrResult = "Sub Font Disable Is " + reply.readInt();
        mCommon.ShowResult(mstrResult);
    }
}
