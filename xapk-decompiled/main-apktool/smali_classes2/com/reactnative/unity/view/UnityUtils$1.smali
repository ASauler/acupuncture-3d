.class Lcom/reactnative/unity/view/UnityUtils$1;
.super Ljava/lang/Object;
.source "UnityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnative/unity/view/UnityUtils;->createPlayer(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/reactnative/unity/view/UnityUtils$CreateCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/reactnative/unity/view/UnityUtils$CreateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$callback:Lcom/reactnative/unity/view/UnityUtils$CreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 60
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    new-instance v3, Lcom/unity3d/player/UnityPlayer;

    iget-object v4, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/reactnative/unity/view/UnityUtils;->-$$Nest$sfputunityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    const-wide/16 v3, 0x3e8

    .line 70
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :catch_0
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->addUnityViewToBackground()V

    .line 76
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->-$$Nest$sfgetunityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 77
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->-$$Nest$sfgetunityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 78
    invoke-static {}, Lcom/reactnative/unity/view/UnityUtils;->-$$Nest$sfgetunityPlayer()Lcom/unity3d/player/UnityPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unity3d/player/UnityPlayer;->resume()V

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x800

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 83
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 85
    :cond_1
    invoke-static {v1}, Lcom/reactnative/unity/view/UnityUtils;->-$$Nest$sfput_isUnityReady(Z)V

    .line 86
    iget-object v0, p0, Lcom/reactnative/unity/view/UnityUtils$1;->val$callback:Lcom/reactnative/unity/view/UnityUtils$CreateCallback;

    invoke-interface {v0}, Lcom/reactnative/unity/view/UnityUtils$CreateCallback;->onReady()V

    return-void
.end method
