.class public interface abstract Lcom/aptoide/sdk/billing/Billing;
.super Ljava/lang/Object;
.source "Billing.java"


# virtual methods
.method public abstract consumeAsync(Ljava/lang/String;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V
.end method

.method public abstract isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
.end method

.method public abstract isReady()Z
.end method

.method public abstract launchBillingFlow(Lcom/aptoide/sdk/billing/BillingFlowParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V
.end method

.method public abstract queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V
.end method
