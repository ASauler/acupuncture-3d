.class public Lcom/aptoide/sdk/billing/service/WalletBillingService;
.super Ljava/lang/Object;
.source "WalletBillingService.java"

# interfaces
.implements Lcom/appcoins/billing/AppcoinsBilling;


# instance fields
.field private final service:Lcom/appcoins/billing/AppcoinsBilling;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/aptoide/sdk/billing/helpers/AptoideBillingStubHelper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/appcoins/billing/AppcoinsBilling;

    move-result-object p1

    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public consumePurchase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/billing/AppcoinsBilling;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/appcoins/billing/AppcoinsBilling;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/appcoins/billing/AppcoinsBilling;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

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

    .line 25
    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/WalletBillingService;->service:Lcom/appcoins/billing/AppcoinsBilling;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/billing/AppcoinsBilling;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
