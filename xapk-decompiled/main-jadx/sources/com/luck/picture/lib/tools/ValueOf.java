package com.luck.picture.lib.tools;

import com.facebook.hermes.intl.Constants;

/* JADX INFO: loaded from: classes2.dex */
public class ValueOf {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T to(Object obj, T t) {
        return obj == 0 ? t : obj;
    }

    public static String toString(Object obj) {
        try {
            return obj.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static double toDouble(Object obj) {
        return toDouble(obj, 0);
    }

    public static double toDouble(Object obj, int i) {
        if (obj == null) {
            return i;
        }
        try {
            return Double.valueOf(obj.toString().trim()).doubleValue();
        } catch (Exception unused) {
            return i;
        }
    }

    public static long toLong(Object obj, long j) {
        long jLongValue;
        if (obj == null) {
            return j;
        }
        try {
            String strTrim = obj.toString().trim();
            if (strTrim.contains(".")) {
                jLongValue = Long.valueOf(strTrim.substring(0, strTrim.lastIndexOf("."))).longValue();
            } else {
                jLongValue = Long.valueOf(strTrim).longValue();
            }
            return jLongValue;
        } catch (Exception unused) {
            return j;
        }
    }

    public static long toLong(Object obj) {
        return toLong(obj, 0L);
    }

    public static float toFloat(Object obj, long j) {
        if (obj == null) {
            return j;
        }
        try {
            return Float.valueOf(obj.toString().trim()).floatValue();
        } catch (Exception unused) {
            return j;
        }
    }

    public static float toFloat(Object obj) {
        return toFloat(obj, 0L);
    }

    public static int toInt(Object obj, int i) {
        int iIntValue;
        if (obj == null) {
            return i;
        }
        try {
            String strTrim = obj.toString().trim();
            if (strTrim.contains(".")) {
                iIntValue = Integer.valueOf(strTrim.substring(0, strTrim.lastIndexOf("."))).intValue();
            } else {
                iIntValue = Integer.valueOf(strTrim).intValue();
            }
            return iIntValue;
        } catch (Exception unused) {
            return i;
        }
    }

    public static int toInt(Object obj) {
        return toInt(obj, 0);
    }

    public static boolean toBoolean(Object obj) {
        return toBoolean(obj, false);
    }

    public static boolean toBoolean(Object obj, boolean z) {
        if (obj == null) {
            return false;
        }
        try {
            return !Constants.CASEFIRST_FALSE.equals(obj.toString().trim().trim());
        } catch (Exception unused) {
            return z;
        }
    }
}
