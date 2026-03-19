.class public abstract Lorg/matomo/sdk/extra/MatomoApplication;
.super Landroid/app/Application;
.source "MatomoApplication.java"


# instance fields
.field private mMatomoTracker:Lorg/matomo/sdk/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatomo()Lorg/matomo/sdk/Matomo;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/matomo/sdk/Matomo;->getInstance(Landroid/content/Context;)Lorg/matomo/sdk/Matomo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTracker()Lorg/matomo/sdk/Tracker;
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoApplication;->mMatomoTracker:Lorg/matomo/sdk/Tracker;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoApplication;->onCreateTrackerConfig()Lorg/matomo/sdk/TrackerBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/MatomoApplication;->getMatomo()Lorg/matomo/sdk/Matomo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/matomo/sdk/TrackerBuilder;->build(Lorg/matomo/sdk/Matomo;)Lorg/matomo/sdk/Tracker;

    move-result-object v0

    iput-object v0, p0, Lorg/matomo/sdk/extra/MatomoApplication;->mMatomoTracker:Lorg/matomo/sdk/Tracker;

    .line 30
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoApplication;->mMatomoTracker:Lorg/matomo/sdk/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onCreateTrackerConfig()Lorg/matomo/sdk/TrackerBuilder;
.end method

.method public onLowMemory()V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoApplication;->mMatomoTracker:Lorg/matomo/sdk/Tracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/matomo/sdk/Tracker;->dispatch()V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/matomo/sdk/extra/MatomoApplication;->mMatomoTracker:Lorg/matomo/sdk/Tracker;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lorg/matomo/sdk/Tracker;->dispatch()V

    .line 52
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
