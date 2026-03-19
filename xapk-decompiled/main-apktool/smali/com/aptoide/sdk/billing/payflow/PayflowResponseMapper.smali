.class public final Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;
.super Ljava/lang/Object;
.source "PayflowResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayflowResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayflowResponseMapper.kt\ncom/aptoide/sdk/billing/payflow/PayflowResponseMapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1#2:200\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ$\u0010\u000c\u001a\u0016\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rj\n\u0012\u0004\u0012\u00020\u000e\u0018\u0001`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0002J$\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0011\u0018\u00010\rj\n\u0012\u0004\u0012\u00020\u0011\u0018\u0001`\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\n\u001a\u00020\u000bH\u0002J \u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00150\rj\u0008\u0012\u0004\u0012\u00020\u0015`\u000f2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001c\u0010\u0016\u001a\t\u0018\u00010\u0017\u00a2\u0006\u0002\u0008\u00182\u0006\u0010\u0019\u001a\u00020\u0017H\u0002\u00a2\u0006\u0002\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;",
        "",
        "()V",
        "getMatomoApiKey",
        "",
        "matomoDetailsJsonObject",
        "Lorg/json/JSONObject;",
        "getMatomoUrl",
        "map",
        "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;",
        "response",
        "Lcom/aptoide/sdk/billing/service/RequestResponse;",
        "mapAnalyticsFlowSeverityLevels",
        "Ljava/util/ArrayList;",
        "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
        "Lkotlin/collections/ArrayList;",
        "mapMatomoCustomProperties",
        "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
        "mapMatomoDetails",
        "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;",
        "mapPaymentFlowMethods",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "mapToFeatureType",
        "",
        "Lorg/jetbrains/annotations/NotNull;",
        "featureTypeInt",
        "(I)Ljava/lang/Integer;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$mapToFeatureType(Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;I)Ljava/lang/Integer;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapToFeatureType(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final getMatomoApiKey(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 179
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    const-string v1, "matomo_api_key"

    .line 180
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 179
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_3

    .line 182
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the MatomoApiKey."

    invoke-static {v3, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 183
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 184
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 185
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v3, p1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_3
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getMatomoUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 166
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    const-string v1, "matomo_url"

    .line 167
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 166
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_3

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the MatomoUrl."

    invoke-static {v3, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 170
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 171
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v1, v3, p1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_3
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final mapAnalyticsFlowSeverityLevels(Lcom/aptoide/sdk/billing/service/RequestResponse;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/service/RequestResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "analytics_flow_severity_levels"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 99
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 101
    new-instance v6, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const-string v7, "flow"

    .line 102
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "optString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "severity_level"

    .line 103
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 101
    invoke-direct {v6, v7, v5}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;-><init>(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 93
    :cond_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 110
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the AnalyticsFlowSeverityLevels."

    invoke-static {v3, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 111
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 112
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 113
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object p1

    .line 114
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v3, p1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final mapMatomoCustomProperties(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 139
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    const-string v1, "matomo_custom_properties"

    .line 140
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 145
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 147
    new-instance v6, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    const-string/jumbo v7, "sdk_id"

    .line 148
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "matomo_id"

    .line 149
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 147
    invoke-direct {v6, v7, v5}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;-><init>(II)V

    .line 146
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 139
    :cond_1
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 155
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the AnalyticsFlowSeverityLevels."

    invoke-static {v3, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 157
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 158
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 159
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v1, v3, p1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final mapMatomoDetails(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;
    .locals 5

    const/4 v0, 0x0

    .line 120
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "matomo_details"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 122
    new-instance v2, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    .line 123
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapMatomoCustomProperties(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 124
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->getMatomoUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->getMatomoApiKey(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-direct {v2, v3, v4, v1}, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 120
    :goto_0
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_2

    .line 129
    :cond_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the MatomoDetails."

    invoke-static {v3, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 130
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 131
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 132
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object p1

    .line 133
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {v1, v3, p1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2
    check-cast v0, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    return-object v0
.end method

.method private final mapPaymentFlowMethods(Lcom/aptoide/sdk/billing/service/RequestResponse;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/service/RequestResponse;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    .line 42
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "payment_methods"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "keys(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;

    invoke-direct {v2, v0, p0}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;-><init>(Lorg/json/JSONObject;Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->toCollection(Lkotlin/sequences/Sequence;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "There was an error mapping the response."

    invoke-static {v2, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 84
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 85
    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->PAYMENT_FLOW:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 86
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v2, p1, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    :goto_2
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final mapToFeatureType(I)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 195
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->FREE_TRIALS:Ljava/lang/Integer;

    goto :goto_0

    .line 194
    :cond_1
    sget-object p1, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->OBFUSCATED_ACCOUNT_ID:Ljava/lang/Integer;

    goto :goto_0

    .line 193
    :cond_2
    sget-object p1, Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;->SUBSCRIPTIONS:Ljava/lang/Integer;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;
    .locals 4

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapPaymentFlowMethods(Lcom/aptoide/sdk/billing/service/RequestResponse;)Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapAnalyticsFlowSeverityLevels(Lcom/aptoide/sdk/billing/service/RequestResponse;)Ljava/util/ArrayList;

    move-result-object v1

    .line 31
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapMatomoDetails(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    move-result-object v2

    .line 33
    new-instance v3, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    .line 34
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 33
    invoke-direct {v3, p1, v0, v1, v2}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;-><init>(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V

    return-object v3

    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getException()Ljava/lang/Exception;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to obtain Payflow Response. ResponseCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | Cause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;-><init>(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V

    return-object v0
.end method
