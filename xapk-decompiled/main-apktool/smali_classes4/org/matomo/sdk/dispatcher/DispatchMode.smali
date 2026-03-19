.class public final enum Lorg/matomo/sdk/dispatcher/DispatchMode;
.super Ljava/lang/Enum;
.source "DispatchMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/matomo/sdk/dispatcher/DispatchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/matomo/sdk/dispatcher/DispatchMode;

.field public static final enum ALWAYS:Lorg/matomo/sdk/dispatcher/DispatchMode;

.field public static final enum EXCEPTION:Lorg/matomo/sdk/dispatcher/DispatchMode;

.field public static final enum WIFI_ONLY:Lorg/matomo/sdk/dispatcher/DispatchMode;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lorg/matomo/sdk/dispatcher/DispatchMode;

    const/4 v1, 0x0

    const-string v2, "always"

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v1, v2}, Lorg/matomo/sdk/dispatcher/DispatchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/matomo/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/matomo/sdk/dispatcher/DispatchMode;

    .line 14
    new-instance v1, Lorg/matomo/sdk/dispatcher/DispatchMode;

    const/4 v2, 0x1

    const-string v3, "wifi_only"

    const-string v4, "WIFI_ONLY"

    invoke-direct {v1, v4, v2, v3}, Lorg/matomo/sdk/dispatcher/DispatchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/matomo/sdk/dispatcher/DispatchMode;->WIFI_ONLY:Lorg/matomo/sdk/dispatcher/DispatchMode;

    .line 19
    new-instance v2, Lorg/matomo/sdk/dispatcher/DispatchMode;

    const/4 v3, 0x2

    const-string v4, "exception"

    const-string v5, "EXCEPTION"

    invoke-direct {v2, v5, v3, v4}, Lorg/matomo/sdk/dispatcher/DispatchMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/matomo/sdk/dispatcher/DispatchMode;->EXCEPTION:Lorg/matomo/sdk/dispatcher/DispatchMode;

    .line 6
    filled-new-array {v0, v1, v2}, [Lorg/matomo/sdk/dispatcher/DispatchMode;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/dispatcher/DispatchMode;->$VALUES:[Lorg/matomo/sdk/dispatcher/DispatchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/matomo/sdk/dispatcher/DispatchMode;->key:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/matomo/sdk/dispatcher/DispatchMode;
    .locals 5

    .line 32
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DispatchMode;->values()[Lorg/matomo/sdk/dispatcher/DispatchMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 33
    iget-object v4, v3, Lorg/matomo/sdk/dispatcher/DispatchMode;->key:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/matomo/sdk/dispatcher/DispatchMode;
    .locals 1

    .line 6
    const-class v0, Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/matomo/sdk/dispatcher/DispatchMode;

    return-object p0
.end method

.method public static values()[Lorg/matomo/sdk/dispatcher/DispatchMode;
    .locals 1

    .line 6
    sget-object v0, Lorg/matomo/sdk/dispatcher/DispatchMode;->$VALUES:[Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v0}, [Lorg/matomo/sdk/dispatcher/DispatchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/matomo/sdk/dispatcher/DispatchMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/matomo/sdk/dispatcher/DispatchMode;->key:Ljava/lang/String;

    return-object v0
.end method
