.class public final Lcom/aptoide/sdk/billing/BillingFlowParams;
.super Ljava/lang/Object;
.source "BillingFlowParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;,
        Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;,
        Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\r\u0018\u0000 \u00132\u00020\u0001:\u0003\u0012\u0013\u0014B9\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/BillingFlowParams;",
        "",
        "sku",
        "",
        "skuType",
        "developerPayload",
        "obfuscatedAccountId",
        "freeTrial",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "getDeveloperPayload",
        "()Ljava/lang/String;",
        "getFreeTrial",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getObfuscatedAccountId",
        "getSku",
        "getSkuType",
        "Builder",
        "Companion",
        "ProductDetailsParams",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;


# instance fields
.field private final developerPayload:Ljava/lang/String;

.field private final freeTrial:Ljava/lang/Boolean;

.field private final obfuscatedAccountId:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final skuType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/BillingFlowParams;->Companion:Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string/jumbo v0, "sku"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skuType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->sku:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->skuType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->developerPayload:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->obfuscatedAccountId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->freeTrial:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/billing/BillingFlowParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static final newBuilder()Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/BillingFlowParams;->Companion:Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingFlowParams$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreeTrial()Ljava/lang/Boolean;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->freeTrial:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getObfuscatedAccountId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->obfuscatedAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSku()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public final getSkuType()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BillingFlowParams;->skuType:Ljava/lang/String;

    return-object v0
.end method
