package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.helpers.BillingResultHelper;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;

/* JADX INFO: loaded from: classes.dex */
public class ConsumeAsync implements Runnable {
    private final ConsumeResponseListener listener;
    private final Repository repository;
    private final String token;

    public ConsumeAsync(String str, ConsumeResponseListener consumeResponseListener, Repository repository) {
        this.token = str;
        this.listener = consumeResponseListener;
        this.repository = repository;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = this.token;
        if (str == null || str.isEmpty()) {
            this.listener.onConsumeResponse(BillingResult.newBuilder().setResponseCode(ResponseCode.DEVELOPER_ERROR.getValue()).setDebugMessage(BillingResultHelper.getMessageFromErrorType(3)).build(), null);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendConsumePurchaseResult(null, Integer.valueOf(ResponseCode.DEVELOPER_ERROR.getValue()));
            return;
        }
        try {
            BillingResult billingResultConsumeAsync = this.repository.consumeAsync(this.token);
            this.listener.onConsumeResponse(billingResultConsumeAsync, this.token);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendConsumePurchaseResult(this.token, Integer.valueOf(billingResultConsumeAsync.getResponseCode()));
        } catch (ServiceConnectionException unused) {
            this.listener.onConsumeResponse(BillingResult.newBuilder().setResponseCode(ResponseCode.SERVICE_UNAVAILABLE.getValue()).setDebugMessage(BillingResultHelper.getMessageFromErrorType(2)).build(), null);
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendConsumePurchaseResult(this.token, Integer.valueOf(ResponseCode.SERVICE_UNAVAILABLE.getValue()));
        }
    }
}
