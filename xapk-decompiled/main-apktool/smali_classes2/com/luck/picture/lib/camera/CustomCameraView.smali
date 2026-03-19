.class public Lcom/luck/picture/lib/camera/CustomCameraView;
.super Landroid/widget/RelativeLayout;
.source "CustomCameraView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/camera/CustomCameraView$MyImageResultCallback;
    }
.end annotation


# static fields
.field public static final BUTTON_STATE_BOTH:I = 0x103

.field public static final BUTTON_STATE_ONLY_CAPTURE:I = 0x101

.field public static final BUTTON_STATE_ONLY_RECORDER:I = 0x102

.field public static final DEFAULT_MIN_RECORD_VIDEO:I = 0x5dc

.field private static final TYPE_FLASH_AUTO:I = 0x21

.field private static final TYPE_FLASH_OFF:I = 0x23

.field private static final TYPE_FLASH_ON:I = 0x22


# instance fields
.field private lensFacing:I

.field private mCameraListener:Lcom/luck/picture/lib/camera/listener/CameraListener;

.field private mCameraPreviewView:Landroidx/camera/view/PreviewView;

.field private mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

.field private mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

.field private mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field private mFlashLamp:Landroid/widget/ImageView;

.field private mImageCallbackListener:Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;

.field private mImageCapture:Landroidx/camera/core/ImageCapture;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnClickListener:Lcom/luck/picture/lib/camera/listener/ClickListener;

.field private mOutMediaFile:Ljava/io/File;

.field private mSwitchCamera:Landroid/widget/ImageView;

.field private mTextureView:Landroid/view/TextureView;

.field private mVideoCapture:Landroidx/camera/core/VideoCapture;

.field private recordTime:J

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private type_flash:I

.field private useCameraCases:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x23

    .line 89
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    const/4 p1, 0x1

    .line 98
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->useCameraCases:I

    .line 102
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->recordTime:J

    .line 472
    new-instance p1, Lcom/luck/picture/lib/camera/CustomCameraView$6;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$6;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 124
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x23

    .line 89
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    const/4 p1, 0x1

    .line 98
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->useCameraCases:I

    .line 102
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    const-wide/16 p1, 0x0

    .line 115
    iput-wide p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->recordTime:J

    .line 472
    new-instance p1, Lcom/luck/picture/lib/camera/CustomCameraView$6;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$6;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 129
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x23

    .line 89
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    const/4 p1, 0x1

    .line 98
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->useCameraCases:I

    .line 102
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    const-wide/16 p1, 0x0

    .line 115
    iput-wide p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->recordTime:J

    .line 472
    new-instance p1, Lcom/luck/picture/lib/camera/CustomCameraView$6;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$6;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 134
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/ImageCapture;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    return-object p0
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/CameraListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraListener:Lcom/luck/picture/lib/camera/listener/CameraListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/luck/picture/lib/camera/CustomCameraView;Landroidx/camera/lifecycle/ProcessCameraProvider;)Landroidx/camera/lifecycle/ProcessCameraProvider;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/core/VideoCapture;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mVideoCapture:Landroidx/camera/core/VideoCapture;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraVideoUseCases()V

    return-void
.end method

.method static synthetic access$1300(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/config/PictureSelectionConfig;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/camera/CustomCameraView;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->recordTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/luck/picture/lib/camera/CustomCameraView;J)J
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->recordTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroidx/camera/view/PreviewView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraPreviewView:Landroidx/camera/view/PreviewView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/camera/CustomCameraView;Ljava/io/File;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->startVideoPlay(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/view/TextureView$SurfaceTextureListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/luck/picture/lib/camera/CustomCameraView;)Z
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->isImageCaptureEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraImageUseCases()V

    return-void
.end method

