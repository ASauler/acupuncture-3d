.class public final enum La/a/a/c/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/c/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/c/a/a;

.field public static final enum b:La/a/a/c/a/a;

.field public static final c:Ljava/lang/String; = "com.wikitude.arcore"

.field private static final synthetic d:[La/a/a/c/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, La/a/a/c/a/a;

    const-string v1, "NotInitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/c/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/c/a/a;->a:La/a/a/c/a/a;

    new-instance v1, La/a/a/c/a/a;

    const-string v2, "NoPlaneFound"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/c/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/c/a/a;->b:La/a/a/c/a/a;

    filled-new-array {v0, v1}, [La/a/a/c/a/a;

    move-result-object v0

    sput-object v0, La/a/a/c/a/a;->d:[La/a/a/c/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/c/a/a;
    .locals 1

    const-class v0, La/a/a/c/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/c/a/a;

    return-object p0
.end method

.method public static values()[La/a/a/c/a/a;
    .locals 1

    sget-object v0, La/a/a/c/a/a;->d:[La/a/a/c/a/a;

    invoke-virtual {v0}, [La/a/a/c/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/c/a/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method
