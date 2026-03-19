package com.swmansion.rnscreens;

import android.graphics.Paint;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.TextView;
import com.facebook.react.bridge.GuardedRunnable;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.uimanager.UIManagerModule;

/* JADX INFO: loaded from: classes2.dex */
public class Screen extends ViewGroup {
    private static View.OnAttachStateChangeListener sShowSoftKeyboardOnAttach = new View.OnAttachStateChangeListener() { // from class: com.swmansion.rnscreens.Screen.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
            view.removeOnAttachStateChangeListener(Screen.sShowSoftKeyboardOnAttach);
        }
    };
    private ActivityState mActivityState;
    private ScreenContainer mContainer;
    private ScreenFragment mFragment;
    private boolean mGestureEnabled;
    private ReplaceAnimation mReplaceAnimation;
    private StackAnimation mStackAnimation;
    private StackPresentation mStackPresentation;
    private boolean mTransitioning;

    public enum ActivityState {
        INACTIVE,
        TRANSITIONING_OR_BELOW_TOP,
        ON_TOP
    }

    public enum ReplaceAnimation {
        PUSH,
        POP
    }

    public enum StackAnimation {
        DEFAULT,
        NONE,
        FADE,
        SLIDE_FROM_RIGHT,
        SLIDE_FROM_LEFT
    }

    public enum StackPresentation {
        PUSH,
        MODAL,
        TRANSPARENT_MODAL
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
    }

    @Override // android.view.View
    public void setLayerType(int i, Paint paint) {
    }

    @Override // android.view.View
    protected void onAnimationStart() {
        super.onAnimationStart();
        ScreenFragment screenFragment = this.mFragment;
        if (screenFragment != null) {
            screenFragment.onViewAnimationStart();
        }
    }

    @Override // android.view.View
    protected void onAnimationEnd() {
        super.onAnimationEnd();
        ScreenFragment screenFragment = this.mFragment;
        if (screenFragment != null) {
            screenFragment.onViewAnimationEnd();
        }
    }

    public Screen(ReactContext reactContext) {
        super(reactContext);
        this.mStackPresentation = StackPresentation.PUSH;
        this.mReplaceAnimation = ReplaceAnimation.POP;
        this.mStackAnimation = StackAnimation.DEFAULT;
        this.mGestureEnabled = true;
        setLayoutParams(new WindowManager.LayoutParams(2));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            final int i5 = i3 - i;
            final int i6 = i4 - i2;
            final ReactContext reactContext = (ReactContext) getContext();
            reactContext.runOnNativeModulesQueueThread(new GuardedRunnable(reactContext) { // from class: com.swmansion.rnscreens.Screen.2
                @Override // com.facebook.react.bridge.GuardedRunnable
                public void runGuarded() {
                    ((UIManagerModule) reactContext.getNativeModule(UIManagerModule.class)).updateNodeSize(Screen.this.getId(), i5, i6);
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            while (focusedChild instanceof ViewGroup) {
                focusedChild = ((ViewGroup) focusedChild).getFocusedChild();
            }
            if (focusedChild instanceof TextView) {
                TextView textView = (TextView) focusedChild;
                if (textView.getShowSoftInputOnFocus()) {
                    textView.addOnAttachStateChangeListener(sShowSoftKeyboardOnAttach);
                }
            }
        }
    }

    protected ScreenStackHeaderConfig getHeaderConfig() {
        View childAt = getChildAt(0);
        if (childAt instanceof ScreenStackHeaderConfig) {
            return (ScreenStackHeaderConfig) childAt;
        }
        return null;
    }

    public void setTransitioning(boolean z) {
        if (this.mTransitioning == z) {
            return;
        }
        this.mTransitioning = z;
        boolean zHasWebView = hasWebView(this);
        if (!zHasWebView || getLayerType() == 2) {
            super.setLayerType((!z || zHasWebView) ? 0 : 2, null);
        }
    }

    private boolean hasWebView(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof WebView) {
                return true;
            }
            if ((childAt instanceof ViewGroup) && hasWebView((ViewGroup) childAt)) {
                return true;
            }
        }
        return false;
    }

    public void setStackPresentation(StackPresentation stackPresentation) {
        this.mStackPresentation = stackPresentation;
    }

    public void setStackAnimation(StackAnimation stackAnimation) {
        this.mStackAnimation = stackAnimation;
    }

    public void setReplaceAnimation(ReplaceAnimation replaceAnimation) {
        this.mReplaceAnimation = replaceAnimation;
    }

    public void setGestureEnabled(boolean z) {
        this.mGestureEnabled = z;
    }

    public StackAnimation getStackAnimation() {
        return this.mStackAnimation;
    }

    public ReplaceAnimation getReplaceAnimation() {
        return this.mReplaceAnimation;
    }

    public StackPresentation getStackPresentation() {
        return this.mStackPresentation;
    }

    protected void setContainer(ScreenContainer screenContainer) {
        this.mContainer = screenContainer;
    }

    protected void setFragment(ScreenFragment screenFragment) {
        this.mFragment = screenFragment;
    }

    protected ScreenFragment getFragment() {
        return this.mFragment;
    }

    protected ScreenContainer getContainer() {
        return this.mContainer;
    }

    public void setActivityState(ActivityState activityState) {
        if (activityState == this.mActivityState) {
            return;
        }
        this.mActivityState = activityState;
        ScreenContainer screenContainer = this.mContainer;
        if (screenContainer != null) {
            screenContainer.notifyChildUpdate();
        }
    }

    public ActivityState getActivityState() {
        return this.mActivityState;
    }

    public boolean isGestureEnabled() {
        return this.mGestureEnabled;
    }
}
