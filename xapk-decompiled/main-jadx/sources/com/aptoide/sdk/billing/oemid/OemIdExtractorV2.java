package com.aptoide.sdk.billing.oemid;

import android.content.Context;
import android.content.pm.PackageManager;
import com.aptoide.sdk.core.logger.Logger;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class OemIdExtractorV2 implements OemIdExtractor {
    private final Context context;
    public ZipExtensions zipExtensions = new ZipExtensions();

    public OemIdExtractorV2(Context context) {
        this.context = context;
    }

    @Override // com.aptoide.sdk.billing.oemid.OemIdExtractor
    public String extract(String str) {
        String valueFromFile;
        try {
            valueFromFile = readValueFromFile(new File(getPackageName(this.context, str)));
        } catch (Exception e) {
            Logger.logWarning("Failed to obtain OEMID from Extractor V2: " + e);
            valueFromFile = null;
        }
        if (valueFromFile != null) {
            return valueFromFile.split(Constants.OEMID_SEPARATOR)[0];
        }
        return null;
    }

    private String getPackageName(Context context, String str) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir;
    }

    private String readValueFromFile(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        int cdOffset = getCdOffset(file.length(), randomAccessFile);
        byte[] bArr = new byte[24];
        long j = (((long) cdOffset) - 16) - 8;
        randomAccessFile.seek(j);
        randomAccessFile.readFully(bArr);
        assertSigningMagic(Arrays.copyOfRange(bArr, 8, 24));
        int iMin = Math.min(65536, (int) randomAccessFile.length());
        byte[] bArr2 = new byte[iMin];
        randomAccessFile.seek(j - ((long) iMin));
        randomAccessFile.readFully(bArr2);
        assertPadding(bArr2);
        return readValue(cdOffset, bArr, randomAccessFile);
    }

    private void assertPadding(byte[] bArr) {
        int length = bArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                if (bArr[length] == 0) {
                    break;
                }
            } else {
                length = -1;
                break;
            }
        }
        if (length != -1) {
            for (int i = length - 4; i >= 0; i--) {
                if (bArr[i] == 119 && bArr[i + 1] == 101 && bArr[i + 2] == 114 && bArr[i + 3] == 66) {
                    return;
                }
            }
        }
        throw new IllegalStateException("Failed to validate padding!");
    }

    private void assertSigningMagic(byte[] bArr) {
        if (!Arrays.equals(bArr, Constants.SIGNING_BLOCK_MAGIC)) {
            throw new IllegalArgumentException("Can't find Apk Signing Block Magic!");
        }
    }

    private String readValue(int i, byte[] bArr, RandomAccessFile randomAccessFile) throws IOException {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        int iMin = Math.min(byteBufferWrap.getInt(), 1024);
        randomAccessFile.seek(((((long) i) - 16) - 8) - ((long) iMin));
        byte[] bArr2 = new byte[iMin];
        randomAccessFile.readFully(bArr2);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, getPaddingStart(bArr2), iMin);
        int headerIndex = getHeaderIndex(bArrCopyOfRange);
        return headerIndex == -1 ? getOldOemidFormat(bArrCopyOfRange) : getOemid(bArrCopyOfRange, headerIndex);
    }

    private String getOldOemidFormat(byte[] bArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i != bArr.length; i++) {
            byte b2 = bArr[i];
            if (b2 != 0) {
                arrayList.add(Byte.valueOf(b2));
            }
        }
        byte[] primitive = toPrimitive((Byte[]) arrayList.toArray(new Byte[0]));
        if (primitive.length == 0) {
            throw new IllegalStateException("Could not extract oemid");
        }
        Logger.logDebug("Extractor - Old oemid format trimmed: " + Arrays.toString(primitive));
        return new String(primitive);
    }

    private String getOemid(byte[] bArr, int i) {
        int length = (bArr.length - i) - 1;
        Logger.logDebug("Extractor - Getting oemid of size " + length);
        if (length > 16) {
            throw new IllegalStateException("Could not extract oemid");
        }
        if (length == 16) {
            return hexToString(Arrays.copyOfRange(bArr, i + 1, bArr.length));
        }
        throw new IllegalStateException("Could not extract oemid");
    }

    public static byte[] toPrimitive(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return new byte[0];
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    private static int getHeaderIndex(byte[] bArr) {
        for (int i = 0; i != bArr.length; i++) {
            byte b2 = bArr[i];
            if (b2 == -5) {
                return i;
            }
            if (b2 != 0) {
                return -1;
            }
        }
        return -1;
    }

    private int getPaddingStart(byte[] bArr) {
        for (int length = bArr.length - 4; length >= 0; length--) {
            if (bArr[length] == Constants.PADDING_START[0] && bArr[length + 1] == Constants.PADDING_START[1] && bArr[length + 2] == Constants.PADDING_START[2] && bArr[length + 3] == Constants.PADDING_START[3]) {
                return length + 4;
            }
        }
        return 0;
    }

    private String hexToString(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = Constants.HEX_ARRAY[i2 >>> 4];
            cArr[i3 + 1] = Constants.HEX_ARRAY[i2 & 15];
        }
        return new String(cArr);
    }

    private int getCdOffset(long j, RandomAccessFile randomAccessFile) throws IOException {
        randomAccessFile.seek(j - ((long) (this.zipExtensions.getCommentSize(randomAccessFile) + 6)));
        byte[] bArr = new byte[4];
        randomAccessFile.readFully(bArr);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        return byteBufferWrap.getInt();
    }
}
