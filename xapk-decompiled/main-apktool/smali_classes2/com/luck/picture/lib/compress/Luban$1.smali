.class Lcom/luck/picture/lib/compress/Luban$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/Luban;->launch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask<",
        "Ljava/util/List<",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/compress/Luban;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/compress/Luban;Ljava/util/Iterator;Landroid/content/Context;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$iterator:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/luck/picture/lib/compress/Luban$1;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/compress/Luban;->access$1402(Lcom/luck/picture/lib/compress/Luban;I)I

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->access$1408(Lcom/luck/picture/lib/compress/Luban;)I

    .line 150
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/compress/InputStreamProvider;

    .line 152
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 154
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Ljava/io/File;

    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v5, v0}, Lcom/luck/picture/lib/compress/Luban;->access$1500(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_5

    .line 157
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 160
    :cond_2
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 161
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 163
    :cond_3
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/io/File;

    .line 164
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$context:Landroid/content/Context;

    invoke-static {v2, v5, v0}, Lcom/luck/picture/lib/compress/Luban;->access$1500(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_5

    .line 166
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    .line 170
    :goto_4
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 171
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/Luban;->access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v5}, Lcom/luck/picture/lib/compress/Luban;->access$1400(Lcom/luck/picture/lib/compress/Luban;)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 172
    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v5

    .line 173
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_5

    :cond_6
    move v7, v3

    :goto_5
    invoke-virtual {v2, v7}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    if-nez v5, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    move-object v0, v1

    .line 175
    :cond_8
    invoke-virtual {v2, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->access$1400(Lcom/luck/picture/lib/compress/Luban;)I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/Luban;->access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_a

    move v3, v4

    :cond_a
    if-eqz v3, :cond_b

    .line 179
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :cond_b
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_c
    return-object v1
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/compress/Luban$1;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    .line 193
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->access$1700(Lcom/luck/picture/lib/compress/Luban;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {v0}, Lcom/luck/picture/lib/compress/Luban;->access$1700(Lcom/luck/picture/lib/compress/Luban;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/compress/Luban$1;->this$0:Lcom/luck/picture/lib/compress/Luban;

    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban;->access$1700(Lcom/luck/picture/lib/compress/Luban;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object p1

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Failed to compress file"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
