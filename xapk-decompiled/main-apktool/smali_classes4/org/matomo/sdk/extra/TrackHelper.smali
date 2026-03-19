.class public Lorg/matomo/sdk/extra/TrackHelper;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;,
        Lorg/matomo/sdk/extra/TrackHelper$Dimension;,
        Lorg/matomo/sdk/extra/TrackHelper$AppTracking;,
        Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;,
        Lorg/matomo/sdk/extra/TrackHelper$Exception;,
        Lorg/matomo/sdk/extra/TrackHelper$Order;,
        Lorg/matomo/sdk/extra/TrackHelper$CartUpdate;,
        Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;,
        Lorg/matomo/sdk/extra/TrackHelper$ContentImpression;,
        Lorg/matomo/sdk/extra/TrackHelper$Download;,
        Lorg/matomo/sdk/extra/TrackHelper$Search;,
        Lorg/matomo/sdk/extra/TrackHelper$Outlink;,
        Lorg/matomo/sdk/extra/TrackHelper$Goal;,
        Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;,
        Lorg/matomo/sdk/extra/TrackHelper$Screen;,
        Lorg/matomo/sdk/extra/TrackHelper$BaseEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mBaseTrackMe:Lorg/matomo/sdk/TrackMe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 25
    const-class v2, Lorg/matomo/sdk/extra/TrackHelper;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/TrackHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lorg/matomo/sdk/extra/TrackHelper;-><init>(Lorg/matomo/sdk/TrackMe;)V

    return-void
.end method

.method private constructor <init>(Lorg/matomo/sdk/TrackMe;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lorg/matomo/sdk/TrackMe;

    invoke-direct {p1}, Lorg/matomo/sdk/TrackMe;-><init>()V

    .line 34
    :cond_0
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    return-void
.end method

.method synthetic constructor <init>(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/TrackHelper$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/TrackHelper;-><init>(Lorg/matomo/sdk/TrackMe;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lorg/matomo/sdk/extra/TrackHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static track()Lorg/matomo/sdk/extra/TrackHelper;
    .locals 1

    .line 38
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper;

    invoke-direct {v0}, Lorg/matomo/sdk/extra/TrackHelper;-><init>()V

    return-object v0
.end method

.method public static track(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/extra/TrackHelper;
    .locals 1

    .line 42
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper;

    invoke-direct {v0, p0}, Lorg/matomo/sdk/extra/TrackHelper;-><init>(Lorg/matomo/sdk/TrackMe;)V

    return-object v0
.end method


# virtual methods
.method public cartUpdate(I)Lorg/matomo/sdk/extra/TrackHelper$CartUpdate;
    .locals 1

    .line 584
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$CartUpdate;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$CartUpdate;-><init>(Lorg/matomo/sdk/extra/TrackHelper;I)V

    return-object v0
.end method

.method public dimension(ILjava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Dimension;
    .locals 2

    .line 864
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Dimension;

    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    invoke-direct {v0, v1}, Lorg/matomo/sdk/extra/TrackHelper$Dimension;-><init>(Lorg/matomo/sdk/TrackMe;)V

    invoke-virtual {v0, p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$Dimension;->dimension(ILjava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Dimension;

    move-result-object p1

    return-object p1
.end method

.method public download()Lorg/matomo/sdk/extra/TrackHelper$Download;
    .locals 2

    .line 415
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Download;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lorg/matomo/sdk/extra/TrackHelper$Download;-><init>(Lorg/matomo/sdk/extra/DownloadTracker;Lorg/matomo/sdk/extra/TrackHelper;)V

    return-object v0
.end method

.method public download(Lorg/matomo/sdk/extra/DownloadTracker;)Lorg/matomo/sdk/extra/TrackHelper$Download;
    .locals 1

    .line 411
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Download;

    invoke-direct {v0, p1, p0}, Lorg/matomo/sdk/extra/TrackHelper$Download;-><init>(Lorg/matomo/sdk/extra/DownloadTracker;Lorg/matomo/sdk/extra/TrackHelper;)V

    return-object v0
.end method

.method public event(Ljava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;
    .locals 1

    .line 212
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$EventBuilder;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public exception(Ljava/lang/Throwable;)Lorg/matomo/sdk/extra/TrackHelper$Exception;
    .locals 1

    .line 710
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Exception;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Exception;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public goal(I)Lorg/matomo/sdk/extra/TrackHelper$Goal;
    .locals 1

    .line 278
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Goal;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Goal;-><init>(Lorg/matomo/sdk/extra/TrackHelper;I)V

    return-object v0
.end method

.method public impression(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$ContentImpression;
    .locals 1

    .line 478
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$ContentImpression;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$ContentImpression;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public interaction(Ljava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;
    .locals 1

    .line 528
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;

    invoke-direct {v0, p0, p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$ContentInteraction;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public order(Ljava/lang/String;I)Lorg/matomo/sdk/extra/TrackHelper$Order;
    .locals 1

    .line 623
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Order;

    invoke-direct {v0, p0, p1, p2}, Lorg/matomo/sdk/extra/TrackHelper$Order;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;I)V

    return-object v0
.end method

.method public outlink(Ljava/net/URL;)Lorg/matomo/sdk/extra/TrackHelper$Outlink;
    .locals 1

    .line 319
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Outlink;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Outlink;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/net/URL;)V

    return-object v0
.end method

.method public screen(Landroid/app/Activity;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 2

    .line 110
    invoke-static {p1}, Lorg/matomo/sdk/tools/ActivityHelper;->getBreadcrumbs(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Screen;

    invoke-static {p1}, Lorg/matomo/sdk/tools/ActivityHelper;->breadcrumbsToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/matomo/sdk/extra/TrackHelper$Screen;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Screen;->title(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;

    move-result-object p1

    return-object p1
.end method

.method public screen(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Screen;
    .locals 1

    .line 100
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Screen;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Screen;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public screens(Landroid/app/Application;)Lorg/matomo/sdk/extra/TrackHelper$AppTracking;
    .locals 1

    .line 802
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Landroid/app/Application;)V

    return-object v0
.end method

.method public search(Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Search;
    .locals 1

    .line 352
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$Search;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$Search;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Ljava/lang/String;)V

    return-object v0
.end method

.method public uncaughtExceptions()Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;
    .locals 1

    .line 769
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;

    invoke-direct {v0, p0}, Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;-><init>(Lorg/matomo/sdk/extra/TrackHelper;)V

    return-object v0
.end method

.method public visitVariables(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    new-instance v0, Lorg/matomo/sdk/extra/CustomVariables;

    invoke-direct {v0}, Lorg/matomo/sdk/extra/CustomVariables;-><init>()V

    .line 890
    invoke-virtual {v0, p1, p2, p3}, Lorg/matomo/sdk/extra/CustomVariables;->put(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/CustomVariables;

    .line 891
    invoke-virtual {p0, v0}, Lorg/matomo/sdk/extra/TrackHelper;->visitVariables(Lorg/matomo/sdk/extra/CustomVariables;)Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;

    move-result-object p1

    return-object p1
.end method

.method public visitVariables(Lorg/matomo/sdk/extra/CustomVariables;)Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 901
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;-><init>(Lorg/matomo/sdk/extra/TrackHelper;Lorg/matomo/sdk/extra/CustomVariables;)V

    return-object v0
.end method
