.class Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat;
    .locals 2

    .line 278
    new-instance v0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    iget-object v1, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 279
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat;)V
    .locals 1

    .line 261
    instance-of v0, p1, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    if-eqz v0, :cond_0

    .line 262
    check-cast p1, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;

    .line 264
    iget-object v0, p0, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object p1, p1, Lcom/keiwando/lib_nativefileso/androidx/core/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    :cond_0
    return-void
.end method
