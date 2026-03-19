.class public interface abstract Lcom/aptoide/communication/SyncIpcMessageRequester;
.super Ljava/lang/Object;
.source "SyncIpcMessageRequester.java"


# virtual methods
.method public abstract sendMessage(ILandroid/os/Parcelable;)Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/aptoide/communication/requester/MainThreadException;
        }
    .end annotation
.end method
