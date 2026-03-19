.class public synthetic La/a/a/d/a/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d/a/g;
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
    .locals 5

    invoke-static {}, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->values()[Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    const/4 v0, 0x2

    new-array v1, v0, [I

    sput-object v1, La/a/a/d/a/g$b;->b:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, La/a/a/d/a/g$b;->b:[I

    sget-object v3, Lcom/wikitude/common/camera/CameraSettings$TorchMode;->ON:Lcom/wikitude/common/camera/CameraSettings$TorchMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->values()[Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const/4 v1, 0x3

    new-array v3, v1, [I

    sput-object v3, La/a/a/d/a/g$b;->a:[I

    :try_start_2
    sget-object v4, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, La/a/a/d/a/g$b;->a:[I

    sget-object v3, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, La/a/a/d/a/g$b;->a:[I

    sget-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
