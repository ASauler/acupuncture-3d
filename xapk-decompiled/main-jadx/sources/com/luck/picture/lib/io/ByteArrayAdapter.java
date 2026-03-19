package com.luck.picture.lib.io;

/* JADX INFO: loaded from: classes2.dex */
public final class ByteArrayAdapter implements ArrayAdapterInterface<byte[]> {
    private static final String TAG = "ByteArrayPool";

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public int getElementSizeInBytes() {
        return 1;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public String getTag() {
        return TAG;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public int getArrayLength(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.luck.picture.lib.io.ArrayAdapterInterface
    public byte[] newArray(int i) {
        return new byte[i];
    }
}
