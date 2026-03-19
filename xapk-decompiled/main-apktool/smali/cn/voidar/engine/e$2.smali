.class Lcn/voidar/engine/e$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


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

    iput-object p1, p0, Lcn/voidar/engine/e$2;->a:Lcn/voidar/engine/e;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string v0, "onConfigureFailed"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lcn/voidar/engine/e$2;->a:Lcn/voidar/engine/e;

    invoke-static {v0, p1}, Lcn/voidar/engine/e;->a(Lcn/voidar/engine/e;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p0, Lcn/voidar/engine/e$2;->a:Lcn/voidar/engine/e;

    invoke-static {p1}, Lcn/voidar/engine/e;->c(Lcn/voidar/engine/e;)V

    return-void
.end method
