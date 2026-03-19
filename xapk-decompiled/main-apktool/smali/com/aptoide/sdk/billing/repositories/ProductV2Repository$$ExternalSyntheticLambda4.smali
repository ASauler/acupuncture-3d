.class public final synthetic Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;->f$0:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->$r8$lambda$YHu7HMIvW7eq03XMmq9U6gVD3-A(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
