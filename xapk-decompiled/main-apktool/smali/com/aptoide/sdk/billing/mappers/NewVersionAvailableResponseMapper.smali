.class public final Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;
.super Ljava/lang/Object;
.source "NewVersionAvailableResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewVersionAvailableResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewVersionAvailableResponseMapper.kt\ncom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,47:1\n1#2:48\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;",
        "response",
        "Lcom/aptoide/sdk/billing/service/RequestResponse;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;
    .locals 7

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 21
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "is_new_version_available"

    .line 23
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "failure_message"

    .line 24
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 30
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;-><init>(Ljava/lang/Integer;Z)V

    goto :goto_2

    .line 27
    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v4, "There was an error mapping the response."

    .line 32
    invoke-static {v4, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 33
    sget-object v4, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v4}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v4

    .line 34
    sget-object v5, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->NEW_VERSION_AVAILABLE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 35
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v4, v5, v6, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;-><init>(Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    return-object v0

    .line 15
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getException()Ljava/lang/Exception;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to obtain New Version Available Response. ResponseCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " | Cause: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/aptoide/sdk/billing/mappers/NewVersionAvailableResponse;-><init>(Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
