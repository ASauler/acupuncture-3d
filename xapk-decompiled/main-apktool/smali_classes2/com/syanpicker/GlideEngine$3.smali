.class Lcom/syanpicker/GlideEngine$3;
.super Lcom/bumptech/glide/request/target/BitmapImageViewTarget;
.source "GlideEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syanpicker/GlideEngine;->loadFolderImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syanpicker/GlideEngine;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/syanpicker/GlideEngine;Landroid/widget/ImageView;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/syanpicker/GlideEngine$3;->this$0:Lcom/syanpicker/GlideEngine;

    iput-object p3, p0, Lcom/syanpicker/GlideEngine$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/syanpicker/GlideEngine$3;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/BitmapImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method protected setResource(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$3;->val$context:Landroid/content/Context;

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    .line 176
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 177
    iget-object v0, p0, Lcom/syanpicker/GlideEngine$3;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    .line 170
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/syanpicker/GlideEngine$3;->setResource(Landroid/graphics/Bitmap;)V

    return-void
.end method
