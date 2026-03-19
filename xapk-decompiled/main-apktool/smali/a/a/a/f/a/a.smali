.class public final enum La/a/a/f/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/f/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/f/a/a;

.field public static final enum b:La/a/a/f/a/a;

.field public static final enum c:La/a/a/f/a/a;

.field public static final enum d:La/a/a/f/a/a;

.field public static final enum e:La/a/a/f/a/a;

.field public static final f:Ljava/lang/String; = "com.wikitude.device_motion.android"

.field private static final synthetic g:[La/a/a/f/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, La/a/a/f/a/a;

    const-string v1, "UnableToRegisterService"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/f/a/a;->a:La/a/a/f/a/a;

    new-instance v1, La/a/a/f/a/a;

    const-string v2, "UnableToGetSensorManager"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/f/a/a;->b:La/a/a/f/a/a;

    new-instance v2, La/a/a/f/a/a;

    const-string v3, "UnableToGetPackageManager"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, La/a/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, La/a/a/f/a/a;->c:La/a/a/f/a/a;

    new-instance v3, La/a/a/f/a/a;

    const-string v4, "InvalidState"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, La/a/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/a/a/f/a/a;->d:La/a/a/f/a/a;

    new-instance v4, La/a/a/f/a/a;

    const-string v5, "MissingSensor"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, La/a/a/f/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, La/a/a/f/a/a;->e:La/a/a/f/a/a;

    filled-new-array {v0, v1, v2, v3, v4}, [La/a/a/f/a/a;

    move-result-object v0

    sput-object v0, La/a/a/f/a/a;->g:[La/a/a/f/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/f/a/a;
    .locals 1

    const-class v0, La/a/a/f/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/f/a/a;

    return-object p0
.end method

.method public static values()[La/a/a/f/a/a;
    .locals 1

    sget-object v0, La/a/a/f/a/a;->g:[La/a/a/f/a/a;

    invoke-virtual {v0}, [La/a/a/f/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/f/a/a;

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
