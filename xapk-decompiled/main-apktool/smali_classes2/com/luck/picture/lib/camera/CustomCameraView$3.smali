.class Lcom/luck/picture/lib/camera/CustomCameraView$3;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camera/listener/TypeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camera/CustomCameraView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camera/CustomCameraView;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->onCancelMedia()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 257
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraCopyExternalFile:Z

    if-eqz v0, :cond_1

    .line 259
    new-instance v0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView$3;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    goto/16 :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v2}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1900(Lcom/luck/picture/lib/camera/CustomCameraView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 287
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onPictureSuccess(Ljava/io/File;)V

    goto/16 :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$2000(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    .line 291
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onRecordSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 297
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1900(Lcom/luck/picture/lib/camera/CustomCameraView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onPictureSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$2000(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    .line 304
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 305
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onRecordSuccess(Ljava/io/File;)V

    :cond_7
    :goto_0
    return-void
.end method
