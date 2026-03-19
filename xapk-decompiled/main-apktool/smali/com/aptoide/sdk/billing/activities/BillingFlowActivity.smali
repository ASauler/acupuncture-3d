.class public final Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;
.super Landroid/app/Activity;
.source "BillingFlowActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBillingFlowActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingFlowActivity.kt\ncom/aptoide/sdk/billing/activities/BillingFlowActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0002J\"\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0014J\u0012\u0010\u0010\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0014J\u0008\u0010\u0012\u001a\u00020\u000bH\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;",
        "Landroid/app/Activity;",
        "()V",
        "skuType",
        "",
        "getBundleFromExtras",
        "Landroid/os/Bundle;",
        "getBuyIntentFromBundle",
        "Landroid/content/Intent;",
        "bundle",
        "onActivityResult",
        "",
        "requestCode",
        "",
        "resultCode",
        "data",
        "onCreate",
        "savedInstanceState",
        "saveSkuTypeFromIntent",
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
.field private static final BUY_BUNDLE:Ljava/lang/String; = "BUY_BUNDLE"

.field public static final Companion:Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;


# instance fields
.field private skuType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->Companion:Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final getBundleFromExtras()Landroid/os/Bundle;
    .locals 3

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "BUY_BUNDLE"

    if-lt v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_0
    return-object v0
.end method

.method private final getBuyIntentFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "BUY_INTENT_RAW"

    if-lt v0, v1, :cond_0

    .line 72
    const-class v0, Landroid/content/Intent;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    :goto_0
    return-object p1
.end method

.method public static final newIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->Companion:Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity$Companion;->newIntent(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final saveSkuTypeFromIntent()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SKU_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->skuType:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received response from Billing Flow.\nRequest Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\nResult Code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 86
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string p1, "SKU_TYPE"

    .line 87
    iget-object v0, p0, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->skuType:Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    :cond_1
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    new-instance v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    invoke-direct {v0, p2, p3}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 89
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "Starting Billing Flow intent package: "

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v1, Lcom/aptoide/billing/sdk/R$layout;->transparent_activity:I

    invoke-virtual {p0, v1}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->setContentView(I)V

    if-eqz p1, :cond_0

    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->getBundleFromExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Bundle from extras not found. Sending FAILURE response for payment."

    .line 34
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 37
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->finish()V

    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->saveSkuTypeFromIntent()V

    .line 43
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->getBuyIntentFromBundle(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Buy Intent from bundle not found. Sending FAILURE response for payment."

    .line 46
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 49
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->finish()V

    return-void

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/16 v0, 0x33

    .line 53
    invoke-virtual {p0, p1, v0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to start payment activity."

    .line 55
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 57
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/BillingFlowActivity;->finish()V

    :goto_0
    return-void
.end method
