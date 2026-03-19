package com.aptoide.sdk.billing.oemid;

import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes.dex */
public final class ZipExtensions {
    private static final int BUFFER_SIZE = 65047;
    public static final byte[] EOCD_SIG = {80, 75, 5, 6};

    public int getCommentSize(RandomAccessFile randomAccessFile) throws IOException {
        int length = 65047 > randomAccessFile.length() ? (int) randomAccessFile.length() : BUFFER_SIZE;
        randomAccessFile.seek(Math.max(randomAccessFile.length() - ((long) length), 0L));
        if (length <= 0) {
            length = (int) randomAccessFile.length();
        }
        byte[] bArr = new byte[length];
        randomAccessFile.readFully(bArr);
        for (int i = length - 4; i >= 0; i--) {
            byte b2 = bArr[i];
            byte[] bArr2 = EOCD_SIG;
            if (b2 == bArr2[0] && bArr[i + 1] == bArr2[1] && bArr[i + 2] == bArr2[2] && bArr[i + 3] == bArr2[3]) {
                return (length - i) - 22;
            }
        }
        return 0;
    }
}
