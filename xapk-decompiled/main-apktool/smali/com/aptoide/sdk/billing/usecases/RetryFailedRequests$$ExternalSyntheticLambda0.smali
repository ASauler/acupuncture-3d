.class public final synthetic Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/aptoide/sdk/billing/service/RequestData;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/RequestData;

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/RequestData;

    invoke-static {v0, v1, p1}, Lcom/aptoide/sdk/billing/usecases/RetryFailedRequests;->$r8$lambda$Go8teCfmwkhZ9GQujnNN_4-3m1w(Ljava/util/List;Lcom/aptoide/sdk/billing/service/RequestData;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
