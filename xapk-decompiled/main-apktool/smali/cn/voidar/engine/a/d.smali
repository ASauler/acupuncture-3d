.class public Lcn/voidar/engine/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private final b:[B

.field private c:Lcn/voidar/engine/a/e;

.field private d:Ljava/nio/ByteBuffer;

.field private final e:[F

.field private final f:[F

.field private g:Lcn/voidar/engine/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/voidar/engine/a/d;->b:[B

    const/16 v2, 0x10

    new-array v3, v2, [F

    iput-object v3, p0, Lcn/voidar/engine/a/d;->e:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcn/voidar/engine/a/d;->f:[F

    iget-object v4, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    :cond_0
    invoke-static {}, Lcn/voidar/engine/a/c;->a()Lcn/voidar/engine/a/c;

    move-result-object v4

    iput-object v4, p0, Lcn/voidar/engine/a/d;->g:Lcn/voidar/engine/a/c;

    new-instance v4, Lcn/voidar/engine/a/e;

    iget-object v5, p0, Lcn/voidar/engine/a/d;->g:Lcn/voidar/engine/a/c;

    invoke-direct {v4, v5}, Lcn/voidar/engine/a/e;-><init>(Lcn/voidar/engine/a/c;)V

    iput-object v4, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    const-string/jumbo v5, "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"

    const-string v6, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_FragColor = texture2D(sTexture, vTextureCoord);\n}"

    invoke-virtual {v4, v5, v6}, Lcn/voidar/engine/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/voidar/engine/a/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcn/voidar/engine/a/d;->g:Lcn/voidar/engine/a/c;

    const-string v1, "FullFrameTexture"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/a/c;->a(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
    .end array-data
.end method

.method private b(I)V
    .locals 6

    const/4 v1, 0x2

    const/16 v2, 0x1400

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/voidar/engine/a/d;->d:Ljava/nio/ByteBuffer;

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p1, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {v1, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    invoke-virtual {v0}, Lcn/voidar/engine/a/e;->a()V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    const-string/jumbo v0, "uOrientationM"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/a/e;->a(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    const-string/jumbo v1, "uTransformM"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/a/e;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcn/voidar/engine/a/d;->e:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object p1, p0, Lcn/voidar/engine/a/d;->f:[F

    invoke-static {v0, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object p1, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    const-string v0, "aPosition"

    invoke-virtual {p1, v0}, Lcn/voidar/engine/a/e;->a(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcn/voidar/engine/a/d;->b(I)V

    iget-object p1, p0, Lcn/voidar/engine/a/d;->c:Lcn/voidar/engine/a/e;

    invoke-virtual {p1}, Lcn/voidar/engine/a/e;->b()V

    return-void
.end method
