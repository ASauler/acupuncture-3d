package com.swmansion.rnscreens;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenFragment extends Fragment {
    private List<ScreenContainer> mChildScreenContainers = new ArrayList();
    protected Screen mScreenView;

    protected static View recycleView(View view) {
        ViewParent parent = view.getParent();
        if (parent != null) {
            ViewGroup viewGroup = (ViewGroup) parent;
            viewGroup.endViewTransition(view);
            viewGroup.removeView(view);
        }
        view.setVisibility(0);
        return view;
    }

    public ScreenFragment() {
        throw new IllegalStateException("Screen fragments should never be restored. Follow instructions from https://github.com/software-mansion/react-native-screens/issues/17#issuecomment-424704067 to properly configure your main activity.");
    }

    public ScreenFragment(Screen screen) {
        this.mScreenView = screen;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mScreenView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.addView(recycleView(this.mScreenView));
        return frameLayout;
    }

    public Screen getScreen() {
        return this.mScreenView;
    }

    public void onContainerUpdate() {
        ScreenStackHeaderConfig screenStackHeaderConfigFindHeaderConfig;
        if (hasChildScreenWithConfig(getScreen()) || (screenStackHeaderConfigFindHeaderConfig = findHeaderConfig()) == null || screenStackHeaderConfigFindHeaderConfig.getScreenFragment().getActivity() == null) {
            return;
        }
        screenStackHeaderConfigFindHeaderConfig.getScreenFragment().getActivity().setRequestedOrientation(screenStackHeaderConfigFindHeaderConfig.getScreenOrientation());
    }

    private ScreenStackHeaderConfig findHeaderConfig() {
        ScreenStackHeaderConfig headerConfig;
        for (ViewParent container = getScreen().getContainer(); container != null; container = container.getParent()) {
            if ((container instanceof Screen) && (headerConfig = ((Screen) container).getHeaderConfig()) != null) {
                return headerConfig;
            }
        }
        return null;
    }

    protected boolean hasChildScreenWithConfig(Screen screen) {
        if (screen == null) {
            return false;
        }
        Iterator<ScreenContainer> it = screen.getFragment().getChildScreenContainers().iterator();
        while (it.hasNext()) {
            Screen topScreen = it.next().getTopScreen();
            if ((topScreen != null ? topScreen.getHeaderConfig() : null) != null || hasChildScreenWithConfig(topScreen)) {
                return true;
            }
        }
        return false;
    }

    public List<ScreenContainer> getChildScreenContainers() {
        return this.mChildScreenContainers;
    }

    protected void dispatchOnWillAppear() {
        ((UIManagerModule) ((ReactContext) this.mScreenView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new ScreenWillAppearEvent(this.mScreenView.getId()));
        for (ScreenContainer screenContainer : this.mChildScreenContainers) {
            if (screenContainer.getScreenCount() > 0) {
                screenContainer.getScreenAt(screenContainer.getScreenCount() - 1).getFragment().dispatchOnWillAppear();
            }
        }
    }

    protected void dispatchOnAppear() {
        ((UIManagerModule) ((ReactContext) this.mScreenView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new ScreenAppearEvent(this.mScreenView.getId()));
        for (ScreenContainer screenContainer : this.mChildScreenContainers) {
            if (screenContainer.getScreenCount() > 0) {
                screenContainer.getScreenAt(screenContainer.getScreenCount() - 1).getFragment().dispatchOnAppear();
            }
        }
    }

    protected void dispatchOnWillDisappear() {
        ((UIManagerModule) ((ReactContext) this.mScreenView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new ScreenWillDisappearEvent(this.mScreenView.getId()));
        for (ScreenContainer screenContainer : this.mChildScreenContainers) {
            if (screenContainer.getScreenCount() > 0) {
                screenContainer.getScreenAt(screenContainer.getScreenCount() - 1).getFragment().dispatchOnWillDisappear();
            }
        }
    }

    protected void dispatchOnDisappear() {
        ((UIManagerModule) ((ReactContext) this.mScreenView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new ScreenDisappearEvent(this.mScreenView.getId()));
        for (ScreenContainer screenContainer : this.mChildScreenContainers) {
            if (screenContainer.getScreenCount() > 0) {
                screenContainer.getScreenAt(screenContainer.getScreenCount() - 1).getFragment().dispatchOnDisappear();
            }
        }
    }

    public void registerChildScreenContainer(ScreenContainer screenContainer) {
        this.mChildScreenContainers.add(screenContainer);
    }

    public void unregisterChildScreenContainer(ScreenContainer screenContainer) {
        this.mChildScreenContainers.remove(screenContainer);
    }

    public void onViewAnimationStart() {
        if (isResumed()) {
            dispatchOnWillAppear();
        } else {
            dispatchOnWillDisappear();
        }
    }

    public void onViewAnimationEnd() {
        if (isResumed()) {
            dispatchOnAppear();
        } else {
            dispatchOnDisappear();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ScreenContainer container = this.mScreenView.getContainer();
        if (container == null || !container.hasScreen(this)) {
            ((UIManagerModule) ((ReactContext) this.mScreenView.getContext()).getNativeModule(UIManagerModule.class)).getEventDispatcher().dispatchEvent(new ScreenDismissedEvent(this.mScreenView.getId()));
        }
        this.mChildScreenContainers.clear();
    }
}
