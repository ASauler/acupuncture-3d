.class public final Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;
.super Ljava/lang/Object;
.source "SdkAppUpdateAvailableEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableFailureToObtainResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableMainThreadFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents$SdkAppUpdateAvailableResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;",
        "",
        "()V",
        "APP_UPDATE_AVAILABLE_FLOW",
        "",
        "SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT",
        "SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE",
        "SDK_APP_UPDATE_AVAILABLE_REQUEST",
        "SDK_APP_UPDATE_AVAILABLE_RESULT",
        "SdkAppUpdateAvailableFailureToObtainResult",
        "SdkAppUpdateAvailableMainThreadFailure",
        "SdkAppUpdateAvailableRequest",
        "SdkAppUpdateAvailableResult",
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
.field public static final APP_UPDATE_AVAILABLE_FLOW:Ljava/lang/String; = "app_update_available"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;

.field public static final SDK_APP_UPDATE_AVAILABLE_FAILURE_TO_OBTAIN_RESULT:Ljava/lang/String; = "sdk_app_update_available_failure_to_obtain_result"

.field public static final SDK_APP_UPDATE_AVAILABLE_MAIN_THREAD_FAILURE:Ljava/lang/String; = "sdk_app_update_available_main_thread_failure"

.field public static final SDK_APP_UPDATE_AVAILABLE_REQUEST:Ljava/lang/String; = "sdk_app_update_available_request"

.field public static final SDK_APP_UPDATE_AVAILABLE_RESULT:Ljava/lang/String; = "sdk_app_update_available_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
