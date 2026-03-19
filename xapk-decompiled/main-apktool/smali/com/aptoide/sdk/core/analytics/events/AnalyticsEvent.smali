.class public abstract Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008&\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;",
        "",
        "action",
        "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
        "name",
        "",
        "data",
        "",
        "flow",
        "severityLevel",
        "",
        "(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V",
        "getAction",
        "()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
        "getData",
        "()Ljava/util/Map;",
        "getFlow",
        "()Ljava/lang/String;",
        "getName",
        "getSeverityLevel",
        "()I",
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


# instance fields
.field private final action:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final flow:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final severityLevel:I


# direct methods
.method public constructor <init>(Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->action:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    .line 7
    iput-object p2, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->name:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->data:Ljava/util/Map;

    .line 9
    iput-object p4, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->flow:Ljava/lang/String;

    .line 10
    iput p5, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->severityLevel:I

    return-void
.end method


# virtual methods
.method public final getAction()Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->action:Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;

    return-object v0
.end method

.method public final getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->data:Ljava/util/Map;

    return-object v0
.end method

.method public final getFlow()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->flow:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeverityLevel()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/aptoide/sdk/core/analytics/events/AnalyticsEvent;->severityLevel:I

    return v0
.end method
