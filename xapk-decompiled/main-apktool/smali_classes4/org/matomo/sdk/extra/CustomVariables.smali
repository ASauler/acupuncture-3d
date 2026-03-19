.class public Lorg/matomo/sdk/extra/CustomVariables;
.super Ljava/lang/Object;
.source "CustomVariables.java"


# static fields
.field protected static final MAX_LENGTH:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 49
    const-class v2, Lorg/matomo/sdk/extra/CustomVariables;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/matomo/sdk/Matomo;->tag([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/matomo/sdk/extra/CustomVariables;->put(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/matomo/sdk/extra/CustomVariables;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    sget-object v0, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to create CustomVariables from JSON"

    invoke-virtual {v0, p1, v2, v1}, Ltimber/log/Timber$Tree;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/matomo/sdk/extra/CustomVariables;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    .line 57
    iget-object p1, p1, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public injectVisitVariables(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;
    .locals 2

    .line 136
    sget-object v0, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    invoke-virtual {p0}, Lorg/matomo/sdk/extra/CustomVariables;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    return-object p1
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/CustomVariables;
    .locals 5

    const/4 v0, 0x0

    if-lez p1, :cond_4

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 95
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    .line 96
    sget-object v1, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const-string v3, "Name is too long %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 100
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    .line 101
    sget-object v1, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const-string v3, "Value is too long %s"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 105
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lorg/matomo/sdk/extra/CustomVariables;->put(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/matomo/sdk/extra/CustomVariables;

    goto :goto_2

    .line 106
    :cond_4
    sget-object p1, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const-string p2, "Index is out of range or name/value is null"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/matomo/sdk/extra/CustomVariables;
    .locals 2

    .line 116
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_0
    sget-object p1, Lorg/matomo/sdk/extra/CustomVariables;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "values.length() should be equal 2"

    invoke-virtual {p1, v0, p2}, Ltimber/log/Timber$Tree;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public putAll(Lorg/matomo/sdk/extra/CustomVariables;)Lorg/matomo/sdk/extra/CustomVariables;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    iget-object p1, p1, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lorg/matomo/sdk/extra/CustomVariables;->mVars:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 124
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toVisitVariables()Lorg/matomo/sdk/TrackMe;
    .locals 1

    .line 142
    new-instance v0, Lorg/matomo/sdk/TrackMe;

    invoke-direct {v0}, Lorg/matomo/sdk/TrackMe;-><init>()V

    invoke-virtual {p0, v0}, Lorg/matomo/sdk/extra/CustomVariables;->injectVisitVariables(Lorg/matomo/sdk/TrackMe;)Lorg/matomo/sdk/TrackMe;

    move-result-object v0

    return-object v0
.end method
