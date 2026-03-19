.class public final Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;
.super Ljava/lang/Object;
.source "SdkWebPaymentFlowEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentAllowExternalApps;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExecuteExternalDeeplink;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToObtainUrl;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentFailureToOpenDeeplink;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentLaunchExternalPayment;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentOpenDeeplink;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentPurchaseResultEmpty;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentStart;,
        Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentWalletPaymentResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000b\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;",
        "",
        "()V",
        "SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS",
        "",
        "SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT",
        "SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK",
        "SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT",
        "SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL",
        "SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK",
        "SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT",
        "SDK_WEB_PAYMENT_OPEN_DEEPLINK",
        "SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY",
        "SDK_WEB_PAYMENT_START",
        "SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT",
        "WEB_PAYMENT_FLOW",
        "SdkWebPaymentAllowExternalApps",
        "SdkWebPaymentErrorProcessingPurchaseResult",
        "SdkWebPaymentExecuteExternalDeeplink",
        "SdkWebPaymentExternalPaymentResult",
        "SdkWebPaymentFailureToObtainUrl",
        "SdkWebPaymentFailureToOpenDeeplink",
        "SdkWebPaymentLaunchExternalPayment",
        "SdkWebPaymentOpenDeeplink",
        "SdkWebPaymentPurchaseResultEmpty",
        "SdkWebPaymentStart",
        "SdkWebPaymentWalletPaymentResult",
        "aptoide-core_release"
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;

.field public static final SDK_WEB_PAYMENT_ALLOW_EXTERNAL_APPS:Ljava/lang/String; = "sdk_web_payment_allow_external_apps"

.field public static final SDK_WEB_PAYMENT_ERROR_PROCESSING_PURCHASE_RESULT:Ljava/lang/String; = "sdk_web_payment_error_processing_purchase_result"

.field public static final SDK_WEB_PAYMENT_EXECUTE_EXTERNAL_DEEPLINK:Ljava/lang/String; = "sdk_web_payment_execute_external_deeplink"

.field public static final SDK_WEB_PAYMENT_EXTERNAL_PAYMENT_RESULT:Ljava/lang/String; = "sdk_web_payment_external_payment_result"

.field public static final SDK_WEB_PAYMENT_FAILURE_TO_OBTAIN_URL:Ljava/lang/String; = "sdk_web_payment_failure_to_obtain_url"

.field public static final SDK_WEB_PAYMENT_FAILURE_TO_OPEN_DEEPLINK:Ljava/lang/String; = "sdk_web_payment_failure_to_open_deeplink"

.field public static final SDK_WEB_PAYMENT_LAUNCH_EXTERNAL_PAYMENT:Ljava/lang/String; = "sdk_web_payment_launch_external_payment"

.field public static final SDK_WEB_PAYMENT_OPEN_DEEPLINK:Ljava/lang/String; = "sdk_web_payment_open_deeplink"

.field public static final SDK_WEB_PAYMENT_PURCHASE_RESULT_EMPTY:Ljava/lang/String; = "sdk_web_payment_purchase_result_empty"

.field public static final SDK_WEB_PAYMENT_START:Ljava/lang/String; = "sdk_web_payment_start"

.field public static final SDK_WEB_PAYMENT_WALLET_PAYMENT_RESULT:Ljava/lang/String; = "sdk_web_payment_wallet_payment_result"

.field public static final WEB_PAYMENT_FLOW:Ljava/lang/String; = "web_payment_flow"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
