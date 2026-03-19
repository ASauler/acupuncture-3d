.class public final Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;
.super Ljava/lang/Object;
.source "SdkLaunchAppUpdateEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateDeeplinkFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents$SdkLaunchAppUpdateResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;",
        "",
        "()V",
        "LAUNCH_APP_UPDATE_FLOW",
        "",
        "SDK_LAUNCH_APP_UPDATE_DEEPLINK_FAILURE",
        "SDK_LAUNCH_APP_UPDATE_RESULT",
        "SdkLaunchAppUpdateDeeplinkFailure",
        "SdkLaunchAppUpdateResult",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;

.field public static final LAUNCH_APP_UPDATE_FLOW:Ljava/lang/String; = "launch_app_update"

.field public static final SDK_LAUNCH_APP_UPDATE_DEEPLINK_FAILURE:Ljava/lang/String; = "sdk_launch_app_update_deeplink_failure"

.field public static final SDK_LAUNCH_APP_UPDATE_RESULT:Ljava/lang/String; = "sdk_launch_app_update_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
