.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;
.super Ljava/lang/Object;
.source "PictureExternalPreviewActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;->initViewPageAdapterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$100(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_preview_image_num:I

    add-int/lit8 v3, p1, 0x1

    .line 151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v4}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$000(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 150
    invoke-virtual {v1, v2, v3}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$1;->this$0:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->access$202(Lcom/luck/picture/lib/PictureExternalPreviewActivity;I)I

    return-void
.end method
