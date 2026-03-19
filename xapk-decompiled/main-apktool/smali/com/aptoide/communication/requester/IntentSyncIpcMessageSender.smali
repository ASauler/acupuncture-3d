.class public Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;
.super Ljava/lang/Object;
.source "IntentSyncIpcMessageSender.java"

# interfaces
.implements Lcom/aptoide/communication/SyncIpcMessageRequester;


# instance fields
.field private final idGenerator:Lcom/aptoide/communication/requester/IdGenerator;

.field private final messageResponseSynchronizer:Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;

.field private final messageSender:Lcom/aptoide/communication/requester/MessageRequesterSender;

.field private final messageSenderSynchronizer:Lcom/aptoide/communication/requester/MessageSenderSynchronizer;

.field private final timeout:I


# direct methods
.method public static synthetic $r8$lambda$TlBQ9avTxIGpqJSaz1gJmwkjfZI(Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;ILandroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->lambda$sendMessage$0(ILandroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/aptoide/communication/requester/MessageRequesterSender;Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;Lcom/aptoide/communication/requester/IdGenerator;Lcom/aptoide/communication/requester/MessageSenderSynchronizer;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageSender:Lcom/aptoide/communication/requester/MessageRequesterSender;

    .line 18
    iput-object p2, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageResponseSynchronizer:Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;

    .line 19
    iput-object p3, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->idGenerator:Lcom/aptoide/communication/requester/IdGenerator;

    .line 20
    iput-object p4, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageSenderSynchronizer:Lcom/aptoide/communication/requester/MessageSenderSynchronizer;

    .line 21
    iput p5, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->timeout:I

    return-void
.end method

.method private synthetic lambda$sendMessage$0(ILandroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->idGenerator:Lcom/aptoide/communication/requester/IdGenerator;

    invoke-virtual {v0}, Lcom/aptoide/communication/requester/IdGenerator;->generateRequestCode()J

    move-result-wide v0

    .line 31
    iget-object v2, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageSender:Lcom/aptoide/communication/requester/MessageRequesterSender;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/aptoide/communication/requester/MessageRequesterSender;->sendMessage(JILandroid/os/Parcelable;)V

    .line 32
    iget-object p1, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageResponseSynchronizer:Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;

    iget p2, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->timeout:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;->waitMessage(JI)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public sendMessage(ILandroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aptoide/communication/requester/MainThreadException;
        }
    .end annotation

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->messageSenderSynchronizer:Lcom/aptoide/communication/requester/MessageSenderSynchronizer;

    new-instance v1, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;ILandroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;->addTaskToQueue(Ljava/util/concurrent/Callable;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    new-instance p1, Lcom/aptoide/communication/requester/MainThreadException;

    const-string/jumbo p2, "sendMessage"

    invoke-direct {p1, p2}, Lcom/aptoide/communication/requester/MainThreadException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
