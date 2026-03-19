.class public Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PictureSelectorCameraEmptyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    return-void
.end method

.method private dispatchCameraHandleResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    .line 369
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 372
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->compressImage(Ljava/util/List;)V

    goto :goto_0

    .line 378
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onResult(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private onTakePhoto()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 110
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->startCamera()V

    goto :goto_0

    .line 113
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setActivitySize()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x33

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 91
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 93
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    .line 94
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 95
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private startCamera()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->startOpenCameraAudio()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->startOpenCameraVideo()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->startOpenCameraImage()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchHandleCamera(Landroid/content/Intent;)V
    .locals 6

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 248
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    iput v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    .line 249
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getAudioPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 255
    :try_start_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createAudioUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/luck/picture/lib/PictureContentResolver;->getContentResolverOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 258
    invoke-static {p0, v0}, Lcom/luck/picture/lib/PictureContentResolver;->getContentResolverOpenOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 259
    invoke-static {v1, v2}, Lcom/luck/picture/lib/tools/PictureFileUtils;->writeFileFromIS(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 260
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 263
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 271
    :cond_3
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 273
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 275
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 276
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    invoke-static {v1, v3}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 279
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 280
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 283
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_2

    .line 284
    :cond_4
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v2

    .line 286
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 287
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 288
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_2

    .line 289
    :cond_5
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/luck/picture/lib/tools/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 293
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_7

    .line 294
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v4

    goto :goto_3

    :cond_7
    const-wide/16 v4, -0x1

    :goto_3
    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 295
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v1, "mediaPath"

    .line 297
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    .line 298
    :goto_4
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 300
    :cond_9
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    invoke-static {v1, v2}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 304
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 305
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraRotateImage:Z

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/luck/picture/lib/tools/BitmapUtils;->rotateImage(Landroid/content/Context;ZLjava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 307
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 308
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_5

    .line 309
    :cond_a
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 310
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 311
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 312
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 313
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_5

    .line 314
    :cond_b
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 315
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 319
    :cond_c
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 320
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 322
    :goto_6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 325
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string p1, "Camera"

    .line 327
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    .line 329
    :goto_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 330
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/MediaUtils;->getCameraFirstBucketId(Landroid/content/Context;)J

    move-result-wide v1

    .line 331
    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    .line 333
    invoke-static {}, Lcom/luck/picture/lib/tools/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setDateAddedTime(J)V

    .line 335
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->dispatchCameraHandleResult(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 337
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz p1, :cond_f

    .line 338
    :try_start_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 339
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion3:Z

    if-eqz p1, :cond_e

    .line 340
    new-instance p1, Lcom/luck/picture/lib/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/luck/picture/lib/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_9

    .line 342
    :cond_e
    new-instance p1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_9

    .line 346
    :cond_f
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion3:Z

    if-eqz p1, :cond_10

    .line 347
    new-instance p1, Lcom/luck/picture/lib/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/luck/picture/lib/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 349
    :cond_10
    new-instance p1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    :goto_8
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 352
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/MediaUtils;->getDCIMLastImageId(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 354
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/tools/MediaUtils;->removeMedia(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 359
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_9
    return-void
.end method

.method public getResourceId()I
    .locals 1

    .line 102
    sget v0, Lcom/luck/picture/lib/R$layout;->picture_empty:I

    return v0
.end method

.method public immersive()V
    .locals 3

    .line 50
    sget v0, Lcom/luck/picture/lib/R$color;->picture_color_transparent:I

    .line 51
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_transparent:I

    .line 52
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->openWhiteStatusBar:Z

    .line 50
    invoke-static {p0, v0, v1, v2}, Lcom/luck/picture/lib/immersive/ImmersiveManage;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/PictureBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x38d

    if-ne p2, v0, :cond_2

    const/16 p2, 0x45

    if-eq p1, p2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->dispatchHandleCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->singleCropHandleResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    .line 153
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz p2, :cond_3

    .line 154
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {p2}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    :cond_3
    if-ne p1, v1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/tools/MediaUtils;->deleteCamera(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->exit()V

    goto :goto_0

    :cond_5
    const/16 p1, 0x60

    if-ne p2, p1, :cond_7

    if-nez p3, :cond_6

    return-void

    :cond_6
    const-string p1, "com.yalantis.ucrop.Error"

    .line 165
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_7

    .line 167
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 414
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->finishAfterTransition()V

    goto :goto_0

    .line 417
    :cond_0
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onBackPressed()V

    .line 419
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->exit()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->exit()V

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-nez v0, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->setActivitySize()V

    if-nez p1, :cond_4

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 66
    invoke-static {p0, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 68
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 70
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-interface {p1, v1, v2, v0}, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;->onCameraClick(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;I)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-interface {p1, v0, v2, v1}, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;->onCameraClick(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;I)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onTakePhoto()V

    goto :goto_0

    .line 78
    :cond_3
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 387
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/PictureBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onTakePhoto()V

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->exit()V

    .line 405
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_camera:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    const-string p1, "android.permission.CAMERA"

    .line 392
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->exit()V

    :goto_0
    return-void
.end method

.method protected singleCropHandleResult(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 186
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 188
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {v3, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->parseLocalMedia(Ljava/lang/String;II)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v3

    .line 189
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_2

    .line 191
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 192
    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    :goto_1
    xor-int/lit8 v2, v2, 0x1

    .line 197
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 198
    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 199
    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    const-string v1, "com.yalantis.ucrop.ImageWidth"

    const/4 v2, 0x0

    .line 201
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    const-string v1, "com.yalantis.ucrop.ImageHeight"

    .line 202
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    const-string v1, "com.yalantis.ucrop.OffsetX"

    .line 203
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    const-string v1, "com.yalantis.ucrop.OffsetY"

    .line 204
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    const-string v1, "com.yalantis.ucrop.CropAspectRatio"

    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    const-string v1, "com.yalantis.ucrop.EditorImage"

    .line 206
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    .line 207
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 208
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 213
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 215
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 217
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_2

    .line 220
    :cond_5
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 222
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 224
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_2

    .line 225
    :cond_6
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 226
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 228
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 232
    :cond_7
    :goto_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->handlerResult(Ljava/util/List;)V

    return-void
.end method
