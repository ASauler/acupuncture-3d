.class public final Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "SendSuccessfulPurchaseResponseEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0002J\u0011\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0086\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "DEFAULT_PRICE",
        "",
        "UNKNOWN_PAYMENT_METHOD",
        "handleMissingPaymentMethod",
        "handleMissingPrice",
        "invoke",
        "",
        "purchase",
        "Lcom/aptoide/sdk/billing/Purchase;",
        "android-aptoide-billing_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEFAULT_PRICE:Ljava/lang/String; = "0"

.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

.field private static final UNKNOWN_PAYMENT_METHOD:Ljava/lang/String; = "unknown"


# direct methods
.method public static synthetic $r8$lambda$d-tFagvpBXWxVZ_ugPEQntJwsQQ(Lcom/aptoide/sdk/billing/Purchase;)V
    .locals 0

    invoke-static {p0}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->invoke$lambda$0(Lcom/aptoide/sdk/billing/Purchase;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final handleMissingPaymentMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "There was an error obtaining the Method. Using unknown"

    .line 41
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private final handleMissingPrice()Ljava/lang/String;
    .locals 1

    const-string v0, "There was an error obtaining the Price. Using 0"

    .line 36
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const-string v0, "0"

    return-object v0
.end method

.method private static final invoke$lambda$0(Lcom/aptoide/sdk/billing/Purchase;)V
    .locals 4

    const-string v0, "$purchase"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getInappPurchase(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;->getOrder()Lcom/aptoide/sdk/billing/mappers/Order;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/mappers/Order;->getReference()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    sget-object v1, Lcom/aptoide/sdk/billing/managers/BrokerManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BrokerManager;

    invoke-virtual {v1, v0}, Lcom/aptoide/sdk/billing/managers/BrokerManager;->getTransaction(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/TransactionResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;->getPrice()Lcom/aptoide/sdk/billing/mappers/Price;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/mappers/Price;->getAppc()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

    invoke-direct {v2}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->handleMissingPrice()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/mappers/TransactionResponse;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v1, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->handleMissingPaymentMethod()Ljava/lang/String;

    move-result-object v1

    .line 27
    :cond_3
    sget-object v3, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/MMPEventsManager;

    invoke-virtual {v3, p0, v0, v2, v1}, Lcom/aptoide/sdk/billing/managers/MMPEventsManager;->sendSuccessfulPurchaseResultEvent(Lcom/aptoide/sdk/billing/Purchase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "OrderID is missing."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "There was an error creating the Successful Purchase event for MMP."

    .line 29
    check-cast p0, Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 31
    :goto_0
    sget-object p0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;

    invoke-virtual {p0}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->invoke()V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/aptoide/sdk/billing/Purchase;)V
    .locals 2

    const-string v0, "purchase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 15
    new-instance v0, Ljava/lang/Thread;

    .line 32
    new-instance v1, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/Purchase;)V

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
