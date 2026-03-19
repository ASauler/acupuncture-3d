.class final Lcom/google/ar/core/an;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SharedCamera.java"


# static fields
.field public static final synthetic d:I


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field final synthetic c:Lcom/google/ar/core/SharedCamera;


# direct methods
.method constructor <init>(Lcom/google/ar/core/SharedCamera;Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    iput-object p2, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActive(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/ar/core/am;

    iget-object v2, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, p1, v3}, Lcom/google/ar/core/am;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1300(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/ar/core/am;

    iget-object v2, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, p1, v3}, Lcom/google/ar/core/am;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$800(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/ar/core/am;

    iget-object v2, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, p1, v3}, Lcom/google/ar/core/am;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[C)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1100(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 1
    invoke-static {v0}, Lcom/google/ar/core/SharedCamera;->access$200(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/ao;

    iget-object v0, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/ar/core/am;

    iget-object v2, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 2
    invoke-direct {v1, v2, p1}, Lcom/google/ar/core/am;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 3
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$900(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->access$200(Lcom/google/ar/core/SharedCamera;)Lcom/google/ar/core/ao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/ar/core/ao;->a()Landroid/hardware/camera2/CameraDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 5
    invoke-static {p1}, Lcom/google/ar/core/SharedCamera;->access$1000(Lcom/google/ar/core/SharedCamera;)V

    :cond_0
    return-void
.end method

.method public final onReady(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/ar/core/am;

    iget-object v2, p0, Lcom/google/ar/core/an;->b:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, p1, v3}, Lcom/google/ar/core/am;-><init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[S)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/google/ar/core/an;->c:Lcom/google/ar/core/SharedCamera;

    .line 2
    invoke-static {v0, p1}, Lcom/google/ar/core/SharedCamera;->access$1200(Lcom/google/ar/core/SharedCamera;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
