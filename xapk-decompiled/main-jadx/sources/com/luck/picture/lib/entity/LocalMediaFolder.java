package com.luck.picture.lib.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LocalMediaFolder implements Parcelable {
    public static final Parcelable.Creator<LocalMediaFolder> CREATOR = new Parcelable.Creator<LocalMediaFolder>() { // from class: com.luck.picture.lib.entity.LocalMediaFolder.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalMediaFolder createFromParcel(Parcel parcel) {
            return new LocalMediaFolder(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LocalMediaFolder[] newArray(int i) {
            return new LocalMediaFolder[i];
        }
    };
    private long bucketId;
    private int checkedNum;
    private int currentDataPage;
    private List<LocalMedia> data;
    private String firstImagePath;
    private String firstMimeType;
    private int imageNum;
    private boolean isCameraFolder;
    private boolean isChecked;
    private boolean isHasMore;
    private String name;
    private int ofAllType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LocalMediaFolder() {
        this.bucketId = -1L;
        this.ofAllType = -1;
        this.data = new ArrayList();
    }

    protected LocalMediaFolder(Parcel parcel) {
        this.bucketId = -1L;
        this.ofAllType = -1;
        this.data = new ArrayList();
        this.bucketId = parcel.readLong();
        this.name = parcel.readString();
        this.firstImagePath = parcel.readString();
        this.firstMimeType = parcel.readString();
        this.imageNum = parcel.readInt();
        this.checkedNum = parcel.readInt();
        this.isChecked = parcel.readByte() != 0;
        this.ofAllType = parcel.readInt();
        this.isCameraFolder = parcel.readByte() != 0;
        this.data = parcel.createTypedArrayList(LocalMedia.CREATOR);
        this.currentDataPage = parcel.readInt();
        this.isHasMore = parcel.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.bucketId);
        parcel.writeString(this.name);
        parcel.writeString(this.firstImagePath);
        parcel.writeString(this.firstMimeType);
        parcel.writeInt(this.imageNum);
        parcel.writeInt(this.checkedNum);
        parcel.writeByte(this.isChecked ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.ofAllType);
        parcel.writeByte(this.isCameraFolder ? (byte) 1 : (byte) 0);
        parcel.writeTypedList(this.data);
        parcel.writeInt(this.currentDataPage);
        parcel.writeByte(this.isHasMore ? (byte) 1 : (byte) 0);
    }

    public long getBucketId() {
        return this.bucketId;
    }

    public void setBucketId(long j) {
        this.bucketId = j;
    }

    public String getName() {
        return TextUtils.isEmpty(this.name) ? "unknown" : this.name;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String getFirstImagePath() {
        return this.firstImagePath;
    }

    public void setFirstImagePath(String str) {
        this.firstImagePath = str;
    }

    public int getImageNum() {
        return this.imageNum;
    }

    public void setImageNum(int i) {
        this.imageNum = i;
    }

    public int getCheckedNum() {
        return this.checkedNum;
    }

    public void setCheckedNum(int i) {
        this.checkedNum = i;
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
    }

    public int getOfAllType() {
        return this.ofAllType;
    }

    public void setOfAllType(int i) {
        this.ofAllType = i;
    }

    public boolean isCameraFolder() {
        return this.isCameraFolder;
    }

    public void setCameraFolder(boolean z) {
        this.isCameraFolder = z;
    }

    public List<LocalMedia> getData() {
        return this.data;
    }

    public void setData(List<LocalMedia> list) {
        this.data = list;
    }

    public int getCurrentDataPage() {
        return this.currentDataPage;
    }

    public void setCurrentDataPage(int i) {
        this.currentDataPage = i;
    }

    public boolean isHasMore() {
        return this.isHasMore;
    }

    public void setHasMore(boolean z) {
        this.isHasMore = z;
    }

    public String getFirstMimeType() {
        return this.firstMimeType;
    }

    public void setFirstMimeType(String str) {
        this.firstMimeType = str;
    }
}
