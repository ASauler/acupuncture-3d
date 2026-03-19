.class public final Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;
.super Ljava/lang/Object;
.source "StoreLinkMapperRepository.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreLinkMapperRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreLinkMapperRepository.kt\ncom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,156:1\n1#2:157\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J4\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J$\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;)V",
        "getNewVersionAvailability",
        "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;",
        "packageName",
        "",
        "appInstallerPackageName",
        "oemid",
        "versionCode",
        "",
        "q",
        "getReferralDeeplink",
        "Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;",
        "getStoreDeeplink",
        "Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;",
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
.method public static synthetic $r8$lambda$7-1Vqf5Qg-NeTf-cuCrJsRqHkYM(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getStoreDeeplink$lambda$4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xLdcSBFIhTkmYdU4nIWS2TnRuBo(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getReferralDeeplink$lambda$9(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yvGnRfSKNJAZn3vfgyocHyLhiV4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->getNewVersionAvailability$lambda$15(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    return-void
.end method

.method private static final getNewVersionAvailability$lambda$15(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$referralDeeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 123
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;-><init>()V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final getReferralDeeplink$lambda$9(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$referralDeeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 79
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponseMapper;-><init>()V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 81
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static final getStoreDeeplink$lambda$4(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$countDownLatch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$storeDeepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 37
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponseMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponseMapper;-><init>()V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponseMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 39
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private final waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 150
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout getting Store Deeplink: "

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
.method public final getNewVersionAvailability(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    const-string v5, "packageName"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 112
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v7, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    sget-object v8, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v8}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v8, v11, v9, v10}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;-><init>(Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v7, Ljava/util/Map;

    const-string/jumbo v8, "version_code"

    .line 115
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string/jumbo v8, "store-package"

    .line 116
    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_1

    const-string v2, "oemid"

    .line 117
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v4, :cond_2

    const-string v2, "q"

    .line 118
    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    new-instance v15, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda0;

    invoke-direct {v15, v5, v6}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 133
    iget-object v8, v0, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/new-version/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GET"

    .line 136
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 137
    invoke-static {v7}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 138
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v13

    .line 139
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v14

    .line 141
    sget-object v16, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->NEW_VERSION_AVAILABLE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 133
    invoke-virtual/range {v8 .. v16}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 144
    invoke-direct {v0, v5}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 145
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    return-object v1
.end method

.method public final getReferralDeeplink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;
    .locals 12

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 68
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;

    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 70
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    const-string/jumbo v3, "version"

    const-string v4, "2"

    .line 71
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isReferral"

    const-string/jumbo v4, "true"

    .line 72
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string/jumbo v3, "store-package"

    .line 73
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "oemid"

    .line 74
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    new-instance v10, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v1}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 89
    iget-object v3, p0, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "/deeplink/"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    .line 92
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 93
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 94
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 95
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 97
    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->STORE_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 89
    invoke-virtual/range {v3 .. v11}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 100
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 101
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;

    return-object p1
.end method

.method public final getStoreDeeplink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;
    .locals 12

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 26
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 28
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    const-string/jumbo v3, "version"

    const-string v4, "2"

    .line 29
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isReferral"

    const-string v4, "false"

    .line 30
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string/jumbo v3, "store-package"

    .line 31
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "oemid"

    .line 32
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    new-instance v10, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0, v1}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 47
    iget-object v3, p0, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "/deeplink/"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 51
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 52
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 53
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 55
    sget-object v11, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->STORE_DEEPLINK:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 47
    invoke-virtual/range {v3 .. v11}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/repositories/StoreLinkMapperRepository;->waitForCountDown(Ljava/util/concurrent/CountDownLatch;)V

    .line 59
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/aptoide/sdk/billing/mappers/StoreLinkResponse;

    return-object p1
.end method
