.class public final Lcom/aptoide/sdk/billing/service/BdsRetryService;
.super Ljava/lang/Object;
.source "BdsRetryService.kt"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/Service;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0002Jt\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00082\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00140\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J|\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00082\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0\u00112\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00140\u0011H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/service/BdsRetryService;",
        "Lcom/aptoide/sdk/billing/service/Service;",
        "bdsService",
        "Lcom/aptoide/sdk/billing/service/BdsService;",
        "sharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "(Lcom/aptoide/sdk/billing/service/BdsService;Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;)V",
        "getFailedRequests",
        "",
        "Lcom/aptoide/sdk/billing/service/RequestData;",
        "makeRequest",
        "",
        "endPoint",
        "",
        "httpMethod",
        "paths",
        "queries",
        "",
        "header",
        "body",
        "",
        "serviceResponseListener",
        "Lcom/aptoide/sdk/billing/service/ServiceResponseListener;",
        "sdkBackendRequestType",
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
        "saveFailedRequest",
        "baseUrl",
        "timeoutInMillis",
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
.field private final bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

.field private final sharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$ktwaBKYWzJFheHpbsYeO_vZBo1o(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/aptoide/sdk/billing/service/BdsRetryService;->makeRequest$lambda$0(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/service/BdsService;Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;)V
    .locals 1

    const-string v0, "bdsService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sharedPreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 9
    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService;->sharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    return-void
.end method

.method private final getFailedRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/service/RequestData;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService;->sharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->getFailedRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final makeRequest$lambda$0(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$sdkBackendRequestType"

    move-object v3, p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$endPoint"

    move-object v4, p3

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$httpMethod"

    move-object v5, p4

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$paths"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$queries"

    move-object/from16 v7, p6

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$header"

    move-object/from16 v8, p7

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$body"

    move-object/from16 v9, p8

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p9

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p0, v2}, Lcom/aptoide/sdk/billing/service/ServiceResponseListener;->onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    .line 34
    :cond_0
    invoke-virtual/range {p9 .. p9}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    iget-object v0, v1, Lcom/aptoide/sdk/billing/service/BdsRetryService;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    iget-object v2, v0, Lcom/aptoide/sdk/billing/service/BdsService;->baseUrl:Ljava/lang/String;

    const-string v0, "baseUrl"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, v1, Lcom/aptoide/sdk/billing/service/BdsRetryService;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    iget v10, v0, Lcom/aptoide/sdk/billing/service/BdsService;->timeoutInMillis:I

    move-object v0, p1

    move-object v1, p2

    move v3, v10

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 35
    invoke-direct/range {v0 .. v9}, Lcom/aptoide/sdk/billing/service/BdsRetryService;->saveFailedRequest(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private final saveFailedRequest(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;",
            "Ljava/lang/String;",
            "I",
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
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/service/BdsRetryService;->getFailedRequests()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 65
    :cond_1
    new-instance v11, Lcom/aptoide/sdk/billing/service/RequestData;

    move-object v1, v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/aptoide/sdk/billing/service/RequestData;-><init>(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 76
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, p0

    .line 77
    iget-object v2, v1, Lcom/aptoide/sdk/billing/service/BdsRetryService;->sharedPreferences:Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;->setFailedRequests(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v6, p3

    const-string v0, "endPoint"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpMethod"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paths"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queries"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdkBackendRequestType"

    move-object/from16 v12, p8

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v13, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

    move-object/from16 v14, p0

    .line 24
    iget-object v15, v14, Lcom/aptoide/sdk/billing/service/BdsRetryService;->bdsService:Lcom/aptoide/sdk/billing/service/BdsService;

    .line 25
    iget-object v5, v15, Lcom/aptoide/sdk/billing/service/BdsService;->baseUrl:Ljava/lang/String;

    const-string v0, "baseUrl"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v16

    .line 29
    invoke-static/range {p4 .. p4}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v17

    .line 30
    invoke-static/range {p5 .. p5}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v18

    .line 31
    invoke-static/range {p6 .. p6}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v19

    .line 22
    new-instance v20, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v21, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v9}, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    move-object v1, v13

    move-object v2, v15

    move-object/from16 v3, v21

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, p8

    .line 23
    invoke-direct/range {v1 .. v11}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;)V

    .line 50
    invoke-virtual {v13}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->execute()V

    return-void
.end method
