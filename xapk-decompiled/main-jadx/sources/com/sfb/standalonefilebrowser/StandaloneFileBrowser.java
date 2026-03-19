package com.sfb.standalonefilebrowser;

import android.app.Activity;
import com.sfb.standalonefilebrowser.StandaloneFileBrowserFragment;

/* JADX INFO: loaded from: classes2.dex */
public class StandaloneFileBrowser {
    public static void showOpenFileDialog(Activity activity, String str, boolean z, StandaloneFileBrowserAndroidListener standaloneFileBrowserAndroidListener) {
        StandaloneFileBrowserFragment standaloneFileBrowserFragment = new StandaloneFileBrowserFragment();
        standaloneFileBrowserFragment.setFileBrowserAndroidListener(standaloneFileBrowserAndroidListener);
        standaloneFileBrowserFragment.setMultiple(Boolean.valueOf(z));
        standaloneFileBrowserFragment.setTitle(str);
        activity.getFragmentManager().beginTransaction().add(0, standaloneFileBrowserFragment).commit();
    }

    public static void showOpenImageDialog(Activity activity, String str, boolean z, StandaloneFileBrowserAndroidListener standaloneFileBrowserAndroidListener) {
        StandaloneFileBrowserFragment standaloneFileBrowserFragment = new StandaloneFileBrowserFragment();
        standaloneFileBrowserFragment.setFileBrowserAndroidListener(standaloneFileBrowserAndroidListener);
        standaloneFileBrowserFragment.setMultiple(Boolean.valueOf(z));
        standaloneFileBrowserFragment.setTitle(str);
        standaloneFileBrowserFragment.setIntentType(StandaloneFileBrowserFragment.IntentType.IMAGE);
        activity.getFragmentManager().beginTransaction().add(0, standaloneFileBrowserFragment).commit();
    }
}
