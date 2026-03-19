.class Lcn/voidar/engine/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/e;


# direct methods
.method private constructor <init>(Lcn/voidar/engine/e;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/e$a;->a:Lcn/voidar/engine/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/voidar/engine/e;Lcn/voidar/engine/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/voidar/engine/e$a;-><init>(Lcn/voidar/engine/e;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8

    iget-object v0, p0, Lcn/voidar/engine/e$a;->a:Lcn/voidar/engine/e;

    iget-object v0, v0, Lcn/voidar/engine/e;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object p1

    const-string v0, "Unable to aquire image semaphore, need to free some buffers!!"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/i;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcn/voidar/engine/j;->a(Landroid/media/Image;)[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-object v0, p0, Lcn/voidar/engine/e$a;->a:Lcn/voidar/engine/e;

    invoke-virtual/range {v0 .. v5}, Lcn/voidar/engine/e;->a([BDD)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    :cond_1
    iget-object p1, p0, Lcn/voidar/engine/e$a;->a:Lcn/voidar/engine/e;

    iget-object p1, p1, Lcn/voidar/engine/e;->j:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
