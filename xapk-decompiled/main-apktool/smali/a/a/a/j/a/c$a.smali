.class public La/a/a/j/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/j/a/c;-><init>(Landroid/content/Context;La/a/a/j/a/b;La/a/a/j/a/d;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:La/a/a/j/a/d;

.field public final synthetic g:La/a/a/j/a/c;


# direct methods
.method public constructor <init>(La/a/a/j/a/c;ZZLa/a/a/j/a/d;)V
    .locals 0

    iput-object p1, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    iput-boolean p2, p0, La/a/a/j/a/c$a;->d:Z

    iput-boolean p3, p0, La/a/a/j/a/c$a;->e:Z

    iput-object p4, p0, La/a/a/j/a/c$a;->f:La/a/a/j/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x3098

    iput p1, p0, La/a/a/j/a/c$a;->a:I

    const/4 p1, 0x3

    iput p1, p0, La/a/a/j/a/c$a;->b:I

    const/4 p1, 0x2

    iput p1, p0, La/a/a/j/a/c$a;->c:I

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    iget-object v0, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    const/4 v1, 0x2

    invoke-static {v0, p1, p2, v1}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    invoke-static {v0, v2}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0x3098

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iget-object v1, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {v1}, La/a/a/j/a/c;->b(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iget-object p2, p0, La/a/a/j/a/c$a;->f:La/a/a/j/a/d;

    sget-object v0, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_2:Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, La/a/a/j/a/d;->a(I)V

    return-object p1
.end method

.method private b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    iget-object v0, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    invoke-static {v0, v2}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    const/16 v0, 0x3098

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iget-object v1, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {v1}, La/a/a/j/a/c;->b(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, La/a/a/j/a/c$a;->e:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, La/a/a/j/a/c$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "InternalRenderingGLView"

    const-string p2, "createContext: Device does not support OpenGL ES 3.0, no OpenGL context was created."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, La/a/a/j/a/c$a;->f:La/a/a/j/a/d;

    sget-object p2, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_3:Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-interface {p1, p2}, La/a/a/j/a/d;->a(I)V

    return-object v0
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p3, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {p3}, La/a/a/j/a/c;->a(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p1, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {p1}, La/a/a/j/a/c;->a(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iget-object p2, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    const/4 p3, 0x0

    invoke-static {p2, p3}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1

    :cond_0
    iget-boolean p3, p0, La/a/a/j/a/c$a;->d:Z

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, La/a/a/j/a/c$a;->b(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, p2}, La/a/a/j/a/c$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    return-object p1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    iget-object v0, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {v0}, La/a/a/j/a/c;->c(La/a/a/j/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, La/a/a/j/a/c$a;->g:La/a/a/j/a/c;

    invoke-static {p1, p3}, La/a/a/j/a/c;->a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
