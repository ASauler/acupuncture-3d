.class public Lorg/matomo/sdk/extra/TrackHelper$AppTracking;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppTracking"
.end annotation


# instance fields
.field private final mApplication:Landroid/app/Application;

.field private final mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;


# direct methods
.method public constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Landroid/app/Application;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 810
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    .line 811
    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->mApplication:Landroid/app/Application;

    return-void
.end method

.method static synthetic access$100(Lorg/matomo/sdk/extra/TrackHelper$AppTracking;)Lorg/matomo/sdk/extra/TrackHelper;
    .locals 0

    .line 805
    iget-object p0, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    return-object p0
.end method


# virtual methods
.method public with(Lorg/matomo/sdk/Tracker;)Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    .line 820
    new-instance v0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;

    invoke-direct {v0, p0, p1}, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;-><init>(Lorg/matomo/sdk/extra/TrackHelper$AppTracking;Lorg/matomo/sdk/Tracker;)V

    .line 858
    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-object v0
.end method
