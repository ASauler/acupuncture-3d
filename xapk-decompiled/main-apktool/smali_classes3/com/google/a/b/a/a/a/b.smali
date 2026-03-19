.class public abstract Lcom/google/a/b/a/a/a/b;
.super Lcom/google/a/a/b;
.source "IInstallService.java"

# interfaces
.implements Lcom/google/a/b/a/a/a/c;


# direct methods
.method public static b(Landroid/os/IBinder;)Lcom/google/a/b/a/a/a/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.install.protocol.IInstallService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/a/b/a/a/a/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/a/b/a/a/a/c;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/a/b/a/a/a/a;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/a/b/a/a/a/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
