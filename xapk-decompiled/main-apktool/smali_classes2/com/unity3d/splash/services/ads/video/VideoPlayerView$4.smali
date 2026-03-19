.class Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->prepare(Ljava/lang/String;FI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {v0}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopPrepareTimer()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v0, p1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$102(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/splash/services/core/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/splash/services/core/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;->GENERIC_ERROR:Lcom/unity3d/splash/services/ads/video/VideoPlayerEvent;

    iget-object v2, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-static {v2}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/splash/services/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v2, p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/unity3d/splash/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unity3d/splash/services/ads/video/VideoPlayerView$4;->this$0:Lcom/unity3d/splash/services/ads/video/VideoPlayerView;

    invoke-virtual {p1}, Lcom/unity3d/splash/services/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    const/4 p1, 0x1

    return p1
.end method
