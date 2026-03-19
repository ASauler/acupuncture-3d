.class final Lio/grpc/internal/RetriableStream$Throttle;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Throttle"
.end annotation


# static fields
.field private static final THREE_DECIMAL_PLACES_SCALE_UP:I = 0x3e8


# instance fields
.field final maxTokens:I

.field final threshold:I

.field final tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final tokenRatio:I


# direct methods
.method constructor <init>(FF)V
    .locals 2

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, v1

    float-to-int p2, p2

    .line 1421
    iput p2, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 1422
    iput p1, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    .line 1423
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    .line 1424
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1472
    :cond_0
    instance-of v1, p1, Lio/grpc/internal/RetriableStream$Throttle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1475
    :cond_1
    check-cast p1, Lio/grpc/internal/RetriableStream$Throttle;

    .line 1476
    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    iget v3, p1, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    iget p1, p1, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1481
    iget v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isAboveThreshold()Z
    .locals 2

    .line 1429
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onQualifiedFailureThenCheckIsAboveThreshold()Z
    .locals 5

    .line 1440
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    add-int/lit16 v2, v0, -0x3e8

    .line 1445
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    iget v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->threshold:I

    if-le v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method onSuccess()V
    .locals 4

    .line 1455
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1456
    iget v1, p0, Lio/grpc/internal/RetriableStream$Throttle;->maxTokens:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1459
    :cond_1
    iget v2, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenRatio:I

    add-int/2addr v2, v0

    .line 1460
    iget-object v3, p0, Lio/grpc/internal/RetriableStream$Throttle;->tokenCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void
.end method
