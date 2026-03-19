.class Lcn/voidar/engine/VideoCapture$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/voidar/engine/VideoCapture;->startCapturing(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/voidar/engine/VideoCapture;


# direct methods
.method constructor <init>(Lcn/voidar/engine/VideoCapture;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    iput-object p2, p0, Lcn/voidar/engine/VideoCapture$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v1}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/g;

    move-result-object v1

    iget-object v2, p0, Lcn/voidar/engine/VideoCapture$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v3}, Lcn/voidar/engine/VideoCapture;->b(Lcn/voidar/engine/VideoCapture;)I

    move-result v3

    iget-object v4, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v4}, Lcn/voidar/engine/VideoCapture;->c(Lcn/voidar/engine/VideoCapture;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/voidar/engine/g;->a(Ljava/lang/String;II)V

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v1}, Lcn/voidar/engine/VideoCapture;->e(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/VideoCapture$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/voidar/engine/VideoCapture$b;->start()V

    iget-object v1, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcn/voidar/engine/VideoCapture;->a(Lcn/voidar/engine/VideoCapture;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->d(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/a;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcn/voidar/engine/VideoCapture$1;->b:Lcn/voidar/engine/VideoCapture;

    invoke-static {v0}, Lcn/voidar/engine/VideoCapture;->f(Lcn/voidar/engine/VideoCapture;)Lcn/voidar/engine/VideoCapture$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/voidar/engine/VideoCapture$a;->start()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
