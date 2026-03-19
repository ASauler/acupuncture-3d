.class public Lcom/syanpicker/RNSyanImagePickerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNSyanImagePickerModule.java"


# static fields
.field private static SY_SELECT_IMAGE_FAILED_CODE:Ljava/lang/String; = "0"


# instance fields
.field private cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

.field private final mActivityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

.field private mPickerCallback:Lcom/facebook/react/bridge/Callback;

.field private mPickerPromise:Lcom/facebook/react/bridge/Promise;

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$minvokeError(Lcom/syanpicker/RNSyanImagePickerModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/syanpicker/RNSyanImagePickerModule;->invokeError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetResult(Lcom/syanpicker/RNSyanImagePickerModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/syanpicker/RNSyanImagePickerModule;->onGetResult(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monGetVideoResult(Lcom/syanpicker/RNSyanImagePickerModule;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/syanpicker/RNSyanImagePickerModule;->onGetVideoResult(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 322
    new-instance v0, Lcom/syanpicker/RNSyanImagePickerModule$1;

    invoke-direct {v0, p0}, Lcom/syanpicker/RNSyanImagePickerModule$1;-><init>(Lcom/syanpicker/RNSyanImagePickerModule;)V

    iput-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mActivityEventListener:Lcom/facebook/react/bridge/ActivityEventListener;

    .line 58
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 59
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    return-void
.end method

.method private getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 441
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 450
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 452
    :goto_0
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 453
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 458
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "png"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 460
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "data:image/png;base64,"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 462
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "data:image/jpeg;base64,"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 443
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getImageResult(Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 404
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 405
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCompressed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCompressPath()Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getCutPath()Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 415
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 416
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 417
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v3, v3

    const-string v5, "width"

    invoke-interface {v0, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 418
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, v2

    const-string v4, "height"

    invoke-interface {v0, v4, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v2, "type"

    const-string v3, "image"

    .line 419
    invoke-interface {v0, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "uri"

    invoke-interface {v0, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "original_uri"

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    const-string v2, "size"

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 424
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 425
    invoke-direct {p0, v1}, Lcom/syanpicker/RNSyanImagePickerModule;->getBase64StringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "base64"

    .line 426
    invoke-interface {v0, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private getVideoCover(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "thumb-"

    .line 472
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 473
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/syanpicker/RNSyanImagePickerModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 479
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x1e

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 480
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 481
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 487
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 485
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private invokeError(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 515
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "\u53d6\u6d88"

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_1

    .line 518
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 519
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    goto :goto_1

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_2

    .line 521
    sget-object v1, Lcom/syanpicker/RNSyanImagePickerModule;->SY_SELECT_IMAGE_FAILED_CODE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private invokeSuccessWithResult(Lcom/facebook/react/bridge/WritableArray;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 502
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 503
    iput-object v1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    goto :goto_0

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    if-eqz v0, :cond_1

    .line 505
    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onGetResult(Landroid/content/Intent;)V
    .locals 4

    .line 386
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->obtainMultipleResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_2

    const-string v1, "isRecordSelected"

    .line 388
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 389
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 390
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 393
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "enableBase64"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 396
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 397
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/syanpicker/RNSyanImagePickerModule;->getImageResult(Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/Boolean;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 399
    :cond_1
    invoke-direct {p0, v0}, Lcom/syanpicker/RNSyanImagePickerModule;->invokeSuccessWithResult(Lcom/facebook/react/bridge/WritableArray;)V

    :cond_2
    return-void
.end method

.method private onGetVideoResult(Landroid/content/Intent;)V
    .locals 7

    .line 344
    invoke-static {p1}, Lcom/luck/picture/lib/PictureSelector;->obtainMultipleResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 345
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v0, :cond_5

    const-string v1, "isRecordSelected"

    .line 346
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 347
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 348
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 350
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 353
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    new-instance v2, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v2}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    .line 359
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 360
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_R()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 361
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 363
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAndroidQToPath()Ljava/lang/String;

    move-result-object v5

    .line 365
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getRealPath()Ljava/lang/String;

    move-result-object v5

    .line 369
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "uri"

    invoke-interface {v2, v6, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/syanpicker/RNSyanImagePickerModule;->getVideoCover(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "coverUri"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fileName"

    invoke-interface {v2, v4, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-double v3, v3

    const-string v5, "size"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 373
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getDuration()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    const-string v5, "duration"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v3, "width"

    .line 374
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getWidth()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v3, "height"

    .line 375
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getHeight()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string v3, "type"

    const-string v4, "video"

    .line 376
    invoke-interface {v2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mime"

    .line 377
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto/16 :goto_0

    .line 381
    :cond_4
    invoke-direct {p0, v0}, Lcom/syanpicker/RNSyanImagePickerModule;->invokeSuccessWithResult(Lcom/facebook/react/bridge/WritableArray;)V

    :cond_5
    return-void
.end method

.method private openCamera()V
    .locals 17

    move-object/from16 v0, p0

    .line 221
    iget-object v1, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "isCrop"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 222
    iget-object v2, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "CropW"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 223
    iget-object v3, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "CropH"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 224
    iget-object v4, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "showCropCircle"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 225
    iget-object v5, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "showCropFrame"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 226
    iget-object v6, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v7, "showCropGrid"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 227
    iget-object v7, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v8, "compress"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 228
    iget-object v8, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v9, "freeStyleCropEnabled"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 229
    iget-object v9, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v10, "rotateEnabled"

    invoke-interface {v9, v10}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 230
    iget-object v10, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v11, "scaleEnabled"

    invoke-interface {v10, v11}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 231
    iget-object v11, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v12, "minimumCompressSize"

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 232
    iget-object v12, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v13, "quality"

    invoke-interface {v12, v13}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 233
    iget-object v13, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v14, "isWeChatStyle"

    invoke-interface {v13, v14}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 234
    iget-object v14, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v15, "showSelectedIndex"

    invoke-interface {v14, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    .line 235
    iget-object v14, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v15, "compressFocusAlpha"

    invoke-interface {v14, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 237
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/syanpicker/RNSyanImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v16

    .line 240
    invoke-static/range {v16 .. v16}, Lcom/luck/picture/lib/PictureSelector;->create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;

    move-result-object v0

    move/from16 v16, v14

    .line 241
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/luck/picture/lib/PictureSelector;->openCamera(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 242
    invoke-static {}, Lcom/syanpicker/GlideEngine;->createGlideEngine()Lcom/syanpicker/GlideEngine;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/luck/picture/lib/PictureSelectionModel;->loadImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 243
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "image/png"

    goto :goto_0

    :cond_0
    const-string v14, ".png"

    :goto_0
    invoke-virtual {v0, v14}, Lcom/luck/picture/lib/PictureSelectionModel;->imageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->enableCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 245
    invoke-virtual {v0, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->compress(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v7, 0xa0

    .line 246
    invoke-virtual {v0, v7, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->glideOverride(II)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v2, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->withAspectRatio(II)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->hideBottomControls(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/PictureSelectionModel;->freeStyleCropEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 250
    invoke-virtual {v0, v4}, Lcom/luck/picture/lib/PictureSelectionModel;->circleDimmedLayer(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->showCropFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 252
    invoke-virtual {v0, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->showCropGrid(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v12}, Lcom/luck/picture/lib/PictureSelectionModel;->cropCompressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v11}, Lcom/luck/picture/lib/PictureSelectionModel;->minimumCompressSize(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->synOrAsy(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v9}, Lcom/luck/picture/lib/PictureSelectionModel;->rotateEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 258
    invoke-virtual {v0, v10}, Lcom/luck/picture/lib/PictureSelectionModel;->scaleEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v13}, Lcom/luck/picture/lib/PictureSelectionModel;->isWeChatStyle(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 260
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->theme(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move/from16 v1, v16

    .line 261
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->compressFocusAlpha(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0xbc

    .line 262
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->forResult(I)V

    return-void
.end method

.method private openImagePicker()V
    .locals 22

    move-object/from16 v0, p0

    .line 151
    iget-object v1, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "imageCount"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 152
    iget-object v2, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "isCamera"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 153
    iget-object v3, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "isCrop"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 154
    iget-object v4, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "CropW"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 155
    iget-object v5, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "CropH"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 156
    iget-object v6, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v7, "isGif"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 157
    iget-object v7, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v8, "showCropCircle"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 158
    iget-object v8, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v9, "showCropFrame"

    invoke-interface {v8, v9}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 159
    iget-object v9, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v10, "showCropGrid"

    invoke-interface {v9, v10}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 160
    iget-object v10, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v11, "compress"

    invoke-interface {v10, v11}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 161
    iget-object v11, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v12, "freeStyleCropEnabled"

    invoke-interface {v11, v12}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 162
    iget-object v12, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v13, "rotateEnabled"

    invoke-interface {v12, v13}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 163
    iget-object v13, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v14, "scaleEnabled"

    invoke-interface {v13, v14}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 164
    iget-object v14, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v15, "minimumCompressSize"

    invoke-interface {v14, v15}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 165
    iget-object v15, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    move/from16 v16, v13

    const-string v13, "quality"

    invoke-interface {v15, v13}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 166
    iget-object v15, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    move/from16 v17, v12

    const-string v12, "isWeChatStyle"

    invoke-interface {v15, v12}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 167
    iget-object v15, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    move/from16 v18, v12

    const-string v12, "showSelectedIndex"

    invoke-interface {v15, v12}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    .line 168
    iget-object v12, v0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v15, "compressFocusAlpha"

    invoke-interface {v12, v15}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const/4 v15, 0x1

    if-ne v1, v15, :cond_0

    goto :goto_0

    :cond_0
    const/16 v19, 0x2

    move/from16 v15, v19

    .line 177
    :goto_0
    invoke-static {}, Lcom/luck/picture/lib/tools/SdkVersionUtils;->checkedAndroid_Q()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/syanpicker/RNSyanImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v20

    move/from16 v21, v12

    .line 180
    invoke-static/range {v20 .. v20}, Lcom/luck/picture/lib/PictureSelector;->create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;

    move-result-object v12

    .line 181
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofImage()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/luck/picture/lib/PictureSelector;->openGallery(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/syanpicker/GlideEngine;->createGlideEngine()Lcom/syanpicker/GlideEngine;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/luck/picture/lib/PictureSelectionModel;->loadImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->minSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v12, 0x4

    .line 185
    invoke-virtual {v0, v12}, Lcom/luck/picture/lib/PictureSelectionModel;->imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 186
    invoke-virtual {v0, v15}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v12, 0x1

    .line 187
    invoke-virtual {v0, v12}, Lcom/luck/picture/lib/PictureSelectionModel;->previewImage(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->enablePreviewAudio(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->isCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 191
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "image/png"

    goto :goto_1

    :cond_1
    const-string v2, ".png"

    :goto_1
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->imageFormat(Ljava/lang/String;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v12}, Lcom/luck/picture/lib/PictureSelectionModel;->isZoomAnim(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 193
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->sizeMultiplier(F)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->enableCrop(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v10}, Lcom/luck/picture/lib/PictureSelectionModel;->compress(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v2, 0xa0

    .line 196
    invoke-virtual {v0, v2, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->glideOverride(II)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->withAspectRatio(II)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->hideBottomControls(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 199
    invoke-virtual {v0, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->isGif(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v11}, Lcom/luck/picture/lib/PictureSelectionModel;->freeStyleCropEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->circleDimmedLayer(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v8}, Lcom/luck/picture/lib/PictureSelectionModel;->showCropFrame(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v9}, Lcom/luck/picture/lib/PictureSelectionModel;->showCropGrid(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v13}, Lcom/luck/picture/lib/PictureSelectionModel;->cropCompressQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v14}, Lcom/luck/picture/lib/PictureSelectionModel;->minimumCompressSize(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->synOrAsy(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move/from16 v2, v17

    .line 208
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->rotateEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move/from16 v2, v16

    .line 209
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->scaleEnabled(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 210
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMedia(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move/from16 v3, v18

    .line 211
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->isWeChatStyle(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->theme(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    move/from16 v1, v21

    .line 213
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->compressFocusAlpha(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0xbc

    .line 214
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->forResult(I)V

    return-void
.end method

.method private openVideo()V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "quality"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "MaxSecond"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 271
    iget-object v2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "MinSecond"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 272
    iget-object v3, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "recordVideoSecond"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 273
    iget-object v4, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "imageCount"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 274
    invoke-virtual {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    .line 275
    invoke-static {v5}, Lcom/luck/picture/lib/PictureSelector;->create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;

    move-result-object v5

    .line 276
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/luck/picture/lib/PictureSelector;->openCamera(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v5

    .line 277
    invoke-static {}, Lcom/syanpicker/GlideEngine;->createGlideEngine()Lcom/syanpicker/GlideEngine;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->loadImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v5

    iget-object v6, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 278
    invoke-virtual {v5, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMedia(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v5

    const/4 v6, 0x0

    .line 279
    invoke-virtual {v5, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v5

    .line 280
    invoke-virtual {v5, v4}, Lcom/luck/picture/lib/PictureSelectionModel;->maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->minSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v5, 0x4

    .line 282
    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v5, 0x2

    .line 283
    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v5, 0x1

    .line 284
    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    .line 285
    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/PictureSelectionModel;->videoQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->videoMaxSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->videoMinSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 288
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->recordVideoSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0x38d

    .line 289
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->forResult(I)V

    return-void
.end method

.method private openVideoPicker()V
    .locals 8

    .line 296
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "quality"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 297
    iget-object v1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "MaxSecond"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 298
    iget-object v2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "MinSecond"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 299
    iget-object v3, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "recordVideoSecond"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 300
    iget-object v4, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "imageCount"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 301
    iget-object v5, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "allowTakeVideo"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 303
    invoke-virtual {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .line 304
    invoke-static {v6}, Lcom/luck/picture/lib/PictureSelector;->create(Landroid/app/Activity;)Lcom/luck/picture/lib/PictureSelector;

    move-result-object v6

    .line 305
    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofVideo()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/luck/picture/lib/PictureSelector;->openGallery(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v6

    .line 306
    invoke-static {}, Lcom/syanpicker/GlideEngine;->createGlideEngine()Lcom/syanpicker/GlideEngine;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->loadImageEngine(Lcom/luck/picture/lib/engine/ImageEngine;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v6

    iget-object v7, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    .line 307
    invoke-virtual {v6, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMedia(Ljava/util/List;)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v6

    const/4 v7, 0x0

    .line 308
    invoke-virtual {v6, v7}, Lcom/luck/picture/lib/PictureSelectionModel;->openClickSound(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v6

    .line 309
    invoke-virtual {v6, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->isCamera(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v5

    .line 310
    invoke-virtual {v5, v4}, Lcom/luck/picture/lib/PictureSelectionModel;->maxSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v5, 0x1

    .line 311
    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->minSelectNum(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v6, 0x4

    .line 312
    invoke-virtual {v4, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->imageSpanCount(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    const/4 v6, 0x2

    .line 313
    invoke-virtual {v4, v6}, Lcom/luck/picture/lib/PictureSelectionModel;->selectionMode(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    .line 314
    invoke-virtual {v4, v5}, Lcom/luck/picture/lib/PictureSelectionModel;->previewVideo(Z)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v4

    .line 315
    invoke-virtual {v4, v0}, Lcom/luck/picture/lib/PictureSelectionModel;->videoQuality(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->videoMaxSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 317
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/PictureSelectionModel;->videoMinSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    .line 318
    invoke-virtual {v0, v3}, Lcom/luck/picture/lib/PictureSelectionModel;->recordVideoSecond(I)Lcom/luck/picture/lib/PictureSelectionModel;

    move-result-object v0

    const/16 v1, 0x38d

    .line 319
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/PictureSelectionModel;->forResult(I)V

    return-void
.end method


# virtual methods
.method public asyncOpenCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 94
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 95
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 96
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openCamera()V

    return-void
.end method

.method public asyncShowImagePicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 79
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 80
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openImagePicker()V

    return-void
.end method

.method public deleteCache()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 105
    invoke-virtual {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    invoke-static {v0}, Lcom/luck/picture/lib/tools/PictureFileUtils;->deleteAllCacheDirFile(Landroid/content/Context;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNSyanImagePicker"

    return-object v0
.end method

.method public openCamera(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 87
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 88
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openCamera()V

    return-void
.end method

.method public openVideo(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 135
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 136
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openVideo()V

    return-void
.end method

.method public openVideoPicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 143
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 144
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openVideoPicker()V

    return-void
.end method

.method public removeAllPhoto()V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public removePhotoAtIndex(I)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/syanpicker/RNSyanImagePickerModule;->selectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public showImagePicker(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->cameraOptions:Lcom/facebook/react/bridge/ReadableMap;

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerPromise:Lcom/facebook/react/bridge/Promise;

    .line 71
    iput-object p2, p0, Lcom/syanpicker/RNSyanImagePickerModule;->mPickerCallback:Lcom/facebook/react/bridge/Callback;

    .line 72
    invoke-direct {p0}, Lcom/syanpicker/RNSyanImagePickerModule;->openImagePicker()V

    return-void
.end method
