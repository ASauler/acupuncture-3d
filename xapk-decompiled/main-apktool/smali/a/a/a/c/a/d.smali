.class public final La/a/a/c/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/c/a/d$e;,
        La/a/a/c/a/d$f;
    }
.end annotation


# static fields
.field private static a:I = 0x438

.field private static b:I = 0x2d0

.field private static c:I = 0x1e0

.field private static final d:Ljava/lang/String; = "d"


# instance fields
.field private A:Z

.field private B:Z

.field private C:La/a/a/c/a/d$f;

.field private D:I

.field private E:I

.field private F:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/os/HandlerThread;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;

.field private final k:La/a/a/c/a/d$e;

.field private final l:La/a/a/c/a/d$e;

.field private final m:Landroid/app/Activity;

.field private final n:Landroid/view/Display;

.field private final o:La/a/a/c/a/c;

.field private p:Lcom/google/ar/core/Session;

.field private q:Lcom/google/ar/core/Frame;

.field private r:Lcom/google/ar/core/Anchor;

.field private s:Lcom/google/ar/core/TrackingState;

.field private t:Lcom/google/ar/core/Config$FocusMode;

.field private final u:[F

.field private final v:[F

.field private final w:[F

.field private final x:[F

.field private final y:[F

.field private z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;La/a/a/c/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/a/a/c/a/d;->g:I

    new-instance v0, La/a/a/c/a/d$a;

    invoke-direct {v0, p0}, La/a/a/c/a/d$a;-><init>(La/a/a/c/a/d;)V

    iput-object v0, p0, La/a/a/c/a/d;->j:Ljava/lang/Runnable;

    new-instance v0, La/a/a/c/a/d$b;

    invoke-direct {v0, p0}, La/a/a/c/a/d$b;-><init>(La/a/a/c/a/d;)V

    iput-object v0, p0, La/a/a/c/a/d;->k:La/a/a/c/a/d$e;

    new-instance v0, La/a/a/c/a/d$c;

    invoke-direct {v0, p0}, La/a/a/c/a/d$c;-><init>(La/a/a/c/a/d;)V

    iput-object v0, p0, La/a/a/c/a/d;->l:La/a/a/c/a/d$e;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    sget-object v0, Lcom/google/ar/core/TrackingState;->STOPPED:Lcom/google/ar/core/TrackingState;

    iput-object v0, p0, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    sget-object v0, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    iput-object v0, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, La/a/a/c/a/d;->u:[F

    new-array v1, v0, [F

    iput-object v1, p0, La/a/a/c/a/d;->v:[F

    new-array v1, v0, [F

    iput-object v1, p0, La/a/a/c/a/d;->w:[F

    new-array v1, v0, [F

    iput-object v1, p0, La/a/a/c/a/d;->x:[F

    new-array v0, v0, [F

    iput-object v0, p0, La/a/a/c/a/d;->y:[F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, La/a/a/c/a/d;->z:F

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/a/c/a/d;->A:Z

    sget-object v0, La/a/a/c/a/d$f;->a:La/a/a/c/a/d$f;

    iput-object v0, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    iput-object p1, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    iput-object p2, p0, La/a/a/c/a/d;->o:La/a/a/c/a/c;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    :goto_0
    iput-object p1, p0, La/a/a/c/a/d;->n:Landroid/view/Display;

    return-void
.end method

.method public static synthetic a(La/a/a/c/a/d;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, La/a/a/c/a/d;->n:Landroid/view/Display;

    return-object p0
.end method

.method public static synthetic a(La/a/a/c/a/d;Lcom/google/ar/core/Anchor;)Lcom/google/ar/core/Anchor;
    .locals 0

    iput-object p1, p0, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    return-object p1
.end method

.method private a(I)Lcom/google/ar/core/CameraConfig;
    .locals 4

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->getCameraConfig()Lcom/google/ar/core/CameraConfig;

    move-result-object v0

    new-instance v1, Lcom/google/ar/core/CameraConfigFilter;

    iget-object v2, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-direct {v1, v2}, Lcom/google/ar/core/CameraConfigFilter;-><init>(Lcom/google/ar/core/Session;)V

    iget-object v2, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v2, v1}, Lcom/google/ar/core/Session;->getSupportedCameraConfigs(Lcom/google/ar/core/CameraConfigFilter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-eq v2, p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ar/core/CameraConfig;

    invoke-virtual {v3}, Lcom/google/ar/core/CameraConfig;->getImageSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/ar/core/CameraConfig;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private a(La/a/a/c/a/d$e;)Lcom/wikitude/common/CallStatus;
    .locals 5

    iget-object v0, p0, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    const-string v1, "com.wikitude.arcore"

    if-nez v0, :cond_0

    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/c/a/a;->a:La/a/a/c/a/a;

    invoke-virtual {v0}, La/a/a/c/a/a;->a()I

    move-result v0

    const-string v2, "ARCore did not start yet."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_0
    iget v2, p0, La/a/a/c/a/d;->D:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, La/a/a/c/a/d;->E:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ar/core/HitResult;

    invoke-virtual {v2}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v3

    instance-of v4, v3, Lcom/google/ar/core/Plane;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/ar/core/Plane;

    invoke-virtual {v2}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ar/core/Plane;->isPoseInPolygon(Lcom/google/ar/core/Pose;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, La/a/a/c/a/d$e;->a(Lcom/google/ar/core/HitResult;)V

    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lcom/wikitude/common/internal/WikitudeErrorInternal;

    sget-object v0, La/a/a/c/a/a;->b:La/a/a/c/a/a;

    invoke-virtual {v0}, La/a/a/c/a/a;->a()I

    move-result v0

    const-string v2, "Could not find a plane."

    invoke-direct {p1, v0, v1, v2}, Lcom/wikitude/common/internal/WikitudeErrorInternal;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/wikitude/common/internal/CallStatusInternal;->error(Lcom/wikitude/common/WikitudeError;)Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic b(La/a/a/c/a/d;)I
    .locals 0

    iget p0, p0, La/a/a/c/a/d;->g:I

    return p0
.end method

.method public static synthetic c(La/a/a/c/a/d;)La/a/a/c/a/c;
    .locals 0

    iget-object p0, p0, La/a/a/c/a/d;->o:La/a/a/c/a/c;

    return-object p0
.end method

.method private c()Lcom/google/ar/core/Config;
    .locals 2

    new-instance v0, Lcom/google/ar/core/Config;

    iget-object v1, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-direct {v0, v1}, Lcom/google/ar/core/Config;-><init>(Lcom/google/ar/core/Session;)V

    sget-object v1, Lcom/google/ar/core/Config$LightEstimationMode;->DISABLED:Lcom/google/ar/core/Config$LightEstimationMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setLightEstimationMode(Lcom/google/ar/core/Config$LightEstimationMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setPlaneFindingMode(Lcom/google/ar/core/Config$PlaneFindingMode;)Lcom/google/ar/core/Config;

    sget-object v1, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setUpdateMode(Lcom/google/ar/core/Config$UpdateMode;)Lcom/google/ar/core/Config;

    iget-object v1, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Config;->setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;

    return-object v0
.end method

.method public static synthetic d(La/a/a/c/a/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, La/a/a/c/a/d;->i:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->k:La/a/a/c/a/d$e;

    invoke-direct {p0, v0}, La/a/a/c/a/d;->a(La/a/a/c/a/d$e;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)Lcom/wikitude/common/CallStatus;
    .locals 2

    iget-object v0, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_0
    iget-object p1, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    sget-object v1, Lcom/google/ar/core/Config$FocusMode;->FIXED:Lcom/google/ar/core/Config$FocusMode;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    goto :goto_0

    :cond_1
    iget-object p1, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    sget-object v1, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/google/ar/core/Config$FocusMode;->FIXED:Lcom/google/ar/core/Config$FocusMode;

    :goto_0
    iput-object p1, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    :cond_2
    :goto_1
    iget-object p1, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    if-eq p1, v0, :cond_3

    iget-object p1, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    sget-object v0, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    if-ne p1, v0, :cond_3

    :try_start_0
    iget-object p1, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {p1}, Lcom/google/ar/core/Session;->getConfig()Lcom/google/ar/core/Config;

    move-result-object p1

    iget-object v0, p0, La/a/a/c/a/d;->t:Lcom/google/ar/core/Config$FocusMode;

    invoke-virtual {p1, v0}, Lcom/google/ar/core/Config;->setFocusMode(Lcom/google/ar/core/Config$FocusMode;)Lcom/google/ar/core/Config;

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0, p1}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    iget-object p1, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {p1}, Lcom/google/ar/core/Session;->resume()V
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v0, "Failed to acquire Camera when resuming ARCore."

    invoke-static {p1, v0}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/wikitude/common/internal/CallStatusInternal;->success()Lcom/wikitude/common/CallStatus;

    move-result-object p1

    return-object p1
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->detach()V

    :cond_0
    iput-boolean p1, p0, La/a/a/c/a/d;->B:Z

    return-void
.end method

.method public a(II)Z
    .locals 2

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput p1, p0, La/a/a/c/a/d;->D:I

    iput p2, p0, La/a/a/c/a/d;->E:I

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v1, p0, La/a/a/c/a/d;->n:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a(FF)[F
    .locals 2

    iget-object v0, p0, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v0

    sget-object v1, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    invoke-virtual {v0, p1, p2}, Lcom/google/ar/core/Frame;->hitTest(FF)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ar/core/HitResult;

    invoke-virtual {p1}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tx()F

    move-result v1

    aput v1, v0, p2

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->ty()F

    move-result p2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tz()F

    move-result p1

    const/4 p2, 0x2

    aput p1, v0, p2

    return-object v0

    :cond_0
    sget-object p1, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string p2, "convertScreenCoordinateToPointCloudCoordinate: no hit result found"

    goto :goto_0

    :cond_1
    sget-object p1, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string p2, "convertScreenCoordinateToPointCloudCoordinate: hit test is not available"

    :goto_0
    invoke-static {p1, p2}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/wikitude/common/CallStatus;
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->l:La/a/a/c/a/d$e;

    invoke-direct {p0, v0}, La/a/a/c/a/d;->a(La/a/a/c/a/d$e;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, La/a/a/c/a/d;->F:I

    invoke-virtual {v0, p1}, Lcom/google/ar/core/Session;->setCameraTextureName(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public d()F
    .locals 1

    iget v0, p0, La/a/a/c/a/d;->z:F

    return v0
.end method

.method public e()[F
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->x:[F

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/c/a/d;->B:Z

    return v0
.end method

.method public g()Lcom/google/ar/core/TrackingState;
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    return-object v0
.end method

.method public h()[F
    .locals 1

    iget-object v0, p0, La/a/a/c/a/d;->v:[F

    return-object v0
.end method

.method public i()V
    .locals 20

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    sget-object v2, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    if-eq v0, v2, :cond_0

    sget-object v0, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string/jumbo v2, "update: Session is paused."

    invoke-static {v0, v2}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v1, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->update()Lcom/google/ar/core/Frame;

    move-result-object v0

    iput-object v0, v1, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->getCamera()Lcom/google/ar/core/Camera;

    move-result-object v0

    iget-object v2, v1, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    invoke-virtual {v2}, Lcom/google/ar/core/Frame;->acquireCameraImage()Landroid/media/Image;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    if-eqz v5, :cond_1

    aget-object v6, v5, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v17

    aget-object v6, v5, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aget-object v6, v5, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v6

    iput v6, v1, La/a/a/c/a/d;->e:I

    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v9

    iput v9, v1, La/a/a/c/a/d;->f:I

    iget-object v7, v1, La/a/a/c/a/d;->o:La/a/a/c/a/c;

    iget v8, v1, La/a/a/c/a/d;->e:I

    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    aget-object v6, v5, v4

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    aget-object v6, v5, v3

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getImageIntrinsics()Lcom/google/ar/core/CameraIntrinsics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ar/core/CameraIntrinsics;->getFocalLength()[F

    move-result-object v18

    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getImageIntrinsics()Lcom/google/ar/core/CameraIntrinsics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ar/core/CameraIntrinsics;->getPrincipalPoint()[F

    move-result-object v19

    invoke-interface/range {v7 .. v19}, La/a/a/c/a/c;->a(IIJLjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III[F[F)V

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    :cond_1
    iget-boolean v2, v1, La/a/a/c/a/d;->A:Z

    if-nez v2, :cond_3

    iget v2, v1, La/a/a/c/a/d;->D:I

    if-eqz v2, :cond_3

    iget v2, v1, La/a/a/c/a/d;->E:I

    if-eqz v2, :cond_3

    iget v2, v1, La/a/a/c/a/d;->e:I

    if-eqz v2, :cond_3

    iget v2, v1, La/a/a/c/a/d;->f:I

    if-eqz v2, :cond_3

    iget-object v2, v1, La/a/a/c/a/d;->u:[F

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/google/ar/core/Camera;->getProjectionMatrix([FIFF)V

    iget-object v2, v1, La/a/a/c/a/d;->m:Landroid/app/Activity;

    const-string v5, "camera"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v3, :cond_2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SizeF;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {v0}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    aget v2, v2, v4

    invoke-static {v0, v2}, La/a/a/d/a/f;->a(FF)F

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v2

    aget-object v2, v2, v4

    new-instance v4, La/a/a/l/a/b;

    iget v5, v1, La/a/a/c/a/d;->e:I

    iget v6, v1, La/a/a/c/a/d;->f:I

    invoke-direct {v4, v5, v6}, La/a/a/l/a/b;-><init>(II)V

    new-instance v5, La/a/a/l/a/b;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v5, v6, v2}, La/a/a/l/a/b;-><init>(II)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v4, v5}, La/a/a/d/a/f;->a(FFLa/a/a/l/a/b;La/a/a/l/a/b;)F

    move-result v0

    iput v0, v1, La/a/a/c/a/d;->z:F

    iput-boolean v3, v1, La/a/a/c/a/d;->A:Z

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, La/a/a/c/a/d;->g:I

    iget-object v0, v1, La/a/a/c/a/d;->i:Landroid/os/Handler;

    iget-object v2, v1, La/a/a/c/a/d;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ar/core/Pose;->inverse()Lcom/google/ar/core/Pose;

    move-result-object v2

    iget-object v3, v1, La/a/a/c/a/d;->v:[F

    invoke-virtual {v2, v3, v4}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    iget-boolean v2, v1, La/a/a/c/a/d;->B:Z

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v2, v1, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    if-nez v2, :cond_5

    sget-object v0, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v2, "PrepareUpdate: Tracking Anchor is not set."

    invoke-static {v0, v2}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/google/ar/core/Anchor;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v2

    sget-object v3, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-eq v2, v3, :cond_7

    iget-object v0, v1, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    if-ne v0, v3, :cond_6

    sget-object v0, Lcom/google/ar/core/TrackingState;->STOPPED:Lcom/google/ar/core/TrackingState;

    iput-object v0, v1, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    :cond_6
    sget-object v0, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v2, "PrepareUpdate: Tracking Anchor is not tracking."

    invoke-static {v0, v2}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object v2, v1, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    if-eq v2, v3, :cond_8

    sget-object v2, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v3, "PrepareUpdate: started tracking."

    invoke-static {v2, v3}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    iput-object v2, v1, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    :cond_8
    invoke-virtual {v0}, Lcom/google/ar/core/Camera;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->inverse()Lcom/google/ar/core/Pose;

    move-result-object v0

    iget-object v2, v1, La/a/a/c/a/d;->w:[F

    invoke-virtual {v0, v2, v4}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    iget-object v0, v1, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    iget-object v2, v1, La/a/a/c/a/d;->x:[F

    invoke-virtual {v0, v2, v4}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    iget-object v0, v1, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    invoke-virtual {v0}, Lcom/google/ar/core/Anchor;->getPose()Lcom/google/ar/core/Pose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->inverse()Lcom/google/ar/core/Pose;

    move-result-object v0

    iget-object v2, v1, La/a/a/c/a/d;->y:[F

    invoke-virtual {v0, v2, v4}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    iget-object v0, v1, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    invoke-virtual {v0}, Lcom/google/ar/core/Frame;->acquirePointCloud()Lcom/google/ar/core/PointCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->getPoints()Ljava/nio/FloatBuffer;

    move-result-object v2

    iget-object v3, v1, La/a/a/c/a/d;->o:La/a/a/c/a/c;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v4

    iget-object v5, v1, La/a/a/c/a/d;->y:[F

    invoke-interface {v3, v2, v4, v5}, La/a/a/c/a/c;->a(Ljava/nio/FloatBuffer;I[F)V

    invoke-virtual {v0}, Lcom/google/ar/core/PointCloud;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v2, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v3, "prepare update: "

    invoke-static {v2, v3, v0}, La/a/a/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public j()V
    .locals 4

    iget-object v0, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    sget-object v1, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->pause()V

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/ar/core/Session;

    iget-object v1, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableApkTooOldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-direct {p0}, La/a/a/c/a/d;->c()Lcom/google/ar/core/Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    iget v1, p0, La/a/a/c/a/d;->F:I

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->setCameraTextureName(I)V

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    iget-object v1, p0, La/a/a/c/a/d;->n:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget v2, p0, La/a/a/c/a/d;->D:I

    iget v3, p0, La/a/a/c/a/d;->E:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/ar/core/Session;->setDisplayGeometry(III)V

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    sget v1, La/a/a/c/a/d;->a:I

    invoke-direct {p0, v1}, La/a/a/c/a/d;->a(I)Lcom/google/ar/core/CameraConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->setCameraConfig(Lcom/google/ar/core/CameraConfig;)V

    iget-object v0, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    sget-object v1, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    if-ne v0, v1, :cond_1

    :try_start_1
    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->resume()V
    :try_end_1
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v1, "Failed to acquire Camera when resuming ARCore."

    invoke-static {v0, v1}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/c/a/d;->q:Lcom/google/ar/core/Frame;

    iput-object v0, p0, La/a/a/c/a/d;->r:Lcom/google/ar/core/Anchor;

    sget-object v0, Lcom/google/ar/core/TrackingState;->STOPPED:Lcom/google/ar/core/TrackingState;

    iput-object v0, p0, La/a/a/c/a/d;->s:Lcom/google/ar/core/TrackingState;

    return-void
.end method

.method public k()V
    .locals 4

    iget-object v0, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    invoke-static {v0}, La/a/a/d/a/f;->a(Landroid/content/Context;)Lcom/wikitude/common/CallStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/wikitude/common/CallStatus;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, La/a/a/c/a/d;->o:La/a/a/c/a/c;

    invoke-interface {v1, v0}, La/a/a/c/a/c;->a(Lcom/wikitude/common/CallStatus;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v1

    iget-object v2, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    if-ne v0, v1, :cond_1

    :try_start_1
    new-instance v0, Lcom/google/ar/core/Session;

    iget-object v1, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/ar/core/Session;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;
    :try_end_1
    .catch Lcom/google/ar/core/exceptions/UnavailableArcoreNotInstalledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableApkTooOldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableSdkTooOldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-direct {p0}, La/a/a/c/a/d;->c()Lcom/google/ar/core/Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->configure(Lcom/google/ar/core/Config;)V

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    sget v1, La/a/a/c/a/d;->a:I

    invoke-direct {p0, v1}, La/a/a/c/a/d;->a(I)Lcom/google/ar/core/CameraConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ar/core/Session;->setCameraConfig(Lcom/google/ar/core/CameraConfig;)V

    :cond_1
    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {v0}, Lcom/google/ar/core/Session;->resume()V

    iget-object v0, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameInputPluginModule"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La/a/a/c/a/d;->i:Landroid/os/Handler;

    :cond_2
    iget v0, p0, La/a/a/c/a/d;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, La/a/a/c/a/d;->i:Landroid/os/Handler;

    iget-object v1, p0, La/a/a/c/a/d;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lcom/google/ar/core/exceptions/CameraNotAvailableException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    sget-object v0, La/a/a/c/a/d;->d:Ljava/lang/String;

    const-string v1, "Failed to acquire Camera when resuming ARCore."

    invoke-static {v0, v1}, La/a/a/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object v0, La/a/a/c/a/d$f;->b:La/a/a/c/a/d$f;

    iput-object v0, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    :catch_2
    :cond_4
    return-void

    :catch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, La/a/a/c/a/d;->m:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Installation cancelled"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "ARCore APK installation cancelled. The application will not work correctly."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v0, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, La/a/a/c/a/d;->i:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v0, p0, La/a/a/c/a/d;->h:Landroid/os/HandlerThread;

    iput-object v0, p0, La/a/a/c/a/d;->i:Landroid/os/Handler;

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, La/a/a/c/a/d;->p:Lcom/google/ar/core/Session;

    invoke-virtual {v0}, Lcom/google/ar/core/Session;->pause()V

    sget-object v0, La/a/a/c/a/d$f;->c:La/a/a/c/a/d$f;

    iput-object v0, p0, La/a/a/c/a/d;->C:La/a/a/c/a/d$f;

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method
