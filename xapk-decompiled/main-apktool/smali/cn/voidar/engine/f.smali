.class public Lcn/voidar/engine/f;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/voidar/engine/f$a;
    }
.end annotation


# instance fields
.field private a:Lcn/voidar/engine/f$a;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/voidar/engine/f;->a:Lcn/voidar/engine/f$a;

    iput-object v0, p0, Lcn/voidar/engine/f;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcn/voidar/engine/f$a;)V
    .locals 0

    iput-object p2, p0, Lcn/voidar/engine/f;->a:Lcn/voidar/engine/f$a;

    iput-object p1, p0, Lcn/voidar/engine/f;->b:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcn/voidar/engine/f;->a:Lcn/voidar/engine/f$a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/voidar/engine/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcn/voidar/engine/f;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PermissionNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e0f

    invoke-virtual {p0, p1, v0}, Lcn/voidar/engine/f;->requestPermissions([Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/16 v0, 0x3e0f

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    array-length v1, p3

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcn/voidar/engine/i;->a()Lcn/voidar/engine/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRequestPermissionsResult permissions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/voidar/engine/i;->a(Ljava/lang/String;)V

    aget v1, p3, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/voidar/engine/f;->a:Lcn/voidar/engine/f$a;

    aget-object v2, p2, v0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcn/voidar/engine/f$a;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/voidar/engine/f;->a:Lcn/voidar/engine/f$a;

    aget-object v2, p2, v0

    invoke-interface {v1, v2, p1}, Lcn/voidar/engine/f$a;->a(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcn/voidar/engine/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
