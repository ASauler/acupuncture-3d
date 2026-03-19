.class public final Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;
.super Ljava/lang/Object;
.source "SdkQueryPurchasesEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesResult;,
        Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents$SdkQueryPurchasesTypeNotSupportedError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;",
        "",
        "()V",
        "SDK_QUERY_PURCHASES_FLOW",
        "",
        "SDK_QUERY_PURCHASES_REQUEST",
        "SDK_QUERY_PURCHASES_RESULT",
        "SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR",
        "SdkQueryPurchasesRequest",
        "SdkQueryPurchasesResult",
        "SdkQueryPurchasesTypeNotSupportedError",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;

.field public static final SDK_QUERY_PURCHASES_FLOW:Ljava/lang/String; = "query_purchases"

.field public static final SDK_QUERY_PURCHASES_REQUEST:Ljava/lang/String; = "sdk_query_puchases_request"

.field public static final SDK_QUERY_PURCHASES_RESULT:Ljava/lang/String; = "sdk_query_purchases_result"

.field public static final SDK_QUERY_PURCHASES_TYPE_NOT_SUPPORTED_ERROR:Ljava/lang/String; = "sdk_query_purchases_type_not_supported_error"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
