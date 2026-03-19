.class public final Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;
.super Landroid/app/Activity;
.source "WebPaymentActivity.kt"

# interfaces
.implements Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;
.implements Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;
.implements Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;",
        "Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer<",
        "Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;",
        ">;",
        "Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebPaymentActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebPaymentActivity.kt\ncom/aptoide/sdk/billing/webpayment/WebPaymentActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,320:1\n1#2:321\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 ?2\u00020\u00012\u00020\u00022\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0012\u0004\u0012\u00020\u00060\u0005:\u0001?B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0004H\u0016J\u0012\u0010\u001f\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u0014H\u0002J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u0011H\u0017J\u0008\u0010$\u001a\u00020\u001dH\u0002J\u0014\u0010%\u001a\u00020\u001d2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\'\u001a\u00020\u001dH\u0002J\u0008\u0010(\u001a\u00020\u001dH\u0002J\"\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u00142\u0008\u0010&\u001a\u0004\u0018\u00010,H\u0014J\u0008\u0010-\u001a\u00020\u001dH\u0016J\u0010\u0010.\u001a\u00020\u001d2\u0006\u0010/\u001a\u000200H\u0016J\u0012\u00101\u001a\u00020\u001d2\u0008\u00102\u001a\u0004\u0018\u000103H\u0014J\u0008\u00104\u001a\u00020\u001dH\u0014J\u0012\u00105\u001a\u00020\u001d2\u0008\u00106\u001a\u0004\u0018\u00010\u0006H\u0017J\u0010\u00107\u001a\u00020\u001d2\u0006\u00108\u001a\u000203H\u0014J\u0010\u00109\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u0006H\u0017J\u0008\u0010;\u001a\u00020\u001dH\u0002J\u0008\u0010<\u001a\u00020\u001dH\u0002J\u0010\u0010=\u001a\u00020\u001d2\u0006\u0010:\u001a\u00020\u0006H\u0003J\u0010\u0010>\u001a\u00020\u00112\u0006\u0010:\u001a\u00020\u0006H\u0017R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;",
        "Landroid/app/Activity;",
        "Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;",
        "Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;",
        "Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;",
        "Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;",
        "",
        "()V",
        "baseConstraintLayout",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "internalWebViewClient",
        "Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;",
        "getInternalWebViewClient",
        "()Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;",
        "internalWebViewClient$delegate",
        "Lkotlin/Lazy;",
        "responseReceived",
        "",
        "skuType",
        "walletDeeplinkResponseCode",
        "",
        "Ljava/lang/Integer;",
        "webView",
        "Landroid/webkit/WebView;",
        "webViewContainer",
        "Landroid/widget/LinearLayout;",
        "webViewDetails",
        "Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;",
        "accept",
        "",
        "value",
        "acceptWebPaymentActionStream",
        "adjustWebViewSize",
        "orientation",
        "allowExternalApps",
        "allow",
        "connectViews",
        "notifyWebViewOfExternalPaymentResult",
        "data",
        "observeWalletPurchaseResultDeeplinkStream",
        "observeWebPaymentActionStream",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "onBackPressed",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPurchaseResult",
        "result",
        "onSaveInstanceState",
        "outState",
        "openDeeplink",
        "url",
        "removeWalletPurchaseResultDeeplinkStreamCollector",
        "setupBackgroundToClose",
        "setupWebView",
        "startExternalPayment",
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
.field public static final Companion:Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;

.field private static final SKU:Ljava/lang/String; = "SKU"

.field private static final SKU_TYPE:Ljava/lang/String; = "SKU_TYPE"

.field private static final URL:Ljava/lang/String; = "URL"

.field private static final WEB_VIEW_DETAILS:Ljava/lang/String; = "WEB_VIEW_DETAILS"


# instance fields
.field private baseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final internalWebViewClient$delegate:Lkotlin/Lazy;

.field private responseReceived:Z

.field private skuType:Ljava/lang/String;

.field private walletDeeplinkResponseCode:Ljava/lang/Integer;

.field private webView:Landroid/webkit/WebView;

.field private webViewContainer:Landroid/widget/LinearLayout;

.field private webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;


