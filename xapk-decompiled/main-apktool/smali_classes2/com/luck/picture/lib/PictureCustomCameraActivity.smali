.class public Lcom/luck/picture/lib/PictureCustomCameraActivity;
.super Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;
.source "PictureCustomCameraActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureCustomCameraActivity"


# instance fields
.field protected isEnterSetting:Z

.field private mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private requestCamera()V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 66
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "android.permission.CAMERA"

    .line 68
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 72
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    .line 75
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 84
    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setRecordVideoMaxTime(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoMinSecond:I

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoMinSecond:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setRecordVideoMinTime(I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->captureLoadingColor:I

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->captureLoadingColor:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setCaptureLoadingColor(I)V

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->getCaptureLayout()Lcom/luck/picture/lib/camera/view/CaptureLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->setButtonFeatures(I)V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    new-instance v1, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda0;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setImageCallbackListener(Lcom/luck/picture/lib/camera/listener/ImageCallbackListener;)V

    .line 145
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    new-instance v1, Lcom/luck/picture/lib/PictureCustomCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity$1;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setCameraListener(Lcom/luck/picture/lib/camera/listener/CameraListener;)V

    .line 181
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    new-instance v1, Lcom/luck/picture/lib/PictureCustomCameraActivity$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity$2;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/camera/CustomCameraView;->setOnClickListener(Lcom/luck/picture/lib/camera/listener/ClickListener;)V

    return-void
.end method

.method public isImmersive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$initView$0$com-luck-picture-lib-PictureCustomCameraActivity(Ljava/io/File;Landroid/widget/ImageView;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/luck/picture/lib/engine/ImageEngine;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showPermissionsDialog$1$com-luck-picture-lib-PictureCustomCameraActivity(Lcom/luck/picture/lib/dialog/PictureCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 276
    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V

    .line 278
    :cond_0
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz p1, :cond_1

    .line 279
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    .line 281
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->exit()V

    return-void
.end method

.method synthetic lambda$showPermissionsDialog$2$com-luck-picture-lib-PictureCustomCameraActivity(Lcom/luck/picture/lib/dialog/PictureCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->launchAppDetailsSettings(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isEnterSetting:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->exit()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 54
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 55
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_custom_camera:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->setContentView(I)V

    .line 60
    sget p1, Lcom/luck/picture/lib/R$id;->cameraView:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/camera/CustomCameraView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    .line 61
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->initView()V

    .line 62
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->requestCamera()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->onCancelMedia()V

    .line 202
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const-string p2, "android.permission.CAMERA"

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_5

    const/4 v3, 0x4

    const-string v4, "android.permission.RECORD_AUDIO"

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v2

    if-nez p1, :cond_1

    .line 232
    iget-object p1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    .line 234
    :cond_1
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_audio:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p1, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_4

    aget p1, p3, v2

    if-nez p1, :cond_4

    .line 220
    invoke-static {p0, v4}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    .line 223
    :cond_3
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 226
    :cond_4
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_camera:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_5
    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v2

    if-nez p1, :cond_6

    .line 211
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 214
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 92
    invoke-super {p0}, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;->onResume()V

    .line 94
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isEnterSetting:Z

    if-eqz v0, :cond_4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 95
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v0, "android.permission.CAMERA"

    .line 96
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->buttonFeatures:I

    const/16 v1, 0x101

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 100
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->mCameraView:Lcom/luck/picture/lib/camera/CustomCameraView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/CustomCameraView;->initCamera()V

    goto :goto_0

    .line 103
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_camera:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isEnterSetting:Z

    :cond_4
    return-void
.end method

.method protected showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 242
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onPermissionsObtainCallback:Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    if-eqz v0, :cond_1

    .line 246
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onPermissionsObtainCallback:Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/luck/picture/lib/PictureCustomCameraActivity$3;

    invoke-direct {v6, p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity$3;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;)V

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;->onPermissionsIntercept(Landroid/content/Context;Z[Ljava/lang/String;Ljava/lang/String;Lcom/luck/picture/lib/listener/OnPermissionDialogOptionCallback;)V

    return-void

    .line 264
    :cond_1
    new-instance p1, Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/luck/picture/lib/R$layout;->picture_wind_base_dialog:I

    invoke-direct {p1, p2, v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 265
    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->setCancelable(Z)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 267
    sget p2, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 268
    sget v0, Lcom/luck/picture/lib/R$id;->btn_commit:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 269
    sget v1, Lcom/luck/picture/lib/R$string;->picture_go_setting:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 270
    sget v1, Lcom/luck/picture/lib/R$id;->tvTitle:I

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 271
    sget v2, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 272
    sget v3, Lcom/luck/picture/lib/R$string;->picture_prompt:I

    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureCustomCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-instance p3, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda1;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    new-instance p2, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lcom/luck/picture/lib/PictureCustomCameraActivity$$ExternalSyntheticLambda2;-><init>(Lcom/luck/picture/lib/PictureCustomCameraActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->show()V

    return-void
.end method
