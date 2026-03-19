.class public final La/a/a/f/a/d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/f/a/e;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:La/a/a/f/a/f;

.field private c:Z

.field private final d:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/f/a/d$a;

    invoke-direct {v0, p0}, La/a/a/f/a/d$a;-><init>(La/a/a/f/a/d;)V

    iput-object v0, p0, La/a/a/f/a/d;->d:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public static synthetic a(La/a/a/f/a/d;)La/a/a/f/a/f;
    .locals 0

    iget-object p0, p0, La/a/a/f/a/d;->b:La/a/a/f/a/f;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/wikitude/common/CallStatus;
    .locals 3

    iget-object v0, p0, La/a/a/f/a/d;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, La/a/a/f/a/d;->d:Landroid/hardware/SensorEventListener;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/f/a/a;->a:La/a/a/f/a/a;

    invoke-virtual {v0}, La/a/a/f/a/a;->a()I

    move-result v0

    const-string v1, "com.wikitude.device_motion.android"

    const-string v2, "Unable to register Service, the device may not support the sensor type GAME_ROTATION_VECTOR."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, La/a/a/f/a/d;->c:Z

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/hardware/SensorManager;La/a/a/f/a/f;)V
    .locals 0

    iput-object p1, p0, La/a/a/f/a/d;->a:Landroid/hardware/SensorManager;

    iput-object p2, p0, La/a/a/f/a/d;->b:La/a/a/f/a/f;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/f/a/d;->c:Z

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Lcom/wikitude/common/CallStatus;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/f/a/d;->c:Z

    iget-object v0, p0, La/a/a/f/a/d;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, La/a/a/f/a/d;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method
