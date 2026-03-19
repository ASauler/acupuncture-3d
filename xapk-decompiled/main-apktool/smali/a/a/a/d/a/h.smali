.class public La/a/a/d/a/h;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d/a/d;
.implements La/a/a/d/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d/a/h$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/hardware/camera2/CameraManager;

.field private final c:La/a/a/d/a/b;

.field private d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field private e:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

.field private f:F

.field private g:F

.field private h:Landroid/os/HandlerThread;

.field private i:Landroid/os/Handler;

.field private j:La/a/a/d/a/h$d;

.field private k:Landroid/hardware/camera2/CameraDevice;

.field private l:Landroid/hardware/camera2/CameraCaptureSession;

.field private m:Landroid/hardware/camera2/CameraCharacteristics;

.field private n:Landroid/media/ImageReader;

.field private o:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private p:Lcom/wikitude/common/camera/internal/AndroidCamera;

.field private q:La/a/a/l/a/b;

.field private final r:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final s:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final t:Landroid/media/ImageReader$OnImageAvailableListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/d/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "h"

    iput-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    iput-object v0, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    iput-object v0, p0, La/a/a/d/a/h;->e:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La/a/a/d/a/h;->g:F

    sget-object v0, La/a/a/d/a/h$d;->b:La/a/a/d/a/h$d;

    iput-object v0, p0, La/a/a/d/a/h;->j:La/a/a/d/a/h$d;

    new-instance v0, La/a/a/d/a/h$a;

    invoke-direct {v0, p0}, La/a/a/d/a/h$a;-><init>(La/a/a/d/a/h;)V

    iput-object v0, p0, La/a/a/d/a/h;->r:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, La/a/a/d/a/h$b;

    invoke-direct {v0, p0}, La/a/a/d/a/h$b;-><init>(La/a/a/d/a/h;)V

    iput-object v0, p0, La/a/a/d/a/h;->s:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, La/a/a/d/a/h$c;

    invoke-direct {v0, p0}, La/a/a/d/a/h$c;-><init>(La/a/a/d/a/h;)V

    iput-object v0, p0, La/a/a/d/a/h;->t:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p2, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public static synthetic a(La/a/a/d/a/h;F)F
    .locals 0

    iput p1, p0, La/a/a/d/a/h;->f:F

    return p1
.end method

.method public static synthetic a(La/a/a/d/a/h;)La/a/a/d/a/h$d;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->j:La/a/a/d/a/h$d;

    return-object p0
.end method

