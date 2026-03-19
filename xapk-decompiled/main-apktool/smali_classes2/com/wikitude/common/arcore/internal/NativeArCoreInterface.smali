.class public final Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/a/c;


# instance fields
.field private final a:J

.field private final b:La/a/a/c/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->a:J

    new-instance p2, La/a/a/c/a/d;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1, p0}, La/a/a/c/a/d;-><init>(Landroid/app/Activity;La/a/a/c/a/c;)V

    iput-object p2, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    return-void
.end method

.method public static getCurrentSupportedState(Landroid/content/Context;)I
    .locals 0

    invoke-static {p0}, La/a/a/c/a/b;->a(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static isSupported(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface$a;

    invoke-direct {v0}, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface$a;-><init>()V

    invoke-static {p0, v0}, La/a/a/c/a/b;->a(Landroid/content/Context;La/a/a/c/a/b$b;)V

    return-void
.end method

.method public static native isSupportedCallback(I)V
.end method

.method private native nativeCameraError(JILjava/lang/String;)V
.end method

.method private native updateFrameDataNative(JIIJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III[F[F)V
.end method

.method private native updateNativeCameraToSurfaceAngle(JF)V
.end method

.method private native updatePointCloudNative(JLjava/nio/FloatBuffer;I[F)V
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->updateNativeCameraToSurfaceAngle(JF)V

    return-void
.end method

.method public a(IIJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III[F[F)V
    .locals 16

    move-object/from16 v15, p0

    iget-wide v1, v15, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->a:J

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->updateFrameDataNative(JIIJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III[F[F)V

    return-void
.end method

.method public a(Lcom/wikitude/common/CallStatus;)V
    .locals 3

    iget-wide v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->a:J

    invoke-interface {p1}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v2

    invoke-interface {v2}, Lcom/wikitude/common/WikitudeError;->getCode()I

    move-result v2

    invoke-interface {p1}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object p1

    invoke-interface {p1}, Lcom/wikitude/common/WikitudeError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->nativeCameraError(JILjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/nio/FloatBuffer;I[F)V
    .locals 6

    iget-wide v1, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->a:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->updatePointCloudNative(JLjava/nio/FloatBuffer;I[F)V

    return-void
.end method

.method public addTrackingAnchor()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->a()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public canStartTracking()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->b()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public convertScreenCoordinateToPointCloudCoordinate(FF)[F
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0, p1, p2}, La/a/a/c/a/d;->a(FF)[F

    move-result-object p1

    return-object p1
.end method

.method public getFieldOfView()F
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->d()F

    move-result v0

    return v0
.end method

.method public getModelMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->e()[F

    move-result-object v0

    return-object v0
.end method

.method public getTrackingEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->f()Z

    move-result v0

    return v0
.end method

.method public getTrackingState()I
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->g()Lcom/google/ar/core/TrackingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/TrackingState;->ordinal()I

    move-result v0

    return v0
.end method

.method public getViewMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->h()[F

    move-result-object v0

    return-object v0
.end method

.method public prepareUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->i()V

    return-void
.end method

.method public resetTracking()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->j()V

    return-void
.end method

.method public setFocusMode(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0, p1}, La/a/a/c/a/d;->a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setTextureId(I)Z
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0, p1}, La/a/a/c/a/d;->b(I)Z

    move-result p1

    return p1
.end method

.method public setTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0, p1}, La/a/a/c/a/d;->a(Z)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->k()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->l()V

    return-void
.end method

.method public surfaceChanged(II)Z
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0, p1, p2}, La/a/a/c/a/d;->a(II)Z

    move-result p1

    return p1
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/arcore/internal/NativeArCoreInterface;->b:La/a/a/c/a/d;

    invoke-virtual {v0}, La/a/a/c/a/d;->m()V

    return-void
.end method
