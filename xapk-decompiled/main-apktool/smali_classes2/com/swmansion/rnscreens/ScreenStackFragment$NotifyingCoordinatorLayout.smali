.class Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "ScreenStackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/ScreenStackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotifyingCoordinatorLayout"
.end annotation


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mFragment:Lcom/swmansion/rnscreens/ScreenFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)Lcom/swmansion/rnscreens/ScreenFragment;
    .locals 0

    iget-object p0, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/swmansion/rnscreens/ScreenFragment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;

    invoke-direct {p1, p0}, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout$1;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;)V

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 32
    iput-object p2, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mFragment:Lcom/swmansion/rnscreens/ScreenFragment;

    return-void
.end method


# virtual methods
.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 2

    .line 56
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 58
    iget-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackFragment$NotifyingCoordinatorLayout;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    invoke-super {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
