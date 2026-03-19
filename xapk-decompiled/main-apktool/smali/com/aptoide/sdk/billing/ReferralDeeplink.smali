.class public final Lcom/aptoide/sdk/billing/ReferralDeeplink;
.super Ljava/lang/Object;
.source "ReferralDeeplink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/ReferralDeeplink;",
        "",
        "billingResult",
        "Lcom/aptoide/sdk/billing/BillingResult;",
        "storeDeeplink",
        "",
        "fallbackDeeplink",
        "(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V",
        "getBillingResult",
        "()Lcom/aptoide/sdk/billing/BillingResult;",
        "getFallbackDeeplink",
        "()Ljava/lang/String;",
        "getStoreDeeplink",
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


# instance fields
.field private final billingResult:Lcom/aptoide/sdk/billing/BillingResult;

.field private final fallbackDeeplink:Ljava/lang/String;

.field private final storeDeeplink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->billingResult:Lcom/aptoide/sdk/billing/BillingResult;

    .line 11
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->storeDeeplink:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->fallbackDeeplink:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/ReferralDeeplink;-><init>(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBillingResult()Lcom/aptoide/sdk/billing/BillingResult;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->billingResult:Lcom/aptoide/sdk/billing/BillingResult;

    return-object v0
.end method

.method public final getFallbackDeeplink()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->fallbackDeeplink:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoreDeeplink()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ReferralDeeplink;->storeDeeplink:Ljava/lang/String;

    return-object v0
.end method
