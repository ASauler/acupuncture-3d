.class public final Lcom/aptoide/sdk/billing/managers/AttributionManager;
.super Ljava/lang/Object;
.source "AttributionManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttributionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttributionManager.kt\ncom/aptoide/sdk/billing/managers/AttributionManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,134:1\n1#2:135\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017J\n\u0010\u0018\u001a\u0004\u0018\u00010\u000fH\u0002J \u0010\u0019\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J*\u0010\u001c\u001a\u00020\u00152\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0017H\u0002J\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00152\u0008\u0010 \u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u00020#*\u0004\u0018\u00010\u001bH\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR#\u0010\u000e\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0008\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006$"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/AttributionManager;",
        "",
        "()V",
        "attributionRepository",
        "Lcom/aptoide/sdk/billing/repositories/AttributionRepository;",
        "getAttributionRepository",
        "()Lcom/aptoide/sdk/billing/repositories/AttributionRepository;",
        "attributionRepository$delegate",
        "Lkotlin/Lazy;",
        "attributionSharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "getAttributionSharedPreferences",
        "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "attributionSharedPreferences$delegate",
        "packageName",
        "",
        "kotlin.jvm.PlatformType",
        "getPackageName",
        "()Ljava/lang/String;",
        "packageName$delegate",
        "getAttributionForUser",
        "",
        "onSuccessfulAttribution",
        "Lkotlin/Function0;",
        "getWalletId",
        "processAttributionResult",
        "attributionResponse",
        "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;",
        "startAttributionRequest",
        "oemid",
        "guestWalletId",
        "updateAnalyticsInstanceId",
        "walletId",
        "(Ljava/lang/String;)Lkotlin/Unit;",
        "isSuccessfulAttributionResponse",
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


# static fields
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager;

.field private static final attributionRepository$delegate:Lkotlin/Lazy;

.field private static final attributionSharedPreferences$delegate:Lkotlin/Lazy;

