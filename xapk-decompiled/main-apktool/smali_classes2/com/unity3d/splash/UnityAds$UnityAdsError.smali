.class public final enum Lcom/unity3d/splash/UnityAds$UnityAdsError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsError"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum AD_BLOCKER_DETECTED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum DEVICE_ID_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INITIALIZE_FAILED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v2, "INITIALIZE_FAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v3, "INVALID_ARGUMENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v3, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v4, "VIDEO_PLAYER_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v4, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v5, "INIT_SANITY_CHECK_FAIL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v5, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v6, "AD_BLOCKER_DETECTED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v6, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v7, "FILE_IO_ERROR"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/splash/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v7, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v8, "DEVICE_ID_ERROR"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v8, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v9, "SHOW_ERROR"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/splash/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    new-instance v9, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    const-string v10, "INTERNAL_ERROR"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/unity3d/splash/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/splash/UnityAds$UnityAdsError;

    filled-new-array/range {v0 .. v9}, [Lcom/unity3d/splash/UnityAds$UnityAdsError;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/UnityAds$UnityAdsError;
    .locals 1

    const-class v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/UnityAds$UnityAdsError;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/splash/UnityAds$UnityAdsError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/UnityAds$UnityAdsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/UnityAds$UnityAdsError;

    return-object v0
.end method
