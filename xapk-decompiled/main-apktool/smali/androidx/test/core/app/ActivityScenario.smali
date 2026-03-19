.class public final Landroidx/test/core/app/ActivityScenario;
.super Ljava/lang/Object;
.source "ActivityScenario.java"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/core/app/ActivityScenario$ActivityAction;,
        Landroidx/test/core/app/ActivityScenario$ActivityState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/app/Activity;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final STEADY_STATES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/test/runner/lifecycle/Stage;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityScenario"

.field private static final TIMEOUT_MILLISECONDS:J = 0xafc8L


# instance fields
.field private final activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

.field private final activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

.field private final controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

.field private currentActivity:Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final startActivityIntent:Landroid/content/Intent;

.field private final stateChangedCondition:Ljava/util/concurrent/locks/Condition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 125
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    .line 128
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 144
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$0;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 145
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 148
    const-class v0, Landroidx/test/internal/platform/os/ControlledLooper;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$1;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 149
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 156
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 355
    new-instance v0, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 169
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)V"
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    .line 144
    const-class v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    sget-object v1, Landroidx/test/core/app/ActivityScenario$$Lambda$2;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 145
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/app/ActivityInvoker;

    iput-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    .line 148
    const-class v1, Landroidx/test/internal/platform/os/ControlledLooper;

    sget-object v2, Landroidx/test/core/app/ActivityScenario$$Lambda$3;->$instance:Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;

    .line 149
    invoke-static {v1, v2}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/internal/platform/os/ControlledLooper;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    .line 156
    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 355
    new-instance v1, Landroidx/test/core/app/ActivityScenario$1;

    invoke-direct {v1, p0}, Landroidx/test/core/app/ActivityScenario$1;-><init>(Landroidx/test/core/app/ActivityScenario;)V

    iput-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 175
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-interface {v0, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->getIntentForActivity(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 0

    .line 112
    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 112
    sget-object v0, Landroidx/test/core/app/ActivityScenario;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object p0
.end method

.method static synthetic access$402(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    return-object p1
.end method

.method static synthetic access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$502(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private static activityMatchesIntent(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "launchedActivity"
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 437
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 440
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 443
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 446
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 449
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 450
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 454
    :cond_4
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 457
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_6

    .line 458
    invoke-virtual {p0}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/test/core/app/ActivityScenario;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario$ActivityState<",
            "TA;>;"
        }
    .end annotation

    .line 488
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 489
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 491
    :try_start_0
    new-instance v0, Landroidx/test/core/app/ActivityScenario$ActivityState;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    sget-object v2, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 492
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/Lifecycle$State;

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-direct {v0, v1, v2, v3}, Landroidx/test/core/app/ActivityScenario$ActivityState;-><init>(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$State;Landroidx/test/runner/lifecycle/Stage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 495
    throw v0
.end method

.method static final synthetic lambda$new$0$ActivityScenario()Landroidx/test/internal/platform/app/ActivityInvoker;
    .locals 1

    .line 146
    new-instance v0, Landroidx/test/core/app/InstrumentationActivityInvoker;

    invoke-direct {v0}, Landroidx/test/core/app/InstrumentationActivityInvoker;-><init>()V

    return-object v0
.end method

.method static final synthetic lambda$new$1$ActivityScenario()Landroidx/test/internal/platform/os/ControlledLooper;
    .locals 1

    .line 150
    sget-object v0, Landroidx/test/internal/platform/os/ControlledLooper;->NO_OP_CONTROLLED_LOOPER:Landroidx/test/internal/platform/os/ControlledLooper;

    return-object v0
.end method

.method public static launch(Landroid/content/Intent;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startActivityIntent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 225
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 226
    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static launch(Landroid/content/Intent;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startActivityIntent",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 237
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Landroid/content/Intent;)V

    .line 238
    invoke-direct {v0, p1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static launch(Ljava/lang/Class;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 194
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    .line 195
    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static launch(Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/test/core/app/ActivityScenario;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityClass",
            "activityOptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Landroidx/test/core/app/ActivityScenario;

    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-direct {v0, p0}, Landroidx/test/core/app/ActivityScenario;-><init>(Ljava/lang/Class;)V

    .line 207
    invoke-direct {v0, p1}, Landroidx/test/core/app/ActivityScenario;->launchInternal(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private launchInternal(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityOptions"
        }
    .end annotation

    .line 251
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    .line 250
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "\"Don\'t keep activities\" developer options must be disabled for ActivityScenario"

    .line 249
    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 257
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 258
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 260
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->addLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    if-nez p1, :cond_1

    .line 265
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 267
    :cond_1
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->startActivityIntent:Landroid/content/Intent;

    invoke-interface {v0, v1, p1}, Landroidx/test/internal/platform/app/ActivityInvoker;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 272
    :goto_1
    sget-object p1, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v2, [Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/lifecycle/Lifecycle$State;

    invoke-direct {p0, p1}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method private varargs waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedStates"
        }
    .end annotation

    const-string v0, "Activity never becomes requested state \"%s\" (last lifecycle transition = \"%s\")"

    .line 319
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 321
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 322
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 324
    :try_start_0
    sget-object v4, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 350
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 328
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xafc8

    add-long/2addr v6, v4

    :goto_0
    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 330
    sget-object v8, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v9, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    .line 331
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 332
    iget-object v8, p0, Landroidx/test/core/app/ActivityScenario;->stateChangedCondition:Ljava/util/concurrent/locks/Condition;

    sub-long v4, v6, v4

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v4, v5, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 336
    :cond_1
    sget-object v4, Landroidx/test/core/app/ActivityScenario;->STEADY_STATES:Ljava/util/Map;

    iget-object v5, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 350
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 337
    :cond_2
    :try_start_2
    new-instance v4, Ljava/lang/AssertionError;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    iget-object v6, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    aput-object v6, v5, p1

    .line 338
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 344
    :try_start_3
    new-instance v5, Ljava/lang/AssertionError;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->currentActivityStage:Landroidx/test/runner/lifecycle/Stage;

    aput-object v1, v3, p1

    .line 345
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 350
    :goto_1
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 308
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 309
    invoke-static {}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->getInstance()Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityLifecycleObserver:Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;

    .line 310
    invoke-interface {v0, v1}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;->removeLifecycleCallback(Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;)V

    return-void
.end method

.method public getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .line 696
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    invoke-interface {v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->getActivityResult()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public getState()Landroidx/lifecycle/Lifecycle$State;
    .locals 3

    .line 706
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 707
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Could not get current state of activity %s due to the transition is incomplete. Current stage = %s"

    invoke-static {v1, v2, v0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method

.method final synthetic lambda$onActivity$2$ActivityScenario(Landroidx/test/core/app/ActivityScenario$ActivityAction;)V
    .locals 2

    .line 654
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkMainThread()V

    .line 656
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 658
    :try_start_0
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    const-string v1, "Cannot run onActivity since Activity has been destroyed already"

    invoke-static {v0, v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->currentActivity:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroidx/test/core/app/ActivityScenario$ActivityAction;->perform(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 663
    throw p1
.end method

.method public moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 519
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 520
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 522
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 523
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->stage:Landroidx/test/runner/lifecycle/Stage;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Current state was null unexpectedly. Last stage = %s"

    .line 525
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, p1, :cond_0

    return-object p0

    .line 529
    :cond_0
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v2, "Cannot move to state \"%s\" since the Activity has been destroyed already"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    .line 531
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-static {v1, v2}, Landroidx/test/internal/util/Checks;->checkState(ZLjava/lang/Object;)V

    .line 534
    sget-object v1, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$android$arch$lifecycle$Lifecycle$State:[I

    invoke-virtual {p1}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 548
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->finishActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 551
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A requested state \"%s\" is not supported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 552
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_3
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->resumeActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 541
    :cond_4
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 542
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->pauseActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 536
    :cond_5
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroidx/test/internal/platform/app/ActivityInvoker;->stopActivity(Landroid/app/Activity;)V

    :goto_1
    new-array v0, v4, [Landroidx/lifecycle/Lifecycle$State;

    aput-object p1, v0, v3

    .line 555
    invoke-direct {p0, v0}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    return-object p0
.end method

.method public onActivity(Landroidx/test/core/app/ActivityScenario$ActivityAction;)Landroidx/test/core/app/ActivityScenario;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/test/core/app/ActivityScenario$ActivityAction<",
            "TA;>;)",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 652
    new-instance v0, Landroidx/test/core/app/ActivityScenario$$Lambda$4;

    invoke-direct {v0, p0, p1}, Landroidx/test/core/app/ActivityScenario$$Lambda$4;-><init>(Landroidx/test/core/app/ActivityScenario;Landroidx/test/core/app/ActivityScenario$ActivityAction;)V

    .line 666
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 669
    iget-object p1, p0, Landroidx/test/core/app/ActivityScenario;->controlledLooper:Landroidx/test/internal/platform/os/ControlledLooper;

    invoke-interface {p1}, Landroidx/test/internal/platform/os/ControlledLooper;->drainMainThreadUntilIdle()V

    .line 670
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 672
    :cond_0
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 673
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public recreate()Landroidx/test/core/app/ActivityScenario;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/test/core/app/ActivityScenario<",
            "TA;>;"
        }
    .end annotation

    .line 573
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 574
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 576
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v0

    .line 577
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v1}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    .line 585
    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario;->activityInvoker:Landroidx/test/internal/platform/app/ActivityInvoker;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Landroidx/test/internal/platform/app/ActivityInvoker;->recreateActivity(Landroid/app/Activity;)V

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xafc8

    add-long/2addr v1, v3

    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Landroidx/lifecycle/Lifecycle$State;

    const/4 v4, 0x0

    .line 591
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    aput-object v5, v3, v4

    invoke-direct {p0, v3}, Landroidx/test/core/app/ActivityScenario;->waitForActivityToBecomeAnyOf([Landroidx/lifecycle/Lifecycle$State;)V

    .line 592
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 593
    invoke-direct {p0}, Landroidx/test/core/app/ActivityScenario;->getCurrentActivityState()Landroidx/test/core/app/ActivityScenario$ActivityState;

    move-result-object v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    .line 594
    iget-object v3, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v4, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v3, v4, :cond_0

    .line 595
    :cond_1
    iget-object v1, v5, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    iget-object v2, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->activity:Landroid/app/Activity;

    if-eq v1, v2, :cond_2

    .line 599
    iget-object v0, v0, Landroidx/test/core/app/ActivityScenario$ActivityState;->state:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/test/core/app/ActivityScenario;->moveToState(Landroidx/lifecycle/Lifecycle$State;)Landroidx/test/core/app/ActivityScenario;

    return-object p0

    .line 596
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Requested a re-creation of Activity but didn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
