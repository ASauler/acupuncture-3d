.class Lcom/reactnative/unity/view/UnityViewManager$1;
.super Ljava/lang/Object;
.source "UnityViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/unity/view/UnityViewManager;->restoreUnityUserState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnative/unity/view/UnityViewManager;


# direct methods
.method constructor <init>(Lcom/reactnative/unity/view/UnityViewManager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/reactnative/unity/view/UnityViewManager$1;->this$0:Lcom/reactnative/unity/view/UnityViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->getPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_0
    return-void
.end method
