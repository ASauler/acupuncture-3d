.class public La/a/a/f/a/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/f/a/b;


# direct methods
.method public constructor <init>(La/a/a/f/a/b;)V
    .locals 0

    iput-object p1, p0, La/a/a/f/a/b$b;->a:La/a/a/f/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget-object p1, p0, La/a/a/f/a/b$b;->a:La/a/a/f/a/b;

    invoke-static {p1}, La/a/a/f/a/b;->b(La/a/a/f/a/b;)La/a/a/f/a/f;

    move-result-object p1

    invoke-interface {p1, p2}, La/a/a/f/a/f;->a(I)V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, La/a/a/f/a/b$b;->a:La/a/a/f/a/b;

    invoke-static {v0}, La/a/a/f/a/b;->a(La/a/a/f/a/b;)La/a/a/f/a/b$c;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, p1}, La/a/a/f/a/b$c;->a([F)V

    return-void
.end method
