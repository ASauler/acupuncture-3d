.class public Lcom/reactnative/unity/view/UnityViewManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "UnityViewManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/reactnative/unity/view/UnityView;",
        ">;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "Landroid/view/View$OnAttachStateChangeListener;"
    }
.end annotation


# static fields
.field private static final REACT_CLASS:Ljava/lang/String; = "UnityView"


# instance fields
.field private context:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/reactnative/unity/view/UnityViewManager;->context:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 29
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method private restoreUnityUserState()V
    .locals 4

    .line 89
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->isUnityPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 91
    new-instance v1, Lcom/reactnative/unity/view/UnityViewManager$1;

    invoke-direct {v1, p0}, Lcom/reactnative/unity/view/UnityViewManager$1;-><init>(Lcom/reactnative/unity/view/UnityViewManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/reactnative/unity/view/UnityViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnative/unity/view/UnityView;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnative/unity/view/UnityView;
    .locals 2

    .line 39
    new-instance v0, Lcom/reactnative/unity/view/UnityView;

    invoke-direct {v0, p1}, Lcom/reactnative/unity/view/UnityView;-><init>(Landroid/content/Context;)V

    const-string p1, "createViewInstance"

    const-string v1, "testlog1207"

    .line 40
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v0, p0}, Lcom/reactnative/unity/view/UnityView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/reactnative/unity/view/UnityView;->setUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    goto :goto_0

    :cond_0
    const-string p1, "createViewInstance create player"

    .line 46
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UnityView"

    return-object v0
.end method

.method public bridge synthetic onDropViewInstance(Landroid/view/View;)V
    .locals 0

    .line 21
    check-cast p1, Lcom/reactnative/unity/view/UnityView;

    invoke-virtual {p0, p1}, Lcom/reactnative/unity/view/UnityViewManager;->onDropViewInstance(Lcom/reactnative/unity/view/UnityView;)V

    return-void
.end method

.method public onDropViewInstance(Lcom/reactnative/unity/view/UnityView;)V
    .locals 0

    .line 59
    invoke-virtual {p1, p0}, Lcom/reactnative/unity/view/UnityView;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 60
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/SimpleViewManager;->onDropViewInstance(Landroid/view/View;)V

    return-void
.end method

.method public onHostDestroy()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->isUnityReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    :cond_0
    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 74
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->isUnityReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 2

    const-string v0, "testlog1207"

    const-string v1, "createViewInstance create player"

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->isUnityReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 68
    invoke-direct {p0}, Lcom/reactnative/unity/view/UnityViewManager;->restoreUnityUserState()V

    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/reactnative/unity/view/UnityViewManager;->restoreUnityUserState()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
