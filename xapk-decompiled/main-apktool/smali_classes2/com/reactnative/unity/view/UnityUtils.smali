.class public Lcom/reactnative/unity/view/UnityUtils;
.super Ljava/lang/Object;
.source "UnityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnative/unity/view/UnityUtils$CreateCallback;
    }
.end annotation


# static fields
.field private static _isUnityPaused:Z

.field private static _isUnityReady:Z

.field private static final mUnityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/reactnative/unity/view/UnityEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private static unityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static bridge synthetic -$$Nest$sfgetunityPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 1

    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfput_isUnityReady(Z)V
    .locals 0

    sput-boolean p0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputunityPlayer(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    sput-object p0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/reactnative/unity/view/UnityUtils;->mUnityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUnityEventListener(Lcom/reactnative/unity/view/UnityEventListener;)V
    .locals 1

    .line 146
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->mUnityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addUnityViewToBackground()V
    .locals 3

    .line 154
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_1
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->setZ(F)V

    .line 163
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 164
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 165
    sget-object v2, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static addUnityViewToGroup(Landroid/view/ViewGroup;)V
    .locals 3

    .line 169
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 176
    sget-object v1, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 177
    sget-object p0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 178
    sget-object p0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 179
    sget-object p0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    return-void
.end method

.method public static createPlayer(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Lcom/reactnative/unity/view/UnityUtils$CreateCallback;->onReady()V

    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/reactnative/unity/view/UnityUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/reactnative/unity/view/UnityUtils$1;-><init>(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 1

    .line 37
    sget-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method public static isUnityPaused()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityPaused:Z

    return v0
.end method

.method public static isUnityReady()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityReady:Z

    return v0
.end method

.method public static onUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 137
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->mUnityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reactnative/unity/view/UnityEventListener;

    .line 139
    :try_start_0
    invoke-interface {v1, p0}, Lcom/reactnative/unity/view/UnityEventListener;->onMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pause()V
    .locals 1

    .line 120
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    const/4 v0, 0x1

    .line 122
    sput-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityPaused:Z

    :cond_0
    return-void
.end method

.method public static postMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    sget-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityReady:Z

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "@UnityMessage@"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "IsLoadReady"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "changeSubmodel"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpenChallengeGame"

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpenNerveConductionSt"

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpenNewSearch"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_1
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->pause()V

    .line 110
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->resume()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 116
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static removeUnityEventListener(Lcom/reactnative/unity/view/UnityEventListener;)V
    .locals 1

    .line 150
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->mUnityEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static resume()V
    .locals 1

    .line 127
    sget-object v0, Lcom/reactnative/unity/view/UnityUtils;->unityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    const/4 v0, 0x0

    .line 129
    sput-boolean v0, Lcom/reactnative/unity/view/UnityUtils;->_isUnityPaused:Z

    :cond_0
    return-void
.end method
