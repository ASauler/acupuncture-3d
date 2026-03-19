.class public final Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;
.super Lcom/aptoide/sdk/billing/usecases/UseCase;
.source "HandlePurchaseResultFromWalletDeeplink.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001b\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0086\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;",
        "Lcom/aptoide/sdk/billing/usecases/UseCase;",
        "()V",
        "handleFailureResult",
        "",
        "responseCode",
        "",
        "handleSuccessResult",
        "purchaseToken",
        "",
        "invoke",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;


# direct methods
.method public static synthetic $r8$lambda$c-G5pU5CZUAX8ansPwWsSYfftUA(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->invoke$lambda$0(ILjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;-><init>()V

    return-void
.end method

.method private final handleFailureResult(I)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object v0

    new-instance v1, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    invoke-direct {v1, p1}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;)V

    return-void
.end method

.method private final handleSuccessResult(ILjava/lang/String;)V
    .locals 4

    .line 29
    :try_start_0
    new-instance v0, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;

    sget-object v1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/sharedpreferences/AttributionSharedPreferences;->getWalletId()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    sget-object v2, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v2}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPackageName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, p2}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getPurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Required value was null."

    if-eqz p2, :cond_2

    .line 36
    :try_start_1
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;->getPurchase()Lcom/aptoide/sdk/billing/mappers/Purchase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v0, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    .line 41
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/PurchaseData;

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;->getPurchase()Lcom/aptoide/sdk/billing/mappers/Purchase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/mappers/Purchase;->getVerification()Lcom/aptoide/sdk/billing/mappers/Verification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aptoide/sdk/billing/mappers/Verification;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/aptoide/sdk/billing/listeners/PurchaseData;-><init>(Lorg/json/JSONObject;)V

    .line 42
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;->getPurchase()Lcom/aptoide/sdk/billing/mappers/Purchase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/Purchase;->getVerification()Lcom/aptoide/sdk/billing/mappers/Verification;

    move-result-object p2

    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/mappers/Verification;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 39
    invoke-direct {v0, p1, v1, p2, v2}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(ILcom/aptoide/sdk/billing/listeners/PurchaseData;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->hasCollectors()Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "hasCollectors(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {v0, v2, p2, v2}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;->toSDKPaymentResponse$default(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "There was a failure parsing the Purchase Result from the Wallet Deeplink."

    .line 52
    invoke-static {p2, p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 53
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;

    move-result-object p1

    new-instance p2, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;

    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->ERROR:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/aptoide/sdk/billing/listeners/WalletPaymentDeeplinkResponseStream;->emit(Lcom/aptoide/sdk/billing/listeners/SDKWebResponse;)V

    :goto_0
    return-void
.end method

.method private static final invoke$lambda$0(ILjava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/aptoide/sdk/billing/ResponseCode;->OK:Lcom/aptoide/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 19
    sget-object v0, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    invoke-direct {v0, p0, p1}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->handleSuccessResult(ILjava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_2
    sget-object p1, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->INSTANCE:Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;

    invoke-direct {p1, p0}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink;->handleFailureResult(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final invoke(ILjava/lang/String;)V
    .locals 2

    .line 16
    invoke-super {p0}, Lcom/aptoide/sdk/billing/usecases/UseCase;->invokeUseCase()V

    .line 17
    new-instance v0, Ljava/lang/Thread;

    .line 23
    new-instance v1, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/aptoide/sdk/billing/usecases/HandlePurchaseResultFromWalletDeeplink$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
