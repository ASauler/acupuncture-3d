.class final Landroidx/camera/core/ImageCapture$TakePictureState;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TakePictureState"
.end annotation


# instance fields
.field mIsAfTriggered:Z

.field mIsFlashSequenceStarted:Z

.field mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2141
    invoke-static {}, Landroidx/camera/core/impl/CameraCaptureResult$EmptyCameraCaptureResult;->create()Landroidx/camera/core/impl/CameraCaptureResult;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mPreCaptureState:Landroidx/camera/core/impl/CameraCaptureResult;

    const/4 v0, 0x0

    .line 2142
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsAfTriggered:Z

    .line 2143
    iput-boolean v0, p0, Landroidx/camera/core/ImageCapture$TakePictureState;->mIsFlashSequenceStarted:Z

    return-void
.end method
