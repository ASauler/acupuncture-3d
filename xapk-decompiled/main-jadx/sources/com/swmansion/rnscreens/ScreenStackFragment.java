package com.swmansion.rnscreens;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import com.facebook.react.uimanager.PixelUtil;
import com.google.android.material.appbar.AppBarLayout;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenStackFragment extends ScreenFragment {
    private static final float TOOLBAR_ELEVATION = PixelUtil.toPixelFromDIP(4.0f);
    private AppBarLayout mAppBarLayout;
    private boolean mIsTranslucent;
    private boolean mShadowHidden;
    private Toolbar mToolbar;

    private static class NotifyingCoordinatorLayout extends CoordinatorLayout {
        private Animation.AnimationListener mAnimationListener;
        private final ScreenFragment mFragment;

        public NotifyingCoordinatorLayout(Context context, ScreenFragment screenFragment) {
            super(context);
            this.mAnimationListener = new Animation.AnimationListener() { // from class: com.swmansion.rnscreens.ScreenStackFragment.NotifyingCoordinatorLayout.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    NotifyingCoordinatorLayout.this.mFragment.onViewAnimationStart();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    NotifyingCoordinatorLayout.this.mFragment.onViewAnimationEnd();
                }
            };
            this.mFragment = screenFragment;
        }

        @Override // android.view.View
        public void startAnimation(Animation animation) {
            AnimationSet animationSet = new AnimationSet(true);
            animationSet.addAnimation(animation);
            animationSet.setAnimationListener(this.mAnimationListener);
            super.startAnimation(animationSet);
        }
    }

    public ScreenStackFragment(Screen screen) {
        super(screen);
    }

    public ScreenStackFragment() {
        throw new IllegalStateException("ScreenStack fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity.");
    }

    public void removeToolbar() {
        Toolbar toolbar;
        if (this.mAppBarLayout != null && (toolbar = this.mToolbar) != null) {
            ViewParent parent = toolbar.getParent();
            AppBarLayout appBarLayout = this.mAppBarLayout;
            if (parent == appBarLayout) {
                appBarLayout.removeView(this.mToolbar);
            }
        }
        this.mToolbar = null;
    }

    public void setToolbar(Toolbar toolbar) {
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null) {
            appBarLayout.addView(toolbar);
        }
        this.mToolbar = toolbar;
        AppBarLayout.LayoutParams layoutParams = new AppBarLayout.LayoutParams(-1, -2);
        layoutParams.setScrollFlags(0);
        this.mToolbar.setLayoutParams(layoutParams);
    }

    public void setToolbarShadowHidden(boolean z) {
        if (this.mShadowHidden != z) {
            this.mAppBarLayout.setTargetElevation(z ? 0.0f : TOOLBAR_ELEVATION);
            this.mShadowHidden = z;
        }
    }

    public void setToolbarTranslucent(boolean z) {
        if (this.mIsTranslucent != z) {
            ((CoordinatorLayout.LayoutParams) this.mScreenView.getLayoutParams()).setBehavior(z ? null : new AppBarLayout.ScrollingViewBehavior());
            this.mIsTranslucent = z;
        }
    }

    @Override // com.swmansion.rnscreens.ScreenFragment
    public void onContainerUpdate() {
        ScreenStackHeaderConfig headerConfig = getScreen().getHeaderConfig();
        if (headerConfig != null) {
            headerConfig.onUpdate();
        }
    }

    @Override // com.swmansion.rnscreens.ScreenFragment
    public void onViewAnimationEnd() {
        super.onViewAnimationEnd();
        notifyViewAppearTransitionEnd();
    }

    @Override // androidx.fragment.app.Fragment
    public Animation onCreateAnimation(int i, boolean z, int i2) {
        if (i != 0 || isHidden()) {
            return null;
        }
        ScreenContainer container = getScreen().getContainer();
        boolean z2 = container != null && container.isNested();
        if (z) {
            if (z2) {
                return null;
            }
            dispatchOnWillAppear();
            dispatchOnAppear();
            return null;
        }
        if (!z2) {
            dispatchOnWillDisappear();
            dispatchOnDisappear();
        }
        notifyViewAppearTransitionEnd();
        return null;
    }

    private void notifyViewAppearTransitionEnd() {
        ViewParent parent = getView() != null ? getView().getParent() : null;
        if (parent instanceof ScreenStack) {
            ((ScreenStack) parent).onViewAppearTransitionEnd();
        }
    }

    @Override // com.swmansion.rnscreens.ScreenFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        NotifyingCoordinatorLayout notifyingCoordinatorLayout = new NotifyingCoordinatorLayout(getContext(), this);
        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(-1, -1);
        layoutParams.setBehavior(this.mIsTranslucent ? null : new AppBarLayout.ScrollingViewBehavior());
        this.mScreenView.setLayoutParams(layoutParams);
        notifyingCoordinatorLayout.addView(recycleView(this.mScreenView));
        AppBarLayout appBarLayout = new AppBarLayout(getContext());
        this.mAppBarLayout = appBarLayout;
        appBarLayout.setBackgroundColor(0);
        this.mAppBarLayout.setLayoutParams(new AppBarLayout.LayoutParams(-1, -2));
        notifyingCoordinatorLayout.addView(this.mAppBarLayout);
        if (this.mShadowHidden) {
            this.mAppBarLayout.setTargetElevation(0.0f);
        }
        Toolbar toolbar = this.mToolbar;
        if (toolbar != null) {
            this.mAppBarLayout.addView(recycleView(toolbar));
        }
        return notifyingCoordinatorLayout;
    }

    public boolean isDismissable() {
        return this.mScreenView.isGestureEnabled();
    }

    public boolean canNavigateBack() {
        ScreenContainer container = this.mScreenView.getContainer();
        if (container instanceof ScreenStack) {
            if (((ScreenStack) container).getRootScreen() != getScreen()) {
                return true;
            }
            Fragment parentFragment = getParentFragment();
            if (parentFragment instanceof ScreenStackFragment) {
                return ((ScreenStackFragment) parentFragment).canNavigateBack();
            }
            return false;
        }
        throw new IllegalStateException("ScreenStackFragment added into a non-stack container");
    }

    public void dismiss() {
        ScreenContainer container = this.mScreenView.getContainer();
        if (container instanceof ScreenStack) {
            ((ScreenStack) container).dismiss(this);
            return;
        }
        throw new IllegalStateException("ScreenStackFragment added into a non-stack container");
    }
}
