.class final enum Lcom/google/ar/core/ag;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/ag;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ar/core/ag;

.field public static final enum b:Lcom/google/ar/core/ag;

.field public static final enum c:Lcom/google/ar/core/ag;

.field public static final enum d:Lcom/google/ar/core/ag;

.field public static final enum e:Lcom/google/ar/core/ag;

.field public static final enum f:Lcom/google/ar/core/ag;

.field public static final enum g:Lcom/google/ar/core/ag;

.field public static final enum h:Lcom/google/ar/core/ag;

.field private static final synthetic k:[Lcom/google/ar/core/ag;


# instance fields
.field final i:I

.field private final j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/google/ar/core/ag;

    const v1, 0x41520100

    const-class v2, Lcom/google/ar/core/Trackable;

    const-string v3, "BASE_TRACKABLE"

    const/4 v4, 0x0

    .line 1
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lcom/google/ar/core/ag;->a:Lcom/google/ar/core/ag;

    new-instance v1, Lcom/google/ar/core/ag;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, "UNKNOWN_TO_JAVA"

    const/4 v5, 0x1

    .line 2
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v1, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    new-instance v2, Lcom/google/ar/core/ag;

    const v3, 0x41520101

    const-class v4, Lcom/google/ar/core/Plane;

    const-string v5, "PLANE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v2, Lcom/google/ar/core/ag;->c:Lcom/google/ar/core/ag;

    new-instance v3, Lcom/google/ar/core/ag;

    const v4, 0x41520102

    const-class v5, Lcom/google/ar/core/Point;

    const-string v6, "POINT"

    const/4 v7, 0x3

    .line 4
    invoke-direct {v3, v6, v7, v4, v5}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v3, Lcom/google/ar/core/ag;->d:Lcom/google/ar/core/ag;

    new-instance v4, Lcom/google/ar/core/ag;

    const v5, 0x41520104

    const-class v6, Lcom/google/ar/core/AugmentedImage;

    const-string v7, "AUGMENTED_IMAGE"

    const/4 v8, 0x4

    .line 5
    invoke-direct {v4, v7, v8, v5, v6}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v4, Lcom/google/ar/core/ag;->e:Lcom/google/ar/core/ag;

    new-instance v5, Lcom/google/ar/core/ag;

    const v6, 0x41520105

    const-class v7, Lcom/google/ar/core/AugmentedFace;

    const-string v8, "FACE"

    const/4 v9, 0x5

    .line 6
    invoke-direct {v5, v8, v9, v6, v7}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v5, Lcom/google/ar/core/ag;->f:Lcom/google/ar/core/ag;

    new-instance v6, Lcom/google/ar/core/ag;

    const v7, 0x41520111

    const-class v8, Lcom/google/ar/core/DepthPoint;

    const-string v9, "DEPTH_POINT"

    const/4 v10, 0x6

    .line 7
    invoke-direct {v6, v9, v10, v7, v8}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v6, Lcom/google/ar/core/ag;->g:Lcom/google/ar/core/ag;

    new-instance v7, Lcom/google/ar/core/ag;

    const v8, 0x41520112

    const-class v9, Lcom/google/ar/core/InstantPlacementPoint;

    const-string v10, "INSTANT_PLACEMENT_POINT"

    const/4 v11, 0x7

    .line 8
    invoke-direct {v7, v10, v11, v8, v9}, Lcom/google/ar/core/ag;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v7, Lcom/google/ar/core/ag;->h:Lcom/google/ar/core/ag;

    filled-new-array/range {v0 .. v7}, [Lcom/google/ar/core/ag;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/ag;->k:[Lcom/google/ar/core/ag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/ar/core/Trackable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/ag;->i:I

    iput-object p4, p0, Lcom/google/ar/core/ag;->j:Ljava/lang/Class;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/google/ar/core/ag;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/ar/core/Trackable;",
            ">;)",
            "Lcom/google/ar/core/ag;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/ar/core/ag;->values()[Lcom/google/ar/core/ag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 2
    iget-object v4, v3, Lcom/google/ar/core/ag;->j:Ljava/lang/Class;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    return-object v3

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/ar/core/ag;->b:Lcom/google/ar/core/ag;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/ag;
    .locals 1

    sget-object v0, Lcom/google/ar/core/ag;->k:[Lcom/google/ar/core/ag;

    .line 1
    invoke-virtual {v0}, [Lcom/google/ar/core/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/ag;

    return-object v0
.end method
