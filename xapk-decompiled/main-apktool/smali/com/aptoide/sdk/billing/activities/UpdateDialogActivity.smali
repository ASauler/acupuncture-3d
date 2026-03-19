.class public final Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;
.super Landroid/app/Activity;
.source "UpdateDialogActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;",
        "Landroid/app/Activity;",
        "()V",
        "sdkAnalytics",
        "Lcom/aptoide/sdk/core/analytics/SdkAnalytics;",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setActionsForButtons",
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


# instance fields
.field private final sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;


# direct methods
.method public static synthetic $r8$lambda$B8NlOJHcBSTVyDaNhcDGizlpwzo(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->setActionsForButtons$lambda$2$lambda$1(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNKriBcMARgxveUwTRtoxwoaN5w(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->setActionsForButtons$lambda$4$lambda$3(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qOYef36q8gutPEUpZhHOfSrhcZ0(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->setActionsForButtons$lambda$2$lambda$1$lambda$0(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    return-void
.end method

.method private final setActionsForButtons()V
    .locals 2

    .line 34
    sget v0, Lcom/aptoide/billing/sdk/R$id;->button_update:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda1;-><init>(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_0
    sget v0, Lcom/aptoide/billing/sdk/R$id;->button_close:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 43
    new-instance v1, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda2;-><init>(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private static final setActionsForButtons$lambda$2$lambda$1(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "User pressed UPDATE_APP on UpdateDialogActivity."

    .line 36
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string/jumbo v0, "update"

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateDialogActionEvent(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 39
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->finish()V

    return-void
.end method

.method private static final setActionsForButtons$lambda$2$lambda$1$lambda$0(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;)V
    .locals 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->invoke(Landroid/content/Context;)V

    return-void
.end method

.method private static final setActionsForButtons$lambda$4$lambda$3(Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "User pressed CANCEL on UpdateDialogActivity."

    .line 44
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateDialogActionEvent(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "User BACK_PRESSED on UpdateDialogActivity."

    .line 28
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    const-string v1, "back_button"

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateDialogActionEvent(Ljava/lang/String;)V

    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Lcom/aptoide/billing/sdk/R$layout;->update_dialog_activity:I

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->setContentView(I)V

    const-string p1, "Starting UpdateDialogActivity."

    .line 21
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->sdkAnalytics:Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateDialogRequestEvent()V

    .line 24
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;->setActionsForButtons()V

    return-void
.end method
