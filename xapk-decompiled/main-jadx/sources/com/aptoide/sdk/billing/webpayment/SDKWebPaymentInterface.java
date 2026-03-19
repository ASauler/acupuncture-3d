package com.aptoide.sdk.billing.webpayment;

import android.webkit.JavascriptInterface;
import com.aptoide.sdk.core.analytics.events.SdkWebPaymentFlowLabels;
import kotlin.Metadata;

/* JADX INFO: compiled from: SDKWebPaymentInterface.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH'J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\bH'J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\bH'¨\u0006\f"}, d2 = {"Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;", "", "allowExternalApps", "", SdkWebPaymentFlowLabels.ALLOW, "", "onPurchaseResult", "result", "", "openDeeplink", "url", "startExternalPayment", "android-aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SDKWebPaymentInterface {
    @JavascriptInterface
    void allowExternalApps(boolean allow);

    @JavascriptInterface
    void onPurchaseResult(String result);

    @JavascriptInterface
    boolean openDeeplink(String url);

    @JavascriptInterface
    boolean startExternalPayment(String url);
}
