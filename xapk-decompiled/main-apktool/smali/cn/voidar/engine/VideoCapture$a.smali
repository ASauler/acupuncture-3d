.class Lcn/voidar/engine/VideoCapture$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/VideoCapture;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcn/voidar/engine/VideoCapture;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture$a;->b:Z

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture$a;->b:Z

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v1}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/voidar/engine/a;->a()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture$a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v2}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/voidar/engine/a;->b(Z)V

    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v2}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/voidar/engine/a;->a(Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    iput-boolean v1, p0, Lcn/voidar/engine/VideoCapture$a;->b:Z

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v1

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/voidar/engine/a;->a(Z)V

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/voidar/engine/a;->b(Z)V

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$a;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/voidar/engine/a;->b()V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
