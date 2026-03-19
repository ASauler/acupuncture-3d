.class public Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;
.super Ljava/lang/Object;
.source "PendingPurchaseStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;
    }
.end annotation


# static fields
.field private static instance:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;


# instance fields
.field private collector:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer<",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;>;"
        }
    .end annotation
.end field

.field private value:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->value:Lkotlin/Pair;

    .line 16
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->collector:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;
    .locals 2

    const-class v0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->instance:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;-><init>()V

    sput-object v1, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->instance:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;

    .line 26
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->instance:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyCollector(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->value:Lkotlin/Pair;

    .line 52
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->collector:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public collect(Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer<",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;>;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->collector:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;

    return-void
.end method

.method public emit(Lkotlin/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Emitting new value on PendingPurchaseStream."

    .line 36
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->notifyCollector(Lkotlin/Pair;)V

    return-void
.end method

.method public stopCollecting()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->collector:Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream$Consumer;

    return-void
.end method

.method public value()Lkotlin/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/app/Activity;",
            "Lcom/aptoide/sdk/billing/BuyItemProperties;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PendingPurchaseStream;->value:Lkotlin/Pair;

    return-object v0
.end method
