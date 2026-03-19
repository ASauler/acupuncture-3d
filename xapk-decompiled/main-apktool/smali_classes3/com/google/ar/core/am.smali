.class final synthetic Lcom/google/ar/core/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final b:Landroid/hardware/camera2/CameraCaptureSession;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ar/core/am;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/ar/core/am;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[C)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/google/ar/core/am;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[I)V
    .locals 0

    const/4 p3, 0x4

    iput p3, p0, Lcom/google/ar/core/am;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CameraCaptureSession;[S)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, Lcom/google/ar/core/am;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/google/ar/core/am;->c:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/google/ar/core/an;->d:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onActive(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/google/ar/core/an;->d:I

    .line 1
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onReady(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/google/ar/core/an;->d:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/google/ar/core/an;->d:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/ar/core/am;->a:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iget-object v1, p0, Lcom/google/ar/core/am;->b:Landroid/hardware/camera2/CameraCaptureSession;

    sget v2, Lcom/google/ar/core/an;->d:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
