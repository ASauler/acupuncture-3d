package com.reactnative.unity.view;

import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;

/* JADX INFO: loaded from: classes2.dex */
public class UnityViewManager extends SimpleViewManager<UnityView> implements LifecycleEventListener, View.OnAttachStateChangeListener {
    private static final String REACT_CLASS = "UnityView";
    private ReactApplicationContext context;

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }

    UnityViewManager(ReactApplicationContext reactApplicationContext) {
        this.context = reactApplicationContext;
        reactApplicationContext.addLifecycleEventListener(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public UnityView createViewInstance(ThemedReactContext themedReactContext) {
        UnityView unityView = new UnityView(themedReactContext);
        Log.e("testlog1207", "createViewInstance");
        unityView.addOnAttachStateChangeListener(this);
        if (UnityUtils.getPlayer() != null) {
            unityView.setUnityPlayer(UnityUtils.getPlayer());
        } else {
            Log.e("testlog1207", "createViewInstance create player");
        }
        return unityView;
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public void onDropViewInstance(UnityView unityView) {
        unityView.removeOnAttachStateChangeListener(this);
        super.onDropViewInstance(unityView);
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostResume() {
        Log.e("testlog1207", "createViewInstance create player");
        if (UnityUtils.isUnityReady()) {
            UnityUtils.getPlayer().resume();
            restoreUnityUserState();
        }
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostPause() {
        if (UnityUtils.isUnityReady()) {
            UnityUtils.getPlayer().pause();
        }
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostDestroy() {
        if (UnityUtils.isUnityReady()) {
            UnityUtils.getPlayer().quit();
        }
    }

    private void restoreUnityUserState() {
        if (UnityUtils.isUnityPaused()) {
            new Handler().postDelayed(new Runnable() { // from class: com.reactnative.unity.view.UnityViewManager.1
                @Override // java.lang.Runnable
                public void run() {
                    if (UnityUtils.getPlayer() != null) {
                        UnityUtils.getPlayer().pause();
                    }
                }
            }, 300L);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        restoreUnityUserState();
    }
}
