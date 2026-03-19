.class Lcom/luck/picture/lib/PictureSelectorActivity$2;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "PictureSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureSelectorActivity;->synchronousCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorActivity;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity$2;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Boolean;
    .locals 6

    .line 791
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity$2;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorActivity;->folderWindow:Lcom/luck/picture/lib/widget/FolderPopWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/FolderPopWindow;->getFolderData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 792
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 793
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 797
    :cond_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity$2;->this$0:Lcom/luck/picture/lib/PictureSelectorActivity;

    .line 798
    invoke-virtual {v3}, Lcom/luck/picture/lib/PictureSelectorActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getInstance(Landroid/content/Context;)Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getBucketId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->getFirstCover(J)Ljava/lang/String;

    move-result-object v3

    .line 799
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 802
    :cond_1
    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 804
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity$2;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Ljava/lang/Boolean;)V
    .locals 0

    .line 810
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 787
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$2;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
