.class public final La/a/a/c/a/b$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/c/a/b$d;->c(Landroid/content/Context;La/a/a/c/a/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:La/a/a/c/a/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 0

    iput-object p1, p0, La/a/a/c/a/b$d$a;->a:Landroid/content/Context;

    iput-object p2, p0, La/a/a/c/a/b$d$a;->b:La/a/a/c/a/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v0

    iget-object v1, p0, La/a/a/c/a/b$d$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/ArCoreApk;->checkAvailability(Landroid/content/Context;)Lcom/google/ar/core/ArCoreApk$Availability;

    move-result-object v0

    invoke-static {v0}, La/a/a/c/a/b$d;->a(Lcom/google/ar/core/ArCoreApk$Availability;)Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-static {}, La/a/a/c/a/b$d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, La/a/a/c/a/b$d;->a(Z)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "availability: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La/a/a/c/a/b$d;->b(Lcom/google/ar/core/ArCoreApk$Availability;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "APK_INSTALLATION"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La/a/a/c/a/b$d$a;->b:La/a/a/c/a/b$b;

    invoke-static {v0}, La/a/a/c/a/b$d;->b(Lcom/google/ar/core/ArCoreApk$Availability;)I

    move-result v2

    invoke-interface {v1, v2}, La/a/a/c/a/b$b;->a(I)V

    invoke-virtual {v0}, Lcom/google/ar/core/ArCoreApk$Availability;->isTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La/a/a/c/a/b$d$a$a;

    invoke-direct {v1, p0}, La/a/a/c/a/b$d$a$a;-><init>(La/a/a/c/a/b$d$a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {}, La/a/a/c/a/b$d;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
