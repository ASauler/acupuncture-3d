.class public Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;
.super Lorg/matomo/sdk/extra/TrackHelper;
.source "TrackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/matomo/sdk/extra/TrackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisitVariables"
.end annotation


# direct methods
.method public constructor <init>(Lorg/matomo/sdk/extra/TrackHelper;Lorg/matomo/sdk/extra/CustomVariables;)V
    .locals 2

    .line 908
    iget-object p1, p1, Lorg/matomo/sdk/extra/TrackHelper;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/matomo/sdk/extra/TrackHelper;-><init>(Lorg/matomo/sdk/TrackMe;Lorg/matomo/sdk/extra/TrackHelper$1;)V

    .line 909
    new-instance p1, Lorg/matomo/sdk/extra/CustomVariables;

    iget-object v0, p0, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    sget-object v1, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    invoke-virtual {v0, v1}, Lorg/matomo/sdk/TrackMe;->get(Lorg/matomo/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/matomo/sdk/extra/CustomVariables;-><init>(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1, p2}, Lorg/matomo/sdk/extra/CustomVariables;->putAll(Lorg/matomo/sdk/extra/CustomVariables;)Lorg/matomo/sdk/extra/CustomVariables;

    .line 911
    iget-object p2, p0, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    sget-object v0, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    invoke-virtual {p1}, Lorg/matomo/sdk/extra/CustomVariables;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    return-void
.end method


# virtual methods
.method public visitVariables(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;
    .locals 3

    .line 918
    new-instance v0, Lorg/matomo/sdk/extra/CustomVariables;

    iget-object v1, p0, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    sget-object v2, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    invoke-virtual {v1, v2}, Lorg/matomo/sdk/TrackMe;->get(Lorg/matomo/sdk/QueryParams;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/matomo/sdk/extra/CustomVariables;-><init>(Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0, p1, p2, p3}, Lorg/matomo/sdk/extra/CustomVariables;->put(ILjava/lang/String;Ljava/lang/String;)Lorg/matomo/sdk/extra/CustomVariables;

    .line 920
    iget-object p1, p0, Lorg/matomo/sdk/extra/TrackHelper$VisitVariables;->mBaseTrackMe:Lorg/matomo/sdk/TrackMe;

    sget-object p2, Lorg/matomo/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/matomo/sdk/QueryParams;

    invoke-virtual {v0}, Lorg/matomo/sdk/extra/CustomVariables;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/matomo/sdk/TrackMe;->set(Lorg/matomo/sdk/QueryParams;Ljava/lang/String;)Lorg/matomo/sdk/TrackMe;

    return-object p0
.end method
