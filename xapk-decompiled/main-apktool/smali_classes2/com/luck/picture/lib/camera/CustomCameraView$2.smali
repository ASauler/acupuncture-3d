.class Lcom/luck/picture/lib/camera/CustomCameraView$2;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Lcom/luck/picture/lib/camera/listener/CaptureListener;


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

    .line 162
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEnd(J)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0, p1, p2}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1402(Lcom/luck/picture/lib/camera/CustomCameraView;J)J

    .line 229
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/VideoCapture;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    return-void
.end method

.method public recordError()V
    .locals 4

    .line 239
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v0

    const-string v1, "An unknown error"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public recordShort(J)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0, p1, p2}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1402(Lcom/luck/picture/lib/camera/CustomCameraView;J)J

    .line 219
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$700(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$500(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/view/CaptureLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->resetCaptureLayout()V

    .line 222
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$500(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/view/CaptureLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/luck/picture/lib/R$string;->picture_recording_time_is_short:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setTextWithAnimation(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/VideoCapture;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    return-void
.end method

.method public recordStart()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/VideoCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1200(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$302(Lcom/luck/picture/lib/camera/CustomCameraView;I)I

    .line 187
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->createVideoFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$402(Lcom/luck/picture/lib/camera/CustomCameraView;Ljava/io/File;)Ljava/io/File;

    .line 188
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$700(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    new-instance v0, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/VideoCapture$OutputFileOptions;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/VideoCapture;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v2}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$2$1;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView$2;)V

    invoke-virtual {v1, v0, v2, v3}, Landroidx/camera/core/VideoCapture;->startRecording(Landroidx/camera/core/VideoCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    return-void
.end method

.method public recordZoom(F)V
    .locals 0

    return-void
.end method

.method public takePictures()V
    .locals 10

    .line 165
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$000(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/ImageCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/ProcessCameraProvider;->isBound(Landroidx/camera/core/UseCase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$200(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$302(Lcom/luck/picture/lib/camera/CustomCameraView;I)I

    .line 169
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->createImageFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$402(Lcom/luck/picture/lib/camera/CustomCameraView;Ljava/io/File;)Ljava/io/File;

    .line 170
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$500(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/view/CaptureLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setButtonCaptureEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$700(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    new-instance v0, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    .line 174
    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;-><init>(Ljava/io/File;)V

    .line 175
    invoke-virtual {v0}, Landroidx/camera/core/ImageCapture$OutputFileOptions$Builder;->build()Landroidx/camera/core/ImageCapture$OutputFileOptions;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$000(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/ImageCapture;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v2}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v9, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;

    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    .line 177
    invoke-static {v3}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;

    move-result-object v4

    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    .line 178
    invoke-static {v3}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v3}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$500(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/view/CaptureLayout;

    move-result-object v6

    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v3}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$900(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;

    move-result-object v7

    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView$2;->this$0:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-static {v3}, Lcom/luck/picture/lib/camera/CustomCameraView;->access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;-><init>(Ljava/io/File;Landroid/widget/ImageView;Lcom/luck/picture/lib/camera/view/CaptureLayout;Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;Lcom/luck/picture/lib/camera/listener/CameraListener;)V

    .line 176
    invoke-virtual {v1, v0, v2, v9}, Landroidx/camera/core/ImageCapture;->takePicture(Landroidx/camera/core/ImageCapture$OutputFileOptions;Ljava/util/concurrent/Executor;Landroidx/camera/core/ImageCapture$OnImageSavedCallback;)V

    return-void
.end method
