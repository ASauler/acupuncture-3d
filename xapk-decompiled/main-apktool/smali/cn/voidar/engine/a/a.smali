.class public Lcn/voidar/engine/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/view/Surface;

.field private final e:[F


# direct methods
.method public constructor <init>(Landroid/view/Surface;Landroid/opengl/EGLContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/voidar/engine/a/a;->e:[F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcn/voidar/engine/a/a;->d:Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcn/voidar/engine/a/a;->a(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method private a(Landroid/opengl/EGLContext;)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    new-array v2, v4, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    iget-object v5, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x3098

    const/16 v4, 0x3038

    filled-new-array {v3, v1, v4}, [I

    move-result-object v1

    iget-object v3, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    aget-object v5, v2, v0

    invoke-static {v3, v5, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    const-string p1, "eglCreateContext"

    invoke-direct {p0, p1}, Lcn/voidar/engine/a/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    if-eqz p1, :cond_1

    filled-new-array {v4}, [I

    move-result-object p1

    iget-object v1, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcn/voidar/engine/a/a;->d:Landroid/view/Surface;

    invoke-static {v1, v2, v3, p1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    const-string p1, "eglCreateWindowSurface"

    invoke-direct {p0, p1}, Lcn/voidar/engine/a/a;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null EGL surface."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Null EGL context."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to find RGB888 recordable ES2 EGL config."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to initialize EGL."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to get EGL display."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3040
        0x4
        0x3142
        0x1
        0x3038
    .end array-data
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "EGL error encountered."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcn/voidar/engine/a/a;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcn/voidar/engine/a/a;->d:Landroid/view/Surface;

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public a([F)V
    .locals 3

    iget-object v0, p0, Lcn/voidar/engine/a/a;->e:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcn/voidar/engine/a/a;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to make EGL context and surface current."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcn/voidar/engine/a/a;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/a;->c:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
