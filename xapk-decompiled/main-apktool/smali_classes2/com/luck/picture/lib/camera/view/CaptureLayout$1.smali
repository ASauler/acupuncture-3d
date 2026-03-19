.class Lcom/luck/picture/lib/camera/view/CaptureLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/camera/view/CaptureLayout;->startTypeBtnAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/camera/view/CaptureLayout;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/camera/view/CaptureLayout;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureLayout$1;->this$0:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 126
    iget-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureLayout$1;->this$0:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->access$000(Lcom/luck/picture/lib/camera/view/CaptureLayout;)Lcom/luck/picture/lib/camera/view/TypeButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camera/view/TypeButton;->setClickable(Z)V

    .line 127
    iget-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureLayout$1;->this$0:Lcom/luck/picture/lib/camera/view/CaptureLayout;

    invoke-static {p1}, Lcom/luck/picture/lib/camera/view/CaptureLayout;->access$100(Lcom/luck/picture/lib/camera/view/CaptureLayout;)Lcom/luck/picture/lib/camera/view/TypeButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/camera/view/TypeButton;->setClickable(Z)V

    return-void
.end method
