.class public final Lcom/luck/picture/lib/model/LocalMediaLoader;
.super Ljava/lang/Object;
.source "LocalMediaLoader.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FILE_SIZE_UNIT:J = 0x100000L

.field private static final NOT_GIF:Ljava/lang/String; = " AND (mime_type!=\'image/gif\' AND mime_type!=\'image/*\')"

.field private static final NOT_GIF_UNKNOWN:Ljava/lang/String; = "!=\'image/*\'"

.field private static final ORDER_BY:Ljava/lang/String; = "_id DESC"

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final QUERY_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "LocalMediaLoader"


# instance fields
.field private final config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

.field private final isAndroidQ:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "external"

    .line 34
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "duration"

    const-string v7, "_size"

    const-string v8, "bucket_display_name"

    const-string v9, "_display_name"

    const-string v10, "bucket_id"

    const-string v11, "date_added"

    .line 49
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->isAndroidQ:Z

    .line 122
    invoke-static {}, Lcom/luck/picture/lib/config/PictureSelectionConfig;->getInstance()Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    return-void
.end method

.method private getDurationCondition()Ljava/lang/String;
    .locals 8

    .line 369
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v0, v0

    .line 370
    :goto_0
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    .line 371
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    int-to-long v4, v4

    .line 372
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    const-string v4, "="

    :goto_1
    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    .line 373
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "%d <%s duration and duration <= %d"

    .line 370
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileSizeCondition()Ljava/lang/String;
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-wide v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMaxFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-wide v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMaxFileSize:J

    .line 383
    :goto_0
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-wide v6, v6, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMinFileSize:J

    .line 384
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-wide v6, v6, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterMinFileSize:J

    .line 385
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v2, v6, v2

    if-nez v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    const-string v2, "="

    :goto_1
    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    .line 386
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "%d <%s _size and _size <= %d"

    .line 383
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFallbackVersion:Z

    if-nez v0, :cond_3

    .line 324
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 326
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 334
    :cond_2
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 335
    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 338
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 342
    :cond_3
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 344
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 346
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_4

    .line 350
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 354
    :cond_6
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    if-eqz p3, :cond_7

    .line 355
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_7
    const-string p3, ""

    :goto_2
    invoke-virtual {v0, p3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 358
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getQueryMimeCondition()Ljava/lang/String;
    .locals 10

    .line 390
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->queryMimeTypeHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->specifiedFormat:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->specifiedFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    .line 400
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 401
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 402
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 405
    :cond_3
    iget-object v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v6

    const-string v7, "audio"

    const-string v8, "image"

    if-ne v5, v6, :cond_4

    .line 406
    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 409
    :cond_4
    iget-object v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v6

    const-string v9, "video"

    if-ne v5, v6, :cond_5

    .line 410
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 413
    :cond_5
    iget-object v5, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 414
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    const-string v5, " AND "

    goto :goto_1

    :cond_7
    const-string v5, " OR "

    .line 419
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mime_type=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 421
    :cond_8
    iget-object v2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 422
    iget-object v2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    if-nez v2, :cond_9

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofGIF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, " AND (mime_type!=\'image/gif\' AND mime_type!=\'image/*\')"

    .line 423
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelection()Ljava/lang/String;
    .locals 5

    .line 259
    invoke-direct {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getDurationCondition()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getFileSizeCondition()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-direct {p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getQueryMimeCondition()Ljava/lang/String;

    move-result-object v2

    .line 262
    iget-object v3, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 274
    :cond_0
    invoke-static {v0, v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForVideoOrAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 271
    :cond_1
    invoke-static {v1, v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForVideoOrAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_2
    invoke-static {v1, v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_0
    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_1
    invoke-static {v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2
    invoke-static {v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 283
    :cond_3
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgsForAllMediaType()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectionArgsForAllMediaCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " OR media_type=? AND "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 84
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ") AND "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForAllMediaType()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectionArgsForImageMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForSingleMediaType(I)[Ljava/lang/String;
    .locals 0

    .line 115
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSelectionArgsForVideoOrAudioMediaCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_type=?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$sortFolder$0(Lcom/luck/picture/lib/entity/LocalMediaFolder;Lcom/luck/picture/lib/entity/LocalMediaFolder;)I
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p0

    .line 308
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result p1

    .line 309
    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sortFolder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;)V"
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/luck/picture/lib/model/LocalMediaLoader$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/luck/picture/lib/model/LocalMediaLoader$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public loadAllMedia()Ljava/util/List;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 131
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/luck/picture/lib/model/LocalMediaLoader;->QUERY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/luck/picture/lib/model/LocalMediaLoader;->PROJECTION:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelection()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "_id DESC"

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 134
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance v5, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 136
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_10

    const/4 v7, 0x0

    .line 139
    aget-object v8, v0, v7

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    .line 140
    aget-object v10, v0, v9

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 141
    aget-object v11, v0, v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 142
    aget-object v12, v0, v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x4

    .line 143
    aget-object v13, v0, v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x5

    .line 144
    aget-object v14, v0, v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x6

    .line 145
    aget-object v15, v0, v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x7

    .line 146
    aget-object v3, v0, v16

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const/16 v16, 0x8

    .line 147
    aget-object v7, v0, v16

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const/16 v16, 0x9

    .line 148
    aget-object v9, v0, v16

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const/16 v16, 0xa

    .line 149
    aget-object v0, v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v16, v5

    move-object/from16 v35, v6

    .line 153
    :goto_0
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 154
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 155
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofJPEG()Ljava/lang/String;

    move-result-object v17

    :cond_0
    move/from16 v36, v8

    move-object/from16 v8, v17

    .line 156
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v37, v10

    .line 157
    iget-boolean v10, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->isAndroidQ:Z

    if-eqz v10, :cond_1

    invoke-static {v5, v6, v8}, Lcom/luck/picture/lib/config/PictureMimeType;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v38, v11

    goto :goto_1

    :cond_1
    move/from16 v38, v11

    move-object/from16 v10, v20

    :goto_1
    const-string v11, "image/*"

    .line 160
    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 161
    invoke-static {v10}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    invoke-static/range {v20 .. v20}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 164
    :cond_2
    invoke-static {v10}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    :goto_2
    iget-object v11, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v11, v11, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    if-nez v11, :cond_3

    .line 167
    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->isGif(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_3

    .line 173
    :cond_3
    iget-object v11, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v11, v11, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWebp:Z

    if-nez v11, :cond_4

    .line 174
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWEBP()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :goto_3
    move/from16 v41, v3

    move/from16 v42, v7

    move/from16 v39, v12

    move/from16 v40, v13

    :goto_4
    move v7, v14

    move/from16 v43, v15

    :goto_5
    move-object/from16 v6, v16

    move-object/from16 v5, v35

    goto/16 :goto_7

    .line 178
    :cond_4
    iget-object v11, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v11, v11, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isBmp:Z

    if-nez v11, :cond_5

    .line 179
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofBMP()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_3

    .line 184
    :cond_5
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 185
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 186
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move/from16 v39, v12

    .line 187
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move/from16 v40, v13

    .line 188
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 189
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 190
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move/from16 v41, v3

    .line 191
    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    const/16 v17, 0x0

    cmpl-float v3, v3, v17

    if-lez v3, :cond_6

    long-to-float v3, v11

    move/from16 v42, v7

    .line 192
    iget-object v7, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v7, v7, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    const/high16 v17, 0x49800000    # 1048576.0f

    mul-float v7, v7, v17

    cmpl-float v3, v3, v7

    if-lez v3, :cond_7

    goto :goto_4

    :cond_6
    move/from16 v42, v7

    .line 197
    :cond_7
    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 198
    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    if-lez v3, :cond_8

    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    move v7, v14

    move/from16 v43, v15

    int-to-long v14, v3

    cmp-long v3, v23, v14

    if-gez v3, :cond_9

    :goto_6
    goto :goto_5

    :cond_8
    move v7, v14

    move/from16 v43, v15

    .line 202
    :cond_9
    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    if-lez v3, :cond_a

    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v14, v3

    cmp-long v3, v23, v14

    if-lez v3, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v14, 0x0

    cmp-long v3, v23, v14

    if-nez v3, :cond_b

    goto :goto_6

    :cond_b
    cmp-long v3, v11, v14

    if-gtz v3, :cond_d

    goto :goto_6

    :cond_c
    move v7, v14

    move/from16 v43, v15

    .line 215
    :cond_d
    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    move-wide/from16 v17, v5

    move-object/from16 v19, v10

    move-object/from16 v22, v13

    move/from16 v25, v3

    move-object/from16 v26, v8

    move-wide/from16 v29, v11

    invoke-static/range {v17 .. v34}, Lcom/luck/picture/lib/entity/LocalMedia;->parseLocalMedia(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJJJ)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v3

    .line 216
    invoke-direct {v1, v10, v8, v13, v4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->getImageFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v5

    .line 217
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 218
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/List;

    move-result-object v6

    .line 219
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 221
    invoke-virtual {v3}, Lcom/luck/picture/lib/entity/LocalMedia;->getBucketId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    move-object/from16 v5, v35

    .line 222
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v3

    add-int/2addr v3, v8

    move-object/from16 v6, v16

    .line 224
    invoke-virtual {v6, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 226
    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 228
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 229
    invoke-direct {v1, v4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->sortFolder(Ljava/util/List;)V

    const/4 v3, 0x0

    .line 230
    invoke-interface {v4, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 233
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstMimeType(Ljava/lang/String;)V

    .line 234
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v3

    if-ne v0, v3, :cond_e

    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->mContext:Landroid/content/Context;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_e
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->mContext:Landroid/content/Context;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    .line 236
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_8
    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    .line 238
    invoke-virtual {v6, v7, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setBucketId(J)V

    .line 239
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaLoader;->config:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-virtual {v6, v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setOfAllType(I)V

    const/4 v8, 0x1

    .line 240
    invoke-virtual {v6, v8}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setCameraFolder(Z)V

    .line 241
    invoke-virtual {v6, v5}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :cond_f
    move-object/from16 v35, v5

    move-object/from16 v16, v6

    move v14, v7

    move/from16 v8, v36

    move/from16 v10, v37

    move/from16 v11, v38

    move/from16 v12, v39

    move/from16 v13, v40

    move/from16 v3, v41

    move/from16 v7, v42

    move/from16 v15, v43

    goto/16 :goto_0

    :cond_10
    :goto_9
    if-eqz v2, :cond_11

    .line 251
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_11
    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    .line 247
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    sget-object v3, Lcom/luck/picture/lib/model/LocalMediaLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAllMedia Data Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_12

    .line 251
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_12

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_12
    const/4 v2, 0x0

    return-object v2

    :goto_a
    if-eqz v2, :cond_13

    .line 251
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_13
    throw v0

    :cond_14
    if-eqz v2, :cond_15

    .line 251
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_15

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_15
    const/4 v2, 0x0

    return-object v2
.end method
