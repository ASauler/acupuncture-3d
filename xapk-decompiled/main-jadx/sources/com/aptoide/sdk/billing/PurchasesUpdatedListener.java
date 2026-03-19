package com.aptoide.sdk.billing;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface PurchasesUpdatedListener {
    void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list);
}
