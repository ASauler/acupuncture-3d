package com.swmansion.rnscreens;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.react.ReactRootView;
import com.facebook.react.modules.core.ChoreographerCompat;
import com.facebook.react.modules.core.ReactChoreographer;
import com.swmansion.rnscreens.Screen;
import com.swmansion.rnscreens.ScreenFragment;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenContainer<T extends ScreenFragment> extends ViewGroup {
    private FragmentTransaction mCurrentTransaction;
    protected FragmentManager mFragmentManager;
    private final ChoreographerCompat.FrameCallback mFrameCallback;
    private boolean mIsAttached;
    private final ChoreographerCompat.FrameCallback mLayoutCallback;
    private boolean mLayoutEnqueued;
    private boolean mNeedUpdate;
    private ScreenFragment mParentScreenFragment;
    private FragmentTransaction mProcessingTransaction;
    protected final ArrayList<T> mScreenFragments;

    public ScreenContainer(Context context) {
        super(context);
        this.mScreenFragments = new ArrayList<>();
        this.mLayoutEnqueued = false;
        this.mParentScreenFragment = null;
        this.mFrameCallback = new ChoreographerCompat.FrameCallback() { // from class: com.swmansion.rnscreens.ScreenContainer.1
            @Override // com.facebook.react.modules.core.ChoreographerCompat.FrameCallback
            public void doFrame(long j) {
                ScreenContainer.this.updateIfNeeded();
            }
        };
        this.mLayoutCallback = new ChoreographerCompat.FrameCallback() { // from class: com.swmansion.rnscreens.ScreenContainer.2
            @Override // com.facebook.react.modules.core.ChoreographerCompat.FrameCallback
            public void doFrame(long j) {
                ScreenContainer.this.mLayoutEnqueued = false;
                ScreenContainer screenContainer = ScreenContainer.this;
                screenContainer.measure(View.MeasureSpec.makeMeasureSpec(screenContainer.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(ScreenContainer.this.getHeight(), 1073741824));
                ScreenContainer screenContainer2 = ScreenContainer.this;
                screenContainer2.layout(screenContainer2.getLeft(), ScreenContainer.this.getTop(), ScreenContainer.this.getRight(), ScreenContainer.this.getBottom());
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (view == getFocusedChild()) {
            ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 2);
        }
        super.removeView(view);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        if (this.mLayoutEnqueued || this.mLayoutCallback == null) {
            return;
        }
        this.mLayoutEnqueued = true;
        ReactChoreographer.getInstance().postFrameCallback(ReactChoreographer.CallbackType.NATIVE_ANIMATED_MODULE, this.mLayoutCallback);
    }

    public boolean isNested() {
        return this.mParentScreenFragment != null;
    }

    protected void markUpdated() {
        if (this.mNeedUpdate) {
            return;
        }
        this.mNeedUpdate = true;
        ReactChoreographer.getInstance().postFrameCallback(ReactChoreographer.CallbackType.NATIVE_ANIMATED_MODULE, this.mFrameCallback);
    }

    protected void notifyChildUpdate() {
        markUpdated();
    }

    protected T adapt(Screen screen) {
        return (T) new ScreenFragment(screen);
    }

    protected void addScreen(Screen screen, int i) {
        ScreenFragment screenFragmentAdapt = adapt(screen);
        screen.setFragment(screenFragmentAdapt);
        this.mScreenFragments.add(i, (T) screenFragmentAdapt);
        screen.setContainer(this);
        markUpdated();
    }

    protected void removeScreenAt(int i) {
        this.mScreenFragments.get(i).getScreen().setContainer(null);
        this.mScreenFragments.remove(i);
        markUpdated();
    }

    protected void removeAllScreens() {
        Iterator<T> it = this.mScreenFragments.iterator();
        while (it.hasNext()) {
            it.next().getScreen().setContainer(null);
        }
        this.mScreenFragments.clear();
        markUpdated();
    }

    protected int getScreenCount() {
        return this.mScreenFragments.size();
    }

    protected Screen getScreenAt(int i) {
        return this.mScreenFragments.get(i).getScreen();
    }

    public Screen getTopScreen() {
        for (T t : this.mScreenFragments) {
            if (getActivityState(t) == Screen.ActivityState.ON_TOP) {
                return t.getScreen();
            }
        }
        return null;
    }

    private void setFragmentManager(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
        updateIfNeeded();
    }

    private void setupFragmentManager() {
        boolean z;
        boolean z2;
        ViewParent parent = this;
        while (true) {
            z = parent instanceof ReactRootView;
            if (z || (parent instanceof Screen) || parent.getParent() == null) {
                break;
            } else {
                parent = parent.getParent();
            }
        }
        if (parent instanceof Screen) {
            ScreenFragment fragment = ((Screen) parent).getFragment();
            setFragmentManager(fragment.getChildFragmentManager());
            this.mParentScreenFragment = fragment;
            fragment.registerChildScreenContainer(this);
            return;
        }
        if (!z) {
            throw new IllegalStateException("ScreenContainer is not attached under ReactRootView");
        }
        Context context = ((ReactRootView) parent).getContext();
        while (true) {
            z2 = context instanceof FragmentActivity;
            if (z2 || !(context instanceof ContextWrapper)) {
                break;
            } else {
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        if (!z2) {
            throw new IllegalStateException("In order to use RNScreens components your app's activity need to extend ReactFragmentActivity or ReactCompatActivity");
        }
        setFragmentManager(((FragmentActivity) context).getSupportFragmentManager());
    }

    protected FragmentTransaction getOrCreateTransaction() {
        if (this.mCurrentTransaction == null) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.mFragmentManager.beginTransaction();
            this.mCurrentTransaction = fragmentTransactionBeginTransaction;
            fragmentTransactionBeginTransaction.setReorderingAllowed(true);
        }
        return this.mCurrentTransaction;
    }

    protected void tryCommitTransaction() {
        final FragmentTransaction fragmentTransaction = this.mCurrentTransaction;
        if (fragmentTransaction != null) {
            this.mProcessingTransaction = fragmentTransaction;
            fragmentTransaction.runOnCommit(new Runnable() { // from class: com.swmansion.rnscreens.ScreenContainer.3
                @Override // java.lang.Runnable
                public void run() {
                    if (ScreenContainer.this.mProcessingTransaction == fragmentTransaction) {
                        ScreenContainer.this.mProcessingTransaction = null;
                    }
                }
            });
            this.mCurrentTransaction.commitAllowingStateLoss();
            this.mCurrentTransaction = null;
        }
    }

    private void attachScreen(ScreenFragment screenFragment) {
        getOrCreateTransaction().add(getId(), screenFragment);
    }

    private void moveToFront(ScreenFragment screenFragment) {
        FragmentTransaction orCreateTransaction = getOrCreateTransaction();
        orCreateTransaction.remove(screenFragment);
        orCreateTransaction.add(getId(), screenFragment);
    }

    private void detachScreen(ScreenFragment screenFragment) {
        getOrCreateTransaction().remove(screenFragment);
    }

    protected Screen.ActivityState getActivityState(ScreenFragment screenFragment) {
        return screenFragment.getScreen().getActivityState();
    }

    protected boolean hasScreen(ScreenFragment screenFragment) {
        return this.mScreenFragments.contains(screenFragment);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttached = true;
        this.mNeedUpdate = true;
        setupFragmentManager();
    }

    private void removeMyFragments() {
        FragmentTransaction fragmentTransactionBeginTransaction = this.mFragmentManager.beginTransaction();
        boolean z = false;
        for (Fragment fragment : this.mFragmentManager.getFragments()) {
            if ((fragment instanceof ScreenFragment) && ((ScreenFragment) fragment).mScreenView.getContainer() == this) {
                fragmentTransactionBeginTransaction.remove(fragment);
                z = true;
            }
        }
        if (z) {
            fragmentTransactionBeginTransaction.commitNowAllowingStateLoss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        FragmentManager fragmentManager = this.mFragmentManager;
        if (fragmentManager != null && !fragmentManager.isDestroyed()) {
            removeMyFragments();
            this.mFragmentManager.executePendingTransactions();
        }
        ScreenFragment screenFragment = this.mParentScreenFragment;
        if (screenFragment != null) {
            screenFragment.unregisterChildScreenContainer(this);
            this.mParentScreenFragment = null;
        }
        super.onDetachedFromWindow();
        this.mIsAttached = false;
        removeAllViews();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            getChildAt(i3).measure(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIfNeeded() {
        if (this.mNeedUpdate && this.mIsAttached && this.mFragmentManager != null) {
            this.mNeedUpdate = false;
            onUpdate();
        }
    }

    private final void onUpdate() {
        this.mFragmentManager.executePendingTransactions();
        performUpdate();
        notifyContainerUpdate();
    }

    protected void performUpdate() {
        HashSet hashSet = new HashSet(this.mFragmentManager.getFragments());
        for (T t : this.mScreenFragments) {
            if (getActivityState(t) == Screen.ActivityState.INACTIVE && t.isAdded()) {
                detachScreen(t);
            }
            hashSet.remove(t);
        }
        boolean z = false;
        if (!hashSet.isEmpty()) {
            Object[] array = hashSet.toArray();
            for (int i = 0; i < array.length; i++) {
                Object obj = array[i];
                if ((obj instanceof ScreenFragment) && ((ScreenFragment) obj).getScreen().getContainer() == null) {
                    detachScreen((ScreenFragment) array[i]);
                }
            }
        }
        boolean z2 = getTopScreen() == null;
        for (T t2 : this.mScreenFragments) {
            Screen.ActivityState activityState = getActivityState(t2);
            if (activityState != Screen.ActivityState.INACTIVE && !t2.isAdded()) {
                attachScreen(t2);
                z = true;
            } else if (activityState != Screen.ActivityState.INACTIVE && z) {
                moveToFront(t2);
            }
            t2.getScreen().setTransitioning(z2);
        }
        tryCommitTransaction();
    }

    protected void notifyContainerUpdate() {
        Screen topScreen = getTopScreen();
        if (topScreen != null) {
            topScreen.getFragment().onContainerUpdate();
        }
    }
}
