.class public final Lcom/aptoide/sdk/billing/repositories/WalletRepository;
.super Ljava/lang/Object;
.source "WalletRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/repositories/WalletRepository;",
        "",
        "service",
        "Lcom/aptoide/sdk/billing/service/Service;",
        "(Lcom/aptoide/sdk/billing/service/Service;)V",
        "requestWalletSync",
        "Lcom/aptoide/sdk/billing/models/WalletGenerationModel;",
        "id",
        "",
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
.field private final service:Lcom/aptoide/sdk/billing/service/Service;


# direct methods
.method public static synthetic $r8$lambda$ROlMGZMAw6mAkWE9OqNzpPkVy9c(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/repositories/WalletRepository;->requestWalletSync$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/Service;)V
    .locals 1

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/WalletRepository;->service:Lcom/aptoide/sdk/billing/service/Service;

    return-void
.end method

.method private static final requestWalletSync$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 4

    const-string v0, "$walletGenerationModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$countDownLatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/WalletGenerationMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationMapper;-><init>()V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationMapper;->map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    .line 27
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->getEwt()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/WalletGenerationResponse;->hasError()Z

    move-result p2

    .line 26
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public final requestWalletSync(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;
    .locals 13

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->createErrorWalletGenerationModel()Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object v3

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v8, v3

    check-cast v8, Ljava/util/Map;

    .line 21
    invoke-interface {v8, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v11, Lcom/aptoide/sdk/billing/repositories/WalletRepository$$ExternalSyntheticLambda0;

    invoke-direct {v11, v2, v1}, Lcom/aptoide/sdk/billing/repositories/WalletRepository$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V

    .line 35
    iget-object v4, p0, Lcom/aptoide/sdk/billing/repositories/WalletRepository;->service:Lcom/aptoide/sdk/billing/service/Service;

    const-string v5, "/appc/guest_wallet"

    const-string v6, "GET"

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, p1

    check-cast v7, Ljava/util/List;

    .line 40
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v9

    .line 41
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v10

    .line 43
    sget-object v12, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->GUEST_WALLET:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 35
    invoke-interface/range {v4 .. v12}, Lcom/aptoide/sdk/billing/service/Service;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 47
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timeout for Wallet Request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 51
    :goto_0
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    return-object p1
.end method
