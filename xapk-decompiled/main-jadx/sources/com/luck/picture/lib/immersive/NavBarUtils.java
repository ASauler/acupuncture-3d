package com.luck.picture.lib.immersive;

import android.app.Activity;
import android.view.Window;

/* JADX INFO: loaded from: classes2.dex */
public class NavBarUtils {
    public static void setNavBarColor(Activity activity, int i) {
        setNavBarColor(activity.getWindow(), i);
    }

    public static void setNavBarColor(Window window, int i) {
        window.setNavigationBarColor(i);
    }
}
