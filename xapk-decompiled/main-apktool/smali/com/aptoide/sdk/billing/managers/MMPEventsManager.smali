.class public final Lcom/aptoide/sdk/billing/managers/MMPEventsManager;
.super Ljava/lang/Object;
.source "MMPEventsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0014R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011R#\u0010\u0013\u001a\n \u0015*\u0004\u0018\u00010\u00140\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0008\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/MMPEventsManager;",
        "",
        "()V",
        "attributionSharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "getAttributionSharedPreferences",
        "()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;",
        "attributionSharedPreferences$delegate",
        "Lkotlin/Lazy;",
        "backendRequestsSharedPreferences",
        "Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "getBackendRequestsSharedPreferences",
        "()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;",
        "backendRequestsSharedPreferences$delegate",
        "mmpEventsRepository",
        "Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;",
        "getMmpEventsRepository",
        "()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;",
        "mmpEventsRepository$delegate",
        "packageName",
        "",
        "kotlin.jvm.PlatformType",
        "getPackageName",
        "()Ljava/lang/String;",
        "packageName$delegate",
        "sendSuccessfulPurchaseResultEvent",
        "",
        "purchase",
        "Lcom/aptoide/sdk/billing/Purchase;",
        "orderId",
        "purchaseValue",
        "paymentMethod",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager;

.field private static final attributionSharedPreferences$delegate:Lkotlin/Lazy;

.field private static final backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;

.field private static final mmpEventsRepository$delegate:Lkotlin/Lazy;

.field private static final packageName$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager;

    .line 15
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$packageName$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$packageName$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->packageName$delegate:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$mmpEventsRepository$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->mmpEventsRepository$delegate:Lkotlin/Lazy;

    .line 24
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$attributionSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$attributionSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    .line 27
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager$backendRequestsSharedPreferences$2;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager$backendRequestsSharedPreferences$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBackendRequestsSharedPreferences(Lcom/aptoide/sdk/billing/managers/MMPEventsManager;)Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getBackendRequestsSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;
    .locals 1

    .line 24
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->attributionSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    return-object v0
.end method

.method private final getBackendRequestsSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;
    .locals 1

    .line 27
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->backendRequestsSharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/sharedpreferences/BackendRequestsSharedPreferences;

    return-object v0
.end method

.method private final getMmpEventsRepository()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;
    .locals 1

    .line 16
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->mmpEventsRepository$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;

    return-object v0
.end method

.method private final getPackageName()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->packageName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final sendSuccessfulPurchaseResultEvent(Lcom/aptoide/sdk/billing/Purchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-string v0, "purchase"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderId"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseValue"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Sending Successful Purchase Result Event to MMP."

    .line 37
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getMmpEventsRepository()Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<get-packageName>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getOemId()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getUtmSource()Ljava/lang/String;

    move-result-object v9

    .line 48
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getUtmMedium()Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getUtmCampaign()Ljava/lang/String;

    move-result-object v11

    .line 50
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getUtmTerm()Ljava/lang/String;

    move-result-object v12

    .line 51
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->getAttributionSharedPreferences()Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getUtmContent()Ljava/lang/String;

    move-result-object v13

    move-object v1, v0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 39
    invoke-virtual/range {v1 .. v13}, Lcom/aptoide/sdk/billing/repositories/MMPEventsRepository;->sendSuccessfulPurchaseResultEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
