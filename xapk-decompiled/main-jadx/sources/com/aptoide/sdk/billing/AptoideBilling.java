package com.aptoide.sdk.billing;

import com.aptoide.sdk.billing.exceptions.ServiceConnectionException;
import com.aptoide.sdk.billing.helpers.BillingResultHelper;
import com.aptoide.sdk.billing.listeners.ConsumeResponseListener;
import com.aptoide.sdk.core.logger.Logger;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class AptoideBilling implements Billing {
    private final Repository repository;
    private Thread querySkuDetailsThread = null;
    private Thread queryInappPurchasesThread = null;
    private Thread querySubsPurchasesThread = null;

    public AptoideBilling(Repository repository) {
        this.repository = repository;
    }

    @Override // com.aptoide.sdk.billing.Billing
    public void queryPurchasesAsync(QueryPurchasesParams queryPurchasesParams, PurchasesResponseListener purchasesResponseListener) {
        stopPreviousPurchasesRequests(queryPurchasesParams);
        PurchasesAsync purchasesAsync = new PurchasesAsync(queryPurchasesParams, purchasesResponseListener, this.repository);
        if (queryPurchasesParams.getProductType().equalsIgnoreCase("inapp")) {
            Thread thread = new Thread(purchasesAsync);
            this.queryInappPurchasesThread = thread;
            thread.start();
        } else if (queryPurchasesParams.getProductType().equalsIgnoreCase("subs")) {
            Thread thread2 = new Thread(purchasesAsync);
            this.querySubsPurchasesThread = thread2;
            thread2.start();
        } else {
            purchasesResponseListener.onQueryPurchasesResponse(BillingResult.newBuilder().setResponseCode(ResponseCode.DEVELOPER_ERROR.getValue()).setDebugMessage(BillingResultHelper.getMessageFromErrorType(4)).build(), Collections.emptyList());
            Logger.logError("Invalid product type: " + queryPurchasesParams.getProductType());
        }
    }

    @Override // com.aptoide.sdk.billing.Billing
    public void queryProductDetailsAsync(QueryProductDetailsParams queryProductDetailsParams, ProductDetailsResponseListener productDetailsResponseListener) {
        stopPreviousSkuDetailsRequests();
        Thread thread = new Thread(new ProductDetailsAsync(queryProductDetailsParams, productDetailsResponseListener, this.repository));
        this.querySkuDetailsThread = thread;
        thread.start();
    }

    @Override // com.aptoide.sdk.billing.Billing
    public void consumeAsync(String str, ConsumeResponseListener consumeResponseListener) {
        new Thread(new ConsumeAsync(str, consumeResponseListener, this.repository)).start();
    }

    @Override // com.aptoide.sdk.billing.Billing
    public LaunchBillingFlowResult launchBillingFlow(BillingFlowParams billingFlowParams, String str, String str2, String str3) throws ServiceConnectionException {
        try {
            return this.repository.launchBillingFlow(billingFlowParams.getSkuType(), billingFlowParams.getSku(), str, str2, str3);
        } catch (ServiceConnectionException e) {
            Logger.logError("Service is not ready to launch billing flow. " + e);
            throw new ServiceConnectionException(e.getMessage());
        }
    }

    @Override // com.aptoide.sdk.billing.Billing
    public boolean isReady() {
        return this.repository.isReady();
    }

    @Override // com.aptoide.sdk.billing.Billing
    public BillingResult isFeatureSupported(int i) {
        try {
            return this.repository.isFeatureSupported(i);
        } catch (ServiceConnectionException unused) {
            return BillingResult.newBuilder().setResponseCode(ResponseCode.SERVICE_UNAVAILABLE.getValue()).setDebugMessage(BillingResultHelper.getMessageFromErrorType(2)).build();
        }
    }

    private void stopPreviousPurchasesRequests(QueryPurchasesParams queryPurchasesParams) {
        try {
            if (queryPurchasesParams.getProductType().equalsIgnoreCase("inapp")) {
                this.queryInappPurchasesThread.stop();
            } else if (queryPurchasesParams.getProductType().equalsIgnoreCase("subs")) {
                this.querySubsPurchasesThread.stop();
            }
        } catch (Exception e) {
            Logger.logWarning("Failed to stop previous Purchases " + queryPurchasesParams.getProductType() + " Request Thread: " + e);
        }
    }

    private void stopPreviousSkuDetailsRequests() {
        try {
            this.querySkuDetailsThread.stop();
        } catch (Exception e) {
            Logger.logWarning("Failed to stop previous SkuDetails Request Thread: " + e);
        }
    }
}
