.class public La/a/a/j/a/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/j/a/c;-><init>(Landroid/content/Context;La/a/a/j/a/b;La/a/a/j/a/d;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/j/a/c;


# direct methods
.method public constructor <init>(La/a/a/j/a/c;)V
    .locals 0

    iput-object p1, p0, La/a/a/j/a/c$c;->a:La/a/a/j/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2

    iget-object p3, p0, La/a/a/j/a/c$c;->a:La/a/a/j/a/c;

    invoke-static {p3}, La/a/a/j/a/c;->b(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p3

    const-string v0, "InternalRenderingGLView"

    if-nez p3, :cond_0

    const-string p3, "createWindowSurface: Config is null"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p3, 0x0

    :try_start_0
    iget-object v1, p0, La/a/a/j/a/c$c;->a:La/a/a/j/a/c;

    invoke-static {v1}, La/a/a/j/a/c;->b(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    invoke-interface {p1, p2, v1, p4, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "eglCreateWindowSurface"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p3
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
