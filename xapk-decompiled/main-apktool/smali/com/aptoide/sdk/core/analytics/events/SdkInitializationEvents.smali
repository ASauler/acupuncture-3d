.class public final Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;
.super Ljava/lang/Object;
.source "SdkInitializationEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAppInstallationTrigger;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRequestFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkAttributionRetryAttempt;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkFinishConnection;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkPayflowResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnected;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkServiceConnectionFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents$SdkStartConnection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u000b\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001aB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;",
        "",
        "()V",
        "SDK_APP_INSTALLATION_TRIGGER",
        "",
        "SDK_ATTRIBUTION_REQUEST",
        "SDK_ATTRIBUTION_REQUEST_FAILURE",
        "SDK_ATTRIBUTION_RESULT",
        "SDK_ATTRIBUTION_RETRY_ATTEMPT",
        "SDK_FINISH_CONNECTION",
        "SDK_INITIALIZATION_FLOW",
        "SDK_PAYFLOW_REQUEST",
        "SDK_PAYFLOW_RESULT",
        "SDK_SERVICE_CONNECTED",
        "SDK_SERVICE_CONNECTION_FAILED",
        "SDK_START_CONNECTION",
        "SdkAppInstallationTrigger",
        "SdkAttributionRequest",
        "SdkAttributionRequestFailure",
        "SdkAttributionResult",
        "SdkAttributionRetryAttempt",
        "SdkFinishConnection",
        "SdkPayflowRequest",
        "SdkPayflowResult",
        "SdkServiceConnected",
        "SdkServiceConnectionFailure",
        "SdkStartConnection",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;

.field public static final SDK_APP_INSTALLATION_TRIGGER:Ljava/lang/String; = "sdk_app_installation_trigger"

.field public static final SDK_ATTRIBUTION_REQUEST:Ljava/lang/String; = "sdk_attribution_request"

.field public static final SDK_ATTRIBUTION_REQUEST_FAILURE:Ljava/lang/String; = "sdk_attribution_request_failure"

.field public static final SDK_ATTRIBUTION_RESULT:Ljava/lang/String; = "sdk_attribution_result"

.field public static final SDK_ATTRIBUTION_RETRY_ATTEMPT:Ljava/lang/String; = "sdk_attribution_retry_attempt"

.field public static final SDK_FINISH_CONNECTION:Ljava/lang/String; = "sdk_finish_connection"

.field public static final SDK_INITIALIZATION_FLOW:Ljava/lang/String; = "initialization"

.field public static final SDK_PAYFLOW_REQUEST:Ljava/lang/String; = "sdk_payflow_request"

.field public static final SDK_PAYFLOW_RESULT:Ljava/lang/String; = "sdk_payflow_result"

.field public static final SDK_SERVICE_CONNECTED:Ljava/lang/String; = "sdk_service_connected"

.field public static final SDK_SERVICE_CONNECTION_FAILED:Ljava/lang/String; = "sdk_service_connection_failed"

.field public static final SDK_START_CONNECTION:Ljava/lang/String; = "sdk_start_connection"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkInitializationEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
