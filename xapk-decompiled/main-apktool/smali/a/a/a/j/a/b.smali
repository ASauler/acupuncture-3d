.class public final La/a/a/j/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final a:La/a/a/j/a/d;


# direct methods
.method public constructor <init>(La/a/a/j/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/j/a/b;->a:La/a/a/j/a/d;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, La/a/a/j/a/b;->a:La/a/a/j/a/d;

    invoke-interface {p1}, La/a/a/j/a/d;->b()V

    iget-object p1, p0, La/a/a/j/a/b;->a:La/a/a/j/a/d;

    invoke-interface {p1}, La/a/a/j/a/d;->c()V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, La/a/a/j/a/b;->a:La/a/a/j/a/d;

    invoke-interface {p1, p2, p3}, La/a/a/j/a/d;->a(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    iget-object p1, p0, La/a/a/j/a/b;->a:La/a/a/j/a/d;

    invoke-interface {p1}, La/a/a/j/a/d;->a()V

    return-void
.end method
