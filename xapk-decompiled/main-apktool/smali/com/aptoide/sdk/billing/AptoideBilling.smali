.class public Lcom/aptoide/sdk/billing/AptoideBilling;
.super Ljava/lang/Object;
.source "AptoideBilling.java"

# interfaces
.implements Lcom/aptoide/sdk/billing/Billing;


# instance fields
.field private queryInappPurchasesThread:Ljava/lang/Thread;

.field private querySkuDetailsThread:Ljava/lang/Thread;

.field private querySubsPurchasesThread:Ljava/lang/Thread;

.field private final repository:Lcom/aptoide/sdk/billing/Repository;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/Repository;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySkuDetailsThread:Ljava/lang/Thread;

    .line 15
    iput-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->queryInappPurchasesThread:Ljava/lang/Thread;

    .line 16
    iput-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySubsPurchasesThread:Ljava/lang/Thread;

    .line 19
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    return-void
.end method

.method private stopPreviousPurchasesRequests(Lcom/aptoide/sdk/billing/QueryPurchasesParams;)V
    .locals 3

    .line 94
    :try_start_0
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->queryInappPurchasesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subs"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySubsPurchasesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to stop previous Purchases "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " Request Thread: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private stopPreviousSkuDetailsRequests()V
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySkuDetailsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to stop previous SkuDetails Request Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public consumeAsync(Ljava/lang/String;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/aptoide/sdk/billing/ConsumeAsync;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-direct {v0, p1, p2, v1}, Lcom/aptoide/sdk/billing/ConsumeAsync;-><init>(Ljava/lang/String;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;Lcom/aptoide/sdk/billing/Repository;)V

    .line 58
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/Repository;->isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 84
    :catch_0
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 85
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-interface {v0}, Lcom/aptoide/sdk/billing/Repository;->isReady()Z

    move-result v0

    return v0
.end method

.method public launchBillingFlow(Lcom/aptoide/sdk/billing/BillingFlowParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getSkuType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getSku()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/aptoide/sdk/billing/Repository;->launchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;

    move-result-object p1
    :try_end_0
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Service is not ready to launch billing flow. "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 70
    new-instance p2, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/AptoideBilling;->stopPreviousSkuDetailsRequests()V

    .line 49
    new-instance v0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-direct {v0, p1, p2, v1}, Lcom/aptoide/sdk/billing/ProductDetailsAsync;-><init>(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;Lcom/aptoide/sdk/billing/Repository;)V

    .line 51
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySkuDetailsThread:Ljava/lang/Thread;

    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V
    .locals 3

    .line 25
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/AptoideBilling;->stopPreviousPurchasesRequests(Lcom/aptoide/sdk/billing/QueryPurchasesParams;)V

    .line 26
    new-instance v0, Lcom/aptoide/sdk/billing/PurchasesAsync;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-direct {v0, p1, p2, v1}, Lcom/aptoide/sdk/billing/PurchasesAsync;-><init>(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;Lcom/aptoide/sdk/billing/Repository;)V

    .line 27
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inapp"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->queryInappPurchasesThread:Ljava/lang/Thread;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "subs"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBilling;->querySubsPurchasesThread:Ljava/lang/Thread;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 37
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-interface {p2, v0, v1}, Lcom/aptoide/sdk/billing/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid product type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
