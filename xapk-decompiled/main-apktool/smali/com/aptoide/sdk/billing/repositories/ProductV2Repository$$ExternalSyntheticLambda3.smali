.class public final synthetic Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$0:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$2:[I

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$0:Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda3;->f$2:[I

    invoke-static {v0, v1, v2, p1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->$r8$lambda$yjicVDZ-bLR6qcdG_j1vFBCWWfg(Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;Ljava/util/concurrent/CountDownLatch;[ILcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
