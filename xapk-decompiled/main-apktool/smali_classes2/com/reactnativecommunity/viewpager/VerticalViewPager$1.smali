.class Lcom/reactnativecommunity/viewpager/VerticalViewPager$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/reactnativecommunity/viewpager/VerticalViewPager;->setOrientation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reactnativecommunity/viewpager/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/reactnativecommunity/viewpager/VerticalViewPager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/reactnativecommunity/viewpager/VerticalViewPager$1;->this$0:Lcom/reactnativecommunity/viewpager/VerticalViewPager;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 33
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
