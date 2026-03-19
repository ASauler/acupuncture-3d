.class public final Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "RetryFailedRequests.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "backendRequestsSharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "getBackendRequestsSharedPreferences",
        "()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "backendRequestsSharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "invoke",
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


# static fields
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

.field private static final backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Go8teCfmwkhZ9GQujnNN_4-3m1w(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->invoke$lambda$1$lambda$0(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

    .line 10
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$backendRequestsSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$backendRequestsSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getBackendRequestsSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;
    .locals 1

    .line 10
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    return-object v0
.end method

.method private static final invoke$lambda$1$lambda$0(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string v0, "$request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p2

    invoke-static {p2}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 33
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

    invoke-direct {p1}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->getBackendRequestsSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->setFailedRequests(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 12

    .line 15
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 17
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->getBackendRequestsSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->getFailedRequests()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aptoide/sdk/billing/service/RequestData;

    .line 22
    new-instance v3, Lcom/aptoide/sdk/billing/service/BdsService;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getTimeoutInMillis()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getEndPoint()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getPaths()Ljava/util/List;

    move-result-object v6

    .line 27
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getQueries()Ljava/util/Map;

    move-result-object v7

    .line 28
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getHeader()Ljava/util/Map;

    move-result-object v8

    .line 29
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getBody()Ljava/util/Map;

    move-result-object v9

    .line 23
    new-instance v10, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0, v2}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;)V

    .line 36
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/service/RequestData;->getSdkBackendRequestType()Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    move-result-object v11

    .line 23
    invoke-virtual/range {v3 .. v11}, Lcom/aptoide/sdk/billing/service/BdsService;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    goto :goto_1

    :cond_1
    return-void
.end method
