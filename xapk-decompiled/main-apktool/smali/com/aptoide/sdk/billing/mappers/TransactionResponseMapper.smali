.class public final Lcom/aptoide/sdk/billing/mappers/TransactionResponseMapper;
.super Ljava/lang/Object;
.source "TransactionResponseMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionResponseMapper.kt\ncom/aptoide/sdk/billing/mappers/TransactionResponseMapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/mappers/TransactionResponseMapper;",
        "",
        "()V",
        "map",
        "Lcom/aptoide/sdk/billing/mappers/TransactionResponse;",
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
.method public final map(Lcom/aptoide/sdk/billing/service/RequestResponse;)Lcom/aptoide/sdk/billing/mappers/TransactionResponse;
    .locals 30

    const-string/jumbo v0, "response"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2d

    .line 20
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v0, p0

    check-cast v0, Lcom/aptoide/sdk/billing/mappers/TransactionResponseMapper;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "uid"

    .line 22
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    move-object v9, v2

    goto :goto_1

    :cond_2
    move-object v9, v6

    :goto_1
    const-string v2, "domain"

    .line 23
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    move-object v10, v2

    goto :goto_3

    :cond_4
    move-object v10, v6

    :goto_3
    const-string v2, "product"

    .line 24
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v5

    :goto_4
    if-eqz v3, :cond_6

    move-object v11, v2

    goto :goto_5

    :cond_6
    move-object v11, v6

    :goto_5
    const-string/jumbo v2, "wallet_from"

    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v5

    :goto_6
    if-eqz v3, :cond_8

    move-object v12, v2

    goto :goto_7

    :cond_8
    move-object v12, v6

    :goto_7
    const-string/jumbo v2, "type"

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_9

    move v3, v4

    goto :goto_8

    :cond_9
    move v3, v5

    :goto_8
    if-eqz v3, :cond_a

    move-object v13, v2

    goto :goto_9

    :cond_a
    move-object v13, v6

    :goto_9
    const-string v2, "method"

    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_b

    move v3, v4

    goto :goto_a

    :cond_b
    move v3, v5

    :goto_a
    if-eqz v3, :cond_c

    move-object v14, v2

    goto :goto_b

    :cond_c
    move-object v14, v6

    :goto_b
    const-string v2, "country"

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_d

    move v3, v4

    goto :goto_c

    :cond_d
    move v3, v5

    :goto_c
    if-eqz v3, :cond_e

    move-object v15, v2

    goto :goto_d

    :cond_e
    move-object v15, v6

    :goto_d
    const-string v2, "reference"

    .line 29
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_f

    move v3, v4

    goto :goto_e

    :cond_f
    move v3, v5

    :goto_e
    if-eqz v3, :cond_10

    move-object/from16 v16, v2

    goto :goto_f

    :cond_10
    move-object/from16 v16, v6

    :goto_f
    const-string v2, "hash"

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_11

    move v3, v4

    goto :goto_10

    :cond_11
    move v3, v5

    :goto_10
    if-eqz v3, :cond_12

    move-object/from16 v17, v2

    goto :goto_11

    :cond_12
    move-object/from16 v17, v6

    :goto_11
    const-string/jumbo v2, "status"

    .line 31
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_13

    move v3, v4

    goto :goto_12

    :cond_13
    move v3, v5

    :goto_12
    if-eqz v3, :cond_14

    move-object/from16 v18, v2

    goto :goto_13

    :cond_14
    move-object/from16 v18, v6

    :goto_13
    const-string v2, "added"

    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_15

    move v3, v4

    goto :goto_14

    :cond_15
    move v3, v5

    :goto_14
    if-eqz v3, :cond_16

    move-object/from16 v19, v2

    goto :goto_15

    :cond_16
    move-object/from16 v19, v6

    :goto_15
    const-string v2, "modified"

    .line 33
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_17

    move v3, v4

    goto :goto_16

    :cond_17
    move v3, v5

    :goto_16
    if-eqz v3, :cond_18

    move-object/from16 v20, v2

    goto :goto_17

    :cond_18
    move-object/from16 v20, v6

    :goto_17
    const-string v2, "gateway"

    .line 35
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "name"

    .line 38
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_19

    move v3, v4

    goto :goto_18

    :cond_19
    move v3, v5

    :goto_18
    if-eqz v3, :cond_1a

    goto :goto_19

    :cond_1a
    move-object v2, v6

    .line 37
    :goto_19
    new-instance v3, Lcom/aptoide/sdk/billing/mappers/Gateway;

    invoke-direct {v3, v2}, Lcom/aptoide/sdk/billing/mappers/Gateway;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v3

    goto :goto_1a

    :cond_1b
    move-object/from16 v21, v6

    :goto_1a
    const-string v2, "metadata"

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 43
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v3, "renewal"

    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v7, "purchase_uid"

    .line 46
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1c

    move v7, v4

    goto :goto_1b

    :cond_1c
    move v7, v5

    :goto_1b
    if-eqz v7, :cond_1d

    goto :goto_1c

    :cond_1d
    move-object v2, v6

    .line 44
    :goto_1c
    new-instance v7, Lcom/aptoide/sdk/billing/mappers/Metadata;

    invoke-direct {v7, v3, v2}, Lcom/aptoide/sdk/billing/mappers/Metadata;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    move-object/from16 v22, v7

    goto :goto_1d

    :cond_1e
    move-object/from16 v22, v6

    :goto_1d
    const-string v2, "price"

    .line 50
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v3, "currency"

    .line 53
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1f

    move v7, v4

    goto :goto_1e

    :cond_1f
    move v7, v5

    :goto_1e
    if-eqz v7, :cond_20

    move-object/from16 v24, v3

    goto :goto_1f

    :cond_20
    move-object/from16 v24, v6

    :goto_1f
    const-string/jumbo v3, "value"

    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_21

    move v7, v4

    goto :goto_20

    :cond_21
    move v7, v5

    :goto_20
    if-eqz v7, :cond_22

    move-object/from16 v25, v3

    goto :goto_21

    :cond_22
    move-object/from16 v25, v6

    :goto_21
    const-string v3, "appc"

    .line 55
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_23

    move v7, v4

    goto :goto_22

    :cond_23
    move v7, v5

    :goto_22
    if-eqz v7, :cond_24

    move-object/from16 v26, v3

    goto :goto_23

    :cond_24
    move-object/from16 v26, v6

    :goto_23
    const-string/jumbo v3, "usd"

    .line 56
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_25

    move v7, v4

    goto :goto_24

    :cond_25
    move v7, v5

    :goto_24
    if-eqz v7, :cond_26

    move-object/from16 v27, v3

    goto :goto_25

    :cond_26
    move-object/from16 v27, v6

    :goto_25
    const-string/jumbo v3, "vat"

    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_27

    move v7, v4

    goto :goto_26

    :cond_27
    move v7, v5

    :goto_26
    if-eqz v7, :cond_28

    move-object/from16 v28, v3

    goto :goto_27

    :cond_28
    move-object/from16 v28, v6

    :goto_27
    const-string v3, "discount"

    .line 58
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_29

    move v3, v4

    goto :goto_28

    :cond_29
    move v3, v5

    :goto_28
    if-eqz v3, :cond_2a

    move-object/from16 v29, v2

    goto :goto_29

    :cond_2a
    move-object/from16 v29, v6

    .line 52
    :goto_29
    new-instance v2, Lcom/aptoide/sdk/billing/mappers/Price;

    move-object/from16 v23, v2

    invoke-direct/range {v23 .. v29}, Lcom/aptoide/sdk/billing/mappers/Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v23, v2

    goto :goto_2a

    :cond_2b
    move-object/from16 v23, v6

    :goto_2a
    const-string v2, "channel"

    .line 62
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2c

    goto :goto_2b

    :cond_2c
    move v4, v5

    :goto_2b
    if-eqz v4, :cond_2d

    move-object/from16 v24, v0

    goto :goto_2c

    :cond_2d
    move-object/from16 v24, v6

    .line 64
    :goto_2c
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v24}, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Gateway;Lcom/aptoide/sdk/billing/mappers/Metadata;Lcom/aptoide/sdk/billing/mappers/Price;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 84
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "There was an error mapping the response."

    invoke-static {v3, v2}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 85
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v2

    .line 86
    sget-object v3, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;->TRANSACTION:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponse()Ljava/lang/String;

    move-result-object v4

    .line 88
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v2, v3, v4, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendBackendMappingFailureEvent(Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;

    move-object v5, v0

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v23, 0x1fffe

    const/16 v24, 0x0

    invoke-direct/range {v5 .. v24}, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Gateway;Lcom/aptoide/sdk/billing/mappers/Metadata;Lcom/aptoide/sdk/billing/mappers/Price;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 83
    :cond_2e
    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 15
    :cond_2f
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getException()Ljava/lang/Exception;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to obtain Transaction. ResponseCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " | Cause: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;

    move-object v2, v0

    invoke-virtual/range {p1 .. p1}, Lcom/aptoide/sdk/billing/service/RequestResponse;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

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

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0x1fffe

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/mappers/Gateway;Lcom/aptoide/sdk/billing/mappers/Metadata;Lcom/aptoide/sdk/billing/mappers/Price;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
