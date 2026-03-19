.class Lcom/reactnativecommunity/webview/RNCWebViewManager$2;
.super Ljava/lang/Object;
.source "RNCWebViewManager.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

.field final synthetic val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field final synthetic val$webView:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebViewManager;Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->val$webView:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string p5, "RNCWebViewManager"

    .line 221
    iget-object p6, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->val$webView:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    invoke-virtual {p6, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    .line 223
    iget-object p6, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->val$reactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-static {p6}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->getModule(Lcom/facebook/react/bridge/ReactContext;)Lcom/reactnativecommunity/webview/RNCWebViewModule;

    move-result-object p6

    .line 227
    :try_start_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    invoke-static {p1, p3, p4}, Lcom/reactnativecommunity/webview/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 234
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Downloading "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 239
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cookie"

    .line 242
    invoke-virtual {v0, v1, p1}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Error getting cookie for DownloadManager"

    .line 244
    invoke-static {p5, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string p1, "User-Agent"

    .line 248
    invoke-virtual {v0, p1, p2}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 249
    invoke-virtual {v0, p3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 250
    invoke-virtual {v0, p4}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 251
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p1, 0x1

    .line 252
    invoke-virtual {v0, p1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 253
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 255
    invoke-virtual {p6, v0}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->setDownloadRequest(Landroid/app/DownloadManager$Request;)V

    .line 257
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->-$$Nest$mgetDownloadingMessage(Lcom/reactnativecommunity/webview/RNCWebViewManager;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

    invoke-static {p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->-$$Nest$mgetLackPermissionToDownloadMessage(Lcom/reactnativecommunity/webview/RNCWebViewManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$2;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager;

    invoke-static {p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager;->-$$Nest$mgetDownloadingMessage(Lcom/reactnativecommunity/webview/RNCWebViewManager;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModule;->downloadFile(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_1
    move-exception p1

    const-string p2, "Unsupported URI, aborting download"

    .line 229
    invoke-static {p5, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
