.class public Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;
.super Ljava/lang/Object;
.source "AptoideAndroidBillingRepository.java"

# interfaces
.implements Lcom/aptoide/sdk/billing/Repository;
.implements Lcom/aptoide/sdk/billing/ConnectionLifeCycle;


# instance fields
.field private final apiVersion:I

.field private isServiceReady:Z

.field private final packageName:Ljava/lang/String;

.field private service:Lcom/appcoins/billing/AppcoinsBilling;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Initializing apiVersion:%s packageName:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->apiVersion:I

    .line 37
    iput-object p2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public consumeAsync(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    const-string v0, "Consume result: "

    const-string v1, "Executing consumeAsync."

    .line 134
    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const-string v1, "Debuggable parameters purchaseToken:%s "

    .line 135
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    iget v2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->apiVersion:I

    iget-object v3, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/appcoins/billing/AppcoinsBilling;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error consumeAsync. "

    .line 151
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 152
    new-instance v0, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string p1, "Service is not ready. Throwing ServiceConnectionException."

    .line 138
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 139
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->CONSUME:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 140
    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V

    .line 141
    new-instance p1, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-direct {p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>()V

    throw p1
.end method

.method public getPurchases(Ljava/lang/String;)Lcom/aptoide/sdk/billing/PurchasesResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    const-string v0, "PurchasesResult code: "

    const-string v1, "Purchases received: "

    const-string v2, "Executing getPurchases."

    .line 63
    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const-string v2, "Parameters skuType:%s"

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    iget v3, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->apiVersion:I

    iget-object v4, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, p1, v5}, Lcom/appcoins/billing/AppcoinsBilling;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 76
    invoke-static {v2, p1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->mapPurchases(Landroid/os/Bundle;Ljava/lang/String;)Lcom/aptoide/sdk/billing/PurchasesResult;

    move-result-object p1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/PurchasesResult;->getBillingResult()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error getting purchases. "

    .line 82
    invoke-static {v0, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 83
    new-instance v0, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string p1, "Service is not ready. Throwing ServiceConnectionException."

    .line 67
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->GET_PURCHASES:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 69
    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V

    .line 70
    new-instance p1, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-direct {p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>()V

    throw p1
.end method

.method public isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing isFeatureSupported "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/usecases/IsFeatureSupported;->invoke(I)Z

    move-result p1

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feature supported result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 202
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 203
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    .line 206
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->FEATURE_NOT_SUPPORTED:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 207
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Service is not ready. Throwing ServiceConnectionException."

    .line 194
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 195
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    sget-object v0, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->IS_FEATURE_SUPPORTED:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 196
    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V

    .line 197
    new-instance p1, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-direct {p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>()V

    throw p1
.end method

.method public isReady()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isServiceReady:Z

    return v0
.end method

.method public launchBillingFlow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    move-object v1, p0

    const-string v0, "LaunchBillingFlowResult code: "

    const-string v2, "Get Buy Intent bundle: "

    const-string v3, "Executing launchBillingFlow."

    .line 159
    invoke-static {v3}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const-string v3, "Parameters skuType:%s sku:%s oemid:%s"

    move-object v8, p1

    move-object v7, p2

    move-object/from16 v10, p4

    .line 160
    filled-new-array {p1, p2, v10}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const-string v3, "Debuggable parameters payload:%s guestWalletId:%s"

    move-object v9, p3

    move-object/from16 v11, p5

    .line 161
    filled-new-array {p3, v11}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    :try_start_0
    iget-object v4, v1, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    iget v5, v1, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->apiVersion:I

    iget-object v6, v1, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->packageName:Ljava/lang/String;

    move-object v7, p2

    move-object v8, p1

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 171
    invoke-interface/range {v4 .. v11}, Lcom/appcoins/billing/AppcoinsBilling;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 175
    invoke-static {v3}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->mapBundleToHashMapGetIntent(Landroid/os/Bundle;)Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;

    move-result-object v2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/LaunchBillingFlowResult;->getResponseCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "Error launchBillingFlow. "

    .line 179
    invoke-static {v2, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    new-instance v2, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string v0, "Service is not ready. Throwing ServiceConnectionException."

    .line 164
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    sget-object v2, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->START_PURCHASE:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 166
    invoke-virtual {v0, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V

    .line 167
    new-instance v0, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>()V

    throw v0
.end method

.method public onConnect(Landroid/content/ComponentName;Landroid/os/IBinder;Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Billing Connected className:%s service:%s"

    .line 42
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/aptoide/sdk/billing/service/WalletBillingService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/aptoide/sdk/billing/service/WalletBillingService;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isServiceReady:Z

    .line 46
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->invoke()V

    const-string p1, "Billing Connected, notifying client onBillingSetupFinished(ResponseCode.OK)"

    .line 47
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 49
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object p1

    .line 48
    invoke-interface {p3, p1}, Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;->onBillingSetupFinished(Lcom/aptoide/sdk/billing/BillingResult;)V

    return-void
.end method

.method public onDisconnect(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V
    .locals 1

    const-string v0, "Billing Disconnected, notifying client onBillingServiceDisconnected."

    .line 55
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isServiceReady:Z

    .line 58
    invoke-interface {p1}, Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;->onBillingServiceDisconnected()V

    return-void
.end method

.method public querySkuDetailsAsync(Ljava/lang/String;Ljava/util/List;)Lcom/aptoide/sdk/billing/SkuDetailsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aptoide/sdk/billing/SkuDetailsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;
        }
    .end annotation

    const-string v0, "Executing querySkuDetailsAsync."

    .line 90
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "Parameters skuType:%s skuSize:%s"

    .line 95
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-static {p2}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->mapArrayListToBundleSkuDetails(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sku Details bundle to request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 111
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->service:Lcom/appcoins/billing/AppcoinsBilling;

    iget v2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->apiVersion:I

    iget-object v3, p0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/appcoins/billing/AppcoinsBilling;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sku Details received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 114
    invoke-static {p1, v1}, Lcom/aptoide/sdk/billing/helpers/AndroidBillingMapper;->mapBundleToHashMapSkuDetails(Ljava/lang/String;Landroid/os/Bundle;)Lcom/aptoide/sdk/billing/SkuDetailsResult;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SkuDetails request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    :cond_2
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getResponseCode()I

    move-result v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkuDetailsResult code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/SkuDetailsResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "Error querySkuDetailsAsync. "

    .line 125
    invoke-static {v1, v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 126
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 127
    invoke-virtual {v1, p2, p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendQuerySkuDetailsFailureParsingSkusEvent(Ljava/util/List;Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, "Service is not ready. Throwing ServiceConnectionException."

    .line 98
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {p1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object p1

    sget-object p2, Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;->QUERY_SKU_DETAILS:Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;

    .line 100
    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendServiceConnectionExceptionEvent(Lcom/aptoide/sdk/core/analytics/events/SdkGeneralFailureStep;)V

    .line 101
    new-instance p1, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;

    invoke-direct {p1}, Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException;-><init>()V

    throw p1
.end method
