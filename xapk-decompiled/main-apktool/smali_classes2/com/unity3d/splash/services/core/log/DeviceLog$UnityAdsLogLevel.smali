.class public final enum Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/core/log/DeviceLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsLogLevel"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

.field public static final enum WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    const-string v2, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    const-string v3, "WARNING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v3, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    filled-new-array {v0, v1, v2, v3}, [Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->$VALUES:[Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->$VALUES:[Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    return-object v0
.end method
