.class public final Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;
.super Ljava/lang/Object;
.source "WebViewLandscapeUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ(\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;",
        "",
        "()V",
        "LANDSCAPE_MAX_HEIGHT_PERCENT",
        "",
        "LANDSCAPE_MAX_WIDTH_PERCENT",
        "applyDefaultLandscapeConstraints",
        "",
        "mBaseConstraintLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "webViewContainerParams",
        "Landroid/view/ViewGroup$LayoutParams;",
        "applyDynamicLandscapeConstraints",
        "activity",
        "Landroid/app/Activity;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

.field private static final LANDSCAPE_MAX_HEIGHT_PERCENT:F = 0.9f

.field private static final LANDSCAPE_MAX_WIDTH_PERCENT:F = 0.9f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyDefaultLandscapeConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 24
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    invoke-virtual {v1, v0, p1, p2}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->resetConstraintsAndSize(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    sget p2, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const v1, 0x3f666666    # 0.9f

    .line 26
    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    .line 31
    sget p2, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    .line 30
    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    .line 34
    sget p2, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxHeight(II)V

    .line 35
    sget p2, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    .line 37
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final applyDynamicLandscapeConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;

    invoke-direct {v0, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->applyDynamicConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
