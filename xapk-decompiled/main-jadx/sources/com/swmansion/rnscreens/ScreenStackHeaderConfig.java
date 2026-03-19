package com.swmansion.rnscreens;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.fragment.app.Fragment;
import com.facebook.react.ReactApplication;
import com.facebook.react.bridge.JSApplicationIllegalArgumentException;
import com.facebook.react.views.text.ReactFontManager;
import com.swmansion.rnscreens.ScreenStackHeaderSubview;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ScreenStackHeaderConfig extends ViewGroup {
    private boolean mBackButtonInCustomView;
    private View.OnClickListener mBackClickListener;
    private Integer mBackgroundColor;
    private final ArrayList<ScreenStackHeaderSubview> mConfigSubviews;
    private int mDefaultStartInset;
    private int mDefaultStartInsetWithNavigation;
    private boolean mDestroyed;
    private String mDirection;
    private boolean mIsAttachedToWindow;
    private boolean mIsBackButtonHidden;
    private boolean mIsHidden;
    private boolean mIsShadowHidden;
    private boolean mIsTopInsetEnabled;
    private boolean mIsTranslucent;
    private int mScreenOrientation;
    private int mTintColor;
    private String mTitle;
    private int mTitleColor;
    private String mTitleFontFamily;
    private float mTitleFontSize;
    private final Toolbar mToolbar;

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    private static class DebugMenuToolbar extends Toolbar {
        public DebugMenuToolbar(Context context) {
            super(context);
        }

        @Override // androidx.appcompat.widget.Toolbar
        public boolean showOverflowMenu() {
            ((ReactApplication) getContext().getApplicationContext()).getReactNativeHost().getReactInstanceManager().showDevOptionsDialog();
            return true;
        }
    }

    public ScreenStackHeaderConfig(Context context) {
        super(context);
        this.mConfigSubviews = new ArrayList<>(3);
        this.mIsTopInsetEnabled = true;
        this.mScreenOrientation = -1;
        this.mIsAttachedToWindow = false;
        this.mBackClickListener = new View.OnClickListener() { // from class: com.swmansion.rnscreens.ScreenStackHeaderConfig.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ScreenStackFragment screenFragment = ScreenStackHeaderConfig.this.getScreenFragment();
                if (screenFragment != null) {
                    ScreenStack screenStack = ScreenStackHeaderConfig.this.getScreenStack();
                    if (screenStack != null && screenStack.getRootScreen() == screenFragment.getScreen()) {
                        Fragment parentFragment = screenFragment.getParentFragment();
                        if (parentFragment instanceof ScreenStackFragment) {
                            ((ScreenStackFragment) parentFragment).dismiss();
                            return;
                        }
                        return;
                    }
                    screenFragment.dismiss();
                }
            }
        };
        setVisibility(8);
        Toolbar toolbar = new Toolbar(context);
        this.mToolbar = toolbar;
        this.mDefaultStartInset = toolbar.getContentInsetStart();
        this.mDefaultStartInsetWithNavigation = toolbar.getContentInsetStartWithNavigation();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(android.R.attr.colorPrimary, typedValue, true)) {
            toolbar.setBackgroundColor(typedValue.data);
        }
        toolbar.setClipChildren(false);
    }

    public void destroy() {
        this.mDestroyed = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsAttachedToWindow = true;
        onUpdate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsAttachedToWindow = false;
    }

    private Screen getScreen() {
        ViewParent parent = getParent();
        if (parent instanceof Screen) {
            return (Screen) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ScreenStack getScreenStack() {
        Screen screen = getScreen();
        if (screen == null) {
            return null;
        }
        ScreenContainer container = screen.getContainer();
        if (container instanceof ScreenStack) {
            return (ScreenStack) container;
        }
        return null;
    }

    protected ScreenStackFragment getScreenFragment() {
        ViewParent parent = getParent();
        if (!(parent instanceof Screen)) {
            return null;
        }
        ScreenFragment fragment = ((Screen) parent).getFragment();
        if (fragment instanceof ScreenStackFragment) {
            return (ScreenStackFragment) fragment;
        }
        return null;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void onUpdate() {
        AppCompatActivity appCompatActivity;
        Drawable navigationIcon;
        Screen screen = (Screen) getParent();
        ScreenStack screenStack = getScreenStack();
        boolean z = screenStack == null || screenStack.getTopScreen() == screen;
        if (!this.mIsAttachedToWindow || !z || this.mDestroyed || (appCompatActivity = (AppCompatActivity) getScreenFragment().getActivity()) == null) {
            return;
        }
        String str = this.mDirection;
        if (str != null) {
            if (str.equals("rtl")) {
                this.mToolbar.setLayoutDirection(1);
            } else if (this.mDirection.equals("ltr")) {
                this.mToolbar.setLayoutDirection(0);
            }
        }
        if (getScreenFragment() == null || !getScreenFragment().hasChildScreenWithConfig(getScreen())) {
            appCompatActivity.setRequestedOrientation(this.mScreenOrientation);
        }
        if (this.mIsHidden) {
            if (this.mToolbar.getParent() != null) {
                getScreenFragment().removeToolbar();
                return;
            }
            return;
        }
        if (this.mToolbar.getParent() == null) {
            getScreenFragment().setToolbar(this.mToolbar);
        }
        if (this.mIsTopInsetEnabled) {
            this.mToolbar.setPadding(0, getRootWindowInsets().getSystemWindowInsetTop(), 0, 0);
        } else if (this.mToolbar.getPaddingTop() > 0) {
            this.mToolbar.setPadding(0, 0, 0, 0);
        }
        appCompatActivity.setSupportActionBar(this.mToolbar);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        this.mToolbar.setContentInsetStartWithNavigation(this.mDefaultStartInsetWithNavigation);
        Toolbar toolbar = this.mToolbar;
        int i = this.mDefaultStartInset;
        toolbar.setContentInsetsRelative(i, i);
        supportActionBar.setDisplayHomeAsUpEnabled(getScreenFragment().canNavigateBack() && !this.mIsBackButtonHidden);
        this.mToolbar.setNavigationOnClickListener(this.mBackClickListener);
        getScreenFragment().setToolbarShadowHidden(this.mIsShadowHidden);
        getScreenFragment().setToolbarTranslucent(this.mIsTranslucent);
        supportActionBar.setTitle(this.mTitle);
        if (TextUtils.isEmpty(this.mTitle)) {
            this.mToolbar.setContentInsetStartWithNavigation(0);
        }
        TextView titleTextView = getTitleTextView();
        int i2 = this.mTitleColor;
        if (i2 != 0) {
            this.mToolbar.setTitleTextColor(i2);
        }
        if (titleTextView != null) {
            if (this.mTitleFontFamily != null) {
                titleTextView.setTypeface(ReactFontManager.getInstance().getTypeface(this.mTitleFontFamily, 0, getContext().getAssets()));
            }
            float f = this.mTitleFontSize;
            if (f > 0.0f) {
                titleTextView.setTextSize(f);
            }
        }
        Integer num = this.mBackgroundColor;
        if (num != null) {
            this.mToolbar.setBackgroundColor(num.intValue());
        }
        if (this.mTintColor != 0 && (navigationIcon = this.mToolbar.getNavigationIcon()) != null) {
            navigationIcon.setColorFilter(this.mTintColor, PorterDuff.Mode.SRC_ATOP);
        }
        for (int childCount = this.mToolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            if (this.mToolbar.getChildAt(childCount) instanceof ScreenStackHeaderSubview) {
                this.mToolbar.removeViewAt(childCount);
            }
        }
        int size = this.mConfigSubviews.size();
        for (int i3 = 0; i3 < size; i3++) {
            ScreenStackHeaderSubview screenStackHeaderSubview = this.mConfigSubviews.get(i3);
            ScreenStackHeaderSubview.Type type = screenStackHeaderSubview.getType();
            if (type == ScreenStackHeaderSubview.Type.BACK) {
                View childAt = screenStackHeaderSubview.getChildAt(0);
                if (!(childAt instanceof ImageView)) {
                    throw new JSApplicationIllegalArgumentException("Back button header config view should have Image as first child");
                }
                supportActionBar.setHomeAsUpIndicator(((ImageView) childAt).getDrawable());
            } else {
                Toolbar.LayoutParams layoutParams = new Toolbar.LayoutParams(-2, -1);
                int i4 = AnonymousClass2.$SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type[type.ordinal()];
                if (i4 == 1) {
                    if (!this.mBackButtonInCustomView) {
                        this.mToolbar.setNavigationIcon((Drawable) null);
                    }
                    this.mToolbar.setTitle((CharSequence) null);
                    layoutParams.gravity = GravityCompat.START;
                } else if (i4 == 2) {
                    layoutParams.gravity = GravityCompat.END;
                } else if (i4 == 3) {
                    layoutParams.width = -1;
                    layoutParams.gravity = 1;
                    this.mToolbar.setTitle((CharSequence) null);
                }
                screenStackHeaderSubview.setLayoutParams(layoutParams);
                this.mToolbar.addView(screenStackHeaderSubview);
            }
        }
    }

    /* JADX INFO: renamed from: com.swmansion.rnscreens.ScreenStackHeaderConfig$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type;

        static {
            int[] iArr = new int[ScreenStackHeaderSubview.Type.values().length];
            $SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type = iArr;
            try {
                iArr[ScreenStackHeaderSubview.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type[ScreenStackHeaderSubview.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$swmansion$rnscreens$ScreenStackHeaderSubview$Type[ScreenStackHeaderSubview.Type.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void maybeUpdate() {
        if (getParent() == null || this.mDestroyed) {
            return;
        }
        onUpdate();
    }

    public Toolbar getToolbar() {
        return this.mToolbar;
    }

    public ScreenStackHeaderSubview getConfigSubview(int i) {
        return this.mConfigSubviews.get(i);
    }

    public int getConfigSubviewsCount() {
        return this.mConfigSubviews.size();
    }

    public void removeConfigSubview(int i) {
        this.mConfigSubviews.remove(i);
        maybeUpdate();
    }

    public void removeAllConfigSubviews() {
        this.mConfigSubviews.clear();
        maybeUpdate();
    }

    public void addConfigSubview(ScreenStackHeaderSubview screenStackHeaderSubview, int i) {
        this.mConfigSubviews.add(i, screenStackHeaderSubview);
        maybeUpdate();
    }

    private TextView getTitleTextView() {
        int childCount = this.mToolbar.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mToolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (textView.getText().equals(this.mToolbar.getTitle())) {
                    return textView;
                }
            }
        }
        return null;
    }

    public int getScreenOrientation() {
        return this.mScreenOrientation;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setTitleFontFamily(String str) {
        this.mTitleFontFamily = str;
    }

    public void setTitleFontSize(float f) {
        this.mTitleFontSize = f;
    }

    public void setTitleColor(int i) {
        this.mTitleColor = i;
    }

    public void setTintColor(int i) {
        this.mTintColor = i;
    }

    public void setTopInsetEnabled(boolean z) {
        this.mIsTopInsetEnabled = z;
    }

    public void setBackgroundColor(Integer num) {
        this.mBackgroundColor = num;
    }

    public void setHideShadow(boolean z) {
        this.mIsShadowHidden = z;
    }

    public void setHideBackButton(boolean z) {
        this.mIsBackButtonHidden = z;
    }

    public void setHidden(boolean z) {
        this.mIsHidden = z;
    }

    public void setTranslucent(boolean z) {
        this.mIsTranslucent = z;
    }

    public void setBackButtonInCustomView(boolean z) {
        this.mBackButtonInCustomView = z;
    }

    public void setDirection(String str) {
        this.mDirection = str;
    }

    public void setScreenOrientation(String str) {
        if (str == null) {
            this.mScreenOrientation = -1;
        }
        str.hashCode();
        switch (str) {
            case "portrait_down":
                this.mScreenOrientation = 9;
                break;
            case "all":
                this.mScreenOrientation = 10;
                break;
            case "portrait":
                this.mScreenOrientation = 7;
                break;
            case "landscape":
                this.mScreenOrientation = 6;
                break;
            case "portrait_up":
                this.mScreenOrientation = 1;
                break;
            case "landscape_left":
                this.mScreenOrientation = 8;
                break;
            case "landscape_right":
                this.mScreenOrientation = 0;
                break;
            default:
                this.mScreenOrientation = -1;
                break;
        }
    }
}
