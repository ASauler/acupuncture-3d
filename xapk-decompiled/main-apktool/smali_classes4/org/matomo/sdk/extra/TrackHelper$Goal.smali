.class public Lorg/matomo/sdk/extra/TrackHelper$Goal;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Goal"
.end annotation


# instance fields
.field private final mIdGoal:I

.field private mRevenue:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;I)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 287
    iput p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mIdGoal:I

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 3

    .line 302
    iget v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mIdGoal:I

    if-ltz v0, :cond_1

    .line 306
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$Goal;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->GOAL_ID:Lorg/matomo/sdk/QueryParams;

    iget v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mIdGoal:I

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;I)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mRevenue:Ljava/lang/Float;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->REVENUE:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mRevenue:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;F)Lorg/matomo/sdk/TrackMe;

    :cond_0
    return-object v0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Goal id needs to be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public revenue(Ljava/lang/Float;)Lorg/matomo/sdk/extra/TrackHelper$Goal;
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Goal;->mRevenue:Ljava/lang/Float;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 281
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
