.class public final enum Lcom/wikitude/common/camera/CameraSettings$CameraResolution;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wikitude/common/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraResolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTO:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

.field public static final enum FULL_HD_1920x1080:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

.field public static final enum HD_1280x720:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

.field public static final enum SD_640x480:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

.field private static final synthetic a:[Lcom/wikitude/common/camera/CameraSettings$CameraResolution;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    const-string v1, "SD_640x480"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->SD_640x480:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    new-instance v1, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    const-string v2, "HD_1280x720"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->HD_1280x720:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    new-instance v2, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    const-string v3, "FULL_HD_1920x1080"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->FULL_HD_1920x1080:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    new-instance v3, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    const-string v4, "AUTO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->AUTO:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    filled-new-array {v0, v1, v2, v3}, [Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    move-result-object v0

    sput-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->a:[Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wikitude/common/camera/CameraSettings$CameraResolution;
    .locals 1

    const-class v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    return-object p0
.end method

.method public static values()[Lcom/wikitude/common/camera/CameraSettings$CameraResolution;
    .locals 1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->a:[Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    invoke-virtual {v0}, [Lcom/wikitude/common/camera/CameraSettings$CameraResolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    return-object v0
.end method
