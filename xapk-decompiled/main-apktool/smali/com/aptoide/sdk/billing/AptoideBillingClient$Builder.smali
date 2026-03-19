.class public final Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;
.super Ljava/lang/Object;
.source "AptoideBillingClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aptoide/sdk/billing/AptoideBillingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private volatile publicKey:Ljava/lang/String;

.field private volatile purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/aptoide/sdk/billing/AptoideBillingClient;
    .locals 4

    const-string v0, "Starting setup of AptoideBillingClient."

    .line 230
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->publicKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->setupLogger(Landroid/content/Context;)V

    .line 245
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/usecases/LogGeneralInformation;->invoke(Landroid/content/Context;)V

    .line 247
    new-instance v0, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    .line 248
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lcom/aptoide/sdk/billing/helpers/AptoideAndroidBillingRepository;-><init>(ILjava/lang/String;)V

    .line 250
    new-instance v1, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    .line 251
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;-><init>(Landroid/content/Context;Lcom/aptoide/sdk/billing/ConnectionLifeCycle;)V

    .line 252
    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setContext(Landroid/content/Context;)V

    .line 254
    iget-object v2, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->publicKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 255
    sget-object v3, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->INSTANCE:Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;

    invoke-virtual {v3, v2}, Lcom/aptoide/sdk/core/security/PurchasesSecurityHelper;->setBase64DecodedPublicKey([B)V

    .line 257
    new-instance v2, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;

    new-instance v3, Lcom/aptoide/sdk/billing/AptoideBilling;

    invoke-direct {v3, v0}, Lcom/aptoide/sdk/billing/AptoideBilling;-><init>(Lcom/aptoide/sdk/billing/Repository;)V

    iget-object v0, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    invoke-direct {v2, v3, v1, v0}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;-><init>(Lcom/aptoide/sdk/billing/Billing;Lcom/aptoide/sdk/billing/RepositoryConnection;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V

    return-object v2

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid public key for the purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for the purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context for your application."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setListener(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    return-object p0
.end method

.method public setPublicKey(Ljava/lang/String;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->publicKey:Ljava/lang/String;

    return-object p0
.end method
