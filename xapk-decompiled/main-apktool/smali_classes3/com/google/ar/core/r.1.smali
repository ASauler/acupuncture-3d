.class final Lcom/google/ar/core/r;
.super Ljava/lang/Object;
.source "InstallActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;III)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/r;->d:Lcom/google/ar/core/InstallActivity;

    iput p2, p0, Lcom/google/ar/core/r;->a:I

    iput p3, p0, Lcom/google/ar/core/r;->b:I

    iput p4, p0, Lcom/google/ar/core/r;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    sub-float/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v1, p0, Lcom/google/ar/core/r;->a:I

    iget v2, p0, Lcom/google/ar/core/r;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget p1, p0, Lcom/google/ar/core/r;->c:I

    iget-object v3, p0, Lcom/google/ar/core/r;->d:Lcom/google/ar/core/InstallActivity;

    .line 3
    invoke-virtual {v3}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v3, v1, p1}, Landroid/view/Window;->setLayout(II)V

    iget-object p1, p0, Lcom/google/ar/core/r;->d:Lcom/google/ar/core/InstallActivity;

    .line 4
    invoke-virtual {p1}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
