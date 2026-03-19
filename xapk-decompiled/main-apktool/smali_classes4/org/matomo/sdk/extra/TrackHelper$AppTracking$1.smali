.class Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;
.super Ljava/lang/Object;
.source "TrackHelper.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->with(Lorg/matomo/sdk/Tracker;)Landroid/app/Application$ActivityLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/matomo/sdk/extra/TrackHelper$AppTracking;

.field final synthetic val$tracker:Lorg/matomo/sdk/Tracker;


# direct methods
.method constructor <init>(Lorg/matomo/sdk/extra/TrackHelper$AppTracking;Lorg/matomo/sdk/Tracker;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;->this$0:Lorg/matomo/sdk/extra/TrackHelper$AppTracking;

    iput-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;->val$tracker:Lorg/matomo/sdk/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 833
    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;->this$0:Lorg/matomo/sdk/extra/TrackHelper$AppTracking;

    invoke-static {v0}, Lorg/matomo/sdk/extra/TrackHelper$AppTracking;->access$100(Lorg/matomo/sdk/extra/TrackHelper$AppTracking;)Lorg/matomo/sdk/extra/TrackHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/matomo/sdk/extra/TrackHelper;->screen(Landroid/app/Activity;)Lorg/matomo/sdk/extra/TrackHelper$Screen;

    move-result-object p1

    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;->val$tracker:Lorg/matomo/sdk/Tracker;

    invoke-virtual {p1, v0}, Lorg/matomo/sdk/extra/TrackHelper$Screen;->with(Lorg/matomo/sdk/Tracker;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 844
    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$AppTracking$1;->val$tracker:Lorg/matomo/sdk/Tracker;

    invoke-virtual {p1}, Lorg/matomo/sdk/Tracker;->dispatch()V

    :cond_0
    return-void
.end method
