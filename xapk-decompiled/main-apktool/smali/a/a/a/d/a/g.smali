.class public La/a/a/d/a/g;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d/a/d;
.implements La/a/a/d/a/c;
.implements Landroid/hardware/Camera$ErrorCallback;


# static fields
.field private static a:Ljava/lang/String; = "DeviceCamera"


# instance fields
.field private b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field private final c:La/a/a/d/a/b;

.field private d:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

.field private e:F

.field private f:La/a/a/d/a/i;

.field private g:Landroid/hardware/Camera;

.field private h:Z

.field private i:Lcom/wikitude/common/camera/internal/AndroidCamera;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(La/a/a/d/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    iput-object v0, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    iput-object v0, p0, La/a/a/d/a/g;->d:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La/a/a/d/a/g;->e:F

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/a/g;->h:Z

    iput-object p1, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    new-instance v0, La/a/a/d/a/g$a;

    invoke-direct {v0, p0, p1}, La/a/a/d/a/g$a;-><init>(La/a/a/d/a/g;La/a/a/d/a/b;)V

    new-instance v1, La/a/a/d/a/i;

    invoke-direct {v1, p1, v0}, La/a/a/d/a/i;-><init>(La/a/a/d/a/b;La/a/a/d/a/i$a;)V

    iput-object v1, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    return-void
.end method

.method private b(Lcom/wikitude/common/camera/internal/AndroidCamera;)La/a/a/l/a/b;
    .locals 5

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraResolution()Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    move-result-object p1

    invoke-static {p1}, La/a/a/d/a/f;->a(Lcom/wikitude/common/camera/CameraSettings$CameraResolution;)La/a/a/l/a/b;

    move-result-object p1

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, La/a/a/l/a/b;->b()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, La/a/a/l/a/b;->a()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, La/a/a/l/a/b;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v3, v2}, La/a/a/l/a/b;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v3, La/a/a/l/a/b;

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v2}, La/a/a/l/a/b;-><init>(II)V

    invoke-static {v1, p1, v3}, La/a/a/d/a/f;->a(La/a/a/l/a/b;La/a/a/l/a/b;La/a/a/l/a/b;)La/a/a/l/a/b;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    invoke-virtual {v0}, La/a/a/d/a/i;->a()La/a/a/l/a/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v1, La/a/a/l/a/b;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, La/a/a/l/a/b;-><init>(II)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v1

    iget v2, p0, La/a/a/d/a/g;->e:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    invoke-virtual {v3}, La/a/a/d/a/i;->a()La/a/a/l/a/b;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, La/a/a/d/a/f;->a(FFLa/a/a/l/a/b;La/a/a/l/a/b;)F

    move-result v0

    iget-object v1, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    invoke-interface {v1, v0}, La/a/a/d/a/b;->a(F)V

    :cond_1
    return-void
.end method

