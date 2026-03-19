.class public Lcom/swmansion/gesturehandler/GestureHandlerRegistryImpl;
.super Ljava/lang/Object;
.source "GestureHandlerRegistryImpl.java"

# interfaces
.implements Lcom/swmansion/gesturehandler/GestureHandlerRegistry;


# instance fields
.field private mHandlers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/GestureHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerRegistryImpl;->mHandlers:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public getHandlersForView(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/swmansion/gesturehandler/GestureHandler;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerRegistryImpl;->mHandlers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public registerHandlerForView(Landroid/view/View;Lcom/swmansion/gesturehandler/GestureHandler;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/GestureHandler;",
            ">(",
            "Landroid/view/View;",
            "TT;)TT;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandlerRegistryImpl;->mHandlers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandlerRegistryImpl;->mHandlers:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p2
.end method
