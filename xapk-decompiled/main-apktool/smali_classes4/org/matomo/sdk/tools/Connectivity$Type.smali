.class public final enum Lorg/matomo/sdk/tools/Connectivity$Type;
.super Ljava/lang/Enum;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/tools/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/matomo/sdk/tools/Connectivity$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/matomo/sdk/tools/Connectivity$Type;

.field public static final enum MOBILE:Lorg/matomo/sdk/tools/Connectivity$Type;

.field public static final enum NONE:Lorg/matomo/sdk/tools/Connectivity$Type;

.field public static final enum WIFI:Lorg/matomo/sdk/tools/Connectivity$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lorg/matomo/sdk/tools/Connectivity$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/matomo/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->NONE:Lorg/matomo/sdk/tools/Connectivity$Type;

    new-instance v1, Lorg/matomo/sdk/tools/Connectivity$Type;

    const-string v2, "MOBILE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/matomo/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/matomo/sdk/tools/Connectivity$Type;->MOBILE:Lorg/matomo/sdk/tools/Connectivity$Type;

    new-instance v2, Lorg/matomo/sdk/tools/Connectivity$Type;

    const-string v3, "WIFI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/matomo/sdk/tools/Connectivity$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/matomo/sdk/tools/Connectivity$Type;->WIFI:Lorg/matomo/sdk/tools/Connectivity$Type;

    .line 24
    filled-new-array {v0, v1, v2}, [Lorg/matomo/sdk/tools/Connectivity$Type;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->$VALUES:[Lorg/matomo/sdk/tools/Connectivity$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/matomo/sdk/tools/Connectivity$Type;
    .locals 1

    .line 24
    const-class v0, Lorg/matomo/sdk/tools/Connectivity$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/matomo/sdk/tools/Connectivity$Type;

    return-object p0
.end method

.method public static values()[Lorg/matomo/sdk/tools/Connectivity$Type;
    .locals 1

    .line 24
    sget-object v0, Lorg/matomo/sdk/tools/Connectivity$Type;->$VALUES:[Lorg/matomo/sdk/tools/Connectivity$Type;

    invoke-virtual {v0}, [Lorg/matomo/sdk/tools/Connectivity$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/matomo/sdk/tools/Connectivity$Type;

    return-object v0
.end method
