package com.luck.picture.lib.widget;

import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class MyViewPageHelper {
    MScroller scroller;
    ViewPager viewPager;

    public MyViewPageHelper(ViewPager viewPager) {
        this.viewPager = viewPager;
        init();
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public MScroller getScroller() {
        return this.scroller;
    }

    public void setCurrentItem(int i, boolean z) {
        if (Math.abs(this.viewPager.getCurrentItem() - i) > 1) {
            this.scroller.setNoDuration(true);
            this.viewPager.setCurrentItem(i, z);
            this.scroller.setNoDuration(false);
        } else {
            this.scroller.setNoDuration(false);
            this.viewPager.setCurrentItem(i, z);
        }
    }

    private void init() {
        this.scroller = new MScroller(this.viewPager.getContext());
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            declaredField.set(this.viewPager, this.scroller);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
