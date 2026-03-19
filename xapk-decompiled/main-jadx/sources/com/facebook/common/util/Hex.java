package com.facebook.common.util;

/* JADX INFO: loaded from: classes.dex */
public class Hex {
    private static final byte[] DIGITS;
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] FIRST_CHAR = new char[256];
    private static final char[] SECOND_CHAR = new char[256];

    static {
        for (int i = 0; i < 256; i++) {
            char[] cArr = FIRST_CHAR;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(i >> 4) & 15];
            SECOND_CHAR[i] = cArr2[i & 15];
        }
        DIGITS = new byte[103];
        for (int i2 = 0; i2 <= 70; i2++) {
            DIGITS[i2] = -1;
        }
        for (byte b2 = 0; b2 < 10; b2 = (byte) (b2 + 1)) {
            DIGITS[b2 + 48] = b2;
        }
        for (byte b3 = 0; b3 < 6; b3 = (byte) (b3 + 1)) {
            byte[] bArr = DIGITS;
            byte b4 = (byte) (b3 + 10);
            bArr[b3 + 65] = b4;
            bArr[b3 + 97] = b4;
        }
    }

    public static String byte2Hex(int i) {
        if (i > 255 || i < 0) {
            throw new IllegalArgumentException("The int converting to hex should be in range 0~255");
        }
        return String.valueOf(FIRST_CHAR[i]) + String.valueOf(SECOND_CHAR[i]);
    }

    public static String encodeHex(byte[] bArr, boolean z) {
        int i;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length && ((i = bArr[i3] & 255) != 0 || !z); i3++) {
            int i4 = i2 + 1;
            cArr[i2] = FIRST_CHAR[i];
            i2 = i4 + 1;
            cArr[i4] = SECOND_CHAR[i];
        }
        return new String(cArr, 0, i2);
    }

    public static byte[] decodeHex(String str) {
        byte[] bArr;
        byte b2;
        byte b3;
        int length = str.length();
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("Odd number of characters.");
        }
        byte[] bArr2 = new byte[length >> 1];
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            char cCharAt = str.charAt(i);
            if (cCharAt <= 'f' && (b2 = (bArr = DIGITS)[cCharAt]) != -1) {
                int i4 = i3 + 1;
                char cCharAt2 = str.charAt(i3);
                if (cCharAt2 <= 'f' && (b3 = bArr[cCharAt2]) != -1) {
                    bArr2[i2] = (byte) ((b2 << 4) | b3);
                    i2++;
                    i = i4;
                }
            }
            z = true;
            break;
        }
        if (z) {
            throw new IllegalArgumentException("Invalid hexadecimal digit: " + str);
        }
        return bArr2;
    }

    public static byte[] hexStringToByteArray(String str) {
        return decodeHex(str.replaceAll(" ", ""));
    }
}
