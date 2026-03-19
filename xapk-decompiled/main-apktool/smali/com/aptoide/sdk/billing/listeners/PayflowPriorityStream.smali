.class public Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;
.super Ljava/lang/Object;
.source "PayflowPriorityStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;
    }
.end annotation


# static fields
.field private static instance:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;


# instance fields
.field private collector:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field private isFirstValue:Z

.field private value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->isFirstValue:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->value:Ljava/util/ArrayList;

    .line 19
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->collector:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;
    .locals 2

    const-class v0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->instance:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;-><init>()V

    sput-object v1, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->instance:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    .line 29
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->instance:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyCollectors(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->value:Ljava/util/ArrayList;

    .line 72
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->collector:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private prepareStream()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->isFirstValue:Z

    return-void
.end method

.method private valueHasChanged(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)Z"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->value:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public collect(Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->prepareStream()V

    .line 57
    iput-object p1, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->collector:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;

    return-void
.end method

.method public emit(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Emitting new value on PayflowPriorityStream."

    .line 37
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->valueHasChanged(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->isFirstValue:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Value of PayflowPriorityStream changed or isFirstValue."

    .line 39
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    invoke-virtual {v0, p1}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->setPaymentFlowMethods(Ljava/util/List;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->notifyCollectors(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public stopCollecting()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->collector:Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;

    return-void
.end method

.method public value()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->value:Ljava/util/ArrayList;

    return-object v0
.end method
