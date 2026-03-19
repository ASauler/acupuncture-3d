package com.swmansion.gesturehandler.react;

import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.facebook.react.ReactRootView;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.UiThreadUtil;
import com.facebook.react.common.ReactConstants;
import com.facebook.react.views.modal.RNGHModalUtils;
import com.swmansion.gesturehandler.GestureHandler;
import com.swmansion.gesturehandler.GestureHandlerOrchestrator;

/* JADX INFO: loaded from: classes2.dex */
public class RNGestureHandlerRootHelper {
    private static final float MIN_ALPHA_FOR_TOUCH = 0.1f;
    private final ReactContext mContext;
    private final GestureHandler mJSGestureHandler;
    private final GestureHandlerOrchestrator mOrchestrator;
    private final ViewGroup mRootView;
    private boolean mShouldIntercept = false;
    private boolean mPassingTouch = false;

    private static ViewGroup findRootViewTag(ViewGroup viewGroup) {
        UiThreadUtil.assertOnUiThread();
        ViewParent parent = viewGroup;
        while (parent != null && !(parent instanceof ReactRootView) && !RNGHModalUtils.isDialogRootViewGroup(parent)) {
            parent = parent.getParent();
        }
        if (parent == null) {
            throw new IllegalStateException("View " + viewGroup + " has not been mounted under ReactRootView");
        }
        return (ViewGroup) parent;
    }

    public RNGestureHandlerRootHelper(ReactContext reactContext, ViewGroup viewGroup) {
        UiThreadUtil.assertOnUiThread();
        int id = viewGroup.getId();
        if (id < 1) {
            throw new IllegalStateException("Expect view tag to be set for " + viewGroup);
        }
        RNGestureHandlerModule rNGestureHandlerModule = (RNGestureHandlerModule) reactContext.getNativeModule(RNGestureHandlerModule.class);
        RNGestureHandlerRegistry registry = rNGestureHandlerModule.getRegistry();
        ViewGroup viewGroupFindRootViewTag = findRootViewTag(viewGroup);
        this.mRootView = viewGroupFindRootViewTag;
        Log.i(ReactConstants.TAG, "[GESTURE HANDLER] Initialize gesture handler for root view " + viewGroupFindRootViewTag);
        this.mContext = reactContext;
        GestureHandlerOrchestrator gestureHandlerOrchestrator = new GestureHandlerOrchestrator(viewGroup, registry, new RNViewConfigurationHelper());
        this.mOrchestrator = gestureHandlerOrchestrator;
        gestureHandlerOrchestrator.setMinimumAlphaForTraversal(0.1f);
        RootViewGestureHandler rootViewGestureHandler = new RootViewGestureHandler();
        this.mJSGestureHandler = rootViewGestureHandler;
        rootViewGestureHandler.setTag(-id);
        registry.registerHandler(rootViewGestureHandler);
        registry.attachHandlerToView(rootViewGestureHandler.getTag(), id);
        rNGestureHandlerModule.registerRootHelper(this);
    }

    public void tearDown() {
        Log.i(ReactConstants.TAG, "[GESTURE HANDLER] Tearing down gesture handler registered for root view " + this.mRootView);
        RNGestureHandlerModule rNGestureHandlerModule = (RNGestureHandlerModule) this.mContext.getNativeModule(RNGestureHandlerModule.class);
        rNGestureHandlerModule.getRegistry().dropHandler(this.mJSGestureHandler.getTag());
        rNGestureHandlerModule.unregisterRootHelper(this);
    }

    public ViewGroup getRootView() {
        return this.mRootView;
    }

    private class RootViewGestureHandler extends GestureHandler {
        private RootViewGestureHandler() {
        }

        @Override // com.swmansion.gesturehandler.GestureHandler
        protected void onHandle(MotionEvent motionEvent) {
            if (getState() == 0) {
                begin();
                RNGestureHandlerRootHelper.this.mShouldIntercept = false;
            }
            if (motionEvent.getActionMasked() == 1) {
                end();
            }
        }

        @Override // com.swmansion.gesturehandler.GestureHandler
        protected void onCancel() {
            RNGestureHandlerRootHelper.this.mShouldIntercept = true;
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            motionEventObtain.setAction(3);
            if (RNGestureHandlerRootHelper.this.mRootView instanceof ReactRootView) {
                ((ReactRootView) RNGestureHandlerRootHelper.this.mRootView).onChildStartedNativeGesture(motionEventObtain);
            } else {
                RNGHModalUtils.dialogRootViewGroupOnChildStartedNativeGesture(RNGestureHandlerRootHelper.this.mRootView, motionEventObtain);
            }
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (this.mOrchestrator == null || this.mPassingTouch) {
            return;
        }
        tryCancelAllHandlers();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        this.mPassingTouch = true;
        this.mOrchestrator.onTouchEvent(motionEvent);
        this.mPassingTouch = false;
        return this.mShouldIntercept;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryCancelAllHandlers() {
        GestureHandler gestureHandler = this.mJSGestureHandler;
        if (gestureHandler == null || gestureHandler.getState() != 2) {
            return;
        }
        this.mJSGestureHandler.activate();
        this.mJSGestureHandler.end();
    }

    void handleSetJSResponder(int i, boolean z) {
        if (z) {
            UiThreadUtil.runOnUiThread(new Runnable() { // from class: com.swmansion.gesturehandler.react.RNGestureHandlerRootHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    RNGestureHandlerRootHelper.this.tryCancelAllHandlers();
                }
            });
        }
    }
}
