.class public final enum Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum ANALYTICS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum AR:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum BANNER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum LIFECYCLE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum LOAD_API:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum PURCHASING:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum RESOLVE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum STORAGE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum STORE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

.field public static final enum WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v0, v1

    const-string v2, "ADUNIT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v1, v2

    const-string v3, "BANNER"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v2, v3

    const-string v4, "VIDEOPLAYER"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v3, v4

    const-string v5, "REQUEST"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->REQUEST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v5, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v4, v5

    const-string v6, "RESOLVE"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->RESOLVE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v6, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v5, v6

    const-string v7, "CACHE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CACHE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v7, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v6, v7

    const-string v8, "CONNECTIVITY"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v7, v8

    const-string v9, "STORAGE"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v9, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v8, v9

    const-string v10, "BROADCAST"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->BROADCAST:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v10, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v9, v10

    const-string v11, "LIFECYCLE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LIFECYCLE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v11, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v10, v11

    const-string v12, "DEVICEINFO"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v12, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v11, v12

    const-string v13, "WEBPLAYER"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v13, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v12, v13

    const-string v14, "PURCHASING"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PURCHASING:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v14, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v13, v14

    const-string v15, "ANALYTICS"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->ANALYTICS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v14, v0

    const-string v15, "AR"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->AR:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object v15, v0

    const-string v1, "PERMISSIONS"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object/from16 v16, v0

    const-string v1, "STORE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    new-instance v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object/from16 v17, v0

    const-string v1, "LOAD_API"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->LOAD_API:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    filled-new-array/range {v0 .. v17}, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->$VALUES:[Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    return-object v0
.end method
