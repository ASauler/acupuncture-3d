package com.aptoide.sdk.billing.usecases;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HandleDeeplinkFromWebView.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/usecases/HandleDeeplinkFromWebView;", "Lcom/aptoide/sdk/billing/usecases/UseCase;", "()V", "invoke", "", "url", "", "activity", "Landroid/app/Activity;", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HandleDeeplinkFromWebView extends UseCase {
    public static final HandleDeeplinkFromWebView INSTANCE = new HandleDeeplinkFromWebView();

    private HandleDeeplinkFromWebView() {
    }

    public final boolean invoke(String url, Activity activity) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(activity, "activity");
        super.invokeUseCase();
        try {
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentOpenDeeplinkEvent(url);
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setFlags(268435456);
            Logger.logInfo("Handling Application Deeplink.");
            activity.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            Logger.logError("Failed to handle Deeplink from WebView.");
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendWebPaymentFailureToOpenDeeplinkEvent(url, e.toString());
            return false;
        }
    }
}
