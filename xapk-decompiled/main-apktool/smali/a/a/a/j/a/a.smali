.class public final La/a/a/j/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/j/a/a$c;
    }
.end annotation


# instance fields
.field private final a:La/a/a/l/a/a;

.field private b:La/a/a/j/a/a$c;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/l/a/a;

    const-string v1, "RenderThread"

    invoke-direct {v0, v1}, La/a/a/l/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/j/a/a;->a:La/a/a/l/a/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, La/a/a/j/a/a;->a:La/a/a/l/a/a;

    new-instance v1, La/a/a/j/a/a$b;

    invoke-direct {v1, p0}, La/a/a/j/a/a$b;-><init>(La/a/a/j/a/a;)V

    invoke-virtual {v0, v1}, La/a/a/l/a/a;->a(Ljava/lang/Runnable;)Z

    iget-object v0, p0, La/a/a/j/a/a;->a:La/a/a/l/a/a;

    invoke-virtual {v0}, La/a/a/l/a/a;->b()Z

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, La/a/a/j/a/a;->c:I

    return-void
.end method

.method public a(La/a/a/j/a/a$c;)V
    .locals 1

    iput-object p1, p0, La/a/a/j/a/a;->b:La/a/a/j/a/a$c;

    iget-object p1, p0, La/a/a/j/a/a;->a:La/a/a/l/a/a;

    invoke-virtual {p1}, La/a/a/l/a/a;->a()Z

    iget-object p1, p0, La/a/a/j/a/a;->a:La/a/a/l/a/a;

    new-instance v0, La/a/a/j/a/a$a;

    invoke-direct {v0, p0}, La/a/a/j/a/a$a;-><init>(La/a/a/j/a/a;)V

    invoke-virtual {p1, v0}, La/a/a/l/a/a;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public doFrame(J)V
    .locals 0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    iget-object p1, p0, La/a/a/j/a/a;->b:La/a/a/j/a/a$c;

    invoke-interface {p1}, La/a/a/j/a/a$c;->a()V

    return-void
.end method
