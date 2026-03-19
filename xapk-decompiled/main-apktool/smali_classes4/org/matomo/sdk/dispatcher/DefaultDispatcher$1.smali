.class Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;
.super Ljava/lang/Object;
.source "DefaultDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/dispatcher/DefaultDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 191
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$002(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;I)I

    .line 192
    :goto_0
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$100(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v2

    .line 195
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$000(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)I

    move-result v0

    const/4 v4, 0x1

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$000(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v6

    const-wide/16 v8, 0x5

    mul-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$300(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-virtual {v2, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 200
    :goto_1
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;

    move-result-object v0

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/matomo/sdk/dispatcher/EventCache;->updateState(Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/matomo/sdk/dispatcher/EventCache;->drainTo(Ljava/util/List;)V

    .line 204
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Drained %s events."

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$700(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/PacketFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/matomo/sdk/dispatcher/PacketFactory;->buildPackets(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/matomo/sdk/dispatcher/Packet;

    .line 208
    iget-object v5, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v5}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$800(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 209
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v5

    const-string v6, "DryRun, stored HttpRequest, now %d."

    iget-object v7, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v7}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$800(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v5, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v5}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$800(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 212
    :cond_2
    iget-object v5, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v5}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$900(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/PacketSender;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/matomo/sdk/dispatcher/PacketSender;->send(Lorg/matomo/sdk/dispatcher/Packet;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_3

    .line 216
    invoke-virtual {v4}, Lorg/matomo/sdk/dispatcher/Packet;->getEventCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 217
    iget-object v4, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v4, v1}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$002(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;I)I

    .line 228
    iget-object v4, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v4}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v4, "Disconnected during dispatch loop"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 221
    :cond_3
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v4, "Failure while trying to send packet"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$008(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)I

    .line 234
    :cond_4
    :goto_3
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v4, "Dispatched %d events."

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 236
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v4, "Unable to send all events, requeueing %d events"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/matomo/sdk/dispatcher/EventCache;->requeue(Ljava/util/List;)V

    .line 241
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;

    move-result-object v0

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$500(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/matomo/sdk/dispatcher/EventCache;->updateState(Z)Z

    .line 245
    :cond_5
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$1000(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 248
    :try_start_1
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$1100(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;

    move-result-object v2

    invoke-virtual {v2}, Lorg/matomo/sdk/dispatcher/EventCache;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$200(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    goto :goto_4

    .line 252
    :cond_6
    monitor-exit v0

    goto/16 :goto_0

    .line 249
    :cond_7
    :goto_4
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;->this$0:Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    invoke-static {v2, v1}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->access$102(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;Z)Z

    .line 250
    monitor-exit v0

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 252
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_8
    :goto_5
    return-void
.end method
