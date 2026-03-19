.class final Lio/grpc/internal/DelayedClientCall$DelayedListener;
.super Lio/grpc/ClientCall$Listener;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelayedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall$Listener<",
        "TRespT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile passThrough:Z

.field private pendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final realListener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 415
    const-class v0, Lio/grpc/internal/DelayedClientCall;

    return-void
.end method

.method public constructor <init>(Lio/grpc/ClientCall$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lio/grpc/ClientCall$Listener;-><init>()V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 422
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/DelayedClientCall$DelayedListener;)Lio/grpc/ClientCall$Listener;
    .locals 0

    .line 415
    iget-object p0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    return-object p0
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    monitor-exit p0

    return-void

    .line 431
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 431
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method drainPendingCallbacks()V
    .locals 3

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :goto_0
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    const/4 v0, 0x1

    .line 494
    iput-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    .line 495
    monitor-exit p0

    return-void

    .line 501
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 502
    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->pendingCallbacks:Ljava/util/List;

    .line 503
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 507
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 509
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 503
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    .line 465
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/DelayedClientCall$DelayedListener$3;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 1

    .line 437
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onHeaders(Lio/grpc/Metadata;)V

    goto :goto_0

    .line 440
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener$1;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 451
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall$Listener;->onMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 475
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->passThrough:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener;->realListener:Lio/grpc/ClientCall$Listener;

    invoke-virtual {v0}, Lio/grpc/ClientCall$Listener;->onReady()V

    goto :goto_0

    .line 478
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$DelayedListener$4;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedClientCall$DelayedListener$4;-><init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->delayOrExecute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
