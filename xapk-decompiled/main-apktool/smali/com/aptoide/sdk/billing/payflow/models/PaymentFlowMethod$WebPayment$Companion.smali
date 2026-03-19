.class public final Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;
.super Ljava/lang/Object;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFlowMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFlowMethod.kt\ncom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;",
        "",
        "()V",
        "fromJsonObject",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;",
        "paymentMethodsJsonObject",
        "Lorg/json/JSONObject;",
        "methodName",
        "",
        "priority",
        "",
        "availableFeatures",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/List;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;"
        }
    .end annotation

    const-string v0, "methodName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v3, "version"

    .line 37
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 38
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v3, "v1"

    :goto_2
    move-object v8, v3

    if-eqz p1, :cond_5

    const-string v3, "payment_flow"

    .line 42
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 43
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v0

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    const-string v4, "default"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    if-eqz v0, :cond_5

    move-object v9, v3

    goto :goto_5

    :cond_5
    move-object v9, v2

    .line 46
    :goto_5
    sget-object v0, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->Companion:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;

    if-eqz p1, :cond_6

    const-string/jumbo v1, "screen_details"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$Companion;->fromJsonObject(Lorg/json/JSONObject;)Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    move-result-object v10

    .line 48
    new-instance p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v4 .. v10}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V

    return-object p1
.end method
