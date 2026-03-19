.class public La/a/a/d/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/d/a/f$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "f"

.field private static final b:F = 54.0f

.field private static final c:F = 1.0f

.field private static final d:F = 179.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FF)F
    .locals 4

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    float-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static a(FFLa/a/a/l/a/b;La/a/a/l/a/b;)F
    .locals 8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "EMBT3C"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EMBT3S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const p0, 0x42873333    # 67.6f

    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "vuzix"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "M300"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x42200000    # 40.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const/high16 p0, 0x428c0000    # 70.0f

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/high16 v1, -0x40800000    # -1.0f

    if-lez v0, :cond_3

    float-to-double v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    float-to-double v6, p1

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    double-to-float p1, v2

    goto :goto_0

    :catch_0
    move p1, v1

    goto :goto_0

    :cond_3
    move p1, p0

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_4

    const/high16 v0, 0x43330000    # 179.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_4

    cmpl-float p0, p1, v1

    if-nez p0, :cond_5

    :cond_4
    const/high16 p1, 0x42580000    # 54.0f

    :cond_5
    invoke-virtual {p3}, La/a/a/l/a/b;->b()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, La/a/a/l/a/b;->a()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p0, p3

    invoke-virtual {p2}, La/a/a/l/a/b;->b()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, La/a/a/l/a/b;->a()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    cmpl-float p2, p0, p3

    if-lez p2, :cond_6

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    float-to-double p0, p1

    mul-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    div-double/2addr v0, p0

    float-to-double p0, p3

    mul-double/2addr p0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    :cond_6
    return p1
.end method

