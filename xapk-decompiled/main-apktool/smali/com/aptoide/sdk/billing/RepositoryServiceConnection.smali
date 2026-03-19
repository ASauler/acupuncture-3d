.class public Lcom/aptoide/sdk/billing/RepositoryServiceConnection;
.super Ljava/lang/Object;
.source "RepositoryServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/aptoide/sdk/billing/RepositoryConnection;
.implements Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;",
        "Lcom/aptoide/sdk/billing/RepositoryConnection;",
        "Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer<",
        "Ljava/util/ArrayList<",
        "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

.field private final context:Landroid/content/Context;

.field private listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;


# direct methods
.method public static synthetic $r8$lambda$AZmacp5DnVI8M-QRNGzw-85ev-s(Lcom/aptoide/sdk/billing/RepositoryServiceConnection;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->lambda$accept$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/aptoide/sdk/billing/ConnectionLifeCycle;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

    return-void
.end method

.method private initializeObservableForPayflowPriorityChanges()V
    .locals 1

    const-string v0, "Setup collector for PayflowPriorityStream."

    .line 67
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->collect(Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream$Consumer;)V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/util/ArrayList;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->initializeBillingRepository(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->accept(Ljava/util/ArrayList;)V

    return-void
.end method

.method public accept(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "New result received from PayflowPriorityStream."

    .line 83
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PaymentFlowMethods size: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;

    .line 87
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/payflow/models/PaymentFlowMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PaymentFlowMethods is null."

    .line 90
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 92
    :cond_1
    new-instance v0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/aptoide/sdk/billing/RepositoryServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/RepositoryServiceConnection;Ljava/util/ArrayList;)V

    .line 93
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public endConnection()V
    .locals 1

    const-string v0, "Ending connection."

    .line 74
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->finishBillingService(Landroid/content/Context;)V

    .line 76
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/aptoide/sdk/billing/listeners/PayflowPriorityStream;->stopCollecting()V

    .line 78
    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/aptoide/sdk/billing/WalletBinderUtil;->finishBillingRepository(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Binding died."

    .line 45
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    invoke-interface {p1, v0}, Lcom/aptoide/sdk/billing/ConnectionLifeCycle;->onDisconnect(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "Binding is null."

    .line 51
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    invoke-interface {p1, v0}, Lcom/aptoide/sdk/billing/ConnectionLifeCycle;->onDisconnect(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "Service connected."

    .line 31
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "called with: name = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], service = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    invoke-interface {v0, p1, p2, v1}, Lcom/aptoide/sdk/billing/ConnectionLifeCycle;->onConnect(Landroid/content/ComponentName;Landroid/os/IBinder;Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Service disconnected."

    .line 38
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "called with: name = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logDebug(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->connectionLifeCycle:Lcom/aptoide/sdk/billing/ConnectionLifeCycle;

    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    invoke-interface {p1, v0}, Lcom/aptoide/sdk/billing/ConnectionLifeCycle;->onDisconnect(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V

    return-void
.end method

.method public startConnection(Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;)V
    .locals 1

    const-string v0, "Starting connection to the BillingService."

    .line 57
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->listener:Lcom/aptoide/sdk/billing/listeners/AptoideBillingClientStateListener;

    .line 59
    sget-object p1, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->INSTANCE:Lcom/aptoide/sdk/billing/helpers/WalletUtils;

    iget-object v0, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/helpers/WalletUtils;->startAnalytics(Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/aptoide/sdk/billing/managers/BillingLifecycleManager;->setupBillingService(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/aptoide/sdk/billing/RepositoryServiceConnection;->initializeObservableForPayflowPriorityChanges()V

    return-void
.end method
