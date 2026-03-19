.class public final enum Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wikitude/common/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraFocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field public static final enum OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field public static final enum ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field private static final synthetic a:[Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const-string v1, "ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->ONCE:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    new-instance v1, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const-string v2, "CONTINUOUS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->CONTINUOUS:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    new-instance v2, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const-string v3, "OFF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->OFF:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    filled-new-array {v0, v1, v2}, [Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    move-result-object v0

    sput-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->a:[Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
    .locals 1

    const-class v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    return-object p0
.end method

.method public static values()[Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
    .locals 1

    sget-object v0, Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->a:[Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    invoke-virtual {v0}, [Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    return-object v0
.end method
