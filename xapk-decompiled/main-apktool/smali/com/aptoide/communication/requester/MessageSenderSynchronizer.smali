.class public Lcom/aptoide/communication/requester/MessageSenderSynchronizer;
.super Ljava/lang/Object;
.source "MessageSenderSynchronizer.java"


# instance fields
.field private final taskQueueSynchronizer:Lcom/aptoide/communication/requester/TaskQueueSynchronizer;

.field private final timeout:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;

    invoke-direct {v0}, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;-><init>()V

    iput-object v0, p0, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;->taskQueueSynchronizer:Lcom/aptoide/communication/requester/TaskQueueSynchronizer;

    .line 14
    iput p1, p0, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;->timeout:I

    return-void
.end method


# virtual methods
.method public addTaskToQueue(Ljava/util/concurrent/Callable;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;->taskQueueSynchronizer:Lcom/aptoide/communication/requester/TaskQueueSynchronizer;

    iget v1, p0, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;->timeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/aptoide/communication/requester/TaskQueueSynchronizer;->executeTask(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send synchronized message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aptoide/sdk/core/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