.method static synthetic access$2000(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->stopVideoPlay()V

    return-void
.end method

.method static synthetic access$2100(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/ClickListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOnClickListener:Lcom/luck/picture/lib/camera/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/camera/CustomCameraView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraUseCases()V

    return-void
.end method

.method static synthetic access$2300(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/luck/picture/lib/camera/CustomCameraView;FF)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/camera/CustomCameraView;->updateVideoViewSize(FF)V

    return-void
.end method

.method static synthetic access$302(Lcom/luck/picture/lib/camera/CustomCameraView;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->useCameraCases:I

    return p1
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camera/CustomCameraView;)Ljava/io/File;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOutMediaFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$402(Lcom/luck/picture/lib/camera/CustomCameraView;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOutMediaFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/view/CaptureLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/camera/CustomCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImagePreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/camera/CustomCameraView;)Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCallbackListener:Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;

    return-object p0
.end method

.method private aspectRatio(II)I
    .locals 4

    .line 414
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/2addr v0, p1

    int-to-double p1, v0

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v0, p1, v0

    .line 417
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    cmpg-double p1, v0, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private bindCameraImageUseCases()V
    .locals 8

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->aspectRatio(II)I

    move-result v0

    .line 360
    new-instance v1, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v1}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    invoke-virtual {v1, v2}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v1

    .line 362
    new-instance v2, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v2}, Landroidx/camera/core/Preview$Builder;-><init>()V

    .line 363
    invoke-virtual {v2, v0}, Landroidx/camera/core/Preview$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/Preview$Builder;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v2

    .line 367
    new-instance v3, Landroidx/camera/core/ImageCapture$Builder;

    invoke-direct {v3}, Landroidx/camera/core/ImageCapture$Builder;-><init>()V

    const/4 v4, 0x1

    .line 368
    invoke-virtual {v3, v4}, Landroidx/camera/core/ImageCapture$Builder;->setCaptureMode(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v3

    .line 369
    invoke-virtual {v3, v0}, Landroidx/camera/core/ImageCapture$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/ImageCapture$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Landroidx/camera/core/ImageCapture$Builder;->build()Landroidx/camera/core/ImageCapture;

    move-result-object v3

    iput-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    .line 373
    new-instance v3, Landroidx/camera/core/ImageAnalysis$Builder;

    invoke-direct {v3}, Landroidx/camera/core/ImageAnalysis$Builder;-><init>()V

    .line 374
    invoke-virtual {v3, v0}, Landroidx/camera/core/ImageAnalysis$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/ImageAnalysis$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroidx/camera/core/ImageAnalysis$Builder;->build()Landroidx/camera/core/ImageAnalysis;

    move-result-object v0

    .line 378
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v3}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 381
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/camera/core/UseCase;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    iget-object v7, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    aput-object v7, v6, v4

    const/4 v4, 0x2

    aput-object v0, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 383
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V

    .line 385
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->setFlashMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private bindCameraUseCases()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    const/16 v1, 0x103

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraVideoUseCases()V

    goto :goto_1

    .line 348
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraImageUseCases()V

    :goto_1
    return-void
.end method

