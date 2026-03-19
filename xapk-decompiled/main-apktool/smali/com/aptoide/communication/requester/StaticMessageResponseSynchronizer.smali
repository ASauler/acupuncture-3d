.class Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;
.super Ljava/lang/Object;
.source "StaticMessageResponseSynchronizer.java"


# static fields
.field private static final blockingObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static messageReceivedListener:Lcom/aptoide/communication/requester/MessageRequesterListener;

.field private static final responses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->blockingObjects:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->responses:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->messageReceivedListener:Lcom/aptoide/communication/requester/MessageRequesterListener;

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StaticMessageResponseSynchronizer class must be initialized before being used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageListener()Lcom/aptoide/communication/requester/MessageRequesterListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->checkIfInitialized()V

    .line 77
    sget-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->messageReceivedListener:Lcom/aptoide/communication/requester/MessageRequesterListener;

    return-object v0
.end method

.method static init()V
    .locals 1

    .line 19
    new-instance v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->messageReceivedListener:Lcom/aptoide/communication/requester/MessageRequesterListener;

    return-void
.end method

.method static synthetic lambda$init$0(JLandroid/os/Parcelable;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->responses:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object p2, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->blockingObjects:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "There is no request for message id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aptoide/sdk/core/logger/Logger;->logWarning(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    monitor-enter p2

    .line 27
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static waitMessage(JI)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->checkIfInitialized()V

    .line 50
    sget-object v0, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->responses:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v2, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->blockingObjects:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    monitor-enter v1

    int-to-long v2, p2

    .line 54
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 55
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 57
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Parcelable;

    return-object p0

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    const-string/jumbo p1, "timeout reached"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
