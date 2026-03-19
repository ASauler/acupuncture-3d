.class public final Lcom/aptoide/sdk/billing/PurchasesAsync;
.super Ljava/lang/Object;
.source "PurchasesAsync.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/PurchasesAsync;",
        "Ljava/lang/Runnable;",
        "queryPurchasesParams",
        "Lcom/aptoide/sdk/billing/QueryPurchasesParams;",
        "purchasesResponseListener",
        "Lcom/aptoide/sdk/billing/PurchasesResponseListener;",
        "repository",
        "Lcom/aptoide/sdk/billing/Repository;",
        "(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;Lcom/aptoide/sdk/billing/Repository;)V",
        "purchases",
        "Lcom/aptoide/sdk/billing/PurchasesResult;",
        "getPurchases",
        "()Lcom/aptoide/sdk/billing/PurchasesResult;",
        "run",
        "",
        "aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

.field private final queryPurchasesParams:Lcom/aptoide/sdk/billing/QueryPurchasesParams;

.field private final repository:Lcom/aptoide/sdk/billing/Repository;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;Lcom/aptoide/sdk/billing/Repository;)V
    .locals 1

    const-string v0, "queryPurchasesParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchasesResponseListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->queryPurchasesParams:Lcom/aptoide/sdk/billing/QueryPurchasesParams;

    .line 13
    iput-object p2, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

    .line 14
    iput-object p3, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    return-void
.end method

.method private final getPurchases()Lcom/aptoide/sdk/billing/PurchasesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->queryPurchasesParams:Lcom/aptoide/sdk/billing/QueryPurchasesParams;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/aptoide/sdk/billing/Repository;->getPurchases(Ljava/lang/String;)Lcom/aptoide/sdk/billing/PurchasesResult;

    move-result-object v0

    const-string v1, "getPurchases(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/PurchasesAsync;->getPurchases()Lcom/aptoide/sdk/billing/PurchasesResult;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getBillingResult()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 21
    iget-object v2, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

    .line 22
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getBillingResult()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v1

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 21
    invoke-interface {v2, v1, v3}, Lcom/aptoide/sdk/billing/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    .line 25
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesResultEvent(Ljava/util/List;)V

    return-void

    .line 29
    :cond_0
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aptoide/sdk/billing/Purchase;

    .line 30
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 33
    sget-object v5, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->INSTANCE:Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

    const/4 v6, 0x0

    .line 35
    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 33
    invoke-virtual {v5, v4, v3}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->verifyPurchase(Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

    .line 39
    sget-object v2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 38
    invoke-interface {v1, v2, v3}, Lcom/aptoide/sdk/billing/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    .line 47
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesResultEvent(Ljava/util/List;)V

    return-void

    .line 52
    :cond_2
    iget-object v2, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

    .line 53
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getBillingResult()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v3

    .line 54
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v4

    .line 52
    invoke-interface {v2, v3, v4}, Lcom/aptoide/sdk/billing/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    .line 56
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v2

    .line 57
    new-instance v3, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;

    invoke-direct {v3}, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;-><init>()V

    invoke-virtual {v3, v1}, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;->mapPurchasesToListOfStrings(Lcom/aptoide/sdk/billing/PurchasesResult;)Ljava/util/List;

    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesResultEvent(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Service is not ready to request Purchases: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/aptoide/sdk/billing/PurchasesAsync;->purchasesResponseListener:Lcom/aptoide/sdk/billing/PurchasesResponseListener;

    .line 63
    sget-object v2, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    .line 64
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 62
    invoke-interface {v1, v2, v3}, Lcom/aptoide/sdk/billing/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    .line 66
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesResultEvent(Ljava/util/List;)V

    return-void
.end method
