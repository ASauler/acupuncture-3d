.class public Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/f/a/f;


# static fields
.field private static final a:I = 0x10


# instance fields
.field private final b:J

.field private final c:Landroid/hardware/SensorManager;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/a/a/f/a/g;",
            "La/a/a/f/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/a/a/f/a/g;",
            "Lcom/wikitude/common/CallStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/wikitude/common/CallStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    iput-wide p2, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->b:J

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->c:Landroid/hardware/SensorManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->d:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p3

    const-string v0, "com.wikitude.device_motion.android"

    if-nez p2, :cond_0

    new-instance p2, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object p3, La/a/a/f/a/a;->b:La/a/a/f/a/a;

    invoke-virtual {p3}, La/a/a/f/a/a;->a()I

    move-result p3

    const-string v1, "Android SensorManager is not available."

    invoke-direct {p2, p3, v0, v1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p3

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object p2, La/a/a/f/a/a;->c:La/a/a/f/a/a;

    invoke-virtual {p2}, La/a/a/f/a/a;->a()I

    move-result p2

    const-string p3, "Android PackageManager is not available."

    invoke-direct {p1, p2, v0, p3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->g:Lcom/wikitude/common/CallStatus;

    return-void
.end method

.method private declared-synchronized a(La/a/a/f/a/g;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->g:Lcom/wikitude/common/CallStatus;

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    new-instance v1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v2, La/a/a/f/a/a;->d:La/a/a/f/a/a;

    invoke-virtual {v2}, La/a/a/f/a/a;->a()I

    move-result v2

    iget-object v3, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->g:Lcom/wikitude/common/CallStatus;

    invoke-interface {v3}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v3

    const-string v4, "com.wikitude.device_motion.android"

    const-string v5, "Unable to setup Sensors."

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/wikitude/common/WikitudeError;)V

    invoke-static {v1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->d:Landroid/content/pm/PackageManager;

    invoke-static {p1, v0}, La/a/a/f/a/h;->a(La/a/a/f/a/g;Landroid/content/pm/PackageManager;)Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/a/f/a/e;

    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->c:Landroid/hardware/SensorManager;

    invoke-interface {p1, v0, p0}, La/a/a/f/a/e;->a(Landroid/hardware/SensorManager;La/a/a/f/a/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wikitude/common/CallStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/a/f/a/e;

    if-nez p1, :cond_1

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/f/a/a;->d:La/a/a/f/a/a;

    invoke-virtual {v0}, La/a/a/f/a/a;->a()I

    move-result v0

    const-string v1, "com.wikitude.device_motion.android"

    const-string v2, "Unable to start Sensors."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-interface {p1}, La/a/a/f/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_2
    const/16 v0, 0x10

    :try_start_3
    invoke-interface {p1, v0}, La/a/a/f/a/e;->a(I)Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized c(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/a/a/f/a/e;

    if-nez p1, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/f/a/a;->d:La/a/a/f/a/a;

    invoke-virtual {v0}, La/a/a/f/a/a;->a()I

    move-result v0

    const-string v1, "com.wikitude.device_motion.android"

    const-string v2, "Unable to stop Sensors."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-interface {p1}, La/a/a/f/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-interface {p1}, La/a/a/f/a/e;->c()Lcom/wikitude/common/CallStatus;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(La/a/a/f/a/g;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/f/a/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, La/a/a/f/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, La/a/a/f/a/e;->c()Lcom/wikitude/common/CallStatus;

    :cond_1
    iget-object v1, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, La/a/a/f/a/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setupOrientationEvent()V
    .locals 1

    sget-object v0, La/a/a/f/a/g;->b:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->a(La/a/a/f/a/g;)V

    return-void
.end method

.method private setupRotationEvent()V
    .locals 1

    sget-object v0, La/a/a/f/a/g;->a:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->a(La/a/a/f/a/g;)V

    return-void
.end method

.method private startOrientationEvent()Lcom/wikitude/common/CallStatus;
    .locals 1

    sget-object v0, La/a/a/f/a/g;->b:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->b(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method private startRotationEvent()Lcom/wikitude/common/CallStatus;
    .locals 1

    sget-object v0, La/a/a/f/a/g;->a:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->b(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method private stopOrientationEvent()Lcom/wikitude/common/CallStatus;
    .locals 1

    sget-object v0, La/a/a/f/a/g;->b:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->c(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method private stopRotationEvent()Lcom/wikitude/common/CallStatus;
    .locals 1

    sget-object v0, La/a/a/f/a/g;->a:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->c(La/a/a/f/a/g;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method private teardownOrientationEvent()V
    .locals 1

    sget-object v0, La/a/a/f/a/g;->b:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->d(La/a/a/f/a/g;)V

    return-void
.end method

.method private teardownRotationEvent()V
    .locals 1

    sget-object v0, La/a/a/f/a/g;->a:La/a/a/f/a/g;

    invoke-direct {p0, v0}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->d(La/a/a/f/a/g;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->nativeNotifyCompassAccuracyChanged(JI)V

    return-void
.end method

.method public a(La/a/a/f/a/g;[F)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->b:J

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/wikitude/common/devicemotion/internal/NativeDeviceMotionInterface;->nativeNotifyNewSensorEvent(JI[F)V

    return-void
.end method

.method public native nativeNotifyCompassAccuracyChanged(JI)V
.end method

.method public native nativeNotifyNewSensorEvent(JI[F)V
.end method
