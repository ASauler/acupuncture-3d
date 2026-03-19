.class public Lcom/luck/picture/lib/camera/view/CaptureButton;
.super Landroid/view/View;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;,
        Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;
    }
.end annotation


# static fields
.field public static final STATE_BAN:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_LONG_PRESS:I = 0x3

.field public static final STATE_PRESS:I = 0x2

.field public static final STATE_RECORDERING:I = 0x4


# instance fields
.field private button_inside_radius:F

.field private button_outside_radius:F

.field private button_radius:F

.field private button_size:I

.field private button_state:I

.field private captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

.field private center_X:F

.field private center_Y:F

.field private duration:I

.field private event_Y:F

.field private inside_color:I

.field private inside_reduce_size:I

.field private isTakeCamera:Z

.field private longPressRunnable:Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;

.field private mPaint:Landroid/graphics/Paint;

.field private min_duration:I

.field private outside_add_size:I

.field private outside_color:I

.field private progress:F

.field private progress_color:I

.field private recorded_time:I

.field private rectF:Landroid/graphics/RectF;

.field private state:I

.field private strokeWidth:F

.field private timer:Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 37
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 38
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->inside_color:I

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->isTakeCamera:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 37
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 38
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->inside_color:I

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->isTakeCamera:Z

    .line 78
    iput p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_size:I

    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 79
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_radius:F

    .line 81
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_outside_radius:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    .line 82
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    .line 84
    div-int/lit8 v0, p2, 0xf

    int-to-float v0, v0

    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->strokeWidth:F

    .line 85
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_add_size:I

    .line 86
    iput p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->inside_reduce_size:I

    .line 88
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    .line 89
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, 0x0

    .line 91
    iput p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress:F

    .line 92
    new-instance p2, Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;Lcom/luck/picture/lib/camera/view/CaptureButton$1;)V

    iput-object p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;

    .line 94
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/16 p1, 0x103

    .line 95
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    const/16 p1, 0x2710

    .line 96
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->duration:I

    const/16 p1, 0x5dc

    .line 97
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->min_duration:I

    .line 99
    iget p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_size:I

    iget p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_add_size:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_X:F

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 100
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_Y:F

    .line 102
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_X:F

    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_radius:F

    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_add_size:I

    int-to-float v3, v2

    add-float/2addr v3, v0

    iget v4, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->strokeWidth:F

    div-float v5, v4, v1

    sub-float/2addr v3, v5

    sub-float v3, p2, v3

    iget v5, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_Y:F

    int-to-float v6, v2

    add-float/2addr v6, v0

    div-float v7, v4, v1

    sub-float/2addr v6, v7

    sub-float v6, v5, v6

    int-to-float v7, v2

    add-float/2addr v7, v0

    div-float v8, v4, v1

    sub-float/2addr v7, v8

    add-float/2addr p2, v7

    int-to-float v2, v2

    add-float/2addr v0, v2

    div-float/2addr v4, v1

    sub-float/2addr v0, v4

    add-float/2addr v5, v0

    invoke-direct {p1, v3, v6, p2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->rectF:Landroid/graphics/RectF;

    .line 108
    new-instance p1, Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    iget p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->duration:I

    int-to-long v9, p2

    div-int/lit16 p2, p2, 0x168

    int-to-long v11, p2

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;JJ)V

    iput-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->timer:Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method static synthetic access$100(Lcom/luck/picture/lib/camera/view/CaptureButton;)Lcom/luck/picture/lib/camera/listener/CaptureListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/luck/picture/lib/camera/view/CaptureButton;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    return p0
.end method

