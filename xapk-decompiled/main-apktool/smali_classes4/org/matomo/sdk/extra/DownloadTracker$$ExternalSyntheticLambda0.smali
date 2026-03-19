.class public final synthetic Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/matomo/sdk/extra/DownloadTracker;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/matomo/sdk/TrackMe;

.field public final synthetic f$3:Lorg/matomo/sdk/extra/DownloadTracker$Extra;


# direct methods
.method public synthetic constructor <init>(Lorg/matomo/sdk/extra/DownloadTracker;ZLorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$0:Lorg/matomo/sdk/extra/DownloadTracker;

    iput-boolean p2, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$2:Lorg/matomo/sdk/TrackMe;

    iput-object p4, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$3:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$0:Lorg/matomo/sdk/extra/DownloadTracker;

    iget-boolean v1, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$2:Lorg/matomo/sdk/TrackMe;

    iget-object v3, p0, Lorg/matomo/sdk/extra/DownloadTracker$$ExternalSyntheticLambda0;->f$3:Lorg/matomo/sdk/extra/DownloadTracker$Extra;

    invoke-virtual {v0, v1, v2, v3}, Lorg/matomo/sdk/extra/DownloadTracker;->lambda$trackNewAppDownload$0$org-matomo-sdk-extra-DownloadTracker(ZLorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/DownloadTracker$Extra;)V

    return-void
.end method
