.class public final Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;
.super Ljava/lang/Object;
.source "UnavailableBillingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/service/UnavailableBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/aptoide/sdk/billing/service/UnavailableBillingService;",
        "getInstance",
        "()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;",
        "unavailableBillingServiceInstance",
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

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;
    .locals 2

    .line 86
    invoke-static {}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;->access$getUnavailableBillingServiceInstance$cp()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;->access$setUnavailableBillingServiceInstance$cp(Lcom/aptoide/sdk/billing/service/UnavailableBillingService;)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/service/UnavailableBillingService;->access$getUnavailableBillingServiceInstance$cp()Lcom/aptoide/sdk/billing/service/UnavailableBillingService;

    move-result-object v0

    return-object v0
.end method
