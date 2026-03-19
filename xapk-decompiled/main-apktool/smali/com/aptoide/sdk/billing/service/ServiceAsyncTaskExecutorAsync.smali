.class public final Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;
.super Ljava/lang/Object;
.source "ServiceAsyncTaskExecutorAsync.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b\u0012\u0014\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012J\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;",
        "",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "baseUrl",
        "",
        "endPoint",
        "httpMethod",
        "paths",
        "",
        "queries",
        "",
        "header",
        "body",
        "serviceResponseListener",
        "Lcom/aptoide/sdk/billing/service/ServiceResponseListener;",
        "sdkBackendRequestType",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V",
        "execute",
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
.field private final baseUrl:Ljava/lang/String;

.field private final bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

.field private final body:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final endPoint:Ljava/lang/String;

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpMethod:Ljava/lang/String;

.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final queries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field private final serviceResponseListener:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# direct methods
.method public static synthetic $r8$lambda$86weYdApTOn3e0R7sial3dfAeZE(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->execute$lambda$1$lambda$0(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IErGnaqP52TmU4k_nsQxJ1iHHHM(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->execute$lambda$1(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/service/BdsService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/aptoide/sdk/billing/service/ServiceResponseListener;",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
            ")V"
        }
    .end annotation

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpMethod"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queries"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkBackendRequestType"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 10
    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->baseUrl:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->endPoint:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->httpMethod:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->paths:Ljava/util/List;

    .line 14
    iput-object p6, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->queries:Ljava/util/Map;

    .line 15
    iput-object p7, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->header:Ljava/util/Map;

    .line 16
    iput-object p8, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->body:Ljava/util/Map;

    .line 17
    iput-object p9, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->serviceResponseListener:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;

    .line 18
    iput-object p10, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    return-void
.end method

.method private static final execute$lambda$1(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V
    .locals 10

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 27
    iget-object v2, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->baseUrl:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->endPoint:Ljava/lang/String;

    .line 29
    iget-object v4, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->httpMethod:Ljava/lang/String;

    .line 30
    iget-object v5, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->paths:Ljava/util/List;

    .line 31
    iget-object v6, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->queries:Ljava/util/Map;

    .line 32
    iget-object v7, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->header:Ljava/util/Map;

    .line 33
    iget-object v8, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->body:Ljava/util/Map;

    .line 34
    iget-object v9, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->sdkBackendRequestType:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 26
    invoke-virtual/range {v1 .. v9}, Lcom/aptoide/sdk/billing/service/BdsService;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)Lcom/aptoide/sdk/billing/service/RequestResponse;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final execute$lambda$1$lambda$0(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->serviceResponseListener:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/aptoide/sdk/billing/service/ServiceResponseListener;->onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 22
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    new-instance v2, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;-><init>(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
