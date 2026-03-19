.class Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;
.super Ljava/lang/Object;
.source "AptoideBillingWrapper.java"

# interfaces
.implements Lcom/appcoins/billing/AppcoinsBilling;
.implements Ljava/io/Serializable;


# instance fields
.field final billingService:Lcom/appcoins/billing/AppcoinsBilling;

.field private final walletId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$8ePaPyXktZlrBlcXogKAS1xZYKE(Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->lambda$pingConnection$0(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/appcoins/billing/AppcoinsBilling;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    .line 34
    iput-object p2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->walletId:Ljava/lang/String;

    return-void
.end method

.method private consumeGuestPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 104
    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 106
    sget-object p1, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    iget-object p2, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->walletId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->consumePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private synthetic lambda$pingConnection$0(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/billing/AppcoinsBilling;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to ping Billing connection: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private pingConnection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 112
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0}, Lcom/appcoins/billing/AppcoinsBilling;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/billing/AppcoinsBilling;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 88
    sget-object v1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 89
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    return p1

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->walletId:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->consumeGuestPurchase(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 92
    sget-object p2, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 93
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    return p1

    .line 95
    :cond_1
    sget-object p1, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    return p1
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWalletPaymentStartEvent()V

    move-object v0, p0

    .line 54
    iget-object v1, v0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 55
    invoke-interface/range {v1 .. v8}, Lcom/appcoins/billing/AppcoinsBilling;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->INSTANCE:Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalyticsUtils;->getSdkAnalytics()Lcom/aptoide/sdk/core/analytics/SdkAnalytics;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/aptoide/sdk/core/analytics/SdkAnalytics;->sendWalletPaymentEmptyDataEvent()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    sget-object v2, Lcom/aptoide/sdk/billing/ResponseCode;->SERVICE_UNAVAILABLE:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    const-string v3, "RESPONSE_CODE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    :cond_0
    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    move-object v3, p4

    invoke-virtual {v2, v1, p4}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->startWalletPayment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appcoins/billing/AppcoinsBilling;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 71
    iget-object p1, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->walletId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "INAPP_PURCHASE_ID_LIST"

    .line 72
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string p1, "INAPP_PURCHASE_ITEM_LIST"

    .line 73
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const-string p1, "INAPP_PURCHASE_DATA_LIST"

    .line 74
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string p1, "INAPP_DATA_SIGNATURE_LIST"

    .line 75
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 76
    sget-object p1, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    iget-object p4, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->walletId:Ljava/lang/String;

    .line 77
    invoke-virtual {p1, p2, p4, p3}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getPurchasesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    move-result-object v3

    .line 78
    new-instance v1, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;-><init>()V

    .line 79
    invoke-virtual/range {v1 .. v7}, Lcom/aptoide/sdk/billing/mappers/PurchasesBundleMapper;->mapGuestPurchases(Landroid/os/Bundle;Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appcoins/billing/AppcoinsBilling;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->pingConnection(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/aptoide/sdk/billing/helpers/AptoideBillingWrapper;->billingService:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/billing/AppcoinsBilling;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
