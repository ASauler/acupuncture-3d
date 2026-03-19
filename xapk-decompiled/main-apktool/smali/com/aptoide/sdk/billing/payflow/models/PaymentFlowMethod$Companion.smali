.class public final Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;
.super Ljava/lang/Object;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentFlowMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentFlowMethod.kt\ncom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n288#2,2:139\n288#2,2:141\n288#2,2:143\n*S KotlinDebug\n*F\n+ 1 PaymentFlowMethod.kt\ncom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion\n*L\n129#1:139,2\n132#1:141,2\n135#1:143,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\t\u001a\u0004\u0018\u00010\u00042\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bJ\u0016\u0010\r\u001a\u0004\u0018\u00010\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00042\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;",
        "",
        "()V",
        "DEFAULT_PAYMENT_FLOW",
        "",
        "DEFAULT_WEB_PAYMENT_URL_VERSION",
        "SCREEN_ORIENTATION_LANDSCAPE",
        "",
        "SCREEN_ORIENTATION_PORTRAIT",
        "getPaymentFlowFromPayflowMethod",
        "payflowMethodsList",
        "",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "getPaymentUrlVersionFromPayflowMethod",
        "getUnavailableBillingMessage",
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

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPaymentFlowFromPayflowMethod(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 132
    check-cast p1, Ljava/lang/Iterable;

    .line 141
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 132
    instance-of v2, v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    check-cast v1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getPaymentFlow()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final getPaymentUrlVersionFromPayflowMethod(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "payflowMethodsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    check-cast p1, Ljava/lang/Iterable;

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 129
    instance-of v2, v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getVersion()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public final getUnavailableBillingMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "payflowMethodsList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    check-cast p1, Ljava/lang/Iterable;

    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 135
    instance-of v2, v2, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method
