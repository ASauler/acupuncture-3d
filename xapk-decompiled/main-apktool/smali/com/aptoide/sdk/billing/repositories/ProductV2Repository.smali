.class public final Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;
.super Ljava/lang/Object;
.source "ProductV2Repository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProductV2Repository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProductV2Repository.kt\ncom/aptoide/sdk/billing/repositories/ProductV2Repository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,216:1\n1#2:217\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u0008J \u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0008J&\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0008J*\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\n\u001a\u00020\u00082\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0008J \u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;)V",
        "consumePurchaseSync",
        "",
        "walletAddress",
        "",
        "signature",
        "packageName",
        "purchaseToken",
        "getInappPurchase",
        "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;",
        "getPurchaseSync",
        "Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;",
        "authorization",
        "getPurchasesSync",
        "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;",
        "signedWallet",
        "type",
        "getSkuDetails",
        "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;",
        "skus",
        "",
        "paymentFlow",
        "handleConsumeResponse",
        "",
        "requestResponse",
        "Lcom/aptoide/sdk/billing/service/RequestResponse;",
        "countDownLatch",
        "Ljava/util/concurrent/CountDownLatch;",
        "responseCode",
        "",
        "waitForCountDown",
        "android-aptoide-billing_release"
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
.field private final bdsService:Lcom/aptoide/sdk/billing/service/BdsService;


# direct methods
.method public static synthetic $r8$lambda$1XSfQ7LRNEbyQXgUUv4d4PM5jL4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getPurchaseSync$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Evnw9lzhC4tcfY7mUQd26V5aqqA(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getInappPurchase$lambda$2(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lv29oEc2vMNRDaSxYD1bteTEJDA(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getPurchasesSync$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YHu7HMIvW7eq03XMmq9U6gVD3-A(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getSkuDetails$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yjicVDZ-bLR6qcdG_j1vFBCWWfg(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[ILcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->consumePurchaseSync$lambda$5(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[ILcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    return-void
.end method

.method private static final consumePurchaseSync$lambda$5(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[ILcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$responseCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 136
    invoke-direct {p0, p3, p1, p2}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->handleConsumeResponse(Lcom/aptoide/sdk/billing/service/RequestResponse;Ljava/util/concurrent/CountDownLatch;[I)V

    return-void
.end method

.method private static final getInappPurchase$lambda$2(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inappPurchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;-><init>()V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 32
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final getPurchaseSync$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$purchaseResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/PurchaseResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/PurchaseResponseMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/PurchaseResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;

    move-result-object p2

    .line 103
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final getPurchasesSync$lambda$3(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$purchasesResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/PurchasesResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/PurchasesResponseMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/PurchasesResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    move-result-object p2

    .line 67
    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic getSkuDetails$default(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 162
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getSkuDetails(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    move-result-object p0

    return-object p0
.end method

.method private static final getSkuDetails$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$skuDetailsResponse"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponseMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    move-result-object p2

    iput-object p2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 173
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final handleConsumeResponse(Lcom/aptoide/sdk/billing/service/RequestResponse;Ljava/util/concurrent/CountDownLatch;[I)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 201
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    aput p1, p3, v0

    goto :goto_0

    .line 203
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    aput p1, p3, v0

    .line 205
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 210
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout getting Purchase from ProductV2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final consumePurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const-string/jumbo v0, "walletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 132
    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    filled-new-array {v1}, [I

    move-result-object v1

    .line 134
    new-instance v9, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0, v0, v1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;-><init>(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[I)V

    .line 143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v6, v2

    check-cast v6, Ljava/util/Map;

    const-string/jumbo v2, "wallet.address"

    .line 144
    invoke-interface {v6, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "wallet.signature"

    .line 145
    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "/productv2/8.20240901/applications/"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/inapp/purchases/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/consume"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    .line 150
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 152
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 153
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 155
    sget-object v10, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->CONSUME_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 147
    invoke-virtual/range {v2 .. v10}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 158
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    const/4 p1, 0x0

    .line 159
    aget p1, v1, p1

    return p1
.end method

.method public final getInappPurchase(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
    .locals 11

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 25
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 27
    new-instance v9, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0, v1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 40
    iget-object v2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/productv2/8.20240901/inapp/purchases/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    .line 43
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 44
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 45
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 46
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 48
    sget-object v10, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->INAPP_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 40
    invoke-virtual/range {v2 .. v10}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 52
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    return-object p1
.end method

.method public final getPurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;
    .locals 12

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorization"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "purchaseToken"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 98
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 100
    new-instance v10, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2, v1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V

    .line 107
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v8, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "/productv2/8.20240901/applications/"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/inapp/consumable/purchases/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    .line 113
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 114
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 116
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 118
    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 110
    invoke-virtual/range {v3 .. v11}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 121
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 122
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;

    return-object p1
.end method

.method public final getPurchasesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "packageName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "walletAddress"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "signedWallet"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 62
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    sget-object v9, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v9}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-direct {v8, v9, v10, v11, v10}, Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    new-instance v8, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda1;

    invoke-direct {v8, v7, v6}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V

    .line 71
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    check-cast v9, Ljava/util/Map;

    const-string/jumbo v10, "wallet.address"

    .line 72
    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "wallet.signature"

    .line 73
    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "state"

    const-string v3, "PENDING"

    .line 75
    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v12, v0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/productv2/8.20240901/applications/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/inapp/consumable/purchases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET"

    .line 80
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 82
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v17

    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v18

    .line 85
    sget-object v20, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    move-object/from16 v16, v9

    move-object/from16 v19, v8

    .line 77
    invoke-virtual/range {v12 .. v20}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 88
    invoke-direct {v0, v6}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 89
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    return-object v1
.end method

.method public final getSkuDetails(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "packageName"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "skus"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 168
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 170
    new-instance v14, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;

    invoke-direct {v14, v6, v5}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V

    .line 176
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v11, v7

    check-cast v11, Ljava/util/Map;

    .line 177
    move-object v15, v2

    check-cast v15, Ljava/lang/Iterable;

    const-string v2, ","

    move-object/from16 v16, v2

    check-cast v16, Ljava/lang/CharSequence;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3e

    const/16 v23, 0x0

    invoke-static/range {v15 .. v23}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_0

    const-string v2, "discount_policy"

    .line 178
    invoke-interface {v11, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    iget-object v7, v0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/productv2/8.20240901/applications/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/inapp/consumables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    .line 183
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 185
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v12

    .line 186
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

    .line 188
    sget-object v15, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 180
    invoke-virtual/range {v7 .. v15}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 191
    invoke-direct {v0, v5}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 192
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    return-object v1
.end method