.method private o()Landroid/hardware/Camera;
    .locals 3

    iget-object v0, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {v0}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget-object v2, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-interface {v2, v1}, La/a/a/d/a/b;->b(I)V

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(F)Lcom/wikitude/common/CallStatus;
    .locals 3

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v1, "com.wikitude.camera.android"

    const-string v2, "Manual focus is only supported with camera2."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;
    .locals 5

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setFocusPointOfInterest is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setFocusPointOfInterest is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    new-instance v2, Landroid/graphics/Rect;

    const/16 v3, -0x3e8

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, p0, La/a/a/d/a/g;->e:F

    invoke-static {p1, v2, v3}, La/a/a/d/a/f;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    new-instance v2, Landroid/hardware/Camera$Area;

    invoke-direct {v2, p1, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    iget-object p1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object p1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not start autoFocus "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 6

    invoke-virtual {p0, p1}, La/a/a/d/a/g;->b(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    if-nez v1, :cond_0

    new-instance v1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v3, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v3}, La/a/a/d/a/a;->a()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can not set unsupported focus mode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {v1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "auto"

    goto :goto_0

    :cond_1
    const-string v0, "fixed"

    goto :goto_0

    :cond_2
    const-string v0, "continuous-video"

    :goto_0
    :try_start_0
    iget-object v1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :goto_1
    iput-object p1, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error when trying to set the focus mode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 5

    invoke-virtual {p0, p1}, La/a/a/d/a/g;->b(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not set unsupported torch mode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v3, "com.wikitude.camera.android"

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {v1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "torch"

    goto :goto_0

    :cond_2
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput-object p1, p0, La/a/a/d/a/g;->d:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/wikitude/common/camera/internal/AndroidCamera;
    .locals 1

    iget-object v0, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    return-object v0
.end method

.method public a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V
    .locals 1

    iget-object v0, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraFocusMode()Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object p1

    iput-object p1, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    iget-boolean p1, p0, La/a/a/d/a/g;->h:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, La/a/a/d/a/g;->f()V

    invoke-virtual {p0}, La/a/a/d/a/g;->b()V

    :cond_0
    return-void
.end method

.method public b(F)Lcom/wikitude/common/CallStatus;
    .locals 8

    invoke-virtual {p0, p1}, La/a/a/d/a/g;->c(F)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can not set unsupported zoom factor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v3, "com.wikitude.camera.android"

    invoke-direct {v1, v2, v3, p1, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {v1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v4, p1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->floatValue()F

    move-result v5

    div-float/2addr v5, p1

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v6, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->floatValue()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    move v3, v2

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    iget-object v1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iput p1, p0, La/a/a/d/a/g;->e:F

    invoke-direct {p0}, La/a/a/d/a/g;->n()V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setExposurePointOfInterest is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setExposurePointOfInterest is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, -0x3e8

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, La/a/a/d/a/g;->e:F

    invoke-static {p1, v1, v2}, La/a/a/d/a/f;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v1, Landroid/hardware/Camera$Area;

    invoke-direct {v1, p1, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    iget-object p1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 5

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v2, "isFocusPointOfInterestSupported is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, "auto"

    goto :goto_0

    :cond_1
    const-string v2, "fixed"

    goto :goto_0

    :cond_2
    const-string v2, "continuous-video"

    :goto_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Focus mode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " is not supported by the device."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 3

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v2, "isTorchModeSupported is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->ON:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    if-ne p1, v2, :cond_1

    const-string/jumbo p1, "torch"

    goto :goto_1

    :cond_1
    const-string p1, "off"

    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "torchMode is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const-string v0, "auto"

    const-string v1, "Could not start the camera."

    iget-object v2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    if-nez v2, :cond_1

    sget-object v0, La/a/a/d/a/g;->a:Ljava/lang/String;

    const-string/jumbo v1, "startCamera: No active camera set."

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-interface {v0, v2, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, La/a/a/d/a/g;->h:Z

    :try_start_0
    invoke-direct {p0}, La/a/a/d/a/g;->o()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-direct {p0, v2}, La/a/a/d/a/g;->b(Lcom/wikitude/common/camera/internal/AndroidCamera;)La/a/a/l/a/b;

    move-result-object v2

    iget-object v3, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    invoke-virtual {v3, v2}, La/a/a/d/a/i;->a(La/a/a/l/a/b;)V

    iget-object v3, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-object v3, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    iget-object v4, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, La/a/a/d/a/i;->a(Landroid/hardware/Camera;)V

    iget-object v3, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {p0, v0}, La/a/a/d/a/g;->a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    iget-object v0, p0, La/a/a/d/a/g;->d:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-virtual {p0, v0}, La/a/a/d/a/g;->a(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;

    iget v0, p0, La/a/a/d/a/g;->e:F

    invoke-virtual {p0, v0}, La/a/a/d/a/g;->b(F)Lcom/wikitude/common/CallStatus;

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    iget-object v3, p0, La/a/a/d/a/g;->i:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {v3}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraPosition()Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    move-result-object v3

    invoke-interface {v0, v3}, La/a/a/d/a/b;->a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;)V

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    invoke-virtual {v2}, La/a/a/l/a/b;->b()I

    move-result v3

    invoke-virtual {v2}, La/a/a/l/a/b;->a()I

    move-result v2

    invoke-interface {v0, v3, v2}, La/a/a/d/a/b;->a(II)V

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    invoke-interface {v0}, La/a/a/d/a/b;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-interface {v0, v2, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    sget-object v2, La/a/a/d/a/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startCamera: Exception during Camera start: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-interface {v0, v2, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(F)Lcom/wikitude/common/CallStatus;
    .locals 5

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v2, "isZoomFactorSupported is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v2, "Zoom is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, La/a/a/d/a/g;->m()Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v3, "Unable to determine if zoom factor is supported since the max zoom factor can not be determined."

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_4

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Zoom factor is outside of the supported range. It has to be 1 <= zoomFactor <= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(getMaximumZoomFactor)."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v1, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/g;->b:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/wikitude/common/CallValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/util/List<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->BACK:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->FRONT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "isFocusPointOfInterestSupported is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string/jumbo v3, "setFocusPointOfInterest is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/a/d/a/g;->f:La/a/a/d/a/i;

    invoke-virtual {v1, v0}, La/a/a/d/a/i;->b(Landroid/hardware/Camera;)V

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/a/g;->h:Z

    iget-object v0, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    invoke-interface {v0}, La/a/a/d/a/b;->b()V

    :cond_0
    return-void
.end method

.method public g()Lcom/wikitude/common/CallValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "Manual focus is only supported with camera2."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/wikitude/common/CallValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/util/List<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "getAvailableFocusModes is not available when the camera is not started."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "auto"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-video"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "fixed"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget v0, p0, La/a/a/d/a/g;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "isExposurePointOfInterestSupported is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string/jumbo v3, "setExposurePointOfInterest is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/wikitude/common/CallStatus;
    .locals 4

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "Manual focus is only supported with camera2."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/CameraSettings$TorchMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/g;->d:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/wikitude/common/CallValue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "getMaximumZoomFactor is not available when the camera is not started."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->floatValue()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    div-float/2addr v1, v4

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Camera;->release()V

    const/4 p2, 0x0

    iput-object p2, p0, La/a/a/d/a/g;->g:Landroid/hardware/Camera;

    :cond_0
    iget-object p2, p0, La/a/a/d/a/g;->c:La/a/a/d/a/b;

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Internal Camera Error."

    invoke-interface {p2, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    sget-object p2, La/a/a/d/a/g;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Internal Camera Error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
