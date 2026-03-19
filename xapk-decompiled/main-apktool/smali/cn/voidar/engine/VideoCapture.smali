.class public Lcn/voidar/engine/VideoCapture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/voidar/engine/VideoCapture$a;,
        Lcn/voidar/engine/VideoCapture$b;
    }
.end annotation


# static fields
.field private static a:Lcn/voidar/engine/a/d;

.field private static n:Ljava/lang/Object;


# instance fields
.field private b:Lcn/voidar/engine/g;

.field private c:Lcn/voidar/engine/a;

.field private d:I

.field private e:I

.field private f:Lcn/voidar/engine/a/f;

.field private g:Lcn/voidar/engine/VideoCapture$b;

.field private h:Lcn/voidar/engine/VideoCapture$a;

.field private i:Z

.field private j:Landroid/media/MediaMuxer;

.field private k:Z

.field private volatile l:I

.field private volatile m:I

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/voidar/engine/VideoCapture;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/voidar/engine/VideoCapture;->d:I

    iput v0, p0, Lcn/voidar/engine/VideoCapture;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/voidar/engine/VideoCapture;->f:Lcn/voidar/engine/a/f;

    iput-object v1, p0, Lcn/voidar/engine/VideoCapture;->g:Lcn/voidar/engine/VideoCapture$b;

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->i:Z

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    iput v0, p0, Lcn/voidar/engine/VideoCapture;->l:I

    iput v0, p0, Lcn/voidar/engine/VideoCapture;->m:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/voidar/engine/VideoCapture;->o:J

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->q:Z

    return-void
.end method

.method static synthetic a()Lcn/voidar/engine/a/d;
    .locals 1

    sget-object v0, Lcn/voidar/engine/VideoCapture;->a:Lcn/voidar/engine/a/d;

    return-object v0
.end method

.method static synthetic a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;
    .locals 0

    iget-object p0, p0, Lcn/voidar/engine/VideoCapture;->b:Lcn/voidar/engine/g;

    return-object p0
.end method

.method static synthetic a(Lcn/voidar/engine/VideoCapture;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/voidar/engine/VideoCapture;)I
    .locals 0

    iget p0, p0, Lcn/voidar/engine/VideoCapture;->d:I

    return p0
.end method

.method static synthetic c(Lcn/voidar/engine/VideoCapture;)I
    .locals 0

    iget p0, p0, Lcn/voidar/engine/VideoCapture;->e:I

    return p0
.end method

.method static synthetic d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;
    .locals 0

    iget-object p0, p0, Lcn/voidar/engine/VideoCapture;->c:Lcn/voidar/engine/a;

    return-object p0
.end method