.method public static synthetic a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic a(La/a/a/d/a/h;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method public static synthetic a(La/a/a/d/a/h;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method public static synthetic a(La/a/a/d/a/h;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h;->n:Landroid/media/ImageReader;

    return-object p1
.end method

.method public static synthetic a(La/a/a/d/a/h;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/d/a/h;->b(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    iget-object v0, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string v1, "onConfigured: Could not create a capture request."

    invoke-static {v0, v1, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Could not create a capture request."

    invoke-interface {p1, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-object p1, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v0, "setRepeatingRequest: no camera or capture session"

    invoke-static {p1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/wikitude/common/camera/internal/AndroidCamera;)La/a/a/l/a/b;
    .locals 7

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraResolution()Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    move-result-object p1

    invoke-static {p1}, La/a/a/d/a/f;->a(Lcom/wikitude/common/camera/CameraSettings$CameraResolution;)La/a/a/l/a/b;

    move-result-object p1

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p1}, La/a/a/l/a/b;->b()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {p1}, La/a/a/l/a/b;->a()I

    move-result v6

    if-ne v5, v6, :cond_0

    return-object p1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, La/a/a/l/a/b;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v4}, La/a/a/l/a/b;-><init>(II)V

    goto :goto_1

    :cond_1
    new-instance v5, La/a/a/l/a/b;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v5, v6, v4}, La/a/a/l/a/b;-><init>(II)V

    invoke-static {v2, p1, v5}, La/a/a/d/a/f;->a(La/a/a/l/a/b;La/a/a/l/a/b;La/a/a/l/a/b;)La/a/a/l/a/b;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static synthetic b(La/a/a/d/a/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    iget-object v0, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string v1, "onConfigured: Could not create a capture request."

    invoke-static {v0, v1, p1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v0, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v1, "Could not create a repeating capture request."

    invoke-interface {p1, v0, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-object p1, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v0, "setRepeatingRequest: no camera or capture session"

    invoke-static {p1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(La/a/a/d/a/h;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static synthetic d(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    return-object p0
.end method

.method public static synthetic e(La/a/a/d/a/h;)F
    .locals 0

    iget p0, p0, La/a/a/d/a/h;->f:F

    return p0
.end method

.method public static synthetic f(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public static synthetic g(La/a/a/d/a/h;)F
    .locals 0

    iget p0, p0, La/a/a/d/a/h;->g:F

    return p0
.end method

.method public static synthetic h(La/a/a/d/a/h;)Lcom/wikitude/common/camera/CameraSettings$TorchMode;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->e:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    return-object p0
.end method

.method public static synthetic i(La/a/a/d/a/h;)Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->n:Landroid/media/ImageReader;

    return-object p0
.end method

.method public static synthetic j(La/a/a/d/a/h;)La/a/a/l/a/b;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->q:La/a/a/l/a/b;

    return-object p0
.end method

.method public static synthetic k(La/a/a/d/a/h;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->t:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method public static synthetic l(La/a/a/d/a/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic m(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->s:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method public static synthetic n(La/a/a/d/a/h;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "setRepeatingRequest: no requestBuilder available"

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/d/a/h;->b(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public static synthetic o(La/a/a/d/a/h;)La/a/a/d/a/b;
    .locals 0

    iget-object p0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    return-object p0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startBackgroundThread: background thread is already running"

    invoke-static {v0, v1}, La/a/a/e/a/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v3, "stopBackgroundThread: interruption while safely stopping the thread"

    invoke-static {v2, v3, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    goto :goto_2

    :goto_1
    iput-object v0, p0, La/a/a/d/a/h;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    throw v1

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopBackgroundThread: trying to stop non-existing thread"

    invoke-static {v0, v1}, La/a/a/e/a/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a(F)Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_6

    iget-object v2, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, La/a/a/d/a/f;->a(ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, La/a/a/d/a/h;->f:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v2, :cond_2

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    iput p1, p0, La/a/a/d/a/h;->f:F

    sub-float/2addr v3, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr v3, p1

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    :cond_4
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_1
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setManualFocusDistance is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setManualFocusDistance is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;
    .locals 6

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_4

    iget-object v2, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-eq v0, v4, :cond_2

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setFocusPointOfInterest is only supported with focus mode ONCE."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-direct {p0, v0}, La/a/a/d/a/h;->a(Landroid/hardware/camera2/CaptureRequest;)V

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    iget v0, p0, La/a/a/d/a/h;->g:F

    invoke-static {p1, v2, v0}, La/a/a/d/a/f;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v2, 0x3e8

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v1, v0, v4

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-direct {p0, p1}, La/a/a/d/a/h;->a(Landroid/hardware/camera2/CaptureRequest;)V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setFocusPointOfInterest is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setFocusPointOfInterest is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 4

    invoke-virtual {p0, p1}, La/a/a/d/a/h;->b(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "Cannot set unsupported focus mode."

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    iput-object p1, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 4

    invoke-virtual {p0, p1}, La/a/a/d/a/h;->b(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "Cannot set unsupported torch mode."

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0}, La/a/a/e/a/a;->a(Ljava/lang/Object;)V

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->ON:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iput-object p1, p0, La/a/a/d/a/h;->e:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/wikitude/common/camera/internal/AndroidCamera;
    .locals 1

    iget-object v0, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    return-object v0
.end method

.method public a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V
    .locals 1

    iget-object v0, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraFocusMode()Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object p1

    iput-object p1, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    iget-object p1, p0, La/a/a/d/a/h;->j:La/a/a/d/a/h$d;

    sget-object v0, La/a/a/d/a/h$d;->a:La/a/a/d/a/h$d;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, La/a/a/d/a/h;->f()V

    invoke-virtual {p0}, La/a/a/d/a/h;->b()V

    :cond_0
    return-void
.end method

.method public b(F)Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, La/a/a/d/a/h;->c(F)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v3, "Cannot set unsupported zoom factor."

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, La/a/a/d/a/h;->m()Lcom/wikitude/common/CallValue;

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

    const-string v3, "Unable to set the zoom factor since the max zoom factor can not be determined."

    invoke-direct {p1, v2, v1, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    invoke-static {v2, v0, p1}, La/a/a/d/a/f;->a(Landroid/graphics/Rect;FF)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iput p1, p0, La/a/a/d/a/h;->g:F

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v1, p0, La/a/a/d/a/h;->q:La/a/a/l/a/b;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    invoke-static {v0, v1, p1}, La/a/a/d/a/f;->a(Landroid/hardware/camera2/CameraCharacteristics;La/a/a/l/a/b;F)F

    move-result p1

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    invoke-interface {v0, p1}, La/a/a/d/a/b;->a(F)V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v2, "Unable to set the zoom factor since the camera sizes could not be determined."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setZoomFactor is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_3

    iget-object v2, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, La/a/a/d/a/h;->g:F

    invoke-static {p1, v2, v0}, La/a/a/d/a/f;->a(Landroid/graphics/PointF;Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    new-array v0, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v2, 0x3e8

    invoke-direct {v1, p1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, La/a/a/d/a/h;->n()V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setExposurePointOfInterest is not supported on this device."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v2, "setExposurePointOfInterest is not available when the camera is not started."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 3

    iget-object p1, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v0, "com.wikitude.camera.android"

    if-eqz p1, :cond_3

    iget-object v1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string/jumbo v2, "setFocusMode is not supported on this device because the device as a fixed lens position."

    invoke-direct {p1, v1, v0, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "isFocusModeSupported is not available when the camera is not started."

    invoke-direct {p1, v1, v0, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 3

    iget-object p1, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v0, "com.wikitude.camera.android"

    if-eqz p1, :cond_3

    iget-object v1, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string/jumbo v2, "torch mode is not supported on this device."

    invoke-direct {p1, v1, v0, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "isTorchModeSupported is not available when the camera is not started."

    invoke-direct {p1, v1, v0, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 5

    const-string/jumbo v0, "updateCameraFieldOfView "

    iget-object v1, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    if-nez v1, :cond_0

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startCamera: No active camera set."

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-interface {v0, v2, v1}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_1

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startCamera: Could not get CameraManager."

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, "Could not get CameraManager."

    invoke-interface {v0, v1, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, La/a/a/d/a/h;->o()V

    iget-object v1, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    if-nez v1, :cond_2

    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "startCamera: Background handler is undefined."

    invoke-static {v0, v1}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, "Background handler is undefined."

    invoke-interface {v0, v1, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {v1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-direct {p0, v2}, La/a/a/d/a/h;->b(Lcom/wikitude/common/camera/internal/AndroidCamera;)La/a/a/l/a/b;

    move-result-object v2

    iput-object v2, p0, La/a/a/d/a/h;->q:La/a/a/l/a/b;

    iget-object v3, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    invoke-virtual {v2}, La/a/a/l/a/b;->b()I

    move-result v2

    iget-object v4, p0, La/a/a/d/a/h;->q:La/a/a/l/a/b;

    invoke-virtual {v4}, La/a/a/l/a/b;->a()I

    move-result v4

    invoke-interface {v3, v2, v4}, La/a/a/d/a/b;->a(II)V

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, La/a/a/d/a/h;->q:La/a/a/l/a/b;

    invoke-static {v2, v3}, La/a/a/d/a/f;->a(Landroid/hardware/camera2/CameraCharacteristics;La/a/a/l/a/b;)F

    move-result v2

    iget-object v3, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    invoke-interface {v3, v2}, La/a/a/d/a/b;->a(F)V

    iget-object v3, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    iget-object v2, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {v2}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraPosition()Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    move-result-object v2

    invoke-interface {v0, v2}, La/a/a/d/a/b;->a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;)V

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v2, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, La/a/a/d/a/b;->b(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "startCamera: Could not get the camera orientation."

    invoke-static {v0, v2}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v3, "Could not get the camera orientation. Default orientation is being used."

    invoke-interface {v0, v2, v3}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/d/a/h;->p:Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-virtual {v0}, Lcom/wikitude/common/camera/internal/AndroidCamera;->getCameraPosition()Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    move-result-object v0

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->FRONT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    const/16 v2, 0x10e

    invoke-interface {v0, v2}, La/a/a/d/a/b;->b(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    const/16 v2, 0x5a

    invoke-interface {v0, v2}, La/a/a/d/a/b;->b(I)V

    :goto_0
    sget-object v0, La/a/a/d/a/h$d;->a:La/a/a/d/a/h$d;

    iput-object v0, p0, La/a/a/d/a/h;->j:La/a/a/d/a/h$d;

    iget-object v0, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, La/a/a/d/a/h;->r:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, La/a/a/d/a/h;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "startCamera: Could not access the camera."

    invoke-static {v1, v2, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    sget-object v1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    const-string v2, "Could not access the camera."

    invoke-interface {v0, v1, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public c(F)Lcom/wikitude/common/CallStatus;
    .locals 5

    invoke-virtual {p0}, La/a/a/d/a/h;->m()Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    if-nez v1, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    const-string v3, "Unable to determine if zoom factor is supported since the max zoom factor can not be determined."

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    :goto_0
    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_3

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p1}, La/a/a/e/a/a;->a(Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_2

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string/jumbo v1, "setZoomFactor is not supported on this device."

    invoke-direct {p1, v0, v2, v1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

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

    invoke-direct {p1, v1, v2, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, La/a/a/d/a/h;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/wikitude/common/CallValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/util/List<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "Could not get CameraManager."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    iget-object v6, p0, La/a/a/d/a/h;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->BACK:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->FRONT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->DEFAULT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "Unable to get camera positions."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_3

    iget-object v2, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string/jumbo v3, "setFocusPointOfInterest is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "isFocusPointOfInterestSupported is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public f()V
    .locals 4

    sget-object v0, La/a/a/d/a/h$d;->b:La/a/a/d/a/h$d;

    iput-object v0, p0, La/a/a/d/a/h;->j:La/a/a/d/a/h$d;

    iget-object v0, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    const-string v1, "doStop:"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v3, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    invoke-static {v3, v1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v2, p0, La/a/a/d/a/h;->l:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v2, p0, La/a/a/d/a/h;->k:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v0, p0, La/a/a/d/a/h;->n:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v3, p0, La/a/a/d/a/h;->a:Ljava/lang/String;

    invoke-static {v3, v1, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-object v2, p0, La/a/a/d/a/h;->n:Landroid/media/ImageReader;

    :cond_2
    iget-object v0, p0, La/a/a/d/a/h;->c:La/a/a/d/a/b;

    invoke-interface {v0}, La/a/a/d/a/b;->b()V

    invoke-direct {p0}, La/a/a/d/a/h;->p()V

    return-void
.end method

.method public g()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget v0, p0, La/a/a/d/a/h;->f:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/wikitude/common/CallValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/util/List<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v1, :cond_0

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
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v1, :cond_4

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget v4, v1, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
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

    iget v0, p0, La/a/a/d/a/h;->g:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-eqz v0, :cond_3

    iget-object v2, p0, La/a/a/d/a/h;->o:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string/jumbo v3, "setExposurePointOfInterest is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "isExposurePointOfInterestSupported is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public k()Lcom/wikitude/common/CallStatus;
    .locals 4

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "isManualFocusSupported is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2, v0}, La/a/a/d/a/f;->a(ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string/jumbo v3, "setManualFocusDistance is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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

    iget-object v0, p0, La/a/a/d/a/h;->e:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/wikitude/common/CallValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/h;->m:Landroid/hardware/camera2/CameraCharacteristics;

    const-string v1, "com.wikitude.camera.android"

    if-nez v0, :cond_0

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "getMaximumZoomFactor is not available when the camera is not started."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "getMaximumZoomFactor is not supported on this device."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method
