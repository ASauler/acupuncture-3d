package org.matomo.sdk.tools;

import com.google.common.base.Ascii;
import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes4.dex */
public class Checksum {
    private static final String HEXES = "0123456789ABCDEF";

    public static String getHex(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            sb.append("0123456789ABCDEF".charAt((b2 & 240) >> 4)).append("0123456789ABCDEF".charAt(b2 & Ascii.SI));
        }
        return sb.toString();
    }

    public static String getMD5Checksum(String str) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(str.getBytes());
        return getHex(messageDigest.digest());
    }

    public static String getMD5Checksum(File file) throws Exception {
        int i;
        if (!file.isFile()) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[1024];
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        do {
            i = fileInputStream.read(bArr);
            if (i > 0) {
                messageDigest.update(bArr, 0, i);
            }
        } while (i != -1);
        fileInputStream.close();
        return getHex(messageDigest.digest());
    }
}
