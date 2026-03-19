.class public final Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;
.super Ljava/lang/Object;
.source "IndicativeEventLogger.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/manager/EventLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016J6\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00082\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0008H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;",
        "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;",
        "()V",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "key",
        "",
        "domain",
        "logEvent",
        "eventName",
        "data",
        "",
        "",
        "action",
        "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/indicative/IndicativeEventLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 13
    invoke-static {p1, p2}, Lcom/indicative/client/android/Indicative;->launch(Landroid/content/Context;Ljava/lang/String;)Lcom/indicative/client/android/Indicative;

    :cond_0
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "context"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 23
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 25
    :cond_0
    sget-object p3, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSuperProperties()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 26
    sget-object p3, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p3}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
