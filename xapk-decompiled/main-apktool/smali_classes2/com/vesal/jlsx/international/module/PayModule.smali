.class public Lcom/vesal/jlsx/international/module/PayModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PayModule.java"


# instance fields
.field private final PAY_CANCEL:I

.field private final PAY_FAIL:I

.field private final PAY_SUCCESS:I

.field private final TAG:Ljava/lang/String;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method static bridge synthetic -$$Nest$fgetbillingClient(Lcom/vesal/jlsx/international/module/PayModule;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconsume(Lcom/vesal/jlsx/international/module/PayModule;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/module/PayModule;->consume(Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGoogleQuery(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vesal/jlsx/international/module/PayModule;->onGoogleQuery(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpayFinish(Lcom/vesal/jlsx/international/module/PayModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/module/PayModule;->payFinish(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpayFinish(Lcom/vesal/jlsx/international/module/PayModule;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vesal/jlsx/international/module/PayModule;->payFinish(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const-string v0, "google_pay"

    .line 40
    iput-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->PAY_FAIL:I

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->PAY_CANCEL:I

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->PAY_SUCCESS:I

    .line 48
    new-instance v0, Lcom/vesal/jlsx/international/module/PayModule$1;

    invoke-direct {v0, p0}, Lcom/vesal/jlsx/international/module/PayModule$1;-><init>(Lcom/vesal/jlsx/international/module/PayModule;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 100
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 101
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 102
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-void
.end method

.method static synthetic access$000(Lcom/vesal/jlsx/international/module/PayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/PayModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/vesal/jlsx/international/module/PayModule;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/PayModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object p0

    return-object p0
.end method

.method private consume(Lcom/android/billingclient/api/Purchase;)V
    .locals 2

    .line 228
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/vesal/jlsx/international/module/PayModule$5;

    invoke-direct {v1, p0, p1}, Lcom/vesal/jlsx/international/module/PayModule$5;-><init>(Lcom/vesal/jlsx/international/module/PayModule;Lcom/android/billingclient/api/Purchase;)V

    .line 236
    iget-object p1, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method private onGoogleQuery(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    .line 168
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    const-string v1, "inapp"

    .line 173
    invoke-virtual {p1, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object p1

    .line 170
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 178
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/module/PayModule$4;

    invoke-direct {v1, p0, p2, p3}, Lcom/vesal/jlsx/international/module/PayModule$4;-><init>(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private payFinish(I)V
    .locals 1

    const-string v0, ""

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/vesal/jlsx/international/module/PayModule;->payFinish(ILjava/lang/String;)V

    return-void
.end method

.method private payFinish(ILjava/lang/String;)V
    .locals 2

    .line 244
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/vesal/jlsx/international/bean/PayResult;

    invoke-direct {v1, p1, p2}, Lcom/vesal/jlsx/international/bean/PayResult;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/vesal/jlsx/international/module/PayModule$6;

    invoke-direct {p1, p0}, Lcom/vesal/jlsx/international/module/PayModule$6;-><init>(Lcom/vesal/jlsx/international/module/PayModule;)V

    invoke-virtual {p1}, Lcom/vesal/jlsx/international/module/PayModule$6;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vesal/jlsx/international/utils/RNEventEmitter;->onGooglePayCallback(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buy(Lcom/android/billingclient/api/ProductDetails;Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 216
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    .line 219
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/PayModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "buy req res"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "google_pay"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public connect()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/module/PayModule$2;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/module/PayModule$2;-><init>(Lcom/vesal/jlsx/international/module/PayModule;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public getDisplayHeight()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PayModule"

    return-object v0
.end method

.method public query(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "bbb"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "query: billingClient.isFeatureSupported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_pay"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "-2"

    .line 147
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/vesal/jlsx/international/module/PayModule$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vesal/jlsx/international/module/PayModule$3;-><init>(Lcom/vesal/jlsx/international/module/PayModule;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method public queryFailOrder()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "google_pay"

    const-string v1, "query order"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Lcom/vesal/jlsx/international/module/PayModule$8;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/module/PayModule$8;-><init>(Lcom/vesal/jlsx/international/module/PayModule;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method

.method public test()V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 251
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/vesal/jlsx/international/module/PayModule;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/vesal/jlsx/international/module/PayModule$7;

    invoke-direct {v2, p0}, Lcom/vesal/jlsx/international/module/PayModule$7;-><init>(Lcom/vesal/jlsx/international/module/PayModule;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method
