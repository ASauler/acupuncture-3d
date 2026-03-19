package com.th3rdwave.safeareacontext;

import android.app.Activity;
import android.view.View;
import android.view.WindowManager;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.events.EventDispatcher;
import com.th3rdwave.safeareacontext.SafeAreaView;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class SafeAreaViewManager extends ViewGroupManager<SafeAreaView> {
    private final ReactApplicationContext mContext;
    private final WindowManager mWindowManager;

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNCSafeAreaView";
    }

    public SafeAreaViewManager(ReactApplicationContext reactApplicationContext) {
        this.mContext = reactApplicationContext;
        this.mWindowManager = (WindowManager) reactApplicationContext.getSystemService("window");
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public SafeAreaView createViewInstance(ThemedReactContext themedReactContext) {
        return new SafeAreaView(themedReactContext, this.mWindowManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public void addEventEmitters(ThemedReactContext themedReactContext, SafeAreaView safeAreaView) {
        final EventDispatcher eventDispatcher = ((UIManagerModule) themedReactContext.getNativeModule(UIManagerModule.class)).getEventDispatcher();
        safeAreaView.setOnInsetsChangeListener(new SafeAreaView.OnInsetsChangeListener() { // from class: com.th3rdwave.safeareacontext.SafeAreaViewManager.1
            @Override // com.th3rdwave.safeareacontext.SafeAreaView.OnInsetsChangeListener
            public void onInsetsChange(SafeAreaView safeAreaView2, EdgeInsets edgeInsets) {
                eventDispatcher.dispatchEvent(new InsetsChangeEvent(safeAreaView2.getId(), edgeInsets));
            }
        });
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public Map<String, Object> getExportedCustomDirectEventTypeConstants() {
        return MapBuilder.builder().put(InsetsChangeEvent.EVENT_NAME, MapBuilder.of("registrationName", "onInsetsChange")).build();
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public Map<String, Object> getExportedViewConstants() {
        View decorView;
        EdgeInsets safeAreaInsets;
        Activity currentActivity = this.mContext.getCurrentActivity();
        if (currentActivity == null || (decorView = currentActivity.getWindow().getDecorView()) == null || (safeAreaInsets = SafeAreaUtils.getSafeAreaInsets(this.mWindowManager, decorView)) == null) {
            return null;
        }
        return MapBuilder.of("initialWindowSafeAreaInsets", SafeAreaUtils.edgeInsetsToJavaMap(safeAreaInsets));
    }
}
