.class final Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PayflowResponseMapper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->mapPaymentFlowMethods(Lcom/aptoide/sdk/billing/service/RequestResponse;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayflowResponseMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayflowResponseMapper.kt\ncom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,199:1\n1603#2,9:200\n1855#2:209\n1856#2:211\n1612#2:212\n1#3:210\n*S KotlinDebug\n*F\n+ 1 PayflowResponseMapper.kt\ncom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1\n*L\n54#1:200,9\n54#1:209\n54#1:211\n54#1:212\n54#1:210\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "methodName",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $paymentMethodsObject:Lorg/json/JSONObject;

.field final synthetic $this_runCatching:Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;)V
    .locals 0

    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$paymentMethodsObject:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$this_runCatching:Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
    .locals 8

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$paymentMethodsObject:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "priority"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$paymentMethodsObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string/jumbo v3, "supported_features"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$this_runCatching:Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    .line 52
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    :cond_1
    check-cast v4, Ljava/lang/Iterable;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 209
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 208
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 55
    invoke-static {v3, v5}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;->access$mapToFeatureType(Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper;I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 208
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    :cond_3
    check-cast v1, Ljava/util/List;

    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 58
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string/jumbo v3, "unavailable_billing"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 71
    :cond_5
    sget-object v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;

    .line 72
    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$paymentMethodsObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;->fromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/List;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    goto :goto_4

    :sswitch_1
    const-string v3, "games_hub_checkout"

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    .line 60
    :cond_6
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;

    invoke-direct {v2, p1, v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;-><init>(Ljava/lang/String;ILjava/util/List;)V

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    goto :goto_4

    :sswitch_2
    const-string v3, "aptoide_games"

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 61
    :cond_7
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;

    invoke-direct {v2, p1, v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;-><init>(Ljava/lang/String;ILjava/util/List;)V

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    goto :goto_4

    :sswitch_3
    const-string/jumbo v3, "wallet"

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    .line 59
    :cond_8
    new-instance v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;

    invoke-direct {v2, p1, v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;-><init>(Ljava/lang/String;ILjava/util/List;)V

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    goto :goto_4

    :sswitch_4
    const-string/jumbo v3, "web_payment"

    .line 58
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    .line 63
    :cond_9
    sget-object v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;

    .line 64
    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->$paymentMethodsObject:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 63
    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;->fromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/List;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    :goto_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x48d8efe5 -> :sswitch_4
        -0x2f65ac07 -> :sswitch_3
        0xba8e142 -> :sswitch_2
        0x30cb260e -> :sswitch_1
        0x4c64518c -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowResponseMapper$mapPaymentFlowMethods$1$1$1;->invoke(Ljava/lang/String;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    move-result-object p1

    return-object p1
.end method
