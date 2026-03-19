.class public interface abstract Lcom/aptoide/sdk/billing/Repository;
.super Ljava/lang/Object;
.source "Repository.java"


# virtual methods
.method public abstract consumeAsync(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract getPurchases(Ljava/lang/String;)Lcom/aptoide/sdk/billing/PurchasesResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract isReady()Z
.end method

.method public abstract launchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;)Lcom/aptoide/sdk/billing/SkuDetailsResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aptoide/sdk/billing/SkuDetailsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation
.end method
