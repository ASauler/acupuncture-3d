.class public final Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;
.super Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;
.source "SdkWebPaymentFlowEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkWebPaymentErrorProcessingPurchaseResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentErrorProcessingPurchaseResult;",
        "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
        "data",
        "",
        "",
        "",
        "(Ljava/util/Map;)V",
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v2, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->ERROR:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string/jumbo v3, "sdk_web_payment_error_processing_purchase_result"

    const-string/jumbo v5, "web_payment_flow"

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;-><init>(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method
