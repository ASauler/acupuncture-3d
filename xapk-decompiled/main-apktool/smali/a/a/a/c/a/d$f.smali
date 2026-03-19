.class public final enum La/a/a/c/a/d$f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/c/a/d$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/c/a/d$f;

.field public static final enum b:La/a/a/c/a/d$f;

.field public static final enum c:La/a/a/c/a/d$f;

.field private static final synthetic d:[La/a/a/c/a/d$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, La/a/a/c/a/d$f;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/c/a/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/c/a/d$f;->a:La/a/a/c/a/d$f;

    new-instance v1, La/a/a/c/a/d$f;

    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/c/a/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    new-instance v2, La/a/a/c/a/d$f;

    const-string v3, "STOPPED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, La/a/a/c/a/d$f;-><init>(Ljava/lang/String;I)V

    sput-object v2, La/a/a/c/a/d$f;->c:La/a/a/c/a/d$f;

    filled-new-array {v0, v1, v2}, [La/a/a/c/a/d$f;

    move-result-object v0

    sput-object v0, La/a/a/c/a/d$f;->d:[La/a/a/c/a/d$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/c/a/d$f;
    .locals 1

    const-class v0, La/a/a/c/a/d$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/c/a/d$f;

    return-object p0
.end method

.method public static values()[La/a/a/c/a/d$f;
    .locals 1

    sget-object v0, La/a/a/c/a/d$f;->d:[La/a/a/c/a/d$f;

    invoke-virtual {v0}, [La/a/a/c/a/d$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/c/a/d$f;

    return-object v0
.end method
