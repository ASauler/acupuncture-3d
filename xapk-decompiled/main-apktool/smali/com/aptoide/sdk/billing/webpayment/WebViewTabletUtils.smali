.class public final Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;
.super Ljava/lang/Object;
.source "WebViewTabletUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;",
        "",
        "()V",
        "TABLET_MAX_HEIGHT_DP",
        "",
        "TABLET_MAX_HEIGHT_PERCENT",
        "TABLET_MAX_WIDTH_DP",
        "TABLET_MAX_WIDTH_PERCENT",
        "applyTabletConstraints",
        "",
        "activity",
        "Landroid/app/Activity;",
        "mBaseConstraintLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "webViewContainerParams",
        "Landroid/view/ViewGroup$LayoutParams;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;

.field private static final TABLET_MAX_HEIGHT_DP:F = 480.0f

.field private static final TABLET_MAX_HEIGHT_PERCENT:F = 0.9f

.field private static final TABLET_MAX_WIDTH_DP:F = 688.0f

.field private static final TABLET_MAX_WIDTH_PERCENT:F = 0.9f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTabletConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 19
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 21
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    invoke-virtual {v1, v0, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->resetConstraintsAndSize(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const v1, 0x3f666666    # 0.9f

    .line 23
    invoke-virtual {v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    .line 28
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    .line 27
    invoke-virtual {v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    .line 32
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    .line 33
    check-cast p1, Landroid/content/Context;

    const/high16 v1, 0x43f00000    # 480.0f

    invoke-static {v1, p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->floatToPxs(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    .line 31
    invoke-virtual {v0, p3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxHeight(II)V

    .line 36
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/high16 v1, 0x442c0000    # 688.0f

    .line 37
    invoke-static {v1, p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->floatToPxs(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    .line 35
    invoke-virtual {v0, p3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainMaxWidth(II)V

    .line 40
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
