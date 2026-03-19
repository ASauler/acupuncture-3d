package com.luck.picture.lib.io;

/* JADX INFO: loaded from: classes2.dex */
public final class IntegerArrayAdapter implements ArrayAdapterInterface<int[]> {
    private static final String TAG = "IntegerArrayPool";

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public int getElementSizeInBytes() {
        return 4;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public String getTag() {
        return TAG;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public int getArrayLength(int[] iArr) {
        return iArr.length;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public int[] newArray(int i) {
        return new int[i];
    }
}
