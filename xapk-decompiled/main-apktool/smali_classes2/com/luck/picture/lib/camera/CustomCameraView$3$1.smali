.class Lcom/luck/picture/lib/camera/CustomCameraView$3$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "CustomCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camera/CustomCameraView$3;->confirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camera/CustomCameraView$3;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object v1, v1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object v2, v2, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v2}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/AndroidQTransformUtils;->copyPathToDCIM(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 1

    .line 268
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    .line 269
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1900(Lcom/luck/picture/lib/camera/CustomCameraView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onPictureSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$2000(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    .line 276
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object p1, p1, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->this$1:Lcom/luck/picture/lib/camera/CustomCameraView$3;

    iget-object v0, v0, Lcom/luck/picture/lib/camera/CustomCameraView$3;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onRecordSuccess(Ljava/io/File;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 259
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/camera/CustomCameraView$3$1;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
