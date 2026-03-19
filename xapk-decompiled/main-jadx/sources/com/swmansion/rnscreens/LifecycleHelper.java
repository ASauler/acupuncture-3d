package com.swmansion.rnscreens;

import android.view.View;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public class LifecycleHelper {
    private Map<View, Lifecycle> mViewToLifecycleMap = new HashMap();
    private View.OnLayoutChangeListener mRegisterOnLayoutChange = new View.OnLayoutChangeListener() { // from class: com.swmansion.rnscreens.LifecycleHelper.1
        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            LifecycleHelper.this.registerViewWithLifecycleOwner(view);
            view.removeOnLayoutChangeListener(this);
        }
    };

    @Nullable
    public static Fragment findNearestScreenFragmentAncestor(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && !(parent instanceof Screen)) {
            parent = parent.getParent();
        }
        if (parent != null) {
            return ((Screen) parent).getFragment();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public void registerViewWithLifecycleOwner(View view) {
        Fragment fragmentFindNearestScreenFragmentAncestor = findNearestScreenFragmentAncestor(view);
        if (fragmentFindNearestScreenFragmentAncestor == null || !(view instanceof LifecycleObserver)) {
            return;
        }
        Lifecycle lifecycle = fragmentFindNearestScreenFragmentAncestor.getLifecycle();
        lifecycle.addObserver((LifecycleObserver) view);
        this.mViewToLifecycleMap.put(view, lifecycle);
    }

    public <T extends View & LifecycleObserver> void register(T t) {
        t.addOnLayoutChangeListener(this.mRegisterOnLayoutChange);
    }

    public <T extends View & LifecycleObserver> void unregister(T t) {
        Lifecycle lifecycle = this.mViewToLifecycleMap.get(t);
        if (lifecycle != null) {
            lifecycle.removeObserver(t);
        }
    }
}
