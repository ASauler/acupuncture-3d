.class public final synthetic Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;->f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

    iput-object p2, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;->f$0:Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;

    iget-object v1, p0, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync$$ExternalSyntheticLambda1;->f$1:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;->$r8$lambda$IErGnaqP52TmU4k_nsQxJ1iHHHM(Lcom/aptoide/sdk/billing/service/ServiceAsyncTaskExecutorAsync;Landroid/os/Handler;)V

    return-void
.end method
