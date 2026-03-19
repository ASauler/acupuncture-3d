.class abstract Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseEvent"
.end annotation


# instance fields
.field private final mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    return-void
.end method


# virtual methods
.method public abstract build()Lorg/matomo/sdk/TrackMe;
.end method

.method getBaseTrackMe()Lorg/matomo/sdk/TrackMe;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    return-object v0
.end method

.method public safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 1

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->build()Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lorg/matomo/sdk/Tracker;->track(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/Tracker;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 72
    invoke-virtual {p1}, Lorg/matomo/sdk/extra/MatomoApplication;->getTracker()Lorg/matomo/sdk/Tracker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public with(Lorg/matomo/sdk/Tracker;)V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->build()Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lorg/matomo/sdk/Tracker;->track(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/Tracker;

    return-void
.end method

.method public with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lorg/matomo/sdk/extra/MatomoApplication;->getTracker()Lorg/matomo/sdk/Tracker;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method
