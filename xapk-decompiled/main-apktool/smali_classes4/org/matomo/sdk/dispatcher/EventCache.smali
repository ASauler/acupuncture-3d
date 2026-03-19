.class public Lorg/matomo/sdk/dispatcher/EventCache;
.super Ljava/lang/Object;
.source "EventCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

.field private final mQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 14
    const-class v2, Lorg/matomo/sdk/dispatcher/EventCache;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/dispatcher/EventCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/dispatcher/EventDiskCache;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 19
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

    return-void
.end method


# virtual methods
.method public add(Lorg/matomo/sdk/dispatcher/Event;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->uncache()Ljava/util/List;

    .line 32
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    return-void
.end method

.method public drainTo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requeue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/matomo/sdk/dispatcher/Event;

    .line 59
    iget-object v1, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateState(Z)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->uncache()Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_0
    sget-object v1, Lorg/matomo/sdk/dispatcher/EventCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Switched state to ONLINE, uncached %d events from disk."

    invoke-virtual {v1, v2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v1, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;)I

    .line 51
    iget-object v1, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mDiskCache:Lorg/matomo/sdk/dispatcher/EventDiskCache;

    invoke-virtual {v1, v0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->cache(Ljava/util/List;)V

    .line 52
    sget-object v1, Lorg/matomo/sdk/dispatcher/EventCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Switched state to OFFLINE, caching %d events to disk."

    invoke-virtual {v1, v2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lorg/matomo/sdk/dispatcher/EventCache;->mQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return p1
.end method
