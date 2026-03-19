.class Lcn/voidar/engine/e$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/e;


# direct methods
.method constructor <init>(Lcn/voidar/engine/e;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    iget-object v0, v0, Lcn/voidar/engine/e;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/voidar/engine/e;->a(Lcn/voidar/engine/e;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    iget-object p2, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    iget-object p2, p2, Lcn/voidar/engine/e;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/voidar/engine/e;->a(Lcn/voidar/engine/e;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    iget-object v0, v0, Lcn/voidar/engine/e;->i:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    invoke-static {v0, p1}, Lcn/voidar/engine/e;->a(Lcn/voidar/engine/e;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object p1, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    invoke-static {p1}, Lcn/voidar/engine/e;->a(Lcn/voidar/engine/e;)V

    iget-object p1, p0, Lcn/voidar/engine/e$1;->a:Lcn/voidar/engine/e;

    invoke-static {p1}, Lcn/voidar/engine/e;->b(Lcn/voidar/engine/e;)V

    return-void
.end method
