.class public Lcom/aptoide/communication/requester/MessageRequesterFactory;
.super Ljava/lang/Object;
.source "MessageRequesterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/aptoide/communication/SyncIpcMessageRequester;
    .locals 7

    .line 22
    new-instance v6, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;

    new-instance v1, Lcom/aptoide/communication/requester/MessageRequesterSender;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/aptoide/communication/requester/MessageRequesterSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;

    invoke-direct {v2}, Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;-><init>()V

    new-instance v3, Lcom/aptoide/communication/requester/IdGenerator;

    invoke-direct {v3}, Lcom/aptoide/communication/requester/IdGenerator;-><init>()V

    new-instance v4, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;

    invoke-direct {v4, p4}, Lcom/aptoide/communication/requester/MessageSenderSynchronizer;-><init>(I)V

    move-object v0, v6

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;-><init>(Lcom/aptoide/communication/requester/MessageRequesterSender;Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;Lcom/aptoide/communication/requester/IdGenerator;Lcom/aptoide/communication/requester/MessageSenderSynchronizer;I)V

    return-object v6
.end method