.method static synthetic access$202(Lcom/luck/picture/lib/camera/view/CaptureButton;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    return p1
.end method

.method static synthetic access$300(Lcom/luck/picture/lib/camera/view/CaptureButton;)Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->timer:Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/luck/picture/lib/camera/view/CaptureButton;J)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/camera/view/CaptureButton;->updateProgress(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/luck/picture/lib/camera/view/CaptureButton;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_outside_radius:F

    return p0
.end method

.method static synthetic access$600(Lcom/luck/picture/lib/camera/view/CaptureButton;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_add_size:I

    return p0
.end method

.method static synthetic access$700(Lcom/luck/picture/lib/camera/view/CaptureButton;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    return p0
.end method

.method static synthetic access$800(Lcom/luck/picture/lib/camera/view/CaptureButton;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->inside_reduce_size:I

    return p0
.end method

.method static synthetic access$900(Lcom/luck/picture/lib/camera/view/CaptureButton;FFFF)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/luck/picture/lib/camera/view/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method private handlerPressByState()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 174
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->timer:Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    invoke-virtual {v0}, Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;->cancel()V

    .line 189
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->recordEnd()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    const/16 v1, 0x103

    if-ne v0, v1, :cond_3

    .line 179
    :cond_2
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->startCaptureAnimation(F)V

    goto :goto_0

    .line 181
    :cond_3
    iput v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    .line 192
    :goto_0
    iput v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    return-void
.end method

.method private resetRecordAnim()V
    .locals 4

    const/4 v0, 0x5

    .line 208
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress:F

    .line 210
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->invalidate()V

    .line 212
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_outside_radius:F

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_radius:F

    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/luck/picture/lib/camera/view/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method private startCaptureAnimation(F)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 222
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 223
    new-instance v0, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda2;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance v0, Lcom/luck/picture/lib/camera/view/CaptureButton$1;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/camera/view/CaptureButton$1;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x32

    .line 250
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 251
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRecordAnimation(FFFF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 256
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v1, v0, [F

    aput p3, v1, v2

    aput p4, v1, p1

    .line 257
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 259
    new-instance p4, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda0;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 264
    new-instance p4, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/luck/picture/lib/camera/view/CaptureButton$$ExternalSyntheticLambda1;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 268
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 270
    new-instance v1, Lcom/luck/picture/lib/camera/view/CaptureButton$2;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/camera/view/CaptureButton$2;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;)V

    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, p1

    .line 289
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x64

    .line 290
    invoke-virtual {p4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 291
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateProgress(J)V
    .locals 3

    .line 297
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->duration:I

    int-to-long v1, v0

    sub-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->recorded_time:I

    long-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p1, p2

    sub-float/2addr p2, p1

    .line 298
    iput p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress:F

    .line 299
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public getButtonFeatures()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .line 372
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$startCaptureAnimation$0$com-luck-picture-lib-camera-view-CaptureButton(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 224
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    .line 225
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->invalidate()V

    return-void
.end method

.method synthetic lambda$startRecordAnimation$1$com-luck-picture-lib-camera-view-CaptureButton(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 260
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_outside_radius:F

    .line 261
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->invalidate()V

    return-void
.end method

.method synthetic lambda$startRecordAnimation$2$com-luck-picture-lib-camera-view-CaptureButton(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 265
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    .line 266
    invoke-virtual {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 120
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_X:F

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_Y:F

    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_outside_radius:F

    iget-object v3, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->inside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_X:F

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->center_Y:F

    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_inside_radius:F

    iget-object v3, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v3, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->rectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v5, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->progress:F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 113
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 114
    iget p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_size:I

    iget p2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->outside_add_size:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/camera/view/CaptureButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 140
    iget-boolean v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->isTakeCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x103

    const/16 v3, 0x102

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

    if-eqz v0, :cond_6

    iget v4, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    iget v4, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    if-eq v4, v3, :cond_1

    if-ne v4, v2, :cond_6

    .line 157
    :cond_1
    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->event_Y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v2, p1

    invoke-interface {v0, v2}, Lcom/luck/picture/lib/camera/listener/CaptureListener;->recordZoom(F)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->handlerPressByState()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->event_Y:F

    .line 146
    iput v4, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    .line 149
    iget p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_6

    .line 150
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->longPressRunnable:Lcom/luck/picture/lib/camera/view/CaptureButton$LongPressRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, p1, v2, v3}, Lcom/luck/picture/lib/camera/view/CaptureButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return v1
.end method

.method public recordEnd()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

    if-eqz v0, :cond_1

    .line 198
    iget v1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->recorded_time:I

    iget v2, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->min_duration:I

    if-ge v1, v2, :cond_0

    int-to-long v1, v1

    .line 199
    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/camera/listener/CaptureListener;->recordShort(J)V

    goto :goto_0

    :cond_0
    int-to-long v1, v1

    .line 201
    invoke-interface {v0, v1, v2}, Lcom/luck/picture/lib/camera/listener/CaptureListener;->recordEnd(J)V

    .line 203
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/luck/picture/lib/camera/view/CaptureButton;->resetRecordAnim()V

    return-void
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 381
    iput v0, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->state:I

    return-void
.end method

.method public setButtonCaptureEnabled(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->isTakeCamera:Z

    return-void
.end method

.method public setButtonFeatures(I)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->button_state:I

    return-void
.end method

.method public setCaptureListener(Lcom/luck/picture/lib/camera/listener/CaptureListener;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->captureLisenter:Lcom/luck/picture/lib/camera/listener/CaptureListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 7

    .line 346
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->duration:I

    .line 347
    new-instance v6, Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    int-to-long v2, p1

    div-int/lit16 p1, p1, 0x168

    int-to-long v4, p1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;-><init>(Lcom/luck/picture/lib/camera/view/CaptureButton;JJ)V

    iput-object v6, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->timer:Lcom/luck/picture/lib/camera/view/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method public setMinDuration(I)V
    .locals 0

    .line 352
    iput p1, p0, Lcom/luck/picture/lib/camera/view/CaptureButton;->min_duration:I

    return-void
.end method
