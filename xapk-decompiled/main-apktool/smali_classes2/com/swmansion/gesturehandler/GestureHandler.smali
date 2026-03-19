.class public Lcom/swmansion/gesturehandler/GestureHandler;
.super Ljava/lang/Object;
.source "GestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/swmansion/gesturehandler/GestureHandler;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DIRECTION_DOWN:I = 0x8

.field public static final DIRECTION_LEFT:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x4

.field private static final HIT_SLOP_BOTTOM_IDX:I = 0x3

.field private static final HIT_SLOP_HEIGHT_IDX:I = 0x5

.field private static final HIT_SLOP_LEFT_IDX:I = 0x0

.field public static final HIT_SLOP_NONE:F = NaNf

.field private static final HIT_SLOP_RIGHT_IDX:I = 0x2

.field private static final HIT_SLOP_TOP_IDX:I = 0x1

.field private static final HIT_SLOP_WIDTH_IDX:I = 0x4

.field private static MAX_POINTERS_COUNT:I = 0xc

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_BEGAN:I = 0x2

.field public static final STATE_CANCELLED:I = 0x3

.field public static final STATE_END:I = 0x5

.field public static final STATE_FAILED:I = 0x1

.field public static final STATE_UNDETERMINED:I

.field private static sNextEventCoalescingKey:S

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field mActivationIndex:I

.field private mEnabled:Z

.field private mEventCoalescingKey:S

