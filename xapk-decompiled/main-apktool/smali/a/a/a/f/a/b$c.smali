.class public La/a/a/f/a/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private final a:La/a/a/f/a/c;

.field private final b:[F

.field private final c:[F

.field private final d:[F

.field private final e:[F

.field private f:[F

.field private g:[F

.field public final synthetic h:La/a/a/f/a/b;


# direct methods
.method private constructor <init>(La/a/a/f/a/b;)V
    .locals 1

    iput-object p1, p0, La/a/a/f/a/b$c;->h:La/a/a/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, La/a/a/f/a/c;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, La/a/a/f/a/c;-><init>(I)V

    iput-object p1, p0, La/a/a/f/a/b$c;->a:La/a/a/f/a/c;

    const/16 p1, 0x10

    new-array v0, p1, [F

    iput-object v0, p0, La/a/a/f/a/b$c;->b:[F

    new-array p1, p1, [F

    iput-object p1, p0, La/a/a/f/a/b$c;->c:[F

    const/4 p1, 0x3

    new-array v0, p1, [F

    iput-object v0, p0, La/a/a/f/a/b$c;->d:[F

    new-array p1, p1, [F

    iput-object p1, p0, La/a/a/f/a/b$c;->e:[F

    return-void
.end method

.method public synthetic constructor <init>(La/a/a/f/a/b;La/a/a/f/a/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/f/a/b$c;-><init>(La/a/a/f/a/b;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a([F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/a/a/f/a/b$c;->f:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b([F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, La/a/a/f/a/b$c;->g:[F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/f/a/b$c;->f:[F

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/a/f/a/b$c;->g:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, La/a/a/f/a/b$c;->a:La/a/a/f/a/c;

    iget-object v2, p0, La/a/a/f/a/b$c;->d:[F

    invoke-virtual {v1, v0, v2}, La/a/a/f/a/c;->a([F[F)V

    iget-object v0, p0, La/a/a/f/a/b$c;->a:La/a/a/f/a/c;

    iget-object v1, p0, La/a/a/f/a/b$c;->g:[F

    iget-object v2, p0, La/a/a/f/a/b$c;->e:[F

    invoke-virtual {v0, v1, v2}, La/a/a/f/a/c;->a([F[F)V

    iget-object v0, p0, La/a/a/f/a/b$c;->b:[F

    iget-object v1, p0, La/a/a/f/a/b$c;->c:[F

    iget-object v2, p0, La/a/a/f/a/b$c;->d:[F

    iget-object v3, p0, La/a/a/f/a/b$c;->e:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget-object v0, p0, La/a/a/f/a/b$c;->h:La/a/a/f/a/b;

    invoke-static {v0}, La/a/a/f/a/b;->b(La/a/a/f/a/b;)La/a/a/f/a/f;

    move-result-object v0

    iget-object v1, p0, La/a/a/f/a/b$c;->h:La/a/a/f/a/b;

    invoke-static {v1}, La/a/a/f/a/b;->c(La/a/a/f/a/b;)La/a/a/f/a/g;

    move-result-object v1

    iget-object v2, p0, La/a/a/f/a/b$c;->b:[F

    invoke-interface {v0, v1, v2}, La/a/a/f/a/f;->a(La/a/a/f/a/g;[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
