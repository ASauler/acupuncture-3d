.class public Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInteraction"
.end annotation


# instance fields
.field private final mContentName:Ljava/lang/String;

.field private mContentPiece:Ljava/lang/String;

.field private mContentTarget:Ljava/lang/String;

.field private final mInteraction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 538
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 539
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    .line 540
    iput-object p3, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 3

    .line 561
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CONTENT_NAME:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentName:Ljava/lang/String;

    .line 569
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CONTENT_PIECE:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentPiece:Ljava/lang/String;

    .line 570
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CONTENT_TARGET:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentTarget:Ljava/lang/String;

    .line 571
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CONTENT_INTERACTION:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mInteraction:Ljava/lang/String;

    .line 572
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    return-object v0

    .line 565
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interaction name needs to be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content name needs to be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public piece(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;
    .locals 0

    .line 547
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentPiece:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public target(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;
    .locals 0

    .line 555
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;->mContentTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 531
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
