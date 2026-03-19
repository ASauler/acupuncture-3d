.class public Lorg/matomo/sdk/tools/DeviceHelper;
.super Ljava/lang/Object;
.source "DeviceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBuildInfo:Lorg/matomo/sdk/tools/BuildInfo;

.field private final mContext:Landroid/content/Context;

.field private final mPropertySource:Lorg/matomo/sdk/tools/PropertySource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 27
    const-class v2, Lorg/matomo/sdk/tools/DeviceHelper;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/tools/DeviceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/matomo/sdk/tools/PropertySource;Lorg/matomo/sdk/tools/BuildInfo;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mPropertySource:Lorg/matomo/sdk/tools/PropertySource;

    .line 35
    iput-object p3, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mBuildInfo:Lorg/matomo/sdk/tools/BuildInfo;

    return-void
.end method


# virtual methods
.method public getResolution()[I
    .locals 4

    .line 80
    :try_start_0
    iget-object v0, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 81
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 91
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 92
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-ne v1, v3, :cond_1

    .line 108
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 111
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    :cond_1
    filled-new-array {v2, v1}, [I

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    sget-object v1, Lorg/matomo/sdk/tools/DeviceHelper;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Window service was not available from this context"

    invoke-virtual {v1, v0, v3, v2}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 6

    .line 53
    iget-object v0, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mPropertySource:Lorg/matomo/sdk/tools/PropertySource;

    invoke-virtual {v0}, Lorg/matomo/sdk/tools/PropertySource;->getHttpAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Apache-HttpClient/UNAVAILABLE (java"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mPropertySource:Lorg/matomo/sdk/tools/PropertySource;

    invoke-virtual {v0}, Lorg/matomo/sdk/tools/PropertySource;->getJVMVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "0.0.0"

    .line 57
    :cond_1
    iget-object v1, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mBuildInfo:Lorg/matomo/sdk/tools/BuildInfo;

    invoke-virtual {v1}, Lorg/matomo/sdk/tools/BuildInfo;->getRelease()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mBuildInfo:Lorg/matomo/sdk/tools/BuildInfo;

    invoke-virtual {v2}, Lorg/matomo/sdk/tools/BuildInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lorg/matomo/sdk/tools/DeviceHelper;->mBuildInfo:Lorg/matomo/sdk/tools/BuildInfo;

    invoke-virtual {v3}, Lorg/matomo/sdk/tools/BuildInfo;->getBuildId()Ljava/lang/String;

    move-result-object v3

    .line 60
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Dalvik/%s (Linux; U; Android %s; %s Build/%s)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getUserLanguage()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
