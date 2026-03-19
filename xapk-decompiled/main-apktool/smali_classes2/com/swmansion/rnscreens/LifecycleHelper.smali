.class public Lcom/swmansion/rnscreens/LifecycleHelper;
.super Ljava/lang/Object;
.source "LifecycleHelper.java"


# instance fields
.field private mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

.field private mViewToLifecycleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mregisterViewWithLifecycleOwner(Lcom/swmansion/rnscreens/LifecycleHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/LifecycleHelper;->registerViewWithLifecycleOwner(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    .line 29
    new-instance v0, Lcom/swmansion/rnscreens/LifecycleHelper$1;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/LifecycleHelper$1;-><init>(Lcom/swmansion/rnscreens/LifecycleHelper;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static findNearestScreenFragmentAncestor(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_0

    .line 19
    instance-of v0, p0, Lcom/swmansion/rnscreens/Screen;

    if-nez v0, :cond_0

    .line 20
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 23
    check-cast p0, Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerViewWithLifecycleOwner(Landroid/view/View;)V
    .locals 2

    .line 38
    invoke-static {p1}, Lcom/swmansion/rnscreens/LifecycleHelper;->findNearestScreenFragmentAncestor(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    instance-of v1, p1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 41
    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 42
    iget-object v1, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public register(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/lifecycle/LifecycleObserver;",
            ">(TT;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mRegisterOnLayoutChange:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public unregister(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Landroidx/lifecycle/LifecycleObserver;",
            ">(TT;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/swmansion/rnscreens/LifecycleHelper;->mViewToLifecycleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    .line 58
    check-cast p1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
