.class public Lcn/voidar/engine/a/b;
.super Ljava/lang/Object;


# static fields
.field static final a:[F


# instance fields
.field private b:Landroid/opengl/EGLDisplay;

.field private c:Landroid/opengl/EGLSurface;

.field private d:Landroid/opengl/EGLSurface;

.field private e:Landroid/opengl/EGLContext;

.field private final f:[F

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcn/voidar/engine/a/b;->a:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/voidar/engine/a/b;->f:[F

    const/4 v0, 0x0

    iput v0, p0, Lcn/voidar/engine/a/b;->g:I

    iput v0, p0, Lcn/voidar/engine/a/b;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcn/voidar/engine/a/b;->g:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/voidar/engine/a/b;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/voidar/engine/a/b;->a:[F

    iget-object v1, p0, Lcn/voidar/engine/a/b;->f:[F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcn/voidar/engine/a/b;->b:Landroid/opengl/EGLDisplay;

    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/voidar/engine/a/b;->c:Landroid/opengl/EGLSurface;

    const/16 v0, 0x305a

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcn/voidar/engine/a/b;->d:Landroid/opengl/EGLSurface;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcn/voidar/engine/a/b;->e:Landroid/opengl/EGLContext;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 8

    iput p1, p0, Lcn/voidar/engine/a/b;->g:I

    iput p2, p0, Lcn/voidar/engine/a/b;->h:I

    sget-object v0, Lcn/voidar/engine/a/b;->a:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p1

    const/4 v4, 0x0

    int-to-float v5, p2

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcn/voidar/engine/a/b;->g:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/voidar/engine/a/b;->h:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/voidar/engine/a/b;->b:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcn/voidar/engine/a/b;->c:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcn/voidar/engine/a/b;->d:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcn/voidar/engine/a/b;->e:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/voidar/engine/a/b;->f:[F

    sget-object v1, Lcn/voidar/engine/a/b;->a:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to restore EGL state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public c()[F
    .locals 1

    sget-object v0, Lcn/voidar/engine/a/b;->a:[F

    return-object v0
.end method
