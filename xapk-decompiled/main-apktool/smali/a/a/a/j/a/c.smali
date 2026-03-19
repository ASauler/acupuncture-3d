.class public final La/a/a/j/a/c;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static final a:Ljava/lang/String; = "InternalRenderingGLView"

.field private static final b:I = 0x8

.field private static final c:I = 0x8

.field private static final d:I = 0x8

.field private static final e:I = 0x8

.field private static final f:I = 0x10

.field private static final g:I


# instance fields
.field private h:Ljavax/microedition/khronos/egl/EGLConfig;

.field private i:Ljavax/microedition/khronos/egl/EGLContext;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;La/a/a/j/a/b;La/a/a/j/a/d;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "La/a/a/j/a/b;",
            "La/a/a/j/a/d;",
            "Ljava/util/List<",
            "Lcom/wikitude/common/rendering/RenderSettings$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, La/a/a/j/a/c;->i:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/a/j/a/c;->j:Z

    sget-object v0, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_3:Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/wikitude/common/rendering/RenderSettings$b;->OPENGL_ES_2:Lcom/wikitude/common/rendering/RenderSettings$b;

    invoke-interface {p4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    new-instance v1, La/a/a/j/a/c$a;

    invoke-direct {v1, p0, v0, p4, p3}, La/a/a/j/a/c$a;-><init>(La/a/a/j/a/c;ZZLa/a/a/j/a/d;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance p3, La/a/a/j/a/c$b;

    invoke-direct {p3, p0}, La/a/a/j/a/c$b;-><init>(La/a/a/j/a/c;)V

    invoke-virtual {p0, p3}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    new-instance p3, La/a/a/j/a/c$c;

    invoke-direct {p3, p0}, La/a/a/j/a/c$c;-><init>(La/a/a/j/a/c;)V

    invoke-virtual {p0, p3}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    return p5
.end method

.method public static synthetic a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    iput-object p1, p0, La/a/a/j/a/c;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p1
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    const/16 v7, 0xd

    aput v1, v0, v7

    const/4 v1, 0x1

    new-array v8, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    aput v9, v0, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    aget v5, v8, v9

    if-lez v5, :cond_5

    new-array p3, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, p3

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x0
        0x3040
        0x0
        0x3038
    .end array-data
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v8, p3, v1

    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3026

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    const/16 v3, 0x10

    if-lt v9, v3, :cond_0

    if-ltz v2, :cond_0

    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    const/16 v6, 0x3023

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    const/16 v6, 0x3022

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    const/16 v6, 0x3021

    invoke-direct/range {v2 .. v7}, La/a/a/j/a/c;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    const/16 v3, 0x8

    if-ne v9, v3, :cond_0

    if-ne v10, v3, :cond_0

    if-ne v11, v3, :cond_0

    if-ne v2, v3, :cond_0

    return-object v8

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, La/a/a/j/a/c;->i:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method public static synthetic a(La/a/a/j/a/c;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iput-object p1, p0, La/a/a/j/a/c;->i:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p1
.end method

.method public static synthetic b(La/a/a/j/a/c;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    iget-object p0, p0, La/a/a/j/a/c;->h:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method

.method public static synthetic c(La/a/a/j/a/c;)Z
    .locals 0

    iget-boolean p0, p0, La/a/a/j/a/c;->j:Z

    return p0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/j/a/c;->j:Z

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/j/a/c;->i:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/j/a/c;->j:Z

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method
