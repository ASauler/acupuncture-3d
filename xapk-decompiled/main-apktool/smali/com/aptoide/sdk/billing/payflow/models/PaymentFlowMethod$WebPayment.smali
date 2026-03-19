.class public final Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;
.super Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebPayment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "name",
        "",
        "priority",
        "",
        "availableFeatures",
        "",
        "version",
        "paymentFlow",
        "webViewDetails",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V",
        "getPaymentFlow",
        "()Ljava/lang/String;",
        "getVersion",
        "getWebViewDetails",
        "()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "equals",
        "",
        "other",
        "",
        "toString",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;


# instance fields
.field private final paymentFlow:Ljava/lang/String;

.field private final version:Ljava/lang/String;

.field private final webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;-><init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p4, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->version:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->paymentFlow:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;

    .line 71
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getPriority()I

    move-result v1

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getPriority()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 73
    iget-object v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->paymentFlow:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->paymentFlow:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->version:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getAvailableFeatures()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getAvailableFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getPaymentFlow()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->paymentFlow:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebViewDetails()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getName()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getPriority()I

    move-result v2

    .line 62
    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->version:Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->paymentFlow:Ljava/lang/String;

    .line 64
    iget-object v5, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    .line 65
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;->getAvailableFeatures()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": [name: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentFlow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", webViewDetails: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableFeatures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
