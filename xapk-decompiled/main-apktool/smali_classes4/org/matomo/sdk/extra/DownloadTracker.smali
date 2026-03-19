.class public Lorg/matomo/sdk/extra/DownloadTracker;
.super Ljava/lang/Object;
.source "DownloadTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/matomo/sdk/extra/DownloadTracker$Extra;
    }
.end annotation


# static fields
.field private static final INSTALL_SOURCE_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInternalTracking:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private final mPkgInfo:Landroid/content/pm/PackageInfo;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mTrackOnceLock:Ljava/lang/Object;

.field private final mTracker:Lorg/matomo/sdk/Tracker;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 23
    const-class v2, Lorg/matomo/sdk/extra/DownloadTracker;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/DownloadTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/Tracker;)V
    .locals 1

    .line 117
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/matomo/sdk/extra/DownloadTracker;->getOurPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/matomo/sdk/extra/DownloadTracker;-><init>(Lorg/matomo/sdk/Tracker;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/Tracker;Landroid/content/pm/PackageInfo;)V
    .locals 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mTrackOnceLock:Ljava/lang/Object;

    .line 130
    iput-object p1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mTracker:Lorg/matomo/sdk/Tracker;

    .line 131
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    .line 133
    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    .line 134
    iput-object p2, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 135
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mInternalTracking:Z

    return-void
.end method

.method private static getOurPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 122
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 124
    sget-object v0, Lorg/matomo/sdk/extra/DownloadTracker;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p0}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private trackNewAppDownloadInternal(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V
    .locals 7

    .line 173
    sget-object v0, Lorg/matomo/sdk/extra/DownloadTracker;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Tracking app download..."

    invoke-virtual {v1, v4, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v4, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/DownloadTracker;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-interface {p2}, Lorg/matomo/sdk/extra/DownloadTracker$Extra;->buildExtraIdentifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v4, "/"

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    iget-object p2, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 184
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_1

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    const-string v4, "com.android.vending"

    .line 186
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    iget-object v4, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mTracker:Lorg/matomo/sdk/Tracker;

    invoke-virtual {v4}, Lorg/matomo/sdk/Tracker;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/matomo/sdk/Matomo;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "referrer.extras"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "/?"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 194
    :cond_3
    iget-object v3, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mTracker:Lorg/matomo/sdk/Tracker;

    sget-object v4, Lorg/matomo/sdk/QueryParams;->EVENT_CATEGORY:Lorg/matomo/sdk/QueryParams;

    const-string v5, "Application"

    .line 195
    invoke-virtual {p1, v4, v5}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    sget-object v4, Lorg/matomo/sdk/QueryParams;->EVENT_ACTION:Lorg/matomo/sdk/QueryParams;

    const-string v5, "downloaded"

    .line 196
    invoke-virtual {p1, v4, v5}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    sget-object v4, Lorg/matomo/sdk/QueryParams;->ACTION_NAME:Lorg/matomo/sdk/QueryParams;

    const-string v5, "application/downloaded"

    .line 197
    invoke-virtual {p1, v4, v5}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    sget-object v4, Lorg/matomo/sdk/QueryParams;->URL_PATH:Lorg/matomo/sdk/QueryParams;

    const-string v5, "/application/downloaded"

    .line 198
    invoke-virtual {p1, v4, v5}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    sget-object v4, Lorg/matomo/sdk/QueryParams;->DOWNLOAD:Lorg/matomo/sdk/QueryParams;

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    sget-object v1, Lorg/matomo/sdk/QueryParams;->REFERRER:Lorg/matomo/sdk/QueryParams;

    .line 200
    invoke-virtual {p1, v1, p2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    .line 194
    invoke-virtual {v3, p1}, Lorg/matomo/sdk/Tracker;->track(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/Tracker;

    .line 202
    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const-string p2, "... app download tracked."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$trackNewAppDownload$0$org-matomo-sdk-extra-DownloadTracker(ZLorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    const-wide/16 v0, 0xbb8

    .line 165
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ContentValues"

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;)V

    .line 166
    :cond_0
    :goto_0
    invoke-direct {p0, p2, p3}, Lorg/matomo/sdk/extra/DownloadTracker;->trackNewAppDownloadInternal(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public trackNewAppDownload(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V
    .locals 4

    .line 159
    iget-boolean v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mInternalTracking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPackMan:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.vending"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 162
    sget-object v2, Lorg/matomo/sdk/extra/DownloadTracker;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, "Google Play is install source, deferring tracking."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;-><init>(Lorg/matomo/sdk/extra/DownloadTracker;ZLorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    if-nez v0, :cond_2

    .line 168
    invoke-interface {p2}, Lorg/matomo/sdk/extra/DownloadTracker$Extra;->isIntensiveWork()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method public trackOnce(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V
    .locals 4

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloaded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/DownloadTracker;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mTrackOnceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v2, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    iget-object v2, p0, Lorg/matomo/sdk/extra/DownloadTracker;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    invoke-virtual {p0, p1, p2}, Lorg/matomo/sdk/extra/DownloadTracker;->trackNewAppDownload(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    .line 154
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
