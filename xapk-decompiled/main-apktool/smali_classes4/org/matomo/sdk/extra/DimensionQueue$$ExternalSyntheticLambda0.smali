.class public final synthetic Lorg/matomo/sdk/extra/DimensionQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/matomo/sdk/Tracker$Callback;


# instance fields
.field public final synthetic f$0:Lorg/matomo/sdk/extra/DimensionQueue;


# direct methods
.method public synthetic constructor <init>(Lorg/matomo/sdk/extra/DimensionQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matomo/sdk/extra/DimensionQueue$$ExternalSyntheticLambda0;->f$0:Lorg/matomo/sdk/extra/DimensionQueue;

    return-void
.end method


# virtual methods
.method public final onTrack(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;
    .locals 1

    iget-object v0, p0, Lorg/matomo/sdk/extra/DimensionQueue$$ExternalSyntheticLambda0;->f$0:Lorg/matomo/sdk/extra/DimensionQueue;

    invoke-static {v0, p1}, Lorg/matomo/sdk/extra/DimensionQueue;->$r8$lambda$a26bdkTZcarMyHkIc1d5i81_-mU(Lorg/matomo/sdk/extra/DimensionQueue;Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;

    move-result-object p1

    return-object p1
.end method
