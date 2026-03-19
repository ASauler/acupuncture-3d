.class Lcom/aptoide/sdk/billing/PaymentsResultsManager;
.super Ljava/lang/Object;
.source "PaymentsResultsManager.java"


# static fields
.field private static instance:Lcom/aptoide/sdk/billing/PaymentsResultsManager;


# instance fields
.field private aptoideBillingClient:Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;

.field private final sdkWebResponseCollector:Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer<",
            "Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vLJpeevfwRVw4nQLTbmBAqmlJi4(Lcom/aptoide/sdk/billing/PaymentsResultsManager;Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->lambda$new$0(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->aptoideBillingClient:Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;

    .line 27
    new-instance v0, Lcom/aptoide/sdk/billing/PaymentsResultsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/aptoide/sdk/billing/PaymentsResultsManager$$ExternalSyntheticLambda0;-><init>(Lcom/aptoide/sdk/billing/PaymentsResultsManager;)V

    iput-object v0, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->sdkWebResponseCollector:Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/aptoide/sdk/billing/PaymentsResultsManager;
    .locals 2

    const-class v0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->instance:Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    invoke-direct {v1}, Lcom/aptoide/sdk/billing/PaymentsResultsManager;-><init>()V

    sput-object v1, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->instance:Lcom/aptoide/sdk/billing/PaymentsResultsManager;

    .line 18
    :cond_0
    sget-object v1, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->instance:Lcom/aptoide/sdk/billing/PaymentsResultsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic lambda$new$0(Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/aptoide/sdk/billing/listeners/SDKPaymentResponse;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->aptoideBillingClient:Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;

    .line 29
    invoke-virtual {v1}, Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;->getPurchaseFinishedListener()Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;

    move-result-object v1

    .line 28
    invoke-static {v0, p1, v1}, Lcom/aptoide/sdk/billing/ApplicationUtils;->handleActivityResult(ILandroid/content/Intent;Lcom/aptoide/sdk/billing/PurchasesUpdatedListener;)V

    return-void
.end method


# virtual methods
.method public collectPaymentResult(Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;)V
    .locals 1

    .line 22
    iput-object p1, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->aptoideBillingClient:Lcom/aptoide/sdk/billing/AptoideBillingClientImpl;

    .line 23
    invoke-static {}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->getInstance()Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;

    move-result-object p1

    iget-object v0, p0, Lcom/aptoide/sdk/billing/PaymentsResultsManager;->sdkWebResponseCollector:Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer;

    .line 24
    invoke-virtual {p1, v0}, Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream;->collect(Lcom/aptoide/sdk/billing/listeners/PaymentResponseStream$Consumer;)V

    return-void
.end method
