.class final enum Landroidx/camera/core/ImageYuvToRgbConverter$Result;
.super Ljava/lang/Enum;
.source "ImageYuvToRgbConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageYuvToRgbConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/ImageYuvToRgbConverter$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/ImageYuvToRgbConverter$Result;

.field public static final enum ERROR_CONVERSION:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

.field public static final enum ERROR_FORMAT:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

.field public static final enum SUCCESS:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

.field public static final enum UNKNOWN:Landroidx/camera/core/ImageYuvToRgbConverter$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/ImageYuvToRgbConverter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->UNKNOWN:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    .line 40
    new-instance v1, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/camera/core/ImageYuvToRgbConverter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->SUCCESS:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    .line 41
    new-instance v2, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    const-string v3, "ERROR_FORMAT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/camera/core/ImageYuvToRgbConverter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_FORMAT:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    .line 42
    new-instance v3, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    const-string v4, "ERROR_CONVERSION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/camera/core/ImageYuvToRgbConverter$Result;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    .line 38
    filled-new-array {v0, v1, v2, v3}, [Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->$VALUES:[Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/ImageYuvToRgbConverter$Result;
    .locals 1

    .line 38
    const-class v0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/ImageYuvToRgbConverter$Result;
    .locals 1

    .line 38
    sget-object v0, Landroidx/camera/core/ImageYuvToRgbConverter$Result;->$VALUES:[Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    invoke-virtual {v0}, [Landroidx/camera/core/ImageYuvToRgbConverter$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/ImageYuvToRgbConverter$Result;

    return-object v0
.end method
