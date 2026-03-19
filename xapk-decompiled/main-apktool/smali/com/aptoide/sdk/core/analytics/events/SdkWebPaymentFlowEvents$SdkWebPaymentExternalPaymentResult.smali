.class public final Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;
.super Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;
.source "SdkWebPaymentFlowEvents.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkWebPaymentExternalPaymentResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowEvents$SdkWebPaymentExternalPaymentResult;",
        "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
        "()V",
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
.method public constructor <init>()V
    .locals 6

    .line 94
    sget-object v1, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->IMPRESSION:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    const-string/jumbo v2, "sdk_web_payment_external_payment_result"

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const-string/jumbo v4, "web_payment_flow"

    const/4 v5, 0x2

    move-object v0, p0

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;-><init>(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method
