package com.aptoide.sdk.billing.webpayment;

import android.app.Activity;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.aptoide.billing.sdk.R;
import com.aptoide.sdk.billing.payflow.models.WebViewDetails;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.ui.UIUtilsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: WebViewGeneralUIUtils.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u000eJ*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J*\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J*\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0018\u001a\u00020\u0010H\u0002J\"\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u001d"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;", "", "()V", "applyDynamicConstraints", "", "activity", "Landroid/app/Activity;", "mBaseConstraintLayout", "Landroidx/constraintlayout/widget/ConstraintLayout;", "webViewContainerParams", "Landroid/view/ViewGroup$LayoutParams;", "webViewDetailsDimensions", "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;", "defaultFallback", "Lkotlin/Function0;", "handleExactHeight", "", "mConstraintSet", "Landroidx/constraintlayout/widget/ConstraintSet;", "screenHeight", "", "handleExactWidth", "screenWidth", "handlePercentageHeight", "isHeightSet", "handlePercentageWidth", "isWidthSet", "resetConstraintsAndSize", "setMaxHeightForWebView", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WebViewGeneralUIUtils {
    public static final WebViewGeneralUIUtils INSTANCE = new WebViewGeneralUIUtils();

    private WebViewGeneralUIUtils() {
    }

    public final void resetConstraintsAndSize(ConstraintSet mConstraintSet, ConstraintLayout mBaseConstraintLayout, ViewGroup.LayoutParams webViewContainerParams) {
        Intrinsics.checkNotNullParameter(mConstraintSet, "mConstraintSet");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        webViewContainerParams.width = 0;
        webViewContainerParams.height = 0;
        mConstraintSet.clear(R.id.container_for_web_view);
        mConstraintSet.connect(R.id.container_for_web_view, 4, mBaseConstraintLayout.getId(), 4, 0);
        mConstraintSet.connect(R.id.container_for_web_view, 6, mBaseConstraintLayout.getId(), 6, 0);
        mConstraintSet.connect(R.id.container_for_web_view, 7, mBaseConstraintLayout.getId(), 7, 0);
    }

    public final void setMaxHeightForWebView(ConstraintSet mConstraintSet, ConstraintLayout mBaseConstraintLayout) {
        Intrinsics.checkNotNullParameter(mConstraintSet, "mConstraintSet");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        mConstraintSet.constrainHeight(R.id.container_for_web_view, 0);
        mConstraintSet.connect(R.id.container_for_web_view, 3, mBaseConstraintLayout.getId(), 3, 0);
    }

    public final void applyDynamicConstraints(Activity activity, ConstraintLayout mBaseConstraintLayout, ViewGroup.LayoutParams webViewContainerParams, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions, Function0<Unit> defaultFallback) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(mBaseConstraintLayout, "mBaseConstraintLayout");
        Intrinsics.checkNotNullParameter(webViewContainerParams, "webViewContainerParams");
        Intrinsics.checkNotNullParameter(defaultFallback, "defaultFallback");
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.clone(mBaseConstraintLayout);
        resetConstraintsAndSize(constraintSet, mBaseConstraintLayout, webViewContainerParams);
        Activity activity2 = activity;
        int screenOrientedHeightInDp = UIUtilsKt.getScreenOrientedHeightInDp(activity2);
        int screenOrientedWidthInDp = UIUtilsKt.getScreenOrientedWidthInDp(activity2);
        boolean zHandleExactHeight = handleExactHeight(activity, constraintSet, webViewDetailsDimensions, screenOrientedHeightInDp);
        boolean zHandleExactWidth = handleExactWidth(activity, constraintSet, webViewDetailsDimensions, screenOrientedWidthInDp);
        if (zHandleExactHeight && zHandleExactWidth) {
            Logger.logInfo("Height and Width set on 1st condition.");
            constraintSet.applyTo(mBaseConstraintLayout);
            return;
        }
        boolean zHandlePercentageHeight = handlePercentageHeight(constraintSet, mBaseConstraintLayout, webViewDetailsDimensions, zHandleExactHeight);
        if (zHandlePercentageHeight && zHandleExactWidth) {
            Logger.logInfo("Height and Width set on 2nd condition.");
            constraintSet.applyTo(mBaseConstraintLayout);
            return;
        }
        boolean zHandlePercentageWidth = handlePercentageWidth(constraintSet, webViewDetailsDimensions, zHandleExactWidth);
        if (zHandlePercentageHeight && zHandlePercentageWidth) {
            Logger.logInfo("Height and Width set on 3rd condition.");
            constraintSet.applyTo(mBaseConstraintLayout);
        } else {
            defaultFallback.invoke();
        }
    }

    private final boolean handleExactHeight(Activity activity, ConstraintSet mConstraintSet, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions, int screenHeight) {
        Integer heightDp = webViewDetailsDimensions != null ? webViewDetailsDimensions.getHeightDp() : null;
        if (heightDp != null && heightDp.intValue() < screenHeight) {
            Logger.logInfo("Handling exact Height.");
            mConstraintSet.constrainHeight(R.id.container_for_web_view, (int) UIUtilsKt.floatToPxs(heightDp.intValue(), activity));
            return true;
        }
        Logger.logWarning("Failed to handle exact Height.");
        return false;
    }

    private final boolean handleExactWidth(Activity activity, ConstraintSet mConstraintSet, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions, int screenWidth) {
        Integer widthDp = webViewDetailsDimensions != null ? webViewDetailsDimensions.getWidthDp() : null;
        if (widthDp != null && widthDp.intValue() < screenWidth) {
            Logger.logInfo("Handling exact Width.");
            mConstraintSet.constrainWidth(R.id.container_for_web_view, (int) UIUtilsKt.floatToPxs(widthDp.intValue(), activity));
            return true;
        }
        Logger.logWarning("Failed to handle exact Width.");
        return false;
    }

    private final boolean handlePercentageHeight(ConstraintSet mConstraintSet, ConstraintLayout mBaseConstraintLayout, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions, boolean isHeightSet) {
        if (isHeightSet) {
            Logger.logInfo("Height already set.");
            return true;
        }
        Double heightPercentage = webViewDetailsDimensions != null ? webViewDetailsDimensions.getHeightPercentage() : null;
        if (heightPercentage != null && RangesKt.rangeTo(0.0d, 1.0d).contains(heightPercentage)) {
            Logger.logInfo("Handling percentage Height.");
            if (Intrinsics.areEqual(heightPercentage, 1.0d)) {
                setMaxHeightForWebView(mConstraintSet, mBaseConstraintLayout);
            } else {
                mConstraintSet.constrainPercentHeight(R.id.container_for_web_view, (float) heightPercentage.doubleValue());
            }
            return true;
        }
        Logger.logWarning("Failed to handle percentage Height.");
        return false;
    }

    private final boolean handlePercentageWidth(ConstraintSet mConstraintSet, WebViewDetails.OrientedScreenDimensions webViewDetailsDimensions, boolean isWidthSet) {
        if (isWidthSet) {
            Logger.logInfo("Width already set.");
            return true;
        }
        Double widthPercentage = webViewDetailsDimensions != null ? webViewDetailsDimensions.getWidthPercentage() : null;
        if (widthPercentage != null && RangesKt.rangeTo(0.0d, 1.0d).contains(widthPercentage)) {
            Logger.logInfo("Handling percentage Width.");
            mConstraintSet.constrainPercentWidth(R.id.container_for_web_view, (float) widthPercentage.doubleValue());
            return true;
        }
        Logger.logWarning("Failed to handle percentage Width.");
        return false;
    }
}
