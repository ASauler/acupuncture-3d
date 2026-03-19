.class public interface abstract Lorg/matomo/sdk/dispatcher/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x1388

.field public static final DEFAULT_DISPATCH_INTERVAL:J = 0x1d4c0L


# virtual methods
.method public abstract clear()V
.end method

.method public abstract forceDispatch()Z
.end method

.method public abstract forceDispatchBlocking()V
.end method

.method public abstract getConnectionTimeOut()I
.end method

.method public abstract getDispatchGzipped()Z
.end method

.method public abstract getDispatchInterval()J
.end method

.method public abstract getDispatchMode()Lorg/matomo/sdk/dispatcher/DispatchMode;
.end method

.method public abstract getDryRunTarget()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setConnectionTimeOut(I)V
.end method

.method public abstract setDispatchGzipped(Z)V
.end method

.method public abstract setDispatchInterval(J)V
.end method

.method public abstract setDispatchMode(Lorg/matomo/sdk/dispatcher/DispatchMode;)V
.end method

.method public abstract setDryRunTarget(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract submit(Lorg/matomo/sdk/TrackMe;)V
.end method
