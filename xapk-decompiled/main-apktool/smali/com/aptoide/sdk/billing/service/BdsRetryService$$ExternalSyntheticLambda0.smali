.class public final synthetic Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;

.field public final synthetic f$1:Lcom/aptoide/sdk/billing/service/BdsRetryService;

.field public final synthetic f$2:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/Map;

.field public final synthetic f$7:Ljava/util/Map;

.field public final synthetic f$8:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/BdsRetryService;

    iput-object p3, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$2:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    iput-object p4, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    iput-object p7, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$6:Ljava/util/Map;

    iput-object p8, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$7:Ljava/util/Map;

    iput-object p9, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$8:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 10

    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/service/ServiceResponseListener;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/BdsRetryService;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$2:Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;

    iget-object v3, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$5:Ljava/util/List;

    iget-object v6, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$6:Ljava/util/Map;

    iget-object v7, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$7:Ljava/util/Map;

    iget-object v8, p0, Lcom/aptoide/sdk/billing/service/BdsRetryService$$ExternalSyntheticLambda0;->f$8:Ljava/util/Map;

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/aptoide/sdk/billing/service/BdsRetryService;->$r8$lambda$ktwaBKYWzJFheHpbsYeO_vZBo1o(Lcom/aptoide/sdk/billing/service/ServiceResponseListener;Lcom/aptoide/sdk/billing/service/BdsRetryService;Lcom/aptoide/sdk/core/analytics/events/SdkBackendRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
