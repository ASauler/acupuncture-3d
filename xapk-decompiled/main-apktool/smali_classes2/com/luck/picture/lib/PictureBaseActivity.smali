.class public abstract Lcom/luck/picture/lib/PictureBaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PictureBaseActivity.java"


# instance fields
.field protected colorPrimary:I

.field protected colorPrimaryDark:I

.field protected config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field protected container:Landroid/view/View;

.field protected isHasMore:Z

.field protected isOnSaveInstanceState:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

.field protected mPage:I

.field protected numComplete:Z

.field protected openWhiteStatusBar:Z

.field protected selectionMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->isHasMore:Z

    .line 75
    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mPage:I

    return-void
.end method

.method private compressToLuban(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->synOrAsy:Z

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Lcom/luck/picture/lib/PictureBaseActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$2;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/luck/picture/lib/compress/Luban;->with(Landroid/content/Context;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->loadMediaData(Ljava/util/List;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minimumCompressSize:I

    .line 385
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->ignoreBy(I)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    .line 386
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->isCamera(Z)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressQuality:I

    .line 387
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setCompressQuality(I)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressSavePath:Ljava/lang/String;

    .line 388
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setTargetDir(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutoRotating:Z

    .line 389
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->isAutoRotating(Z)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->focusAlpha:Z

    .line 390
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setFocusAlpha(Z)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->renameCompressFileName:Ljava/lang/String;

    .line 391
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setNewCompressFileName(Ljava/lang/String;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureBaseActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$3;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    .line 392
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Luban$Builder;->setCompressListener(Lcom/luck/picture/lib/compress/OnCompressListener;)Lcom/luck/picture/lib/compress/Luban$Builder;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->launch()V

    :goto_0
    return-void
.end method

.method private initConfig()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMedias:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_3

    .line 238
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_statusBarChangeTextColor:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    .line 239
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleBarBackgroundColor:I

    if-eqz v0, :cond_1

    .line 240
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleBarBackgroundColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    .line 242
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_statusBarBackgroundColor:I

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_statusBarBackgroundColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    .line 245
    :cond_2
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_switchSelectTotalStyle:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    .line 247
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_switchSelectNumberStyle:Z

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    goto/16 :goto_1

    .line 249
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_6

    .line 250
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isChangeStatusBarFontColor:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    .line 251
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleBarBackgroundColor:I

    if-eqz v0, :cond_4

    .line 252
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleBarBackgroundColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    .line 254
    :cond_4
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureStatusBarColor:I

    if-eqz v0, :cond_5

    .line 255
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureStatusBarColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    .line 257
    :cond_5
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isOpenCompletedNumStyle:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    .line 258
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->isOpenCheckNumStyle:Z

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    goto :goto_1

    .line 260
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isChangeStatusBarFontColor:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    if-nez v0, :cond_7

    .line 262
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_statusFontColor:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOpenStyleNumComplete:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    if-nez v0, :cond_8

    .line 267
    sget v0, Lcom/luck/picture/lib/R$attr;->picture_style_numComplete:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->numComplete:Z

    .line 270
    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOpenStyleCheckNumMode:Z

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    .line 271
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-nez v0, :cond_9

    .line 272
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_style_checkNumMode:I

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueBoolean(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    .line 275
    :cond_9
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->titleBarBackgroundColor:I

    if-eqz v0, :cond_a

    .line 276
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->titleBarBackgroundColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    goto :goto_0

    .line 278
    :cond_a
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimary:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    .line 281
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pictureStatusBarColor:I

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pictureStatusBarColor:I

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    goto :goto_1

    .line 284
    :cond_b
    sget v0, Lcom/luck/picture/lib/R$attr;->colorPrimaryDark:I

    invoke-static {p0, v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    .line 288
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    if-eqz v0, :cond_c

    .line 289
    invoke-static {}, Lcom/luck/picture/lib/tools/VoiceUtils;->getInstance()Lcom/luck/picture/lib/tools/VoiceUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/tools/VoiceUtils;->init(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method static synthetic lambda$sortFolder$0(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p0

    .line 889
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p1

    .line 890
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private newCreateEngine()V
    .locals 1

    .line 181
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->createEngine()Lcom/luck/picture/lib/engine/ImageEngine;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageEngine:Lcom/luck/picture/lib/engine/ImageEngine;

    :cond_0
    return-void
.end method

.method private newCreateResultCallbackListener()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCallbackMode:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Lcom/luck/picture/lib/app/PictureAppMaster;->getInstance()Lcom/luck/picture/lib/app/PictureAppMaster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/app/PictureAppMaster;->getPictureSelectorEngine()Lcom/luck/picture/lib/engine/PictureSelectorEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lcom/luck/picture/lib/engine/PictureSelectorEngine;->getResultCallbackListener()Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    :cond_0
    return-void
.end method

.method private normalResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 531
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 533
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v4, :cond_2

    .line 534
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 537
    :cond_0
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 538
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 540
    :cond_1
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-eqz v5, :cond_2

    .line 541
    invoke-virtual {v4, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginal(Z)V

    .line 542
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginalPath(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 546
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 548
    :cond_5
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v0, :cond_6

    .line 549
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onResult(Ljava/util/List;)V

    goto :goto_2

    .line 551
    :cond_6
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->putIntentResult(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 552
    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 554
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->exit()V

    return-void
.end method

.method private onResultToAndroidAsy(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 506
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 509
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v3, :cond_2

    .line 510
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 513
    :cond_0
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 519
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->startThreadCopySandbox(Ljava/util/List;)V

    goto :goto_3

    .line 521
    :cond_4
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->normalResult(Ljava/util/List;)V

    :goto_3
    return-void
.end method

.method private releaseResultListener()V
    .locals 1

    .line 816
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz v0, :cond_0

    .line 817
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->destroy()V

    .line 818
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->setInstanceNull()V

    .line 819
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    .line 820
    invoke-static {}, Lcom/luck/picture/lib/io/ArrayPoolProvide;->getInstance()Lcom/luck/picture/lib/io/ArrayPoolProvide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/io/ArrayPoolProvide;->clearMemory()V

    :cond_0
    return-void
.end method

.method private startThreadCopySandbox(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 563
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->showPleaseDialog()V

    .line 564
    new-instance v0, Lcom/luck/picture/lib/PictureBaseActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$4;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v0, :cond_0

    .line 204
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0

    .line 206
    :cond_0
    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->language:I

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureContextWrapper;->wrap(Landroid/content/Context;I)Landroid/content/ContextWrapper;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected compressImage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->compressEngine:Lcom/luck/picture/lib/engine/CompressEngine;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/PictureBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/luck/picture/lib/PictureBaseActivity$1;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/luck/picture/lib/engine/CompressEngine;->onCompress(Landroid/content/Context;Ljava/util/List;Lcom/luck/picture/lib/listener/OnCallbackListener;)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->showPleaseDialog()V

    .line 350
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->compressToLuban(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method protected createNewFolder(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    goto :goto_0

    .line 435
    :cond_0
    sget v1, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    const-string v1, ""

    .line 437
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCameraFolder(Z)V

    const-wide/16 v2, -0x1

    .line 439
    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 440
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setChecked(Z)V

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected dismissDialog()V
    .locals 2

    .line 323
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 330
    iput-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected exit()V
    .locals 2

    .line 623
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->finish()V

    .line 624
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 625
    sget v0, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_out:I

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->overridePendingTransition(II)V

    .line 626
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/PictureSelectorCameraEmptyActivity;

    if-nez v0, :cond_0

    .line 627
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    if-eqz v0, :cond_2

    .line 628
    :cond_0
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->releaseResultListener()V

    goto :goto_0

    .line 631
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityExitAnimation:I

    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->overridePendingTransition(II)V

    .line 633
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity;

    if-eqz v0, :cond_2

    .line 634
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->releaseResultListener()V

    .line 635
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->openClickSound:Z

    if-eqz v0, :cond_2

    .line 636
    invoke-static {}, Lcom/luck/picture/lib/tools/VoiceUtils;->getInstance()Lcom/luck/picture/lib/tools/VoiceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/tools/VoiceUtils;->releaseSoundPool()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getAudioPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 660
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 664
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 667
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 670
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method protected getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    .line 456
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz p2, :cond_1

    .line 457
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 461
    :cond_2
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    if-eqz p2, :cond_3

    .line 462
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const-string p2, ""

    :goto_1
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 465
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public abstract getResourceId()I
.end method

.method protected handlerResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->compressImage(Ljava/util/List;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public immersive()V
    .locals 3

    .line 102
    iget v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimaryDark:I

    iget v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->colorPrimary:I

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->openWhiteStatusBar:Z

    invoke-static {p0, v0, v1, v2}, Lcom/luck/picture/lib/immersive/ImmersiveManage;->immersiveAboveAPI23(Landroidx/appcompat/app/AppCompatActivity;IIZ)V

    return-void
.end method

.method protected initCompleteText(I)V
    .locals 0

    return-void
.end method

.method protected initCompleteText(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected initPictureSelectorStyle()V
    .locals 0

    return-void
.end method

.method protected initWidgets()V
    .locals 0

    return-void
.end method

.method public isImmersive()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRequestedOrientation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 147
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->language:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/language/PictureLanguageUtils;->setAppLanguage(Landroid/content/Context;I)V

    .line 148
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    if-nez v0, :cond_0

    sget v0, Lcom/luck/picture/lib/R$style;->picture_default_style:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->themeStyleId:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->setTheme(I)V

    .line 149
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->newCreateEngine()V

    .line 151
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->newCreateResultCallbackListener()V

    .line 152
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isRequestedOrientation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->setNewRequestedOrientation()V

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->initConfig()V

    .line 156
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isImmersive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->immersive()V

    .line 159
    :cond_2
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz p1, :cond_3

    .line 160
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_navBarColor:I

    if-eqz p1, :cond_4

    .line 161
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_navBarColor:I

    invoke-static {p0, p1}, Lcom/luck/picture/lib/immersive/NavBarUtils;->setNavBarColor(Landroid/app/Activity;I)V

    goto :goto_1

    .line 163
    :cond_3
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz p1, :cond_4

    .line 164
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureNavBarColor:I

    if-eqz p1, :cond_4

    .line 165
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureNavBarColor:I

    invoke-static {p0, p1}, Lcom/luck/picture/lib/immersive/NavBarUtils;->setNavBarColor(Landroid/app/Activity;I)V

    .line 168
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getResourceId()I

    move-result p1

    if-eqz p1, :cond_5

    .line 170
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->setContentView(I)V

    .line 172
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->initWidgets()V

    .line 173
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->initPictureSelectorStyle()V

    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->isOnSaveInstanceState:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->dismiss()V

    .line 646
    iput-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    .line 648
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 649
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 826
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 828
    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 829
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    const/16 p2, 0x38d

    .line 831
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_audio:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 475
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAndroidQTransform:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResultToAndroidAsy(Ljava/util/List;)V

    goto :goto_3

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->dismissDialog()V

    .line 479
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->selectionMedias:Ljava/util/List;

    invoke-interface {p1, v0, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-eqz v0, :cond_3

    .line 483
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 485
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 486
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginal(Z)V

    .line 487
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setOriginalPath(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 490
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v0, :cond_4

    .line 491
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onResult(Ljava/util/List;)V

    goto :goto_2

    .line 493
    :cond_4
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->putIntentResult(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 494
    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 496
    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->exit()V

    :goto_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 295
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->isOnSaveInstanceState:Z

    const-string v0, "PictureSelectorConfig"

    .line 297
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method protected setNewRequestedOrientation()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->requestedOrientation:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method protected showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected showPleaseDialog()V
    .locals 2

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->dismiss()V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->mLoadingDialog:Lcom/luck/picture/lib/dialog/PictureLoadingDialog;

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureLoadingDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected showPromptDialog(Ljava/lang/String;)V
    .locals 3

    .line 856
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onChooseLimitCallback:Lcom/luck/picture/lib/listener/OnChooseLimitCallback;

    if-eqz v0, :cond_0

    .line 858
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onChooseLimitCallback:Lcom/luck/picture/lib/listener/OnChooseLimitCallback;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/luck/picture/lib/listener/OnChooseLimitCallback;->onChooseLimit(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$layout;->picture_prompt_dialog:I

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;-><init>(Landroid/content/Context;I)V

    .line 861
    sget v1, Lcom/luck/picture/lib/R$id;->btnOk:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 862
    sget v2, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 863
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    new-instance p1, Lcom/luck/picture/lib/PictureBaseActivity$5;

    invoke-direct {p1, p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity$5;-><init>(Lcom/luck/picture/lib/PictureBaseActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected sortFolder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 884
    new-instance v0, Lcom/luck/picture/lib/PictureBaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/luck/picture/lib/PictureBaseActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public startOpenCameraAudio()V
    .locals 4

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 780
    :try_start_0
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 781
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    iput v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    .line 784
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    .line 785
    :goto_0
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 786
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createAudioUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    .line 788
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "open is audio error\uff0cthe uri is empty "

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_1

    .line 790
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->exit()V

    :cond_1
    return-void

    .line 794
    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    const-string v2, "output"

    .line 795
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_3
    const/16 v1, 0x38d

    .line 797
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 799
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "System recording is not supported"

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    .line 802
    invoke-static {p0, v1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 806
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 807
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected startOpenCameraImage()V
    .locals 7

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 684
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraImageFormat:Ljava/lang/String;

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 686
    :goto_1
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 687
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isSuffixOfImage(Ljava/lang/String;)Z

    move-result v4

    .line 688
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-nez v4, :cond_2

    iget-object v4, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    const-string v6, ".jpg"

    invoke-static {v4, v6}, Lcom/luck/picture/lib/tools/StringUtils;->renameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    :goto_2
    iput-object v4, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 689
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/luck/picture/lib/tools/StringUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 691
    :goto_3
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 692
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 693
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createImageUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 695
    :cond_5
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {p0, v2, v4, v1, v5}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 697
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 698
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->parUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_7

    .line 701
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    goto :goto_5

    .line 704
    :cond_6
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {p0, v2, v4, v1, v5}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 705
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 706
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->parUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_7
    :goto_5
    if-nez v1, :cond_9

    .line 709
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "open is camera error\uff0cthe uri is empty "

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_8

    .line 711
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->exit()V

    :cond_8
    return-void

    .line 715
    :cond_9
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v4

    iput v4, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    .line 716
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraAroundState:Z

    if-eqz v2, :cond_a

    const-string v2, "android.intent.extras.CAMERA_FACING"

    .line 717
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_a
    const-string v2, "output"

    .line 719
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 720
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method

.method protected startOpenCameraVideo()V
    .locals 6

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 733
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraVideoFormat:Ljava/lang/String;

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-nez v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    .line 735
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 736
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isSuffixOfImage(Ljava/lang/String;)Z

    move-result v3

    .line 737
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    const-string v5, ".mp4"

    invoke-static {v3, v5}, Lcom/luck/picture/lib/tools/StringUtils;->renameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    iget-object v3, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    :goto_2
    iput-object v3, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/luck/picture/lib/tools/StringUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 740
    :goto_3
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 741
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 742
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraFileName:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->createVideoUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 744
    :cond_5
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {p0, v2, v3, v1, v4}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 745
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 746
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->parUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_7

    .line 749
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    goto :goto_5

    .line 752
    :cond_6
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->outPutCameraPath:Ljava/lang/String;

    invoke-static {p0, v2, v3, v1, v4}, Lcom/luck/picture/lib/tools/PictureFileUtils;->createCameraFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 753
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 754
    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->parUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :cond_7
    :goto_5
    if-nez v1, :cond_9

    .line 757
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "open is camera error\uff0cthe uri is empty "

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->camera:Z

    if-eqz v0, :cond_8

    .line 759
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->exit()V

    :cond_8
    return-void

    .line 763
    :cond_9
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v3

    iput v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    const-string v2, "output"

    .line 764
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 765
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraAroundState:Z

    if-eqz v1, :cond_a

    const-string v1, "android.intent.extras.CAMERA_FACING"

    const/4 v2, 0x1

    .line 766
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    :cond_a
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isQuickCapture:Z

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->recordVideoSecond:I

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoQuality:I

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 771
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
