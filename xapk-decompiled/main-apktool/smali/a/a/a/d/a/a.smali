.class public final enum La/a/a/d/a/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La/a/a/d/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/a/a/d/a/a;

.field public static final enum b:La/a/a/d/a/a;

.field public static final enum c:La/a/a/d/a/a;

.field public static final enum d:La/a/a/d/a/a;

.field public static final enum e:La/a/a/d/a/a;

.field public static final enum f:La/a/a/d/a/a;

.field public static final enum g:La/a/a/d/a/a;

.field public static final enum h:La/a/a/d/a/a;

.field public static final enum i:La/a/a/d/a/a;

.field public static final enum j:La/a/a/d/a/a;

.field public static final k:Ljava/lang/String; = "com.wikitude.camera.android"

.field private static final synthetic l:[La/a/a/d/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, La/a/a/d/a/a;

    const-string v1, "CameraPermissionsNotGranted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/a/a/d/a/a;->a:La/a/a/d/a/a;

    new-instance v1, La/a/a/d/a/a;

    const-string v2, "CameraDisabled"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, La/a/a/d/a/a;->b:La/a/a/d/a/a;

    new-instance v2, La/a/a/d/a/a;

    const-string v3, "CameraIsAlreadyInUse"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v2, La/a/a/d/a/a;->c:La/a/a/d/a/a;

    new-instance v3, La/a/a/d/a/a;

    const-string v4, "CameraDeviceError"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    new-instance v4, La/a/a/d/a/a;

    const-string v5, "MaxNumberOfCamerasInUse"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v4, La/a/a/d/a/a;->e:La/a/a/d/a/a;

    new-instance v5, La/a/a/d/a/a;

    const-string v6, "CameraSettingUnavailableWhenNotStarted"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, La/a/a/d/a/a;->f:La/a/a/d/a/a;

    new-instance v6, La/a/a/d/a/a;

    const-string v7, "CameraSettingNotSupported"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v6, La/a/a/d/a/a;->g:La/a/a/d/a/a;

    new-instance v7, La/a/a/d/a/a;

    const-string v8, "CameraSettingOnlyAvailableWithCamera2"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, La/a/a/d/a/a;->h:La/a/a/d/a/a;

    new-instance v8, La/a/a/d/a/a;

    const-string v9, "CameraSettingsUnavailableWhenNotActive"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v8, La/a/a/d/a/a;->i:La/a/a/d/a/a;

    new-instance v9, La/a/a/d/a/a;

    const-string v10, "CameraNotOpened"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, La/a/a/d/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, La/a/a/d/a/a;->j:La/a/a/d/a/a;

    filled-new-array/range {v0 .. v9}, [La/a/a/d/a/a;

    move-result-object v0

    sput-object v0, La/a/a/d/a/a;->l:[La/a/a/d/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/a/d/a/a;
    .locals 1

    const-class v0, La/a/a/d/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La/a/a/d/a/a;

    return-object p0
.end method

.method public static values()[La/a/a/d/a/a;
    .locals 1

    sget-object v0, La/a/a/d/a/a;->l:[La/a/a/d/a/a;

    invoke-virtual {v0}, [La/a/a/d/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/a/d/a/a;

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
