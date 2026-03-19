.class public Lcom/luck/picture/lib/PictureSelectorActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "PictureSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/luck/picture/lib/listener/OnAlbumItemClickListener;
.implements Lcom/luck/picture/lib/listener/OnPhotoSelectChangedListener;
.implements Lcom/luck/picture/lib/listener/OnItemClickListener;
.implements Lcom/luck/picture/lib/listener/OnRecyclerViewPreloadMoreListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/PictureBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/luck/picture/lib/listener/OnAlbumItemClickListener;",
        "Lcom/luck/picture/lib/listener/OnPhotoSelectChangedListener<",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        ">;",
        "Lcom/luck/picture/lib/listener/OnItemClickListener;",
        "Lcom/luck/picture/lib/listener/OnRecyclerViewPreloadMoreListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PictureSelectorActivity"


# instance fields
.field private allFolderSize:I

.field protected animation:Landroid/view/animation/Animation;

.field protected audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

.field protected folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

.field private intervalClickTime:J

.field protected isEnterSetting:Z

.field protected isPlayAudio:Z

.field protected isStartAnimation:Z

.field protected mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field protected mBottomLayout:Landroid/widget/RelativeLayout;

.field protected mCbOriginal:Landroid/widget/CheckBox;

.field protected mIvArrow:Landroid/widget/ImageView;

.field protected mIvPictureLeftBack:Landroid/widget/ImageView;

.field private mOpenCameraCount:I

.field protected mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

.field public mRunnable:Ljava/lang/Runnable;

.field protected mTitleBar:Landroid/view/View;

.field protected mTvEmpty:Landroid/widget/TextView;

.field protected mTvMusicStatus:Landroid/widget/TextView;

.field protected mTvMusicTime:Landroid/widget/TextView;

.field protected mTvMusicTotal:Landroid/widget/TextView;

.field protected mTvPictureImgNum:Landroid/widget/TextView;

.field protected mTvPictureOk:Landroid/widget/TextView;

.field protected mTvPicturePreview:Landroid/widget/TextView;

.field protected mTvPictureRight:Landroid/widget/TextView;

.field protected mTvPictureTitle:Landroid/widget/TextView;

.field protected mTvPlayPause:Landroid/widget/TextView;

.field protected mTvQuit:Landroid/widget/TextView;

.field protected mTvStop:Landroid/widget/TextView;

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field protected musicSeekBar:Landroid/widget/SeekBar;

.field protected oldCurrentListSize:I

