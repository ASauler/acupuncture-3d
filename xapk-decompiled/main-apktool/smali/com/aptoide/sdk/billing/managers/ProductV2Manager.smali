.class public final Lcom/aptoide/sdk/billing/managers/ProductV2Manager;
.super Ljava/lang/Object;
.source "ProductV2Manager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\n\u001a\u00020\u0008J\"\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u0008J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0011\u001a\u00020\u0008J4\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\u00082\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0015j\u0008\u0012\u0004\u0012\u00020\u0008`\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/ProductV2Manager;",
        "",
        "()V",
        "productV2Repository",
        "Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;",
        "consumePurchase",
        "",
        "walletId",
        "",
        "packageName",
        "purchaseToken",
        "getInappPurchase",
        "Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;",
        "getPurchaseSync",
        "Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;",
        "getPurchasesSync",
        "Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;",
        "type",
        "getSkuDetails",
        "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;",
        "skus",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "paymentFlow",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

.field private static final productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/ProductV2Manager;

    .line 16
    new-instance v0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    new-instance v1, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v2, "https://api.catappult.io"

    const/16 v3, 0xbb8

    invoke-direct {v1, v2, v3}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;)V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getSkuDetails$default(Lcom/aptoide/sdk/billing/managers/ProductV2Manager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/Object;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final consumePurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const-string/jumbo v0, "walletId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Consuming purchase."

    .line 53
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/WalletManager;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/managers/WalletManager;->requestWallet(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object p1

    .line 55
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    .line 56
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->getWalletAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWalletAddress(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->getSignature()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getSignature(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->consumePurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final getInappPurchase(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;
    .locals 1

    const-string v0, "purchaseToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Getting InappPurchase value."

    .line 19
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getInappPurchase(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/InappPurchaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getPurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;
    .locals 2

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Getting Purchase."

    .line 43
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/WalletManager;

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/managers/WalletManager;->requestWallet(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object p2

    .line 45
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    .line 47
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->getEwt()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getEwt(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getPurchaseSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getPurchasesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;
    .locals 3

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Getting Purchases."

    .line 28
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/WalletManager;

    invoke-virtual {v0, p2}, Lcom/aptoide/sdk/billing/managers/WalletManager;->requestWallet(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object p2

    .line 30
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    .line 32
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->getWalletAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getWalletAddress(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->getSignature()Ljava/lang/String;

    move-result-object p2

    const-string v2, "getSignature(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getPurchasesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/PurchasesResponse;

    move-result-object p1

    return-object p1
.end method

.method public final getSkuDetails(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "skus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Getting SkuDetails."

    .line 68
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/aptoide/sdk/billing/managers/ProductV2Manager;->productV2Repository:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->getSkuDetails(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/SkuDetailsResponse;

    move-result-object p1

    return-object p1
.end method