.method public static a(Landroid/hardware/camera2/CameraCharacteristics;La/a/a/l/a/b;)F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, La/a/a/d/a/f;->a(Landroid/hardware/camera2/CameraCharacteristics;La/a/a/l/a/b;F)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/hardware/camera2/CameraCharacteristics;La/a/a/l/a/b;F)F
    .locals 4

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PIXEL_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, La/a/a/d/a/f;->a(FF)F

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    aget-object p0, p0, v2

    new-instance v1, La/a/a/l/a/b;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-direct {v1, v2, p0}, La/a/a/l/a/b;-><init>(II)V

    invoke-static {v0, p2, p1, v1}, La/a/a/d/a/f;->a(FFLa/a/a/l/a/b;La/a/a/l/a/b;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, La/a/a/d/a/f;->a:Ljava/lang/String;

    const-string p2, "Could not calculate camera2 fov, default is used."

    invoke-static {p1, p2, p0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 p0, 0x42580000    # 54.0f

    return p0
.end method

.method private static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static a(La/a/a/l/a/b;La/a/a/l/a/b;La/a/a/l/a/b;)La/a/a/l/a/b;
    .locals 3

    invoke-virtual {p2}, La/a/a/l/a/b;->b()I

    move-result v0

    invoke-virtual {p1}, La/a/a/l/a/b;->b()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p2}, La/a/a/l/a/b;->a()I

    move-result v1

    invoke-virtual {p1}, La/a/a/l/a/b;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, La/a/a/l/a/b;->b()I

    move-result v1

    invoke-virtual {p1}, La/a/a/l/a/b;->b()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, La/a/a/l/a/b;->a()I

    move-result v2

    invoke-virtual {p1}, La/a/a/l/a/b;->a()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    new-instance p0, La/a/a/l/a/b;

    invoke-virtual {p2}, La/a/a/l/a/b;->b()I

    move-result p1

    invoke-virtual {p2}, La/a/a/l/a/b;->a()I

    move-result p2

    invoke-direct {p0, p1, p2}, La/a/a/l/a/b;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method public static a(Lcom/wikitude/common/camera/CameraSettings$CameraResolution;)La/a/a/l/a/b;
    .locals 2

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->AUTO:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->SD_640x480:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    new-instance p0, La/a/a/l/a/b;

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-direct {p0, v0, v1}, La/a/a/l/a/b;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance p0, La/a/a/l/a/b;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p0, v0, v1}, La/a/a/l/a/b;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance p0, La/a/a/l/a/b;

    const/16 v0, 0x500

    const/16 v1, 0x2d0

    invoke-direct {p0, v0, v1}, La/a/a/l/a/b;-><init>(II)V

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/graphics/PointF;Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p0, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr p0, v4

    float-to-int p0, p0

    int-to-float v4, v1

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, p2

    sub-float/2addr v4, v1

    float-to-int v1, v4

    int-to-float v3, v2

    sub-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr p0, p2

    sub-float/2addr v3, p0

    float-to-int p0, v3

    div-int/lit8 v0, v0, 0x2

    sub-int p2, v1, v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p2, v2, v3}, La/a/a/d/a/f;->a(III)I

    move-result p2

    sub-int v2, p0, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3, v4}, La/a/a/d/a/f;->a(III)I

    move-result v2

    add-int/2addr v1, v0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3, v4}, La/a/a/d/a/f;->a(III)I

    move-result v1

    add-int/2addr p0, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, p1}, La/a/a/d/a/f;->a(III)I

    move-result p0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method public static a(Landroid/graphics/Rect;FF)Landroid/graphics/Rect;
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sub-float/2addr p2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v2, v0

    div-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float v3, v1

    div-float/2addr v3, p1

    float-to-int v3, v3

    sub-int v2, v0, v2

    int-to-float v2, v2

    div-float/2addr v2, p1

    sub-int v3, v1, v3

    int-to-float v3, v3

    div-float/2addr v3, p1

    mul-float/2addr v2, p2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    mul-float/2addr v3, p2

    float-to-double v2, v3

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int v3, p1, v2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int v4, p2, p0

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    sub-int/2addr v1, p2

    add-int/2addr v1, p0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/wikitude/common/CallStatus;
    .locals 3

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/d/a/a;->a:La/a/a/d/a/a;

    invoke-virtual {v0}, La/a/a/d/a/a;->a()I

    move-result v0

    const-string v1, "com.wikitude.camera.android"

    const-string v2, "Permission denied. Make sure to have camera permissions before trying to access the camera."

    invoke-direct {p0, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            "Z",
            "Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/internal/AndroidCamera;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_1

    const-string p4, "camera"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    if-nez p0, :cond_0

    new-instance p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object p1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {p1}, La/a/a/d/a/a;->a()I

    move-result p1

    const-string p2, "com.wikitude.camera.android"

    const-string p3, "Could not get access to the camera Service."

    invoke-direct {p0, p1, p2, p3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p5}, La/a/a/d/a/f;->a(Landroid/hardware/camera2/CameraManager;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, La/a/a/d/a/f;->a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/hardware/camera2/CameraManager;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            "Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/internal/AndroidCamera;",
            ">;"
        }
    .end annotation

    const-string v1, "com.wikitude.camera.android"

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_4

    aget-object v8, v3, v6

    invoke-virtual {p0, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_3

    sget-object v10, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->BACK:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    if-ne p1, v10, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v7, :cond_3

    goto :goto_1

    :cond_0
    sget-object v10, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->FRONT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    if-ne p1, v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v7, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    :goto_1
    move-object v3, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_5

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "Could not find a camera with the given position"

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    if-eq v4, v7, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    goto :goto_3

    :cond_6
    move v5, v7

    :cond_7
    :goto_3
    invoke-virtual {p0, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v5, v0}, La/a/a/d/a/f;->a(ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1, p2, p3}, La/a/a/d/a/f;->a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallValue;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    new-instance v7, Lcom/wikitude/common/camera/internal/AndroidCamera;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, v3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/wikitude/common/camera/internal/AndroidCamera;-><init>(Ljava/lang/String;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)V

    invoke-static {v7}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0

    :catch_0
    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {v2}, La/a/a/d/a/a;->a()I

    move-result v2

    const-string v3, "Could not get access to the camera Service."

    invoke-direct {v0, v2, v1, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/internal/AndroidCamera;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->DEFAULT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p0, v2, :cond_2

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->BACK:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    if-ne p0, v5, :cond_0

    move v2, v3

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_4

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget p0, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p0, :cond_3

    sget-object p0, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->BACK:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/wikitude/common/camera/CameraSettings$CameraPosition;->FRONT:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    :goto_1
    const-string v4, "0"

    :cond_4
    if-nez v4, :cond_5

    new-instance p0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object p1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {p1}, La/a/a/d/a/a;->a()I

    move-result p1

    const-string p2, "com.wikitude.camera.android"

    const-string v0, "Could not find a camera with the given position"

    invoke-direct {p0, p1, p2, v0}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v0, Lcom/wikitude/common/camera/internal/AndroidCamera;

    invoke-direct {v0, v4, p0, p1, p2}, Lcom/wikitude/common/camera/internal/AndroidCamera;-><init>(Ljava/lang/String;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueInternal;->a(Ljava/lang/Object;)Lcom/wikitude/common/CallValue;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILandroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method
