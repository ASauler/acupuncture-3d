.class public Lcom/wikitude/common/camera/internal/NativeCameraInterface;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d/a/b;


# instance fields
.field private final a:La/a/a/d/a/e;

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/d/a/e;

    invoke-direct {v0, p1, p0}, La/a/a/d/a/e;-><init>(Landroid/content/Context;La/a/a/d/a/b;)V

    iput-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    iput-wide p2, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    return-void
.end method

.method private native nativeCameraError(JILjava/lang/String;)V
.end method

.method private native nativeCameraOpened(J)V
.end method

.method private native nativeCameraReleased(J)V
.end method

.method private native nativeSetCameraFrameColorSpace(JI)V
.end method

.method private native nativeSetCameraOrientation(JI)V
.end method

.method private native nativeSetCameraPosition(JLcom/wikitude/common/camera/CameraSettings$CameraPosition;)V
.end method

.method private native nativeUpdate(JJ[BI)V
.end method

.method private native nativeUpdateCamera2(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
.end method

.method private native nativeUpdateCameraFieldOfView(JF)V
.end method

.method private native nativeUpdatePreviewSize(JII)V
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeCameraOpened(J)V

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeUpdateCameraFieldOfView(JF)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeSetCameraFrameColorSpace(JI)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeUpdatePreviewSize(JII)V

    return-void
.end method

.method public a(JLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 12

    move-object v11, p0

    iget-wide v1, v11, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeUpdateCamera2(JJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public a(J[BI)V
    .locals 7

    iget-wide v1, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeUpdate(JJ[BI)V

    return-void
.end method

.method public a(La/a/a/d/a/a;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-virtual {p1}, La/a/a/d/a/a;->a()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeCameraError(JILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeSetCameraPosition(JLcom/wikitude/common/camera/CameraSettings$CameraPosition;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeCameraReleased(J)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-wide v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeSetCameraOrientation(JI)V

    return-void
.end method

.method public doStart()V
    .locals 4

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->b()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->b:J

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v3

    invoke-interface {v3}, Lcom/wikitude/common/WikitudeError;->getCode()I

    move-result v3

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/WikitudeError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->nativeCameraError(JILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public doStop()V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->c()V

    return-void
.end method

.method public findCameraMatchingCharacteristics(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wikitude/common/camera/CameraSettings$CameraPosition;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraResolution;",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            "Z",
            "Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;",
            ")",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/internal/AndroidCamera;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/a/a/d/a/e;->a(Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)Lcom/wikitude/common/CallValue;

    move-result-object p1

    return-object p1
.end method

.method public getFocusMode()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->c()Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public getManualFocusDistance()Lcom/wikitude/common/internal/CallValueF;
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->g()Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(F)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumZoomFactor()Lcom/wikitude/common/internal/CallValueF;
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->m()Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(F)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0
.end method

.method public getTorchMode()Lcom/wikitude/common/CallValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wikitude/common/CallValue<",
            "Lcom/wikitude/common/camera/CameraSettings$TorchMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->l()Lcom/wikitude/common/CallValue;

    move-result-object v0

    return-object v0
.end method

.method public getZoomFactor()Lcom/wikitude/common/internal/CallValueF;
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->i()Lcom/wikitude/common/CallValue;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getError()Lcom/wikitude/common/WikitudeError;

    move-result-object v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/wikitude/common/CallValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/wikitude/common/internal/CallValueF;->a(F)Lcom/wikitude/common/internal/CallValueF;

    move-result-object v0

    return-object v0
.end method

.method public isExposurePointOfInterestSupported()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->j()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public isFocusModeSupported(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->b(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public isFocusPointOfInterestSupported()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->e()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public isManualFocusSupported()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0}, La/a/a/d/a/c;->k()Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public isTorchModeSupported(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->b(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public isZoomFactorSupported(F)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->c(F)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setActiveCamera(Lcom/wikitude/common/camera/internal/AndroidCamera;)V
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0, p1}, La/a/a/d/a/e;->a(Lcom/wikitude/common/camera/internal/AndroidCamera;)V

    return-void
.end method

.method public setExposurePointOfInterest(FF)Lcom/wikitude/common/CallStatus;
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, La/a/a/d/a/c;->b(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setFocusMode(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setFocusPointOfInterest(FF)Lcom/wikitude/common/CallStatus;
    .locals 2

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v0, v1}, La/a/a/d/a/c;->a(Landroid/graphics/PointF;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setManualFocusDistance(F)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->a(F)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setTorchMode(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->a(Lcom/wikitude/common/camera/CameraSettings$TorchMode;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public setZoomFactor(F)Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/NativeCameraInterface;->a:La/a/a/d/a/e;

    invoke-virtual {v0}, La/a/a/d/a/e;->a()La/a/a/d/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, La/a/a/d/a/c;->b(F)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method
