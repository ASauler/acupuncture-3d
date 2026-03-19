package com.th3rdwave.safeareacontext;

import android.content.Context;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.facebook.infer.annotation.Assertions;
import com.facebook.react.views.view.ReactViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class SafeAreaView extends ReactViewGroup implements ViewTreeObserver.OnGlobalLayoutListener {
    private OnInsetsChangeListener mInsetsChangeListener;
    private EdgeInsets mLastInsets;
    private final WindowManager mWindowManager;

    public interface OnInsetsChangeListener {
        void onInsetsChange(SafeAreaView safeAreaView, EdgeInsets edgeInsets);
    }

    public SafeAreaView(Context context, WindowManager windowManager) {
        super(context);
        this.mWindowManager = (WindowManager) context.getSystemService("window");
    }

    private void maybeUpdateInsets() {
        EdgeInsets safeAreaInsets = SafeAreaUtils.getSafeAreaInsets(this.mWindowManager, getRootView());
        if (safeAreaInsets != null) {
            EdgeInsets edgeInsets = this.mLastInsets;
            if (edgeInsets == null || !edgeInsets.equalsToEdgeInsets(safeAreaInsets)) {
                ((OnInsetsChangeListener) Assertions.assertNotNull(this.mInsetsChangeListener)).onInsetsChange(this, safeAreaInsets);
                this.mLastInsets = safeAreaInsets;
            }
        }
    }

    @Override // com.facebook.react.views.view.ReactViewGroup, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        maybeUpdateInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        maybeUpdateInsets();
    }

    public void setOnInsetsChangeListener(OnInsetsChangeListener onInsetsChangeListener) {
        this.mInsetsChangeListener = onInsetsChangeListener;
    }
}
