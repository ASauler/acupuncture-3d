.class public final Lcom/aptoide/sdk/billing/ProductDetailsAsync;
.super Ljava/lang/Object;
.source "ProductDetailsAsync.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductDetailsAsync.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductDetailsAsync.kt\ncom/aptoide/sdk/billing/ProductDetailsAsync\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1549#2:61\n1620#2,3:62\n*S KotlinDebug\n*F\n+ 1 ProductDetailsAsync.kt\ncom/aptoide/sdk/billing/ProductDetailsAsync\n*L\n57#1:61\n57#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0010H\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ProductDetailsAsync;",
        "Ljava/lang/Runnable;",
        "queryProductDetailsParams",
        "Lcom/aptoide/sdk/billing/QueryProductDetailsParams;",
        "productDetailsResponseListener",
        "Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;",
        "repository",
        "Lcom/aptoide/sdk/billing/Repository;",
        "(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;Lcom/aptoide/sdk/billing/Repository;)V",
        "skuDetails",
        "Lcom/aptoide/sdk/billing/SkuDetailsResult;",
        "getSkuDetails",
        "()Lcom/aptoide/sdk/billing/SkuDetailsResult;",
        "getProductTypeFromParams",
        "",
        "getProductsListFromParams",
        "",
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
.field private final productDetailsResponseListener:Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;

.field private final queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

.field private final repository:Lcom/aptoide/sdk/billing/Repository;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;Lcom/aptoide/sdk/billing/Repository;)V
    .locals 1

    const-string v0, "queryProductDetailsParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productDetailsResponseListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    .line 12
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->productDetailsResponseListener:Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;

    .line 13
    iput-object p3, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    return-void
.end method

.method private final getProductTypeFromParams()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "inapp"

    :cond_1
    return-object v0
.end method

.method private final getProductsListFromParams()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 62
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    .line 57
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->getProductId()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private final getSkuDetails()Lcom/aptoide/sdk/billing/SkuDetailsResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->getProductTypeFromParams()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->getProductsListFromParams()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/aptoide/sdk/billing/Repository;->querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;)Lcom/aptoide/sdk/billing/SkuDetailsResult;

    move-result-object v0

    const-string v1, "querySkuDetailsAsync(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 17
    :try_start_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->getSkuDetails()Lcom/aptoide/sdk/billing/SkuDetailsResult;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    new-instance v2, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;-><init>()V

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/billing/helpers/AnalyticsMappingHelper;->mapSkuDetailsToListOfStrings(Lcom/aptoide/sdk/billing/SkuDetailsResult;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQuerySkuDetailsResult(Ljava/util/List;)V

    .line 21
    new-instance v1, Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;-><init>()V

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getSkuDetailsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/helpers/ProductDetailsMapper;->mapSkuDetailsToProductDetails$aptoide_billing_release(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 23
    new-instance v2, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;-><init>()V

    .line 24
    iget-object v3, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object v3

    .line 23
    invoke-virtual {v2, v3, v1}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;->getUnfetchedProducts$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->productDetailsResponseListener:Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;

    .line 29
    new-instance v4, Lcom/aptoide/sdk/billing/BillingResult$Builder;

    invoke-direct {v4}, Lcom/aptoide/sdk/billing/BillingResult$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    .line 30
    sget-object v4, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;

    invoke-virtual {v4, v1, v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;->create$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsResult;

    move-result-object v1

    .line 28
    invoke-interface {v3, v0, v1}, Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    :try_end_0
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service is not ready to request SkuDetails: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->queryProductDetailsParams:Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->getProductList()Ljava/util/List;

    move-result-object v1

    .line 37
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/helpers/UnfetchedProductsMapper;->getUnfetchedProducts$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/aptoide/sdk/billing/ProductDetailsAsync;->productDetailsResponseListener:Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;

    .line 41
    new-instance v2, Lcom/aptoide/sdk/billing/BillingResult$Builder;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;-><init>()V

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    .line 42
    sget-object v3, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->Companion:Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult$Companion;->create$aptoide_billing_release(Ljava/util/List;Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsResult;

    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V

    .line 44
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQuerySkuDetailsResult(Ljava/util/List;)V

    :goto_0
    return-void
.end method
