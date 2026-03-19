.class public Lorg/matomo/sdk/extra/TrackHelper$Screen;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Screen"
.end annotation


# instance fields
.field private mCampaignKeyword:Ljava/lang/String;

.field private mCampaignName:Ljava/lang/String;

.field private final mCustomDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomVariables:Lorg/matomo/sdk/extra/CustomVariables;

.field private final mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 116
    new-instance p1, Lorg/matomo/sdk/extra/CustomVariables;

    invoke-direct {p1}, Lorg/matomo/sdk/extra/CustomVariables;-><init>()V

    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/matomo/sdk/extra/CustomVariables;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomDimensions:Ljava/util/Map;

    .line 124
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 4

    .line 178
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 182
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$Screen;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v1, Lorg/matomo/sdk/QueryParams;->URL_PATH:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mPath:Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->ACTION_NAME:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mTitle:Ljava/lang/String;

    .line 184
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CAMPAIGN_NAME:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCampaignName:Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->CAMPAIGN_KEYWORD:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCampaignKeyword:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/matomo/sdk/extra/CustomVariables;

    invoke-virtual {v1}, Lorg/matomo/sdk/extra/CustomVariables;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    sget-object v1, Lorg/matomo/sdk/QueryParams;->SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/matomo/sdk/extra/CustomVariables;

    invoke-virtual {v2}, Lorg/matomo/sdk/extra/CustomVariables;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    .line 191
    :cond_0
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomDimensions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lorg/matomo/sdk/extra/CustomDimension;->setDimension(Lorg/matomo/sdk/TrackMe;ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 179
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Screen tracking requires a non-empty path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public campaign(Ljava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 0

    .line 171
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCampaignName:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCampaignKeyword:Ljava/lang/String;

    return-object p0
.end method

.method public dimension(ILjava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomDimensions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public title(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public variable(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Screen;->mCustomVariables:Lorg/matomo/sdk/extra/CustomVariables;

    invoke-virtual {v0, p1, p2, p3}, Lorg/matomo/sdk/extra/CustomVariables;->put(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/CustomVariables;

    return-object p0
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
