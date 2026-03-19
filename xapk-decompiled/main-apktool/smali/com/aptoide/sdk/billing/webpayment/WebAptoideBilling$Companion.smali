.class public final Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;
.super Ljava/lang/Object;
.source "WebAptoideBilling.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;",
        "",
        "()V",
        "MAX_SKUS_SEND_WS",
        "",
        "SUPPORTED_API_VERSION",
        "buyItemProperties",
        "Lcom/aptoide/sdk/billing/BuyItemProperties;",
        "instance",
        "Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;",
        "getInstance",
        "()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;",
        "webAptoideBillingInstance",
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

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;
    .locals 2

    .line 257
    invoke-static {}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->access$getWebAptoideBillingInstance$cp()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->access$setWebAptoideBillingInstance$cp(Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;)V

    .line 260
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;->access$getWebAptoideBillingInstance$cp()Lcom/aptoide/sdk/billing/webpayment/WebAptoideBilling;

    move-result-object v0

    return-object v0
.end method
