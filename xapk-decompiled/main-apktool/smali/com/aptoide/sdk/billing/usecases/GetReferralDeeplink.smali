.class public final Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "GetReferralDeeplink.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGetReferralDeeplink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetReferralDeeplink.kt\ncom/aptoide/sdk/billing/usecases/GetReferralDeeplink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1#2:42\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\t\u001a\u00020\nH\u0086\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "storeLinkMapperManager",
        "Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;",
        "getStoreLinkMapperManager",
        "()Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;",
        "storeLinkMapperManager$delegate",
        "Lkotlin/Lazy;",
        "invoke",
        "Lcom/aptoide/sdk/billing/ReferralDeeplink;",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;

.field private static final storeLinkMapperManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;

    .line 14
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink$storeLinkMapperManager$2;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink$storeLinkMapperManager$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->storeLinkMapperManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final getStoreLinkMapperManager()Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;
    .locals 1

    .line 14
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->storeLinkMapperManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;

    return-object v0
.end method


# virtual methods
.method public final invoke()Lcom/aptoide/sdk/billing/ReferralDeeplink;
    .locals 6

    .line 19
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 21
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->getStoreLinkMapperManager()Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/managers/StoreLinkMapperManager;->getReferralDeeplink()Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getStoreDeeplink()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getFallbackDeeplink()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received ReferralDeeplink. ResponseCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | StoreDeeplink: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | FallbackDeeplink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getResponseCode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/aptoide/sdk/billing/utils/ServiceUtils;->responseCodeFromNetworkResponseCode(I)Lcom/aptoide/sdk/billing/ResponseCode;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 32
    :cond_1
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getStoreDeeplink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendGetReferralDeeplinkResultEvent(Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/aptoide/sdk/billing/ReferralDeeplink;

    .line 35
    sget-object v3, Lcom/aptoide/sdk/billing/BillingResult;->Companion:Lcom/aptoide/sdk/billing/BillingResult$Companion;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/BillingResult$Companion;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getStoreDeeplink()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/ReferralDeeplinkResponse;->getFallbackDeeplink()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {v2, v1, v3, v0}, Lcom/aptoide/sdk/billing/ReferralDeeplink;-><init>(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
