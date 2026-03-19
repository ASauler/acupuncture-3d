.class public La/a/a/d/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:La/a/a/d/a/b;

.field private c:La/a/a/d/a/d;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/d/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/a/e;->d:Z

    iput-object p1, p0, La/a/a/d/a/e;->a:Landroid/content/Context;

    iput-object p2, p0, La/a/a/d/a/e;->b:La/a/a/d/a/b;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()La/a/a/d/a/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    check-cast v0, La/a/a/d/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            "Z",
            "Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/internal/AndroidCamera;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/d/a/e;->a:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, La/a/a/d/a/f;->a(Landroid/content/Context;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->isUsingCamera2()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, La/a/a/d/a/h;

    iget-object v1, p0, La/a/a/d/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, La/a/a/d/a/e;->b:La/a/a/d/a/b;

    invoke-direct {v0, v1, v2}, La/a/a/d/a/h;-><init>(Landroid/content/Context;La/a/a/d/a/b;)V

    :goto_0
    iput-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    goto :goto_2

    :cond_0
    new-instance v0, La/a/a/d/a/g;

    iget-object v1, p0, La/a/a/d/a/e;->b:La/a/a/d/a/b;

    invoke-direct {v0, v1}, La/a/a/d/a/g;-><init>(La/a/a/d/a/b;)V

    goto :goto_0

    :cond_1
    instance-of v0, v0, La/a/a/d/a/h;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->isUsingCamera2()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/d/a/e;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0}, La/a/a/d/a/d;->f()V

    :cond_2
    new-instance v0, La/a/a/d/a/g;

    iget-object v1, p0, La/a/a/d/a/e;->b:La/a/a/d/a/b;

    invoke-direct {v0, v1}, La/a/a/d/a/g;-><init>(La/a/a/d/a/b;)V

    iput-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0, p1}, La/a/a/d/a/d;->a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V

    iget-boolean p1, p0, La/a/a/d/a/e;->d:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_3
    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    instance-of v0, v0, La/a/a/d/a/g;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/wikitude/common/camera/internal/AndroidCamera;->isUsingCamera2()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, La/a/a/d/a/e;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0}, La/a/a/d/a/d;->f()V

    :cond_4
    new-instance v0, La/a/a/d/a/h;

    iget-object v1, p0, La/a/a/d/a/e;->a:Landroid/content/Context;

    iget-object v2, p0, La/a/a/d/a/e;->b:La/a/a/d/a/b;

    invoke-direct {v0, v1, v2}, La/a/a/d/a/h;-><init>(Landroid/content/Context;La/a/a/d/a/b;)V

    iput-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0, p1}, La/a/a/d/a/d;->a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V

    iget-boolean p1, p0, La/a/a/d/a/e;->d:Z

    if-eqz p1, :cond_6

    :goto_1
    iget-object p1, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {p1}, La/a/a/d/a/d;->b()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0, p1}, La/a/a/d/a/d;->a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lcom/wikitude/common/CallStatus;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/a/a/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, La/a/a/d/a/f;->a(Landroid/content/Context;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/d/a/a;->d:La/a/a/d/a/a;

    invoke-virtual {v1}, La/a/a/d/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.camera.android"

    const-string v3, "Could not start the camera because no activeCamera has been set."

    invoke-direct {v0, v1, v2, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-interface {v0}, La/a/a/d/a/d;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/d/a/e;->d:Z

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, La/a/a/d/a/e;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/d/a/e;->d:Z

    iget-object v0, p0, La/a/a/d/a/e;->c:La/a/a/d/a/d;

    invoke-interface {v0}, La/a/a/d/a/d;->f()V
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
