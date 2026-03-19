.class public Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "ReactViewPagerManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/reactnativecommunity/viewpager/ReactViewPager;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMAND_SET_PAGE:I = 0x1

.field private static final COMMAND_SET_PAGE_WITHOUT_ANIMATION:I = 0x2

.field private static final COMMAND_SET_SCROLL_ENABLED:I = 0x3

.field private static final REACT_CLASS:Ljava/lang/String; = "RNCViewPager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addView(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->addView(Lcom/reactnativecommunity/viewpager/ReactViewPager;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic addView(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->addView(Lcom/reactnativecommunity/viewpager/ReactViewPager;Landroid/view/View;I)V

    return-void
.end method

.method public addView(Lcom/reactnativecommunity/viewpager/ReactViewPager;Landroid/view/View;I)V
    .locals 0

    .line 109
    invoke-virtual {p1, p2, p3}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->addViewToAdapter(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/viewpager/ReactViewPager;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/reactnativecommunity/viewpager/ReactViewPager;
    .locals 1

    .line 42
    new-instance v0, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-direct {v0, p1}, Lcom/reactnativecommunity/viewpager/ReactViewPager;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method public bridge synthetic getChildAt(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->getChildAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->getChildAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getChildAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)Landroid/view/View;
    .locals 0

    .line 119
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->getViewFromAdapter(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/View;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->getChildCount(Lcom/reactnativecommunity/viewpager/ReactViewPager;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getChildCount(Landroid/view/ViewGroup;)I
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->getChildCount(Lcom/reactnativecommunity/viewpager/ReactViewPager;)I

    move-result p1

    return p1
.end method

.method public getChildCount(Lcom/reactnativecommunity/viewpager/ReactViewPager;)I
    .locals 0

    .line 114
    invoke-virtual {p1}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->getViewCountInAdapter()I

    move-result p1

    return p1
.end method

.method public getCommandsMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "setPage"

    const/4 v1, 0x1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "setPageWithoutAnimation"

    const/4 v3, 0x2

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "setScrollEnabled"

    const/4 v5, 0x3

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 7

    const-string v0, "topPageScroll"

    const-string v1, "onPageScroll"

    const-string v2, "registrationName"

    .line 63
    invoke-static {v2, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "topPageScrollStateChanged"

    const-string v4, "onPageScrollStateChanged"

    .line 64
    invoke-static {v2, v4}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "topPageSelected"

    const-string v6, "onPageSelected"

    .line 65
    invoke-static {v2, v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCViewPager"

    return-object v0
.end method

.method public needsCustomLayoutForChildren()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->receiveCommand(Lcom/reactnativecommunity/viewpager/ReactViewPager;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/reactnativecommunity/viewpager/ReactViewPager;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p3    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 84
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 96
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setScrollEnabled(Z)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Unsupported command %d received by %s."

    .line 100
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2, v1}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setCurrentItemFromJs(IZ)V

    return-void

    .line 88
    :cond_2
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setCurrentItemFromJs(IZ)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/View;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->removeViewAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)V

    return-void
.end method

.method public bridge synthetic removeViewAt(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/reactnativecommunity/viewpager/ReactViewPager;

    invoke-virtual {p0, p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPagerManager;->removeViewAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)V

    return-void
.end method

.method public removeViewAt(Lcom/reactnativecommunity/viewpager/ReactViewPager;I)V
    .locals 0

    .line 124
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->removeViewFromAdapter(I)V

    return-void
.end method

.method public setOrientation(Lcom/reactnativecommunity/viewpager/ReactViewPager;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "orientation"
    .end annotation

    const-string v0, "vertical"

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setOrientation(Z)V

    return-void
.end method

.method public setPageMargin(Lcom/reactnativecommunity/viewpager/ReactViewPager;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "pageMargin"
    .end annotation

    .line 129
    invoke-static {p2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setScrollEnabled(Lcom/reactnativecommunity/viewpager/ReactViewPager;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "scrollEnabled"
    .end annotation

    .line 47
    invoke-virtual {p1, p2}, Lcom/reactnativecommunity/viewpager/ReactViewPager;->setScrollEnabled(Z)V

    return-void
.end method
