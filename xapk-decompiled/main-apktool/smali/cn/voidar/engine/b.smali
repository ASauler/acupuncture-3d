.class public Lcn/voidar/engine/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Z

.field protected f:Z

.field public g:Ljava/lang/String;

.field protected h:I

.field protected i:Ljava/util/concurrent/Semaphore;

.field protected j:Ljava/util/concurrent/Semaphore;

.field protected k:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    iput v0, p0, Lcn/voidar/engine/b;->a:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcn/voidar/engine/b;->b:I

    const/16 v0, 0x1e

    iput v0, p0, Lcn/voidar/engine/b;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcn/voidar/engine/b;->d:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/voidar/engine/b;->e:Z

    iput-boolean v1, p0, Lcn/voidar/engine/b;->f:Z

    const-string v1, ""

    iput-object v1, p0, Lcn/voidar/engine/b;->g:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcn/voidar/engine/b;->h:I

    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lcn/voidar/engine/b;->i:Ljava/util/concurrent/Semaphore;

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcn/voidar/engine/b;->j:Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    iput v0, p0, Lcn/voidar/engine/b;->k:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p2, p0, Lcn/voidar/engine/b;->b:I

    iput p1, p0, Lcn/voidar/engine/b;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/voidar/engine/b;->e:Z

    return-void
.end method

.method protected a([BDD)V
    .locals 9

    sget v0, Lcn/voidar/engine/AndroidDevice;->lockOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcn/voidar/engine/AndroidDevice;->lockOrientation:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/voidar/engine/AndroidDevice;->screenOrientation:I

    :goto_0
    move v4, v0

    iget v1, p0, Lcn/voidar/engine/b;->a:I

    iget v2, p0, Lcn/voidar/engine/b;->b:I

    move-object v3, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v1 .. v8}, Lcn/voidar/engine/VoidARNative;->newImageAvailable(II[BIDD)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcn/voidar/engine/b;->d:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcn/voidar/engine/b;->k:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcn/voidar/engine/b;->h:I

    return v0
.end method
