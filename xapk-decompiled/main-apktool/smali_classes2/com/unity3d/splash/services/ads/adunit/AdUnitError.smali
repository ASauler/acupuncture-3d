.class public final enum Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum GENERIC:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum ORIENTATION:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum SCREENVISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum SYSTEM_UI_VISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

.field public static final enum UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v1, "ADUNIT_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ADUNIT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v2, "ACTIVITY_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ACTIVITY_ID:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v3, "GENERIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->GENERIC:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v4, "ORIENTATION"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->ORIENTATION:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v4, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v5, "SCREENVISIBILITY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SCREENVISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v6, "CORRUPTED_VIEWLIST"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_VIEWLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v6, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v7, "CORRUPTED_KEYEVENTLIST"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->CORRUPTED_KEYEVENTLIST:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v8, "SYSTEM_UI_VISIBILITY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->SYSTEM_UI_VISIBILITY:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v8, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v9, "UNKNOWN_VIEW"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->UNKNOWN_VIEW:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v10, "LAYOUT_NULL"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->LAYOUT_NULL:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v10, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v11, "MAX_MOTION_EVENT_COUNT_REACHED"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->MAX_MOTION_EVENT_COUNT_REACHED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v11, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v12, "API_LEVEL_ERROR"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->API_LEVEL_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v12, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v13, "NO_DISPLAY_CUTOUT_AVAILABLE"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->NO_DISPLAY_CUTOUT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v13, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v14, "DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_METHOD_NOT_AVAILABLE:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v14, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v15, "DISPLAY_CUTOUT_JSON_ERROR"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_JSON_ERROR:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    new-instance v15, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    const-string v13, "DISPLAY_CUTOUT_INVOKE_FAILED"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->DISPLAY_CUTOUT_INVOKE_FAILED:Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->$VALUES:[Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/ads/adunit/AdUnitError;

    return-object v0
.end method
