.class public La/a/a/f/a/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[F

.field public final synthetic b:La/a/a/f/a/i;


# direct methods
.method public constructor <init>(La/a/a/f/a/i;)V
    .locals 0

    iput-object p1, p0, La/a/a/f/a/i$a;->b:La/a/a/f/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, La/a/a/f/a/i$a;->a:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget-object p1, p0, La/a/a/f/a/i$a;->b:La/a/a/f/a/i;

    invoke-static {p1}, La/a/a/f/a/i;->a(La/a/a/f/a/i;)La/a/a/f/a/f;

    move-result-object p1

    invoke-interface {p1, p2}, La/a/a/f/a/f;->a(I)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, La/a/a/f/a/i$a;->a:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, La/a/a/f/a/i$a;->b:La/a/a/f/a/i;

    invoke-static {p1}, La/a/a/f/a/i;->a(La/a/a/f/a/i;)La/a/a/f/a/f;

    move-result-object p1

    sget-object v0, La/a/a/f/a/g;->b:La/a/a/f/a/g;

    iget-object v1, p0, La/a/a/f/a/i$a;->a:[F

    invoke-interface {p1, v0, v1}, La/a/a/f/a/f;->a(La/a/a/f/a/g;[F)V

    return-void
.end method
