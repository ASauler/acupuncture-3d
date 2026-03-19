.class public La/a/a/k/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/k/a/b;->a()Lcom/wikitude/common/CallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/k/a/b;


# direct methods
.method public constructor <init>(La/a/a/k/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v0}, La/a/a/k/a/b;->a(La/a/a/k/a/b;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1}, La/a/a/k/a/b;->b(La/a/a/k/a/b;)I

    move-result v1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1}, La/a/a/k/a/b;->c(La/a/a/k/a/b;)La/a/a/k/a/c;

    move-result-object v1

    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1}, La/a/a/k/a/b;->c(La/a/a/k/a/b;)La/a/a/k/a/c;

    move-result-object v1

    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1}, La/a/a/k/a/b;->c(La/a/a/k/a/b;)La/a/a/k/a/c;

    move-result-object v1

    const/16 v2, 0x5a

    goto :goto_0

    :cond_3
    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1}, La/a/a/k/a/b;->c(La/a/a/k/a/b;)La/a/a/k/a/c;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, La/a/a/k/a/c;->a(I)V

    :goto_1
    iget-object v1, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v1, v0}, La/a/a/k/a/b;->a(La/a/a/k/a/b;I)I

    :cond_4
    iget-object v0, p0, La/a/a/k/a/b$a;->a:La/a/a/k/a/b;

    invoke-static {v0}, La/a/a/k/a/b;->d(La/a/a/k/a/b;)La/a/a/l/a/a;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, La/a/a/l/a/a;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method
