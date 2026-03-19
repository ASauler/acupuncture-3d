.class Lcom/syanpicker/GlideEngine$1;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;
.source "GlideEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syanpicker/GlideEngine;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Lcom/luck/picture/lib/listener/OnImageCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syanpicker/GlideEngine;

.field final synthetic val$callback:Lcom/luck/picture/lib/listener/OnImageCompleteCallback;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;


# direct methods
.method constructor <init>(Lcom/syanpicker/GlideEngine;Landroid/widget/ImageView;Lcom/luck/picture/lib/listener/OnImageCompleteCallback;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/syanpicker/GlideEngine$1;->this$0:Lcom/syanpicker/GlideEngine;

    iput-object p3, p0, Lcom/syanpicker/GlideEngine$1;->val$callback:Lcom/luck/picture/lib/listener/OnImageCompleteCallback;

    iput-object p4, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    iput-object p5, p0, Lcom/syanpicker/GlideEngine$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object p1, p0, Lcom/syanpicker/GlideEngine$1;->val$callback:Lcom/luck/picture/lib/listener/OnImageCompleteCallback;

    if-eqz p1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/luck/picture/lib/listener/OnImageCompleteCallback;->onHideLoading()V

    :cond_0
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object p1, p0, Lcom/syanpicker/GlideEngine$1;->val$callback:Lcom/luck/picture/lib/listener/OnImageCompleteCallback;

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1}, Lcom/luck/picture/lib/listener/OnImageCompleteCallback;->onShowLoading()V

    :cond_0
    return-void
.end method

.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$callback:Lcom/luck/picture/lib/listener/OnImageCompleteCallback;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/luck/picture/lib/listener/OnImageCompleteCallback;->onHideLoading()V

    :cond_0
    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 87
    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/MediaUtils;->isLongImg(II)Z

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/syanpicker/GlideEngine$1;->val$imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDuration(I)V

    .line 97
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 98
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 99
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$longImageView:Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;

    invoke-static {p1}, Lcom/luck/picture/lib/widget/longimage/ImageSource;->bitmap(Landroid/graphics/Bitmap;)Lcom/luck/picture/lib/widget/longimage/ImageSource;

    move-result-object p1

    new-instance v1, Lcom/luck/picture/lib/widget/longimage/ImageViewState;

    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v4, v2, v3}, Lcom/luck/picture/lib/widget/longimage/ImageViewState;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {v0, p1, v1}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setImage(Lcom/luck/picture/lib/widget/longimage/ImageSource;Lcom/luck/picture/lib/widget/longimage/ImageViewState;)V

    goto :goto_2

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    .line 64
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/syanpicker/GlideEngine$1;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
