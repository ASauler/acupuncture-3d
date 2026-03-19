.class public Lcn/voidar/engine/d;
.super Lcn/voidar/engine/b;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static m:Landroid/hardware/Camera;


# instance fields
.field public l:Landroid/hardware/Camera$Size;

.field private n:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/voidar/engine/b;-><init>()V

    const-string v0, "NativeCamera1"

    iput-object v0, p0, Lcn/voidar/engine/d;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcn/voidar/engine/d;->h:I

    return-void
.end method

.method static synthetic g()Landroid/hardware/Camera;
    .locals 1

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    return-object v0
.end method

.method private h()V
    .locals 5

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "------start Preview-----  "

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "no open camera"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/d;->n:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcn/voidar/engine/d;->n:Landroid/graphics/SurfaceTexture;

    :cond_1
    :try_start_0
    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    iget-object v2, p0, Lcn/voidar/engine/d;->n:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "------camera setPreviewTexture error-----"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "actualSize:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    shr-int/lit8 v0, v0, 0x1

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, 0x1000

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_1
    const/4 v0, 0x2

    if-ge v1, v0, :cond_2

    new-array v0, v2, [B

    sget-object v3, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcn/voidar/engine/d;->f()V

    invoke-super {p0}, Lcn/voidar/engine/b;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/voidar/engine/d;->f()V

    :cond_0
    invoke-static {p1}, Lcn/voidar/engine/j;->c(I)Landroid/hardware/Camera;

    move-result-object p1

    sput-object p1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/voidar/engine/d;->c()V

    invoke-direct {p0}, Lcn/voidar/engine/d;->h()V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcn/voidar/engine/b;->a(II)V

    sget-object p1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {p0}, Lcn/voidar/engine/d;->c()V

    invoke-direct {p0}, Lcn/voidar/engine/d;->h()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcn/voidar/engine/b;->a(Z)V

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setFlashTorchMode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->b(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string/jumbo v1, "setFlashTorchMode 2"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string/jumbo p1, "torch"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    sget-object p1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Lcn/voidar/engine/d;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/voidar/engine/d;->f:Z

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    new-instance v1, Lcn/voidar/engine/d$1;

    invoke-direct {v1, p0}, Lcn/voidar/engine/d$1;-><init>(Lcn/voidar/engine/d;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 6

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcn/voidar/engine/d;->a:I

    iget v2, p0, Lcn/voidar/engine/d;->b:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/voidar/engine/j;->a(IILjava/util/List;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iput-object v1, p0, Lcn/voidar/engine/d;->l:Landroid/hardware/Camera$Size;

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------camera usedSize----- = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/voidar/engine/d;->l:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/voidar/engine/d;->l:Landroid/hardware/Camera$Size;

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/voidar/engine/d;->l:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcn/voidar/engine/d;->l:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcn/voidar/engine/d;->d:I

    invoke-static {v2}, Lcn/voidar/engine/j;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mFocusMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcn/voidar/engine/d;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " focusModeStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setFocusMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const-string v1, "auto"

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcn/voidar/engine/d;->b()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/voidar/engine/j;->a(Ljava/util/List;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "setPreviewFpsRange = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/voidar/engine/i;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcn/voidar/engine/d;->c:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPreviewFrameRate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/voidar/engine/d;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/voidar/engine/i;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcn/voidar/engine/d;->k:F

    sget-object v1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method f()V
    .locals 2

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    sget-object v0, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    sput-object v1, Lcn/voidar/engine/d;->m:Landroid/hardware/Camera;

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/d;->n:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcn/voidar/engine/d;->n:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v8, v0, v2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, v8

    invoke-virtual/range {v4 .. v9}, Lcn/voidar/engine/d;->a([BDD)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method
