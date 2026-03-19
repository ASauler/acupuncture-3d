.class public final Lcom/aptoide/sdk/billing/repositories/AttributionRepository;
.super Ljava/lang/Object;
.source "AttributionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttributionRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributionRepository.kt\ncom/aptoide/sdk/billing/repositories/AttributionRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n1#2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J>\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/repositories/AttributionRepository;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;)V",
        "getAttributionForUser",
        "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;",
        "packageName",
        "",
        "oemId",
        "guestWalletId",
        "installerAppPackage",
        "currentVersion",
        "",
        "initialAttributionTimestamp",
        "",
        "waitForCountDown",
        "",
        "countDownLatch",
        "Ljava/util/concurrent/CountDownLatch;",
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
.method public static synthetic $r8$lambda$4sCwbsou5mFdesOeWtuGZp64aiM(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;->getAttributionForUser$lambda$4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    return-void
.end method

.method private static final getAttributionForUser$lambda$4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$attributionResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/AttributionResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/AttributionResponseMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/AttributionResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/AttributionResponse;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 37
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 60
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout getting User Attribution: "

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
.method public final getAttributionForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/aptoide/sdk/billing/mappers/AttributionResponse;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "packageName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 24
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 25
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v7

    check-cast v12, Ljava/util/Map;

    const-string v7, "package_name"

    .line 26
    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string v1, "oemid"

    .line 27
    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    const-string v1, "guest_uid"

    .line 28
    invoke-interface {v12, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_2

    const-string v1, "installer_package_name"

    .line 29
    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v1, "vercode"

    .line 30
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    .line 31
    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v15, Lcom/aptoide/sdk/billing/repositories/AttributionRepository$$ExternalSyntheticLambda0;

    invoke-direct {v15, v5, v6}, Lcom/aptoide/sdk/billing/repositories/AttributionRepository$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 43
    iget-object v8, v0, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v9, "/attribution"

    const-string v10, "GET"

    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 48
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

    .line 49
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v14

    .line 51
    sget-object v16, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->ATTRIBUTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 43
    invoke-virtual/range {v8 .. v16}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 54
    invoke-direct {v0, v5}, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 55
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;

    return-object v1
.end method
