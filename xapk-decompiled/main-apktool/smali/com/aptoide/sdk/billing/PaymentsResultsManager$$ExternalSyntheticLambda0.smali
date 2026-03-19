.class public final synthetic Lcom/aptoide/sdk/billing/PaymentsResultsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer;


# instance fields
.field public final synthetic f$0:Lcom/aptoide/sdk/billing/PaymentsResultsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/aptoide/sdk/billing/PaymentsResultsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager$$ExternalSyntheticLambda0;->f$0:Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    check-cast p1, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;

    invoke-static {v0, p1}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->$r8$lambda$vLJpeevfwRVw4nQLTbmBAqmlJi4(Lcom/aptoide/sdk/billing/PaymentsResultsManager;Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    return-void
.end method
