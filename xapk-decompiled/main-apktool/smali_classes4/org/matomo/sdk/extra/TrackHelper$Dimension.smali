.class public Lorg/matomo/sdk/extra/TrackHelper$Dimension;
.super Lorg/matomo/sdk/extra/TrackHelper;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimension"
.end annotation


# direct methods
.method constructor <init>(Lorg/matomo/sdk/TrackMe;)V
    .locals 1

    const/4 v0, 0x0

    .line 870
    invoke-direct {p0, p1, v0}, Lorg/matomo/sdk/extra/TrackHelper;-><init>(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/TrackHelper$1;)V

    return-void
.end method


# virtual methods
.method public dimension(ILjava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$Dimension;
    .locals 1

    .line 875
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$Dimension;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    invoke-static {v0, p1, p2}, Lorg/matomo/sdk/extra/CustomDimension;->setDimension(Lorg/matomo/sdk/TrackMe;ILjava/lang/String;)Z

    return-object p0
.end method
