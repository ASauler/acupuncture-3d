.class public final Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;
.super Ljava/lang/Object;
.source "WebViewPortraitUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ(\u0010\r\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;",
        "",
        "()V",
        "PORTRAIT_MAX_HEIGHT_DP",
        "",
        "applyDefaultPortraitConstraints",
        "",
        "activity",
        "Landroid/app/Activity;",
        "mBaseConstraintLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "webViewContainerParams",
        "Landroid/view/ViewGroup$LayoutParams;",
        "applyDynamicPortraitConstraints",
        "webViewDetailsDimensions",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;

.field private static final PORTRAIT_MAX_HEIGHT_DP:F = 560.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDefaultPortraitConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Setting Default Portrait Constraints."

    .line 25
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 27
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 29
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    invoke-virtual {v1, v0, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->resetConstraintsAndSize(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenOrientedHeightInDp(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x440c0000    # 560.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 34
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    invoke-virtual {p1, v0, p2}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->setMaxHeightForWebView(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v2, p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->floatToPxs(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 p1, -0x1

    .line 39
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method public final applyDynamicPortraitConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils$applyDynamicPortraitConstraints$1;

    invoke-direct {v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils$applyDynamicPortraitConstraints$1;-><init>(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->applyDynamicConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
