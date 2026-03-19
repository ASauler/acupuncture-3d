.class public final Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;
.super Ljava/lang/Object;
.source "SdkAnalyticsSeverityUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkAnalyticsSeverityUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkAnalyticsSeverityUtils.kt\ncom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n288#2,2:19\n*S KotlinDebug\n*F\n+ 1 SdkAnalyticsSeverityUtils.kt\ncom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils\n*L\n13#1:19,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/severity/SdkAnalyticsSeverityUtils;",
        "",
        "()V",
        "isEventSeverityAllowed",
        "",
        "analyticsEvent",
        "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
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
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEventSeverityAllowed(Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;)Z
    .locals 5

    const-string v0, "analyticsEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getAnalyticsFlowSeverityLevels()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 12
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getDefaultAnalyticsFlowSeverityLevels()Ljava/util/List;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 19
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    .line 13
    invoke-virtual {v3}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;->getFlow()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->getFlow()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;->getSeverityLevel()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->getSeverityLevel()I

    move-result p1

    if-lt v1, p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    return v2
.end method
