package com.reactnativecommunity.viewpager;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* JADX INFO: loaded from: classes2.dex */
public class VerticalViewPager extends ViewPager {
    private GestureDetector mGestureDetector;
    private boolean mVertical;

    public VerticalViewPager(Context context) {
        super(context);
        this.mVertical = false;
    }

    public void setOrientation(boolean z) {
        this.mVertical = z;
        if (z) {
            setPageTransformer(true, new VerticalPageTransformer());
            this.mGestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.reactnativecommunity.viewpager.VerticalViewPager.1
                @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                    return Math.abs(f2) > Math.abs(f);
                }
            });
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean canScrollHorizontally(int i) {
        return !canScrollVertically(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.mVertical;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean zOnInterceptTouchEvent = super.onInterceptTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        if (this.mVertical && this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        return zOnInterceptTouchEvent;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(flipXY(motionEvent));
        flipXY(motionEvent);
        if (this.mVertical && this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        return zOnTouchEvent;
    }

    private MotionEvent flipXY(MotionEvent motionEvent) {
        if (this.mVertical) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
        }
        return motionEvent;
    }

    private static final class VerticalPageTransformer implements ViewPager.PageTransformer {
        private VerticalPageTransformer() {
        }

        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float f) {
            int width = view.getWidth();
            int height = view.getHeight();
            if (f < -1.0f) {
                view.setAlpha(0.0f);
            } else {
                if (f <= 1.0f) {
                    view.setAlpha(1.0f);
                    view.setTranslationX(width * (-f));
                    view.setTranslationY(f * height);
                    return;
                }
                view.setAlpha(0.0f);
            }
        }
    }
}