.method private bindCameraVideoUseCases()V
    .locals 7

    .line 396
    :try_start_0
    new-instance v0, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {v0}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    iget v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    invoke-virtual {v0, v1}, Landroidx/camera/core/CameraSelector$Builder;->requireLensFacing(I)Landroidx/camera/core/CameraSelector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/CameraSelector$Builder;->build()Landroidx/camera/core/CameraSelector;

    move-result-object v0

    .line 398
    new-instance v1, Landroidx/camera/core/Preview$Builder;

    invoke-direct {v1}, Landroidx/camera/core/Preview$Builder;-><init>()V

    invoke-virtual {v1}, Landroidx/camera/core/Preview$Builder;->build()Landroidx/camera/core/Preview;

    move-result-object v1

    .line 400
    new-instance v2, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v2}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    invoke-virtual {v2}, Landroidx/camera/core/VideoCapture$Builder;->build()Landroidx/camera/core/VideoCapture;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mVideoCapture:Landroidx/camera/core/VideoCapture;

    .line 402
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {v2}, Landroidx/camera/lifecycle/ProcessCameraProvider;->unbindAll()V

    .line 405
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraProvider:Landroidx/camera/lifecycle/ProcessCameraProvider;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/LifecycleOwner;

    const/4 v4, 0x2

    new-array v4, v4, [Landroidx/camera/core/UseCase;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v5, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mVideoCapture:Landroidx/camera/core/VideoCapture;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroidx/camera/lifecycle/ProcessCameraProvider;->bindToLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/camera/core/CameraSelector;[Landroidx/camera/core/UseCase;)Landroidx/camera/core/Camera;

    .line 407
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0}, Landroidx/camera/view/PreviewView;->getSurfaceProvider()Landroidx/camera/core/Preview$SurfaceProvider;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/camera/core/Preview;->setSurfaceProvider(Landroidx/camera/core/Preview$SurfaceProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getOutUri(I)Landroid/net/Uri;
    .locals 2

    .line 583
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 585
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    :goto_1
    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 587
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    :goto_2
    invoke-static {p1, v0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private initView()V
    .locals 2

    .line 138
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_camera_view:I

    invoke-static {v0, v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 139
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_black:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->setBackgroundColor(I)V

    .line 140
    sget v0, Lcom/luck/picture/lib/R$id;->cameraPreviewView:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/PreviewView;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraPreviewView:Landroidx/camera/view/PreviewView;

    .line 141
    sget v0, Lcom/luck/picture/lib/R$id;->video_play_preview:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mTextureView:Landroid/view/TextureView;

    .line 142
    sget v0, Lcom/luck/picture/lib/R$id;->image_preview:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImagePreview:Landroid/widget/ImageView;

    .line 143
    sget v0, Lcom/luck/picture/lib/R$id;->image_switch:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/luck/picture/lib/R$id;->image_flash:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    .line 145
    sget v0, Lcom/luck/picture/lib/R$id;->capture_layout:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/camera/view/CaptureLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    .line 146
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_ic_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$$ExternalSyntheticLambda0;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setDuration(I)V

    .line 155
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$1;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$2;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setCaptureListener(Lcom/luck/picture/lib/camera/listener/CaptureListener;)V

    .line 245
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$3;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$3;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setTypeListener(Lcom/luck/picture/lib/camera/listener/TypeListener;)V

    .line 311
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$4;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setLeftClickListener(Lcom/luck/picture/lib/camera/listener/ClickListener;)V

    return-void
.end method

.method private isImageCaptureEnabled()Z
    .locals 2

    .line 119
    iget v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->useCameraCases:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private resetState()V
    .locals 3

    .line 670
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->isImageCaptureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImagePreview:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mVideoCapture:Landroidx/camera/core/VideoCapture;

    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture;->stopRecording()V

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOutMediaFile:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOutMediaFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 677
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->deleteCamera(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 680
    :cond_1
    new-instance v0, Lcom/luck/picture/lib/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOutMediaFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 684
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraPreviewView:Landroidx/camera/view/PreviewView;

    invoke-virtual {v0, v1}, Landroidx/camera/view/PreviewView;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->resetCaptureLayout()V

    return-void
.end method

.method private setFlashMode()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_ic_flash_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    goto :goto_0

    .line 639
    :pswitch_1
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_ic_flash_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 640
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_ic_flash_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 636
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCapture:Landroidx/camera/core/ImageCapture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/core/ImageCapture;->setFlashMode(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startVideoPlay(Ljava/io/File;)V
    .locals 2

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    .line 700
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 702
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 703
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 704
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setVideoScalingMode(I)V

    .line 705
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 706
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$7;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$7;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 714
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$8;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/CustomCameraView$8;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 722
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 723
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 725
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private stopVideoPlay()V
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 753
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 754
    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void
.end method

.method private updateVideoViewSize(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float/2addr p2, p1

    .line 732
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 733
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 734
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 735
    iget-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createImageFile()Ljava/io/File;
    .locals 6

    .line 494
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    const-string v1, ".jpg"

    if-eqz v0, :cond_6

    .line 495
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 502
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "."

    const-string v5, "image/"

    if-eqz v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMG_"

    invoke-static {v3}, Lcom/luck/picture/lib/tools/DateUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 516
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getOutUri(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 519
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    :cond_5
    return-object v1

    .line 524
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 525
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isSuffixOfImage(Ljava/lang/String;)Z

    move-result v0

    .line 526
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/StringUtils;->renameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/tools/StringUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, ""

    .line 529
    :goto_3
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    .line 530
    :goto_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 531
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    .line 530
    invoke-static {v2, v3, v0, v1, v4}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public createVideoFile()Ljava/io/File;
    .locals 6

    .line 538
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    const-string v1, ".mp4"

    if-eqz v0, :cond_6

    .line 539
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getVideoDiskCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 540
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 546
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "."

    const-string v5, "video/"

    if-eqz v3, :cond_1

    .line 547
    iget-object v3, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VID_"

    invoke-static {v3}, Lcom/luck/picture/lib/tools/DateUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 560
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getOutUri(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 563
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    :cond_5
    return-object v1

    .line 568
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 569
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isSuffixOfImage(Ljava/lang/String;)Z

    move-result v0

    .line 570
    iget-object v2, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v0, :cond_7

    iget-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 571
    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/StringUtils;->renameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    :goto_2
    iput-object v0, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/tools/StringUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    const-string v0, ""

    .line 574
    :goto_3
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    .line 575
    :goto_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 576
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    .line 575
    invoke-static {v2, v3, v0, v1, v4}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 577
    iget-object v1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureLayout()Lcom/luck/picture/lib/camera/view/CaptureLayout;
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    return-object v0
.end method

.method public initCamera()V
    .locals 3

    .line 325
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 326
    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraAroundState:Z

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    .line 327
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/lifecycle/ProcessCameraProvider;->getInstance(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/luck/picture/lib/camera/CustomCameraView$5;

    invoke-direct {v1, p0, v0}, Lcom/luck/picture/lib/camera/CustomCameraView$5;-><init>(Lcom/luck/picture/lib/camera/CustomCameraView;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 339
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 329
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$0$com-luck-picture-lib-camera-CustomCameraView(Landroid/view/View;)V
    .locals 1

    .line 148
    iget p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    const/16 v0, 0x23

    if-le p1, v0, :cond_0

    const/16 p1, 0x21

    .line 150
    iput p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->type_flash:I

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->setFlashMode()V

    return-void
.end method

.method public onCancelMedia()V
    .locals 0

    .line 743
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->stopVideoPlay()V

    .line 744
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->resetState()V

    return-void
.end method

.method public setCameraListener(Lcom/luck/picture/lib/camera/listener/CameraListener;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCameraListener:Lcom/luck/picture/lib/camera/listener/CameraListener;

    return-void
.end method

.method public setCaptureLoadingColor(I)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setCaptureLoadingColor(I)V

    return-void
.end method

.method public setImageCallbackListener(Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mImageCallbackListener:Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;

    return-void
.end method

.method public setOnClickListener(Lcom/luck/picture/lib/camera/listener/ClickListener;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mOnClickListener:Lcom/luck/picture/lib/camera/listener/ClickListener;

    return-void
.end method

.method public setRecordVideoMaxTime(I)V
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setDuration(I)V

    return-void
.end method

.method public setRecordVideoMinTime(I)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->mCaptureLayout:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setMinDuration(I)V

    return-void
.end method

.method public toggleCamera()V
    .locals 1

    .line 622
    iget v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/luck/picture/lib/camera/CustomCameraView;->lensFacing:I

    .line 623
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/CustomCameraView;->bindCameraUseCases()V

    return-void
.end method
