.class Lcom/luck/picture/lib/PictureBaseActivity$3;
.super Ljava/lang/Object;
.source "PictureBaseActivity.java"

# interfaces
.implements Lcom/luck/picture/lib/compress/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->compressToLuban(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureBaseActivity;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 404
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->val$result:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$3;->this$0:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onResult(Ljava/util/List;)V

    return-void
.end method
