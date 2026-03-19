.class Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebPlayerDownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;


# direct methods
.method private constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;-><init>(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    const-string v1, "onDownloadStart"

    invoke-static {v0, v1}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$500(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->WEBPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;->DOWNLOAD_START:Lcom/unity3d/splash/services/ads/webplayer/WebPlayerEvent;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object p5, p0, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer$WebPlayerDownloadListener;->this$0:Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;

    invoke-static {p5}, Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;->access$600(Lcom/unity3d/splash/services/ads/webplayer/WebPlayer;)Ljava/lang/String;

    move-result-object v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
