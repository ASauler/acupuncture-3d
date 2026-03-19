.class public Lcom/aptoide/communication/requester/TaskQueueSynchronizer;
.super Ljava/lang/Object;
.source "TaskQueueSynchronizer.java"


# instance fields
.field private final taskQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/util/concurrent/FutureTask<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8wvZf9J35lX5k9n6M8zjkt0jBfo(Lcom/aptoide/communication/requester/TaskQueueSynchronizer;)V
    .locals 0

    invoke-direct {p0}, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    .line 18
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aptoide/communication/requester/TaskQueueSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/aptoide/communication/requester/TaskQueueSynchronizer$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/communication/requester/TaskQueueSynchronizer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 21
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/FutureTask;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method


# virtual methods
.method public executeTask(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/os/Parcelable;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 34
    iget-object p1, p0, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->taskQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 37
    :try_start_0
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Task execution timed out."

    .line 39
    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 41
    new-instance p1, Lcom/aptoide/communication/requester/TaskQueueSynchronizer$1;

    invoke-direct {p1, p0}, Lcom/aptoide/communication/requester/TaskQueueSynchronizer$1;-><init>(Lcom/aptoide/communication/requester/TaskQueueSynchronizer;)V

    return-object p1
.end method
