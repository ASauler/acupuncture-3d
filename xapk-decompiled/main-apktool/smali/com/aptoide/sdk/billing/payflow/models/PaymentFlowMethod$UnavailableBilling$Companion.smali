.class public final Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;
.super Ljava/lang/Object;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFlowMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFlowMethod.kt\ncom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;",
        "",
        "()V",
        "fromJsonObject",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;",
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

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;ILjava/util/List;)Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;"
        }
    .end annotation

    const-string v0, "methodName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "error_message"

    .line 98
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 99
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 101
    :cond_1
    new-instance p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    return-object p1
.end method
