.class public interface abstract Lcom/aptoide/sdk/core/analytics/manager/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"


# virtual methods
.method public abstract initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logEvent(Ljava/lang/String;Ljava/util/Map;Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
