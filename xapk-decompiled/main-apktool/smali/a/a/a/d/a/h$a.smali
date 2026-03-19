.class public La/a/a/d/a/h$a;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


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

    iput-object p1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnected: Camera disconnected."

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object v0

    sget-object v1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, "Camera disconnected."

    invoke-interface {v0, v1, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, ""

    goto :goto_0

    :cond_0
    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, "ERROR_CAMERA_SERVICE received, indicating that the camera service has encountered a fatal error."

    goto :goto_0

    :cond_1
    sget-object v0, La/a/a/d/a/a;->j:La/a/a/d/a/a;

    const-string v2, "ERROR_CAMERA_DEVICE received, indicating that the camera device has encountered a fatal error. Opening Camera 1."

    goto :goto_0

    :cond_2
    sget-object v0, La/a/a/d/a/a;->b:La/a/a/d/a/a;

    const-string v2, "ERROR_CAMERA_DISABLED received, indicating that the camera device could not be opened due to a device policy."

    goto :goto_0

    :cond_3
    sget-object v0, La/a/a/d/a/a;->e:La/a/a/d/a/a;

    const-string v2, "ERROR_MAX_CAMERAS_IN_USE received, indicating that the camera device could not be opened because there are too many other open camera devices."

    goto :goto_0

    :cond_4
    sget-object v0, La/a/a/d/a/a;->c:La/a/a/d/a/a;

    const-string v2, "ERROR_CAMERA_IN_USE received, indicating that the camera device is in use already."

    :goto_0
    iget-object v3, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v3}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Callback function onError called. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, v1, :cond_5

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La/a/a/d/a/h$a$b;

    invoke-direct {v1, p0, v0, v2}, La/a/a/d/a/h$a$b;-><init>(La/a/a/d/a/h$a;La/a/a/d/a/a;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    iget-object p2, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {p2}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object p2

    invoke-interface {p2, v0, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    const/4 p2, 0x0

    invoke-static {p1, p2}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->a(La/a/a/d/a/h;)La/a/a/d/a/h$d;

    move-result-object v0

    sget-object v1, La/a/a/d/a/h$d;->b:La/a/a/d/a/h$d;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onOpened: Camera was already stopped."

    invoke-static {p1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->j(La/a/a/d/a/h;)La/a/a/l/a/b;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/l/a/b;->b()I

    move-result v1

    iget-object v2, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v2}, La/a/a/d/a/h;->j(La/a/a/d/a/h;)La/a/a/l/a/b;

    move-result-object v2

    invoke-virtual {v2}, La/a/a/l/a/b;->a()I

    move-result v2

    const/16 v3, 0x23

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-static {v0, v1}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->i(La/a/a/d/a/h;)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v1}, La/a/a/d/a/h;->k(La/a/a/d/a/h;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v1

    iget-object v2, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v2}, La/a/a/d/a/h;->l(La/a/a/d/a/h;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v1}, La/a/a/d/a/h;->i(La/a/a/d/a/h;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    new-instance v1, La/a/a/d/a/h$a$a;

    invoke-direct {v1, p0}, La/a/a/d/a/h$a$a;-><init>(La/a/a/d/a/h$a;)V

    new-instance v2, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v3}, La/a/a/d/a/h;->m(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v1, v3}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->i(La/a/a/d/a/h;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v1}, La/a/a/d/a/h;->m(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v1

    iget-object v2, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v2}, La/a/a/d/a/h;->l(La/a/a/d/a/h;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :goto_0
    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0, p1}, La/a/a/d/a/h;->a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->b(La/a/a/d/a/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpened: Could not create a capture session."

    invoke-static {v0, v1, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {p1}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object p1

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Could not create a capture session."

    invoke-interface {p1, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
