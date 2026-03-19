package com.swmansion.rnscreens;

import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.common.MapBuilder;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.swmansion.rnscreens.Screen;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@ReactModule(name = ScreenViewManager.REACT_CLASS)
public class ScreenViewManager extends ViewGroupManager<Screen> {
    protected static final String REACT_CLASS = "RNSScreen";

    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return REACT_CLASS;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.ViewManager
    public Screen createViewInstance(ThemedReactContext themedReactContext) {
        return new Screen(themedReactContext);
    }

    @ReactProp(name = "activityState")
    public void setActivityState(Screen screen, Integer num) {
        if (num == null) {
            return;
        }
        if (num.intValue() == 0) {
            screen.setActivityState(Screen.ActivityState.INACTIVE);
        } else if (num.intValue() == 1) {
            screen.setActivityState(Screen.ActivityState.TRANSITIONING_OR_BELOW_TOP);
        } else if (num.intValue() == 2) {
            screen.setActivityState(Screen.ActivityState.ON_TOP);
        }
    }

    @ReactProp(name = "stackPresentation")
    public void setStackPresentation(Screen screen, String str) {
        if ("push".equals(str)) {
            screen.setStackPresentation(Screen.StackPresentation.PUSH);
            return;
        }
        if ("modal".equals(str) || "containedModal".equals(str) || "fullScreenModal".equals(str) || "formSheet".equals(str)) {
            screen.setStackPresentation(Screen.StackPresentation.MODAL);
        } else {
            if ("transparentModal".equals(str) || "containedTransparentModal".equals(str)) {
                screen.setStackPresentation(Screen.StackPresentation.TRANSPARENT_MODAL);
                return;
            }
            throw new JSApplicationIllegalArgumentException("Unknown presentation type " + str);
        }
    }

    @ReactProp(name = "stackAnimation")
    public void setStackAnimation(Screen screen, String str) {
        if (str == null || "default".equals(str)) {
            screen.setStackAnimation(Screen.StackAnimation.DEFAULT);
            return;
        }
        if ("none".equals(str)) {
            screen.setStackAnimation(Screen.StackAnimation.NONE);
            return;
        }
        if ("fade".equals(str)) {
            screen.setStackAnimation(Screen.StackAnimation.FADE);
        } else if ("slide_from_right".equals(str)) {
            screen.setStackAnimation(Screen.StackAnimation.SLIDE_FROM_RIGHT);
        } else if ("slide_from_left".equals(str)) {
            screen.setStackAnimation(Screen.StackAnimation.SLIDE_FROM_LEFT);
        }
    }

    @ReactProp(defaultBoolean = true, name = "gestureEnabled")
    public void setGestureEnabled(Screen screen, boolean z) {
        screen.setGestureEnabled(z);
    }

    @ReactProp(name = "replaceAnimation")
    public void setReplaceAnimation(Screen screen, String str) {
        if (str == null || "pop".equals(str)) {
            screen.setReplaceAnimation(Screen.ReplaceAnimation.POP);
        } else if ("push".equals(str)) {
            screen.setReplaceAnimation(Screen.ReplaceAnimation.PUSH);
        }
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    @Nullable
    public Map getExportedCustomDirectEventTypeConstants() {
        return MapBuilder.of(ScreenDismissedEvent.EVENT_NAME, MapBuilder.of("registrationName", "onDismissed"), ScreenWillAppearEvent.EVENT_NAME, MapBuilder.of("registrationName", "onWillAppear"), ScreenAppearEvent.EVENT_NAME, MapBuilder.of("registrationName", "onAppear"), ScreenWillDisappearEvent.EVENT_NAME, MapBuilder.of("registrationName", "onWillDisappear"), ScreenDisappearEvent.EVENT_NAME, MapBuilder.of("registrationName", "onDisappear"), StackFinishTransitioningEvent.EVENT_NAME, MapBuilder.of("registrationName", "onFinishTransitioning"));
    }
}
