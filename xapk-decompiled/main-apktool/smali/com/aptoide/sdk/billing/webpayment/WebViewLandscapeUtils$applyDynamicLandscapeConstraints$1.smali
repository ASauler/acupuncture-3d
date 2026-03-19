.class final Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebViewLandscapeUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->applyDynamicLandscapeConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mBaseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic $webViewContainerParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;->$mBaseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;->$webViewContainerParams:Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 51
    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;->$mBaseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils$applyDynamicLandscapeConstraints$1;->$webViewContainerParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->applyDefaultLandscapeConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
