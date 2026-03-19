.class public final Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;
.super Ljava/lang/Object;
.source "SdkIsFeatureSupportedEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents$SdkIsFeatureSupportedResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;",
        "",
        "()V",
        "IS_FEATURE_SUPPORTED_FLOW",
        "",
        "SDK_IS_FEATURE_SUPPORTED_REQUEST",
        "SDK_IS_FEATURE_SUPPORTED_RESULT",
        "SdkIsFeatureSupportedRequest",
        "SdkIsFeatureSupportedResult",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;

.field public static final IS_FEATURE_SUPPORTED_FLOW:Ljava/lang/String; = "is_feature_supported"

.field public static final SDK_IS_FEATURE_SUPPORTED_REQUEST:Ljava/lang/String; = "sdk_is_feature_supported_request"

.field public static final SDK_IS_FEATURE_SUPPORTED_RESULT:Ljava/lang/String; = "sdk_is_feature_supported_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
