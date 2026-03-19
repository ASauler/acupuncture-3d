.class public Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private analyticsNormalizer:Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;

.field private final eventLoggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->eventLoggers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addLogger(Lcom/aptoide/sdk/core/analytics/manager/EventLogger;Ljava/util/Collection;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->eventLoggers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->eventLoggers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;

    iget-object v1, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->eventLoggers:Ljava/util/Map;

    iget-object v2, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->analyticsNormalizer:Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager;-><init>(Ljava/util/Map;Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager-IA;)V

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Analytics manager need at least one logger"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnalyticsNormalizer(Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;)Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Builder;->analyticsNormalizer:Lcom/aptoide/sdk/core/analytics/manager/KeyValueNormalizer;

    return-object p0
.end method
