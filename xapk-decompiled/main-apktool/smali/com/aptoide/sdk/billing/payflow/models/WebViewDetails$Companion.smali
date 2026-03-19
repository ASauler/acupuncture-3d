.class public final Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;
.super Ljava/lang/Object;
.source "WebViewDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebViewDetails.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebViewDetails.kt\ncom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,81:1\n1#2:82\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;",
        "",
        "()V",
        "fromJsonObject",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "screenDetailsJSONObject",
        "Lorg/json/JSONObject;",
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
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonObject(Lorg/json/JSONObject;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const-string v1, "force_screen_orientation"

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    const-string v2, "landscape"

    .line 42
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "height_percentage"

    const-string/jumbo v6, "width_percentage"

    const-string v7, "height_dp"

    const-string/jumbo v8, "width_dp"

    if-eqz v2, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eqz v10, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v3

    :goto_2
    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    move-object v9, v0

    .line 44
    :goto_3
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    if-eqz v11, :cond_4

    move v11, v4

    goto :goto_4

    :cond_4
    move v11, v3

    :goto_4
    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move-object v10, v0

    .line 46
    :goto_5
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    xor-int/2addr v12, v4

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    move-object v11, v0

    .line 48
    :goto_6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 49
    move-object v12, v2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    xor-int/2addr v12, v4

    if-eqz v12, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v0

    .line 51
    :goto_7
    new-instance v12, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    invoke-direct {v12, v9, v10, v11, v2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_8

    :cond_8
    move-object v12, v0

    :goto_8
    const-string v2, "portrait"

    .line 60
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_9

    move v8, v4

    goto :goto_9

    :cond_9
    move v8, v3

    :goto_9
    if-eqz v8, :cond_a

    goto :goto_a

    :cond_a
    move-object v2, v0

    .line 62
    :goto_a
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-eqz v8, :cond_b

    move v3, v4

    :cond_b
    if-eqz v3, :cond_c

    goto :goto_b

    :cond_c
    move-object v7, v0

    .line 64
    :goto_b
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_d

    goto :goto_c

    :cond_d
    move-object v3, v0

    .line 66
    :goto_c
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 67
    move-object v5, p1

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_e

    move-object v0, p1

    .line 69
    :cond_e
    new-instance p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    invoke-direct {p1, v2, v7, v3, v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v0, p1

    .line 77
    :cond_f
    new-instance p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-direct {p1, v1, v12, v0}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;-><init>(Ljava/lang/Integer;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V

    move-object v0, p1

    :cond_10
    return-object v0
.end method
