package com.hisilicon.android;

import android.os.Parcel;
import android.os.Parcelable;

public class ManufactureInfo
{
    public String mfrsName = "";           /**Manufacture Name */
    public String mSinkName = "";          /**Sink Name */
    public int mProductCode = 0;           /**Product Code*/
    public int mSeriaNumber = 0;           /**Serial Numeber of Manufacture*/
    public int mWeek = 0;                  /**The week of Manufacture*/
    public int mYear = 0;                  /**The year of Manufacture*/
    public int mTVWidth = 0;               /**the width of TV size*/
    public int mTVHight = 0;               /**the Hight of TV size*/

    public ManufactureInfo() {}

    public ManufactureInfo(String mfrsName,String mSinkName, int mProductCode, int mSeriaNumber ,
		int mWeek, int mYear, int mTVWidth, int mTVHight)
    {
        this.mfrsName   = mfrsName;
        this.mSinkName = mSinkName;
        this.mProductCode = mProductCode;
        this.mSeriaNumber = mSeriaNumber;
        this.mWeek = mWeek;
        this.mYear = mYear;
	this.mTVWidth = mTVWidth;
	this.mTVHight = mTVHight;
    }

    public void writeToParcel(Parcel out, int flags)
    {
        out.writeString(mfrsName);
        out.writeString(mSinkName);
        out.writeInt(mProductCode);
        out.writeInt(mSeriaNumber);
        out.writeInt(mWeek);
        out.writeInt(mYear);
	out.writeInt(mTVWidth);
	out.writeInt(mTVHight);
    }

    public static final Parcelable.Creator<ManufactureInfo> CREATOR = new Parcelable.Creator<ManufactureInfo>() {

        public ManufactureInfo createFromParcel(Parcel in) {
            ManufactureInfo r = new ManufactureInfo();
            r.readFromParcel(in);
            return r;
        }

        public ManufactureInfo[] newArray(int size) {
            return new ManufactureInfo[size];
        }
    };

    public void readFromParcel(Parcel in)
    {
        mfrsName = in.readString();
        mSinkName = in.readString();
        mProductCode = in.readInt();
        mSeriaNumber = in.readInt();
        mWeek = in.readInt();
        mYear = in.readInt();
	mTVWidth = in.readInt();
	mTVHight = in.readInt();
    }
}
