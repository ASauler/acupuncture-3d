.class public La/a/a/d/a/h$a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/d/a/h$a;->onError(Landroid/hardware/camera2/CameraDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/d/a/a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:La/a/a/d/a/h$a;


# direct methods
.method public constructor <init>(La/a/a/d/a/h$a;La/a/a/d/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/a/a/d/a/h$a$b;->c:La/a/a/d/a/h$a;

    iput-object p2, p0, La/a/a/d/a/h$a$b;->a:La/a/a/d/a/a;

    iput-object p3, p0, La/a/a/d/a/h$a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/a/d/a/h$a$b;->c:La/a/a/d/a/h$a;

    iget-object v0, v0, La/a/a/d/a/h$a;->a:La/a/a/d/a/h;

    invoke-static {v0}, La/a/a/d/a/h;->o(La/a/a/d/a/h;)La/a/a/d/a/b;

    move-result-object v0

    iget-object v1, p0, La/a/a/d/a/h$a$b;->a:La/a/a/d/a/a;

    iget-object v2, p0, La/a/a/d/a/h$a$b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, La/a/a/d/a/b;->a(La/a/a/d/a/a;Ljava/lang/String;)V

    return-void
.end method
