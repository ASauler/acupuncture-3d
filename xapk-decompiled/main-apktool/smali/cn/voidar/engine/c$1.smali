.class Lcn/voidar/engine/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/voidar/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/c;


# direct methods
.method constructor <init>(Lcn/voidar/engine/c;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/c$1;->a:Lcn/voidar/engine/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-double v0, v0

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v5, v0, v2

    sget v0, Lcn/voidar/engine/AndroidDevice;->sensorOrientation:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v4, p0, Lcn/voidar/engine/c$1;->a:Lcn/voidar/engine/c;

    invoke-virtual {v4, v0}, Lcn/voidar/engine/c;->a([F)V

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    aget v7, v0, v3

    aget v8, v0, v2

    aget v9, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v0, v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v9, p1, v1

    :goto_0
    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcn/voidar/engine/VoidARNative;->onSensorChanged(IDFFFF)V

    return-void
.end method
