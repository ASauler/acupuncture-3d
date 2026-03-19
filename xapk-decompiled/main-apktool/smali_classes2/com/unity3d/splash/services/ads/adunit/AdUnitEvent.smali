.class public final enum Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum KEY_DOWN:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_CREATE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_DESTROY:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_FOCUS_GAINED:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_FOCUS_LOST:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_PAUSE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESTORE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_RESUME:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_START:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

.field public static final enum ON_STOP:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v1, "ON_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v2, "ON_CREATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v4, "ON_DESTROY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v4, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v5, "ON_PAUSE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v6, "KEY_DOWN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v6, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v7, "ON_RESTORE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v8, "ON_STOP"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v8, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v9, "ON_FOCUS_GAINED"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_GAINED:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    new-instance v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    const-string v10, "ON_FOCUS_LOST"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->ON_FOCUS_LOST:Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/ads/adunit/AdUnitEvent;

    return-object v0
.end method
