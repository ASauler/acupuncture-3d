.class public Lcn/voidar/engine/NativeVideoPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/voidar/engine/NativeVideoPlayer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Lcn/voidar/engine/h;

.field private c:Lcn/voidar/engine/NativeVideoPlayer$a;

.field private d:Z

.field private e:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->e:F

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "=== NativeVideoPlayer ==="

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0}, Lcn/voidar/engine/h;->g()V

    :goto_0
    new-instance v0, Lcn/voidar/engine/h;

    invoke-direct {v0}, Lcn/voidar/engine/h;-><init>()V

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->a:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    return-void
.end method


# virtual methods
.method public getAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    sget-object v1, Lcn/voidar/engine/NativeVideoPlayer$a;->a:Lcn/voidar/engine/NativeVideoPlayer$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    invoke-virtual {v0}, Lcn/voidar/engine/NativeVideoPlayer$a;->a()I

    move-result v0

    return v0
.end method

.method public getTextureHandle()I
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "getTextureHandle"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0}, Lcn/voidar/engine/h;->f()I

    move-result v0

    return v0
.end method

.method public getTextureId()I
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0}, Lcn/voidar/engine/h;->b()I

    move-result v0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->getVideoRender()Lcn/voidar/engine/h;

    move-result-object v0

    iget v0, v0, Lcn/voidar/engine/h;->b:I

    return v0
.end method

.method public getVideoRender()Lcn/voidar/engine/h;
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->getVideoRender()Lcn/voidar/engine/h;

    move-result-object v0

    iget v0, v0, Lcn/voidar/engine/h;->a:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->e:F

    return v0
.end method

.method public isPlay()Z
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    sget-object v1, Lcn/voidar/engine/NativeVideoPlayer$a;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    sget-object p1, Lcn/voidar/engine/NativeVideoPlayer$a;->e:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "videoplay onError what = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object p1, Lcn/voidar/engine/NativeVideoPlayer$a;->g:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    const/4 p1, 0x1

    return p1
.end method

.method public onExit()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "VideoPlay onExit"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->pause()V

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0}, Lcn/voidar/engine/h;->g()V

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->f:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p1, Lcn/voidar/engine/h;->a:I

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p1, Lcn/voidar/engine/h;->b:I

    sget-object p1, Lcn/voidar/engine/NativeVideoPlayer$a;->b:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    iget-boolean p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->play()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->d:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    sget-object v1, Lcn/voidar/engine/NativeVideoPlayer$a;->a:Lcn/voidar/engine/NativeVideoPlayer$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    :cond_0
    return-void
.end method

.method public seekTo(F)V
    .locals 3

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "seekTo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    float-to-int p1, p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    sput-object p1, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->d:Z

    return-void
.end method

.method public setVideoSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {p1}, Lcn/voidar/engine/h;->a()V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v1}, Lcn/voidar/engine/h;->d()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoSource error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {p1}, Lcn/voidar/engine/h;->a()V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v1}, Lcn/voidar/engine/h;->d()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setVideoSource error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVideoURL(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->a:Lcn/voidar/engine/NativeVideoPlayer$a;

    iput-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcn/voidar/engine/NativeVideoPlayer;->a()V

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string/jumbo v1, "set video source assets"

    invoke-virtual {p1, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/voidar/engine/NativeVideoPlayer;->setVideoSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string/jumbo v1, "set video source file URL"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/voidar/engine/NativeVideoPlayer;->setVideoSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string v0, " setVideoURL Activity  null"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->e:F

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public updateVideoTexture(I)I
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0}, Lcn/voidar/engine/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {v0, p1}, Lcn/voidar/engine/h;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->isPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    invoke-virtual {p1}, Lcn/voidar/engine/h;->e()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    sget-object v0, Lcn/voidar/engine/NativeVideoPlayer$a;->c:Lcn/voidar/engine/NativeVideoPlayer$a;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcn/voidar/engine/NativeVideoPlayer;->b:Lcn/voidar/engine/h;

    iget-boolean p1, p1, Lcn/voidar/engine/h;->c:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string/jumbo v0, "updateVideoTexture Buffer ready"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object p1, Lcn/voidar/engine/NativeVideoPlayer$a;->b:Lcn/voidar/engine/NativeVideoPlayer$a;

    invoke-virtual {p1}, Lcn/voidar/engine/NativeVideoPlayer$a;->a()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p0}, Lcn/voidar/engine/NativeVideoPlayer;->getStatus()I

    move-result p1

    return p1
.end method
