.class public final Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;
.super Ljava/lang/Object;
.source "SdkQuerySkuDetailsEvents.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsFailureParsingSkus;,
        Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsRequest;,
        Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents$SdkQuerySkuDetailsResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0008\t\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;",
        "",
        "()V",
        "QUERY_SKU_DETAILS_FLOW",
        "",
        "SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS",
        "SDK_QUERY_SKU_DETAILS_REQUEST",
        "SDK_QUERY_SKU_DETAILS_RESULT",
        "SdkQuerySkuDetailsFailureParsingSkus",
        "SdkQuerySkuDetailsRequest",
        "SdkQuerySkuDetailsResult",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;

.field public static final QUERY_SKU_DETAILS_FLOW:Ljava/lang/String; = "query_sku_details"

.field public static final SDK_QUERY_SKU_DETAILS_FAILURE_PARSING_SKUS:Ljava/lang/String; = "sdk_query_sku_details_failure_on_parsing_skus"

.field public static final SDK_QUERY_SKU_DETAILS_REQUEST:Ljava/lang/String; = "sdk_query_sku_details_request"

.field public static final SDK_QUERY_SKU_DETAILS_RESULT:Ljava/lang/String; = "sdk_query_sku_details_result"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;->INSTANCE:Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsEvents;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
