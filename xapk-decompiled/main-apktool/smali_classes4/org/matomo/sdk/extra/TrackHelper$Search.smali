.class public Lorg/matomo/sdk/extra/TrackHelper$Search;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Search"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCount:Ljava/lang/Integer;

.field private final mKeyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 362
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mKeyword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 3

    .line 388
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$Search;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->SEARCH_KEYWORD:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mKeyword:Ljava/lang/String;

    .line 389
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->SEARCH_CATEGORY:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mCategory:Ljava/lang/String;

    .line 390
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mCount:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->SEARCH_NUMBER_OF_HITS:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;I)Lorg/matomo/sdk/TrackMe;

    :cond_0
    return-object v0
.end method

.method public category(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Search;
    .locals 0

    .line 371
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public count(Ljava/lang/Integer;)Lorg/matomo/sdk/extra/TrackHelper$Search;
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Search;->mCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 355
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
