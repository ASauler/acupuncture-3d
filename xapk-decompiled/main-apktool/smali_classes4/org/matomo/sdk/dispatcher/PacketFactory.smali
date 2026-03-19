.class public Lorg/matomo/sdk/dispatcher/PacketFactory;
.super Ljava/lang/Object;
.source "PacketFactory.java"


# static fields
.field public static final PAGE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApiUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 28
    const-class v2, Lorg/matomo/sdk/dispatcher/PacketFactory;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/dispatcher/PacketFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/matomo/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/lang/String;

    return-void
.end method

.method private buildPacketForGet(Lorg/matomo/sdk/dispatcher/Event;)Lorg/matomo/sdk/dispatcher/Packet;
    .locals 3

    .line 81
    invoke-virtual {p1}, Lorg/matomo/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 82
    :cond_0
    new-instance v0, Lorg/matomo/sdk/dispatcher/Packet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/matomo/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/matomo/sdk/dispatcher/Packet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private buildPacketForPost(Ljava/util/List;)Lorg/matomo/sdk/dispatcher/Packet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)",
            "Lorg/matomo/sdk/dispatcher/Packet;"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 66
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/matomo/sdk/dispatcher/Event;

    invoke-virtual {v4}, Lorg/matomo/sdk/dispatcher/Event;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v3, "requests"

    .line 70
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    new-instance v2, Lorg/matomo/sdk/dispatcher/Packet;

    iget-object v3, p0, Lorg/matomo/sdk/dispatcher/PacketFactory;->mApiUrl:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lorg/matomo/sdk/dispatcher/Packet;-><init>(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 73
    sget-object v2, Lorg/matomo/sdk/dispatcher/PacketFactory;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Cannot create json object:\n%s"

    invoke-virtual {v2, v0, v3, p1}, Ltimber/log/Timber$Tree;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public buildPackets(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Event;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/matomo/sdk/dispatcher/Packet;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/matomo/sdk/dispatcher/Event;

    invoke-direct {p0, p1}, Lorg/matomo/sdk/dispatcher/PacketFactory;->buildPacketForGet(Lorg/matomo/sdk/dispatcher/Event;)Lorg/matomo/sdk/dispatcher/Packet;

    move-result-object p1

    if-nez p1, :cond_1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 46
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v2

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    add-int/lit8 v4, v0, 0x14

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p1, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/matomo/sdk/dispatcher/Event;

    invoke-direct {p0, v0}, Lorg/matomo/sdk/dispatcher/PacketFactory;->buildPacketForGet(Lorg/matomo/sdk/dispatcher/Event;)Lorg/matomo/sdk/dispatcher/Packet;

    move-result-object v0

    goto :goto_1

    .line 52
    :cond_3
    invoke-direct {p0, v0}, Lorg/matomo/sdk/dispatcher/PacketFactory;->buildPacketForPost(Ljava/util/List;)Lorg/matomo/sdk/dispatcher/Packet;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 53
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v4

    goto :goto_0

    :cond_5
    return-object v3
.end method
