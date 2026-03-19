.class public Lcom/vesal/jlsx/international/module/TwitterLoginUtils;
.super Ljava/lang/Object;
.source "TwitterLoginUtils.java"


# static fields
.field static final ERROR_MSG_NO_ACTIVITY:Ljava/lang/String; = "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."


# instance fields
.field final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field volatile authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

.field callback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->activityRef:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-static {}, Lcom/twitter/sdk/android/core/TwitterCore;->getInstance()Lcom/twitter/sdk/android/core/TwitterCore;

    return-void
.end method

.method private checkActivity(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    :cond_0
    return-void
.end method

.method private checkCallback(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 0

    return-void
.end method


# virtual methods
.method getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;-><init>()V

    iput-object v1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->authClient:Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setOnLoginByTwitterClick(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->callback:Lcom/twitter/sdk/android/core/Callback;

    .line 28
    invoke-direct {p0, p1}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->checkCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 29
    iget-object v0, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->checkActivity(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v0

    iget-object v1, p0, Lcom/vesal/jlsx/international/module/TwitterLoginUtils;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method
