.class public Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.super Ljava/lang/Object;
.source "RNGestureHandlerRootHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
    }
.end annotation


# static fields
.field private static final MIN_ALPHA_FOR_TOUCH:F = 0.1f


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private final mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

.field private final mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

.field private mPassingTouch:Z

.field private final mRootView:Landroid/view/ViewGroup;

.field private mShouldIntercept:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShouldIntercept(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryCancelAllHandlers(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Landroid/view/ViewGroup;)V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    .line 27
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 43
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 44
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 49
    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {p1, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 50
    invoke-virtual {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v2

    .line 52
    invoke-static {p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->findRootViewTag(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mRootView:Landroid/view/ViewGroup;

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[GESTURE HANDLER] Initialize gesture handler for root view "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ReactNative"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 59
    new-instance p1, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    new-instance v3, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;

    invoke-direct {v3}, Lcom/swmansion/gesturehandler/react/RNViewConfigurationHelper;-><init>()V

    invoke-direct {p1, p2, v2, v3}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;-><init>(Landroid/view/ViewGroup;Lcom/swmansion/gesturehandler/GestureHandlerRegistry;Lcom/swmansion/gesturehandler/ViewConfigurationHelper;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    const p2, 0x3dcccccd    # 0.1f

    .line 61
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->setMinimumAlphaForTraversal(F)V

    .line 63
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler-IA;)V

    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    neg-int p2, v0

    .line 64
    invoke-virtual {p1, p2}, Lcom/swmansion/gesturehandler/GestureHandler;->setTag(I)V

    .line 65
    invoke-virtual {v2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/GestureHandler;)V

    .line 66
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result p1

    invoke-virtual {v2, p1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(II)Z

    .line 68
    invoke-virtual {v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expect view tag to be set for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static findRootViewTag(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 3

    .line 30
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    .line 32
    instance-of v1, v0, Lcom/facebook/react/ReactRootView;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/facebook/react/views/modal/RNGHModalUtils;->isDialogRootViewGroup(Landroid/view/ViewParent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " has not been mounted under ReactRootView"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryCancelAllHandlers()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->activate()V

    .line 137
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/GestureHandler;->end()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 126
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    .line 129
    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mShouldIntercept:Z

    return p1
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method handleSetJSResponder(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 143
    new-instance p1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$1;

    invoke-direct {p1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$1;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    invoke-static {p1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mPassingTouch:Z

    if-nez p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tryCancelAllHandlers()V

    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[GESTURE HANDLER] Tearing down gesture handler registered for root view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactNative"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mContext:Lcom/facebook/react/bridge/ReactContext;

    const-class v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    .line 76
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->mJSGestureHandler:Lcom/swmansion/gesturehandler/GestureHandler;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/GestureHandler;->getTag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    .line 77
    invoke-virtual {v0, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method
