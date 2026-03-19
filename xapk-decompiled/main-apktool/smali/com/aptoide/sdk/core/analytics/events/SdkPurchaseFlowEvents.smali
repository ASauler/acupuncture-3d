.class public final Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;
.super Ljava/lang/Object;
.source "SdkPurchaseFlowEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchase;,
        Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseMainThreadFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkLaunchPurchaseTypeNotSupportedFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents$SdkPurchaseResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;",
        "",
        "()V",
        "PURCHASE_FLOW",
        "",
        "SDK_LAUNCH_PURCHASE",
        "SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE",
        "SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE",
        "SDK_PURCHASE_RESULT",
        "SdkLaunchPurchase",
        "SdkLaunchPurchaseMainThreadFailure",
        "SdkLaunchPurchaseTypeNotSupportedFailure",
        "SdkPurchaseResult",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;

.field public static final PURCHASE_FLOW:Ljava/lang/String; = "purchase_flow"

.field public static final SDK_LAUNCH_PURCHASE:Ljava/lang/String; = "sdk_launch_purchase"

.field public static final SDK_LAUNCH_PURCHASE_MAIN_THREAD_FAILURE:Ljava/lang/String; = "sdk_launch_purchase_main_thread_failure"

.field public static final SDK_LAUNCH_PURCHASE_TYPE_NOT_SUPPORTED_FAILURE:Ljava/lang/String; = "sdk_launch_purchase_type_not_supported_failure"

.field public static final SDK_PURCHASE_RESULT:Ljava/lang/String; = "sdk_purchase_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
