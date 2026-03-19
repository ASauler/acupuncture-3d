.class public Lorg/matomo/sdk/extra/DimensionQueue;
.super Ljava/lang/Object;
.source "DimensionQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mOneTimeDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/matomo/sdk/extra/CustomDimension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$a26bdkTZcarMyHkIc1d5i81_-mU(Lorg/matomo/sdk/extra/DimensionQueue;Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;
    .locals 0

    invoke-direct {p0, p1}, Lorg/matomo/sdk/extra/DimensionQueue;->onTrack(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 18
    const-class v2, Lorg/matomo/sdk/extra/DimensionQueue;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/DimensionQueue;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/Tracker;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/DimensionQueue;->mOneTimeDimensions:Ljava/util/List;

    .line 22
    new-instance v0, Lorg/matomo/sdk/extra/DimensionQueue$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/matomo/sdk/extra/DimensionQueue$$ExternalSyntheticLambda0;-><init>(Lorg/matomo/sdk/extra/DimensionQueue;)V

    .line 23
    invoke-virtual {p1, v0}, Lorg/matomo/sdk/Tracker;->addTrackingCallback(Lorg/matomo/sdk/Tracker$Callback;)V

    return-void
.end method

.method private onTrack(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;
    .locals 5

    .line 35
    iget-object v0, p0, Lorg/matomo/sdk/extra/DimensionQueue;->mOneTimeDimensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/matomo/sdk/extra/CustomDimension;

    .line 37
    invoke-virtual {v1}, Lorg/matomo/sdk/extra/CustomDimension;->getId()I

    move-result v2

    invoke-static {p1, v2}, Lorg/matomo/sdk/extra/CustomDimension;->getDimension(Lorg/matomo/sdk/TrackMe;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    sget-object v3, Lorg/matomo/sdk/extra/DimensionQueue;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-virtual {v1}, Lorg/matomo/sdk/extra/CustomDimension;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/matomo/sdk/extra/CustomDimension;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Setting dimension %s to slot %d would overwrite %s, skipping!"

    invoke-virtual {v3, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1, v1}, Lorg/matomo/sdk/extra/CustomDimension;->setDimension(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/CustomDimension;)Z

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lorg/matomo/sdk/extra/DimensionQueue;->mOneTimeDimensions:Ljava/util/List;

    new-instance v1, Lorg/matomo/sdk/extra/CustomDimension;

    invoke-direct {v1, p1, p2}, Lorg/matomo/sdk/extra/CustomDimension;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
