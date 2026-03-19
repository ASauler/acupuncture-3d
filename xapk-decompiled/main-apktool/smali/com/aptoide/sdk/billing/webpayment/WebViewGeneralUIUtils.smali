.class public final Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;
.super Ljava/lang/Object;
.source "WebViewGeneralUIUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000eJ*\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J*\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J*\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0018\u001a\u00020\u0010H\u0002J\"\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u001a\u001a\u00020\u0010H\u0002J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;",
        "",
        "()V",
        "applyDynamicConstraints",
        "",
        "activity",
        "Landroid/app/Activity;",
        "mBaseConstraintLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "webViewContainerParams",
        "Landroid/view/ViewGroup$LayoutParams;",
        "webViewDetailsDimensions",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;",
        "defaultFallback",
        "Lkotlin/Function0;",
        "handleExactHeight",
        "",
        "mConstraintSet",
        "Landroidx/constraintlayout/widget/ConstraintSet;",
        "screenHeight",
        "",
        "handleExactWidth",
        "screenWidth",
        "handlePercentageHeight",
        "isHeightSet",
        "handlePercentageWidth",
        "isWidthSet",
        "resetConstraintsAndSize",
        "setMaxHeightForWebView",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final handleExactHeight(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;I)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 116
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightDp()Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 117
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p4, :cond_1

    const-string p4, "Handling exact Height."

    .line 118
    invoke-static {p4}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 120
    sget p4, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    .line 121
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    check-cast p1, Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->floatToPxs(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    .line 119
    invoke-virtual {p2, p4, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "Failed to handle exact Height."

    .line 125
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final handleExactWidth(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;I)Z
    .locals 1

    if-eqz p3, :cond_0

    .line 135
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthDp()Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 136
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p4, :cond_1

    const-string p4, "Handling exact Width."

    .line 137
    invoke-static {p4}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 139
    sget p4, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    .line 140
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    check-cast p1, Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->floatToPxs(FLandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    .line 138
    invoke-virtual {p2, p4, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string p1, "Failed to handle exact Width."

    .line 144
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final handlePercentageHeight(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    const-string p1, "Height already set."

    .line 155
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 159
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getHeightPercentage()Ljava/lang/Double;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 160
    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p4

    move-object v1, p3

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p4, v1}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p4, "Handling percentage Height."

    .line 161
    invoke-static {p4}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 162
    invoke-static {p3, v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Double;D)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->setMaxHeightForWebView(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    .line 165
    :cond_2
    sget p2, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    double-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentHeight(IF)V

    :goto_1
    return v0

    :cond_3
    const-string p1, "Failed to handle percentage Height."

    .line 169
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final handlePercentageWidth(Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const-string p1, "Width already set."

    .line 179
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 183
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;->getWidthPercentage()Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 184
    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p3

    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p3, v1}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Handling percentage Width."

    .line 185
    invoke-static {p3}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 186
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainPercentWidth(IF)V

    return v0

    :cond_2
    const-string p1, "Failed to handle percentage Width."

    .line 189
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final applyDynamicConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            "Landroid/view/ViewGroup$LayoutParams;",
            "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultFallback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 71
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 73
    invoke-virtual {p0, v0, p2, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->resetConstraintsAndSize(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    move-object p3, p1

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenOrientedHeightInDp(Landroid/content/Context;)I

    move-result v1

    .line 78
    invoke-static {p3}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenOrientedWidthInDp(Landroid/content/Context;)I

    move-result p3

    .line 80
    invoke-direct {p0, p1, v0, p4, v1}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->handleExactHeight(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;I)Z

    move-result v1

    .line 82
    invoke-direct {p0, p1, v0, p4, p3}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->handleExactWidth(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;I)Z

    move-result p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "Height and Width set on 1st condition."

    .line 85
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .line 91
    :cond_0
    invoke-direct {p0, v0, p2, p4, v1}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->handlePercentageHeight(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "Height and Width set on 2nd condition."

    .line 94
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .line 99
    :cond_1
    invoke-direct {p0, v0, p4, p1}, Lcom/aptoide/sdk/billing/webpayment/WebViewGeneralUIUtils;->handlePercentageWidth(Landroidx/constraintlayout/widget/ConstraintSet;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;Z)Z

    move-result p1

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    const-string p1, "Height and Width set on 3rd condition."

    .line 102
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void

    .line 107
    :cond_2
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final resetConstraintsAndSize(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 12

    const-string v0, "mConstraintSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewContainerParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 25
    sget p3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    .line 27
    sget v1, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v2, 0x4

    .line 29
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 34
    sget v7, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v8, 0x6

    .line 36
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v9

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v6, p1

    .line 33
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 41
    sget v1, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v2, 0x7

    .line 43
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v3

    const/4 v4, 0x7

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method

.method public final setMaxHeightForWebView(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 8

    const-string v0, "mConstraintSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mBaseConstraintLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget v0, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 55
    sget v3, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    const/4 v4, 0x3

    .line 57
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p1

    .line 54
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    return-void
.end method
