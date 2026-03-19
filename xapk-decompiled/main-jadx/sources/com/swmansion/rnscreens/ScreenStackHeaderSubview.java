package com.swmansion.rnscreens;

import android.view.View;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.views.view.ReactViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenStackHeaderSubview extends ReactViewGroup {
    private int mReactHeight;
    private int mReactWidth;
    private Type mType;

    public enum Type {
        LEFT,
        CENTER,
        RIGHT,
        BACK
    }

    @Override // com.facebook.react.views.view.ReactViewGroup, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // com.facebook.react.views.view.ReactViewGroup, android.view.View
    protected void onMeasure(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == 1073741824) {
            this.mReactWidth = View.MeasureSpec.getSize(i);
            this.mReactHeight = View.MeasureSpec.getSize(i2);
            Object parent = getParent();
            if (parent != null) {
                forceLayout();
                ((View) parent).requestLayout();
            }
        }
        setMeasuredDimension(this.mReactWidth, this.mReactHeight);
    }

    public ScreenStackHeaderSubview(ReactContext reactContext) {
        super(reactContext);
        this.mType = Type.RIGHT;
    }

    public void setType(Type type) {
        this.mType = type;
    }

    public Type getType() {
        return this.mType;
    }
}
