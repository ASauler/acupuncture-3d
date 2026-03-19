.class public La/a/a/j/a/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


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

    iput-object p1, p0, La/a/a/j/a/c$b;->a:La/a/a/j/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    new-instance p1, La/a/a/j/a/c$b$a;

    invoke-direct {p1, p0}, La/a/a/j/a/c$b$a;-><init>(La/a/a/j/a/c$b;)V

    return-object p1
.end method
