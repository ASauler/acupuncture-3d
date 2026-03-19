.class Lcn/voidar/engine/VideoCapture$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/VideoCapture;

.field private b:Lcn/voidar/engine/a/f;

.field private c:Z

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcn/voidar/engine/VideoCapture;Lcn/voidar/engine/a/f;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture$b;->c:Z

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture$b;->e:Z

    iput-object p2, p0, Lcn/voidar/engine/VideoCapture$b;->b:Lcn/voidar/engine/a/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/voidar/engine/VideoCapture$b;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcn/voidar/engine/VideoCapture$b;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/voidar/engine/VideoCapture$b;->e:Z

    return-void
.end method

.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture$b;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/voidar/engine/VideoCapture$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$b;->b:Lcn/voidar/engine/a/f;

    invoke-virtual {v2}, Lcn/voidar/engine/a/f;->a()V

    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v2}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/voidar/engine/g;->c()V

    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v2}, Lcn/voidar/engine/VideoCapture;->b(Lcn/voidar/engine/VideoCapture;)I

    move-result v2

    iget-object v3, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v3}, Lcn/voidar/engine/VideoCapture;->c(Lcn/voidar/engine/VideoCapture;)I

    move-result v3

    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {}, Lcn/voidar/engine/VideoCapture;->a()Lcn/voidar/engine/a/d;

    move-result-object v2

    iget v3, p0, Lcn/voidar/engine/VideoCapture$b;->d:I

    invoke-virtual {v2, v3}, Lcn/voidar/engine/a/d;->a(I)V

    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v2}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v2

    invoke-virtual {v2}, Lcn/voidar/engine/g;->d()V

    iput-boolean v1, p0, Lcn/voidar/engine/VideoCapture$b;->e:Z

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$b;->b:Lcn/voidar/engine/a/f;

    invoke-virtual {v1}, Lcn/voidar/engine/a/f;->b()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    iput-boolean v1, p0, Lcn/voidar/engine/VideoCapture$b;->c:Z

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v1}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/voidar/engine/g;->b()V

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$b;->a:Lcn/voidar/engine/VideoCapture;

    invoke-static {v1}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v1

    invoke-virtual {v1}, Lcn/voidar/engine/g;->a()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
