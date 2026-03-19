.class Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;
.super Ljava/lang/Object;
.source "ScreenStackFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->-$$Nest$fgetmFragment(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;->this$0:Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;

    invoke-static {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->-$$Nest$fgetmFragment(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenFragment;->onViewAnimationStart()V

    return-void
.end method
