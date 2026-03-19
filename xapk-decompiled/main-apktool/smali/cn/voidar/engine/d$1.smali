.class Lcn/voidar/engine/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/voidar/engine/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/voidar/engine/d;


# direct methods
.method constructor <init>(Lcn/voidar/engine/d;)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/d$1;->a:Lcn/voidar/engine/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    invoke-static {}, Lcn/voidar/engine/d;->g()Landroid/hardware/Camera;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcn/voidar/engine/d$1;->a:Lcn/voidar/engine/d;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcn/voidar/engine/d;->f:Z

    :cond_0
    return-void
.end method
