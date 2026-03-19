package com.vesal.jlsx.international.module;

import android.app.Activity;
import android.content.Intent;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.identity.TwitterAuthClient;
import com.twitter.sdk.android.core.identity.TwitterLoginButton;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class TwitterLoginUtils {
    static final String ERROR_MSG_NO_ACTIVITY = "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button.";
    final WeakReference<Activity> activityRef;
    volatile TwitterAuthClient authClient;
    Callback<TwitterSession> callback;

    private void checkCallback(Callback callback) {
    }

    public TwitterLoginUtils(Activity activity) {
        this.activityRef = new WeakReference<>(activity);
        TwitterCore.getInstance();
    }

    public void setOnLoginByTwitterClick(Callback<TwitterSession> callback) {
        this.callback = callback;
        checkCallback(callback);
        checkActivity(this.activityRef.get());
        getTwitterAuthClient().authorize(this.activityRef.get(), callback);
    }

    TwitterAuthClient getTwitterAuthClient() {
        if (this.authClient == null) {
            synchronized (TwitterLoginButton.class) {
                if (this.authClient == null) {
                    this.authClient = new TwitterAuthClient();
                }
            }
        }
        return this.authClient;
    }

    private void checkActivity(Activity activity) {
        if (activity != null) {
            activity.isFinishing();
        }
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == getTwitterAuthClient().getRequestCode()) {
            getTwitterAuthClient().onActivityResult(i, i2, intent);
        }
    }
}
