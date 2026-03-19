.class public final synthetic Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository$$ExternalSyntheticLambda2;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {v0, v1, p1}, Lcom/aptoide/sdk/billing/repositories/ProductV2Repository;->$r8$lambda$Evnw9lzhC4tcfY7mUQd26V5aqqA(Ljava/util/concurrent/CountDownLatch;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
