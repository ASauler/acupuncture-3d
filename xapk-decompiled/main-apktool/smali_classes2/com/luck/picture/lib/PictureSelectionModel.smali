.class public Lcom/luck/picture/lib/PictureSelectionModel;
.super Ljava/lang/Object;
.source "PictureSelectionModel.java"


# instance fields
.field private final selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field private final selector:Lcom/luck/picture/lib/PictureSelector;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelector;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    .line 59
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getCleanInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 60
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 61
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectionModel;->initCustomCameraFeatures()Lcom/luck/picture/lib/PictureSelectionModel;

    return-void
.end method

.method public constructor <init>(Lcom/luck/picture/lib/PictureSelector;IZ)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    .line 66
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getCleanInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 67
    iput-boolean p3, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    .line 68
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 69
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectionModel;->initCustomCameraFeatures()Lcom/luck/picture/lib/PictureSelectionModel;

    return-void
.end method

.method private initCustomCameraFeatures()Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v1, 0x101

    iput v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v1, 0x102

    iput v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v1, 0x103

    iput v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public basicUCropConfig(Lcom/yalantis/ucrop/UCrop$Options;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uCropOptions:Lcom/yalantis/ucrop/UCrop$Options;

    return-object p0
.end method

.method public bindCustomCameraInterfaceListener(Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    return-object p0
.end method

.method public bindCustomChooseLimitListener(Lcom/luck/picture/lib/listener/OnChooseLimitCallback;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnChooseLimitCallback;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onChooseLimitCallback:Lcom/luck/picture/lib/listener/OnChooseLimitCallback;

    return-object p0
.end method

.method public bindCustomPermissionsObtainListener(Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onPermissionsObtainCallback:Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    return-object p0
.end method

.method public bindCustomPlayVideoCallback(Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureSelectionModel;"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->customVideoPlayCallback:Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;

    return-object p0
.end method

.method public bindCustomPreviewCallback(Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureSelectionModel;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomImagePreviewCallback:Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    return-object p0
.end method

.method public bindPictureSelectorInterfaceListener(Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    return-object p0
.end method

.method public cameraFileName(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    return-object p0
.end method

.method public circleDimmedLayer(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedLayer:Z

    return-object p0
.end method

.method public closeAndroidQChangeVideoWH(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAndroidQChangeVideoWH:Z

    return-object p0
.end method

.method public closeAndroidQChangeWH(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAndroidQChangeWH:Z

    return-object p0
.end method

.method public compress(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    return-object p0
.end method

.method public compressEngine(Lcom/luck/picture/lib/engine/CompressEngine;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 152
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    if-eq v0, p1, :cond_0

    .line 153
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    :cond_0
    return-object p0
.end method

.method public compressFocusAlpha(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->focusAlpha:Z

    return-object p0
.end method

.method public compressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressQuality:I

    return-object p0
.end method

.method public compressSavePath(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public cropCompressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    return-object p0
.end method

.method public cropImageWideHigh(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    .line 814
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    return-object p0
.end method

.method public cropWH(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropWidth:I

    .line 803
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropHeight:I

    return-object p0
.end method

.method public cutCompressFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressFormat:Ljava/lang/String;

    return-object p0
.end method

.method public cutOutQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropCompressQuality:I

    return-object p0
.end method

.method public enableCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    return-object p0
.end method

.method public enablePreviewAudio(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    return-object p0
.end method

.method public externalPictureVideo(Ljava/lang/String;)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    if-eqz v0, :cond_0

    .line 1822
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureSelector;->externalPictureVideo(Ljava/lang/String;)V

    return-void

    .line 1824
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "This PictureSelector is Null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public filterMaxFileSize(J)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMaxFileSize:J

    goto :goto_0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMaxFileSize:J

    :goto_0
    return-object p0
.end method

.method public filterMinFileSize(J)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 3

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-wide p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMinFileSize:J

    goto :goto_0

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const-wide/16 v1, 0x400

    mul-long/2addr p1, v1

    iput-wide p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMinFileSize:J

    :goto_0
    return-object p0
.end method

.method public forResult(I)V
    .locals 4

    .line 1613
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1614
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1615
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v1, :cond_0

    goto :goto_3

    .line 1618
    :cond_0
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v1, :cond_5

    .line 1622
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-eqz v1, :cond_1

    .line 1623
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 1625
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v2, :cond_2

    const-class v2, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-eqz v2, :cond_3

    const-class v2, Lcom/luck/picture/lib/PictureSelectorWeChatStyleActivity;

    goto :goto_0

    :cond_3
    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1630
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    .line 1631
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v2}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1633
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1635
    :cond_4
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1637
    :goto_2
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    .line 1638
    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    sget v1, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 1619
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "api imageEngine is null,Please implement ImageEngine"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public forResult(III)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1652
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1653
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1654
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1657
    :cond_0
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v1, :cond_4

    .line 1660
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v2, :cond_1

    const-class v2, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-eqz v2, :cond_2

    const-class v2, Lcom/luck/picture/lib/PictureSelectorWeChatStyleActivity;

    goto :goto_0

    :cond_2
    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1664
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    .line 1665
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v2}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1667
    invoke-virtual {v2, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1669
    :cond_3
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1671
    :goto_1
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 1658
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "api imageEngine is null,Please implement ImageEngine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public forResult(ILcom/luck/picture/lib/listener/OnResultCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/luck/picture/lib/listener/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1752
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1753
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1754
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v1, :cond_0

    goto :goto_3

    .line 1757
    :cond_0
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v1, :cond_5

    .line 1761
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    sput-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    .line 1762
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    .line 1764
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-eqz p2, :cond_1

    .line 1765
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 1767
    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-eqz v1, :cond_3

    const-class v1, Lcom/luck/picture/lib/PictureSelectorWeChatStyleActivity;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/luck/picture/lib/PictureSelectorActivity;

    :goto_0
    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1772
    :goto_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1774
    invoke-virtual {v1, p2, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1776
    :cond_4
    invoke-virtual {v0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1778
    :goto_2
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    .line 1779
    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    sget p2, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 1758
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "api imageEngine is null,Please implement ImageEngine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public forResult(Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1721
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1722
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    .line 1723
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1726
    :cond_0
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v1, :cond_4

    .line 1730
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-eqz v1, :cond_1

    .line 1731
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 1733
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v2, :cond_2

    const-class v2, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-eqz v2, :cond_3

    const-class v2, Lcom/luck/picture/lib/PictureSelectorWeChatStyleActivity;

    goto :goto_0

    :cond_3
    const-class v2, Lcom/luck/picture/lib/PictureSelectorActivity;

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1738
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    .line 1739
    invoke-virtual {p1, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 1740
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    .line 1741
    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    sget v1, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    .line 1727
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "api imageEngine is null,Please implement ImageEngine"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public forResult(Lcom/luck/picture/lib/listener/OnResultCallbackListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/luck/picture/lib/listener/OnResultCallbackListener<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1682
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1683
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureSelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1684
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v1, :cond_0

    goto :goto_3

    .line 1687
    :cond_0
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v1, :cond_5

    .line 1691
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    .line 1692
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    .line 1694
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-eqz p1, :cond_1

    .line 1695
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 1697
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-eqz v1, :cond_3

    const-class v1, Lcom/luck/picture/lib/PictureSelectorWeChatStyleActivity;

    goto :goto_0

    :cond_3
    const-class v1, Lcom/luck/picture/lib/PictureSelectorActivity;

    :goto_0
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1702
    :goto_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    invoke-virtual {v1}, Lcom/luck/picture/lib/PictureSelector;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1704
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1706
    :cond_4
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1708
    :goto_2
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    .line 1709
    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    sget v1, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 1688
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "api imageEngine is null,Please implement ImageEngine"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public freeStyleCropEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropEnabled:Z

    return-object p0
.end method

.method public freeStyleCropMode(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->freeStyleCropMode:I

    return-object p0
.end method

.method public glideOverride(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideWidth:I

    .line 864
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->overrideHeight:I

    return-object p0
.end method

.method public hideBottomControls(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->hideBottomControls:Z

    return-object p0
.end method

.method public imageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 141
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eq v0, p1, :cond_0

    .line 142
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    :cond_0
    return-object p0
.end method

.method public imageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 716
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, ".png"

    .line 717
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "image/png"

    :cond_1
    const-string v0, ".jpg"

    .line 720
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpeg"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p1, "image/jpeg"

    :cond_3
    const-string v0, ".mp4"

    .line 723
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "video/mp4"

    .line 727
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    return-object p0
.end method

.method public imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    return-object p0
.end method

.method public isAndroidQTransform(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1570
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAndroidQTransform:Z

    return-object p0
.end method

.method public isAutoRotating(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutoRotating:Z

    return-object p0
.end method

.method public isAutoScalePreviewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutoScalePreviewImage:Z

    return-object p0
.end method

.method public isAutomaticTitleRecyclerTop(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutomaticTitleRecyclerTop:Z

    return-object p0
.end method

.method public isBmp(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isBmp:Z

    return-object p0
.end method

.method public isCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    return-object p0
.end method

.method public isCameraAroundState(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1326
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraAroundState:Z

    return-object p0
.end method

.method public isCameraCopyExternalFile(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraCopyExternalFile:Z

    return-object p0
.end method

.method public isCameraRotateImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraRotateImage:Z

    return-object p0
.end method

.method public isChangeStatusBarFontColor(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isChangeStatusBarFontColor:Z

    return-object p0
.end method

.method public isCompress(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    return-object p0
.end method

.method public isCropDragSmoothToCenter(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragCenter:Z

    return-object p0
.end method

.method public isDisplayOriginalSize(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDisplayOriginalSize:Z

    return-object p0
.end method

.method public isDragFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDragFrame:Z

    return-object p0
.end method

.method public isEditorImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isEditorImage:Z

    return-object p0
.end method

.method public isEnableCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    return-object p0
.end method

.method public isEnablePreviewAudio(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreviewAudio:Z

    return-object p0
.end method

.method public isFallbackVersion(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion:Z

    return-object p0
.end method

.method public isFallbackVersion2(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1592
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion2:Z

    return-object p0
.end method

.method public isFallbackVersion3(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion3:Z

    return-object p0
.end method

.method public isGif(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    return-object p0
.end method

.method public isMaxSelectEnabledMask(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isMaxSelectEnabledMask:Z

    return-object p0
.end method

.method public isMultipleRecyclerAnimation(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isMultipleRecyclerAnimation:Z

    return-object p0
.end method

.method public isMultipleSkipCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isMultipleSkipCrop:Z

    return-object p0
.end method

.method public isNotPreviewDownload(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isNotPreviewDownload:Z

    return-object p0
.end method

.method public isOpenClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 1298
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    return-object p0
.end method

.method public isOpenStyleCheckNumMode(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOpenStyleCheckNumMode:Z

    return-object p0
.end method

.method public isOpenStyleNumComplete(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1395
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOpenStyleNumComplete:Z

    return-object p0
.end method

.method public isOriginalImageControl(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 3

    .line 1000
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 1001
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 1002
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-eq v1, v2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    return-object p0
.end method

.method public isPageStrategy(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    return-object p0
.end method

.method public isPageStrategy(ZI)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    .line 651
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 p2, 0x3c

    :cond_0
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pageSize:I

    return-object p0
.end method

.method public isPageStrategy(ZIZ)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    .line 665
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    const/16 p2, 0x3c

    :cond_0
    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pageSize:I

    .line 666
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p3, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFilterInvalidFile:Z

    return-object p0
.end method

.method public isPageStrategy(ZZ)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    .line 690
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFilterInvalidFile:Z

    return-object p0
.end method

.method public isPreviewEggs(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    return-object p0
.end method

.method public isPreviewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    return-object p0
.end method

.method public isPreviewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    return-object p0
.end method

.method public isQuickCapture(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isQuickCapture:Z

    return-object p0
.end method

.method public isReturnEmpty(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->returnEmpty:Z

    return-object p0
.end method

.method public isSingleDirectReturn(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    .line 638
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    return-object p0
.end method

.method public isSyncCover(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSyncCover:Z

    return-object p0
.end method

.method public isUseCustomCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    return-object p0
.end method

.method public isWeChatStyle(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    return-object p0
.end method

.method public isWebp(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWebp:Z

    return-object p0
.end method

.method public isWithVideoImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 533
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAll()I

    move-result v3

    if-ne v1, v3, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWithVideoImage:Z

    return-object p0
.end method

.method public isZoomAnim(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->zoomAnim:Z

    return-object p0
.end method

.method public loadCacheResourcesCallback(Lcom/luck/picture/lib/engine/CacheResourcesEngine;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cacheResourcesEngine:Lcom/luck/picture/lib/engine/CacheResourcesEngine;

    if-eq v0, p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/engine/CacheResourcesEngine;

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cacheResourcesEngine:Lcom/luck/picture/lib/engine/CacheResourcesEngine;

    :cond_0
    return-object p0
.end method

.method public loadImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eq v0, p1, :cond_0

    .line 131
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    :cond_0
    return-object p0
.end method

.method public maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    return-object p0
.end method

.method public maxVideoSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    return-object p0
.end method

.method public minSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    return-object p0
.end method

.method public minVideoSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    return-object p0
.end method

.method public minimumCompressSize(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 894
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    return-object p0
.end method

.method public openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    return-object p0
.end method

.method public openExternalPreview(ILjava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1807
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    if-eqz v0, :cond_0

    .line 1808
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/luck/picture/lib/PictureSelector;->externalPicturePreview(ILjava/lang/String;Ljava/util/List;I)V

    return-void

    .line 1811
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "This PictureSelector is Null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public openExternalPreview(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selector:Lcom/luck/picture/lib/PictureSelector;

    if-eqz v0, :cond_0

    .line 1791
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/luck/picture/lib/PictureSelector;->externalPicturePreview(ILjava/util/List;I)V

    return-void

    .line 1793
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "This PictureSelector is Null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public previewEggs(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    return-object p0
.end method

.method public previewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1231
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    return-object p0
.end method

.method public previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1250
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    return-object p0
.end method

.method public queryFileSize(F)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1136
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    return-object p0
.end method

.method public queryMaxFileSize(F)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1149
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    return-object p0
.end method

.method public varargs queryMimeTypeConditions([Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    if-eqz p1, :cond_0

    .line 1190
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->queryMimeTypeHashSet:Ljava/util/HashSet;

    goto :goto_0

    .line 1193
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->queryMimeTypeHashSet:Ljava/util/HashSet;

    :goto_0
    return-object p0
.end method

.method public querySpecifiedFormatSuffix(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->specifiedFormat:Ljava/lang/String;

    return-object p0
.end method

.method public recordVideoMinSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoMinSecond:I

    return-object p0
.end method

.method public recordVideoSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    return-object p0
.end method

.method public renameCompressFile(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->renameCompressFileName:Ljava/lang/String;

    return-object p0
.end method

.method public renameCropFileName(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->renameCropFileName:Ljava/lang/String;

    return-object p0
.end method

.method public rotateEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->rotateEnabled:Z

    return-object p0
.end method

.method public scaleEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->scaleEnabled:Z

    return-object p0
.end method

.method public selectionData(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureSelectionModel;"
        }
    .end annotation

    .line 1365
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v0, :cond_0

    .line 1366
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public selectionMedia(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)",
            "Lcom/luck/picture/lib/PictureSelectionModel;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v0, :cond_0

    .line 1353
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    goto :goto_0

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    :goto_0
    return-object p0
.end method

.method public selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    return-object p0
.end method

.method public setButtonFeatures(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    return-object p0
.end method

.method public setCameraAudioFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 777
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, ".amr"

    .line 778
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "audio/amr"

    :cond_1
    const-string v0, ".wav"

    .line 781
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "audio/x-wav"

    :cond_2
    const-string v0, ".mp3"

    .line 784
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "audio/mpeg"

    .line 788
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCameraImageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 738
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, ".png"

    .line 739
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "image/png"

    :cond_1
    const-string v0, ".jpg"

    .line 742
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".jpeg"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p1, "image/jpeg"

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCameraVideoFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 757
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, ".mp4"

    .line 758
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "video/mp4"

    :cond_1
    const-string v0, ".avi"

    .line 761
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "video/avi"

    .line 765
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setCaptureLoadingColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->captureLoadingColor:I

    return-object p0
.end method

.method public setCircleDimmedBorderColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedBorderColor:I

    return-object p0
.end method

.method public setCircleDimmedColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedColor:I

    return-object p0
.end method

.method public setCircleStrokeWidth(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleStrokeWidth:I

    return-object p0
.end method

.method public setCropDimmedColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->circleDimmedColor:I

    return-object p0
.end method

.method public setCropStatusBarColorPrimaryDark(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropStatusBarColorPrimaryDark:I

    return-object p0
.end method

.method public setCropTitleBarBackgroundColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropTitleBarBackgroundColor:I

    return-object p0
.end method

.method public setCropTitleColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropTitleColor:I

    return-object p0
.end method

.method public setCustomCameraFeatures(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v0, 0x101

    iput v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 298
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    const/16 v0, 0x102

    iput v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    :goto_0
    return-object p0
.end method

.method public setDownArrowDrawable(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->downResId:I

    return-object p0
.end method

.method public setLanguage(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->language:I

    return-object p0
.end method

.method public setOutputCameraPath(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-object p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPictureCropStyle(Lcom/luck/picture/lib/style/PictureCropParameterStyle;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1508
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropStyle:Lcom/luck/picture/lib/style/PictureCropParameterStyle;

    goto :goto_0

    .line 1510
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/style/PictureCropParameterStyle;->ofDefaultCropStyle()Lcom/luck/picture/lib/style/PictureCropParameterStyle;

    move-result-object p1

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cropStyle:Lcom/luck/picture/lib/style/PictureCropParameterStyle;

    :goto_0
    return-object p0
.end method

.method public setPictureStyle(Lcom/luck/picture/lib/style/PictureParameterStyle;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1525
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    .line 1526
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-nez v0, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->isNewSelectStyle:Z

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    goto :goto_0

    .line 1530
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/style/PictureParameterStyle;->ofDefaultStyle()Lcom/luck/picture/lib/style/PictureParameterStyle;

    move-result-object p1

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setPictureUIStyle(Lcom/luck/picture/lib/style/PictureSelectorUIStyle;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    .line 93
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isNewSelectStyle:Z

    iput-boolean v0, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    :cond_0
    return-object p0
.end method

.method public setPictureWindowAnimationStyle(Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 0

    if-eqz p1, :cond_0

    .line 1543
    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    goto :goto_0

    .line 1545
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->ofDefaultWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object p1

    sput-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    :goto_0
    return-object p0
.end method

.method public setRecyclerAnimationMode(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->animationMode:I

    return-object p0
.end method

.method public setRequestedOrientation(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->requestedOrientation:I

    return-object p0
.end method

.method public setStatusBarColorPrimaryDark(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1433
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pictureStatusBarColor:I

    return-object p0
.end method

.method public setTitleBarBackgroundColor(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1420
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->titleBarBackgroundColor:I

    return-object p0
.end method

.method public setUpArrowDrawable(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1482
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->upResId:I

    return-object p0
.end method

.method public showCropFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropFrame:Z

    return-object p0
.end method

.method public showCropGrid(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->showCropGrid:Z

    return-object p0
.end method

.method public sizeMultiplier(F)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->sizeMultiplier:F

    return-object p0
.end method

.method public synOrAsy(Z)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    return-object p0
.end method

.method public theme(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    return-object p0
.end method

.method public videoMaxSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    return-object p0
.end method

.method public videoMinSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    return-object p0
.end method

.method public videoQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    return-object p0
.end method

.method public withAspectRatio(II)Lcom/luck/picture/lib/PictureSelectionModel;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_x:I

    .line 522
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectionModel;->selectionConfig:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->aspect_ratio_y:I

    return-object p0
.end method
