.class public final La/a/a/c/a/b$d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/c/a/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Lcom/google/ar/core/ArCoreApk$Availability;

.field private static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, La/a/a/c/a/b$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    sput-object v0, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    sput-boolean v1, La/a/a/c/a/b$d;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/a/a/c/a/b$a;)V
    .locals 0

    invoke-direct {p0}, La/a/a/c/a/b$d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/ar/core/ArCoreApk$Availability;)Lcom/google/ar/core/ArCoreApk$Availability;
    .locals 0

    sput-object p0, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    return-object p0
.end method

.method public static synthetic a()Z
    .locals 1

    sget-boolean v0, La/a/a/c/a/b$d;->c:Z

    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, La/a/a/c/a/b$d;->c:Z

    return p0
.end method

.method public static synthetic b(Lcom/google/ar/core/ArCoreApk$Availability;)I
    .locals 0

    invoke-static {p0}, La/a/a/c/a/b$d;->c(Lcom/google/ar/core/ArCoreApk$Availability;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, La/a/a/c/a/b$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 0

    invoke-static {p0, p1}, La/a/a/c/a/b$d;->c(Landroid/content/Context;La/a/a/c/a/b$b;)V

    return-void
.end method

.method private static c(Lcom/google/ar/core/ArCoreApk$Availability;)I
    .locals 1

    sget-object v0, La/a/a/c/a/b$a;->a:[I

    invoke-virtual {p0}, Lcom/google/ar/core/ArCoreApk$Availability;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/security/InvalidParameterException;

    const-string v0, "Invalid input parameter value encountered"

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, La/a/a/c/a/b$d$a;

    invoke-direct {v1, p0, p1}, La/a/a/c/a/b$d$a;-><init>(Landroid/content/Context;La/a/a/c/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 2

    sget-boolean v0, La/a/a/c/a/b$d;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    if-eq v0, v1, :cond_0

    sget-object v0, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_APK_TOO_OLD:Lcom/google/ar/core/ArCoreApk$Availability;

    if-ne v0, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p1

    sget-object v0, Lcom/google/ar/core/ArCoreApk$InstallStatus;->INSTALLED:Lcom/google/ar/core/ArCoreApk$InstallStatus;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    sput-object p1, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    :goto_0
    invoke-static {p1}, La/a/a/c/a/b$d;->c(Lcom/google/ar/core/ArCoreApk$Availability;)I

    move-result p1

    return p1

    :catch_1
    :cond_1
    :goto_1
    sget-object p1, La/a/a/c/a/b$d;->b:Lcom/google/ar/core/ArCoreApk$Availability;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;La/a/a/c/a/b$b;)V
    .locals 3

    sget-object v0, La/a/a/c/a/b$d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, La/a/a/c/a/b$d;->c(Landroid/content/Context;La/a/a/c/a/b$b;)V

    return-void
.end method
