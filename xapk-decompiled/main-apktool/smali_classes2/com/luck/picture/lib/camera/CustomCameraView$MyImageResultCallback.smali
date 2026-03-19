.class Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;
.super Ljava/lang/Object;
.source "CustomCameraView.java"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/camera/CustomCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyImageResultCallback"
.end annotation


# instance fields
.field private final mCameraListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/camera/listener/CameraListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureLayoutReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/camera/view/CaptureLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageCallbackListenerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mImagePreviewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/widget/ImageView;Lcom/luck/picture/lib/camera/view/CaptureLayout;Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;Lcom/luck/picture/lib/camera/listener/CameraListener;)V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mFileReference:Ljava/lang/ref/WeakReference;

    .line 439
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImagePreviewReference:Ljava/lang/ref/WeakReference;

    .line 440
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    .line 441
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImageCallbackListenerReference:Ljava/lang/ref/WeakReference;

    .line 442
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCameraListenerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/camera/view/CaptureLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setButtonCaptureEnabled(Z)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCameraListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCameraListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/camera/listener/CameraListener;

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getImageCaptureError()I

    move-result v1

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/luck/picture/lib/camera/listener/CameraListener;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 2

    .line 447
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/camera/view/CaptureLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setButtonCaptureEnabled(Z)V

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImageCallbackListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mFileReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImagePreviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImageCallbackListenerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mFileReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImagePreviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {p1, v0, v1}, Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;->onLoadImage(Ljava/io/File;Landroid/widget/ImageView;)V

    .line 453
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImagePreviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 454
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mImagePreviewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 457
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;->mCaptureLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->startTypeBtnAnimator()V

    :cond_3
    return-void
.end method
