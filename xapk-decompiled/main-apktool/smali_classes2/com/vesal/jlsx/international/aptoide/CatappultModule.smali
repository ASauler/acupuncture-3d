.class public Lcom/vesal/jlsx/international/aptoide/CatappultModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CatappultModule.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private base64EncodedPublicKey:Ljava/lang/String;

.field billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

.field clientStateListener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

.field consumeResponseListener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

.field purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public static synthetic $r8$lambda$J1TMl67Y_NXzomM2QdR73cryeB0(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Lcom/aptoide/sdk/billing/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->lambda$buy$1(Lcom/aptoide/sdk/billing/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TRVB0NZ2FVXGX0IY40Ls2Z1642I(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->lambda$checkPurchases$3(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V4uiv0IWMYn50PuBh6_Vw3vOgpc(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->lambda$new$0(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rNTOhwvKAfXJtoLeaPdQI0o5MDY(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->lambda$checkPurchases$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$zbaGwI3ONDibzxq69Olfc47FDG8(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Ljava/lang/String;Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->lambda$buy$2(Ljava/lang/String;Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckPurchases(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V
    .locals 0

    invoke-direct {p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->checkPurchases()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 111
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "CatappultModule_tag"

    .line 31
    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->TAG:Ljava/lang/String;

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAs2CAoFbCGJxqhG68JJBrNQomDuXtURN9zdEp5X4/EzkAU9QnVzGrpAKx1D53r2VIKmIav9kxXaCzr/vjrqqISV0UXjnrMnbwfwCNd6+TEpJYP4ChCiKCqVFw4xyIcDzywnXAoD4qyQpct52RDiPyHRjvCEG8FQIF0xP/OYcHF0K8kSC9kz2/N4hLVbfeAaGdFcuWXYpy+rLJIfRiz9LL5RKtAxw/kUKXofAycEIKElgbiVheTywHuLWrUy7xjvbJmvjGzRHGJKEp8vXkNdnoTtBdjOlsVvZNjIZqdO2+656Orgy3XDP5JYIh38NESMc7Bhyr+oQbX+dHIVU/TVYQeQIDAQAB"

    .line 33
    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->base64EncodedPublicKey:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$1;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$1;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->clientStateListener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    .line 63
    new-instance v0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$2;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$2;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->consumeResponseListener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    .line 79
    new-instance v0, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda3;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    .line 112
    iput-object p1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private checkPurchases()V
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda8;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$buy$1(Lcom/aptoide/sdk/billing/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    .line 157
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/aptoide/sdk/billing/ProductDetails;)Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/aptoide/sdk/billing/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 161
    invoke-static {}, Lcom/aptoide/sdk/billing/BillingFlowParams;->newBuilder()Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;

    move-result-object v0

    .line 162
    invoke-static {p1}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->setDeveloperPayload(Ljava/lang/String;)Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingFlowParams$Builder;->build()Lcom/aptoide/sdk/billing/BillingFlowParams;

    move-result-object p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Billing getObfuscatedAccountId. == "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingFlowParams;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CatappultModule_tag"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p2, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    invoke-virtual {p2, p3, p1}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/aptoide/sdk/billing/BillingFlowParams;)Lcom/aptoide/sdk/billing/BillingResult;

    return-void
.end method

.method private synthetic lambda$buy$2(Ljava/lang/String;Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    .locals 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing queryProductDetailsAsync. == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatappultModule_tag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Billing queryProductDetailsAsync2. == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 152
    invoke-virtual {p3}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/aptoide/sdk/billing/ProductDetails;

    .line 154
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p3, p1, v0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda4;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Lcom/aptoide/sdk/billing/ProductDetails;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    .line 174
    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onAptoideConsumeCallback(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkPurchases$3(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Billing queryPurchasesAsync. == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatappultModule_tag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Billing queryPurchasesAsync1. == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 200
    invoke-static {}, Lcom/aptoide/sdk/billing/ConsumeParams;->newBuilder()Lcom/aptoide/sdk/billing/ConsumeParams$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 201
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aptoide/sdk/billing/Purchase;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/aptoide/sdk/billing/ConsumeParams$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/ConsumeParams$Builder;->build()Lcom/aptoide/sdk/billing/ConsumeParams;

    move-result-object p1

    .line 204
    iget-object p2, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->consumeResponseListener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    invoke-virtual {p2, p1, v0}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->consumeAsync(Lcom/aptoide/sdk/billing/ConsumeParams;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkPurchases$4()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryPurchasesParams;->newBuilder()Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    .line 183
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryPurchasesParams$Builder;->build()Lcom/aptoide/sdk/billing/QueryPurchasesParams;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    new-instance v2, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda6;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;)V

    invoke-virtual {v1, v0, v2}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->queryPurchasesAsync(Lcom/aptoide/sdk/billing/QueryPurchasesParams;Lcom/aptoide/sdk/billing/PurchasesResponseListener;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/aptoide/sdk/billing/BillingResult;Ljava/util/List;)V
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "purchasesUpdatedListener1 == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CatappultModule_tag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "purchasesUpdatedListener2 == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    .line 84
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/aptoide/sdk/billing/Purchase;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "purchase.getAccountIdentifiers() == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/Purchase;->getAccountIdentifiers()Lcom/aptoide/sdk/billing/AccountIdentifiers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "purchase.getDeveloperPayload() == "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onAptoideConsumeCallback(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/aptoide/sdk/billing/ConsumeParams;->newBuilder()Lcom/aptoide/sdk/billing/ConsumeParams$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/aptoide/sdk/billing/ConsumeParams$Builder;

    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/ConsumeParams$Builder;->build()Lcom/aptoide/sdk/billing/ConsumeParams;

    move-result-object p2

    .line 98
    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    iget-object v2, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->consumeResponseListener:Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;

    invoke-virtual {v0, p2, v2}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->consumeAsync(Lcom/aptoide/sdk/billing/ConsumeParams;Lcom/aptoide/sdk/billing/listeners/ConsumeResponseListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$queryInapps$5(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/ProductDetails;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$querySubs$6(Lcom/aptoide/sdk/billing/BillingResult;Lcom/aptoide/sdk/billing/QueryProductDetailsResult;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/BillingResult;->getResponseCode()I

    move-result p0

    if-nez p0, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aptoide/sdk/billing/ProductDetails;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queryInapps()V
    .locals 3

    .line 221
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "your_product_id"

    .line 225
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 226
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    new-instance v2, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V

    return-void
.end method

.method private querySubs()V
    .locals 3

    .line 241
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 244
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "your_product_id"

    .line 245
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    const-string v2, "subs"

    .line 246
    invoke-virtual {v1, v2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    new-instance v2, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V

    return-void
.end method


# virtual methods
.method public buy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "CatappultModule_tag"

    const-string p2, "Billing service is not ready yet to make purchases."

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;->newBuilder()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    const-string v1, "subs"

    .line 142
    invoke-virtual {p2, v1}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;

    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Product;

    move-result-object p2

    .line 139
    invoke-static {p2}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 138
    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/QueryProductDetailsParams$Builder;->build()Lcom/aptoide/sdk/billing/QueryProductDetailsParams;

    move-result-object p2

    .line 147
    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/aptoide/CatappultModule$$ExternalSyntheticLambda5;-><init>(Lcom/vesal/jlsx/international/aptoide/CatappultModule;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->queryProductDetailsAsync(Lcom/aptoide/sdk/billing/QueryProductDetailsParams;Lcom/aptoide/sdk/billing/ProductDetailsResponseListener;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CatappultModule"

    return-object v0
.end method

.method public init()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-static {v0}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->newBuilder(Landroid/content/Context;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->purchasesUpdatedListener:Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    .line 124
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->setListener(Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->base64EncodedPublicKey:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->setPublicKey(Ljava/lang/String;)Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/AptoideBillingClient$Builder;->build()Lcom/aptoide/sdk/billing/AptoideBillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->billingClient:Lcom/aptoide/sdk/billing/AptoideBillingClient;

    .line 127
    iget-object v1, p0, Lcom/vesal/jlsx/international/aptoide/CatappultModule;->clientStateListener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/AptoideBillingClient;->startConnection(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    return-void
.end method
