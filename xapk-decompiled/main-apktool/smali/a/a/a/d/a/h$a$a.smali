.class public La/a/a/d/a/h$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/d/a/h$a;->onOpened(Landroid/hardware/camera2/CameraDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/h$a;


# direct methods
.method public constructor <init>(La/a/a/d/a/h$a;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h$a$a;->a:La/a/a/d/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, La/a/a/d/a/h$a$a;->a:La/a/a/d/a/h$a;

    iget-object v0, v0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->l(La/a/a/d/a/h;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/d/a/h$a$a;->a:La/a/a/d/a/h$a;

    iget-object v0, v0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->l(La/a/a/d/a/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
