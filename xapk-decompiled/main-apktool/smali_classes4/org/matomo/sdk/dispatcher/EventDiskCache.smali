.class public Lorg/matomo/sdk/dispatcher/EventDiskCache;
.super Ljava/lang/Object;
.source "EventDiskCache.java"


# static fields
.field private static final CACHE_DIR_NAME:Ljava/lang/String; = "piwik_cache"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private mCurrentSize:J

.field private mDelayedClear:Z

.field private final mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxAge:J

.field private final mMaxSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 28
    const-class v2, Lorg/matomo/sdk/dispatcher/EventDiskCache;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/Tracker;)V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    .line 39
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getOfflineCacheAge()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    .line 40
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getOfflineCacheSize()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    .line 41
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "piwik_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getAPIUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 50
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 51
    iget-wide v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 52
    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const-string v0, "Failed to make disk-cache dir %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private checkCacheLimits()V
    .locals 15

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "Failed to delete cache container %s"

    const-string v8, "Deleted cache container %s"

    if-gez v6, :cond_1

    .line 62
    sget-object v2, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "Caching is disabled."

    invoke-virtual {v2, v6, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 65
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    sget-object v3, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 70
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 71
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 75
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "_"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    .line 76
    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 78
    sget-object v9, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v9}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v9

    invoke-virtual {v9, v6}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    move-wide v9, v4

    .line 81
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    sub-long/2addr v11, v13

    cmp-long v6, v9, v11

    if-gez v6, :cond_3

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 83
    :cond_2
    sget-object v6, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 91
    :cond_3
    iget-wide v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 92
    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    iget-wide v5, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxSize:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 95
    iget-wide v4, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    sub-long/2addr v4, v9

    iput-wide v4, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 96
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 98
    :cond_4
    sget-object v4, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 101
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    sget-object v4, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v4

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cache check took %dms"

    invoke-virtual {v4, v1, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isCachingEnabled()Z
    .locals 4

    .line 106
    iget-wide v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readEventFile(Ljava/io/File;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 160
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 162
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 164
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    .line 165
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    .line 185
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v1, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-virtual {v1, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    .line 167
    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    sub-long/2addr v4, v6

    .line 169
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v6, " "

    .line 170
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    .line 174
    :try_start_4
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 175
    iget-wide v9, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    cmp-long v9, v7, v4

    if-gez v9, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 177
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    new-instance v6, Lorg/matomo/sdk/dispatcher/Event;

    invoke-direct {v6, v7, v8, v1}, Lorg/matomo/sdk/dispatcher/Event;-><init>(JLjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 179
    :try_start_5
    sget-object v6, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    invoke-virtual {v6, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 185
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    .line 182
    :goto_2
    :try_start_7
    sget-object v3, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_5

    .line 185
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_4
    move-exception v1

    sget-object v2, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    invoke-virtual {v2, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 189
    :cond_5
    :goto_3
    sget-object v1, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Restored %d events from %s"

    invoke-virtual {v1, v2, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    .line 185
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    sget-object v1, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 187
    :cond_6
    :goto_5
    throw p1
.end method

.method private writeEventFile(Ljava/util/List;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const-string v0, "\n"

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 197
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCacheDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "events_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/matomo/sdk/dispatcher/Event;

    invoke-virtual {v5}, Lorg/matomo/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "1"

    .line 202
    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v7, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    sub-long/2addr v4, v7

    .line 205
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/matomo/sdk/dispatcher/Event;

    .line 206
    iget-wide v10, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mMaxAge:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    invoke-virtual {v9}, Lorg/matomo/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v10

    cmp-long v10, v10, v4

    if-gez v10, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v9}, Lorg/matomo/sdk/dispatcher/Event;->getTimeStamp()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v9}, Lorg/matomo/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v8, v6

    goto :goto_0

    .line 216
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 220
    :goto_1
    sget-object v0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Saved %d events to %s"

    invoke-virtual {v0, v3, p1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_3

    return-object v1

    .line 226
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v2

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v3, v2

    .line 211
    :goto_2
    :try_start_3
    sget-object v0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_4

    .line 216
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    sget-object v0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    sget-object v1, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 218
    :cond_5
    :goto_5
    throw p1
.end method


# virtual methods
.method public declared-synchronized cache(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->isCachingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    invoke-direct {p0, p1}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->writeEventFile(Ljava/util/List;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 119
    iget-wide v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mCurrentSize:J

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 122
    sget-object v5, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v5

    const-string v6, "Caching of %d events took %dms (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v8, 0x0

    aput-object p1, v7, v8

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v7, v0

    const/4 p1, 0x2

    aput-object v2, v7, p1

    invoke-virtual {v5, v6, v7}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 110
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mDelayedClear:Z

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized uncache()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->isCachingEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    .line 130
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->checkCacheLimits()V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 133
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 134
    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/EventDiskCache;->mEventContainer:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz v3, :cond_1

    .line 136
    invoke-direct {p0, v3}, Lorg/matomo/sdk/dispatcher/EventDiskCache;->readEventFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    const-string v7, "Failed to delete cache container %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v6, v7, v4}, Ltimber/log/Timber$Tree;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 142
    sget-object v3, Lorg/matomo/sdk/dispatcher/EventDiskCache;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v8, "Uncaching of %d events took %dms"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    invoke-virtual {v3, v8, v9}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
