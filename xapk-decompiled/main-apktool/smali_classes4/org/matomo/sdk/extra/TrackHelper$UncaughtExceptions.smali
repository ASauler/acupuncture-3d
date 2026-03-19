.class public Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;
.super Ljava/lang/Object;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncaughtExceptions"
.end annotation


# instance fields
.field private final mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;)V
    .locals 0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    return-void
.end method


# virtual methods
.method public with(Lorg/matomo/sdk/Tracker;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 2

    .line 784
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;

    if-nez v0, :cond_0

    .line 787
    new-instance v0, Lorg/matomo/sdk/extra/MatomoExceptionHandler;

    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$UncaughtExceptions;->mBaseBuilder:Lorg/matomo/sdk/extra/TrackHelper;

    iget-object v1, v1, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    invoke-direct {v0, p1, v1}, Lorg/matomo/sdk/extra/MatomoExceptionHandler;-><init>(Lorg/matomo/sdk/Tracker;Lorg/matomo/sdk/TrackMe;)V

    .line 788
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    .line 785
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Trying to wrap an existing MatomoExceptionHandler."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
