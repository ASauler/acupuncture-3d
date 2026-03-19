.class public Lorg/matomo/sdk/extra/MatomoExceptionHandler;
.super Ljava/lang/Object;
.source "MatomoExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mTrackMe:Lorg/matomo/sdk/TrackMe;

.field private final mTracker:Lorg/matomo/sdk/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 26
    const-class v2, Lorg/matomo/sdk/extra/MatomoExceptionHandler;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/Tracker;Lorg/matomo/sdk/TrackMe;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mTracker:Lorg/matomo/sdk/Tracker;

    .line 33
    iput-object p2, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mTrackMe:Lorg/matomo/sdk/TrackMe;

    .line 34
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public getTracker()Lorg/matomo/sdk/Tracker;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mTracker:Lorg/matomo/sdk/Tracker;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 51
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getTracker()Lorg/matomo/sdk/Tracker;

    move-result-object v1

    .line 56
    sget-object v2, Lorg/matomo/sdk/dispatcher/DispatchMode;->EXCEPTION:Lorg/matomo/sdk/dispatcher/DispatchMode;

    invoke-virtual {v1, v2}, Lorg/matomo/sdk/Tracker;->setDispatchMode(Lorg/matomo/sdk/dispatcher/DispatchMode;)V

    .line 58
    iget-object v2, p0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->mTrackMe:Lorg/matomo/sdk/TrackMe;

    invoke-static {v2}, Lorg/matomo/sdk/extra/TrackHelper;->track(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/extra/TrackHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/matomo/sdk/extra/TrackHelper;->exception(Ljava/lang/Throwable;)Lorg/matomo/sdk/extra/TrackHelper$Exception;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/matomo/sdk/extra/TrackHelper$Exception;->description(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Exception;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/matomo/sdk/extra/TrackHelper$Exception;->fatal(Z)Lorg/matomo/sdk/extra/TrackHelper$Exception;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/matomo/sdk/extra/TrackHelper$Exception;->with(Lorg/matomo/sdk/Tracker;)V

    .line 61
    invoke-virtual {v1}, Lorg/matomo/sdk/Tracker;->dispatchBlocking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 63
    :try_start_1
    sget-object v1, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const-string v2, "Couldn\'t track uncaught exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 67
    :goto_0
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 66
    :goto_1
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v1, p0, :cond_1

    .line 67
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;->getDefaultExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    :cond_1
    throw v0
.end method