.field private mHitSlop:[F

.field private mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

.field mIsActive:Z

.field mIsAwaiting:Z

.field private mLastEventOffsetX:F

.field private mLastEventOffsetY:F

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/swmansion/gesturehandler/OnTouchEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/swmansion/gesturehandler/OnTouchEventListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mNumberOfPointers:I

.field private mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

.field private mShouldCancelWhenOutside:Z

.field private mState:I

.field private mTag:I

.field private final mTrackedPointerIDs:[I

.field private mTrackedPointersCount:I

.field private mView:Landroid/view/View;

.field private mWithinBounds:Z

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/swmansion/gesturehandler/GestureHandler;->MAX_POINTERS_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    .line 53
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEnabled:Z

    .line 66
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mNumberOfPointers:I

    return-void
.end method

.method private adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 245
    invoke-direct/range {p0 .. p1}, Lcom/swmansion/gesturehandler/GestureHandler;->needAdapt(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 248
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    if-eq v2, v7, :cond_3

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_2

    .line 259
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 260
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 261
    iget-object v9, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v8, v9, v8

    if-eq v8, v6, :cond_7

    .line 262
    iget v3, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    if-ne v3, v7, :cond_4

    move v4, v7

    :cond_4
    move v3, v2

    move v2, v4

    goto :goto_2

    .line 251
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 252
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 253
    iget-object v9, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v8, v9, v8

    if-eq v8, v6, :cond_7

    .line 254
    iget v3, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    if-ne v3, v7, :cond_6

    move v4, v5

    :cond_6
    move v3, v4

    :cond_7
    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    .line 267
    :goto_2
    iget v4, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    invoke-static {v4}, Lcom/swmansion/gesturehandler/GestureHandler;->initPointerProps(I)V

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    move v13, v2

    move v14, v5

    :goto_3
    if-ge v5, v8, :cond_a

    .line 273
    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 274
    iget-object v9, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v9, v9, v2

    if-eq v9, v6, :cond_9

    .line 275
    sget-object v9, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v9, v9, v14

    invoke-virtual {v1, v5, v9}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 276
    sget-object v9, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v9, v9, v14

    iget-object v10, v0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v2, v10, v2

    iput v2, v9, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 277
    sget-object v2, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v14

    invoke-virtual {v1, v5, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v5, v3, :cond_8

    shl-int/lit8 v2, v14, 0x8

    or-int/2addr v13, v2

    :cond_8
    add-int/lit8 v14, v14, 0x1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 285
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    sget-object v15, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v16, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v18

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v19

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v20

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v21

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    .line 284
    invoke-static/range {v9 .. v24}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    .line 299
    invoke-virtual {v1, v4, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 300
    invoke-virtual {v2, v4, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object v2
.end method

.method private findNextLocalPointerId()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_0
    iget v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    if-ge v1, v2, :cond_3

    move v2, v0

    .line 206
    :goto_1
    iget-object v3, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 207
    aget v4, v3, v2

    if-ne v4, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_1
    :goto_2
    array-length v3, v3

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static hitSlopSet(F)Z
    .locals 0

    .line 76
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static initPointerProps(I)V
    .locals 3

    .line 38
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-nez v0, :cond_0

    .line 39
    sget v0, Lcom/swmansion/gesturehandler/GestureHandler;->MAX_POINTERS_COUNT:I

    new-array v1, v0, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 40
    new-array v0, v0, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v0, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    :cond_0
    :goto_0
    if-lez p0, :cond_1

    .line 42
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    add-int/lit8 v1, p0, -0x1

    aget-object v2, v0, v1

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/swmansion/gesturehandler/GestureHandler;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private moveToState(I)V
    .locals 3

    .line 336
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 337
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 341
    :cond_0
    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 347
    sget-short v1, Lcom/swmansion/gesturehandler/GestureHandler;->sNextEventCoalescingKey:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    sput-short v2, Lcom/swmansion/gesturehandler/GestureHandler;->sNextEventCoalescingKey:S

    iput-short v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEventCoalescingKey:S

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    invoke-virtual {v1, p0, p1, v0}, Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;->onHandlerStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V

    .line 352
    invoke-virtual {p0, p1, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->onStateChange(II)V

    return-void
.end method

.method private needAdapt(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 236
    :goto_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 237
    aget v2, v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "END"

    return-object p0

    :cond_1
    const-string p0, "ACTIVE"

    return-object p0

    :cond_2
    const-string p0, "CANCELLED"

    return-object p0

    :cond_3
    const-string p0, "BEGIN"

    return-object p0

    :cond_4
    const-string p0, "FAILED"

    return-object p0

    :cond_5
    const-string p0, "UNDETERMINED"

    return-object p0
.end method


# virtual methods
.method public final activate()V
    .locals 2

    .line 455
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x4

    .line 456
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    :cond_1
    return-void
.end method

.method public final begin()V
    .locals 1

    .line 461
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 462
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    :cond_0
    return-void
.end method

.method public final cancel()V
    .locals 2

    .line 442
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->onCancel()V

    const/4 v0, 0x3

    .line 444
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    :cond_1
    return-void
.end method

.method dispatchStateChange(II)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mListener:Lcom/swmansion/gesturehandler/OnTouchEventListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p0, p1, p2}, Lcom/swmansion/gesturehandler/OnTouchEventListener;->onStateChange(Lcom/swmansion/gesturehandler/GestureHandler;II)V

    :cond_0
    return-void
.end method

.method dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mListener:Lcom/swmansion/gesturehandler/OnTouchEventListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p1}, Lcom/swmansion/gesturehandler/OnTouchEventListener;->onTouchEvent(Lcom/swmansion/gesturehandler/GestureHandler;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final end()V
    .locals 2

    .line 467
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 468
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    :cond_1
    return-void
.end method

.method public final fail()V
    .locals 2

    .line 449
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 450
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    :cond_1
    return-void
.end method

.method public getEventCoalescingKey()S
    .locals 1

    .line 187
    iget-short v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEventCoalescingKey:S

    return v0
.end method

.method public getLastAbsolutePositionX()F
    .locals 1

    .line 517
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastX:F

    return v0
.end method

.method public getLastAbsolutePositionY()F
    .locals 1

    .line 521
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastY:F

    return v0
.end method

.method public getLastRelativePositionX()F
    .locals 2

    .line 525
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastX:F

    iget v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastEventOffsetX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLastRelativePositionY()F
    .locals 2

    .line 529
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastY:F

    iget v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastEventOffsetY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getNumberOfPointers()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mNumberOfPointers:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTag:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 175
    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mY:F

    return v0
.end method

.method public final handle(Landroid/view/MotionEvent;)V
    .locals 5

    .line 305
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEnabled:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->adaptEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mX:F

    .line 311
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mY:F

    .line 312
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mNumberOfPointers:I

    .line 314
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    iget v3, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mX:F

    iget v4, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mY:F

    invoke-virtual {p0, v2, v3, v4}, Lcom/swmansion/gesturehandler/GestureHandler;->isWithinBounds(Landroid/view/View;FF)Z

    move-result v2

    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mWithinBounds:Z

    .line 315
    iget-boolean v3, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mShouldCancelWhenOutside:Z

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 316
    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->cancel()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->fail()V

    :cond_2
    :goto_0
    return-void

    .line 324
    :cond_3
    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerX(Landroid/view/MotionEvent;Z)F

    move-result v2

    iput v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastX:F

    .line 325
    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/GestureUtils;->getLastPointerY(Landroid/view/MotionEvent;Z)F

    move-result v1

    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastY:F

    .line 326
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastEventOffsetX:F

    .line 327
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mLastEventOffsetY:F

    .line 329
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/GestureHandler;->onHandle(Landroid/view/MotionEvent;)V

    if-eq v0, p1, :cond_4

    .line 331
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    :goto_1
    return-void
.end method

.method public hasCommonPointers(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 93
    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEnabled:Z

    return v0
.end method

.method public isWithinBounds()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mWithinBounds:Z

    return v0
.end method

.method public isWithinBounds(Landroid/view/View;FF)Z
    .locals 12

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 403
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mHitSlop:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 404
    aget v5, v1, v3

    .line 405
    aget v6, v1, v2

    const/4 v7, 0x2

    .line 406
    aget v7, v1, v7

    const/4 v8, 0x3

    .line 407
    aget v1, v1, v8

    .line 408
    invoke-static {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v8

    if-eqz v8, :cond_0

    sub-float v8, v4, v5

    goto :goto_0

    :cond_0
    move v8, v4

    .line 411
    :goto_0
    invoke-static {v6}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v9

    if-eqz v9, :cond_1

    sub-float/2addr v4, v6

    .line 414
    :cond_1
    invoke-static {v7}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v9

    if-eqz v9, :cond_2

    add-float/2addr v0, v7

    .line 417
    :cond_2
    invoke-static {v1}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v9

    if-eqz v9, :cond_3

    add-float/2addr p1, v1

    .line 421
    :cond_3
    iget-object v9, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mHitSlop:[F

    const/4 v10, 0x4

    aget v10, v9, v10

    const/4 v11, 0x5

    .line 422
    aget v9, v9, v11

    .line 423
    invoke-static {v10}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 424
    invoke-static {v5}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v5

    if-nez v5, :cond_4

    sub-float v5, v0, v10

    move v8, v5

    goto :goto_1

    .line 426
    :cond_4
    invoke-static {v7}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v5

    if-nez v5, :cond_5

    add-float/2addr v10, v8

    move v0, v10

    .line 430
    :cond_5
    :goto_1
    invoke-static {v9}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 431
    invoke-static {v6}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v5

    if-nez v5, :cond_6

    sub-float v4, p1, v9

    goto :goto_2

    .line 433
    :cond_6
    invoke-static {v1}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v1

    if-nez v1, :cond_7

    add-float p1, v4, v9

    :cond_7
    :goto_2
    move v1, v4

    move v4, v8

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    cmpl-float v4, p2, v4

    if-ltz v4, :cond_9

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_9

    cmpl-float p2, p3, v1

    if-ltz p2, :cond_9

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    return v2
.end method

.method protected onCancel()V
    .locals 0

    return-void
.end method

.method protected onHandle(Landroid/view/MotionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 473
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/GestureHandler;->moveToState(I)V

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStateChange(II)V
    .locals 0

    return-void
.end method

.method public final prepare(Landroid/view/View;Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    .line 196
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    .line 198
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    .line 199
    iput-object p2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    return-void

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already prepared or hasn\'t been reset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 486
    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    .line 487
    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mOrchestrator:Lcom/swmansion/gesturehandler/GestureHandlerOrchestrator;

    .line 488
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 489
    iput v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    .line 490
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->onReset()V

    return-void
.end method

.method public setEnabled(Z)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/swmansion/gesturehandler/GestureHandler$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/GestureHandler$1;-><init>(Lcom/swmansion/gesturehandler/GestureHandler;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEnabled:Z

    return-object p0
.end method

.method public setHitSlop(F)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, 0x7fc00000    # Float.NaN

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p1

    move v4, p1

    .line 150
    invoke-virtual/range {v0 .. v6}, Lcom/swmansion/gesturehandler/GestureHandler;->setHitSlop(FFFFFF)Lcom/swmansion/gesturehandler/GestureHandler;

    move-result-object p1

    return-object p1
.end method

.method public setHitSlop(FFFFFF)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF)TT;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mHitSlop:[F

    if-nez v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 126
    iput-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mHitSlop:[F

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mHitSlop:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    .line 129
    aput p2, v0, v1

    const/4 v1, 0x2

    .line 130
    aput p3, v0, v1

    const/4 v1, 0x3

    .line 131
    aput p4, v0, v1

    const/4 v1, 0x4

    .line 132
    aput p5, v0, v1

    const/4 v1, 0x5

    .line 133
    aput p6, v0, v1

    .line 134
    invoke-static {p5}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot have all of left, right and width defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_2
    :goto_0
    invoke-static {p5}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-static {p1}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {p3}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 138
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "When width is set one of left or right pads need to be defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_4
    :goto_1
    invoke-static {p6}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p4}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p2}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 141
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot have all of top, bottom and height defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_6
    :goto_2
    invoke-static {p6}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p4}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {p2}, Lcom/swmansion/gesturehandler/GestureHandler;->hitSlopSet(F)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    .line 144
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "When height is set one of top or bottom pads need to be defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    return-object p0
.end method

.method public setInteractionController(Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;",
            ")TT;"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    return-object p0
.end method

.method public setOnTouchEventListener(Lcom/swmansion/gesturehandler/OnTouchEventListener;)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/OnTouchEventListener<",
            "TT;>;)",
            "Lcom/swmansion/gesturehandler/GestureHandler;"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mListener:Lcom/swmansion/gesturehandler/OnTouchEventListener;

    return-object p0
.end method

.method public setShouldCancelWhenOutside(Z)Lcom/swmansion/gesturehandler/GestureHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mShouldCancelWhenOutside:Z

    return-object p0
.end method

.method public setTag(I)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTag:I

    return-void
.end method

.method public shouldBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 2

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    if-eqz v1, :cond_1

    .line 393
    invoke-interface {v1, p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;->shouldHandlerBeCancelledBy(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    if-eqz v0, :cond_1

    .line 383
    invoke-interface {v0, p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public shouldRequireToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;->shouldRequireHandlerToWaitForFailure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/GestureHandler;)Z
    .locals 1

    if-eq p1, p0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mInteractionController:Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0, p0, p1}, Lcom/swmansion/gesturehandler/GestureHandlerInteractionController;->shouldWaitForHandlerFailure(Lcom/swmansion/gesturehandler/GestureHandler;Lcom/swmansion/gesturehandler/GestureHandler;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startTrackingPointer(I)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/GestureHandler;->findNextLocalPointerId()I

    move-result v1

    aput v1, v0, p1

    .line 221
    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    :cond_0
    return-void
.end method

.method public stopTrackingPointer(I)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointerIDs:[I

    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 227
    aput v2, v0, p1

    .line 228
    iget p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wantEvents()Z
    .locals 3

    .line 356
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/swmansion/gesturehandler/GestureHandler;->mTrackedPointersCount:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
