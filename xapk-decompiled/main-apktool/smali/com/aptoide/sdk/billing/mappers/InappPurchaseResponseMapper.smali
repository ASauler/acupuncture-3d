.class public final Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;
.super Ljava/lang/Object;
.source "InappPurchaseResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInappPurchaseResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InappPurchaseResponseMapper.kt\ncom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;",
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
.method public final map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
    .locals 28

    const-string v0, "created"

    const-string/jumbo v1, "status"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "uid"

    const-string/jumbo v4, "response"

    move-object/from16 v5, p1

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_1f

    .line 20
    :cond_0
    :try_start_0
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v4, p0

    check-cast v4, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponseMapper;

    .line 21
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    move v7, v9

    :goto_0
    const/4 v10, 0x0

    if-eqz v7, :cond_2

    move-object v13, v6

    goto :goto_1

    :cond_2
    move-object v13, v10

    :goto_1
    const-string/jumbo v6, "sku"

    .line 23
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    move v7, v9

    :goto_2
    if-eqz v7, :cond_4

    move-object v14, v6

    goto :goto_3

    :cond_4
    move-object v14, v10

    :goto_3
    const-string v6, "domain"

    .line 24
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_5

    move v7, v8

    goto :goto_4

    :cond_5
    move v7, v9

    :goto_4
    if-eqz v7, :cond_6

    move-object v15, v6

    goto :goto_5

    :cond_6
    move-object v15, v10

    .line 25
    :goto_5
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    move v7, v8

    goto :goto_6

    :cond_7
    move v7, v9

    :goto_6
    if-eqz v7, :cond_8

    move-object/from16 v16, v6

    goto :goto_7

    :cond_8
    move-object/from16 v16, v10

    .line 26
    :goto_7
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_9

    move v7, v8

    goto :goto_8

    :cond_9
    move v7, v9

    :goto_8
    if-eqz v7, :cond_a

    move-object/from16 v17, v6

    goto :goto_9

    :cond_a
    move-object/from16 v17, v10

    :goto_9
    const-string/jumbo v6, "state"

    .line 27
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_b

    move v7, v8

    goto :goto_a

    :cond_b
    move v7, v9

    :goto_a
    if-eqz v7, :cond_c

    move-object/from16 v18, v6

    goto :goto_b

    :cond_c
    move-object/from16 v18, v10

    :goto_b
    const-string v6, "payload"

    .line 28
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_d

    move v7, v8

    goto :goto_c

    :cond_d
    move v7, v9

    :goto_c
    if-eqz v7, :cond_e

    move-object/from16 v19, v6

    goto :goto_d

    :cond_e
    move-object/from16 v19, v10

    .line 29
    :goto_d
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_f

    move v7, v8

    goto :goto_e

    :cond_f
    move v7, v9

    :goto_e
    if-eqz v7, :cond_10

    move-object/from16 v20, v6

    goto :goto_f

    :cond_10
    move-object/from16 v20, v10

    :goto_f
    const-string v6, "buyer"

    .line 31
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "reference"

    if-eqz v6, :cond_15

    .line 32
    :try_start_1
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_11

    move v11, v8

    goto :goto_10

    :cond_11
    move v11, v9

    :goto_10
    if-eqz v11, :cond_12

    goto :goto_11

    :cond_12
    move-object v2, v10

    .line 35
    :goto_11
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_13

    move v11, v8

    goto :goto_12

    :cond_13
    move v11, v9

    :goto_12
    if-eqz v11, :cond_14

    goto :goto_13

    :cond_14
    move-object v6, v10

    .line 33
    :goto_13
    new-instance v11, Lcom/aptoide/sdk/billing/mappers/Buyer;

    invoke-direct {v11, v2, v6}, Lcom/aptoide/sdk/billing/mappers/Buyer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v11

    goto :goto_14

    :cond_15
    move-object/from16 v21, v10

    :goto_14
    const-string v2, "order"

    .line 39
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 40
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_16

    move v4, v8

    goto :goto_15

    :cond_16
    move v4, v9

    :goto_15
    if-eqz v4, :cond_17

    move-object/from16 v23, v3

    goto :goto_16

    :cond_17
    move-object/from16 v23, v10

    :goto_16
    const-string v3, "gateway"

    .line 43
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_18

    move v4, v8

    goto :goto_17

    :cond_18
    move v4, v9

    :goto_17
    if-eqz v4, :cond_19

    move-object/from16 v24, v3

    goto :goto_18

    :cond_19
    move-object/from16 v24, v10

    .line 44
    :goto_18
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1a

    move v4, v8

    goto :goto_19

    :cond_1a
    move v4, v9

    :goto_19
    if-eqz v4, :cond_1b

    move-object/from16 v25, v3

    goto :goto_1a

    :cond_1b
    move-object/from16 v25, v10

    .line 45
    :goto_1a
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1c

    move v3, v8

    goto :goto_1b

    :cond_1c
    move v3, v9

    :goto_1b
    if-eqz v3, :cond_1d

    move-object/from16 v26, v1

    goto :goto_1c

    :cond_1d
    move-object/from16 v26, v10

    .line 46
    :goto_1c
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1e

    goto :goto_1d

    :cond_1e
    move v8, v9

    :goto_1d
    if-eqz v8, :cond_1f

    move-object/from16 v27, v0

    goto :goto_1e

    :cond_1f
    move-object/from16 v27, v10

    .line 41
    :goto_1e
    new-instance v10, Lcom/aptoide/sdk/billing/mappers/Order;

    move-object/from16 v22, v10

    invoke-direct/range {v22 .. v27}, Lcom/aptoide/sdk/billing/mappers/Order;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move-object/from16 v22, v10

    .line 50
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v11, v0

    .line 50
    invoke-direct/range {v11 .. v22}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 64
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v2, "There was an error mapping the response."

    invoke-static {v2, v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->INAPP_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v1, v2, v3, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fe

    const/16 v17, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v17}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 63
    :cond_21
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 15
    :cond_22
    :goto_1f
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getException()Ljava/lang/Exception;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to obtain Purchase Response. ResponseCode: "

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

    .line 13
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7fe

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Buyer;Lcom/aptoide/sdk/billing/mappers/Order;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
