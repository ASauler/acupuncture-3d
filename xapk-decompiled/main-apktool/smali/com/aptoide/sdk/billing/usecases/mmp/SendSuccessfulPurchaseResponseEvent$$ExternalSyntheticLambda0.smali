.class public final synthetic Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/Purchase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/Purchase;

    invoke-static {v0}, Lcom/aptoide/sdk/billing/usecases/mmp/SendSuccessfulPurchaseResponseEvent;->$r8$lambda$d-tFagvpBXWxVZ_ugPEQntJwsQQ(Lcom/aptoide/sdk/billing/Purchase;)V

    return-void
.end method
