.class public Lcn/voidar/engine/UnityActivityHelper;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/app/Activity; = null

.field private static b:Landroid/view/OrientationEventListener; = null

.field private static c:Lcn/voidar/engine/b; = null

.field private static d:Lcn/voidar/engine/c; = null

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VoidAR_JAR"

    const-string v1, "--ver--2019.8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static a()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "--onResume--"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method static b()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "--onPause--"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcn/voidar/engine/j;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static closeCamera()V
    .locals 0

    invoke-static {}, Lcn/voidar/engine/UnityActivityHelper;->stopAR()V

    return-void
.end method

.method public static getCamera2SupportLevel(I)I
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcn/voidar/engine/j;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getCameraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {v0, p0}, Lcn/voidar/engine/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDeviceCamera()Lcn/voidar/engine/b;
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    return-object v0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/voidar/engine/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFOV()F
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/voidar/engine/b;->d()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getJarVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2019.8"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    sput-object p0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcn/voidar/engine/AndroidDevice;->screenOrientation:I

    invoke-static {v0}, Lcn/voidar/engine/j;->a(Landroid/view/Display;)Z

    move-result v1

    sput-boolean v1, Lcn/voidar/engine/AndroidDevice;->isCameraLandscape:Z

    sget-object v1, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    if-nez v1, :cond_1

    new-instance v1, Lcn/voidar/engine/UnityActivityHelper$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v0}, Lcn/voidar/engine/UnityActivityHelper$1;-><init>(Landroid/content/Context;ILandroid/view/Display;)V

    sput-object v1, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    :cond_1
    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    invoke-static {}, Lcn/voidar/engine/AndroidDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->b(Ljava/lang/String;)V

    sget v0, Lcn/voidar/engine/AndroidDevice;->CAMERA_VERSION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcn/voidar/engine/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcn/voidar/engine/e;

    invoke-direct {v0}, Lcn/voidar/engine/e;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcn/voidar/engine/d;

    invoke-direct {v0}, Lcn/voidar/engine/d;-><init>()V

    :goto_0
    sput-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    new-instance v0, Lcn/voidar/engine/c;

    invoke-direct {v0, p0}, Lcn/voidar/engine/c;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "native cameraName = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    iget-object v0, v0, Lcn/voidar/engine/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VoidAR_JAR"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcn/voidar/engine/AndroidDevice;->screenOrientation:I

    return p0
.end method

.method public static onApplicationPause(Z)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {}, Lcn/voidar/engine/UnityActivityHelper;->b()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/voidar/engine/UnityActivityHelper;->a()V

    :goto_0
    return-void
.end method

.method public static onDestroy()V
    .locals 2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v0

    const-string v1, "--onDestroy--"

    invoke-virtual {v0, v1}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/voidar/engine/c;->b()V

    sput-object v1, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    :cond_0
    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/voidar/engine/b;->a()V

    sput-object v1, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    :cond_1
    return-void
.end method

.method public static openCamera(IIIII)V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {v0, p1, p2}, Lcn/voidar/engine/b;->a(II)V

    sget-object p1, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {p1, p3}, Lcn/voidar/engine/b;->b(I)V

    invoke-static {p0, p4}, Lcn/voidar/engine/UnityActivityHelper;->startAR(II)V

    return-void
.end method

.method public static requestPermission(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcn/voidar/engine/UnityActivityHelper$2;

    invoke-direct {v0, p0}, Lcn/voidar/engine/UnityActivityHelper$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcn/voidar/engine/j;->a(Ljava/lang/String;Lcn/voidar/engine/f$a;)V

    return-void
.end method

.method public static sendMessageToUnity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/voidar/engine/VoidARNative;->sendMessageToUnity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCameraVersion(I)V
    .locals 3

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    const-string v1, "VoidAR_JAR"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/voidar/engine/b;->e()I

    move-result v0

    if-eq v0, p0, :cond_1

    sget-object p0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {p0}, Lcn/voidar/engine/b;->a()V

    sget p0, Lcn/voidar/engine/AndroidDevice;->CAMERA_VERSION:I

    if-ne p0, v2, :cond_0

    new-instance p0, Lcn/voidar/engine/e;

    invoke-direct {p0}, Lcn/voidar/engine/e;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcn/voidar/engine/d;

    invoke-direct {p0}, Lcn/voidar/engine/d;-><init>()V

    :goto_0
    sput-object p0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "swap cameraName = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    sget v0, Lcn/voidar/engine/AndroidDevice;->CAMERA_VERSION:I

    if-eq v0, p0, :cond_3

    sput p0, Lcn/voidar/engine/AndroidDevice;->CAMERA_VERSION:I

    sget p0, Lcn/voidar/engine/AndroidDevice;->CAMERA_VERSION:I

    if-ne p0, v2, :cond_2

    new-instance p0, Lcn/voidar/engine/e;

    invoke-direct {p0}, Lcn/voidar/engine/e;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p0, Lcn/voidar/engine/d;

    invoke-direct {p0}, Lcn/voidar/engine/d;-><init>()V

    :goto_1
    sput-object p0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "open cameraName = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    iget-object v0, v0, Lcn/voidar/engine/b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static setDeviceCamera(Lcn/voidar/engine/b;)V
    .locals 0

    sput-object p0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    return-void
.end method

.method public static setFlashTorchMode(Z)V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcn/voidar/engine/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public static startAR(II)V
    .locals 2

    sget v0, Lcn/voidar/engine/AndroidDevice;->lockCameraIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget p0, Lcn/voidar/engine/AndroidDevice;->lockCameraIndex:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lockCameraIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoidAR_JAR"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.permission.CAMERA"

    invoke-static {v0}, Lcn/voidar/engine/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {v0, p0}, Lcn/voidar/engine/b;->a(I)V

    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    sget-object p0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    invoke-virtual {p0}, Lcn/voidar/engine/c;->a()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    const-string p1, "Camera Permission denied"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static startIMU()V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    invoke-virtual {v0}, Lcn/voidar/engine/c;->a()V

    return-void
.end method

.method public static stopAR()V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->c:Lcn/voidar/engine/b;

    invoke-virtual {v0}, Lcn/voidar/engine/b;->a()V

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    invoke-virtual {v0}, Lcn/voidar/engine/c;->b()V

    return-void
.end method

.method public static stopIMU()V
    .locals 1

    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->d:Lcn/voidar/engine/c;

    invoke-virtual {v0}, Lcn/voidar/engine/c;->b()V

    return-void
.end method
