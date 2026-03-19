.class public final La/a/a/f/a/b;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/f/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/f/a/b$c;
    }
.end annotation


# instance fields
.field private final a:La/a/a/f/a/g;

.field private b:Landroid/hardware/SensorManager;

.field private c:La/a/a/f/a/f;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:La/a/a/f/a/b$c;

.field private f:Z

.field private final g:Landroid/hardware/SensorEventListener;

.field private final h:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(La/a/a/f/a/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/f/a/b$a;

    invoke-direct {v0, p0}, La/a/a/f/a/b$a;-><init>(La/a/a/f/a/b;)V

    iput-object v0, p0, La/a/a/f/a/b;->g:Landroid/hardware/SensorEventListener;

    new-instance v0, La/a/a/f/a/b$b;

    invoke-direct {v0, p0}, La/a/a/f/a/b$b;-><init>(La/a/a/f/a/b;)V

    iput-object v0, p0, La/a/a/f/a/b;->h:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, La/a/a/f/a/b;->a:La/a/a/f/a/g;

    return-void
.end method

.method public static synthetic a(La/a/a/f/a/b;)La/a/a/f/a/b$c;
    .locals 0

    iget-object p0, p0, La/a/a/f/a/b;->e:La/a/a/f/a/b$c;

    return-object p0
.end method

.method public static synthetic b(La/a/a/f/a/b;)La/a/a/f/a/f;
    .locals 0

    iget-object p0, p0, La/a/a/f/a/b;->c:La/a/a/f/a/f;

    return-object p0
.end method

.method public static synthetic c(La/a/a/f/a/b;)La/a/a/f/a/g;
    .locals 0

    iget-object p0, p0, La/a/a/f/a/b;->a:La/a/a/f/a/g;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/wikitude/common/CallStatus;
    .locals 11

    iget-object v0, p0, La/a/a/f/a/b;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, La/a/a/f/a/b;->g:Landroid/hardware/SensorEventListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iget-object v1, p0, La/a/a/f/a/b;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, La/a/a/f/a/b;->h:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v1, v2, v4, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    iput-object v4, p0, La/a/a/f/a/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, p0, La/a/a/f/a/b;->e:La/a/a/f/a/b$c;

    int-to-long v8, p1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x0

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v3, p0, La/a/a/f/a/b;->f:Z

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string p1, "Unable to register Service, the device may not support the sensor type TYPE_MAGNETIC_FIELD."

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "Unable to register Service, the device may not support the sensor type TYPE_ACCELEROMETER."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0}, La/a/a/f/a/b;->c()Lcom/wikitude/common/CallStatus;

    new-instance v0, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v1, La/a/a/f/a/a;->a:La/a/a/f/a/a;

    invoke-virtual {v1}, La/a/a/f/a/a;->a()I

    move-result v1

    const-string v2, "com.wikitude.device_motion.android"

    invoke-direct {v0, v1, v2, p1}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/hardware/SensorManager;La/a/a/f/a/f;)V
    .locals 0

    iput-object p1, p0, La/a/a/f/a/b;->b:Landroid/hardware/SensorManager;

    iput-object p2, p0, La/a/a/f/a/b;->c:La/a/a/f/a/f;

    new-instance p1, La/a/a/f/a/b$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, La/a/a/f/a/b$c;-><init>(La/a/a/f/a/b;La/a/a/f/a/b$a;)V

    iput-object p1, p0, La/a/a/f/a/b;->e:La/a/a/f/a/b$c;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/f/a/b;->f:Z

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Lcom/wikitude/common/CallStatus;
    .locals 2

    iget-object v0, p0, La/a/a/f/a/b;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, La/a/a/f/a/b;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, La/a/a/f/a/b;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, La/a/a/f/a/b;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, La/a/a/f/a/b;->h:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/f/a/b;->f:Z

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method
