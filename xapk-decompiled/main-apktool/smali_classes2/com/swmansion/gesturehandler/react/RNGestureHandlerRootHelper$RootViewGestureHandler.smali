.class Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;
.super Lcom/swmansion/gesturehandler/GestureHandler;
.source "RNGestureHandlerRootHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RootViewGestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;


# direct methods
.method private constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V

    return-void
.end method


# virtual methods
.method protected onCancel()V
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->-$$Nest$fputmShouldIntercept(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 101
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 103
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->-$$Nest$fgetmRootView(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/react/ReactRootView;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->-$$Nest$fgetmRootView(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/ReactRootView;

    invoke-virtual {v1, v0}, Lcom/facebook/react/ReactRootView;->onChildStartedNativeGesture(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    invoke-static {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->-$$Nest$fgetmRootView(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/react/views/modal/RNGHModalUtils;->dialogRootViewGroupOnChildStartedNativeGesture(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->begin()V

    .line 90
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->this$0:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->-$$Nest$fputmShouldIntercept(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;Z)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper$RootViewGestureHandler;->end()V

    :cond_1
    return-void
.end method
