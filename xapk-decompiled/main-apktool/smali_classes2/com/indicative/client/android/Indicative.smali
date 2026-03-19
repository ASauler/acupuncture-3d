.class public Lcom/indicative/client/android/Indicative;
.super Ljava/lang/Object;
.source "Indicative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/indicative/client/android/Indicative$SendEventAsyncTask;,
        Lcom/indicative/client/android/Indicative$SendEventsTimerThread;,
        Lcom/indicative/client/android/Indicative$Alias;,
        Lcom/indicative/client/android/Indicative$Event;
    }
.end annotation


# static fields
.field private static final EVENT_PREFS:Ljava/lang/String; = "indicative_events"

.field private static final PROPS_PREFS:Ljava/lang/String; = "indicative_prop_cache"

.field private static final SEND_EVENTS_TIMER_SECONDS:I = 0x3c

.field private static final UNIQUE_PREFS:Ljava/lang/String; = "indicative_unique"

.field private static final debug:Z = false

.field private static instance:Lcom/indicative/client/android/Indicative;


# instance fields
.field private apiKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private eventPrefs:Landroid/content/SharedPreferences;

.field private propsPrefs:Landroid/content/SharedPreferences;

.field private uniquePrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->addEventToSharedPrefs(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized addEventToSharedPrefs(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 370
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string v1, "Indicative instance has not been initialized; not recording event"

    .line 371
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit v0

    return-void

    .line 374
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->eventPrefs:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    .line 375
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 376
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static addProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/indicative/client/android/Indicative;->addProperty(Ljava/lang/String;Z)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/indicative/client/android/Indicative;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/indicative/client/android/Indicative;->addProperty(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static addProperty(Ljava/lang/String;I)V
    .locals 0

    .line 316
    invoke-static {p0, p1}, Lcom/indicative/client/android/Indicative;->addPropertyToSharedPrefs(Ljava/lang/String;I)V

    return-void
.end method

.method public static addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 306
    invoke-static {p0, p1}, Lcom/indicative/client/android/Indicative;->addPropertyToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addProperty(Ljava/lang/String;Z)V
    .locals 0

    .line 326
    invoke-static {p0, p1}, Lcom/indicative/client/android/Indicative;->addPropertyToSharedPrefs(Ljava/lang/String;Z)V

    return-void
.end method

.method private static declared-synchronized addPropertyToSharedPrefs(Ljava/lang/String;I)V
    .locals 2

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 506
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string p1, "Indicative instance has not been initialized; not adding common prop"

    .line 507
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    monitor-exit v0

    return-void

    .line 511
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 512
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addPropertyToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string p1, "Indicative instance has not been initialized; not adding common prop"

    .line 491
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit v0

    return-void

    .line 495
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 496
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized addPropertyToSharedPrefs(Ljava/lang/String;Z)V
    .locals 2

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 522
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string p1, "Indicative instance has not been initialized; not adding common prop"

    .line 523
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit v0

    return-void

    .line 527
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 528
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static clearProperties()V
    .locals 0

    .line 361
    invoke-static {}, Lcom/indicative/client/android/Indicative;->removePropertiesFromSharedPrefs()V

    return-void
.end method

.method public static clearUniqueID()V
    .locals 0

    .line 283
    invoke-static {}, Lcom/indicative/client/android/Indicative;->clearUniqueIDInSharedPrefs()V

    return-void
.end method

.method private static declared-synchronized clearUniqueIDInSharedPrefs()V
    .locals 3

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not clearing unique id"

    .line 475
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit v0

    return-void

    .line 479
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    .line 480
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "indicative_unique"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getActiveUniqueID()Ljava/lang/String;
    .locals 1

    .line 410
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getUniqueIDFromSharedPrefs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getAllPropertiesFromSharedPrefs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 563
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not getting common props"

    .line 564
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 568
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 569
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getDefaultUniqueID()Ljava/lang/String;
    .locals 3

    .line 417
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    iget-object v0, v0, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not returning anonymous ID"

    .line 418
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 422
    :cond_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    iget-object v0, v0, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    const-string v2, "uuid"

    .line 423
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/indicative/client/android/Indicative;
    .locals 1

    .line 59
    sget-object v0, Lcom/indicative/client/android/Indicative;->instance:Lcom/indicative/client/android/Indicative;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/indicative/client/android/Indicative;

    invoke-direct {v0}, Lcom/indicative/client/android/Indicative;-><init>()V

    sput-object v0, Lcom/indicative/client/android/Indicative;->instance:Lcom/indicative/client/android/Indicative;

    .line 62
    :cond_0
    sget-object v0, Lcom/indicative/client/android/Indicative;->instance:Lcom/indicative/client/android/Indicative;

    return-object v0
.end method

.method public static getUniqueID()Ljava/lang/String;
    .locals 3

    .line 397
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    iget-object v0, v0, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not setting up unique id"

    .line 398
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 402
    :cond_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    iget-object v0, v0, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    const-string v2, "indicative_unique"

    .line 403
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUniqueIDFromSharedPrefs()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 445
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v3, "Indicative instance has not been initialized; not setting up unique id"

    .line 446
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit v0

    return-object v2

    .line 450
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    const-string v3, "indicative_unique"

    .line 451
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v3, "uuid"

    .line 454
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :cond_2
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/String;)Lcom/indicative/client/android/Indicative;
    .locals 2

    .line 74
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    .line 75
    iput-object p1, v0, Lcom/indicative/client/android/Indicative;->apiKey:Ljava/lang/String;

    .line 76
    iput-object p0, v0, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    const-string p1, "indicative_events"

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/indicative/client/android/Indicative;->eventPrefs:Landroid/content/SharedPreferences;

    const-string p1, "indicative_unique"

    .line 81
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, v0, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    const-string p1, "indicative_prop_cache"

    .line 84
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v0, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 87
    invoke-static {}, Lcom/indicative/client/android/Indicative;->setUUIDInUniquePrefs()V

    .line 89
    invoke-virtual {v0}, Lcom/indicative/client/android/Indicative;->scheduleEventsTimer()V

    return-object v0
.end method

.method public static recordAlias()V
    .locals 2

    .line 218
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getUniqueID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 219
    invoke-static {v0, v1}, Lcom/indicative/client/android/Indicative;->recordAlias(Ljava/lang/String;Z)V

    return-void
.end method

.method public static recordAlias(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 223
    invoke-static {p0, v0}, Lcom/indicative/client/android/Indicative;->recordAlias(Ljava/lang/String;Z)V

    return-void
.end method

.method public static recordAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 234
    invoke-static {p0, p1, v0}, Lcom/indicative/client/android/Indicative;->recordAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static recordAlias(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    new-instance v0, Lcom/indicative/client/android/Indicative$Alias;

    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->apiKey:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/indicative/client/android/Indicative$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0}, Lcom/indicative/client/android/Indicative$Alias;->getPayloadString()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 247
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object p1

    invoke-direct {p1, p0}, Lcom/indicative/client/android/Indicative;->sendEventNow(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->addEventToSharedPrefs(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 239
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not create alias between "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " and "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "INDICATIVE"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static recordAlias(Ljava/lang/String;Z)V
    .locals 1

    .line 227
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getDefaultUniqueID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {v0, p0, p1}, Lcom/indicative/client/android/Indicative;->recordAlias(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static recordEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 162
    invoke-static {p0, v0, v0}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-static {p0, p1, v0}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 152
    invoke-static {p0, p1, p2, v0}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getAllPropertiesFromSharedPrefs()Ljava/util/Map;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 122
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    :cond_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getUniqueIDFromSharedPrefs()Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_2
    new-instance p2, Lcom/indicative/client/android/Indicative$Event;

    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->apiKey:Ljava/lang/String;

    invoke-direct {p2, v1, p0, p1, v0}, Lcom/indicative/client/android/Indicative$Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    invoke-virtual {p2}, Lcom/indicative/client/android/Indicative$Event;->getPayloadString()Ljava/lang/String;

    move-result-object p0

    if-eqz p3, :cond_3

    .line 132
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object p1

    invoke-direct {p1, p0}, Lcom/indicative/client/android/Indicative;->sendEventNow(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_3
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->addEventToSharedPrefs(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, p1, v0, p2}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 203
    invoke-static {p0, v0, p1}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    invoke-static {p0, v0, p1, p2}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0, v0, p1}, Lcom/indicative/client/android/Indicative;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private static declared-synchronized removePropertiesFromSharedPrefs()V
    .locals 3

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 550
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not adding common prop"

    .line 551
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit v0

    return-void

    .line 555
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 556
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static removeProperty(Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->removePropertyFromSharedPrefs(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized removePropertyFromSharedPrefs(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 537
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string v1, "Indicative instance has not been initialized; not adding common prop"

    .line 538
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit v0

    return-void

    .line 542
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->propsPrefs:Landroid/content/SharedPreferences;

    .line 543
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static reset()V
    .locals 0

    .line 294
    invoke-static {}, Lcom/indicative/client/android/Indicative;->clearUniqueIDInSharedPrefs()V

    .line 295
    invoke-static {}, Lcom/indicative/client/android/Indicative;->resetAnonymousIDInSharedPrefs()V

    .line 296
    invoke-static {}, Lcom/indicative/client/android/Indicative;->removePropertiesFromSharedPrefs()V

    return-void
.end method

.method public static resetAnonymousID()V
    .locals 0

    .line 287
    invoke-static {}, Lcom/indicative/client/android/Indicative;->resetAnonymousIDInSharedPrefs()V

    return-void
.end method

.method private static declared-synchronized resetAnonymousIDInSharedPrefs()V
    .locals 4

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 461
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not resetting anonymous id"

    .line 462
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    monitor-exit v0

    return-void

    .line 466
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    .line 467
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sendAllEvents()V
    .locals 2

    .line 675
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v0

    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/indicative/client/android/Indicative;->sendAllEvents(Landroid/content/Context;)V

    return-void
.end method

.method private sendEventNow(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;

    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;-><init>(Lcom/indicative/client/android/Indicative;Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method private static declared-synchronized setUUIDInUniquePrefs()V
    .locals 4

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 380
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "Indicative"

    const-string v2, "Indicative instance has not been initialized; not setting up unique id"

    .line 381
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit v0

    return-void

    .line 385
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    const-string v2, "uuid"

    const/4 v3, 0x0

    .line 386
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 388
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "uuid"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setUniqueID(Ljava/lang/String;)V
    .locals 0

    .line 265
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->setUniqueIDToSharedPrefs(Ljava/lang/String;)V

    return-void
.end method

.method public static setUniqueIDAndAlias(Ljava/lang/String;)V
    .locals 0

    .line 275
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->setUniqueIDToSharedPrefs(Ljava/lang/String;)V

    .line 276
    invoke-static {p0}, Lcom/indicative/client/android/Indicative;->recordAlias(Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized setUniqueIDToSharedPrefs(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lcom/indicative/client/android/Indicative;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string p0, "Indicative"

    const-string v1, "Indicative instance has not been initialized; not setting up unique id"

    .line 433
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit v0

    return-void

    .line 437
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/indicative/client/android/Indicative;->getInstance()Lcom/indicative/client/android/Indicative;

    move-result-object v1

    iget-object v1, v1, Lcom/indicative/client/android/Indicative;->uniquePrefs:Landroid/content/SharedPreferences;

    .line 438
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "indicative_unique"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public scheduleEventsTimer()V
    .locals 3

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 99
    new-instance v1, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;

    iget-object v2, p0, Lcom/indicative/client/android/Indicative;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/indicative/client/android/Indicative$SendEventsTimerThread;-><init>(Lcom/indicative/client/android/Indicative;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized sendAllEvents(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v0, p0, Lcom/indicative/client/android/Indicative;->eventPrefs:Landroid/content/SharedPreferences;

    .line 686
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 688
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 689
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    .line 690
    :goto_0
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 691
    new-instance v6, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;

    invoke-direct {v6, p0, p1, v3}, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;-><init>(Lcom/indicative/client/android/Indicative;Landroid/content/Context;Ljava/lang/String;)V

    new-array v7, v4, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/indicative/client/android/Indicative$SendEventAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 694
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v7, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 698
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 703
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
