package com.swmansion.gesturehandler.react;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.react.bridge.SoftAssertions;
import com.facebook.react.uimanager.PixelUtil;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.uimanager.annotations.ReactProp;

/* JADX INFO: loaded from: classes2.dex */
public class RNGestureHandlerButtonViewManager extends ViewGroupManager<ButtonViewGroup> {
    @Override // com.facebook.react.uimanager.ViewManager, com.facebook.react.bridge.NativeModule
    public String getName() {
        return "RNGestureHandlerButton";
    }

    static class ButtonViewGroup extends ViewGroup {
        public static final String SELECTABLE_ITEM_BACKGROUND = "selectableItemBackground";
        public static final String SELECTABLE_ITEM_BACKGROUND_BORDERLESS = "selectableItemBackgroundBorderless";
        static ButtonViewGroup sResponder;
        int mBackgroundColor;
        float mBorderRadius;
        long mLastEventTime;
        boolean mNeedBackgroundUpdate;
        Integer mRippleColor;
        Integer mRippleRadius;
        boolean mUseBorderless;
        boolean mUseForeground;
        static TypedValue sResolveOutValue = new TypedValue();
        static View.OnClickListener sDummyClickListener = new View.OnClickListener() { // from class: com.swmansion.gesturehandler.react.RNGestureHandlerButtonViewManager.ButtonViewGroup.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        };

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDrawableHotspotChanged(float f, float f2) {
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        public ButtonViewGroup(Context context) {
            super(context);
            this.mBackgroundColor = 0;
            this.mUseForeground = false;
            this.mUseBorderless = false;
            this.mBorderRadius = 0.0f;
            this.mNeedBackgroundUpdate = false;
            this.mLastEventTime = 0L;
            setOnClickListener(sDummyClickListener);
            setClickable(true);
            setFocusable(true);
            this.mNeedBackgroundUpdate = true;
        }

        @Override // android.view.View
        public void setBackgroundColor(int i) {
            this.mBackgroundColor = i;
            this.mNeedBackgroundUpdate = true;
        }

        public void setRippleColor(Integer num) {
            this.mRippleColor = num;
            this.mNeedBackgroundUpdate = true;
        }

        public void setRippleRadius(Integer num) {
            this.mRippleRadius = num;
            this.mNeedBackgroundUpdate = true;
        }

        public void setBorderRadius(float f) {
            this.mBorderRadius = f * getResources().getDisplayMetrics().density;
            this.mNeedBackgroundUpdate = true;
        }

        private Drawable applyRippleEffectWhenNeeded(Drawable drawable) {
            if (this.mRippleColor != null && (drawable instanceof RippleDrawable)) {
                ((RippleDrawable) drawable).setColor(new ColorStateList(new int[][]{new int[]{android.R.attr.state_enabled}}, new int[]{this.mRippleColor.intValue()}));
            }
            if (this.mRippleRadius != null && (drawable instanceof RippleDrawable)) {
                ((RippleDrawable) drawable).setRadius((int) PixelUtil.toPixelFromDIP(r0.intValue()));
            }
            return drawable;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (super.onInterceptTouchEvent(motionEvent)) {
                return true;
            }
            onTouchEvent(motionEvent);
            return isPressed();
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime();
            long j = this.mLastEventTime;
            if (j == eventTime && j != 0) {
                return false;
            }
            this.mLastEventTime = eventTime;
            return super.onTouchEvent(motionEvent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateBackground() {
            if (this.mNeedBackgroundUpdate) {
                this.mNeedBackgroundUpdate = false;
                if (this.mBackgroundColor == 0) {
                    setBackground(null);
                }
                setForeground(null);
                if (this.mUseForeground) {
                    setForeground(applyRippleEffectWhenNeeded(createSelectableDrawable()));
                    int i = this.mBackgroundColor;
                    if (i != 0) {
                        setBackgroundColor(i);
                        return;
                    }
                    return;
                }
                if (this.mBackgroundColor == 0 && this.mRippleColor == null) {
                    setBackground(createSelectableDrawable());
                    return;
                }
                PaintDrawable paintDrawable = new PaintDrawable(this.mBackgroundColor);
                Drawable drawableCreateSelectableDrawable = createSelectableDrawable();
                float f = this.mBorderRadius;
                if (f != 0.0f) {
                    paintDrawable.setCornerRadius(f);
                    if (drawableCreateSelectableDrawable instanceof RippleDrawable) {
                        PaintDrawable paintDrawable2 = new PaintDrawable(-1);
                        paintDrawable2.setCornerRadius(this.mBorderRadius);
                        ((RippleDrawable) drawableCreateSelectableDrawable).setDrawableByLayerId(android.R.id.mask, paintDrawable2);
                    }
                }
                applyRippleEffectWhenNeeded(drawableCreateSelectableDrawable);
                setBackground(new LayerDrawable(new Drawable[]{paintDrawable, drawableCreateSelectableDrawable}));
            }
        }

        public void setUseDrawableOnForeground(boolean z) {
            this.mUseForeground = z;
            this.mNeedBackgroundUpdate = true;
        }

        public void setUseBorderlessDrawable(boolean z) {
            this.mUseBorderless = z;
        }

        private Drawable createSelectableDrawable() {
            getContext().getTheme().resolveAttribute(getAttrId(getContext(), this.mUseBorderless ? SELECTABLE_ITEM_BACKGROUND_BORDERLESS : SELECTABLE_ITEM_BACKGROUND), sResolveOutValue, true);
            return getResources().getDrawable(sResolveOutValue.resourceId, getContext().getTheme());
        }

        private static int getAttrId(Context context, String str) {
            SoftAssertions.assertNotNull(str);
            return SELECTABLE_ITEM_BACKGROUND.equals(str) ? android.R.attr.selectableItemBackground : SELECTABLE_ITEM_BACKGROUND_BORDERLESS.equals(str) ? android.R.attr.selectableItemBackgroundBorderless : context.getResources().getIdentifier(str, "attr", "android");
        }

        @Override // android.view.View
        public void drawableHotspotChanged(float f, float f2) {
            ButtonViewGroup buttonViewGroup = sResponder;
            if (buttonViewGroup == null || buttonViewGroup == this) {
                super.drawableHotspotChanged(f, f2);
            }
        }

        @Override // android.view.View
        public void setPressed(boolean z) {
            if (z && sResponder == null) {
                sResponder = this;
            }
            if (!z || sResponder == this) {
                super.setPressed(z);
            }
            if (z || sResponder != this) {
                return;
            }
            sResponder = null;
        }
    }

    @Override // com.facebook.react.uimanager.ViewManager
    public ButtonViewGroup createViewInstance(ThemedReactContext themedReactContext) {
        return new ButtonViewGroup(themedReactContext);
    }

    @ReactProp(name = "foreground")
    public void setForeground(ButtonViewGroup buttonViewGroup, boolean z) {
        buttonViewGroup.setUseDrawableOnForeground(z);
    }

    @ReactProp(name = "borderless")
    public void setBorderless(ButtonViewGroup buttonViewGroup, boolean z) {
        buttonViewGroup.setUseBorderlessDrawable(z);
    }

    @ReactProp(name = ViewProps.ENABLED)
    public void setEnabled(ButtonViewGroup buttonViewGroup, boolean z) {
        buttonViewGroup.setEnabled(z);
    }

    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.BaseViewManagerInterface
    @ReactProp(name = "borderRadius")
    public void setBorderRadius(ButtonViewGroup buttonViewGroup, float f) {
        buttonViewGroup.setBorderRadius(f);
    }

    @ReactProp(name = "rippleColor")
    public void setRippleColor(ButtonViewGroup buttonViewGroup, Integer num) {
        buttonViewGroup.setRippleColor(num);
    }

    @ReactProp(name = "rippleRadius")
    public void setRippleRadius(ButtonViewGroup buttonViewGroup, Integer num) {
        buttonViewGroup.setRippleRadius(num);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.react.uimanager.BaseViewManager, com.facebook.react.uimanager.ViewManager
    public void onAfterUpdateTransaction(ButtonViewGroup buttonViewGroup) {
        buttonViewGroup.updateBackground();
    }
}
