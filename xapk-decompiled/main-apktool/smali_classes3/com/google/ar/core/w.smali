.class final Lcom/google/ar/core/w;
.super Ljava/lang/Object;
.source "InstallServiceImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/ar/core/v;


# direct methods
.method constructor <init>(Lcom/google/ar/core/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/w;->a:Lcom/google/ar/core/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ar/core/w;->a:Lcom/google/ar/core/v;

    .line 1
    invoke-static {p1, p2}, Lcom/google/ar/core/v;->e(Lcom/google/ar/core/v;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lcom/google/ar/core/w;->a:Lcom/google/ar/core/v;

    .line 1
    invoke-static {p1}, Lcom/google/ar/core/v;->f(Lcom/google/ar/core/v;)V

    return-void
.end method
