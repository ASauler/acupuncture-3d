.class public abstract Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;
.super Ljava/lang/Object;
.source "PaymentFlowMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;,
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;,
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;,
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;,
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;,
        Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00142\u00020\u0001:\u0006\u0013\u0014\u0015\u0016\u0017\u0018B\'\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u0082\u0001\u0005\u0019\u001a\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "",
        "name",
        "",
        "priority",
        "",
        "availableFeatures",
        "",
        "(Ljava/lang/String;ILjava/util/List;)V",
        "getAvailableFeatures",
        "()Ljava/util/List;",
        "getName",
        "()Ljava/lang/String;",
        "getPriority",
        "()I",
        "equals",
        "",
        "other",
        "toString",
        "AptoideGames",
        "Companion",
        "GamesHub",
        "UnavailableBilling",
        "Wallet",
        "WebPayment",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$AptoideGames;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$GamesHub;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$UnavailableBilling;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Wallet;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$WebPayment;",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

.field public static final DEFAULT_PAYMENT_FLOW:Ljava/lang/String; = "default"

.field public static final DEFAULT_WEB_PAYMENT_URL_VERSION:Ljava/lang/String; = "v1"

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1


# instance fields
.field private final availableFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->Companion:Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->name:Ljava/lang/String;

    .line 7
    iput p2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->priority:I

    .line 8
    iput-object p3, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->availableFeatures:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 113
    iget-object v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->priority:I

    iget v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->priority:I

    if-ne v1, v2, :cond_0

    .line 115
    iget-object p1, p1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->availableFeatures:Ljava/util/List;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->availableFeatures:Ljava/util/List;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getAvailableFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->availableFeatures:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->priority:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->name:Ljava/lang/String;

    iget v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->priority:I

    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->availableFeatures:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": [name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availableFeatures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
