.class public final synthetic Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;ILandroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;

    iput p2, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$2:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;

    iget v1, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender$$ExternalSyntheticLambda0;->f$2:Landroid/os/Parcelable;

    invoke-static {v0, v1, v2}, Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;->$r8$lambda$TlBQ9avTxIGpqJSaz1gJmwkjfZI(Lcom/aptoide/communication/requester/IntentSyncIpcMessageSender;ILandroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
