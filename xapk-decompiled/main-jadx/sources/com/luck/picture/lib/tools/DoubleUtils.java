package com.luck.picture.lib.tools;

/* JADX INFO: loaded from: classes2.dex */
public class DoubleUtils {
    private static final long TIME = 800;
    private static long lastClickTime;

    public static boolean isFastDoubleClick() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - lastClickTime < TIME) {
            return true;
        }
        lastClickTime = jCurrentTimeMillis;
        return false;
    }
}
