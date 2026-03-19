.class public Lcom/aptoide/sdk/billing/ConsumeAsync;
.super Ljava/lang/Object;
.source "ConsumeAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final listener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

.field private final repository:Lcom/aptoide/sdk/billing/Repository;

.field private final token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;Lcom/aptoide/sdk/billing/Repository;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->listener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    .line 17
    iput-object p3, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->repository:Lcom/aptoide/sdk/billing/Repository;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/aptoide/sdk/billing/Repository;->consumeAsync(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v0

    .line 36
    iget-object v2, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->listener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;->onConsumeResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;)V

    .line 37
    sget-object v2, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v2

    iget-object v3, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    .line 38
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendConsumePurchaseResult(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Lcom/aptoide/sdk/billing/exceptions/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->listener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 41
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    .line 40
    invoke-interface {v0, v2, v1}, Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;->onConsumeResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->token:Ljava/lang/String;

    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 46
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendConsumePurchaseResult(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    return-void

    .line 23
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/aptoide/sdk/billing/ConsumeAsync;->listener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    invoke-static {}, Lcom/aptoide/sdk/billing/BillingResult;->newBuilder()Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    sget-object v3, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 24
    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setResponseCode(I)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    const/4 v3, 0x3

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 25
    invoke-static {v3}, Lcom/aptoide/sdk/billing/helpers/BillingResultHelper;->getMessageFromErrorType(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingResult$Builder;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/BillingResult$Builder;->build()Lcom/aptoide/sdk/billing/BillingResult;

    move-result-object v2

    .line 23
    invoke-interface {v0, v2, v1}, Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;->onConsumeResponse(Lcom/aptoide/sdk/billing/BillingResult;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->DEVELOPER_ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    .line 29
    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendConsumePurchaseResult(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
