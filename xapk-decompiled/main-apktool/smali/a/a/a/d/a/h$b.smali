.class public La/a/a/d/a/h$b;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/h;


# direct methods
.method public constructor <init>(La/a/a/d/a/h;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConfigureFailed: could not configure CameraCaptureSession"

    invoke-static {p1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object p1

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Could not configure CameraCaptureSession"

    invoke-interface {p1, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0, p1}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->n(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->i(La/a/a/d/a/h;)Landroid/media/ImageReader;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->n(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->i(La/a/a/d/a/h;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->d(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object p1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->d(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object p1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->d(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object p1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->e(La/a/a/d/a/h;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v0, :cond_4

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->e(La/a/a/d/a/h;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_4

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->e(La/a/a/d/a/h;)F

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->e(La/a/a/d/a/h;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    invoke-static {p1, v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;F)F

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->f(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->f(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    invoke-static {v3, p1}, La/a/a/d/a/f;->a(ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->f(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->e(La/a/a/d/a/h;)F

    move-result v0

    sub-float/2addr v4, v0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_6
    mul-float/2addr v4, v1

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->g(La/a/a/d/a/h;)F

    move-result v0

    invoke-virtual {p1, v0}, La/a/a/d/a/h;->b(F)Lcom/wikitude/common/CallStatus;

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->h(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    move-result-object p1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->ON:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_8
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CaptureRequest;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, La/a/a/d/a/h$b$a;

    invoke-direct {v0, p0}, La/a/a/d/a/h$b$a;-><init>(La/a/a/d/a/h$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    iget-object v0, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onConfigured: Could not create a capture request."

    invoke-static {v0, v1, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object p1

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Could not create a capture request."

    invoke-interface {p1, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_9
    :goto_5
    iget-object p1, p0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onConfigured: Camera was already stopped."

    invoke-static {p1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
