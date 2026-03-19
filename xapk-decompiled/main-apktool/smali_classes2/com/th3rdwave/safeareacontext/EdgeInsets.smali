.class Lcom/th3rdwave/safeareacontext/EdgeInsets;
.super Ljava/lang/Object;
.source "EdgeInsets.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    .line 11
    iput p2, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    .line 12
    iput p3, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    .line 13
    iput p4, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    return-void
.end method


# virtual methods
.method public equalsToEdgeInsets(Lcom/th3rdwave/safeareacontext/EdgeInsets;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20
    :cond_0
    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/EdgeInsets;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/EdgeInsets;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    iget v2, p1, Lcom/th3rdwave/safeareacontext/EdgeInsets;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    iget p1, p1, Lcom/th3rdwave/safeareacontext/EdgeInsets;->left:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