.field protected viewClickMask:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isStartAnimation:Z

    .line 106
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    const-wide/16 v0, 0x0

    .line 111
    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->intervalClickTime:J

    .line 1248
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$6;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$6;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initStandardModel(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initPlayer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playAudio()V

    return-void
.end method

.method private bothMimeTypeWith(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1113
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1117
    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v2, :cond_7

    .line 1118
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_2

    .line 1119
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 1120
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1123
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_5

    .line 1125
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v2, :cond_4

    .line 1127
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1130
    :cond_3
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-gtz v0, :cond_6

    .line 1135
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_5

    .line 1137
    :cond_6
    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 1140
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz p1, :cond_b

    .line 1141
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    move v0, v1

    :goto_3
    if-ge v0, p1, :cond_9

    .line 1144
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1145
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-gtz v1, :cond_a

    .line 1151
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_5

    .line 1153
    :cond_a
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_5

    .line 1156
    :cond_b
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    :goto_5
    return-void
.end method

.method private checkVideoLegitimacy(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 6

    .line 2049
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2050
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    if-lez v0, :cond_1

    .line 2052
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v2

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 2054
    :cond_0
    sget p1, Lcom/luck/picture/lib/R$string;->picture_choose_limit_seconds:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2056
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    if-lez v0, :cond_2

    .line 2058
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v2

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_3

    .line 2060
    sget p1, Lcom/luck/picture/lib/R$string;->picture_choose_min_seconds:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    if-lez v0, :cond_3

    .line 2064
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v2

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 2066
    sget p1, Lcom/luck/picture/lib/R$string;->picture_choose_max_seconds:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private dispatchHandleCamera(Landroid/content/Intent;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v1, "PictureSelectorConfig"

    .line 1800
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1802
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    .line 1805
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1806
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    iput v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    .line 1807
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getAudioPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    .line 1808
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1811
    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    .line 1813
    :try_start_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->suffixType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraAudioFormat:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v2}, Lcom/luck/picture/lib/tools/MediaUtils;->createAudioUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1815
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/luck/picture/lib/PictureContentResolver;->getContentResolverOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1816
    invoke-static {p0, v1}, Lcom/luck/picture/lib/PictureContentResolver;->getContentResolverOpenOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1817
    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/PictureFileUtils;->writeFileFromIS(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 1818
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1821
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1826
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1829
    :cond_5
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v1}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 1831
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1833
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1834
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1835
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    invoke-static {v2, v4}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1836
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 1837
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 1838
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1839
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v3

    .line 1840
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 1841
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_3

    .line 1842
    :cond_6
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1843
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v3

    .line 1844
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 1845
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 1846
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_3

    .line 1847
    :cond_7
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1848
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/luck/picture/lib/tools/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object v3

    .line 1849
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 1851
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_9

    .line 1852
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v5

    goto :goto_4

    :cond_9
    const-wide/16 v5, -0x1

    :goto_4
    invoke-virtual {v1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 1853
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    if-eqz p1, :cond_a

    const-string v0, "mediaPath"

    .line 1855
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1856
    :cond_a
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1858
    :cond_b
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    invoke-static {v0, v2}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1860
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setSize(J)V

    .line 1861
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setFileName(Ljava/lang/String;)V

    .line 1862
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1863
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCameraRotateImage:Z

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/luck/picture/lib/tools/BitmapUtils;->rotateImage(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/MediaUtils;->getImageSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 1865
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 1866
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    goto :goto_5

    .line 1867
    :cond_c
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1868
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/MediaUtils;->getVideoSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 1869
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setWidth(I)V

    .line 1870
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setHeight(I)V

    .line 1871
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    goto :goto_5

    .line 1872
    :cond_d
    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1873
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/luck/picture/lib/tools/MediaUtils;->getAudioSize(Landroid/content/Context;Ljava/lang/String;)Lcom/luck/picture/lib/entity/MediaExtraInfo;

    move-result-object p1

    .line 1874
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/MediaExtraInfo;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDuration(J)V

    .line 1877
    :cond_e
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setId(J)V

    .line 1878
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setRealPath(Ljava/lang/String;)V

    .line 1880
    :goto_6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setPath(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->setMimeType(Ljava/lang/String;)V

    .line 1882
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1883
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const-string p1, "Camera"

    .line 1885
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setParentFolderName(Ljava/lang/String;)V

    .line 1887
    :goto_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 1888
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/MediaUtils;->getCameraFirstBucketId(Landroid/content/Context;)J

    move-result-wide v2

    .line 1889
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    .line 1890
    invoke-static {}, Lcom/luck/picture/lib/tools/DateUtils;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->setDateAddedTime(J)V

    .line 1892
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->notifyAdapterData(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1893
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz p1, :cond_11

    .line 1894
    :try_start_3
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1895
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion3:Z

    if-eqz p1, :cond_10

    .line 1896
    new-instance p1, Lcom/luck/picture/lib/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/luck/picture/lib/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 1898
    :cond_10
    new-instance p1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 1902
    :cond_11
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion3:Z

    if-eqz p1, :cond_12

    .line 1903
    new-instance p1, Lcom/luck/picture/lib/PictureMediaScannerConnection;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {p1, v0, v2}, Lcom/luck/picture/lib/PictureMediaScannerConnection;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8

    .line 1905
    :cond_12
    new-instance p1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1907
    :goto_8
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1908
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/MediaUtils;->getDCIMLastImageId(Landroid/content/Context;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_13

    .line 1910
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/luck/picture/lib/tools/MediaUtils;->removeMedia(Landroid/content/Context;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_a

    .line 1915
    :goto_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_a
    return-void
.end method

.method private dispatchHandleMultiple(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 6

    .line 1961
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 1962
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 1963
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 1964
    :goto_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isMimeTypeSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 1965
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWithVideoImage:Z

    if-eqz v5, :cond_7

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1968
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1969
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1973
    :cond_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1974
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    if-gtz v1, :cond_3

    .line 1975
    sget p1, Lcom/luck/picture/lib/R$string;->picture_rule:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1977
    :cond_3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    if-lt v3, v1, :cond_4

    .line 1978
    sget p1, Lcom/luck/picture/lib/R$string;->picture_message_max_num:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1980
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1981
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1985
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge v1, v2, :cond_6

    .line 1986
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1987
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1989
    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v0, p1, v1}, Lcom/luck/picture/lib/tools/StringUtils;->getMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 1994
    :cond_7
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    if-lez v2, :cond_a

    .line 1995
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    if-ge v1, v2, :cond_9

    if-nez v4, :cond_8

    if-nez v1, :cond_d

    .line 1997
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    if-ge v1, v2, :cond_d

    .line 1998
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1999
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    goto :goto_2

    .line 2003
    :cond_9
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxVideoSelectNum:I

    invoke-static {p1, v3, v0}, Lcom/luck/picture/lib/tools/StringUtils;->getMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    goto :goto_2

    .line 2007
    :cond_a
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    if-ge v1, v2, :cond_c

    if-nez v4, :cond_b

    if-nez v1, :cond_d

    .line 2009
    :cond_b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2010
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    goto :goto_2

    .line 2013
    :cond_c
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {p1, v3, v0}, Lcom/luck/picture/lib/tools/StringUtils;->getMsg(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void
.end method

.method private dispatchHandleSingle(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 3

    .line 2025
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 2026
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v1, :cond_0

    .line 2027
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2028
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    .line 2029
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->singleDirectReturnCameraHandleResult(Ljava/lang/String;)V

    goto :goto_1

    .line 2031
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 2032
    :goto_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isMimeTypeSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2033
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 2034
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->singleRadioMediaImage()V

    .line 2035
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2036
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getPageLimit()I
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$id;->view_tag:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 257
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mOpenCameraCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pageSize:I

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mOpenCameraCount:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pageSize:I

    :goto_0
    const/4 v1, 0x0

    .line 258
    iput v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mOpenCameraCount:I

    return v0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->pageSize:I

    return v0
.end method

.method private hideDataNull()V
    .locals 2

    .line 2476
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initPageModel(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 738
    iput p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    .line 739
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    .line 740
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$id;->view_count_tag:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 741
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$id;->view_index_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 742
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x1

    .line 743
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v2, p1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    .line 744
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getInstance(Landroid/content/Context;)Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    move-result-object p1

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda3;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->loadPageMediaData(JILcom/luck/picture/lib/listener/OnQueryDataResultListener;)V

    return-void
.end method

.method private initPlayer(Ljava/lang/String;)V
    .locals 2

    .line 1271
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1273
    :try_start_0
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1278
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1279
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1280
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playAudio()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initStandardModel(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 823
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 824
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 825
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    const/4 v1, 0x1

    .line 826
    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setChecked(Z)V

    .line 827
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$id;->view_count_tag:I

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 828
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v2

    .line 829
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v3, :cond_5

    .line 830
    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result v3

    .line 831
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 832
    iget v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->oldCurrentListSize:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->oldCurrentListSize:I

    if-lt v4, v3, :cond_1

    if-lez v3, :cond_0

    if-ge v3, v4, :cond_0

    if-eq v5, v4, :cond_0

    .line 836
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 837
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 838
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 840
    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCheckedNum(I)V

    .line 841
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 842
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->updateMediaFolder(Ljava/util/List;Lcom/luck/picture/lib/entity/LocalMedia;)V

    goto :goto_0

    .line 844
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    .line 847
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDataEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 849
    sget p1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$drawable;->picture_icon_no_data:I

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showDataNull(Ljava/lang/String;I)V

    goto :goto_1

    .line 851
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->hideDataNull()V

    goto :goto_1

    .line 855
    :cond_3
    sget p1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$drawable;->picture_icon_no_data:I

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showDataNull(Ljava/lang/String;I)V

    goto :goto_1

    .line 858
    :cond_4
    sget p1, Lcom/luck/picture/lib/R$string;->picture_data_exception:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/luck/picture/lib/R$drawable;->picture_icon_data_error:I

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showDataNull(Ljava/lang/String;I)V

    .line 860
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->dismissDialog()V

    return-void
.end method

.method private isAddSameImp(I)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2289
    :cond_0
    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->allFolderSize:I

    if-lez v1, :cond_1

    if-ge v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isCurrentCacheFolderData(I)Z
    .locals 3

    .line 1442
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$id;->view_index_tag:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1443
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1445
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1446
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    .line 1448
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getCurrentDataPage()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    .line 1449
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore()Z

    move-result p1

    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    .line 1450
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->smoothScrollToPosition(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private isLocalMediaSame(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 4

    .line 870
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItem(I)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 880
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 881
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 883
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private isNumComplete(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 592
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initCompleteText(I)V

    :cond_0
    return-void
.end method

.method private loadAllMediaData()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 307
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->readLocalMedia()V

    goto :goto_0

    .line 310
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private loadMoreData()V
    .locals 7

    .line 268
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_0

    .line 269
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    .line 271
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$id;->view_tag:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v2

    .line 272
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getInstance(Landroid/content/Context;)Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    move-result-object v1

    iget v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getPageLimit()I

    move-result v5

    new-instance v6, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v2, v3}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda6;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->loadPageMediaData(JIILcom/luck/picture/lib/listener/OnQueryDataResultListener;)V

    :cond_0
    return-void
.end method

.method private manualSaveFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 6

    .line 2242
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isEmpty()Z

    move-result v0

    .line 2243
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 2247
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->createNewFolder(Ljava/util/List;)V

    .line 2248
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 2250
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 2251
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v3}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 2255
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 2257
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2258
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2259
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/List;)V

    const-wide/16 v3, -0x1

    .line 2260
    invoke-virtual {v0, v3, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 2261
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2264
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v5}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/luck/picture/lib/PictureSelectorActivity;->getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2266
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :goto_4
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2267
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2268
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2270
    :cond_6
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 2271
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2272
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2274
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 2276
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private manualSaveFolderForPageModel(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 2177
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2178
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v2}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    :goto_0
    if-eqz v2, :cond_d

    .line 2180
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    .line 2181
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2182
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2183
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v4

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v4

    add-int/2addr v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    if-nez v0, :cond_5

    .line 2186
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v4

    if-ne v0, v4, :cond_3

    sget v0, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    goto :goto_2

    .line 2187
    :cond_3
    sget v0, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-virtual {v2, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v2, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setOfAllType(I)V

    .line 2189
    invoke-virtual {v2, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCameraFolder(Z)V

    .line 2190
    invoke-virtual {v2, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setChecked(Z)V

    const-wide/16 v6, -0x1

    .line 2191
    invoke-virtual {v2, v6, v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 2192
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2194
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 2195
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 2196
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    add-int/2addr v1, v5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2197
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 2200
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 2203
    :cond_5
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    goto :goto_4

    :cond_6
    const-string v2, "Camera"

    :goto_4
    move v4, v1

    :goto_5
    if-ge v4, v0, :cond_a

    .line 2206
    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v6}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 2207
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2208
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lcom/luck/picture/lib/entity/LocalMedia;->setBucketId(J)V

    .line 2209
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2211
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    goto :goto_6

    :cond_7
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    add-int/2addr v0, v5

    :goto_6
    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2212
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2213
    invoke-virtual {v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    move v1, v5

    goto :goto_7

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    if-nez v1, :cond_c

    .line 2221
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 2222
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getParentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 2223
    invoke-direct {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    goto :goto_8

    :cond_b
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v1

    add-int/2addr v1, v5

    :goto_8
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2224
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2225
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 2227
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2228
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->sortFolder(Ljava/util/List;)V

    .line 2231
    :cond_c
    :goto_9
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->bindFolder(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method private notifyAdapterData(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 1925
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_8

    .line 1926
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isAddSameImp(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1928
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1929
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mOpenCameraCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mOpenCameraCount:I

    .line 1931
    :cond_1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->checkVideoLegitimacy(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1932
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v0, v2, :cond_2

    .line 1933
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->dispatchHandleSingle(Lcom/luck/picture/lib/entity/LocalMedia;)V

    goto :goto_1

    .line 1935
    :cond_2
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->dispatchHandleMultiple(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1938
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemInserted(I)V

    .line 1939
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemRangeChanged(II)V

    .line 1941
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    if-eqz v0, :cond_4

    .line 1942
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->manualSaveFolderForPageModel(Lcom/luck/picture/lib/entity/LocalMedia;)V

    goto :goto_2

    .line 1944
    :cond_4
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->manualSaveFolder(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 1946
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1948
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1949
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$id;->view_count_tag:I

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1951
    :cond_7
    iput v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->allFolderSize:I

    :cond_8
    return-void
.end method

.method private onComplete()V
    .locals 8

    .line 1030
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 1031
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1032
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1033
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    .line 1034
    :goto_1
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v4

    .line 1035
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWithVideoImage:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_5

    move v2, v3

    move v5, v2

    :goto_2
    if-ge v3, v1, :cond_3

    .line 1039
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1040
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1046
    :cond_3
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v3, v6, :cond_7

    .line 1047
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-lez v3, :cond_4

    .line 1048
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-ge v2, v3, :cond_4

    .line 1049
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1053
    :cond_4
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-lez v2, :cond_7

    .line 1054
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-ge v5, v2, :cond_7

    .line 1055
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1061
    :cond_5
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v3, v6, :cond_7

    .line 1062
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-ge v1, v3, :cond_6

    .line 1063
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1067
    :cond_6
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-ge v1, v2, :cond_7

    .line 1068
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1075
    :cond_7
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->returnEmpty:Z

    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    .line 1076
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v2, v6, :cond_9

    .line 1077
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    if-ge v1, v2, :cond_8

    .line 1078
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1082
    :cond_8
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    if-ge v1, v2, :cond_9

    .line 1083
    sget v0, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->minVideoSelectNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPromptDialog(Ljava/lang/String;)V

    return-void

    .line 1088
    :cond_9
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v1, :cond_a

    .line 1089
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v1, v0}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onResult(Ljava/util/List;)V

    goto :goto_4

    .line 1091
    :cond_a
    invoke-static {v0}, Lcom/luck/picture/lib/PictureSelector;->putIntentResult(Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 1092
    invoke-virtual {p0, v1, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 1094
    :goto_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->exit()V

    return-void

    .line 1098
    :cond_b
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAll()I

    move-result v2

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWithVideoImage:Z

    if-eqz v1, :cond_c

    .line 1099
    invoke-direct {p0, v4, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->bothMimeTypeWith(ZLjava/util/List;)V

    goto :goto_5

    .line 1101
    :cond_c
    invoke-direct {p0, v4, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->separateMimeTypeWith(ZLjava/util/List;)V

    :goto_5
    return-void
.end method

.method private onPreview()V
    .locals 6

    .line 1001
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 1002
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    .line 1005
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1006
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    sget-object v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomImagePreviewCallback:Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    if-eqz v2, :cond_1

    .line 1009
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomImagePreviewCallback:Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;->onCustomPreviewCallback(Landroid/content/Context;Ljava/util/List;I)V

    return-void

    .line 1012
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1013
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    const-string v3, "previewSelectList"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "selectList"

    .line 1014
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "bottom_preview"

    const/4 v1, 0x1

    .line 1015
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    const-string v3, "isOriginal"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1017
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isShowCamera()Z

    move-result v0

    const-string v3, "isShowCamera"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1018
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "currentDirectory"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v4, v1, :cond_2

    const/16 v1, 0x45

    goto :goto_1

    :cond_2
    const/16 v1, 0x261

    :goto_1
    invoke-static {v0, v3, v2, v1}, Lcom/luck/picture/lib/tools/JumpUtils;->startPicturePreviewActivity(Landroid/content/Context;ZLandroid/os/Bundle;I)V

    .line 1022
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    sget v1, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private playAudio()V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1328
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPlayPause:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvMusicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPlayPause:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvMusicStatus:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    :goto_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->playOrPause()V

    .line 1339
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    if-nez v0, :cond_2

    .line 1340
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 1341
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isPlayAudio:Z

    :cond_2
    return-void
.end method

.method private previewCallback(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_1

    .line 1724
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    const-string v2, "isOriginal"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    .line 1725
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    const-string v0, "selectList"

    .line 1727
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1728
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    const-string v1, "isCompleteOrSelected"

    const/4 v2, 0x0

    .line 1729
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    .line 1731
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onChangeData(Ljava/util/List;)V

    .line 1732
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWithVideoImage:Z

    if-eqz p1, :cond_6

    .line 1733
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_3

    .line 1736
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1737
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-lez v2, :cond_5

    .line 1742
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 1745
    :cond_4
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_4

    .line 1743
    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_4

    .line 1749
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    const-string p1, ""

    .line 1750
    :goto_3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1751
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_4

    .line 1753
    :cond_8
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_4

    .line 1758
    :cond_9
    iput-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isStartAnimation:Z

    .line 1760
    :goto_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    .line 1761
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method

.method private separateMimeTypeWith(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1167
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    .line 1172
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1173
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 1174
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1176
    :cond_2
    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p0, p2}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1178
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1179
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_1

    .line 1181
    :cond_4
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private setLastCacheFolderData()V
    .locals 2

    .line 1429
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$id;->view_index_tag:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/tools/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 1430
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    .line 1431
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/List;)V

    .line 1432
    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCurrentDataPage(I)V

    .line 1433
    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setHasMore(Z)V

    return-void
.end method

.method private showDataNull(Ljava/lang/String;I)V
    .locals 2

    .line 2465
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 2467
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2468
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private singleCropHandleResult(Landroid/content/Intent;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 2082
    :cond_0
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getOutput(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2086
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2087
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2088
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v2, :cond_8

    const-string v2, "selectList"

    .line 2089
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2091
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    .line 2092
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    .line 2094
    :cond_2
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 2095
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    const-string v6, "com.yalantis.ucrop.EditorImage"

    const/4 v7, 0x0

    const-string v8, "com.yalantis.ucrop.CropAspectRatio"

    const-string v9, "com.yalantis.ucrop.OffsetY"

    const-string v10, "com.yalantis.ucrop.OffsetX"

    const-string v11, "com.yalantis.ucrop.ImageHeight"

    const-string v12, "com.yalantis.ucrop.ImageWidth"

    if-eqz v3, :cond_5

    .line 2097
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 2098
    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 2099
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 2100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2101
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2102
    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 2104
    :cond_4
    invoke-virtual {p1, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 2105
    invoke-virtual {p1, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 2106
    invoke-virtual {p1, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 2107
    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 2108
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 2109
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    .line 2110
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 2111
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 2115
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMedia;

    :cond_6
    if-eqz v4, :cond_8

    .line 2117
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 2118
    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    .line 2119
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v4, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setChooseModel(I)V

    .line 2120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2121
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2122
    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 2124
    :cond_7
    invoke-virtual {p1, v12, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 2125
    invoke-virtual {p1, v11, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 2126
    invoke-virtual {p1, v10, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 2127
    invoke-virtual {p1, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 2128
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 2129
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v4, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setEditorImage(Z)V

    .line 2130
    invoke-virtual {v4, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 2131
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2132
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private singleDirectReturnCameraHandleResult(Ljava/lang/String;)V
    .locals 2

    .line 1780
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v0

    .line 1781
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    .line 1783
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->originalPath:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1784
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCompress:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1785
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object p1

    .line 1786
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->compressImage(Ljava/util/List;)V

    goto :goto_0

    .line 1788
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private singleRadioMediaImage()V
    .locals 2

    .line 2159
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2160
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 2161
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 2162
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v1

    .line 2163
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2164
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private startCustomCamera()V
    .locals 2

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/luck/picture/lib/PictureCustomCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x38d

    .line 939
    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 940
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    .line 941
    iget v0, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityEnterAnimation:I

    sget v1, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private startPlayAudioDialog(Ljava/lang/String;)V
    .locals 4

    .line 1191
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1194
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/luck/picture/lib/R$layout;->picture_audio_dialog:I

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    .line 1195
    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$style;->Picture_Theme_Dialog_AudioStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1196
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicStatus:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvMusicStatus:Landroid/widget/TextView;

    .line 1197
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTime:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvMusicTime:Landroid/widget/TextView;

    .line 1198
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->musicSeekBar:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    .line 1199
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTotal:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvMusicTotal:Landroid/widget/TextView;

    .line 1200
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPlayPause:Landroid/widget/TextView;

    .line 1201
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvStop:Landroid/widget/TextView;

    .line 1202
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvQuit:Landroid/widget/TextView;

    .line 1203
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$3;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1209
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPlayPause:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvStop:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvQuit:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$onAudioOnClick;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->musicSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$4;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1228
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda0;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1244
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1245
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->show()V

    return-void
.end method

.method private synchronousCover()V
    .locals 2

    .line 786
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAll()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 787
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$2;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    :cond_0
    return-void
.end method

.method private updateMediaFolder(Ljava/util/List;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ")V"
        }
    .end annotation

    .line 2298
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2299
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 2305
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 2306
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2307
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 2310
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2311
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-virtual {v4, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 2313
    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCheckedNum(I)V

    .line 2314
    invoke-virtual {v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected calculateFileTotalSize(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1479
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_3

    .line 1480
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDisplayOriginalSize:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    .line 1482
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1483
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1484
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getSize()J

    move-result-wide v5

    add-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    cmp-long p1, v3, v0

    if-lez p1, :cond_1

    const/4 p1, 0x2

    .line 1487
    invoke-static {v3, v4, p1}, Lcom/luck/picture/lib/tools/PictureFileUtils;->formatFileSize(JI)Ljava/lang/String;

    move-result-object p1

    .line 1488
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_original_image:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1490
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_default_original_image:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1493
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_default_original_image:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected changeImageNumber(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_d

    .line 1579
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1580
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1581
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1582
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1583
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_3

    .line 1584
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewNormalText:I

    if-eqz v0, :cond_2

    .line 1585
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewNormalText:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1588
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewNormalText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1591
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_preview_num:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1593
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_7

    .line 1594
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteTextColor:I

    if-eqz v0, :cond_4

    .line 1595
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1597
    :cond_4
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewTextColor:I

    if-eqz v0, :cond_5

    .line 1598
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1600
    :cond_5
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1601
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1603
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_preview_num:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    if-eqz v0, :cond_8

    .line 1608
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initCompleteText(I)V

    goto/16 :goto_4

    .line 1610
    :cond_8
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isStartAnimation:Z

    if-nez v0, :cond_9

    .line 1611
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1613
    :cond_9
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1614
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1615
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz p1, :cond_a

    .line 1616
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    if-eqz p1, :cond_c

    .line 1617
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1619
    :cond_a
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz p1, :cond_b

    .line 1620
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1621
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1624
    :cond_b
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_completed:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    :cond_c
    :goto_2
    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isStartAnimation:Z

    goto/16 :goto_4

    .line 1629
    :cond_d
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->returnEmpty:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1630
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1631
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1632
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1633
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_f

    .line 1634
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewDefaultText:I

    if-eqz v0, :cond_e

    .line 1635
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewDefaultText:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1637
    :cond_e
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_preview:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1640
    :cond_f
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_13

    .line 1641
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteTextColor:I

    if-eqz v0, :cond_10

    .line 1642
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1644
    :cond_10
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewTextColor:I

    if-eqz v0, :cond_11

    .line 1645
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1647
    :cond_11
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1648
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1650
    :cond_12
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_preview:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1653
    :cond_13
    :goto_3
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    if-eqz v0, :cond_14

    .line 1654
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initCompleteText(I)V

    goto :goto_4

    .line 1656
    :cond_14
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1657
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz p1, :cond_15

    .line 1658
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz p1, :cond_17

    .line 1659
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1661
    :cond_15
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz p1, :cond_16

    .line 1662
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    .line 1663
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1666
    :cond_16
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_4
    return-void
.end method

.method public getResourceId()I
    .locals 1

    .line 154
    sget v0, Lcom/luck/picture/lib/R$layout;->picture_selector:I

    return v0
.end method

.method protected initCompleteText(I)V
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x1

    .line 623
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ne v0, v1, :cond_d

    if-gtz p1, :cond_6

    .line 603
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_3

    .line 604
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    .line 606
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 605
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 608
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    goto :goto_1

    .line 609
    :cond_2
    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    :goto_1
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 611
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_1d

    .line 612
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 613
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 615
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget v0, Lcom/luck/picture/lib/R$string;->picture_done:I

    .line 616
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 620
    :cond_6
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_a

    .line 621
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_8

    .line 622
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    if-eqz v1, :cond_7

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    .line 623
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    sget p1, Lcom/luck/picture/lib/R$string;->picture_done:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 622
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 625
    :cond_8
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    if-eqz v0, :cond_9

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    goto :goto_4

    .line 626
    :cond_9
    sget v0, Lcom/luck/picture/lib/R$string;->picture_done:I

    :goto_4
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 628
    :cond_a
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_1d

    .line 629
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 630
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 632
    :cond_b
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    goto :goto_5

    :cond_c
    sget v0, Lcom/luck/picture/lib/R$string;->picture_done:I

    .line 633
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_d
    if-gtz p1, :cond_15

    .line 640
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_11

    .line 641
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_f

    .line 642
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz v1, :cond_e

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    .line 643
    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_e
    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    .line 644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 642
    :goto_6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 646
    :cond_f
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz v1, :cond_10

    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    .line 647
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_7

    :cond_10
    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    .line 648
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 646
    :goto_7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 650
    :cond_11
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_1d

    .line 651
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_13

    .line 652
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    .line 653
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_12
    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    .line 654
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 652
    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 656
    :cond_13
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object p1, p1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    goto :goto_9

    :cond_14
    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 656
    :goto_9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 662
    :cond_15
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_19

    .line 664
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_17

    .line 665
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    if-eqz v0, :cond_16

    .line 666
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 668
    :cond_16
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 671
    :cond_17
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    if-eqz v0, :cond_18

    .line 672
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeNormalText:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 674
    :cond_18
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 678
    :cond_19
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_1d

    .line 679
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-boolean v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->isCompleteReplaceNum:Z

    if-eqz v0, :cond_1b

    .line 680
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 681
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 683
    :cond_1a
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 686
    :cond_1b
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 687
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 689
    :cond_1c
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->maxSelectNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_a
    return-void
.end method

.method public initPictureSelectorStyle()V
    .locals 3

    .line 316
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    if-eqz v0, :cond_19

    .line 317
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleArrowDownDrawable:I

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleArrowDownDrawable:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleTextColor:I

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    :cond_1
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleTextSize:I

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    :cond_2
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightTextColor:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 329
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightTextColor:[I

    invoke-static {v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getColorStateList([I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 331
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    :cond_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightTextSize:I

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 337
    :cond_4
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_leftBack:I

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvPictureLeftBack:Landroid/widget/ImageView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_leftBack:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    :cond_5
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewTextColor:[I

    array-length v0, v0

    if-lez v0, :cond_6

    .line 341
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewTextColor:[I

    invoke-static {v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getColorStateList([I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 343
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 346
    :cond_6
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewTextSize:I

    if-eqz v0, :cond_7

    .line 347
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    :cond_7
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotBackground:I

    if-eqz v0, :cond_8

    .line 351
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 354
    :cond_8
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotTextSize:I

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 358
    :cond_9
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotTextColor:I

    if-eqz v0, :cond_a

    .line 359
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeRedDotTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    :cond_a
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeTextColor:[I

    array-length v0, v0

    if-lez v0, :cond_b

    .line 363
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeTextColor:[I

    invoke-static {v0}, Lcom/luck/picture/lib/tools/AttrsUtils;->getColorStateList([I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 365
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 368
    :cond_b
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeTextSize:I

    if-eqz v0, :cond_c

    .line 369
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 371
    :cond_c
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_barBackgroundColor:I

    if-eqz v0, :cond_d

    .line 372
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_barBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 374
    :cond_d
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_container_backgroundColor:I

    if-eqz v0, :cond_e

    .line 375
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->container:Landroid/view/View;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_container_backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 377
    :cond_e
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightDefaultText:I

    if-eqz v0, :cond_f

    .line 378
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleRightDefaultText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 380
    :cond_f
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    if-eqz v0, :cond_10

    .line 381
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_completeDefaultText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    :cond_10
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewNormalText:I

    if-eqz v0, :cond_11

    .line 384
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_previewNormalText:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :cond_11
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleArrowLeftPadding:I

    if-eqz v0, :cond_12

    .line 388
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 389
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleArrowLeftPadding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 392
    :cond_12
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleBarHeight:I

    if-lez v0, :cond_13

    .line 393
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 394
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_top_titleBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 397
    :cond_13
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_barHeight:I

    if-lez v0, :cond_14

    .line 398
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 399
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_barHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 402
    :cond_14
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_18

    .line 403
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureCheckStyle:I

    if-eqz v0, :cond_15

    .line 404
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureCheckStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0

    .line 406
    :cond_15
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_original_checkbox:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 408
    :goto_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureTextColor:I

    if-eqz v0, :cond_16

    .line 409
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_1

    .line 411
    :cond_16
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 413
    :goto_1
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureTextSize:I

    if-eqz v0, :cond_17

    .line 414
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    .line 416
    :cond_17
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureText:I

    if-eqz v0, :cond_3a

    .line 417
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->uiStyle:Lcom/luck/picture/lib/style/PictureSelectorUIStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureSelectorUIStyle;->picture_bottom_originalPictureText:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto/16 :goto_6

    .line 420
    :cond_18
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_original_checkbox:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_6

    .line 423
    :cond_19
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    if-eqz v0, :cond_30

    .line 424
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleDownResId:I

    if-eqz v0, :cond_1a

    .line 425
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleDownResId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_1a
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleTextColor:I

    if-eqz v0, :cond_1b

    .line 429
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    :cond_1b
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleTextSize:I

    if-eqz v0, :cond_1c

    .line 432
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 435
    :cond_1c
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightDefaultTextColor:I

    if-eqz v0, :cond_1d

    .line 436
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightDefaultTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 438
    :cond_1d
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCancelTextColor:I

    if-eqz v0, :cond_1e

    .line 439
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCancelTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    :cond_1e
    :goto_2
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightTextSize:I

    if-eqz v0, :cond_1f

    .line 443
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 446
    :cond_1f
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureLeftBackIcon:I

    if-eqz v0, :cond_20

    .line 447
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvPictureLeftBack:Landroid/widget/ImageView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureLeftBackIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    :cond_20
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewTextColor:I

    if-eqz v0, :cond_21

    .line 450
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    :cond_21
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewTextSize:I

    if-eqz v0, :cond_22

    .line 453
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->picturePreviewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 456
    :cond_22
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCheckNumBgStyle:I

    if-eqz v0, :cond_23

    .line 457
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCheckNumBgStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 459
    :cond_23
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteTextColor:I

    if-eqz v0, :cond_24

    .line 460
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    :cond_24
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteTextSize:I

    if-eqz v0, :cond_25

    .line 463
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureCompleteTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    :cond_25
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureBottomBgColor:I

    if-eqz v0, :cond_26

    .line 466
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureBottomBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 468
    :cond_26
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureContainerBackgroundColor:I

    if-eqz v0, :cond_27

    .line 469
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->container:Landroid/view/View;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureContainerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 471
    :cond_27
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightDefaultText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 472
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureRightDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_28
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 475
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnCompleteText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    :cond_29
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 478
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget-object v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureUnPreviewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_2a
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleRightArrowLeftPadding:I

    if-eqz v0, :cond_2b

    .line 482
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 483
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleRightArrowLeftPadding:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 486
    :cond_2b
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleBarHeight:I

    if-lez v0, :cond_2c

    .line 487
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 488
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureTitleBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 490
    :cond_2c
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_2f

    .line 491
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalControlStyle:I

    if-eqz v0, :cond_2d

    .line 492
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalControlStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_3

    .line 494
    :cond_2d
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_original_checkbox:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 496
    :goto_3
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalFontColor:I

    if-eqz v0, :cond_2e

    .line 497
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalFontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_4

    .line 499
    :cond_2e
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 501
    :goto_4
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v0, v0, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalTextSize:I

    if-eqz v0, :cond_3a

    .line 502
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->style:Lcom/luck/picture/lib/style/PictureParameterStyle;

    iget v1, v1, Lcom/luck/picture/lib/style/PictureParameterStyle;->pictureOriginalTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextSize(F)V

    goto/16 :goto_6

    .line 505
    :cond_2f
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$drawable;->picture_original_checkbox:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    sget v1, Lcom/luck/picture/lib/R$color;->picture_color_white:I

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_6

    .line 509
    :cond_30
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_title_textColor:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_31

    .line 511
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    :cond_31
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_right_textColor:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_32

    .line 515
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 517
    :cond_32
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_container_backgroundColor:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_33

    .line 519
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->container:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 521
    :cond_33
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_leftBack_icon:I

    sget v2, Lcom/luck/picture/lib/R$drawable;->picture_icon_back:I

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvPictureLeftBack:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 524
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->downResId:I

    if-eqz v0, :cond_34

    .line 525
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->downResId:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 528
    :cond_34
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_arrow_down_icon:I

    sget v2, Lcom/luck/picture/lib/R$drawable;->picture_icon_arrow_down:I

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 531
    :goto_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_bottom_bg:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_35

    .line 533
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 535
    :cond_35
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_complete_textColor:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 537
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 539
    :cond_36
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_preview_textColor:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 541
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 543
    :cond_37
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_titleRightArrow_LeftPadding:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueSizeForInt(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_38

    .line 545
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 546
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 548
    :cond_38
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_num_style:I

    sget v2, Lcom/luck/picture/lib/R$drawable;->picture_num_oval:I

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 551
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_titleBar_height:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueSizeForInt(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_39

    .line 553
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 554
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 556
    :cond_39
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_3a

    .line 557
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_original_check_style:I

    sget v2, Lcom/luck/picture/lib/R$drawable;->picture_original_wechat_checkbox:I

    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 559
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$attr;->picture_original_text_color:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/AttrsUtils;->getTypeValueColor(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 561
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 565
    :cond_3a
    :goto_6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 566
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    return-void
.end method

.method protected initWidgets()V
    .locals 7

    .line 159
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->initWidgets()V

    .line 160
    sget v0, Lcom/luck/picture/lib/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->container:Landroid/view/View;

    .line 161
    sget v0, Lcom/luck/picture/lib/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    .line 162
    sget v0, Lcom/luck/picture/lib/R$id;->pictureLeftBack:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvPictureLeftBack:Landroid/widget/ImageView;

    .line 163
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    .line 165
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_ok:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    .line 166
    sget v0, Lcom/luck/picture/lib/R$id;->cb_original:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    .line 167
    sget v0, Lcom/luck/picture/lib/R$id;->ivArrow:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    .line 168
    sget v0, Lcom/luck/picture/lib/R$id;->viewClickMask:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->viewClickMask:Landroid/view/View;

    .line 169
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/luck/picture/lib/R$id;->tv_media_num:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    .line 171
    sget v0, Lcom/luck/picture/lib/R$id;->picture_recycler:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    .line 172
    sget v0, Lcom/luck/picture/lib/R$id;->select_bar_layout:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    .line 173
    sget v0, Lcom/luck/picture/lib/R$id;->tv_empty:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    .line 174
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isNumComplete(Z)V

    .line 175
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->numComplete:Z

    if-nez v0, :cond_0

    .line 176
    sget v0, Lcom/luck/picture/lib/R$anim;->picture_anim_modal_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutomaticTitleRecyclerTop:Z

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPicturePreview:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enablePreview:Z

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mBottomLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvPictureLeftBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureRight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->viewClickMask:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureImgNum:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget v0, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    goto :goto_2

    .line 193
    :cond_4
    sget v0, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    :goto_2
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$id;->view_tag:I

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 196
    new-instance v0, Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    .line 197
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setArrowImageView(Landroid/widget/ImageView;)V

    .line 198
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->setOnAlbumItemClickListener(Lcom/luck/picture/lib/listener/OnAlbumItemClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    const/4 v5, 0x4

    if-gtz v3, :cond_5

    move v3, v5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    :goto_3
    const/high16 v6, 0x40000000    # 2.0f

    .line 200
    invoke-static {p0, v6}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v1, v3, v6, v4}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 201
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    if-gtz v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->imageSpanCount:I

    :goto_4
    invoke-direct {v1, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 202
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    const/4 v1, 0x2

    if-nez v0, :cond_7

    .line 203
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setHasFixedSize(Z)V

    goto :goto_5

    .line 205
    :cond_7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setReachBottomRow(I)V

    .line 206
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewPreloadListener(Lcom/luck/picture/lib/listener/OnRecyclerViewPreloadMoreListener;)V

    .line 208
    :goto_5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 210
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 211
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 213
    :cond_8
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->loadAllMediaData()V

    .line 214
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v5

    if-ne v3, v5, :cond_9

    sget v3, Lcom/luck/picture/lib/R$string;->picture_audio_empty:I

    .line 215
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    sget v3, Lcom/luck/picture/lib/R$string;->picture_empty:I

    .line 216
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvEmpty:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {v0, v3}, Lcom/luck/picture/lib/tools/StringUtils;->tempTextFont(Landroid/widget/TextView;I)V

    .line 218
    new-instance v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-direct {v0, v3, v5}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 219
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setOnPhotoSelectChangedListener(Lcom/luck/picture/lib/listener/OnPhotoSelectChangedListener;)V

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->animationMode:I

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_a

    .line 231
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 228
    :cond_a
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/animators/SlideInBottomAnimationAdapter;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-direct {v1, v2}, Lcom/luck/picture/lib/animators/SlideInBottomAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_7

    .line 224
    :cond_b
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v1, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-direct {v1, v2}, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 234
    :goto_7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_c

    .line 235
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda4;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_c
    return-void
.end method

.method synthetic lambda$initPageModel$3$com-luck-picture-lib-PictureSelectorActivity(Ljava/util/List;IZ)V
    .locals 1

    .line 746
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_5

    .line 747
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->dismissDialog()V

    .line 748
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    .line 749
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    if-eqz p3, :cond_0

    .line 751
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onRecyclerViewPreloadMore()V

    return-void

    .line 755
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result p2

    .line 756
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    .line 757
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->oldCurrentListSize:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->oldCurrentListSize:I

    if-lt p3, p2, :cond_3

    if-lez p2, :cond_2

    if-ge p2, p3, :cond_2

    if-eq v0, p3, :cond_2

    const/4 p2, 0x0

    .line 761
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->isLocalMediaSame(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 762
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    goto :goto_0

    .line 764
    :cond_1
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 767
    :cond_2
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    .line 770
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDataEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 772
    sget p1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$drawable;->picture_icon_no_data:I

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->showDataNull(Ljava/lang/String;I)V

    goto :goto_1

    .line 774
    :cond_4
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->hideDataNull()V

    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initWidgets$0$com-luck-picture-lib-PictureSelectorActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iput-boolean p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    return-void
.end method

.method synthetic lambda$loadMoreData$1$com-luck-picture-lib-PictureSelectorActivity(JLjava/util/List;IZ)V
    .locals 0

    .line 274
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p4

    if-nez p4, :cond_3

    .line 275
    iput-boolean p5, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    if-eqz p5, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->hideDataNull()V

    .line 278
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 280
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result p2

    .line 281
    iget-object p4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p4}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemCount()I

    move-result p3

    .line 283
    iget-object p4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p4, p2, p3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onRecyclerViewPreloadMore()V

    :goto_0
    const/16 p2, 0xa

    if-ge p1, p2, :cond_3

    .line 288
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getScrollX()I

    move-result p2

    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p3}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getScrollY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onScrolled(II)V

    goto :goto_2

    .line 291
    :cond_1
    iget-object p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDataEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    .line 293
    sget p1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/luck/picture/lib/R$string;->picture_data_null:I

    :goto_1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$drawable;->picture_icon_no_data:I

    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->showDataNull(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method synthetic lambda$onItemClick$5$com-luck-picture-lib-PictureSelectorActivity(Ljava/util/List;IZ)V
    .locals 0

    .line 1404
    iput-boolean p3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    .line 1405
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1406
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 1407
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->clear()V

    .line 1409
    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p2, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    .line 1410
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->onScrolled(II)V

    .line 1411
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->smoothScrollToPosition(I)V

    .line 1412
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->dismissDialog()V

    :cond_1
    return-void
.end method

.method synthetic lambda$readLocalMedia$2$com-luck-picture-lib-PictureSelectorActivity(Ljava/util/List;IZ)V
    .locals 0

    .line 706
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 707
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isHasMore:Z

    .line 708
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->initPageModel(Ljava/util/List;)V

    .line 709
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSyncCover:Z

    if-eqz p1, :cond_0

    .line 710
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronousCover()V

    :cond_0
    return-void
.end method

.method synthetic lambda$showPermissionsDialog$6$com-luck-picture-lib-PictureSelectorActivity(Lcom/luck/picture/lib/dialog/PictureCustomDialog;ZLandroid/view/View;)V
    .locals 0

    .line 2438
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_0

    .line 2439
    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V

    :cond_0
    if-nez p2, :cond_2

    .line 2442
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz p1, :cond_1

    .line 2443
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {p1}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    .line 2445
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->exit()V

    :cond_2
    return-void
.end method

.method synthetic lambda$showPermissionsDialog$7$com-luck-picture-lib-PictureSelectorActivity(Lcom/luck/picture/lib/dialog/PictureCustomDialog;Landroid/view/View;)V
    .locals 0

    .line 2449
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2450
    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V

    .line 2452
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->launchAppDetailsSettings(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2453
    iput-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isEnterSetting:Z

    return-void
.end method

.method synthetic lambda$startPlayAudioDialog$4$com-luck-picture-lib-PictureSelectorActivity(Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 3

    .line 1229
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1230
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$5;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1237
    :try_start_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1238
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->audioDialog:Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected multiCropHandleResult(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2147
    :cond_0
    invoke-static {p1}, Lcom/yalantis/ucrop/UCrop;->getMultipleOutput(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2148
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2149
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    .line 2150
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->notifyDataSetChanged()V

    .line 2151
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1675
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/PictureBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x38d

    if-ne p2, v0, :cond_4

    const/16 p2, 0x45

    if-eq p1, p2, :cond_3

    const/16 p2, 0xa6

    if-eq p1, p2, :cond_2

    const/16 p2, 0x261

    if-eq p1, p2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1693
    :cond_0
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->dispatchHandleCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 1690
    :cond_1
    invoke-virtual {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->multiCropHandleResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    const-string p1, "selectList"

    .line 1680
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1681
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1682
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto :goto_0

    .line 1687
    :cond_3
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->singleCropHandleResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 1699
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->previewCallback(Landroid/content/Intent;)V

    if-ne p1, v1, :cond_6

    .line 1702
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/luck/picture/lib/tools/MediaUtils;->deleteCamera(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/16 p1, 0x60

    if-ne p2, p1, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "com.yalantis.ucrop.Error"

    .line 1706
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_6

    .line 1708
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/luck/picture/lib/tools/ToastUtils;->s(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2322
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->finishAfterTransition()V

    goto :goto_0

    .line 2325
    :cond_0
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onBackPressed()V

    .line 2327
    :goto_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    if-eqz v0, :cond_1

    .line 2328
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->listener:Lcom/luck/picture/lib/listener/OnResultCallbackListener;

    invoke-interface {v0}, Lcom/luck/picture/lib/listener/OnResultCallbackListener;->onCancel()V

    .line 2330
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->exit()V

    return-void
.end method

.method public onChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1471
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->changeImageNumber(Ljava/util/List;)V

    .line 1472
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->calculateFileTotalSize(Ljava/util/List;)V

    return-void
.end method

.method protected onChangeData(Ljava/util/List;)V
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

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 947
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 948
    sget v0, Lcom/luck/picture/lib/R$id;->pictureLeftBack:I

    if-eq p1, v0, :cond_a

    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 958
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/luck/picture/lib/R$id;->ivArrow:I

    if-eq p1, v0, :cond_7

    sget v0, Lcom/luck/picture/lib/R$id;->viewClickMask:I

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 973
    :cond_1
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    if-ne p1, v0, :cond_2

    .line 974
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onPreview()V

    return-void

    .line 978
    :cond_2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_ok:I

    if-eq p1, v0, :cond_6

    sget v0, Lcom/luck/picture/lib/R$id;->tv_media_num:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 983
    :cond_3
    sget v0, Lcom/luck/picture/lib/R$id;->titleBar:I

    if-ne p1, v0, :cond_5

    .line 984
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isAutomaticTitleRecyclerTop:Z

    if-eqz p1, :cond_5

    .line 986
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->intervalClickTime:J

    sub-long/2addr v0, v2

    const/16 p1, 0x1f4

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 987
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 988
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->scrollToPosition(I)V

    goto :goto_0

    .line 991
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->intervalClickTime:J

    :cond_5
    :goto_0
    return-void

    .line 979
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onComplete()V

    return-void

    .line 959
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 960
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    goto :goto_3

    .line 962
    :cond_8
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    .line 963
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTitleBar:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->showAsDropDown(Landroid/view/View;)V

    .line 964
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-nez p1, :cond_9

    .line 965
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object p1

    .line 966
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->updateFolderCheckStatus(Ljava/util/List;)V

    :cond_9
    :goto_3
    return-void

    .line 950
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 951
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    goto :goto_5

    .line 953
    :cond_b
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onBackPressed()V

    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    const-string v0, "all_folder_size"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->allFolderSize:I

    const-string v0, "oldCurrentListSize"

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->oldCurrentListSize:I

    .line 121
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->obtainSelectorList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    .line 123
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isStartAnimation:Z

    .line 125
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->selectionMedias:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 2335
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 2336
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2337
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2338
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->animation:Landroid/view/animation/Animation;

    .line 2340
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2341
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2342
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2343
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public onItemClick(IZJLjava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZJ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCamera:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 1390
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setShowCamera(Z)V

    .line 1391
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1392
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget p5, Lcom/luck/picture/lib/R$id;->view_tag:I

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide v3

    .line 1393
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget p5, Lcom/luck/picture/lib/R$id;->view_count_tag:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    .line 1394
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1393
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p5, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1395
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    if-eqz p2, :cond_2

    cmp-long p2, v3, p3

    if-eqz p2, :cond_3

    .line 1397
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->setLastCacheFolderData()V

    .line 1398
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->isCurrentCacheFolderData(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1400
    iput v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    .line 1401
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPleaseDialog()V

    .line 1402
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getInstance(Landroid/content/Context;)Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    move-result-object p1

    iget p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    new-instance p5, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda7;

    invoke-direct {p5, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda7;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {p1, p3, p4, p2, p5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->loadPageMediaData(JILcom/luck/picture/lib/listener/OnQueryDataResultListener;)V

    goto :goto_2

    .line 1418
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, p6}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindData(Ljava/util/List;)V

    .line 1419
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mRecyclerView:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->smoothScrollToPosition(I)V

    .line 1421
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget p2, Lcom/luck/picture/lib/R$id;->view_tag:I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1422
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->dismiss()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 2359
    :cond_0
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    if-eqz p2, :cond_1

    .line 2360
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-interface {p2, v0, v1, p1}, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;->onCameraClick(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;I)V

    .line 2361
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result p2

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    goto :goto_0

    .line 2363
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraVideo()V

    goto :goto_0

    .line 2351
    :cond_2
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    if-eqz p2, :cond_3

    .line 2352
    sget-object p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-interface {p2, v0, v1, p1}, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;->onCameraClick(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;I)V

    .line 2353
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result p2

    iput p2, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    goto :goto_0

    .line 2355
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraImage()V

    :goto_0
    return-void
.end method

.method public onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 2

    .line 1500
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isSingleDirectReturn:Z

    if-eqz v0, :cond_1

    .line 1501
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enableCrop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    if-nez v0, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->bindSelectData(Ljava/util/List;)V

    .line 1505
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/luck/picture/lib/manager/UCropManager;->ofCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_0
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->handlerResult(Ljava/util/List;)V

    goto :goto_0

    .line 1510
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getData()Ljava/util/List;

    move-result-object p1

    .line 1511
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->startPreview(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onPictureClick(Ljava/lang/Object;I)V
    .locals 0

    .line 87
    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    return-void
.end method

.method public onRecyclerViewPreloadMore()V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->loadMoreData()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 2374
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/PictureBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2395
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v2

    if-nez p1, :cond_1

    .line 2396
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCamera()V

    goto :goto_0

    .line 2398
    :cond_1
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    .line 2399
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2398
    invoke-virtual {p0, v2, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2387
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v2

    if-nez p1, :cond_3

    .line 2388
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->onTakePhoto()V

    goto :goto_0

    :cond_3
    const-string p1, "android.permission.CAMERA"

    .line 2390
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_camera:I

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2378
    :cond_4
    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v2

    if-nez p1, :cond_5

    .line 2379
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->readLocalMedia()V

    goto :goto_0

    .line 2381
    :cond_5
    filled-new-array {v0, p2}, [Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    .line 2382
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2381
    invoke-virtual {p0, v2, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 132
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onResume()V

    .line 133
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isEnterSetting:Z

    if-eqz v0, :cond_2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 135
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->readLocalMedia()V

    goto :goto_0

    .line 140
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$string;->picture_jurisdiction:I

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->isEnterSetting:Z

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mCbOriginal:Landroid/widget/CheckBox;

    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 571
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 572
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_1

    const-string v1, "oldCurrentListSize"

    .line 574
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSize()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolder(I)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v0

    const-string v1, "all_folder_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 582
    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureSelector;->saveSelectorList(Landroid/os/Bundle;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onTakePhoto()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    .line 1460
    invoke-static {p0, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCamera()V

    goto :goto_0

    .line 1463
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 1464
    invoke-static {p0, v0, v1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public playOrPause()V
    .locals 1

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1374
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected readLocalMedia()V
    .locals 2

    .line 702
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->showPleaseDialog()V

    .line 703
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getInstance(Landroid/content/Context;)Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda5;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->loadAllMedia(Lcom/luck/picture/lib/listener/OnQueryDataResultListener;)V

    goto :goto_0

    .line 715
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    :goto_0
    return-void
.end method

.method protected showPermissionsDialog(Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2407
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2410
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onPermissionsObtainCallback:Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    if-eqz v0, :cond_1

    .line 2411
    sget-object v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onPermissionsObtainCallback:Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/luck/picture/lib/PictureSelectorActivity$7;

    invoke-direct {v6, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$7;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/luck/picture/lib/listener/OnPermissionsObtainCallback;->onPermissionsIntercept(Landroid/content/Context;Z[Ljava/lang/String;Ljava/lang/String;Lcom/luck/picture/lib/listener/OnPermissionDialogOptionCallback;)V

    return-void

    .line 2427
    :cond_1
    new-instance p2, Lcom/luck/picture/lib/dialog/PictureCustomDialog;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$layout;->picture_wind_base_dialog:I

    invoke-direct {p2, v0, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2428
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->setCancelable(Z)V

    .line 2429
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 2430
    sget v0, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2431
    sget v1, Lcom/luck/picture/lib/R$id;->btn_commit:I

    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2432
    sget v2, Lcom/luck/picture/lib/R$string;->picture_go_setting:I

    invoke-virtual {p0, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2433
    sget v2, Lcom/luck/picture/lib/R$id;->tvTitle:I

    invoke-virtual {p2, v2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2434
    sget v3, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {p2, v3}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2435
    sget v4, Lcom/luck/picture/lib/R$string;->picture_prompt:I

    invoke-virtual {p0, v4}, Lcom/luck/picture/lib/PictureSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2436
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2437
    new-instance p3, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p2, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;Z)V

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2448
    new-instance p1, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/luck/picture/lib/PictureSelectorActivity$$ExternalSyntheticLambda2;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Lcom/luck/picture/lib/dialog/PictureCustomDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2455
    invoke-virtual {p2}, Lcom/luck/picture/lib/dialog/PictureCustomDialog;->show()V

    return-void
.end method

.method public startCamera()V
    .locals 4

    .line 895
    invoke-static {}, Lcom/luck/picture/lib/tools/DoubleUtils;->isFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_7

    .line 896
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    const-string v1, "PhotoItemSelectedDialog"

    if-eqz v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-nez v0, :cond_0

    .line 898
    invoke-static {}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->newInstance()Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->setOnItemClickListener(Lcom/luck/picture/lib/listener/OnItemClickListener;)V

    .line 900
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_0
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomCameraInterfaceListener:Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-interface {v0, v1, v2, v3}, Lcom/luck/picture/lib/listener/OnCustomCameraInterfaceListener;->onCameraClick(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;I)V

    .line 903
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    iput v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->cameraMimeType:I

    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 908
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isUseCustomCamera:Z

    if-eqz v0, :cond_2

    .line 909
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startCustomCamera()V

    return-void

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 926
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraAudio()V

    goto :goto_1

    .line 923
    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraVideo()V

    goto :goto_1

    .line 920
    :cond_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->startOpenCameraImage()V

    goto :goto_1

    .line 915
    :cond_6
    invoke-static {}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->newInstance()Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;

    move-result-object v0

    .line 916
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->setOnItemClickListener(Lcom/luck/picture/lib/listener/OnItemClickListener;)V

    .line 917
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/luck/picture/lib/dialog/PhotoItemSelectedDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public startPreview(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;I)V"
        }
    .end annotation

    .line 1522
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 1523
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 1524
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1525
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1528
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v5, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->enPreviewVideo:Z

    if-nez p1, :cond_0

    .line 1529
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1530
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1532
    :cond_0
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->customVideoPlayCallback:Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;

    if-eqz p1, :cond_1

    .line 1533
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->customVideoPlayCallback:Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/listener/OnVideoSelectedPlayCallback;->startPlayVideo(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "mediaKey"

    .line 1535
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1536
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xa6

    invoke-static {p1, v2, p2}, Lcom/luck/picture/lib/tools/JumpUtils;->startPictureVideoPlayActivity(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_1

    .line 1539
    :cond_2
    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1541
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne p1, v5, :cond_3

    .line 1542
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->onResult(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1545
    :cond_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->startPlayAudioDialog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1549
    :cond_4
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomImagePreviewCallback:Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    if-eqz v0, :cond_5

    .line 1550
    sget-object v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->onCustomImagePreviewCallback:Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/luck/picture/lib/listener/OnCustomImagePreviewCallback;->onCustomPreviewCallback(Landroid/content/Context;Ljava/util/List;I)V

    return-void

    .line 1553
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getSelectedData()Ljava/util/List;

    move-result-object v0

    .line 1554
    invoke-static {}, Lcom/luck/picture/lib/observable/ImagesObservable;->getInstance()Lcom/luck/picture/lib/observable/ImagesObservable;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/observable/ImagesObservable;->saveData(Ljava/util/List;)V

    const-string p1, "selectList"

    .line 1555
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p1, "position"

    .line 1556
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1557
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    const-string p2, "isOriginal"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1558
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isShowCamera()Z

    move-result p1

    const-string p2, "isShowCamera"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1559
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget p2, Lcom/luck/picture/lib/R$id;->view_tag:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/ValueOf;->toLong(Ljava/lang/Object;)J

    move-result-wide p1

    const-string v0, "bucket_id"

    invoke-virtual {v2, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "page"

    .line 1560
    iget p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mPage:I

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PictureSelectorConfig"

    .line 1561
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1562
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    sget p2, Lcom/luck/picture/lib/R$id;->view_count_tag:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/tools/ValueOf;->toInt(Ljava/lang/Object;)I

    move-result p1

    const-string p2, "count"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1563
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mTvPictureTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentDirectory"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWeChatStyle:Z

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->selectionMode:I

    if-ne v0, v5, :cond_6

    const/16 v0, 0x45

    goto :goto_0

    :cond_6
    const/16 v0, 0x261

    :goto_0
    invoke-static {p1, p2, v2, v0}, Lcom/luck/picture/lib/tools/JumpUtils;->startPicturePreviewActivity(Landroid/content/Context;ZLandroid/os/Bundle;I)V

    .line 1566
    sget-object p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->windowAnimationStyle:Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    iget p1, p1, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    sget p2, Lcom/luck/picture/lib/R$anim;->picture_anim_fade_in:I

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public stop(Ljava/lang/String;)V
    .locals 2

    .line 1351
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1353
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1354
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1355
    invoke-static {p1}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1360
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 1361
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
