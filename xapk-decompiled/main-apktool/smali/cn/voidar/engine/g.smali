.class public Lcn/voidar/engine/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcn/voidar/engine/a/b;

.field private f:Lcn/voidar/engine/a/a;

.field private g:Landroid/media/MediaCodec;

.field private h:Landroid/media/MediaFormat;

.field private i:Landroid/media/MediaCodec$BufferInfo;

.field private j:I

.field private k:Lcn/voidar/engine/VideoCapture;


# direct methods
.method public constructor <init>(Lcn/voidar/engine/VideoCapture;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/g;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    const/4 v0, -0x1

    iput v0, p0, Lcn/voidar/engine/g;->j:I

    new-instance v0, Lcn/voidar/engine/a/b;

    invoke-direct {v0}, Lcn/voidar/engine/a/b;-><init>()V

    iput-object v0, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    iput-object p1, p0, Lcn/voidar/engine/g;->k:Lcn/voidar/engine/VideoCapture;

    return-void
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {v0, p1, p2}, Lcn/voidar/engine/a/b;->a(II)V

    iget-object p1, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {p1}, Lcn/voidar/engine/a/b;->a()V

    iget-object p1, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcn/voidar/engine/g;->h:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance p1, Lcn/voidar/engine/a/a;

    iget-object p2, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {p2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcn/voidar/engine/a/a;-><init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V

    iput-object p1, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    iget-object p1, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    iget-object p1, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    invoke-virtual {p1}, Lcn/voidar/engine/a/a;->b()V

    iget-object p1, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {p1}, Lcn/voidar/engine/a/b;->b()V

    return-void
.end method

.method private a(Z)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "Video Encoder sending EOS to encoder"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/g;->k:Lcn/voidar/engine/VideoCapture;

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture;->isAudioTrackReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    const/4 v3, -0x3

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v3, p0, Lcn/voidar/engine/g;->k:Lcn/voidar/engine/VideoCapture;

    invoke-virtual {v3, v1, v4}, Lcn/voidar/engine/VideoCapture;->addTrack(Landroid/media/MediaFormat;I)I

    move-result v3

    if-eq v3, v2, :cond_5

    iput v3, p0, Lcn/voidar/engine/g;->j:I

    :cond_5
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MPEG4Writer ++++++++++++Video Encoder  trackIndex="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/voidar/engine/g;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_b

    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_7
    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v5, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_8
    iget-object v3, p0, Lcn/voidar/engine/g;->k:Lcn/voidar/engine/VideoCapture;

    iget v5, p0, Lcn/voidar/engine/g;->j:I

    iget-object v6, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v5, v2, v6}, Lcn/voidar/engine/VideoCapture;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_9
    iget-object v2, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    if-nez p1, :cond_a

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string v0, "MP4Recorder reached end of stream unexpectedly"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "encoderOutputBuffer "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iget-object v0, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    invoke-virtual {v0}, Lcn/voidar/engine/a/a;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/voidar/engine/g;->j:I

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "VideoEncoder  stop"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcn/voidar/engine/g;->c:Ljava/lang/String;

    iput p2, p0, Lcn/voidar/engine/g;->a:I

    iput p3, p0, Lcn/voidar/engine/g;->b:I

    const-string/jumbo p1, "video/avc"

    invoke-static {p1, p2, p3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    iput-object p2, p0, Lcn/voidar/engine/g;->h:Landroid/media/MediaFormat;

    const-string p3, "color-format"

    const v0, 0x7f000789

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p0, Lcn/voidar/engine/g;->h:Landroid/media/MediaFormat;

    const-string p3, "bitrate"

    const v0, 0xd59f80

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p0, Lcn/voidar/engine/g;->h:Landroid/media/MediaFormat;

    const-string p3, "frame-rate"

    const/16 v0, 0x1e

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object p2, p0, Lcn/voidar/engine/g;->h:Landroid/media/MediaFormat;

    const-string p3, "i-frame-interval"

    const/4 v0, 0x5

    invoke-virtual {p2, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcn/voidar/engine/g;->g:Landroid/media/MediaCodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "runVideoEncoding error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcn/voidar/engine/g;->i:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "VideoEncoder  signalEndOfInputStream"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/voidar/engine/g;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcn/voidar/engine/g;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MP4Recorder beginCaptureFrame config videoWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/voidar/engine/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  videoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/voidar/engine/g;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget v0, p0, Lcn/voidar/engine/g;->a:I

    iget v1, p0, Lcn/voidar/engine/g;->b:I

    invoke-direct {p0, v0, v1}, Lcn/voidar/engine/g;->a(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/voidar/engine/g;->d:Z

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {v0}, Lcn/voidar/engine/a/b;->a()V

    iget-object v0, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    invoke-virtual {v0}, Lcn/voidar/engine/a/a;->b()V

    iget-object v0, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    iget-object v1, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {v1}, Lcn/voidar/engine/a/b;->c()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/a/a;->a([F)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/voidar/engine/g;->a(Z)V

    iget-object v0, p0, Lcn/voidar/engine/g;->k:Lcn/voidar/engine/VideoCapture;

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture;->getTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    invoke-virtual {v2, v0, v1}, Lcn/voidar/engine/a/a;->a(J)V

    iget-object v0, p0, Lcn/voidar/engine/g;->f:Lcn/voidar/engine/a/a;

    invoke-virtual {v0}, Lcn/voidar/engine/a/a;->c()Z

    iget-object v0, p0, Lcn/voidar/engine/g;->e:Lcn/voidar/engine/a/b;

    invoke-virtual {v0}, Lcn/voidar/engine/a/b;->b()V

    return-void
.end method
