.class public final synthetic Lcom/aptoide/sdk/billing/payflow/PayflowRepository$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/service/ServiceResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/payflow/PayflowListener;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/payflow/PayflowListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/payflow/PayflowListener;

    return-void
.end method


# virtual methods
.method public final onResponseReceived(Lcom/aptoide/sdk/billing/service/RequestResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/payflow/PayflowRepository$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/payflow/PayflowListener;

    invoke-static {v0, p1}, Lcom/aptoide/sdk/billing/payflow/PayflowRepository;->$r8$lambda$U6upfY0dVvSOlNf5Hg-0MiPlMI8(Lcom/aptoide/sdk/billing/payflow/PayflowListener;Lcom/aptoide/sdk/billing/service/RequestResponse;)V

    return-void
.end method
