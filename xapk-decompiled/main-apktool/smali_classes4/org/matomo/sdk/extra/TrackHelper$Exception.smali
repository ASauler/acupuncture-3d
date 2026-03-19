.class public Lorg/matomo/sdk/extra/TrackHelper$Exception;
.super Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exception"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIsFatal:Z

.field private final mThrowable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/Throwable;)V
    .locals 0

    .line 719
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    .line 720
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public build()Lorg/matomo/sdk/TrackMe;
    .locals 5

    const-string v0, "/"

    const/4 v1, 0x0

    .line 743
    :try_start_0
    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v1

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 746
    invoke-static {}, Lorg/matomo/sdk/extra/TrackHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    const-string v4, "Couldn\'t get stack info"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 749
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mIsFatal:Z

    if-eqz v3, :cond_0

    const-string v3, "fatal/"

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    new-instance v2, Lorg/matomo/sdk/TrackMe;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/TrackHelper$Exception;->getBaseTrackMe()Lorg/matomo/sdk/TrackMe;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/matomo/sdk/TrackMe;-><init>(Lorg/matomo/sdk/TrackMe;)V

    sget-object v3, Lorg/matomo/sdk/QueryParams;->ACTION_NAME:Lorg/matomo/sdk/QueryParams;

    .line 751
    invoke-virtual {v2, v3, v0}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v2, Lorg/matomo/sdk/QueryParams;->EVENT_CATEGORY:Lorg/matomo/sdk/QueryParams;

    const-string v3, "Exception"

    .line 752
    invoke-virtual {v0, v2, v3}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v2, Lorg/matomo/sdk/QueryParams;->EVENT_ACTION:Lorg/matomo/sdk/QueryParams;

    .line 753
    invoke-virtual {v0, v2, v1}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_NAME:Lorg/matomo/sdk/QueryParams;

    iget-object v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mDescription:Ljava/lang/String;

    .line 754
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    sget-object v1, Lorg/matomo/sdk/QueryParams;->EVENT_VALUE:Lorg/matomo/sdk/QueryParams;

    iget-boolean v2, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mIsFatal:Z

    .line 755
    invoke-virtual {v0, v1, v2}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;I)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    return-object v0
.end method

.method public description(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Exception;
    .locals 0

    .line 727
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public fatal(Z)Lorg/matomo/sdk/extra/TrackHelper$Exception;
    .locals 0

    .line 735
    iput-boolean p1, p0, Lorg/matomo/sdk/extra/TrackHelper$Exception;->mIsFatal:Z

    return-object p0
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/Tracker;)Z
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/Tracker;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->safelyWith(Lorg/matomo/sdk/extra/MatomoApplication;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public bridge synthetic with(Lorg/matomo/sdk/extra/MatomoApplication;)V
    .locals 0

    .line 713
    invoke-super {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;->with(Lorg/matomo/sdk/extra/MatomoApplication;)V

    return-void
.end method
