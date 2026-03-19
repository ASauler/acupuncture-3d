.class Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;
.super Ljava/lang/Object;
.source "RNCWebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->onMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

.field final synthetic val$mContext:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;Landroid/webkit/WebView;Ljava/lang/String;Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1728
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$mContext:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1731
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iget-object v0, v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;

    if-nez v0, :cond_0

    return-void

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iget-object v0, v0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->mRNCWebViewClient:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->createWebViewEvent(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "data"

    .line 1735
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iget-object v1, v1, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->mCatalystInstance:Lcom/facebook/react/bridge/CatalystInstance;

    if-eqz v1, :cond_1

    .line 1738
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$mContext:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    const-string v2, "onMessage"

    invoke-virtual {v1, v2, v0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->sendDirectMessage(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->this$0:Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/reactnativecommunity/webview/events/TopMessageEvent;

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$1;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getId()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/reactnativecommunity/webview/events/TopMessageEvent;-><init>(ILcom/facebook/react/bridge/WritableMap;)V

    invoke-virtual {v1, v2, v3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView;->dispatchEvent(Landroid/webkit/WebView;Lcom/facebook/react/uimanager/events/Event;)V

    :goto_0
    return-void
.end method
