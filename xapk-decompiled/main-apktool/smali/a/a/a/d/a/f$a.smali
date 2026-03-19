.class public synthetic La/a/a/d/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->values()[Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, La/a/a/d/a/f$a;->b:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->HD_1280x720:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, La/a/a/d/a/f$a;->b:[I

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->FULL_HD_1920x1080:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, La/a/a/d/a/f$a;->b:[I

    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->AUTO:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, La/a/a/d/a/f$a;->b:[I

    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->SD_640x480:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->values()[Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    new-array v4, v0, [I

    sput-object v4, La/a/a/d/a/f$a;->a:[I

    :try_start_4
    sget-object v5, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->FULL:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, La/a/a/d/a/f$a;->a:[I

    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->LIMITED:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v2, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, La/a/a/d/a/f$a;->a:[I

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->LEVEL_3:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, La/a/a/d/a/f$a;->a:[I

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->LEGACY:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
