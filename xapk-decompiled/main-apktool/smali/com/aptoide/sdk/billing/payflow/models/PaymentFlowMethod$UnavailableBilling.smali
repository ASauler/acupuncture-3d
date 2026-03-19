.class public final Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;
.super Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnavailableBilling"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0006\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\tR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "name",
        "",
        "priority",
        "",
        "availableFeatures",
        "",
        "errorMessage",
        "(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V",
        "getErrorMessage",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;


# instance fields
.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;-><init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 87
    iput-object p4, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
