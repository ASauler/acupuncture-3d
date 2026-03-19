.class public Lcom/luck/picture/lib/compress/Luban;
.super Ljava/lang/Object;
.source "Luban.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/compress/Luban$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Luban"


# instance fields
.field private final compressQuality:I

.field private final dataCount:I

.field private final focusAlpha:Z

.field private index:I

.field private final isAutoRotating:Z

.field private final isCamera:Z

.field private final mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

.field private final mCompressionPredicate:Lcom/luck/picture/lib/compress/CompressionPredicate;

.field private final mLeastCompressSize:I

.field private final mNewFileName:Ljava/lang/String;

.field private final mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenameListener:Lcom/luck/picture/lib/compress/OnRenameListener;

.field private final mStreamProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/compress/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDir:Ljava/lang/String;

.field private final mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/luck/picture/lib/compress/Luban$Builder;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    .line 47
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$000(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    .line 48
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$100(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mediaList:Ljava/util/List;

    .line 49
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$200(Lcom/luck/picture/lib/compress/Luban$Builder;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/compress/Luban;->dataCount:I

    .line 50
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$300(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$400(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mNewFileName:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$500(Lcom/luck/picture/lib/compress/Luban$Builder;)Lcom/luck/picture/lib/compress/OnRenameListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mRenameListener:Lcom/luck/picture/lib/compress/OnRenameListener;

    .line 53
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$600(Lcom/luck/picture/lib/compress/Luban$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mStreamProviders:Ljava/util/List;

    .line 54
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$700(Lcom/luck/picture/lib/compress/Luban$Builder;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    .line 55
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$800(Lcom/luck/picture/lib/compress/Luban$Builder;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    .line 56
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$900(Lcom/luck/picture/lib/compress/Luban$Builder;)Lcom/luck/picture/lib/compress/CompressionPredicate;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressionPredicate:Lcom/luck/picture/lib/compress/CompressionPredicate;

    .line 57
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$1000(Lcom/luck/picture/lib/compress/Luban$Builder;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    .line 58
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$1100(Lcom/luck/picture/lib/compress/Luban$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    .line 59
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$1200(Lcom/luck/picture/lib/compress/Luban$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    .line 60
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban$Builder;->access$1300(Lcom/luck/picture/lib/compress/Luban$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/luck/picture/lib/compress/Luban;->isCamera:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/luck/picture/lib/compress/Luban$Builder;Lcom/luck/picture/lib/compress/Luban$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;-><init>(Lcom/luck/picture/lib/compress/Luban$Builder;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/luck/picture/lib/compress/Luban;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    return p0
.end method

.method static synthetic access$1402(Lcom/luck/picture/lib/compress/Luban;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    return p1
.end method

.method static synthetic access$1408(Lcom/luck/picture/lib/compress/Luban;)I
    .locals 2

    .line 27
    iget v0, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/luck/picture/lib/compress/Luban;->index:I

    return v0
.end method

.method static synthetic access$1500(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/Luban;->compress(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/luck/picture/lib/compress/Luban;)Ljava/util/List;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban;->mediaList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/luck/picture/lib/compress/Luban;)Lcom/luck/picture/lib/compress/OnCompressListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;->launch(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/luck/picture/lib/compress/Luban;Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/Luban;->get(Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/luck/picture/lib/compress/Luban;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/Luban;->get(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private compress(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 263
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/Luban;->compressRealLocalMedia(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    .line 266
    throw p1
.end method

.method private compressReal(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Checker;->extSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, p1, p2, v0}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/luck/picture/lib/compress/Luban;->mRenameListener:Lcom/luck/picture/lib/compress/OnRenameListener;

    if-eqz v2, :cond_1

    .line 274
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/luck/picture/lib/compress/OnRenameListener;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/compress/Luban;->getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :cond_1
    move-object v5, v1

    .line 278
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressionPredicate:Lcom/luck/picture/lib/compress/CompressionPredicate;

    if-eqz v1, :cond_3

    .line 279
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/luck/picture/lib/compress/CompressionPredicate;->apply(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    iget v1, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    .line 280
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/compress/Checker;->needCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Lcom/luck/picture/lib/compress/Engine;

    iget-boolean v6, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v7, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v8, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    .line 283
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, ".gif"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_4
    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    iget v1, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/luck/picture/lib/compress/Checker;->needCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/luck/picture/lib/compress/Engine;

    iget-boolean v6, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v7, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v8, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    .line 291
    invoke-virtual {v0}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/io/File;

    .line 292
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object p1
.end method

.method private compressRealLocalMedia(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v8, v2

    .line 302
    sget-object v2, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/compress/Checker;->extSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-direct {p0, p1, p2, v2}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 305
    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban;->mNewFileName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 306
    iget-boolean v4, p0, Lcom/luck/picture/lib/compress/Luban;->isCamera:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/luck/picture/lib/compress/Luban;->dataCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/luck/picture/lib/compress/Luban;->mNewFileName:Ljava/lang/String;

    invoke-static {v4}, Lcom/luck/picture/lib/tools/StringUtils;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/luck/picture/lib/compress/Luban;->mNewFileName:Ljava/lang/String;

    .line 307
    :goto_2
    invoke-direct {p0, p1, v4}, Lcom/luck/picture/lib/compress/Luban;->getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v7, v4

    move-object v4, v5

    goto :goto_3

    :cond_3
    const-string v5, ""

    move-object v7, v5

    .line 310
    :goto_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    return-object v4

    .line 313
    :cond_4
    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressionPredicate:Lcom/luck/picture/lib/compress/CompressionPredicate;

    const-string v6, ".gif"

    if-eqz v5, :cond_d

    .line 314
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 316
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 318
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 320
    :cond_5
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v8

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v9

    move-object v0, p1

    move-wide v1, v4

    move v4, v6

    move v5, v8

    move-object v6, v9

    .line 320
    invoke-static/range {v0 .. v7}, Lcom/luck/picture/lib/tools/AndroidQTransformUtils;->copyPathToAndroidQ(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 325
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 328
    :cond_7
    sget-object v2, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    iget v5, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    invoke-virtual {v2, v5, v8}, Lcom/luck/picture/lib/compress/Checker;->needCompressToLocalMedia(ILjava/lang/String;)Z

    move-result v2

    .line 329
    iget-object v5, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressionPredicate:Lcom/luck/picture/lib/compress/CompressionPredicate;

    invoke-interface {v5, v8}, Lcom/luck/picture/lib/compress/CompressionPredicate;->apply(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    .line 330
    new-instance v7, Lcom/luck/picture/lib/compress/Engine;

    iget-boolean v5, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v6, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v8, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    invoke-virtual {v7}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object v0

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    .line 333
    new-instance v7, Lcom/luck/picture/lib/compress/Engine;

    iget-boolean v5, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v6, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v8, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    invoke-virtual {v7}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object v0

    :goto_4
    move-object v1, v0

    goto/16 :goto_b

    .line 336
    :cond_9
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 337
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 338
    :cond_a
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    .line 339
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v10

    move-object v0, p1

    move-wide v1, v4

    move v4, v6

    move v5, v9

    move-object v6, v10

    .line 338
    invoke-static/range {v0 .. v7}, Lcom/luck/picture/lib/tools/AndroidQTransformUtils;->copyPathToAndroidQ(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_5
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    move-object v8, v0

    :goto_6
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 342
    :cond_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 348
    :cond_d
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 350
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 351
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 352
    :cond_e
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    .line 353
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v10

    move-object v0, p1

    move-wide v1, v4

    move v4, v6

    move v5, v9

    move-object v6, v10

    .line 352
    invoke-static/range {v0 .. v7}, Lcom/luck/picture/lib/tools/AndroidQTransformUtils;->copyPathToAndroidQ(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    :goto_7
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    move-object v8, v0

    :goto_8
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 356
    :cond_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 359
    :cond_11
    sget-object v2, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    iget v5, p0, Lcom/luck/picture/lib/compress/Luban;->mLeastCompressSize:I

    invoke-virtual {v2, v5, v8}, Lcom/luck/picture/lib/compress/Checker;->needCompressToLocalMedia(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 361
    new-instance v7, Lcom/luck/picture/lib/compress/Engine;

    iget-boolean v5, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v6, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v8, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    invoke-virtual {v7}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object v1

    goto :goto_b

    .line 364
    :cond_12
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 365
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 366
    :cond_13
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v4

    .line 367
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v10

    move-object v0, p1

    move-wide v1, v4

    move v4, v6

    move v5, v9

    move-object v6, v10

    .line 366
    invoke-static/range {v0 .. v7}, Lcom/luck/picture/lib/tools/AndroidQTransformUtils;->copyPathToAndroidQ(Landroid/content/Context;JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    :goto_9
    new-instance v1, Ljava/io/File;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    move-object v8, v0

    :goto_a
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_b

    .line 370
    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_b
    return-object v1
.end method

.method private get(Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :try_start_0
    new-instance v7, Lcom/luck/picture/lib/compress/Engine;

    sget-object v0, Lcom/luck/picture/lib/compress/Checker;->SINGLE:Lcom/luck/picture/lib/compress/Checker;

    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/compress/Checker;->extSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheFile(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lcom/luck/picture/lib/compress/Luban;->focusAlpha:Z

    iget v5, p0, Lcom/luck/picture/lib/compress/Luban;->compressQuality:I

    iget-boolean v6, p0, Lcom/luck/picture/lib/compress/Luban;->isAutoRotating:Z

    move-object v0, v7

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/luck/picture/lib/compress/Engine;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;ZIZ)V

    invoke-virtual {v7}, Lcom/luck/picture/lib/compress/Engine;->compress()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    .line 213
    throw p2
.end method

.method private get(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/compress/InputStreamProvider;

    .line 221
    invoke-interface {v2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-interface {v2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 227
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    if-eqz v5, :cond_2

    .line 228
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/luck/picture/lib/compress/Luban;->compress(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 231
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {v3, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    .line 233
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 238
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 240
    :cond_4
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_2

    :cond_5
    move v4, v5

    .line 241
    :goto_2
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v7

    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_3

    .line 242
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/luck/picture/lib/compress/Luban;->compress(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    if-eqz v2, :cond_c

    .line 244
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result v4

    .line 246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v4, :cond_8

    move v4, v6

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    if-nez v7, :cond_9

    if-nez v4, :cond_9

    move v5, v6

    .line 247
    :cond_9
    invoke-virtual {v3, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressed(Z)V

    if-nez v7, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    const/4 v2, 0x0

    .line 248
    :cond_b
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setCompressPath(Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 250
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->setAndroidQToPath(Ljava/lang/String;)V

    .line 253
    :cond_c
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_d
    return-object v0
.end method

.method private static getImageCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 115
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x6

    const-string v1, "Luban"

    .line 123
    invoke-static {v1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    .line 124
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method private getImageCacheFile(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getMedia()Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Lcom/luck/picture/lib/tools/StringUtils;->getEncryptionValue(JII)Ljava/lang/String;

    move-result-object p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ".jpg"

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "IMG_CMP_"

    .line 86
    invoke-static {p1}, Lcom/luck/picture/lib/tools/DateUtils;->getCreateFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p3, v2

    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "/IMG_CMP_"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p3, v2

    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 95
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private getImageCustomFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-static {p1}, Lcom/luck/picture/lib/compress/Luban;->getImageCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mTargetDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private launch(Landroid/content/Context;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mStreamProviders:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mPaths:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/Luban;->mStreamProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onStart()V

    .line 141
    :cond_1
    new-instance v1, Lcom/luck/picture/lib/compress/Luban$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/luck/picture/lib/compress/Luban$1;-><init>(Lcom/luck/picture/lib/compress/Luban;Ljava/util/Iterator;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;)V

    return-void

    .line 134
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/compress/Luban;->mCompressListener:Lcom/luck/picture/lib/compress/OnCompressListener;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "image file cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/luck/picture/lib/compress/Luban$Builder;
    .locals 1

    .line 64
    new-instance v0, Lcom/luck/picture/lib/compress/Luban$Builder;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/compress/Luban$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