.method static synthetic e(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/VideoCapture$b;
    .locals 0

    iget-object p0, p0, Lcn/voidar/engine/VideoCapture;->g:Lcn/voidar/engine/VideoCapture$b;

    return-object p0
.end method

.method static synthetic f(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/VideoCapture$a;
    .locals 0

    iget-object p0, p0, Lcn/voidar/engine/VideoCapture;->h:Lcn/voidar/engine/VideoCapture$a;

    return-object p0
.end method

.method public static getDirectoryDCIM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/voidar/engine/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;I)I
    .locals 3

    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->q:Z

    :cond_1
    sget-object p2, Lcn/voidar/engine/VideoCapture;->n:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    invoke-virtual {v1, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iget v1, p0, Lcn/voidar/engine/VideoCapture;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/voidar/engine/VideoCapture;->l:I

    iget v1, p0, Lcn/voidar/engine/VideoCapture;->l:I

    iget v2, p0, Lcn/voidar/engine/VideoCapture;->m:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "Mutex Started"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public captureFrame(I)V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture;->g:Lcn/voidar/engine/VideoCapture$b;

    invoke-virtual {v0, p1}, Lcn/voidar/engine/VideoCapture$b;->a(I)V

    return-void
.end method

.method public captureSamples([F)V
    .locals 0

    return-void
.end method

.method public encoderFinished()V
    .locals 5

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "encoderFinished"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encoderFinished Error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    iput v0, p0, Lcn/voidar/engine/VideoCapture;->l:I

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "encoderFinished VIDEO_CAPTURE_SUCCESS"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/voidar/engine/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "VIDEO_CAPTURE_SUCCESS"

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/voidar/engine/UnityActivityHelper;->sendMessageToUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getTimeUs()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/voidar/engine/VideoCapture;->o:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public initCapturing(IIII)V
    .locals 0

    sget-object p3, Lcn/voidar/engine/VideoCapture;->a:Lcn/voidar/engine/a/d;

    if-nez p3, :cond_0

    new-instance p3, Lcn/voidar/engine/a/d;

    invoke-direct {p3}, Lcn/voidar/engine/a/d;-><init>()V

    sput-object p3, Lcn/voidar/engine/VideoCapture;->a:Lcn/voidar/engine/a/d;

    :cond_0
    iget-object p3, p0, Lcn/voidar/engine/VideoCapture;->f:Lcn/voidar/engine/a/f;

    if-nez p3, :cond_1

    new-instance p3, Lcn/voidar/engine/a/f;

    invoke-direct {p3}, Lcn/voidar/engine/a/f;-><init>()V

    iput-object p3, p0, Lcn/voidar/engine/VideoCapture;->f:Lcn/voidar/engine/a/f;

    :cond_1
    iput p1, p0, Lcn/voidar/engine/VideoCapture;->d:I

    iput p2, p0, Lcn/voidar/engine/VideoCapture;->e:I

    new-instance p1, Lcn/voidar/engine/VideoCapture$b;

    iget-object p2, p0, Lcn/voidar/engine/VideoCapture;->f:Lcn/voidar/engine/a/f;

    invoke-direct {p1, p0, p2}, Lcn/voidar/engine/VideoCapture$b;-><init>(Lcn/voidar/engine/VideoCapture;Lcn/voidar/engine/a/f;)V

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture;->g:Lcn/voidar/engine/VideoCapture$b;

    new-instance p1, Lcn/voidar/engine/g;

    invoke-direct {p1, p0}, Lcn/voidar/engine/g;-><init>(Lcn/voidar/engine/VideoCapture;)V

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture;->b:Lcn/voidar/engine/g;

    new-instance p1, Lcn/voidar/engine/VideoCapture$a;

    invoke-direct {p1, p0}, Lcn/voidar/engine/VideoCapture$a;-><init>(Lcn/voidar/engine/VideoCapture;)V

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture;->h:Lcn/voidar/engine/VideoCapture$a;

    new-instance p1, Lcn/voidar/engine/a;

    invoke-direct {p1, p0}, Lcn/voidar/engine/a;-><init>(Lcn/voidar/engine/VideoCapture;)V

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture;->c:Lcn/voidar/engine/a;

    const/4 p1, 0x2

    iput p1, p0, Lcn/voidar/engine/VideoCapture;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture;->q:Z

    return-void
.end method

.method public isAudioTrackReady()Z
    .locals 1

    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->q:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->i:Z

    return v0
.end method

.method public startCapturing(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture;->b:Lcn/voidar/engine/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/voidar/engine/VideoCapture;->p:Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/voidar/engine/VideoCapture;->o:J

    new-instance v0, Lcn/voidar/engine/VideoCapture$1;

    invoke-direct {v0, p0, p1}, Lcn/voidar/engine/VideoCapture$1;-><init>(Lcn/voidar/engine/VideoCapture;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture$1;->start()V

    return-void
.end method

.method public stopCapturing()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "--- stopCapturing"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->i:Z

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture;->g:Lcn/voidar/engine/VideoCapture$b;

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture$b;->a()V

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture;->h:Lcn/voidar/engine/VideoCapture$a;

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture$a;->a()V

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    const-string v0, "+++++++++++++++++++ signalEndOfTrack trackIndex="

    const-string v1, "MPEG4Writer writeSampleData trackIndex="

    const-string v2, "MPEG4Writer skip writeSampleData trackIndex="

    sget-object v3, Lcn/voidar/engine/VideoCapture;->n:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    iget v4, p0, Lcn/voidar/engine/VideoCapture;->m:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcn/voidar/engine/VideoCapture;->m:I

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " encoderCount="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Lcn/voidar/engine/VideoCapture;->m:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " _bufferInfo size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture;->j:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " _bufferInfo size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " flag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_0
    iget p1, p0, Lcn/voidar/engine/VideoCapture;->m:I

    if-nez p1, :cond_2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string p2, "+++++++++++++++++++allTracksFinished"

    invoke-virtual {p1, p2}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/voidar/engine/VideoCapture;->encoderFinished()V

    :cond_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
