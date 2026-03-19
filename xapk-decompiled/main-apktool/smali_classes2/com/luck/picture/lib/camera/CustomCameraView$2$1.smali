.class Lcom/luck/picture/lib/camera/CustomCameraView$2$1;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camera/CustomCameraView$2;->recordStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camera/CustomCameraView$2;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onVideoSaved(Landroidx/camera/core/VideoCapture$OutputFileResults;)V
    .locals 4

    .line 194
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoMinSecond:I

    if-gtz p1, :cond_0

    const-wide/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoMinSecond:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 195
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1400(Lcom/luck/picture/lib/camera/CustomCameraView;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1500(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/view/PreviewView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/camera/view/PreviewView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1500(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1700(Lcom/luck/picture/lib/camera/CustomCameraView;Ljava/io/File;)V

    goto :goto_1

    .line 203
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1500(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$2;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_1
    return-void
.end method
