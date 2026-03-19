.class public final synthetic Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

.field public final synthetic f$1:Lcom/aptoide/sdk/billing/service/RequestResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/RequestResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda0;->f$1:Lcom/aptoide/sdk/billing/service/RequestResponse;

    invoke-static {v0, v1}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->$r8$lambda$86weYdApTOn3e0R7sial3dfAeZE(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
