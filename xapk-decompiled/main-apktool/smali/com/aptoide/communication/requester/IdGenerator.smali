.class Lcom/aptoide/communication/requester/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateRequestCode()J
    .locals 4

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
