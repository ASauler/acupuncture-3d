.class public final Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;
.super Ljava/lang/Object;
.source "MatomoEventLogger.kt"

# interfaces
.implements Lcom/aptoide/sdk/core/analytics/manager/EventLogger;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMatomoEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MatomoEventLogger.kt\ncom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,135:1\n1855#2,2:136\n288#2,2:138\n766#2:140\n857#2:141\n1549#2:142\n1620#2,3:143\n858#2:146\n1#3:147\n215#4,2:148\n*S KotlinDebug\n*F\n+ 1 MatomoEventLogger.kt\ncom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger\n*L\n73#1:136,2\n87#1:138,2\n114#1:140\n114#1:141\n114#1:142\n114#1:143,3\n114#1:146\n126#1:148,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010H\u0002J\u0017\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0016J&\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0004H\u0016J6\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0004H\u0016J\u0008\u0010\u001f\u001a\u00020\u000bH\u0002J$\u0010 \u001a\u0004\u0018\u00010\u0007*\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;",
        "Lcom/aptoide/sdk/core/analytics/manager/EventLogger;",
        "()V",
        "GENERAL_PROPERTIES_EVENT_NAME",
        "",
        "allProperties",
        "",
        "Lcom/aptoide/sdk/core/analytics/matomo/Property;",
        "tracker",
        "Lorg/matomo/sdk/Tracker;",
        "addDimensionsToTracker",
        "",
        "trackHelper",
        "Lorg/matomo/sdk/extra/TrackHelper;",
        "eventName",
        "data",
        "",
        "",
        "createJsonObjectFromData",
        "getMatomoId",
        "",
        "sdkId",
        "(I)Ljava/lang/Integer;",
        "initialize",
        "context",
        "Landroid/content/Context;",
        "key",
        "domain",
        "logEvent",
        "action",
        "Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;",
        "setupProperties",
        "findPropertyId",
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
.field private static final GENERAL_PROPERTIES_EVENT_NAME:Ljava/lang/String; = "general_properties"

.field public static final INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

.field private static allProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/core/analytics/matomo/Property;",
            ">;"
        }
    .end annotation
.end field

.field private static tracker:Lorg/matomo/sdk/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    invoke-direct {v0}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->allProperties:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addDimensionsToTracker(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/matomo/sdk/extra/TrackHelper;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    sget-object v2, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->INSTANCE:Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    sget-object v3, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->allProperties:Ljava/util/List;

    invoke-direct {v2, v3, p2, v1}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->findPropertyId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/matomo/Property;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v3}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getId()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->getMatomoId(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/matomo/sdk/extra/TrackHelper;->dimension(ILjava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Dimension;

    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {v3}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Matomo id not found for property id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final createJsonObjectFromData(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 124
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;

    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 130
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const-string v0, "There was an error mapping the event Data."

    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    .line 130
    :goto_2
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private final findPropertyId(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/core/analytics/matomo/Property;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/aptoide/sdk/core/analytics/matomo/Property;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aptoide/sdk/core/analytics/matomo/Property;"
        }
    .end annotation

    .line 87
    check-cast p1, Ljava/lang/Iterable;

    .line 138
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/aptoide/sdk/core/analytics/matomo/Property;

    .line 88
    invoke-interface {v1}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "general_properties"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v1}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {v1}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 139
    :goto_1
    check-cast v0, Lcom/aptoide/sdk/core/analytics/matomo/Property;

    return-object v0
.end method

.method private final getMatomoId(I)Ljava/lang/Integer;
    .locals 4

    .line 119
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getMatomoCustomProperties()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getDefaultMatomoCustomProperties()Ljava/util/List;

    move-result-object v0

    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    invoke-virtual {v3}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;->getSdkId()I

    move-result v3

    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;->getMatomoId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method private final setupProperties()V
    .locals 8

    .line 97
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getMatomoCustomProperties()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getDefaultMatomoCustomProperties()Ljava/util/List;

    move-result-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 99
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/matomo/SdkGeneralProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkAppUpdateAvailableProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 101
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestsProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkConsumePurchaseProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkGetReferralDeeplinkProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkInitializationProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkInstallWalletDialogProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkIsFeatureSupportedProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateDialogProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkLaunchAppUpdateProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkPurchaseFlowProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkQueryPurchasesProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkQuerySkuDetailsProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-static {}, Lcom/aptoide/sdk/core/analytics/events/SdkWebPaymentFlowProperties;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    check-cast v1, Ljava/lang/Iterable;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 141
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/aptoide/sdk/core/analytics/matomo/Property;

    .line 114
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    .line 142
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 143
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 144
    check-cast v7, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;

    .line 114
    invoke-virtual {v7}, Lcom/aptoide/sdk/core/analytics/matomo/models/CustomProperty;->getSdkId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 144
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_2
    check-cast v6, Ljava/util/List;

    .line 114
    invoke-interface {v4}, Lcom/aptoide/sdk/core/analytics/matomo/Property;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 114
    sput-object v2, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->allProperties:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "?api_key="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lorg/matomo/sdk/TrackerBuilder;->createDefault(Ljava/lang/String;I)Lorg/matomo/sdk/TrackerBuilder;

    move-result-object p2

    .line 38
    invoke-static {p1}, Lorg/matomo/sdk/Matomo;->getInstance(Landroid/content/Context;)Lorg/matomo/sdk/Matomo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/matomo/sdk/TrackerBuilder;->build(Lorg/matomo/sdk/Matomo;)Lorg/matomo/sdk/Tracker;

    move-result-object p1

    .line 36
    sput-object p1, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->tracker:Lorg/matomo/sdk/Tracker;

    .line 39
    invoke-direct {p0}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->setupProperties()V

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

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 50
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 52
    :cond_0
    sget-object p4, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p4}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSuperProperties()Ljava/util/Map;

    move-result-object p4

    invoke-static {p4, p2}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 54
    sget-object p4, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->tracker:Lorg/matomo/sdk/Tracker;

    if-eqz p4, :cond_1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lorg/matomo/sdk/Tracker;->setUserId(Ljava/lang/String;)Lorg/matomo/sdk/Tracker;

    .line 56
    :cond_1
    invoke-static {}, Lorg/matomo/sdk/extra/TrackHelper;->track()Lorg/matomo/sdk/extra/TrackHelper;

    move-result-object p4

    .line 57
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p4, p1, p2}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->addDimensionsToTracker(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    invoke-direct {p0, p2}, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->createJsonObjectFromData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p3}, Lcom/aptoide/sdk/core/analytics/manager/AnalyticsManager$Action;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p1, p3}, Lorg/matomo/sdk/extra/TrackHelper;->event(Ljava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 63
    invoke-virtual {p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->name(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;

    .line 66
    :cond_2
    sget-object p2, Lcom/aptoide/sdk/core/analytics/matomo/MatomoEventLogger;->tracker:Lorg/matomo/sdk/Tracker;

    invoke-virtual {p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->with(Lorg/matomo/sdk/Tracker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "There was a failure when sending the Matomo Event."

    .line 68
    invoke-static {p2, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
