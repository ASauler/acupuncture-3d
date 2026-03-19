.class public Lcom/aptoide/sdk/billing/BuyItemProperties;
.super Ljava/lang/Object;
.source "BuyItemProperties.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final apiVersion:I

.field private final developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

.field private final packageName:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aptoide/sdk/billing/DeveloperPayload;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->apiVersion:I

    .line 16
    iput-object p2, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->packageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->sku:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->type:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

    return-void
.end method


# virtual methods
.method public getApiVersion()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->apiVersion:I

    return v0
.end method

.method public getDeveloperPayload()Lcom/aptoide/sdk/billing/DeveloperPayload;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toBillingFlowParams()Lcom/aptoide/sdk/billing/BillingFlowParams;
    .locals 7

    .line 43
    new-instance v6, Lcom/aptoide/sdk/billing/BillingFlowParams;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->sku:Ljava/lang/String;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->type:Ljava/lang/String;

    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/DeveloperPayload;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

    .line 44
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/DeveloperPayload;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/aptoide/sdk/billing/BuyItemProperties;->developerPayload:Lcom/aptoide/sdk/billing/DeveloperPayload;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/DeveloperPayload;->getFreeTrial()Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/sdk/billing/BillingFlowParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v6
.end method
