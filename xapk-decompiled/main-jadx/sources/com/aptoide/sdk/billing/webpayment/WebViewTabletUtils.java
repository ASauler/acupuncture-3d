package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.core.ui.UIUtilsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewTabletUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;", "", "()V", "TABLET_MAX_HEIGHT_DP", "", "TABLET_MAX_HEIGHT_PERCENT", "TABLET_MAX_WIDTH_DP", "TABLET_MAX_WIDTH_PERCENT", "applyTabletConstraints", "", "activity", "Landroid/app/Activity;", "mBaseConstraintLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "webViewContainerParams", "Landroid/view/ViewGroup$LayoutParams;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewTabletUtils {
    public static final WebViewTabletUtils INSTANCE = new WebViewTabletUtils();
    private static final float TABLET_MAX_HEIGHT_DP = 480.0f;
    private static final float TABLET_MAX_HEIGHT_PERCENT = 0.9f;
    private static final float TABLET_MAX_WIDTH_DP = 688.0f;
    private static final float TABLET_MAX_WIDTH_PERCENT = 0.9f;

    private WebViewTabletUtils() {
    }

    public final void applyTabletConstraints(Activity activity, ConstraintLayout mBaseConstraintLayout, ViewGroup.LayoutParams webViewContainerParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(mBaseConstraintLayout);
        WebViewGeneralUIUtils.INSTANCE.resetConstraintsAndSize(constraintSet, mBaseConstraintLayout, webViewContainerParams);
        constraintSet.constrainPercentHeight(R.id.container_for_web_view, 0.9f);
        constraintSet.constrainPercentWidth(R.id.container_for_web_view, 0.9f);
        Activity activity2 = activity;
        constraintSet.constrainMaxHeight(R.id.container_for_web_view, (int) UIUtilsKt.floatToPxs(TABLET_MAX_HEIGHT_DP, activity2));
        constraintSet.constrainMaxWidth(R.id.container_for_web_view, (int) UIUtilsKt.floatToPxs(TABLET_MAX_WIDTH_DP, activity2));
        constraintSet.applyTo(mBaseConstraintLayout);
    }
}
