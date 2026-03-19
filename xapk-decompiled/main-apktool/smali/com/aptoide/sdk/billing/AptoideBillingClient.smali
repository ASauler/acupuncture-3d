.class public abstract Lcom/aptoide/sdk/billing/AptoideBillingClient;
.super Ljava/lang/Object;
.source "AptoideBillingClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;,
        Lcom/aptoide/sdk/billing/AptoideBillingClient$FeatureType;,
        Lcom/aptoide/sdk/billing/AptoideBillingClient$ProductType;,
        Lcom/aptoide/sdk/billing/AptoideBillingClient$BillingResponseCode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;
    .locals 2

    .line 29
    new-instance v0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;-><init>(Landroid/content/Context;Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public abstract consumeAsync(Lcom/aptoide/sdk/billing/ConsumeParams;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V
.end method

.method public abstract endConnection()V
.end method

.method public abstract getReferralDeeplink()Lcom/aptoide/sdk/billing/ReferralDeeplink;
.end method

.method public abstract isAppUpdateAvailable()Z
.end method

.method public abstract isFeatureSupported(I)Lcom/aptoide/sdk/billing/BillingResult;
.end method

.method public abstract isReady()Z
.end method

.method public abstract launchAppUpdateDialog(Landroid/content/Context;)V
.end method

.method public abstract launchAppUpdateStore(Landroid/content/Context;)V
.end method

.method public abstract launchBillingFlow(Landroid/app/Activity;Lcom/aptoide/sdk/billing/BillingFlowParams;)Lcom/aptoide/sdk/billing/BillingResult;
.end method

.method public abstract queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V
.end method

.method public abstract queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V
.end method

.method public abstract startConnection(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V
.end method
