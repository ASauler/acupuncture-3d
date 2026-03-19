package com.aptoide.sdk.billing;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;

/* JADX INFO: compiled from: ProductDetailsResponseListener.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\b"}, d2 = {"Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;", "", InAppPurchaseConstants.METHOD_ON_PRODUCT_DETAILS_RESPONSE, "", "billingResult", "Lcom/aptoide/sdk/billing/BillingResult;", "productDetailsResult", "Lcom/aptoide/sdk/billing/QueryProductDetailsResult;", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ProductDetailsResponseListener {
    void onProductDetailsResponse(BillingResult billingResult, QueryProductDetailsResult productDetailsResult);
}
