package com.swmansion.rnscreens;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import com.swmansion.rnscreens.Screen;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenStack extends ScreenContainer<ScreenStackFragment> {
    private static final String BACK_STACK_TAG = "RN_SCREEN_LAST";
    private final FragmentManager.OnBackStackChangedListener mBackStackListener;
    private final Set<ScreenStackFragment> mDismissed;
    private final FragmentManager.FragmentLifecycleCallbacks mLifecycleCallbacks;
    private boolean mRemovalTransitionStarted;
    private final ArrayList<ScreenStackFragment> mStack;
    private ScreenStackFragment mTopScreen;

    public ScreenStack(Context context) {
        super(context);
        this.mStack = new ArrayList<>();
        this.mDismissed = new HashSet();
        this.mTopScreen = null;
        this.mRemovalTransitionStarted = false;
        this.mBackStackListener = new FragmentManager.OnBackStackChangedListener() { // from class: com.swmansion.rnscreens.ScreenStack.1
            @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
            public void onBackStackChanged() {
                if (ScreenStack.this.mFragmentManager.getBackStackEntryCount() == 0) {
                    ScreenStack screenStack = ScreenStack.this;
                    screenStack.dismiss(screenStack.mTopScreen);
                }
            }
        };
        this.mLifecycleCallbacks = new FragmentManager.FragmentLifecycleCallbacks() { // from class: com.swmansion.rnscreens.ScreenStack.2
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
                if (ScreenStack.this.mTopScreen == fragment) {
                    ScreenStack screenStack = ScreenStack.this;
                    screenStack.setupBackHandlerIfNeeded(screenStack.mTopScreen);
                }
            }
        };
    }

    public void dismiss(ScreenStackFragment screenStackFragment) {
        this.mDismissed.add(screenStackFragment);
        markUpdated();
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    public Screen getTopScreen() {
        ScreenStackFragment screenStackFragment = this.mTopScreen;
        if (screenStackFragment != null) {
            return screenStackFragment.getScreen();
        }
        return null;
    }

    public Screen getRootScreen() {
        int screenCount = getScreenCount();
        for (int i = 0; i < screenCount; i++) {
            Screen screenAt = getScreenAt(i);
            if (!this.mDismissed.contains(screenAt.getFragment())) {
                return screenAt;
            }
        }
        throw new IllegalStateException("Stack has no root screen set");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.swmansion.rnscreens.ScreenContainer
    public ScreenStackFragment adapt(Screen screen) {
        return new ScreenStackFragment(screen);
    }

    @Override // com.swmansion.rnscreens.ScreenContainer, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (this.mFragmentManager != null) {
            this.mFragmentManager.removeOnBackStackChangedListener(this.mBackStackListener);
            this.mFragmentManager.unregisterFragmentLifecycleCallbacks(this.mLifecycleCallbacks);
            if (!this.mFragmentManager.isStateSaved() && !this.mFragmentManager.isDestroyed()) {
                this.mFragmentManager.popBackStack(BACK_STACK_TAG, 1);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // com.swmansion.rnscreens.ScreenContainer, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFragmentManager.registerFragmentLifecycleCallbacks(this.mLifecycleCallbacks, false);
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(View view) {
        super.startViewTransition(view);
        this.mRemovalTransitionStarted = true;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(View view) {
        super.endViewTransition(view);
        if (this.mRemovalTransitionStarted) {
            this.mRemovalTransitionStarted = false;
            dispatchOnFinishTransitioning();
        }
    }

    public void onViewAppearTransitionEnd() {
        if (this.mRemovalTransitionStarted) {
            return;
        }
        dispatchOnFinishTransitioning();
    }

    private void dispatchOnFinishTransitioning() {
        ((UIManagerModule) ((ReactContext) getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new StackFinishTransitioningEvent(getId()));
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    protected void removeScreenAt(int i) {
        this.mDismissed.remove(getScreenAt(i).getFragment());
        super.removeScreenAt(i);
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    protected void removeAllScreens() {
        this.mDismissed.clear();
        super.removeAllScreens();
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    protected boolean hasScreen(ScreenFragment screenFragment) {
        return super.hasScreen(screenFragment) && !this.mDismissed.contains(screenFragment);
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    protected void performUpdate() {
        boolean z = true;
        int size = this.mScreenFragments.size() - 1;
        ScreenStackFragment screenStackFragment = null;
        final ScreenStackFragment screenStackFragment2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            ScreenStackFragment screenStackFragment3 = (ScreenStackFragment) this.mScreenFragments.get(size);
            if (!this.mDismissed.contains(screenStackFragment3)) {
                if (screenStackFragment2 != null) {
                    screenStackFragment = screenStackFragment3;
                    break;
                } else {
                    if (screenStackFragment3.getScreen().getStackPresentation() != Screen.StackPresentation.TRANSPARENT_MODAL) {
                        screenStackFragment2 = screenStackFragment3;
                        break;
                    }
                    screenStackFragment2 = screenStackFragment3;
                }
            }
            size--;
        }
        boolean zContains = this.mStack.contains(screenStackFragment2);
        int i = FragmentTransaction.TRANSIT_FRAGMENT_FADE;
        if (!zContains) {
            if (this.mTopScreen != null && screenStackFragment2 != null) {
                int i2 = (this.mScreenFragments.contains(this.mTopScreen) || screenStackFragment2.getScreen().getReplaceAnimation() != Screen.ReplaceAnimation.POP) ? FragmentTransaction.TRANSIT_FRAGMENT_OPEN : 8194;
                int i3 = AnonymousClass4.$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation[screenStackFragment2.getScreen().getStackAnimation().ordinal()];
                if (i3 == 1) {
                    z = false;
                    i = 0;
                } else if (i3 == 2) {
                    z = false;
                } else {
                    if (i3 == 3) {
                        getOrCreateTransaction().setCustomAnimations(R.anim.rns_slide_in_from_right, R.anim.rns_slide_out_to_left);
                    } else if (i3 != 4) {
                        i = i2;
                        z = false;
                    } else {
                        getOrCreateTransaction().setCustomAnimations(R.anim.rns_slide_in_from_left, R.anim.rns_slide_out_to_right);
                    }
                    i = i2;
                }
                if (!z) {
                    getOrCreateTransaction().setTransition(i);
                }
            }
        } else {
            ScreenStackFragment screenStackFragment4 = this.mTopScreen;
            if (screenStackFragment4 != null && !screenStackFragment4.equals(screenStackFragment2)) {
                int i4 = AnonymousClass4.$SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation[this.mTopScreen.getScreen().getStackAnimation().ordinal()];
                if (i4 == 1) {
                    z = false;
                    i = 0;
                } else if (i4 == 2) {
                    z = false;
                } else {
                    if (i4 == 3) {
                        getOrCreateTransaction().setCustomAnimations(R.anim.rns_slide_in_from_left, R.anim.rns_slide_out_to_right);
                    } else if (i4 != 4) {
                        i = 8194;
                        z = false;
                    } else {
                        getOrCreateTransaction().setCustomAnimations(R.anim.rns_slide_in_from_right, R.anim.rns_slide_out_to_left);
                    }
                    i = 8194;
                }
                if (!z) {
                    getOrCreateTransaction().setTransition(i);
                }
            }
        }
        for (ScreenStackFragment screenStackFragment5 : this.mStack) {
            if (!this.mScreenFragments.contains(screenStackFragment5) || this.mDismissed.contains(screenStackFragment5)) {
                getOrCreateTransaction().remove(screenStackFragment5);
            }
        }
        for (T t : this.mScreenFragments) {
            if (t != screenStackFragment2 && t != screenStackFragment && !this.mDismissed.contains(t)) {
                getOrCreateTransaction().remove(t);
            }
        }
        if (screenStackFragment != null && !screenStackFragment.isAdded()) {
            getOrCreateTransaction().add(getId(), screenStackFragment).runOnCommit(new Runnable() { // from class: com.swmansion.rnscreens.ScreenStack.3
                @Override // java.lang.Runnable
                public void run() {
                    screenStackFragment2.getScreen().bringToFront();
                }
            });
        }
        if (screenStackFragment2 != null && !screenStackFragment2.isAdded()) {
            getOrCreateTransaction().add(getId(), screenStackFragment2);
        }
        this.mTopScreen = screenStackFragment2;
        this.mStack.clear();
        this.mStack.addAll(this.mScreenFragments);
        tryCommitTransaction();
        ScreenStackFragment screenStackFragment6 = this.mTopScreen;
        if (screenStackFragment6 != null) {
            setupBackHandlerIfNeeded(screenStackFragment6);
        }
    }

    /* JADX INFO: renamed from: com.swmansion.rnscreens.ScreenStack$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation;

        static {
            int[] iArr = new int[Screen.StackAnimation.values().length];
            $SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation = iArr;
            try {
                iArr[Screen.StackAnimation.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation[Screen.StackAnimation.FADE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation[Screen.StackAnimation.SLIDE_FROM_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$swmansion$rnscreens$Screen$StackAnimation[Screen.StackAnimation.SLIDE_FROM_LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.swmansion.rnscreens.ScreenContainer
    protected void notifyContainerUpdate() {
        Iterator<ScreenStackFragment> it = this.mStack.iterator();
        while (it.hasNext()) {
            it.next().onContainerUpdate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupBackHandlerIfNeeded(ScreenStackFragment screenStackFragment) {
        ScreenStackFragment screenStackFragment2;
        if (this.mTopScreen.isResumed()) {
            this.mFragmentManager.removeOnBackStackChangedListener(this.mBackStackListener);
            this.mFragmentManager.popBackStack(BACK_STACK_TAG, 1);
            int size = this.mStack.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    screenStackFragment2 = null;
                    break;
                }
                screenStackFragment2 = this.mStack.get(i);
                if (!this.mDismissed.contains(screenStackFragment2)) {
                    break;
                } else {
                    i++;
                }
            }
            if (screenStackFragment == screenStackFragment2 || !screenStackFragment.isDismissable()) {
                return;
            }
            this.mFragmentManager.beginTransaction().show(screenStackFragment).addToBackStack(BACK_STACK_TAG).setPrimaryNavigationFragment(screenStackFragment).commitAllowingStateLoss();
            this.mFragmentManager.addOnBackStackChangedListener(this.mBackStackListener);
        }
    }
}
