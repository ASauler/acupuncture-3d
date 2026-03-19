.class public final Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;
.super Ljava/lang/Object;
.source "PayflowMethodResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u0012\u001a\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010\u0016\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007H\u00c6\u0003J\u001d\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003Jb\u0010\u0019\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u001c\u0008\u0002\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u00072\u001c\u0008\u0002\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R%\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R%\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005j\n\u0012\u0004\u0012\u00020\u0006\u0018\u0001`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;",
        "",
        "responseCode",
        "",
        "paymentFlowList",
        "Ljava/util/ArrayList;",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        "Lkotlin/collections/ArrayList;",
        "analyticsFlowSeverityLevels",
        "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
        "matomoDetails",
        "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;",
        "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V",
        "getAnalyticsFlowSeverityLevels",
        "()Ljava/util/ArrayList;",
        "getMatomoDetails",
        "()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;",
        "getPaymentFlowList",
        "getResponseCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "android-aptoide-billing_release"
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
.field private final analyticsFlowSeverityLevels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

.field private final paymentFlowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    .line 8
    iput-object p2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    .line 9
    iput-object p3, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    .line 10
    iput-object p4, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    return-void
.end method

.method public static synthetic copy$default(Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->copy(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component3()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final component4()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;",
            "Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;",
            ")",
            "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;"
        }
    .end annotation

    new-instance v0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;-><init>(Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    iget-object p1, p1, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAnalyticsFlowSeverityLevels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/core/analytics/severity/AnalyticsFlowSeverityLevel;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMatomoDetails()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    return-object v0
.end method

.method public final getPaymentFlowList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResponseCode()Ljava/lang/Integer;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->responseCode:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->paymentFlowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->analyticsFlowSeverityLevels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->matomoDetails:Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PayflowMethodResponse(responseCode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", paymentFlowList="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", analyticsFlowSeverityLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", matomoDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
