.class public Lcom/reactnative/unity/view/UnityView;
.super Landroid/widget/FrameLayout;
.source "UnityView.java"


# instance fields
.field private view:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityView;->view:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 29
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityView;->view:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/reactnative/unity/view/UnityView;->view:Lcom/unity3d/player/UnityPlayer;

    .line 23
    invoke-static {p0}, Lcom/reactnative/unity/view/UnityUtils;->addUnityViewToGroup(Landroid/view/ViewGroup;)V

    return-void
.end method