.field private static final packageName$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$AZdXOVpq2MnnAZTDUI_-vwEJvfM(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionForUser$lambda$0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager;

    .line 25
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager$packageName$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager$packageName$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->packageName$delegate:Lkotlin/Lazy;

    .line 26
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager$attributionRepository$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager$attributionRepository$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->attributionRepository$delegate:Lkotlin/Lazy;

    .line 29
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager$attributionSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager$attributionSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAttributionSharedPreferences(Lcom/aptoide/sdk/billing/managers/AttributionManager;)Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startAttributionRequest(Lcom/aptoide/sdk/billing/managers/AttributionManager;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->startAttributionRequest(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final getAttributionForUser$lambda$0(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 15

    move-object/from16 v0, p2

    const-string v1, "$onSuccessfulAttribution"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/SendAttributionRetryAttempt;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SendAttributionRetryAttempt;

    .line 52
    sget-object v2, Lcom/aptoide/sdk/billing/managers/AttributionManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getInitialAttributionTimestamp()J

    move-result-wide v2

    const/4 v4, 0x1

    .line 50
    invoke-virtual {v1, v4, v2, v3}, Lcom/aptoide/sdk/billing/usecases/SendAttributionRetryAttempt;->invoke(IJ)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    const-wide/32 v9, 0xfde8

    .line 54
    new-instance v1, Lcom/aptoide/sdk/billing/managers/AttributionManager$getAttributionForUser$1$1;

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct {v1, p0, v3, v0}, Lcom/aptoide/sdk/billing/managers/AttributionManager$getAttributionForUser$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager$getAttributionForUser$1$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/AttributionManager$getAttributionForUser$1$2;

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v5 .. v14}, Lcom/aptoide/sdk/core/network/retrymechanism/RetryHandlerKt;->retryUntilSuccess$default(Ljava/lang/Integer;JZJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getAttributionRepository()Lcom/aptoide/sdk/billing/repositories/AttributionRepository;
    .locals 1

    .line 26
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->attributionRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;

    return-object v0
.end method

.method private final getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
    .locals 1

    .line 29
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    return-object v0
.end method

.method private final getPackageName()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/aptoide/sdk/billing/managers/AttributionManager;->packageName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getWalletId()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Lcom/aptoide/sdk/billing/WalletInteract;

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/WalletInteract;-><init>(Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;)V

    .line 123
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/WalletInteract;->retrieveWalletId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final isSuccessfulAttributionResponse(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->isSuccess(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getWalletId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v1, p1

    :goto_3
    if-nez v1, :cond_5

    move v0, p1

    :cond_5
    return v0
.end method

.method private final processAttributionResult(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/mappers/AttributionResponse;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Saving Attribution values."

    .line 96
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->isSuccessfulAttributionResponse(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Completing Attribution flow."

    .line 98
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->completeAttribution()V

    if-eqz p1, :cond_0

    .line 101
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/usecases/SaveAttributionResultOnPrefs;->invoke(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getWalletId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->updateAnalyticsInstanceId(Ljava/lang/String;)Lkotlin/Unit;

    .line 104
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v2

    if-eqz p1, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getOemId()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getWalletId()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v4, v0

    :goto_2
    if-eqz p1, :cond_4

    .line 107
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmSource()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    :cond_4
    move-object v5, v0

    :goto_3
    if-eqz p1, :cond_5

    .line 108
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmMedium()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_4

    :cond_5
    move-object v6, v0

    :goto_4
    if-eqz p1, :cond_6

    .line 109
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmCampaign()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_5

    :cond_6
    move-object v7, v0

    :goto_5
    if-eqz p1, :cond_7

    .line 110
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmTerm()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_6

    :cond_7
    move-object v8, v0

    :goto_6
    if-eqz p1, :cond_8

    .line 111
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/mappers/AttributionResponse;->getUtmContent()Ljava/lang/String;

    move-result-object v0

    :cond_8
    move-object v9, v0

    .line 104
    invoke-virtual/range {v2 .. v9}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAttributionResultEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 115
    :cond_9
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAttributionRequestFailureEvent()V

    .line 116
    new-instance p1, Lcom/aptoide/sdk/core/network/retrymechanism/exceptions/IncompleteCircularFunctionExecutionException;

    const-string p2, "Attribution failed. Repeating request."

    invoke-direct {p1, p2}, Lcom/aptoide/sdk/core/network/retrymechanism/exceptions/IncompleteCircularFunctionExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final startAttributionRequest(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getInitialAttributionTimestamp()J

    move-result-wide v7

    .line 76
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/GetInstallerAppPackage;->invoke(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 77
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetAppInstalledVersion;->invoke(Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    .line 79
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionRepository()Lcom/aptoide/sdk/billing/repositories/AttributionRepository;

    move-result-object v1

    .line 80
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "<get-packageName>(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p2

    .line 79
    invoke-virtual/range {v1 .. v8}, Lcom/aptoide/sdk/billing/repositories/AttributionRepository;->getAttributionForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/aptoide/sdk/billing/mappers/AttributionResponse;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1, p3}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->processAttributionResult(Lcom/aptoide/sdk/billing/mappers/AttributionResponse;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final updateAnalyticsInstanceId(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->updateInstanceId(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final getAttributionForUser(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccessfulAttribution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Verifying new Attribution flow."

    .line 34
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->isAttributionComplete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Getting Attribution for User."

    .line 36
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/usecases/SaveInitialAttributionTimestamp;->invoke()V

    .line 39
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAttributionRequestEvent()V

    .line 41
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;

    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/billing/usecases/GetOemIdForPackage;->invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->getWalletId()Ljava/lang/String;

    move-result-object v1

    .line 45
    :try_start_0
    invoke-direct {p0, v0, v1, p1}, Lcom/aptoide/sdk/billing/managers/AttributionManager;->startAttributionRequest(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    :try_end_0
    .catch Lcom/aptoide/sdk/core/network/retrymechanism/exceptions/IncompleteCircularFunctionExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Attribution failed. Requesting again."

    .line 47
    check-cast v2, Ljava/lang/Exception;

    invoke-static {v3, v2}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 48
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 49
    new-instance v2, Ljava/lang/Thread;

    .line 66
    new-instance v3, Lcom/aptoide/sdk/billing/managers/AttributionManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1, p1}, Lcom/aptoide/sdk/billing/managers/AttributionManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "Attribution already complete."

    .line 69
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
