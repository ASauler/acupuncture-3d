.class Lcn/voidar/engine/UnityActivityHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/voidar/engine/UnityActivityHelper$2;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcn/voidar/engine/UnityActivityHelper$2;


# direct methods
.method constructor <init>(Lcn/voidar/engine/UnityActivityHelper$2;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->c:Lcn/voidar/engine/UnityActivityHelper$2;

    iput-object p2, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->c:Lcn/voidar/engine/UnityActivityHelper$2;

    iget-object v1, v1, Lcn/voidar/engine/UnityActivityHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->c:Lcn/voidar/engine/UnityActivityHelper$2;

    iget-object v0, v0, Lcn/voidar/engine/UnityActivityHelper$2;->a:Ljava/lang/String;

    const-string v1, "PERMISSION_GRANTED"

    invoke-static {v1, v0}, Lcn/voidar/engine/UnityActivityHelper;->sendMessageToUnity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/voidar/engine/UnityActivityHelper;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/voidar/engine/UnityActivityHelper$2$1;->c:Lcn/voidar/engine/UnityActivityHelper$2;

    iget-object v2, v2, Lcn/voidar/engine/UnityActivityHelper$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
