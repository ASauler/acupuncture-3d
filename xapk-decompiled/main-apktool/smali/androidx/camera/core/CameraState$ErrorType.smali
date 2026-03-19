.class public final enum Landroidx/camera/core/CameraState$ErrorType;
.super Ljava/lang/Enum;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/CameraState$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/CameraState$ErrorType;

.field public static final enum CRITICAL:Landroidx/camera/core/CameraState$ErrorType;

.field public static final enum RECOVERABLE:Landroidx/camera/core/CameraState$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 266
    new-instance v0, Landroidx/camera/core/CameraState$ErrorType;

    const-string v1, "RECOVERABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/CameraState$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/CameraState$ErrorType;->RECOVERABLE:Landroidx/camera/core/CameraState$ErrorType;

    .line 276
    new-instance v1, Landroidx/camera/core/CameraState$ErrorType;

    const-string v2, "CRITICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/CameraState$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/CameraState$ErrorType;->CRITICAL:Landroidx/camera/core/CameraState$ErrorType;

    .line 259
    filled-new-array {v0, v1}, [Landroidx/camera/core/CameraState$ErrorType;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/CameraState$ErrorType;->$VALUES:[Landroidx/camera/core/CameraState$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/CameraState$ErrorType;
    .locals 1

    .line 259
    const-class v0, Landroidx/camera/core/CameraState$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraState$ErrorType;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/CameraState$ErrorType;
    .locals 1

    .line 259
    sget-object v0, Landroidx/camera/core/CameraState$ErrorType;->$VALUES:[Landroidx/camera/core/CameraState$ErrorType;

    invoke-virtual {v0}, [Landroidx/camera/core/CameraState$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/CameraState$ErrorType;

    return-object v0
.end method
