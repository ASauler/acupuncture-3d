package com.luck.picture.lib.tools;

import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class DateUtils {
    private static final SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmssSSS");

    public static long getCurrentTimeMillis() {
        String string = ValueOf.toString(Long.valueOf(System.currentTimeMillis()));
        if (string.length() > 10) {
            string = string.substring(0, 10);
        }
        return ValueOf.toLong(string);
    }

    public static int dateDiffer(long j) {
        try {
            return (int) Math.abs(getCurrentTimeMillis() - j);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String formatDurationTime(long j) {
        return String.format(Locale.getDefault(), "%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
    }

    public static String getCreateFileName(String str) {
        return str + sf.format(Long.valueOf(System.currentTimeMillis()));
    }

    public static String getCreateFileName() {
        return sf.format(Long.valueOf(System.currentTimeMillis()));
    }

    public static String cdTime(long j, long j2) {
        StringBuilder sbAppend;
        String str;
        long j3 = j2 - j;
        if (j3 > 1000) {
            sbAppend = new StringBuilder().append(j3 / 1000);
            str = "秒";
        } else {
            sbAppend = new StringBuilder().append(j3);
            str = "毫秒";
        }
        return sbAppend.append(str).toString();
    }
}
