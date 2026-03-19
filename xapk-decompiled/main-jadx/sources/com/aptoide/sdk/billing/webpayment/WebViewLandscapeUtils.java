package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.payflow.models.WebViewDetails;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewLandscapeUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ(\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;", "", "()V", "LANDSCAPE_MAX_HEIGHT_PERCENT", "", "LANDSCAPE_MAX_WIDTH_PERCENT", "applyDefaultLandscapeConstraints", "", "mBaseConstraintLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "webViewContainerParams", "Landroid/view/ViewGroup$LayoutParams;", "applyDynamicLandscapeConstraints", "activity", "Landroid/app/Activity;", "webViewDetailsDimensions", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewLandscapeUtils {
    public static final WebViewLandscapeUtils INSTANCE = new WebViewLandscapeUtils();
    private static final float LANDSCAPE_MAX_HEIGHT_PERCENT = 0.9f;
    private static final float LANDSCAPE_MAX_WIDTH_PERCENT = 0.9f;

    private WebViewLandscapeUtils() {
    }

    public final void applyDefaultLandscapeConstraints(ConstraintLayout mBaseConstraintLayout, ViewGroup.LayoutParams webViewContainerParams) {
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(mBaseConstraintLayout);
        WebViewGeneralUIUtils.INSTANCE.resetConstraintsAndSize(constraintSet, mBaseConstraintLayout, webViewContainerParams);
        constraintSet.constrainPercentHeight(R.id.container_for_web_view, 0.9f);
        constraintSet.constrainPercentWidth(R.id.container_for_web_view, 0.9f);
        constraintSet.constrainMaxHeight(R.id.container_for_web_view, 0);
        constraintSet.constrainMaxWidth(R.id.container_for_web_view, 0);
        constraintSet.applyTo(mBaseConstraintLayout);
    }

    public final void applyDynamicLandscapeConstraints(Activity activity, final ConstraintLayout mBaseConstraintLayout, final ViewGroup.LayoutParams webViewContainerParams, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        WebViewGeneralUIUtils.INSTANCE.applyDynamicConstraints(activity, mBaseConstraintLayout, webViewContainerParams, webViewDetailsDimensions, new Function0<Unit>() { // from class: com.aptoide.sdk.billing.webpayment.WebViewLandscapeUtils.applyDynamicLandscapeConstraints.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WebViewLandscapeUtils.INSTANCE.applyDefaultLandscapeConstraints(mBaseConstraintLayout, webViewContainerParams);
            }
        });
    }
}
