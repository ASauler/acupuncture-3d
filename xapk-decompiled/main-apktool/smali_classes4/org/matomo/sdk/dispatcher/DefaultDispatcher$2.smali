.class synthetic Lorg/matomo/sdk/dispatcher/DefaultDispatcher$2;
.super Ljava/lang/Object;
.source "DefaultDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/dispatcher/DefaultDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$matomo$sdk$dispatcher$DispatchMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 260
    invoke-static {}, Lorg/matomo/sdk/dispatcher/DispatchMode;->values()[Lorg/matomo/sdk/dispatcher/DispatchMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$2;->$SwitchMap$org$matomo$sdk$dispatcher$DispatchMode:[I

    :try_start_0
    sget-object v1, Lorg/matomo/sdk/dispatcher/DispatchMode;->EXCEPTION:Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v1}, Lorg/matomo/sdk/dispatcher/DispatchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$2;->$SwitchMap$org$matomo$sdk$dispatcher$DispatchMode:[I

    sget-object v1, Lorg/matomo/sdk/dispatcher/DispatchMode;->ALWAYS:Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v1}, Lorg/matomo/sdk/dispatcher/DispatchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcher$2;->$SwitchMap$org$matomo$sdk$dispatcher$DispatchMode:[I

    sget-object v1, Lorg/matomo/sdk/dispatcher/DispatchMode;->WIFI_ONLY:Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v1}, Lorg/matomo/sdk/dispatcher/DispatchMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
