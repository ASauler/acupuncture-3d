.class Lcom/vesal/jlsx/international/google/SubscribePayModule$6;
.super Ljava/lang/Object;
.source "SubscribePayModule.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vesal/jlsx/international/google/SubscribePayModule;->queryFailOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;


# direct methods
.method constructor <init>(Lcom/vesal/jlsx/international/google/SubscribePayModule;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$6;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "google_pay"

    const-string v1, "onBillingServiceDisconnected = "

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "billingResult = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "google_pay"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    const-string v0, "subs"

    .line 271
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/vesal/jlsx/international/google/SubscribePayModule$6;->this$0:Lcom/vesal/jlsx/international/google/SubscribePayModule;

    invoke-static {v0}, Lcom/vesal/jlsx/international/google/SubscribePayModule;->-$$Nest$fgetbillingClient(Lcom/vesal/jlsx/international/google/SubscribePayModule;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/vesal/jlsx/international/google/SubscribePayModule$6$1;

    invoke-direct {v1, p0}, Lcom/vesal/jlsx/international/google/SubscribePayModule$6$1;-><init>(Lcom/vesal/jlsx/international/google/SubscribePayModule$6;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method
