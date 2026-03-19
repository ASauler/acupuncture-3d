.class public final Lcom/aptoide/sdk/billing/managers/BrokerManager;
.super Ljava/lang/Object;
.source "BrokerManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/aptoide/sdk/billing/managers/BrokerManager;",
        "",
        "()V",
        "brokerRepository",
        "Lcom/aptoide/sdk/billing/repositories/BrokerRepository;",
        "getTransaction",
        "Lcom/aptoide/sdk/billing/mappers/TransactionResponse;",
        "orderId",
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
.field public static final INSTANCE:Lcom/aptoide/sdk/billing/managers/BrokerManager;

.field private static final brokerRepository:Lcom/aptoide/sdk/billing/repositories/BrokerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/aptoide/sdk/billing/managers/BrokerManager;

    invoke-direct {v0}, Lcom/aptoide/sdk/billing/managers/BrokerManager;-><init>()V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/BrokerManager;->INSTANCE:Lcom/aptoide/sdk/billing/managers/BrokerManager;

    .line 13
    new-instance v0, Lcom/aptoide/sdk/billing/repositories/BrokerRepository;

    new-instance v1, Lcom/aptoide/sdk/billing/service/BdsService;

    const-string v2, "https://api.catappult.io"

    const/16 v3, 0xbb8

    invoke-direct {v1, v2, v3}, Lcom/aptoide/sdk/billing/service/BdsService;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/aptoide/sdk/billing/repositories/BrokerRepository;-><init>(Lcom/aptoide/sdk/billing/service/BdsService;)V

    sput-object v0, Lcom/aptoide/sdk/billing/managers/BrokerManager;->brokerRepository:Lcom/aptoide/sdk/billing/repositories/BrokerRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTransaction(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/TransactionResponse;
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Getting transaction value."

    .line 16
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/aptoide/sdk/billing/managers/BrokerManager;->brokerRepository:Lcom/aptoide/sdk/billing/repositories/BrokerRepository;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/repositories/BrokerRepository;->getTransaction(Ljava/lang/String;)Lcom/aptoide/sdk/billing/mappers/TransactionResponse;

    move-result-object p1

    return-object p1
.end method
