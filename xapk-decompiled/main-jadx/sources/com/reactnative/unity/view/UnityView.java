package com.reactnative.unity.view;

import android.content.Context;
import android.content.res.Configuration;
import android.widget.FrameLayout;
import com.unity3d.player.UnityPlayer;

/* JADX INFO: loaded from: classes2.dex */
public class UnityView extends FrameLayout {
    private UnityPlayer view;

    protected UnityView(Context context) {
        super(context);
    }

    public void setUnityPlayer(UnityPlayer unityPlayer) {
        this.view = unityPlayer;
        UnityUtils.addUnityViewToGroup(this);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        UnityPlayer unityPlayer = this.view;
        if (unityPlayer != null) {
            unityPlayer.windowFocusChanged(z);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        UnityPlayer unityPlayer = this.view;
        if (unityPlayer != null) {
            unityPlayer.configurationChanged(configuration);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
