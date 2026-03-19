.class public Lcom/vesal/jlsx/international/google/SubscribePayModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "SubscribePayModule.java"


# instance fields
.field private final PAY_CANCEL:I

.field private final PAY_FAIL:I

.field private final PAY_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private currentProduct:Lcom/android/billingclient/api/ProductDetails;

.field private purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetbillingClient(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetreactContext(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentProduct(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/android/billingclient/api/ProductDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->currentProduct:Lcom/android/billingclient/api/ProductDetails;

    return-void
.end method

.method static bridge synthetic -$$Nest$mconsume(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->consume(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGoogleQuery(Lcom/vesal/jlsx/international/google/SubscribePayModule;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->onGoogleQuery(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpayFinish(Lcom/vesal/jlsx/international/google/SubscribePayModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->payFinish(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpayFinish(Lcom/vesal/jlsx/international/google/SubscribePayModule;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->payFinish(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "google_pay"

    .line 41
    iput-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->PAY_FAIL:I

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->PAY_CANCEL:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->PAY_SUCCESS:I

    .line 50
    new-instance v0, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule$1;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 109
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 110
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 112
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method static synthetic access$000(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private consume(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    .line 123
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/vesal/jlsx/international/google/SubscribePayModule$2;

    invoke-direct {v2, p0, p1}, Lcom/vesal/jlsx/international/google/SubscribePayModule$2;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    :cond_0
    return-void
.end method

.method private onGoogleQuery(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->currentProduct:Lcom/android/billingclient/api/ProductDetails;

    .line 176
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 179
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string v1, "subs"

    .line 181
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 178
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/google/SubscribePayModule$5;

    invoke-direct {v1, p0, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule$5;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private payFinish(I)V
    .locals 1

    const-string v0, ""

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->payFinish(ILjava/lang/String;)V

    return-void
.end method

.method private payFinish(ILjava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/vesal/jlsx/international/bean/PayResult;

    invoke-direct {v1, p1, p2}, Lcom/vesal/jlsx/international/bean/PayResult;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/vesal/jlsx/international/google/SubscribePayModule$3;

    invoke-direct {p1, p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule$3;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;)V

    .line 146
    invoke-virtual {p1}, Lcom/vesal/jlsx/international/google/SubscribePayModule$3;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 145
    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGooglePayCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buy(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "buy req res"

    .line 223
    iget-object v1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->currentProduct:Lcom/android/billingclient/api/ProductDetails;

    if-nez v1, :cond_0

    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->currentProduct:Lcom/android/billingclient/api/ProductDetails;

    .line 234
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 237
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    .line 231
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 240
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 241
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setIsOfferPersonalized(Z)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 248
    iget-object v1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    const-string v1, "google_pay"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "SubscribePayModule"

    return-object v0
.end method

.method public query(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query: billingClient.isFeatureSupported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_pay"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-2"

    .line 154
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/google/SubscribePayModule$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/vesal/jlsx/international/google/SubscribePayModule$4;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public queryFailOrder()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "google_pay"

    const-string v1, "query order"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 266
    new-instance v1, Lcom/vesal/jlsx/international/google/SubscribePayModule$6;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule$6;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method
