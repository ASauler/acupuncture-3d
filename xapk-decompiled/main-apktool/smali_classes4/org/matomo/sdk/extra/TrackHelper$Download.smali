.class public Lorg/matomo/sdk/extra/TrackHelper$Download;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Download"
.end annotation


# instance fields
.field private final mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

.field private mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

.field private mExtra:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

.field private mForced:Z

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/DownloadTracker;Lorg/matomo/sdk/extra/TrackHelper;)V
    .locals 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Lorg/matomo/sdk/extra/DownloadTracker$Extra$None;

    invoke-direct {v0}, Lorg/matomo/sdk/extra/DownloadTracker$Extra$None;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mExtra:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mForced:Z

    .line 426
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    .line 427
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    return-void
.end method


# virtual methods
.method public force()Lorg/matomo/sdk/extra/TrackHelper$Download;
    .locals 1

    const/4 v0, 0x1

    .line 449
    iput-boolean v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mForced:Z

    return-object p0
.end method

.method public identifier(Lorg/matomo/sdk/extra/DownloadTracker$Extra;)Lorg/matomo/sdk/extra/TrackHelper$Download;
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mExtra:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    return-object p0
.end method

.method public version(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Download;
    .locals 0

    .line 460
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public with(Lorg/matomo/sdk/Tracker;)V
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    if-nez v0, :cond_0

    new-instance v0, Lorg/matomo/sdk/extra/DownloadTracker;

    invoke-direct {v0, p1}, Lorg/matomo/sdk/extra/DownloadTracker;-><init>(Lorg/matomo/sdk/Tracker;)V

    iput-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    .line 466
    :cond_0
    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mVersion:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    invoke-virtual {v0, p1}, Lorg/matomo/sdk/extra/DownloadTracker;->setVersion(Ljava/lang/String;)V

    .line 467
    :cond_1
    iget-boolean p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mForced:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mExtra:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {p1, v0, v1}, Lorg/matomo/sdk/extra/DownloadTracker;->trackNewAppDownload(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mDownloadTracker:Lorg/matomo/sdk/extra/DownloadTracker;

    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    iget-object v0, v0, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Download;->mExtra:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {p1, v0, v1}, Lorg/matomo/sdk/extra/DownloadTracker;->trackOnce(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    :goto_0
    return-void
.end method
