.class public final enum La/a/a/g/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/g/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/g/a;

.field public static final enum b:La/a/a/g/a;

.field public static final enum c:La/a/a/g/a;

.field public static final enum d:La/a/a/g/a;

.field private static final synthetic e:[La/a/a/g/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, La/a/a/g/a;

    const-string v1, "IMAGE_TRACKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/g/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/g/a;->a:La/a/a/g/a;

    new-instance v1, La/a/a/g/a;

    const-string v2, "OBJECT_TRACKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/g/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/g/a;->b:La/a/a/g/a;

    new-instance v2, La/a/a/g/a;

    const-string v3, "INSTANT_TRACKING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, La/a/a/g/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, La/a/a/g/a;->c:La/a/a/g/a;

    new-instance v3, La/a/a/g/a;

    const-string v4, "GEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, La/a/a/g/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/a/a/g/a;->d:La/a/a/g/a;

    filled-new-array {v0, v1, v2, v3}, [La/a/a/g/a;

    move-result-object v0

    sput-object v0, La/a/a/g/a;->e:[La/a/a/g/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/g/a;
    .locals 1

    const-class v0, La/a/a/g/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/g/a;

    return-object p0
.end method

.method public static values()[La/a/a/g/a;
    .locals 1

    sget-object v0, La/a/a/g/a;->e:[La/a/a/g/a;

    invoke-virtual {v0}, [La/a/a/g/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/g/a;

    return-object v0
.end method
