.class public Lorg/matomo/sdk/dispatcher/DefaultDispatcher;
.super Ljava/lang/Object;
.source "DefaultDispatcher.java"

# interfaces
.implements Lorg/matomo/sdk/dispatcher/Dispatcher;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConnectivity:Lorg/matomo/sdk/tools/Connectivity;

.field private mDispatchGzipped:Z

.field private volatile mDispatchInterval:J

.field private volatile mDispatchMode:Lorg/matomo/sdk/dispatcher/DispatchMode;

.field private volatile mDispatchThread:Ljava/lang/Thread;

.field private mDryRunTarget:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventCache:Lorg/matomo/sdk/dispatcher/EventCache;

.field private volatile mForcedBlocking:Z

.field private final mLoop:Ljava/lang/Runnable;

.field private final mPacketFactory:Lorg/matomo/sdk/dispatcher/PacketFactory;

.field private final mPacketSender:Lorg/matomo/sdk/dispatcher/PacketSender;

.field private volatile mRetryCounter:I

.field private volatile mRunning:Z

.field private final mSleepToken:Ljava/util/concurrent/Semaphore;

.field private final mThreadControl:Ljava/lang/Object;

.field private volatile mTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 28
    const-class v2, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/dispatcher/EventCache;Lorg/matomo/sdk/tools/Connectivity;Lorg/matomo/sdk/dispatcher/PacketFactory;Lorg/matomo/sdk/dispatcher/PacketSender;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    const/16 v0, 0x1388

    .line 35
    iput v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    const-wide/32 v2, 0x1d4c0

    .line 36
    iput-wide v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    .line 37
    iput v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    .line 38
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mForcedBlocking:Z

    .line 40
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    .line 41
    sget-object v0, Lorg/matomo/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/matomo/sdk/dispatcher/DispatchMode;

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/matomo/sdk/dispatcher/DispatchMode;

    .line 42
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchThread:Ljava/lang/Thread;

    .line 44
    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    .line 188
    new-instance v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;

    invoke-direct {v0, p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$1;-><init>(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)V

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mLoop:Ljava/lang/Runnable;

    .line 47
    iput-object p2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/matomo/sdk/tools/Connectivity;

    .line 48
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/matomo/sdk/dispatcher/EventCache;

    .line 49
    iput-object p3, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketFactory:Lorg/matomo/sdk/dispatcher/PacketFactory;

    .line 50
    iput-object p4, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/matomo/sdk/dispatcher/PacketSender;

    .line 51
    iget-boolean p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    invoke-interface {p4, p1}, Lorg/matomo/sdk/dispatcher/PacketSender;->setGzipData(Z)V

    .line 52
    iget p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    int-to-long p1, p1

    invoke-interface {p4, p1, p2}, Lorg/matomo/sdk/dispatcher/PacketSender;->setTimeout(J)V

    return-void
.end method

.method static synthetic access$000(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)I
    .locals 0

    .line 27
    iget p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return p0
.end method

.method static synthetic access$002(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;I)I
    .locals 0

    .line 27
    iput p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return p1
.end method

.method static synthetic access$008(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)I
    .locals 2

    .line 27
    iget v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    return v0
.end method

.method static synthetic access$100(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mForcedBlocking:Z

    return p0
.end method

.method static synthetic access$200(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Z
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->isOnline()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/EventCache;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/matomo/sdk/dispatcher/EventCache;

    return-object p0
.end method

.method static synthetic access$700(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/PacketFactory;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketFactory:Lorg/matomo/sdk/dispatcher/PacketFactory;

    return-object p0
.end method

.method static synthetic access$800(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lorg/matomo/sdk/dispatcher/DefaultDispatcher;)Lorg/matomo/sdk/dispatcher/PacketSender;
    .locals 0

    .line 27
    iget-object p0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/matomo/sdk/dispatcher/PacketSender;

    return-object p0
.end method

.method private isOnline()Z
    .locals 4

    .line 258
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/matomo/sdk/tools/Connectivity;

    invoke-virtual {v0}, Lorg/matomo/sdk/tools/Connectivity;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 260
    :cond_0
    sget-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$2;->$SwitchMap$org$matomo$sdk$dispatcher$DispatchMode:[I

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v2}, Lorg/matomo/sdk/dispatcher/DispatchMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mConnectivity:Lorg/matomo/sdk/tools/Connectivity;

    invoke-virtual {v0}, Lorg/matomo/sdk/tools/Connectivity;->getType()Lorg/matomo/sdk/tools/Connectivity$Type;

    move-result-object v0

    sget-object v2, Lorg/matomo/sdk/tools/Connectivity$Type;->WIFI:Lorg/matomo/sdk/tools/Connectivity$Type;

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method private launch()Z
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    .line 124
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mLoop:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 126
    iput-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchThread:Ljava/lang/Thread;

    .line 127
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 128
    monitor-exit v0

    return v1

    .line 130
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/matomo/sdk/dispatcher/EventCache;

    invoke-virtual {v0}, Lorg/matomo/sdk/dispatcher/EventCache;->clear()V

    .line 179
    iget-boolean v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->forceDispatch()Z

    :cond_0
    return-void
.end method

.method public forceDispatch()Z
    .locals 2

    .line 140
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->launch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mRetryCounter:I

    .line 142
    iget-object v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public forceDispatchBlocking()V
    .locals 4

    .line 150
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 152
    :try_start_0
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mForcedBlocking:Z

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 155
    invoke-virtual {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->forceDispatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mSleepToken:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 163
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    sget-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const-string v2, "Interrupted while waiting for dispatch thread to complete"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mThreadControl:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_2
    iput-boolean v1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mForcedBlocking:Z

    .line 172
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 153
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public getConnectionTimeOut()I
    .locals 1

    .line 62
    iget v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    return v0
.end method

.method public getDispatchGzipped()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    return v0
.end method

.method public getDispatchInterval()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    return-wide v0
.end method

.method public getDispatchMode()Lorg/matomo/sdk/dispatcher/DispatchMode;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/matomo/sdk/dispatcher/DispatchMode;

    return-object v0
.end method

.method public getDryRunTarget()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    return-object v0
.end method

.method public setConnectionTimeOut(I)V
    .locals 2

    .line 73
    iput p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    .line 74
    iget-object p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/matomo/sdk/dispatcher/PacketSender;

    iget v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mTimeOut:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/matomo/sdk/dispatcher/PacketSender;->setTimeout(J)V

    return-void
.end method

.method public setDispatchGzipped(Z)V
    .locals 1

    .line 101
    iput-boolean p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchGzipped:Z

    .line 102
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mPacketSender:Lorg/matomo/sdk/dispatcher/PacketSender;

    invoke-interface {v0, p1}, Lorg/matomo/sdk/dispatcher/PacketSender;->setGzipData(Z)V

    return-void
.end method

.method public setDispatchInterval(J)V
    .locals 2

    .line 84
    iput-wide p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    .line 85
    iget-wide p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->launch()Z

    :cond_0
    return-void
.end method

.method public setDispatchMode(Lorg/matomo/sdk/dispatcher/DispatchMode;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchMode:Lorg/matomo/sdk/dispatcher/DispatchMode;

    return-void
.end method

.method public setDryRunTarget(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;)V"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDryRunTarget:Ljava/util/List;

    return-void
.end method

.method public submit(Lorg/matomo/sdk/TrackMe;)V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mEventCache:Lorg/matomo/sdk/dispatcher/EventCache;

    new-instance v1, Lorg/matomo/sdk/dispatcher/Event;

    invoke-virtual {p1}, Lorg/matomo/sdk/TrackMe;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/matomo/sdk/dispatcher/Event;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/matomo/sdk/dispatcher/EventCache;->add(Lorg/matomo/sdk/dispatcher/Event;)V

    .line 185
    iget-wide v0, p0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->mDispatchInterval:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcher;->launch()Z

    :cond_0
    return-void
.end method
