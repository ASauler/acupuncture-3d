.class public final enum Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CLIENT_CERT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CLOSE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CONSOLE_MESSAGE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum CREATE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum DOWNLOAD_START:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum FORM_RESUBMISSION:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HIDE_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HTTP_AUTH_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum HTTP_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_ALERT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_CONFIRM:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum JS_PROMPT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum LOAD_RESOUCE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum LOGIN_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_COMMIT_VISIBLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_FINISHED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PAGE_STARTED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PERMISSION_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum PROGRESS_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_ICON:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_TITLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum REQUEST_FOCUS:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SCALE_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOW_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SHOW_FILE_CHOOSER:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum SSL_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum UNHANDLED_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

.field public static final enum WEBPLAYER_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v1, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v0, v1

    const-string v2, "PAGE_STARTED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_STARTED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v1, v2

    const-string v3, "PAGE_FINISHED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_FINISHED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v2, v3

    const-string v4, "ERROR"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v4, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v3, v4

    const-string v5, "HTTP_ERROR"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HTTP_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v5, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v4, v5

    const-string v6, "PERMISSION_REQUEST"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PERMISSION_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v6, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v5, v6

    const-string v7, "LOAD_RESOUCE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->LOAD_RESOUCE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v7, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v6, v7

    const-string v8, "SSL_ERROR"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SSL_ERROR:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v8, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v7, v8

    const-string v9, "CLIENT_CERT_REQUEST"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CLIENT_CERT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v9, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v8, v9

    const-string v10, "HTTP_AUTH_REQUEST"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HTTP_AUTH_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v10, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v9, v10

    const-string v11, "SCALE_CHANGED"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SCALE_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v11, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v10, v11

    const-string v12, "LOGIN_REQUEST"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->LOGIN_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v12, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v11, v12

    const-string v13, "PROGRESS_CHANGED"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PROGRESS_CHANGED:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v13, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v12, v13

    const-string v14, "RECEIVED_TITLE"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TITLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v14, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v13, v14

    const-string v15, "RECEIVED_ICON"

    move-object/from16 v34, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_ICON:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v14, v0

    const-string v15, "RECEIVED_TOUCH_ICON_URL"

    move-object/from16 v35, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->RECEIVED_TOUCH_ICON_URL:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object v15, v0

    const-string v1, "SHOW_CUSTOM_VIEW"

    move-object/from16 v36, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOW_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v16, v0

    const-string v1, "HIDE_CUSTOM_VIEW"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->HIDE_CUSTOM_VIEW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v17, v0

    const-string v1, "CREATE_WINDOW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CREATE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v18, v0

    const-string v1, "CLOSE_WINDOW"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CLOSE_WINDOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v19, v0

    const-string v1, "REQUEST_FOCUS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->REQUEST_FOCUS:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v20, v0

    const-string v1, "JS_ALERT"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_ALERT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v21, v0

    const-string v1, "JS_CONFIRM"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_CONFIRM:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v22, v0

    const-string v1, "JS_PROMPT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->JS_PROMPT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v23, v0

    const-string v1, "CONSOLE_MESSAGE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->CONSOLE_MESSAGE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v24, v0

    const-string v1, "SHOW_FILE_CHOOSER"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOW_FILE_CHOOSER:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v25, v0

    const-string v1, "GEOLOCATION_PERMISSIONS_SHOW"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->GEOLOCATION_PERMISSIONS_SHOW:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v26, v0

    const-string v1, "DOWNLOAD_START"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->DOWNLOAD_START:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v27, v0

    const-string v1, "SHOULD_OVERRIDE_URL_LOADING"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_URL_LOADING:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v28, v0

    const-string v1, "SHOULD_OVERRIDE_KEY_EVENT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_OVERRIDE_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v29, v0

    const-string v1, "PAGE_COMMIT_VISIBLE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->PAGE_COMMIT_VISIBLE:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v30, v0

    const-string v1, "FORM_RESUBMISSION"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->FORM_RESUBMISSION:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v31, v0

    const-string v1, "UNHANDLED_KEY_EVENT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->UNHANDLED_KEY_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v32, v0

    const-string v1, "WEBPLAYER_EVENT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->WEBPLAYER_EVENT:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    new-instance v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v33, v0

    const-string v1, "SHOULD_INTERCEPT_REQUEST"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->SHOULD_INTERCEPT_REQUEST:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    filled-new-array/range {v0 .. v33}, [Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    move-result-object v0

    sput-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;
    .locals 1

    const-class v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->$VALUES:[Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    invoke-virtual {v0}, [Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    return-object v0
.end method
