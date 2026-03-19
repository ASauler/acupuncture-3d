.class Landroidx/camera/view/RotationProvider$1;
.super Landroid/view/OrientationEventListener;
.source "RotationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/RotationProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_SURFACE_ROTATION:I = -0x1


# instance fields
.field private mRotation:I

.field final synthetic this$0:Landroidx/camera/view/RotationProvider;


# direct methods
.method constructor <init>(Landroidx/camera/view/RotationProvider;Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    return-void
.end method

.method static synthetic lambda$onOrientationChanged$0(Landroidx/camera/view/RotationProvider$Listener;I)V
    .locals 0

    .line 108
    invoke-interface {p0, p1}, Landroidx/camera/view/RotationProvider$Listener;->onRotationChanged(I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-static {p1}, Landroidx/camera/view/RotationProvider;->orientationToSurfaceRotation(I)I

    move-result p1

    .line 99
    iget v0, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    if-eq v0, p1, :cond_1

    .line 100
    iput p1, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    .line 103
    iget-object v0, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    iget-object v0, v0, Landroidx/camera/view/RotationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    iget-object v1, v1, Landroidx/camera/view/RotationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 105
    iget-object v2, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    iget-object v2, v2, Landroidx/camera/view/RotationProvider;->mListener:Landroidx/camera/view/RotationProvider$Listener;

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 108
    new-instance v0, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/view/RotationProvider$Listener;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
