package com.aptoide.sdk.billing;

import android.util.Base64;
import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.helpers.AnalyticsMappingHelper;
import com.aptoide.sdk.billing.helpers.BillingResultHelper;
import com.aptoide.sdk.core.analytics.SdkAnalyticsUtils;
import com.aptoide.sdk.core.analytics.events.SdkQueryPurchasesLabels;
import com.aptoide.sdk.core.logger.Logger;
import com.aptoide.sdk.core.security.PurchasesSecurityHelper;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PurchasesAsync.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/aptoide/sdk/billing/PurchasesAsync;", "Ljava/lang/Runnable;", "queryPurchasesParams", "Lcom/aptoide/sdk/billing/QueryPurchasesParams;", "purchasesResponseListener", "Lcom/aptoide/sdk/billing/PurchasesResponseListener;", "repository", "Lcom/aptoide/sdk/billing/Repository;", "(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;Lcom/aptoide/sdk/billing/Repository;)V", SdkQueryPurchasesLabels.PURCHASES, "Lcom/aptoide/sdk/billing/PurchasesResult;", "getPurchases", "()Lcom/aptoide/sdk/billing/PurchasesResult;", "run", "", "aptoide-billing_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PurchasesAsync implements Runnable {
    private final PurchasesResponseListener purchasesResponseListener;
    private final QueryPurchasesParams queryPurchasesParams;
    private final Repository repository;

    public PurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener, Repository repository) {
        Intrinsics.checkNotNullParameter(queryPurchasesParams, "queryPurchasesParams");
        Intrinsics.checkNotNullParameter(purchasesResponseListener, "purchasesResponseListener");
        Intrinsics.checkNotNullParameter(repository, "repository");
        this.queryPurchasesParams = queryPurchasesParams;
        this.purchasesResponseListener = purchasesResponseListener;
        this.repository = repository;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PurchasesResult purchases = getPurchases();
            if (purchases.getBillingResult().getResponseCode() != ResponseCode.OK.getValue()) {
                this.purchasesResponseListener.onQueryPurchasesResponse(purchases.getBillingResult(), CollectionsKt.emptyList());
                SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesResultEvent(null);
                return;
            }
            for (Purchase purchase : purchases.getPurchasesList()) {
                if (!PurchasesSecurityHelper.INSTANCE.verifyPurchase(purchase.getOriginalJson(), Base64.decode(purchase.getSignature(), 0))) {
                    this.purchasesResponseListener.onQueryPurchasesResponse(BillingResult.INSTANCE.newBuilder().setResponseCode(ResponseCode.DEVELOPER_ERROR.getValue()).setDebugMessage(BillingResultHelper.getMessageFromErrorType(0)).build(), CollectionsKt.emptyList());
                    SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesResultEvent(null);
                    return;
                }
            }
            this.purchasesResponseListener.onQueryPurchasesResponse(purchases.getBillingResult(), purchases.getPurchasesList());
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesResultEvent(new AnalyticsMappingHelper().mapPurchasesToListOfStrings(purchases));
        } catch (ServiceConnectionException e) {
            Logger.logError("Service is not ready to request Purchases: " + e);
            this.purchasesResponseListener.onQueryPurchasesResponse(BillingResult.INSTANCE.newBuilder().setResponseCode(ResponseCode.SERVICE_UNAVAILABLE.getValue()).build(), CollectionsKt.emptyList());
            SdkAnalyticsUtils.INSTANCE.getSdkAnalytics().sendQueryPurchasesResultEvent(null);
        }
    }

    private final PurchasesResult getPurchases() throws ServiceConnectionException {
        PurchasesResult purchases = this.repository.getPurchases(this.queryPurchasesParams.getProductType());
        Intrinsics.checkNotNullExpressionValue(purchases, "getPurchases(...)");
        return purchases;
    }
}
