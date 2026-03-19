.class public Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;
.super Ljava/lang/Object;
.source "WebPaymentActionStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;
    }
.end annotation


# static fields
.field private static instance:Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;


# instance fields
.field private final collectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->collectors:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;
    .locals 2

    const-class v0, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->instance:Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;-><init>()V

    sput-object v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->instance:Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;

    .line 21
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->instance:Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private notifyCollectors(Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->collectors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;

    .line 37
    invoke-interface {v1, p1}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;->acceptWebPaymentActionStream(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public collect(Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream$Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->collectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->collectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public emit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Emitting new value on WebPaymentActionStream."

    .line 25
    invoke-static {v0}, Lcom/aptoide/sdk/core/logger/Logger;->logInfo(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/listeners/WebPaymentActionStream;->notifyCollectors(Ljava/lang/String;)V

    return-void
.end method
