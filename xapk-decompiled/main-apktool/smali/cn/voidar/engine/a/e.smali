.class public Lcn/voidar/engine/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "e"

.field private static b:I = -0x1


# instance fields
.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/voidar/engine/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/voidar/engine/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcn/voidar/engine/a/e;->b:I

    iput v0, p0, Lcn/voidar/engine/a/e;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/voidar/engine/a/e;->d:Ljava/util/HashMap;

    iput-object p1, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    iget-object v0, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    const-string v1, "glCreateShader"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    iget-object p2, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    const-string v0, "glShaderSource"

    invoke-virtual {p2, v0}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    iget-object p2, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    const-string v0, "glCompileShader"

    invoke-virtual {p2, v0}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v1

    if-eqz p2, :cond_0

    return p1

    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shader compilation failed with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcn/voidar/engine/a/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/a/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget v0, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "glGetAttribLocation "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "glGetUniformLocation "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    :cond_1
    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcn/voidar/engine/a/e;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find a location for attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcn/voidar/engine/a/e;->b:I

    if-eqz p1, :cond_0

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcn/voidar/engine/a/e;->a(ILjava/lang/String;)I

    move-result v0

    :cond_0
    const/4 p1, 0x0

    if-nez v0, :cond_1

    iput p1, p0, Lcn/voidar/engine/a/e;->c:I

    return-void

    :cond_1
    sget v1, Lcn/voidar/engine/a/e;->b:I

    if-eqz p2, :cond_2

    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcn/voidar/engine/a/e;->a(ILjava/lang/String;)I

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    iput p1, p0, Lcn/voidar/engine/a/e;->c:I

    return-void

    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p1

    iput p1, p0, Lcn/voidar/engine/a/e;->c:I

    iget-object p1, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    const-string p2, "glCreateProgram"

    invoke-virtual {p1, p2}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    iget p1, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget-object p1, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    const-string p2, "glAttachShader"

    invoke-virtual {p1, p2}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    iget p1, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget-object p1, p0, Lcn/voidar/engine/a/e;->e:Lcn/voidar/engine/a/c;

    invoke-virtual {p1, p2}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    iget p1, p0, Lcn/voidar/engine/a/e;->c:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
