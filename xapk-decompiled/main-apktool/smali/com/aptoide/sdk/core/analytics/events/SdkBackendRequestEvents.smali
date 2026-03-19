.class public final Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;
.super Ljava/lang/Object;
.source "SdkBackendRequestEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendError;,
        Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendMappingFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents$SdkCallBackendResponse;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;",
        "",
        "()V",
        "BACKEND_REQUEST_FLOW",
        "",
        "SDK_CALL_BACKEND_ERROR",
        "SDK_CALL_BACKEND_MAPPING_FAILURE",
        "SDK_CALL_BACKEND_REQUEST",
        "SDK_CALL_BACKEND_RESPONSE",
        "SdkCallBackendError",
        "SdkCallBackendMappingFailure",
        "SdkCallBackendRequest",
        "SdkCallBackendResponse",
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
.field public static final BACKEND_REQUEST_FLOW:Ljava/lang/String; = "backend_request"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;

.field public static final SDK_CALL_BACKEND_ERROR:Ljava/lang/String; = "sdk_call_backend_error"

.field public static final SDK_CALL_BACKEND_MAPPING_FAILURE:Ljava/lang/String; = "sdk_call_backend_mapping_failure"

.field public static final SDK_CALL_BACKEND_REQUEST:Ljava/lang/String; = "sdk_call_backend_request"

.field public static final SDK_CALL_BACKEND_RESPONSE:Ljava/lang/String; = "sdk_call_backend_response"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
