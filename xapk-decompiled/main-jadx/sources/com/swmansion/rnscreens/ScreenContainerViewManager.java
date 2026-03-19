package com.swmansion.rnscreens;

import android.view.View;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

/* JADX INFO: loaded from: classes2.dex */
@ReactModule(name = ScreenContainerViewManager.REACT_CLASS)
public class ScreenContainerViewManager extends ViewGroupManager<ScreenContainer> {
    protected static final String REACT_CLASS = "RNSScreenContainer";

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager, com.facebook.react.uimanager.IViewManagerWithChildren
    public boolean needsCustomLayoutForChildren() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public ScreenContainer createViewInstance(ThemedReactContext themedReactContext) {
        return new ScreenContainer(themedReactContext);
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public void addView(ScreenContainer screenContainer, View view, int i) {
        if (!(view instanceof Screen)) {
            throw new IllegalArgumentException("Attempt attach child that is not of type RNScreens");
        }
        screenContainer.addScreen((Screen) view, i);
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public void removeViewAt(ScreenContainer screenContainer, int i) {
        screenContainer.removeScreenAt(i);
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public void removeAllViews(ScreenContainer screenContainer) {
        screenContainer.removeAllScreens();
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public int getChildCount(ScreenContainer screenContainer) {
        return screenContainer.getScreenCount();
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public View getChildAt(ScreenContainer screenContainer, int i) {
        return screenContainer.getScreenAt(i);
    }
}
