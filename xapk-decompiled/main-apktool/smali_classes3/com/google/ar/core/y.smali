.class final Lcom/google/ar/core/y;
.super Ljava/lang/Object;
.source "InstallServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/ar/core/i;

.field final synthetic c:Lcom/google/ar/core/v;


# direct methods
.method constructor <init>(Lcom/google/ar/core/v;Landroid/content/Context;Lcom/google/ar/core/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/y;->c:Lcom/google/ar/core/v;

    iput-object p2, p0, Lcom/google/ar/core/y;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/y;->c:Lcom/google/ar/core/v;

    invoke-static {v0}, Lcom/google/ar/core/v;->g(Lcom/google/ar/core/v;)Lcom/google/a/b/a/a/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ar/core/y;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/ar/core/v;->k()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/ar/core/x;

    invoke-direct {v3, p0}, Lcom/google/ar/core/x;-><init>(Lcom/google/ar/core/y;)V

    .line 3
    invoke-interface {v0, v1, v2, v3}, Lcom/google/a/b/a/a/a/c;->e(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/a/b/a/a/a/e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ARCore-InstallService"

    const-string v2, "requestInfo threw"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/ar/core/y;->b:Lcom/google/ar/core/i;

    .line 5
    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {v0, v1}, Lcom/google/ar/core/i;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method
