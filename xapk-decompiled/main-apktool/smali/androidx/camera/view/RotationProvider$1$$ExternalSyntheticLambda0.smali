.class public final synthetic Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/camera/view/RotationProvider$Listener;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/RotationProvider$Listener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/view/RotationProvider$Listener;

    iput p2, p0, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;->f$0:Landroidx/camera/view/RotationProvider$Listener;

    iget v1, p0, Landroidx/camera/view/RotationProvider$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroidx/camera/view/RotationProvider$1;->lambda$onOrientationChanged$0(Landroidx/camera/view/RotationProvider$Listener;I)V

    return-void
.end method
