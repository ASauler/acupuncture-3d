.class final Lcn/voidar/engine/UnityActivityHelper$1;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/voidar/engine/UnityActivityHelper;->initialize(Landroid/app/Activity;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Display;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/view/Display;)V
    .locals 0

    iput-object p3, p0, Lcn/voidar/engine/UnityActivityHelper$1;->a:Landroid/view/Display;

    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcn/voidar/engine/UnityActivityHelper$1;->a:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    sget v0, Lcn/voidar/engine/AndroidDevice;->screenOrientation:I

    if-eq v0, p1, :cond_0

    sput p1, Lcn/voidar/engine/AndroidDevice;->screenOrientation:I

    :cond_0
    return-void
.end method
