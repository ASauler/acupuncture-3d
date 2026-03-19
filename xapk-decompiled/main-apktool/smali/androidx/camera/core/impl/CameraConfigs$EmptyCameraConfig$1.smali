.class Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig$1;
.super Ljava/lang/Object;
.source "CameraConfigs.java"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;)V
    .locals 0

    .line 37
    iput-object p1, p0, Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig$1;->this$0:Landroidx/camera/core/impl/CameraConfigs$EmptyCameraConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig(Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;)Landroidx/camera/core/impl/Config;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
