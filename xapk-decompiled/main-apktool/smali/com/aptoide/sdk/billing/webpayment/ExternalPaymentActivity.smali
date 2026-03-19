.class public final Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;
.super Landroid/app/Activity;
.source "ExternalPaymentActivity.kt"

# interfaces
.implements Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0002J\u0012\u0010\t\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014J\u0008\u0010\u000c\u001a\u00020\u0007H\u0014J\u0008\u0010\r\u001a\u00020\u0007H\u0014J\u0008\u0010\u000e\u001a\u00020\u0007H\u0002J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;",
        "Landroid/app/Activity;",
        "Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;",
        "()V",
        "customTabLaunched",
        "",
        "accept",
        "",
        "observeExternalPaymentResponseStream",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "removeExternalPaymentResponseStreamCollector",
        "startCustomTabForExternalPayment",
        "url",
        "",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

.field private static final SHOULD_CLOSE_ACTIVITY:Ljava/lang/String; = "SHOULD_CLOSE_ACTIVITY"

.field private static final URL:Ljava/lang/String; = "URL"


# instance fields
.field private customTabLaunched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final observeExternalPaymentResponseStream()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->collect(Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;)V

    return-void
.end method

.method private final removeExternalPaymentResponseStreamCollector()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream;->removeCollector(Lcom/aptoide/sdk/billing/listeners/ExternalPaymentResponseStream$Consumer;)V

    return-void
.end method

.method private final startCustomTabForExternalPayment(Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public accept()V
    .locals 4

    .line 73
    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget v0, Lcom/aptoide/billing/sdk/R$layout;->transparent_activity:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOULD_CLOSE_ACTIVITY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Closing External Payment Method on shouldCloseActivity."

    .line 27
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->finish()V

    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "URL not present in the Bundle. Aborting External Payment Method."

    .line 35
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 37
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->finish()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "SavedInstanceState is not null. Closing External Payment Method."

    .line 42
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->finish()V

    return-void

    .line 47
    :cond_2
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->observeExternalPaymentResponseStream()V

    .line 48
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->startCustomTabForExternalPayment(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->removeExternalPaymentResponseStreamCollector()V

    const/4 v0, -0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->setResult(I)V

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->customTabLaunched:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->customTabLaunched:Z

    :goto_0
    return-void
.end method
