.class Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;
.super Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;
.source "LocalMediaPageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/model/LocalMediaPageLoader;->loadPageMediaData(JIIILcom/luck/picture/lib/listener/OnQueryDataResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask<",
        "Lcom/luck/picture/lib/entity/MediaData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

.field final synthetic val$bucketId:J

.field final synthetic val$limit:I

.field final synthetic val$listener:Lcom/luck/picture/lib/listener/OnQueryDataResultListener;

.field final synthetic val$page:I

.field final synthetic val$pageSize:I


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/model/LocalMediaPageLoader;JIIILcom/luck/picture/lib/listener/OnQueryDataResultListener;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    iput-wide p2, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$bucketId:J

    iput p4, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$limit:I

    iput p5, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$page:I

    iput p6, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$pageSize:I

    iput-object p7, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$listener:Lcom/luck/picture/lib/listener/OnQueryDataResultListener;

    invoke-direct {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/luck/picture/lib/entity/MediaData;
    .locals 42

    move-object/from16 v1, p0

    const-string v0, "_id DESC limit "

    const/4 v2, 0x0

    .line 254
    :try_start_0
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 255
    :try_start_1
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    iget-wide v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$bucketId:J

    invoke-static {v0, v5, v6}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$000(Lcom/luck/picture/lib/model/LocalMediaPageLoader;J)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    iget-wide v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$bucketId:J

    invoke-static {v3, v5, v6}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$100(Lcom/luck/picture/lib/model/LocalMediaPageLoader;J)[Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$limit:I

    iget v6, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$page:I

    sub-int/2addr v6, v4

    iget v7, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$pageSize:I

    mul-int/2addr v6, v7

    invoke-static {v0, v3, v5, v6}, Lcom/luck/picture/lib/tools/MediaUtils;->createQueryArgsBundle(Ljava/lang/String;[Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v0

    .line 256
    iget-object v3, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v3}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$400(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$200()Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v0, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_b

    .line 258
    :cond_0
    :try_start_2
    iget v3, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$page:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    :try_start_3
    const-string v0, "_id DESC"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$limit:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$page:I

    sub-int/2addr v3, v4

    iget v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$pageSize:I

    mul-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :goto_1
    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v0}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$400(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$200()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    iget-wide v8, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$bucketId:J

    invoke-static {v0, v8, v9}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$000(Lcom/luck/picture/lib/model/LocalMediaPageLoader;J)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    iget-wide v11, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$bucketId:J

    invoke-static {v0, v11, v12}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$100(Lcom/luck/picture/lib/model/LocalMediaPageLoader;J)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    move-object v3, v0

    if-eqz v3, :cond_15

    .line 262
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_12

    .line 264
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 265
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 266
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 267
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 268
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    aget-object v10, v10, v11

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 269
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x5

    aget-object v11, v11, v12

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 270
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    aget-object v12, v12, v13

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 271
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    aget-object v13, v13, v14

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 272
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    aget-object v14, v14, v15

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 273
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x9

    aget-object v15, v15, v16

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 274
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$300()[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xa

    aget-object v4, v16, v17

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 275
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move/from16 v17, v7

    .line 277
    :goto_3
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 278
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 279
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofJPEG()Ljava/lang/String;

    move-result-object v18

    :cond_2
    move-object/from16 v2, v18

    move/from16 v41, v17

    move/from16 v17, v5

    move/from16 v5, v41

    .line 280
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 281
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {v6, v7, v2}, Lcom/luck/picture/lib/config/PictureMimeType;->getRealPathUri(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move/from16 v36, v5

    move-object/from16 v20, v18

    goto :goto_4

    :cond_3
    move/from16 v36, v5

    move-object/from16 v20, v21

    .line 282
    :goto_4
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isFilterInvalidFile:Z

    if-eqz v5, :cond_4

    .line 283
    invoke-static/range {v21 .. v21}, Lcom/luck/picture/lib/tools/PictureFileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_5
    move/from16 v38, v8

    move/from16 v37, v9

    move/from16 v39, v10

    :goto_6
    move/from16 v40, v11

    goto/16 :goto_8

    :cond_4
    const-string v5, "image/*"

    .line 289
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 290
    invoke-static/range {v20 .. v20}, Lcom/luck/picture/lib/config/PictureMimeType;->isContent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 291
    invoke-static/range {v21 .. v21}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 293
    :cond_5
    invoke-static/range {v20 .. v20}, Lcom/luck/picture/lib/config/PictureMimeType;->getImageMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    :goto_7
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isGif:Z

    if-nez v5, :cond_6

    .line 296
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isGif(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_5

    .line 301
    :cond_6
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isWebp:Z

    if-nez v5, :cond_7

    .line 302
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofWEBP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 306
    :cond_7
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget-boolean v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->isBmp:Z

    if-nez v5, :cond_8

    .line 307
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofBMP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_5

    .line 311
    :cond_8
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 312
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 313
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move v5, v8

    move/from16 v37, v9

    .line 314
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 315
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 316
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 317
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    move/from16 v38, v5

    .line 319
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    const/16 v18, 0x0

    cmpl-float v5, v5, v18

    if-lez v5, :cond_9

    long-to-float v5, v8

    move/from16 v39, v10

    .line 320
    iget-object v10, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v10}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v10

    iget v10, v10, Lcom/luck/picture/lib/config/PictureSelectionConfig;->filterFileSize:F

    const/high16 v18, 0x49800000    # 1048576.0f

    mul-float v10, v10, v18

    cmpl-float v5, v5, v10

    if-lez v5, :cond_a

    goto/16 :goto_6

    :cond_9
    move/from16 v39, v10

    .line 325
    :cond_a
    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 326
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    if-lez v5, :cond_b

    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMinSecond:I

    move/from16 v40, v11

    int-to-long v10, v5

    cmp-long v5, v24, v10

    if-gez v5, :cond_c

    goto :goto_8

    :cond_b
    move/from16 v40, v11

    .line 330
    :cond_c
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    if-lez v5, :cond_d

    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->videoMaxSecond:I

    int-to-long v10, v5

    cmp-long v5, v24, v10

    if-lez v5, :cond_d

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v5, v24, v10

    if-nez v5, :cond_e

    goto :goto_8

    :cond_e
    cmp-long v5, v8, v10

    if-gtz v5, :cond_10

    goto :goto_8

    :cond_f
    move/from16 v40, v11

    .line 344
    :cond_10
    iget-object v5, v1, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaPageLoader;

    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$500(Lcom/luck/picture/lib/model/LocalMediaPageLoader;)Lcom/luck/picture/lib/config/PictureSelectionConfig;

    move-result-object v5

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->chooseMode:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v18, v6

    move/from16 v26, v5

    move-object/from16 v27, v2

    move-wide/from16 v30, v8

    invoke-static/range {v18 .. v35}, Lcom/luck/picture/lib/entity/LocalMedia;->parseLocalMedia(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJJJ)Lcom/luck/picture/lib/entity/LocalMedia;

    move-result-object v2

    .line 345
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_9

    :cond_11
    move/from16 v5, v17

    move/from16 v17, v36

    move/from16 v9, v37

    move/from16 v8, v38

    move/from16 v10, v39

    move/from16 v11, v40

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 349
    :cond_12
    :goto_9
    new-instance v2, Lcom/luck/picture/lib/entity/MediaData;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    const/4 v4, 0x0

    :goto_a
    invoke-direct {v2, v4, v0}, Lcom/luck/picture/lib/entity/MediaData;-><init>(ZLjava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_14

    .line 356
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    .line 357
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_14
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_15
    if-eqz v3, :cond_16

    .line 356
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_16

    .line 357
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_16
    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_c

    :catch_2
    move-exception v0

    const/4 v3, 0x0

    .line 352
    :goto_b
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaPageLoader;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMedia Page Data Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_17

    .line 356
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 357
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_17
    const/4 v2, 0x0

    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v3

    :goto_c
    if-eqz v2, :cond_18

    .line 356
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_18

    .line 357
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_18
    throw v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->doInBackground()Lcom/luck/picture/lib/entity/MediaData;

    move-result-object v0

    return-object v0
.end method

.method public onSuccess(Lcom/luck/picture/lib/entity/MediaData;)V
    .locals 3

    .line 365
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->cancel(Ljava/util/concurrent/ExecutorService;)V

    .line 366
    iget-object v0, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$listener:Lcom/luck/picture/lib/listener/OnQueryDataResultListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 367
    iget-object v1, p1, Lcom/luck/picture/lib/entity/MediaData;->data:Ljava/util/List;

    iget v2, p0, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->val$page:I

    iget-boolean p1, p1, Lcom/luck/picture/lib/entity/MediaData;->isHasNextMore:Z

    invoke-interface {v0, v1, v2, p1}, Lcom/luck/picture/lib/listener/OnQueryDataResultListener;->onComplete(Ljava/util/List;IZ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 248
    check-cast p1, Lcom/luck/picture/lib/entity/MediaData;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/model/LocalMediaPageLoader$1;->onSuccess(Lcom/luck/picture/lib/entity/MediaData;)V

    return-void
.end method
