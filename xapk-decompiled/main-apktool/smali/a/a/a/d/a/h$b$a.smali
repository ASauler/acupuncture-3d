.class public La/a/a/d/a/h$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/d/a/h$b;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/h$b;


# direct methods
.method public constructor <init>(La/a/a/d/a/h$b;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h$b$a;->a:La/a/a/d/a/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La/a/a/d/a/h$b$a;->a:La/a/a/d/a/h$b;

    iget-object v0, v0, La/a/a/d/a/h$b;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/b;->a()V

    return-void
.end method
