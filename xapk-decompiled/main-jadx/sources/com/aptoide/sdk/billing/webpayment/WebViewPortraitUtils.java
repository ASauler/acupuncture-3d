package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.aptoide.sdk.billing.payflow.models.WebViewDetails;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.ui.UIUtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WebViewPortraitUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ(\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;", "", "()V", "PORTRAIT_MAX_HEIGHT_DP", "", "applyDefaultPortraitConstraints", "", "activity", "Landroid/app/Activity;", "mBaseConstraintLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "webViewContainerParams", "Landroid/view/ViewGroup$LayoutParams;", "applyDynamicPortraitConstraints", "webViewDetailsDimensions", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewPortraitUtils {
    public static final WebViewPortraitUtils INSTANCE = new WebViewPortraitUtils();
    private static final float PORTRAIT_MAX_HEIGHT_DP = 560.0f;

    private WebViewPortraitUtils() {
    }

    public final void applyDefaultPortraitConstraints(Activity activity, ConstraintLayout mBaseConstraintLayout, ViewGroup.LayoutParams webViewContainerParams) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        Logger.logError("Setting Default Portrait Constraints.");
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(mBaseConstraintLayout);
        WebViewGeneralUIUtils.INSTANCE.resetConstraintsAndSize(constraintSet, mBaseConstraintLayout, webViewContainerParams);
        Activity activity2 = activity;
        if (UIUtilsKt.getScreenOrientedHeightInDp(activity2) < PORTRAIT_MAX_HEIGHT_DP) {
            WebViewGeneralUIUtils.INSTANCE.setMaxHeightForWebView(constraintSet, mBaseConstraintLayout);
        } else {
            webViewContainerParams.height = (int) UIUtilsKt.floatToPxs(PORTRAIT_MAX_HEIGHT_DP, activity2);
        }
        webViewContainerParams.width = -1;
    }

    public final void applyDynamicPortraitConstraints(final Activity activity, final ConstraintLayout mBaseConstraintLayout, final ViewGroup.LayoutParams webViewContainerParams, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        WebViewGeneralUIUtils.INSTANCE.applyDynamicConstraints(activity, mBaseConstraintLayout, webViewContainerParams, webViewDetailsDimensions, new Function0<Unit>() { // from class: com.aptoide.sdk.billing.webpayment.WebViewPortraitUtils.applyDynamicPortraitConstraints.1
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
                WebViewPortraitUtils.INSTANCE.applyDefaultPortraitConstraints(activity, mBaseConstraintLayout, webViewContainerParams);
            }
        });
    }
}
