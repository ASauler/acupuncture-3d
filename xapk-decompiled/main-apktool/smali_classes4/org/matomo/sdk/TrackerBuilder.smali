.class public Lorg/matomo/sdk/TrackerBuilder;
.super Ljava/lang/Object;
.source "TrackerBuilder.java"


# instance fields
.field private mApiUrl:Ljava/lang/String;

.field private mApplicationBaseUrl:Ljava/lang/String;

.field private mSiteId:I

.field private mTrackerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    iput-object p1, p0, Lorg/matomo/sdk/TrackerBuilder;->mApiUrl:Ljava/lang/String;

    .line 31
    iput p2, p0, Lorg/matomo/sdk/TrackerBuilder;->mSiteId:I

    .line 32
    iput-object p3, p0, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static createDefault(Ljava/lang/String;I)Lorg/matomo/sdk/TrackerBuilder;
    .locals 2

    .line 16
    new-instance v0, Lorg/matomo/sdk/TrackerBuilder;

    const-string v1, "Default Tracker"

    invoke-direct {v0, p0, p1, v1}, Lorg/matomo/sdk/TrackerBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public build(Lorg/matomo/sdk/Matomo;)Lorg/matomo/sdk/Tracker;
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mApplicationBaseUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/matomo/sdk/Matomo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://%s/"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mApplicationBaseUrl:Ljava/lang/String;

    .line 74
    :cond_0
    new-instance v0, Lorg/matomo/sdk/Tracker;

    invoke-direct {v0, p1, p0}, Lorg/matomo/sdk/Tracker;-><init>(Lorg/matomo/sdk/Matomo;Lorg/matomo/sdk/TrackerBuilder;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    check-cast p1, Lorg/matomo/sdk/TrackerBuilder;

    .line 84
    iget v2, p0, Lorg/matomo/sdk/TrackerBuilder;->mSiteId:I

    iget v3, p1, Lorg/matomo/sdk/TrackerBuilder;->mSiteId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lorg/matomo/sdk/TrackerBuilder;->mApiUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/matomo/sdk/TrackerBuilder;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    iget-object p1, p1, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mApiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationBaseUrl()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mApplicationBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSiteId()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mSiteId:I

    return v0
.end method

.method public getTrackerName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/matomo/sdk/TrackerBuilder;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 90
    iget v1, p0, Lorg/matomo/sdk/TrackerBuilder;->mSiteId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setApplicationBaseUrl(Ljava/lang/String;)Lorg/matomo/sdk/TrackerBuilder;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/matomo/sdk/TrackerBuilder;->mApplicationBaseUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackerName(Ljava/lang/String;)Lorg/matomo/sdk/TrackerBuilder;
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/matomo/sdk/TrackerBuilder;->mTrackerName:Ljava/lang/String;

    return-object p0
.end method
