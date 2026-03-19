.class Lcom/luck/picture/lib/PicturePreviewActivity$1;
.super Ljava/lang/Object;
.source "PicturePreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PicturePreviewActivity;->initWidgets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PicturePreviewActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 198
    iget-object p2, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, p2, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    invoke-static {p2, v0, p1, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$000(Lcom/luck/picture/lib/PicturePreviewActivity;ZII)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iput p1, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    .line 204
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$100(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    .line 205
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;->getItem(I)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->index:I

    .line 210
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->previewEggs:Z

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->checkNumMode:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->check:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/tools/ValueOf;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$200(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget v1, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->onImageChecked(I)V

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isOriginalControl:Z

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mCbOriginal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isDisplayOriginalSize:Z

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getSize()J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/luck/picture/lib/tools/PictureFileUtils;->formatFileSize(JI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->fileSize:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mCbOriginal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_original_image:I

    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v3, v3, Lcom/luck/picture/lib/PicturePreviewActivity;->fileSize:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mCbOriginal:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_default_original_image:I

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isEditorImage:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mPictureEditor:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 230
    :cond_6
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->mPictureEditor:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->onPageSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 234
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isPageStrategy:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-boolean p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->isBottomPreview:Z

    if-nez p1, :cond_8

    .line 235
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-boolean p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->isHasMore:Z

    if-eqz p1, :cond_8

    .line 237
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, -0xa

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget p1, p1, Lcom/luck/picture/lib/PicturePreviewActivity;->position:I

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePreviewActivity;->adapter:Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureSimpleFragmentAdapter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    .line 238
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$1;->this$0:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->access$300(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    :cond_8
    return-void
.end method
