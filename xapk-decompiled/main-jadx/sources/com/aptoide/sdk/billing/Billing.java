package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;

/* JADX INFO: loaded from: classes.dex */
public interface Billing {
    void consumeAsync(String str, ConsumeResponseListener consumeResponseListener);

    BillingResult isFeatureSupported(int i);

    boolean isReady();

    LaunchBillingFlowResult launchBillingFlow(BillingFlowParams billingFlowParams, String str, String str2, String str3) throws ServiceConnectionException;

    void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener);

    void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener);
}
