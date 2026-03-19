package com.swmansion.rnscreens;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

/* JADX INFO: loaded from: classes2.dex */
@ReactModule(name = ScreenStackViewManager.REACT_CLASS)
public class ScreenStackViewManager extends ViewGroupManager<ScreenStack> {
    protected static final String REACT_CLASS = "RNSScreenStack";

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
    public ScreenStack createViewInstance(ThemedReactContext themedReactContext) {
        return new ScreenStack(themedReactContext);
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public void addView(ScreenStack screenStack, View view, int i) {
        if (!(view instanceof Screen)) {
            throw new IllegalArgumentException("Attempt attach child that is not of type RNScreen");
        }
        screenStack.addScreen((Screen) view, i);
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public void removeViewAt(ScreenStack screenStack, int i) {
        prepareOutTransition(screenStack.getScreenAt(i));
        screenStack.removeScreenAt(i);
    }

    private void prepareOutTransition(Screen screen) {
        startTransitionRecursive(screen);
    }

    private void startTransitionRecursive(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            viewGroup.startViewTransition(childAt);
            if (childAt instanceof ScreenStackHeaderConfig) {
                startTransitionRecursive(((ScreenStackHeaderConfig) childAt).getToolbar());
            }
            if (childAt instanceof ViewGroup) {
                startTransitionRecursive((ViewGroup) childAt);
            }
        }
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public int getChildCount(ScreenStack screenStack) {
        return screenStack.getScreenCount();
    }

    @Override // com.facebook.react.uimanager.ViewGroupManager
    public View getChildAt(ScreenStack screenStack, int i) {
        return screenStack.getScreenAt(i);
    }
}
