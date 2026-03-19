.class public final Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;
.super Ljava/lang/Object;
.source "SdkGetReferralDeeplinkEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkMainThreadFailure;,
        Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents$SdkGetReferralDeeplinkResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;",
        "",
        "()V",
        "GET_REFERRAL_DEEPLINK_FLOW",
        "",
        "SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE",
        "SDK_GET_REFERRAL_DEEPLINK_REQUEST",
        "SDK_GET_REFERRAL_DEEPLINK_RESULT",
        "SdkGetReferralDeeplinkMainThreadFailure",
        "SdkGetReferralDeeplinkRequest",
        "SdkGetReferralDeeplinkResult",
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
.field public static final GET_REFERRAL_DEEPLINK_FLOW:Ljava/lang/String; = "get_referral_deeplink"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;

.field public static final SDK_GET_REFERRAL_DEEPLINK_MAIN_THREAD_FAILURE:Ljava/lang/String; = "sdk_referral_deeplink_main_thread_failure"

.field public static final SDK_GET_REFERRAL_DEEPLINK_REQUEST:Ljava/lang/String; = "sdk_referral_deeplink_request"

.field public static final SDK_GET_REFERRAL_DEEPLINK_RESULT:Ljava/lang/String; = "sdk_referral_deeplink_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
