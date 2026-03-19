.class public Lorg/matomo/sdk/Matomo;
.super Ljava/lang/Object;
.source "Matomo.java"


# static fields
.field private static final BASE_PREFERENCE_FILE:Ljava/lang/String; = "org.matomo.sdk"

.field public static final LOGGER_PREFIX:Ljava/lang/String; = "MATOMO:"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lorg/matomo/sdk/Matomo;


# instance fields
.field private final mBasePreferences:Landroid/content/SharedPreferences;

.field private final mContext:Landroid/content/Context;

.field private mDispatcherFactory:Lorg/matomo/sdk/dispatcher/DispatcherFactory;

.field private final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/matomo/sdk/Tracker;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 30
    const-class v2, Lorg/matomo/sdk/Matomo;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/Matomo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/Matomo;->mPreferenceMap:Ljava/util/Map;

    .line 38
    new-instance v0, Lorg/matomo/sdk/dispatcher/DefaultDispatcherFactory;

    invoke-direct {v0}, Lorg/matomo/sdk/dispatcher/DefaultDispatcherFactory;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/Matomo;->mDispatcherFactory:Lorg/matomo/sdk/dispatcher/DispatcherFactory;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/matomo/sdk/Matomo;->mContext:Landroid/content/Context;

    const-string v0, "org.matomo.sdk"

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lorg/matomo/sdk/Matomo;->mBasePreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/matomo/sdk/Matomo;
    .locals 3

    const-class v0, Lorg/matomo/sdk/Matomo;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lorg/matomo/sdk/Matomo;->sInstance:Lorg/matomo/sdk/Matomo;

    if-nez v1, :cond_1

    .line 42
    const-class v1, Lorg/matomo/sdk/Matomo;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v2, Lorg/matomo/sdk/Matomo;->sInstance:Lorg/matomo/sdk/Matomo;

    if-nez v2, :cond_0

    new-instance v2, Lorg/matomo/sdk/Matomo;

    invoke-direct {v2, p0}, Lorg/matomo/sdk/Matomo;-><init>(Landroid/content/Context;)V

    sput-object v2, Lorg/matomo/sdk/Matomo;->sInstance:Lorg/matomo/sdk/Matomo;

    .line 44
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 46
    :cond_1
    :goto_0
    sget-object p0, Lorg/matomo/sdk/Matomo;->sInstance:Lorg/matomo/sdk/Matomo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs tag([Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 102
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 103
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 104
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs tag([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MATOMO:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 111
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 112
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/matomo/sdk/Matomo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDeviceHelper()Lorg/matomo/sdk/tools/DeviceHelper;
    .locals 4

    .line 98
    new-instance v0, Lorg/matomo/sdk/tools/DeviceHelper;

    iget-object v1, p0, Lorg/matomo/sdk/Matomo;->mContext:Landroid/content/Context;

    new-instance v2, Lorg/matomo/sdk/tools/PropertySource;

    invoke-direct {v2}, Lorg/matomo/sdk/tools/PropertySource;-><init>()V

    new-instance v3, Lorg/matomo/sdk/tools/BuildInfo;

    invoke-direct {v3}, Lorg/matomo/sdk/tools/BuildInfo;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/matomo/sdk/tools/DeviceHelper;-><init>(Landroid/content/Context;Lorg/matomo/sdk/tools/PropertySource;Lorg/matomo/sdk/tools/BuildInfo;)V

    return-object v0
.end method

.method public getDispatcherFactory()Lorg/matomo/sdk/dispatcher/DispatcherFactory;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/matomo/sdk/Matomo;->mDispatcherFactory:Lorg/matomo/sdk/dispatcher/DispatcherFactory;

    return-object v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/matomo/sdk/Matomo;->mBasePreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getTrackerPreferences(Lorg/matomo/sdk/Tracker;)Landroid/content/SharedPreferences;
    .locals 4

    const-string v0, "org.matomo.sdk_"

    const-string v1, "org.matomo.sdk_"

    .line 69
    iget-object v2, p0, Lorg/matomo/sdk/Matomo;->mPreferenceMap:Ljava/util/Map;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-object v3, p0, Lorg/matomo/sdk/Matomo;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 74
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/matomo/sdk/tools/Checksum;->getMD5Checksum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 76
    :try_start_2
    sget-object v3, Lorg/matomo/sdk/Matomo;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v3, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    invoke-virtual {p0}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 80
    iget-object v0, p0, Lorg/matomo/sdk/Matomo;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setDispatcherFactory(Lorg/matomo/sdk/dispatcher/DispatcherFactory;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/matomo/sdk/Matomo;->mDispatcherFactory:Lorg/matomo/sdk/dispatcher/DispatcherFactory;

    return-void
.end method
