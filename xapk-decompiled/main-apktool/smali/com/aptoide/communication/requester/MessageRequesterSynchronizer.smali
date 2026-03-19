.class Lcom/aptoide/communication/requester/MessageRequesterSynchronizer;
.super Ljava/lang/Object;
.source "MessageRequesterSynchronizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->init()V

    return-void
.end method


# virtual methods
.method public waitMessage(JI)Landroid/os/Parcelable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    invoke-static {p1, p2, p3}, Lcom/aptoide/communication/requester/StaticMessageResponseSynchronizer;->waitMessage(JI)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
