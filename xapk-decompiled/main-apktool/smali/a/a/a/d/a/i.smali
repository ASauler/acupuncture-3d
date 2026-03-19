.class public La/a/a/d/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d/a/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DeviceCaptureSession"


# instance fields
.field private final b:La/a/a/d/a/b;

.field private final c:La/a/a/d/a/i$a;

.field private d:La/a/a/l/a/b;

.field private e:Z

.field private f:Landroid/graphics/SurfaceTexture;

.field private g:I

.field private h:Landroid/hardware/Camera$Size;


# direct methods
.method public constructor <init>(La/a/a/d/a/b;La/a/a/d/a/i$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/a/i;->e:Z

    const v0, 0x32315659

    iput v0, p0, La/a/a/d/a/i;->g:I

    iput-object p1, p0, La/a/a/d/a/i;->b:La/a/a/d/a/b;

    iput-object p2, p0, La/a/a/d/a/i;->c:La/a/a/d/a/i$a;

    return-void
.end method


# virtual methods
.method public a()La/a/a/l/a/b;
    .locals 3

    new-instance v0, La/a/a/l/a/b;

    iget-object v1, p0, La/a/a/d/a/i;->h:Landroid/hardware/Camera$Size;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v1}, La/a/a/l/a/b;-><init>(II)V

    return-object v0
.end method

.method public a(La/a/a/l/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/i;->d:La/a/a/l/a/b;

    return-void
.end method

.method public a(Landroid/hardware/Camera;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-boolean v0, p0, La/a/a/d/a/i;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, La/a/a/d/a/i;->g:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    new-instance v1, Landroid/hardware/Camera$Size;

    iget-object v2, p0, La/a/a/d/a/i;->d:La/a/a/l/a/b;

    invoke-virtual {v2}, La/a/a/l/a/b;->b()I

    move-result v2

    iget-object v3, p0, La/a/a/d/a/i;->d:La/a/a/l/a/b;

    invoke-virtual {v3}, La/a/a/l/a/b;->a()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    iput-object v1, p0, La/a/a/d/a/i;->h:Landroid/hardware/Camera$Size;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v1, p0, La/a/a/d/a/i;->b:La/a/a/d/a/b;

    iget-object v2, p0, La/a/a/d/a/i;->h:Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v1, v3, v2}, La/a/a/d/a/b;->a(II)V

    iget-object v1, p0, La/a/a/d/a/i;->b:La/a/a/d/a/b;

    iget v2, p0, La/a/a/d/a/i;->g:I

    invoke-interface {v1, v2}, La/a/a/d/a/b;->a(I)V

    const-string/jumbo v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "video-stabilization"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus 4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v3, "continuous-video"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "auto"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, La/a/a/d/a/i;->h:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    iget-object v1, p0, La/a/a/d/a/i;->h:Landroid/hardware/Camera$Size;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, La/a/a/d/a/i;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    iput-boolean v2, p0, La/a/a/d/a/i;->e:Z

    :cond_4
    return-void
.end method

.method public b(Landroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/a/d/a/i;->e:Z

    iget-object p1, p0, La/a/a/d/a/i;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    if-nez p1, :cond_1

    iget p1, p0, La/a/a/d/a/i;->g:I

    const v0, 0x32315659

    if-ne p1, v0, :cond_0

    const/16 p1, 0x11

    iput p1, p0, La/a/a/d/a/i;->g:I

    :try_start_0
    invoke-virtual {p0, p2}, La/a/a/d/a/i;->b(Landroid/hardware/Camera;)V

    invoke-virtual {p0, p2}, La/a/a/d/a/i;->a(Landroid/hardware/Camera;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "startCamera: Exception during Camera start: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceCaptureSession"

    invoke-static {p2, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/d/a/i;->c:La/a/a/d/a/i$a;

    sget-object p2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v0, "Could not start the camera."

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/a/a/d/a/i;->c:La/a/a/d/a/i$a;

    sget-object p2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v0, "The frame received from the camera is missing data. This may be happening because of a bug in this device\'s camera."

    :goto_0
    invoke-interface {p1, p2, v0}, La/a/a/d/a/i$a;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, La/a/a/d/a/i;->b:La/a/a/d/a/b;

    iget-object v1, p0, La/a/a/d/a/i;->f:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    array-length v3, p1

    invoke-interface {v0, v1, v2, p1, v3}, La/a/a/d/a/b;->a(J[BI)V

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :goto_1
    return-void
.end method
