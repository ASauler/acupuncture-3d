.class public Lcom/wikitude/common/camera/internal/AndroidCamera;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

.field private final c:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

.field private final d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

.field private final e:Z

.field private final f:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->b:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    iput-object p3, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->c:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    iput-object p4, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->e:Z

    sget-object p1, Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;->LEGACY:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    iput-object p1, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->f:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/wikitude/common/camera/CameraSettings$CameraPosition;Lcom/wikitude/common/camera/CameraSettings$CameraResolution;Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;ZLcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->b:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    iput-object p3, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->c:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    iput-object p4, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    iput-boolean p5, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->e:Z

    iput-object p6, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->f:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    return-void
.end method


# virtual methods
.method public getCameraFocusMode()Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->d:Lcom/wikitude/common/camera/CameraSettings$CameraFocusMode;

    return-object v0
.end method

.method public getCameraPosition()Lcom/wikitude/common/camera/CameraSettings$CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->b:Lcom/wikitude/common/camera/CameraSettings$CameraPosition;

    return-object v0
.end method

.method public getCameraResolution()Lcom/wikitude/common/camera/CameraSettings$CameraResolution;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->c:Lcom/wikitude/common/camera/CameraSettings$CameraResolution;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCamera2SupportLevel()Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;
    .locals 1

    iget-object v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->f:Lcom/wikitude/common/camera/CameraSettings$Camera2SupportLevel;

    return-object v0
.end method

.method public isUsingCamera2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wikitude/common/camera/internal/AndroidCamera;->e:Z

    return v0
.end method
