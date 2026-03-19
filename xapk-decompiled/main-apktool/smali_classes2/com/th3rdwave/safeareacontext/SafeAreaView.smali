.class public Lcom/th3rdwave/safeareacontext/SafeAreaView;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;
    }
.end annotation


# instance fields
.field private mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;

.field private mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    const-string p2, "window"

    .line 29
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private maybeUpdateInsets()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/WindowManager;Landroid/view/View;)Lcom/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/th3rdwave/safeareacontext/EdgeInsets;->equalsToEdgeInsets(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;

    invoke-static {v1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;->onInsetsChange(Lcom/th3rdwave/safeareacontext/SafeAreaView;Lcom/th3rdwave/safeareacontext/EdgeInsets;)V

    .line 36
    iput-object v0, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mLastInsets:Lcom/th3rdwave/safeareacontext/EdgeInsets;

    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 44
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 45
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 52
    invoke-virtual {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/th3rdwave/safeareacontext/SafeAreaView;->maybeUpdateInsets()V

    return-void
.end method

.method public setOnInsetsChangeListener(Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/th3rdwave/safeareacontext/SafeAreaView;->mInsetsChangeListener:Lcom/th3rdwave/safeareacontext/SafeAreaView$OnInsetsChangeListener;

    return-void
.end method
