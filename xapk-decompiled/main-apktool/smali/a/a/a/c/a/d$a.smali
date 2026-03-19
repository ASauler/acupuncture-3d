.class public La/a/a/c/a/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private a:I

.field public final synthetic b:La/a/a/c/a/d;


# direct methods
.method public constructor <init>(La/a/a/c/a/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/c/a/d$a;->b:La/a/a/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, La/a/a/c/a/d$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/a/c/a/d$a;->b:La/a/a/c/a/d;

    invoke-static {v0}, La/a/a/c/a/d;->a(La/a/a/c/a/d;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, La/a/a/c/a/d$a;->a:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v1

    :goto_1
    iput v0, p0, La/a/a/c/a/d$a;->a:I

    iget-object v0, p0, La/a/a/c/a/d$a;->b:La/a/a/c/a/d;

    invoke-static {v0}, La/a/a/c/a/d;->b(La/a/a/c/a/d;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_4
    iget-object v1, p0, La/a/a/c/a/d$a;->b:La/a/a/c/a/d;

    invoke-static {v1}, La/a/a/c/a/d;->c(La/a/a/c/a/d;)La/a/a/c/a/c;

    move-result-object v1

    invoke-interface {v1, v0}, La/a/a/c/a/c;->a(F)V

    :cond_5
    iget-object v0, p0, La/a/a/c/a/d$a;->b:La/a/a/c/a/d;

    invoke-static {v0}, La/a/a/c/a/d;->d(La/a/a/c/a/d;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
