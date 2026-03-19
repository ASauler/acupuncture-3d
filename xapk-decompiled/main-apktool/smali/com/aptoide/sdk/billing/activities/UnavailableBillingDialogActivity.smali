.class public final Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;
.super Landroid/app/Activity;
.source "UnavailableBillingDialogActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0004H\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0002\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;",
        "Landroid/app/Activity;",
        "()V",
        "finish",
        "",
        "getErrorMessage",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setupButtons",
        "setupMessage",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;

.field private static final ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MESSAGE"


# direct methods
.method public static synthetic $r8$lambda$sZe2IFOLRnLDWKJpMYAEjd9VZDM(Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->setupButtons$lambda$2$lambda$1(Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->Companion:Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->Companion:Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final setupButtons()V
    .locals 2

    .line 41
    sget v0, Lcom/aptoide/billing/sdk/R$id;->button_close:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 42
    new-instance v1, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final setupButtons$lambda$2$lambda$1(Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->finish()V

    return-void
.end method

.method private final setupMessage()V
    .locals 3

    .line 28
    sget v0, Lcom/aptoide/billing/sdk/R$id;->text_view_unavailable_billing_error_message:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 29
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aptoide/billing/sdk/R$string;->sdk_unavailable_description_body:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createServiceUnavailableResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Lcom/aptoide/billing/sdk/R$layout;->unavailable_billing_dialog_activity:I

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->setContentView(I)V

    const-string p1, "Starting UnavailableBillingDialogActivity."

    .line 21
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->setupMessage()V

    .line 24
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/UnavailableBillingDialogActivity;->setupButtons()V

    return-void
.end method
