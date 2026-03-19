package com.aptoide.sdk.billing.listeners;

import com.aptoide.sdk.billing.BillingResult;

/* JADX INFO: loaded from: classes.dex */
public interface AptoideBillingClientStateListener {
    void onBillingServiceDisconnected();

    void onBillingSetupFinished(BillingResult billingResult);
}
