.class Lcom/swmansion/rnscreens/LifecycleHelper$1;
.super Ljava/lang/Object;
.source "LifecycleHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/rnscreens/LifecycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swmansion/rnscreens/LifecycleHelper;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/LifecycleHelper;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/swmansion/rnscreens/LifecycleHelper$1;->this$0:Lcom/swmansion/rnscreens/LifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 32
    iget-object p2, p0, Lcom/swmansion/rnscreens/LifecycleHelper$1;->this$0:Lcom/swmansion/rnscreens/LifecycleHelper;

    invoke-static {p2, p1}, Lcom/swmansion/rnscreens/LifecycleHelper;->-$$Nest$mregisterViewWithLifecycleOwner(Lcom/swmansion/rnscreens/LifecycleHelper;Landroid/view/View;)V

    .line 33
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