# direct methods
.method public static synthetic $r8$lambda$M8tFxkhOq6SQjzwqqaUHAy8eTCA(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->setupBackgroundToClose$lambda$3(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$internalWebViewClient$2;

    invoke-direct {v0, p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$internalWebViewClient$2;-><init>(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->internalWebViewClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final adjustWebViewSize(I)V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewContainer:Landroid/widget/LinearLayout;

    .line 235
    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->baseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 238
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 243
    iget-object v4, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->hasLandscapeDetails()Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 244
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

    .line 245
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 248
    iget-object v3, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->getLandscapeScreenDimensions()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    move-result-object v3

    .line 244
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->applyDynamicLandscapeConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    .line 252
    iget-object v4, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->hasPortraitDetails()Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    .line 253
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;

    .line 254
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 257
    iget-object v3, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;->getPortraitScreenDimensions()Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;

    move-result-object v3

    .line 253
    invoke-virtual {p1, v2, v1, v0, v3}, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;->applyDynamicPortraitConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails$OrientedScreenDimensions;)V

    goto :goto_1

    .line 260
    :cond_3
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/aptoide/billing/sdk/R$bool;->isTablet:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2, v1, v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewTabletUtils;->applyTabletConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_4
    if-ne p1, v3, :cond_5

    .line 264
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;

    invoke-virtual {p1, v1, v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewLandscapeUtils;->applyDefaultLandscapeConstraints(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 266
    :cond_5
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p1, v2, v1, v0}, Lcom/aptoide/sdk/billing/webpayment/WebViewPortraitUtils;->applyDefaultPortraitConstraints(Landroid/app/Activity;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :goto_1
    iget-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final connectViews()V
    .locals 1

    .line 207
    sget v0, Lcom/aptoide/billing/sdk/R$id;->web_view:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    .line 208
    sget v0, Lcom/aptoide/billing/sdk/R$id;->container_for_web_view:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewContainer:Landroid/widget/LinearLayout;

    .line 209
    sget v0, Lcom/aptoide/billing/sdk/R$id;->base_constraint_layout:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->baseConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method private final getInternalWebViewClient()Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->internalWebViewClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;

    return-object v0
.end method

.method public static final newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)Landroid/content/Intent;
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$Companion;->newIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final notifyWebViewOfExternalPaymentResult(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 288
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentExecuteExternalDeeplinkEvent(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:onPaymentStateUpdated(\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentExternalPaymentResultEvent()V

    .line 292
    iget-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_1

    const-string v0, "javascript:onPaymentStateUpdated()"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic notifyWebViewOfExternalPaymentResult$default(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->notifyWebViewOfExternalPaymentResult(Ljava/lang/String;)V

    return-void
.end method

.method private final observeWalletPurchaseResultDeeplinkStream()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->collect(Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;)V

    return-void
.end method

.method private final observeWebPaymentActionStream()V
    .locals 2

    .line 283
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->collect(Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;)V

    return-void
.end method

.method private final removeWalletPurchaseResultDeeplinkStreamCollector()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->removeCollector(Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream$Consumer;)V

    return-void
.end method

.method private final setupBackgroundToClose()V
    .locals 2

    .line 213
    sget v0, Lcom/aptoide/billing/sdk/R$id;->base_constraint_layout:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setupBackgroundToClose$lambda$3(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->finish()V

    return-void
.end method

.method private final setupWebView(Ljava/lang/String;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    :goto_1
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 222
    :goto_3
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 224
    :goto_4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 226
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    const-string v1, "null cannot be cast to non-null type com.aptoide.sdk.billing.webpayment.SDKWebPaymentInterface"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/aptoide/sdk/billing/webpayment/SDKWebPaymentInterface;

    const-string v2, "SDKWebPaymentInterface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getInternalWebViewClient()Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 228
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading WebView for URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const-string v0, "Loading WebView to start Web Payment."

    .line 229
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public accept(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received response from WalletPaymentDeeplinkResponseStream with responseCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentWalletPaymentResultEvent()V

    .line 121
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->getResponseCode()I

    move-result v0

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v0, "Response code successful. Sending Purchase Result and finishing WebPaymentActivity."

    .line 122
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->responseReceived:Z

    .line 127
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object v0

    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->skuType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->toSDKPaymentResponse(Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 128
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->finish()V

    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->walletDeeplinkResponseCode:Ljava/lang/Integer;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->accept(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;)V

    return-void
.end method

.method public bridge synthetic acceptWebPaymentActionStream(Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->acceptWebPaymentActionStream(Ljava/lang/String;)V

    return-void
.end method

.method public acceptWebPaymentActionStream(Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->notifyWebViewOfExternalPaymentResult(Ljava/lang/String;)V

    return-void
.end method

.method public allowExternalApps(Z)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 202
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentAllowExternalAppsEvent(Z)V

    .line 203
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getInternalWebViewClient()Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/webpayment/InternalWebViewClient;->setShouldAllowExternalApps(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received response from External Payment Activity.\nRequest Code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nResult Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {p2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 144
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extras: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const/16 p3, 0x33

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    .line 146
    invoke-static {p0, p2, p1, p2}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->notifyWebViewOfExternalPaymentResult$default(Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "Going back in WebView."

    .line 152
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    const-string v0, "WebView already at initial page. Exiting activity."

    .line 155
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->adjustWebViewSize(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/aptoide/billing/sdk/R$layout;->web_payment_activity:I

    invoke-virtual {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "URL not present in the Bundle. Aborting the WebView Payment."

    .line 65
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 67
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->finish()V

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->connectViews()V

    if-eqz p1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "SKU_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->skuType:Ljava/lang/String;

    .line 79
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentStartEvent(Ljava/lang/String;)V

    .line 82
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "WEB_VIEW_DETAILS"

    if-lt p1, v1, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-class v1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    .line 81
    :goto_0
    iput-object p1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    .line 88
    sget-object p1, Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;->INSTANCE:Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webViewDetails:Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;

    invoke-virtual {p1, v1, v2}, Lcom/aptoide/sdk/billing/webpayment/WebViewOrientationUtils;->setupOrientation(Landroid/app/Activity;Lcom/aptoide/sdk/billing/payflow/models/WebViewDetails;)V

    .line 89
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->setupBackgroundToClose()V

    .line 90
    invoke-direct {p0, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->setupWebView(Ljava/lang/String;)V

    .line 91
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/aptoide/sdk/core/ui/UIUtilsKt;->getScreenOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->adjustWebViewSize(I)V

    .line 92
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->observeWalletPurchaseResultDeeplinkStream()V

    .line 93
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->observeWebPaymentActionStream()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 107
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->responseReceived:Z

    if-nez v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->walletDeeplinkResponseCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    invoke-direct {v1, v0}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->toSDKPaymentResponse$default(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createCanceledTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    .line 111
    :cond_1
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->removeWalletPurchaseResultDeeplinkStreamCollector()V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPurchaseResult(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "Sending Payment Result with resultCode: "

    const-string v1, "Received Payment Result with responseCode: "

    const/4 v2, 0x1

    .line 162
    iput-boolean v2, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->responseReceived:Z

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 163
    :goto_0
    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    const-string v2, "Received response from WebView Payment Result."

    .line 164
    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 167
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance p1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    invoke-direct {p1, v2}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(Lorg/json/JSONObject;)V

    .line 171
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->getResponseCode()I

    move-result v2

    .line 172
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->getPurchaseData()Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;->getProductId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->skuType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->toSDKPaymentResponse(Ljava/lang/String;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getResultCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "There was a failure receiving the purchase result from the WebView."

    .line 178
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentErrorProcessingPurchaseResultEvent(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    goto :goto_2

    .line 182
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;

    .line 183
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentPurchaseResultEmptyEvent()V

    .line 184
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    :goto_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method

.method public openDeeplink(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/HandleDeeplinkFromWebView;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandleDeeplinkFromWebView;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/aptoide/sdk/billing/usecases/HandleDeeplinkFromWebView;->invoke(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public startExternalPayment(Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWebPaymentLaunchExternalPaymentEvent(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity;->Companion:Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;->newIntent$default(Lcom/aptoide/sdk/billing/webpayment/ExternalPaymentActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0x33

    invoke-virtual {p0, p1, v0}, Lcom/aptoide/sdk/billing/webpayment/WebPaymentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method
