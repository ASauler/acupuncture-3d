.class public final Lcom/aptoide/sdk/billing/ConsumeParams;
.super Ljava/lang/Object;
.source "ConsumeParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/ConsumeParams$Builder;,
        Lcom/aptoide/sdk/billing/ConsumeParams$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u0000 \u00082\u00020\u0001:\u0002\u0007\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ConsumeParams;",
        "",
        "purchaseToken",
        "",
        "(Ljava/lang/String;)V",
        "getPurchaseToken",
        "()Ljava/lang/String;",
        "Builder",
        "Companion",
        "aptoide-billing_release"
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
.field public static final Companion:Lcom/aptoide/sdk/billing/ConsumeParams$Companion;


# instance fields
.field private final purchaseToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/ConsumeParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/ConsumeParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/ConsumeParams;->Companion:Lcom/aptoide/sdk/billing/ConsumeParams$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/ConsumeParams;->purchaseToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/ConsumeParams;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final newBuilder()Lcom/aptoide/sdk/billing/ConsumeParams$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/ConsumeParams;->Companion:Lcom/aptoide/sdk/billing/ConsumeParams$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ConsumeParams$Companion;->newBuilder()Lcom/aptoide/sdk/billing/ConsumeParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ConsumeParams;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method
