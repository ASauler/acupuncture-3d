.class public Lcn/voidar/engine/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/media/MediaCodec;

.field protected b:Landroid/media/MediaCodec$BufferInfo;

.field protected c:I

.field d:J

.field e:J

.field protected f:I

.field protected final g:I

.field private h:Lcn/voidar/engine/VideoCapture;

.field private i:Landroid/media/AudioRecord;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcn/voidar/engine/VideoCapture;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/voidar/engine/a;->c:I

    const v0, 0xac44

    iput v0, p0, Lcn/voidar/engine/a;->j:I

    const/16 v0, 0x3e80

    iput v0, p0, Lcn/voidar/engine/a;->k:I

    const/4 v0, 0x1

    iput v0, p0, Lcn/voidar/engine/a;->l:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/voidar/engine/a;->d:J

    iput-wide v1, p0, Lcn/voidar/engine/a;->e:J

    const/4 v1, 0x0

    iput v1, p0, Lcn/voidar/engine/a;->f:I

    const/16 v1, 0xa

    iput v1, p0, Lcn/voidar/engine/a;->g:I

    iput-object p1, p0, Lcn/voidar/engine/a;->h:Lcn/voidar/engine/VideoCapture;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p0, Lcn/voidar/engine/a;->j:I

    iget v1, p0, Lcn/voidar/engine/a;->l:I

    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, p1, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v1, "aac-profile"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "sample-rate"

    iget v3, p0, Lcn/voidar/engine/a;->j:I

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "channel-count"

    iget v3, p0, Lcn/voidar/engine/a;->l:I

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    iget v3, p0, Lcn/voidar/engine/a;->k:I

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "max-input-size"

    const/16 v3, 0x4000

    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    :catch_0
    return-void
.end method

.method private a(JJ)J
    .locals 11

    const-wide/32 v0, 0xf4240

    mul-long v2, p3, v0

    iget v4, p0, Lcn/voidar/engine/a;->j:I

    int-to-long v5, v4

    div-long/2addr v2, v5

    sub-long/2addr p1, v2

    iget-wide v5, p0, Lcn/voidar/engine/a;->e:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iput-wide p1, p0, Lcn/voidar/engine/a;->d:J

    iput-wide v7, p0, Lcn/voidar/engine/a;->e:J

    :cond_0
    iget-wide v5, p0, Lcn/voidar/engine/a;->d:J

    iget-wide v9, p0, Lcn/voidar/engine/a;->e:J

    mul-long/2addr v9, v0

    int-to-long v0, v4

    div-long/2addr v9, v0

    add-long/2addr v5, v9

    sub-long v0, p1, v5

    const-wide/16 v9, 0x2

    mul-long/2addr v2, v9

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iput-wide p1, p0, Lcn/voidar/engine/a;->d:J

    iput-wide v7, p0, Lcn/voidar/engine/a;->e:J

    goto :goto_0

    :cond_1
    move-wide p1, v5

    :goto_0
    iget-wide v0, p0, Lcn/voidar/engine/a;->e:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcn/voidar/engine/a;->e:J

    return-wide p1
.end method


# virtual methods
.method public a()V
    .locals 8

    iget v0, p0, Lcn/voidar/engine/a;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    move v4, v0

    iget v0, p0, Lcn/voidar/engine/a;->j:I

    const/4 v1, 0x2

    invoke-static {v0, v4, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minBufferSize = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    if-lez v0, :cond_1

    new-instance v7, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    iget v3, p0, Lcn/voidar/engine/a;->j:I

    const/4 v5, 0x2

    mul-int/lit8 v6, v0, 0x4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v7, p0, Lcn/voidar/engine/a;->i:Landroid/media/AudioRecord;

    invoke-virtual {v7}, Landroid/media/AudioRecord;->startRecording()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_3

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lcn/voidar/engine/a;->i:Landroid/media/AudioRecord;

    const/16 v2, 0x800

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v7

    iget-object v0, p0, Lcn/voidar/engine/a;->h:Lcn/voidar/engine/VideoCapture;

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture;->getTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-int/lit8 v2, v7, 0x2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/voidar/engine/a;->a(JJ)J

    move-result-wide v8

    const/4 v0, -0x3

    if-ne v7, v0, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, ">>> Audio encodeSamples error: invalid operation"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x2

    if-ne v7, v0, :cond_1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, ">>> Audio encodeSamples error: bad value"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string v0, "AudioEncoder endOfStream"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/a;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/voidar/engine/a;->d:J

    iput-wide v0, p0, Lcn/voidar/engine/a;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcn/voidar/engine/a;->f:I

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "AudioEncoder  stop"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v1, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget v1, p0, Lcn/voidar/engine/a;->f:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/voidar/engine/a;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_2
    const/4 v4, -0x3

    if-ne v1, v4, :cond_3

    :try_start_1
    iget-object v0, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    iget-object v4, p0, Lcn/voidar/engine/a;->h:Lcn/voidar/engine/VideoCapture;

    invoke-virtual {v4, v1, v2}, Lcn/voidar/engine/VideoCapture;->addTrack(Landroid/media/MediaFormat;I)I

    move-result v2

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcn/voidar/engine/a;->c:I

    :cond_4
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPEG4Writer ++++++++++++Audio Encoder  trackIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/voidar/engine/a;->c:I

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

    :cond_5
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_6
    iget-object v3, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v5, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcn/voidar/engine/a;->h:Lcn/voidar/engine/VideoCapture;

    iget v5, p0, Lcn/voidar/engine/a;->c:I

    iget-object v6, p0, Lcn/voidar/engine/a;->b:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v5, v2, v6}, Lcn/voidar/engine/VideoCapture;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_7
    iget-object v2, p0, Lcn/voidar/engine/a;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderOutputBuffer "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
