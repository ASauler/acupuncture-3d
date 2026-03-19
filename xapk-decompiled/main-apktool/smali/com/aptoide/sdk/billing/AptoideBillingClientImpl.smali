.class public Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;
.super Lcom/aptoide/sdk/billing/AptoideBillingClient;
.source "AptoideBillingClientImpl.java"

# interfaces
.implements Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aptoide/sdk/billing/AptoideBillingClient;",
        "Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer<",
        "Lkotlin/Pair<",
        "Landroid/app/Activity;",
        "Lcom/aptoide/sdk/billing/BuyItemProperties;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final billing:Lcom/aptoide/sdk/billing/Billing;

.field private final connection:Lcom/aptoide/sdk/billing/RepositoryConnection;

.field private final purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;


# direct methods
.method public static synthetic $r8$lambda$qdsdHVB5reqLImxHMJEoKuEAXn4(Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;Lkotlin/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->lambda$accept$2(Lkotlin/Pair;)V

    return-void
.end method

.method public constructor <init>(Lcom/aptoide/sdk/billing/Billing;Lcom/aptoide/sdk/billing/RepositoryConnection;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/AptoideBillingClient;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    .line 41
    iput-object p2, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->connection:Lcom/aptoide/sdk/billing/RepositoryConnection;

    .line 42
    iput-object p3, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    return-void
.end method

.method private handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 2

    const-string v0, "Failed to launch billing flow."

    .line 296
    invoke-static {v0, p2}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 297
    sget-object p2, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p2

    .line 298
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getResultCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    invoke-static {v0, p2, v1}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleActivityResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V

    .line 300
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p2

    .line 301
    invoke-virtual {p2, p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 302
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$accept$2(Lkotlin/Pair;)V
    .locals 1

    .line 243
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 244
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/BuyItemProperties;

    .line 245
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BuyItemProperties;->toBillingFlowParams()Lcom/aptoide/sdk/billing/BillingFlowParams;

    move-result-object p1

    .line 244
    invoke-direct {p0, v0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->resumeBillingFlow(Landroid/app/Activity;Lcom/aptoide/sdk/billing/BillingFlowParams;)V

    .line 246
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method static synthetic lambda$launchAppUpdateDialog$1(Landroid/content/Context;)V
    .locals 3

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/aptoide/sdk/billing/activities/UpdateDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$launchAppUpdateStore$0(Landroid/content/Context;)V
    .locals 1

    .line 187
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchAppUpdateStoreRequestEvent()V

    .line 189
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;

    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/LaunchAppUpdate;->invoke(Landroid/content/Context;)V

    return-void
.end method

.method private resumeBillingFlow(Landroid/app/Activity;Lcom/aptoide/sdk/billing/BillingFlowParams;)V
    .locals 6

    const-string v0, "Failed to launch billing flow. ResponseCode: "

    const-string v1, "Launching billing flow with payload: "

    const-string v2, "Resuming Billing Flow after Wallet Installation."

    .line 252
    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 255
    :try_start_0
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getFreeTrial()Ljava/lang/Boolean;

    move-result-object v4

    .line 255
    invoke-static {v2, v3, v4}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->buildIntentPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-direct {v3, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 258
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getOemId()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " oemid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " guestWalletId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    .line 269
    invoke-interface {v1, p2, v2, v4, v3}, Lcom/aptoide/sdk/billing/Billing;->launchBillingFlow(Lcom/aptoide/sdk/billing/BillingFlowParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;

    move-result-object p2

    .line 271
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->getResponseCode()I

    move-result v1

    .line 273
    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 275
    sget-object p1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getResultCode()I

    move-result p2

    .line 277
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    .line 276
    invoke-static {p2, p1, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleActivityResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V

    return-void

    .line 281
    :cond_0
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->getBuyIntent()Landroid/content/Intent;

    move-result-object p2

    .line 283
    invoke-static {}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->getInstance()Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    move-result-object v0

    .line 284
    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->collectPaymentResult(Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;)V

    if-eqz p2, :cond_1

    .line 286
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 289
    :goto_0
    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->accept(Lkotlin/Pair;)V

    return-void
.end method

.method public accept(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;)V"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda1;-><init>(Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;Lkotlin/Pair;)V

    .line 248
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public consumeAsync(Lcom/aptoide/sdk/billing/ConsumeParams;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V
    .locals 2

    .line 67
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendConsumePurchaseRequest(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/aptoide/sdk/billing/Billing;->consumeAsync(Ljava/lang/String;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V

    return-void
.end method

.method public endConnection()V
    .locals 1

    const-string v0, "Request to end connection of SDK."

    .line 149
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendFinishConnectionEvent()V

    const-string v0, "Ending connection of SDK."

    .line 153
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->stopCollecting()V

    .line 156
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->connection:Lcom/aptoide/sdk/billing/RepositoryConnection;

    invoke-interface {v0}, Lcom/aptoide/sdk/billing/RepositoryConnection;->endConnection()V

    :cond_0
    return-void
.end method

.method public getPurchaseFinishedListener()Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    return-object v0
.end method

.method public getReferralDeeplink()Lcom/aptoide/sdk/billing/ReferralDeeplink;
    .locals 3

    const-string v0, "Request to get Referral Deeplink."

    .line 208
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendGetReferralDeeplinkRequestEvent()V

    .line 211
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "Request from MainThread. Cancelling."

    .line 212
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendGetReferralDeeplinkMainThreadFailureEvent()V

    .line 215
    new-instance v0, Lcom/aptoide/sdk/billing/ReferralDeeplink;

    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v1

    const/4 v2, 0x5

    .line 216
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/aptoide/sdk/billing/ReferralDeeplink;-><init>(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 221
    :cond_0
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/usecases/GetReferralDeeplink;->invoke()Lcom/aptoide/sdk/billing/ReferralDeeplink;

    move-result-object v0

    return-object v0
.end method

.method public isAppUpdateAvailable()Z
    .locals 2

    const-string v0, "Request to verify AppUpdateAvailable."

    .line 167
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAppUpdateAvailableRequest()V

    .line 170
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "Request from MainThread. Cancelling."

    .line 171
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 172
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAppUpdateAvailableMainThreadFailure()V

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/ingameupdates/IsUpdateAvailable;->invoke(Landroid/content/Context;)Z

    move-result v0

    .line 177
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 178
    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendAppUpdateAvailableResult(Z)V

    return v0
.end method

.method public isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 2

    const-string v0, "Request to verify if Feature is supported."

    .line 227
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendIsFeatureSupportedRequestEvent(I)V

    .line 230
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/Billing;->isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    .line 231
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendIsFeatureSupportedResultEvent(Ljava/lang/Integer;)V

    return-object p1
.end method

.method public isReady()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    invoke-interface {v0}, Lcom/aptoide/sdk/billing/Billing;->isReady()Z

    move-result v0

    return v0
.end method

.method public launchAppUpdateDialog(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Request to launch App Update Dialog."

    .line 196
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public launchAppUpdateStore(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Request to launch App Update Store."

    .line 185
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/aptoide/sdk/billing/BillingFlowParams;)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 9

    const-string v0, "Failed to launch billing flow. ResponseCode: "

    const-string v1, "Launching billing flow with payload: "

    .line 78
    :try_start_0
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v3

    .line 79
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getSkuType()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v7

    .line 81
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getFreeTrial()Ljava/lang/Boolean;

    move-result-object v8

    .line 79
    invoke-virtual/range {v3 .. v8}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 84
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendLaunchPurchaseMainThreadFailureEvent()V

    .line 86
    new-instance p1, Lcom/aptoide/communication/requester/MainThreadException;

    const-string p2, "launchBillingFlow"

    invoke-direct {p1, p2}, Lcom/aptoide/communication/requester/MainThreadException;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getFreeTrial()Ljava/lang/Boolean;

    move-result-object v4

    .line 90
    invoke-static {v2, v3, v4}, Lcom/aptoide/sdk/billing/helpers/PayloadHelper;->buildIntentPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    invoke-direct {v3, p1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getOemId()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " oemid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " guestWalletId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    .line 104
    invoke-interface {v1, p2, v2, v4, v3}, Lcom/aptoide/sdk/billing/Billing;->launchBillingFlow(Lcom/aptoide/sdk/billing/BillingFlowParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;

    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->Companion:Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse$Companion;->createErrorTypeResponse()Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getResultCode()I

    move-result p2

    .line 112
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->purchaseFinishedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    .line 111
    invoke-static {p2, p1, v0}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleActivityResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V

    .line 113
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    .line 118
    :cond_1
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->getBuyIntent()Landroid/content/Intent;

    move-result-object p2

    .line 120
    invoke-static {}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->getInstance()Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->collectPaymentResult(Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;)V

    if-eqz p2, :cond_2

    .line 124
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_2
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 132
    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    .line 129
    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const/4 p2, 0x6

    .line 127
    invoke-direct {p0, p2, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->handleErrorTypeResponse(ILjava/lang/Exception;)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1
.end method

.method public queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V
    .locals 3

    .line 57
    new-instance v0, Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;-><init>()V

    .line 58
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;->mapProductDetailsListToProductIdsList(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/helpers/QueryProductDetailsParamsMapper;->getProductIdFromQueryProductDetailsParams(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v1, v2, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQuerySkuDetailsRequestEvent(Ljava/util/List;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    invoke-interface {v0, p1, p2}, Lcom/aptoide/sdk/billing/Billing;->queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V

    return-void
.end method

.method public queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V
    .locals 2

    .line 48
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->getProductType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQueryPurchasesRequestEvent(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->billing:Lcom/aptoide/sdk/billing/Billing;

    invoke-interface {v0, p1, p2}, Lcom/aptoide/sdk/billing/Billing;->queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V

    return-void
.end method

.method public startConnection(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V
    .locals 1

    const-string v0, "Request to start connection of SDK."

    .line 138
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starting connection of SDK."

    .line 140
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->collect(Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;)V

    .line 143
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->connection:Lcom/aptoide/sdk/billing/RepositoryConnection;

    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/RepositoryConnection;->startConnection(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    :cond_0
    return-void
.end method
