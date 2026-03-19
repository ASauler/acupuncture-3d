.class public final Lcom/aptoide/sdk/billing/managers/WalletManager;
.super Ljava/lang/Object;
.source "WalletManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/WalletManager;",
        "",
        "()V",
        "walletRepository",
        "Lcom/aptoide/sdk/billing/repositories/WalletRepository;",
        "requestWallet",
        "Lcom/aptoide/sdk/billing/models/WalletGenerationModel;",
        "walletId",
        "",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/WalletManager;

.field private static final walletRepository:Lcom/aptoide/sdk/billing/repositories/WalletRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/aptoide/sdk/billing/managers/WalletManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/WalletManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/WalletManager;

    .line 11
    new-instance v0, Lcom/aptoide/sdk/billing/repositories/WalletRepository;

    new-instance v1, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v2, "https://apichain.catappult.io"

    const/16 v3, 0x7530

    invoke-direct {v1, v2, v3}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    check-cast v1, Lcom/aptoide/sdk/billing/service/Service;

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/repositories/WalletRepository;-><init>(Lcom/aptoide/sdk/billing/service/Service;)V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->walletRepository:Lcom/aptoide/sdk/billing/repositories/WalletRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestWallet(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;
    .locals 1

    const-string v0, "Requesting Wallet value."

    .line 14
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 16
    sget-object v0, Lcom/aptoide/sdk/billing/managers/WalletManager;->walletRepository:Lcom/aptoide/sdk/billing/repositories/WalletRepository;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/repositories/WalletRepository;->requestWalletSync(Ljava/lang/String;)Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object p1

    if-nez p1, :cond_1

    .line 17
    :cond_0
    invoke-static {}, Lcom/aptoide/sdk/billing/models/WalletGenerationModel;->createErrorWalletGenerationModel()Lcom/aptoide/sdk/billing/models/WalletGenerationModel;

    move-result-object p1

    .line 19
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
