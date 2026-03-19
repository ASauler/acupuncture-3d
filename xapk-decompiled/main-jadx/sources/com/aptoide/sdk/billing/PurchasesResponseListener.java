package com.aptoide.sdk.billing;

import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesLabels;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: PurchasesResponseListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&¨\u0006\t"}, d2 = {"Lcom/aptoide/sdk/billing/PurchasesResponseListener;", "", InAppPurchaseConstants.METHOD_ON_QUERY_PURCHASES_RESPONSE, "", "billingResult", "Lcom/aptoide/sdk/billing/BillingResult;", SdkQueryPurchasesLabels.PURCHASES, "", "Lcom/aptoide/sdk/billing/Purchase;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PurchasesResponseListener {
    void onQueryPurchasesResponse(BillingResult billingResult, List<Purchase> purchases);
}
