.class public Lcom/yalantis/ucrop/PictureMultiCuttingActivity;
.super Lcom/yalantis/ucrop/UCropActivity;
.source "PictureMultiCuttingActivity.java"


# static fields
.field private static final MIN_NUM:I = 0x1


# instance fields
.field private cutIndex:I

.field private isAnimation:Z

.field private isCamera:Z

.field private isWithVideoImage:Z

.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private oldCutIndex:I

.field private renameCropFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/yalantis/ucrop/UCropActivity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    return p0
.end method

.method static synthetic access$102(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetLastCropStatus()V

    return-void
.end method

.method static synthetic access$302(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->oldCutIndex:I

    return p1
.end method

.method private addPhotoRecyclerView()V
    .locals 6

    .line 79
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.yalantis.ucrop.skip_multiple_crop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    sget v3, Lcom/luck/picture/lib/R$id;->id_recycler:I

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 82
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v3, Lcom/luck/picture/lib/R$color;->ucrop_color_widget_background:I

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 83
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42a00000    # 80.0f

    .line 85
    invoke-static {p0, v3}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    iget-object v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 89
    iget-boolean v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isAnimation:Z

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/luck/picture/lib/R$anim;->ucrop_layout_animation_fall_down:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 97
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetCutDataStatus()V

    .line 98
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 99
    new-instance v1, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    .line 100
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    new-instance v1, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity$1;-><init>(Lcom/yalantis/ucrop/PictureMultiCuttingActivity;)V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->setOnItemClickListener(Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$OnItemClickListener;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->uCropPhotoBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->changeLayoutParams(Z)V

    .line 123
    sget v0, Lcom/luck/picture/lib/R$id;->ucrop_frame:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->id_recycler:I

    const/4 v2, 0x2

    .line 125
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 128
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->controls_wrapper:I

    .line 129
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method private changeLayoutParams(Z)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0xc

    if-eqz p1, :cond_1

    .line 259
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 262
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/luck/picture/lib/R$id;->wrapper_controls:I

    .line 263
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 267
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 268
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    return-void
.end method

.method private getIndex(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iput v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private initLoadCutData()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 233
    iget-boolean v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isWithVideoImage:Z

    if-eqz v1, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIndex(I)V

    :cond_1
    return-void

    .line 229
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->onBackPressed()V

    return-void
.end method

.method private refreshPhotoRecyclerData()V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetCutDataStatus()V

    .line 184
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 185
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->notifyItemChanged(I)V

    .line 186
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->uCropPhotoBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 188
    iget-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mShowBottomControls:Z

    invoke-direct {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->changeLayoutParams(Z)V

    .line 191
    sget v0, Lcom/luck/picture/lib/R$id;->ucrop_frame:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 192
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->id_recycler:I

    const/4 v2, 0x2

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 195
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/luck/picture/lib/R$id;->controls_wrapper:I

    .line 196
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method private resetCutDataStatus()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 218
    iget-object v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 219
    invoke-virtual {v3, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetLastCropStatus()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 205
    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->oldCutIndex:I

    if-le v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 207
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 51
    invoke-super {p0, p1}, Lcom/yalantis/ucrop/UCropActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.yalantis.ucrop.RenameCropFileName"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->renameCropFilename:Ljava/lang/String;

    const-string v0, "com.yalantis.ucrop.isCamera"

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isCamera:Z

    const-string v0, "com.yalantis.ucrop.isWithVideoImage"

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isWithVideoImage:Z

    .line 60
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.yalantis.ucrop.cuts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ".isMultipleAnimation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isAnimation:Z

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object p1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->initLoadCutData()V

    .line 71
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->addPhotoRecyclerView()V

    :cond_1
    return-void

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->onBackPressed()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mAdapter:Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 329
    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter;->setOnItemClickListener(Lcom/yalantis/ucrop/PicturePhotoGalleryAdapter$OnItemClickListener;)V

    .line 331
    :cond_0
    invoke-super {p0}, Lcom/yalantis/ucrop/UCropActivity;->onDestroy()V

    return-void
.end method

.method protected resetCutData()V
    .locals 8

    .line 136
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->uCropPhotoBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 137
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->uCropPhotoBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mBlockingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$layout;->ucrop_activity_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setContentView(I)V

    .line 142
    sget v0, Lcom/luck/picture/lib/R$id;->ucrop_photobox:I

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->uCropPhotoBox:Landroid/widget/RelativeLayout;

    .line 143
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->addBlockingView()V

    .line 144
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    iget v3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 150
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v4

    .line 152
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/luck/picture/lib/tools/PictureFileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v3

    .line 152
    :goto_0
    invoke-static {v5}, Lcom/luck/picture/lib/config/PictureMimeType;->getLastImgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_4

    .line 156
    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 158
    :cond_5
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :goto_2
    const-string v3, "com.yalantis.ucrop.InputUri"

    .line 160
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v2}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 163
    :goto_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->renameCropFilename:Ljava/lang/String;

    .line 165
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMG_CROP_"

    invoke-static {v6}, Lcom/luck/picture/lib/tools/DateUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_7
    iget-boolean v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isCamera:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->renameCropFilename:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->renameCropFilename:Ljava/lang/String;

    invoke-static {v4}, Lcom/luck/picture/lib/tools/PictureFileUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "com.yalantis.ucrop.OutputUri"

    .line 163
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setupViews(Landroid/content/Intent;)V

    .line 168
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->refreshPhotoRecyclerData()V

    .line 169
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setImageData(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setInitialState()V

    .line 171
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    mul-int/2addr v0, v2

    int-to-double v2, v0

    .line 172
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mScreenWidth:I

    int-to-double v4, v0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    const/4 v4, 0x0

    if-lez v0, :cond_9

    .line 173
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    .line 174
    :cond_9
    iget v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mScreenWidth:I

    int-to-double v0, v0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v5

    cmpg-double v0, v2, v0

    if-gez v0, :cond_a

    .line 175
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, -0x3d900000    # -60.0f

    invoke-static {p0, v1}, Lcom/luck/picture/lib/tools/ScreenUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_a
    :goto_5
    return-void
.end method

.method protected setResultUri(Landroid/net/Uri;FIIII)V
    .locals 2

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    if-ge v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->onBackPressed()V

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 281
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCutPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 282
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    .line 283
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropResultAspectRatio(F)V

    .line 284
    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetX(I)V

    .line 285
    invoke-virtual {v0, p4}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropOffsetY(I)V

    .line 286
    invoke-virtual {v0, p5}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageWidth(I)V

    .line 287
    invoke-virtual {v0, p6}, Lcom/luck/picture/lib/entity/LocalMedia;->setCropImageHeight(I)V

    .line 288
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetLastCropStatus()V

    .line 290
    iget p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    .line 291
    iget-boolean p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->isWithVideoImage:Z

    if-eqz p3, :cond_4

    .line 292
    iget-object p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    iget-object p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    iget p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 295
    :goto_1
    iget p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    iget-object p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_2

    goto :goto_2

    .line 299
    :cond_2
    iget-object p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    iget p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 300
    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasImage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    .line 305
    :cond_3
    iget p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    goto :goto_1

    .line 310
    :cond_4
    :goto_2
    iget p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->cutIndex:I

    iput p2, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->oldCutIndex:I

    .line 311
    iget-object p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_7

    const/4 p2, 0x0

    move p3, p2

    .line 312
    :goto_3
    iget-object p4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_6

    .line 313
    iget-object p4, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 314
    invoke-virtual {p4}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    move p5, p1

    goto :goto_4

    :cond_5
    move p5, p2

    :goto_4
    invoke-virtual {p4, p5}, Lcom/luck/picture/lib/entity/LocalMedia;->setCut(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 316
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.yalantis.ucrop.OutputUriList"

    iget-object p3, p0, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->setResult(ILandroid/content/Intent;)V

    .line 317
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->onBackPressed()V

    goto :goto_5

    .line 319
    :cond_7
    invoke-virtual {p0}, Lcom/yalantis/ucrop/PictureMultiCuttingActivity;->resetCutData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method
