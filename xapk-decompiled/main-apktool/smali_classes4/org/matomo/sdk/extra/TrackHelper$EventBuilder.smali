.class public Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventBuilder"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mValue:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 224
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mCategory:Ljava/lang/String;

    .line 225
    iput-object p3, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 3

    .line 257
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->URL_PATH:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mPath:Ljava/lang/String;

    .line 258
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_CATEGORY:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mCategory:Ljava/lang/String;

    .line 259
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_ACTION:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mAction:Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_NAME:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mName:Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mValue:Ljava/lang/Float;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_VALUE:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mValue:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;F)Lorg/matomo/sdk/TrackMe;

    :cond_0
    return-object v0
.end method

.method public name(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;
    .locals 0

    .line 242
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public value(Ljava/lang/Float;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;
    .locals 0

    .line 251
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;->mValue:Ljava/lang/Float;

    return-object p0
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
