.class public Lcn/voidar/engine/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/concurrent/Semaphore;

.field private b:Landroid/hardware/SensorManager;

.field private c:Z

.field private final d:Landroid/hardware/SensorEventListener;

.field private final e:Landroid/hardware/SensorEventListener;

.field private final f:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/c;->c:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcn/voidar/engine/c;->a:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcn/voidar/engine/c$1;

    invoke-direct {v0, p0}, Lcn/voidar/engine/c$1;-><init>(Lcn/voidar/engine/c;)V

    iput-object v0, p0, Lcn/voidar/engine/c;->d:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcn/voidar/engine/c$2;

    invoke-direct {v0, p0}, Lcn/voidar/engine/c$2;-><init>(Lcn/voidar/engine/c;)V

    iput-object v0, p0, Lcn/voidar/engine/c;->e:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcn/voidar/engine/c$3;

    invoke-direct {v0, p0}, Lcn/voidar/engine/c$3;-><init>(Lcn/voidar/engine/c;)V

    iput-object v0, p0, Lcn/voidar/engine/c;->f:Landroid/hardware/SensorEventListener;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/voidar/engine/c;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/voidar/engine/c;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/voidar/engine/c;->f:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcn/voidar/engine/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/voidar/engine/c;->c:Z

    invoke-virtual {p0}, Lcn/voidar/engine/c;->c()V

    :cond_0
    return-void
.end method

.method protected a([F)V
    .locals 7

    sget v0, Lcn/voidar/engine/AndroidDevice;->AXIS_X:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget v2, Lcn/voidar/engine/AndroidDevice;->AXIS_Y:I

    and-int/lit8 v2, v2, 0x3

    sub-int/2addr v2, v1

    sget v3, Lcn/voidar/engine/AndroidDevice;->AXIS_Z:I

    and-int/lit8 v3, v3, 0x3

    sub-int/2addr v3, v1

    sget v4, Lcn/voidar/engine/AndroidDevice;->AXIS_X:I

    const/16 v5, 0x80

    const/4 v6, 0x0

    if-lt v4, v5, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    sget v5, Lcn/voidar/engine/AndroidDevice;->AXIS_Y:I

    sget v5, Lcn/voidar/engine/AndroidDevice;->AXIS_Z:I

    if-eqz v4, :cond_1

    aget v0, p1, v0

    neg-float v0, v0

    goto :goto_1

    :cond_1
    aget v0, p1, v0

    :goto_1
    if-eqz v4, :cond_2

    aget v2, p1, v2

    neg-float v2, v2

    goto :goto_2

    :cond_2
    aget v2, p1, v2

    :goto_2
    if-eqz v4, :cond_3

    aget v3, p1, v3

    neg-float v3, v3

    goto :goto_3

    :cond_3
    aget v3, p1, v3

    :goto_3
    aput v0, p1, v6

    aput v2, p1, v1

    const/4 v0, 0x2

    aput v3, p1, v0

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcn/voidar/engine/c;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/voidar/engine/c;->c:Z

    invoke-direct {p0}, Lcn/voidar/engine/c;->d()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object v2, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcn/voidar/engine/c;->d:Landroid/hardware/SensorEventListener;

    sget v4, Lcn/voidar/engine/AndroidDevice;->samplingPeriodUs:I

    invoke-virtual {v2, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/voidar/engine/c;->e:Landroid/hardware/SensorEventListener;

    sget v3, Lcn/voidar/engine/AndroidDevice;->samplingPeriodUs:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iget-object v1, p0, Lcn/voidar/engine/c;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcn/voidar/engine/c;->f:Landroid/hardware/SensorEventListener;

    sget v3, Lcn/voidar/engine/AndroidDevice;->samplingPeriodUs:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method
