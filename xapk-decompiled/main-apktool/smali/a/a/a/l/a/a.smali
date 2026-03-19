.class public final La/a/a/l/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/l/a/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, La/a/a/l/a/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/l/a/a;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "startBackgroundThread: background thread is already running"

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/a/a/l/a/a;->a(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/l/a/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string p1, "post: background thread is already running"

    invoke-static {p1}, La/a/a/e/a/a;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 4

    const-string/jumbo v0, "stopBackgroundThread: interruption while safely stopping the thread. "

    iget-object v1, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    iput-object v1, p0, La/a/a/l/a/a;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    iput-object v1, p0, La/a/a/l/a/a;->c:Landroid/os/Handler;

    goto :goto_1

    :goto_0
    iput-object v1, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    iput-object v1, p0, La/a/a/l/a/a;->c:Landroid/os/Handler;

    throw v0

    :cond_0
    const-string/jumbo v0, "stopBackgroundThread: trying to stop non-existing thread"

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object v0, p0, La/a/a/l/a/a;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Background thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/l/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is destroyed before it is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
