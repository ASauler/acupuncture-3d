.class public final Lcom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1;
.super Ljava/lang/Object;
.source "PayflowManager.kt"

# interfaces
.implements Lcom/aptoide/sdk/billing/payflow/PayflowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aptoide/sdk/billing/payflow/PayflowManager;->getPayflowPriorityAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayflowManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayflowManager.kt\ncom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1549#2:60\n1620#2,3:61\n1002#2,2:64\n*S KotlinDebug\n*F\n+ 1 PayflowManager.kt\ncom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1\n*L\n26#1:60\n26#1:61,3\n29#1:64,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1",
        "Lcom/aptoide/sdk/billing/payflow/PayflowListener;",
        "onResponse",
        "",
        "payflowMethodResponse",
        "Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V
    .locals 6

    const-string v0, "payflowMethodResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getPaymentFlowList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    .line 60
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 61
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 62
    check-cast v5, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 26
    invoke-virtual {v5}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->getName()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    check-cast v4, Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 26
    :goto_1
    invoke-virtual {v1, v4}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendPayflowResultEvent(Ljava/util/List;)V

    .line 27
    invoke-static {v0}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getPaymentFlowList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    new-instance v3, Lcom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1$onResponse$lambda$4$$inlined$sortBy$1;

    invoke-direct {v3}, Lcom/aptoide/sdk/billing/payflow/PayflowManager$getPayflowPriorityAsync$payflowListener$1$onResponse$lambda$4$$inlined$sortBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 30
    :cond_2
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->emit(Ljava/util/ArrayList;)V

    .line 31
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getAnalyticsFlowSeverityLevels()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 32
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setAnalyticsFlowSeverityLevels(Ljava/util/List;)V

    .line 34
    :cond_3
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;->getMatomoDetails()Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/matomo/models/MatomoDetails;->getMatomoCustomProperties()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 35
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setMatomoCustomProperties(Ljava/util/List;)V

    .line 37
    :cond_4
    sget-object v0, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->INSTANCE:Lcom/aptoide/sdk/billing/payflow/PayflowManager;

    invoke-static {v0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowManager;->access$setupMatomo(Lcom/aptoide/sdk/billing/payflow/PayflowManager;Lcom/aptoide/sdk/billing/payflow/models/PayflowMethodResponse;)V

    goto :goto_2

    .line 39
    :cond_5
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->emit(Ljava/util/ArrayList;)V

    .line 40
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1, v3}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setAnalyticsFlowSeverityLevels(Ljava/util/List;)V

    .line 41
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1, v3}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setMatomoCustomProperties(Ljava/util/List;)V

    .line 43
    :goto_2
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->setAnalyticsSetupFromPayflowFinalized(Z)V

    :cond_6
    return-void
.end method
